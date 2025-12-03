@interface VCPCNNConvBlockVector
- (VCPCNNConvBlockVector)initWithParameters:(int)parameters filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding groups:(int)groups stride:(int)stride batchNorm:(BOOL)self0;
- (int)chunkFourForward;
- (int)forward;
- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor;
- (int)straightForwardForChunkFour;
@end

@implementation VCPCNNConvBlockVector

- (VCPCNNConvBlockVector)initWithParameters:(int)parameters filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding groups:(int)groups stride:(int)stride batchNorm:(BOOL)self0
{
  v10 = *&groups;
  paddingCopy = padding;
  uCopy = u;
  v13 = *&chunk;
  v14 = *&num;
  v15 = *&parameters;
  selfCopy = self;
  if ([VCPCNNConvBlockVector isFilterSizeSupported:*(&self->super.super._executedOnGPU + 3)]&& (selfCopy->super._filterSize & 3) == 0)
  {
    v20.receiver = selfCopy;
    v20.super_class = VCPCNNConvBlockVector;
    BYTE4(v19) = norm;
    LODWORD(v19) = stride;
    selfCopy = [(VCPCNNConvBlock *)&v20 initWithParameters:v15 filterNum:v14 chunk:v13 reLU:uCopy padding:paddingCopy groups:v10 stride:v19 batchNorm:?];
    v17 = selfCopy;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor
{
  factorCopy = factor;
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v8 = [WeakRetained count];

  if (!v8)
  {
    return -50;
  }

  v9 = objc_loadWeakRetained(&self->super.super._inputSize);
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 intValue] & 3;

  filter = self->super._filter;
  if (v11)
  {
    result = [(VCPCNNData *)filter readFromDisk:disk quantFactor:factorCopy];
    if (result)
    {
      return result;
    }

    bias = self->super._bias;
    diskCopy = disk;
    goto LABEL_30;
  }

  v16 = [(VCPCNNData *)filter size];
  v17 = [v16 count];

  if (v17 != 4)
  {
    return -50;
  }

  v18 = [(VCPCNNData *)self->super._filter size];
  v19 = [v18 objectAtIndexedSubscript:0];
  __stream = disk;
  intValue = [v19 intValue];

  v21 = [(VCPCNNData *)self->super._filter size];
  v22 = [v21 objectAtIndexedSubscript:1];
  intValue2 = [v22 intValue];

  v24 = [(VCPCNNData *)self->super._filter size];
  v25 = [v24 objectAtIndexedSubscript:2];
  intValue3 = [v25 intValue];
  v27 = [(VCPCNNData *)self->super._filter size];
  v28 = [v27 objectAtIndexedSubscript:3];
  v29 = [v28 intValue] * intValue3;

  v30 = intValue2 * intValue * v29;
  if (v30 < 0)
  {
    v31 = -1;
  }

  else
  {
    v31 = 4 * v30;
  }

  v32 = operator new[](v31, MEMORY[0x1E69E5398]);
  if (!v32)
  {
    return -108;
  }

  v33 = v32;
  if (factorCopy >= 2)
  {
    if (fread(v32, 2uLL, v30, __stream))
    {
      if (v30 >= 1)
      {
        v34 = v30 - 1;
        do
        {
          v33[v34] = *(v33 + v34) / factorCopy;
          v35 = v34-- + 1;
        }

        while (v35 > 1);
      }

      goto LABEL_20;
    }

    return -19;
  }

  if (!fread(v32, 4uLL, v30, __stream))
  {
    return -19;
  }

LABEL_20:
  data = [(VCPCNNData *)self->super._filter data];
  if (intValue >= 1)
  {
    v37 = 0;
    chunk = self->super._chunk;
    v39 = v33;
    do
    {
      if (intValue2 >= 1)
      {
        for (i = 0; i != intValue2; ++i)
        {
          if (v29 >= 1)
          {
            v41 = (i % chunk) + i / chunk * chunk * v29;
            v42 = v29;
            do
            {
              v43 = *v39++;
              data[v41] = v43;
              v41 += chunk;
              --v42;
            }

            while (v42);
          }
        }
      }

      ++v37;
      data += v29 * intValue2;
    }

    while (v37 != intValue);
  }

  MEMORY[0x1CCA95C10](v33, 0x1000C8052888210);
  bias = self->super._bias;
  diskCopy = __stream;
LABEL_30:
  result = [(VCPCNNData *)bias readFromDisk:diskCopy quantFactor:factorCopy];
  if (!result)
  {
    return 0;
  }

  return result;
}

- (int)straightForwardForChunkFour
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained objectAtIndexedSubscript:1];
  intValue = [v4 intValue];

  v6 = objc_loadWeakRetained(&self->super.super._inputSize);
  v7 = [v6 objectAtIndexedSubscript:2];
  intValue2 = [v7 intValue];

  v8 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:1];
  intValue3 = [v8 intValue];

  v10 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:2];
  intValue4 = [v10 intValue];

  v11 = objc_loadWeakRetained(&self->super.super._inputSize);
  v12 = [v11 objectAtIndexedSubscript:0];
  intValue5 = [v12 intValue];

  v13 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  intValue6 = [v13 intValue];

  if (self->super._chunk != 4)
  {
    return -50;
  }

  if (intValue6 >= 1)
  {
    v39 = 0;
    v45 = 0;
    v36 = (4 * intValue4 * intValue3);
    v15 = *(&self->super.super._executedOnGPU + 3);
    v48 = (intValue * intValue2);
    v16 = v15;
    v37 = intValue;
    do
    {
      if (v16 <= intValue)
      {
        v38 = 0;
        v44 = 0;
        chunk = self->super._chunk;
        v41 = (v45 % chunk);
        v40 = v36 * (v45 / chunk);
        do
        {
          if (v16 <= intValue2)
          {
            v19 = 0;
            v47 = v38;
            v15 = v16;
            do
            {
              v46 = v19;
              v20 = 0.0;
              v21 = 0.0;
              if (intValue5 >= 1)
              {
                v22 = 0;
                v23 = v47;
                v24 = v39;
                v25 = v15;
                do
                {
                  v51 = v22;
                  v50 = v23;
                  if (v25 < 1)
                  {
                    v31 = v25;
                  }

                  else
                  {
                    v26 = 0;
                    do
                    {
                      if (v25 >= 1)
                      {
                        v27 = 0;
                        do
                        {
                          v28 = objc_loadWeakRetained(&self->super.super._input);
                          v29 = *([v28 data] + 4 * (v23 + v27));

                          data = [(VCPCNNData *)self->super._filter data];
                          v15 = *(&self->super.super._executedOnGPU + 3);
                          v21 = v21 + (v29 * data[v15 * (v26 + v24 * v15) + v27++]);
                        }

                        while (v27 < v15);
                      }

                      ++v26;
                      LODWORD(v23) = v23 + intValue2;
                      LODWORD(v25) = v15;
                      v31 = v15;
                    }

                    while (v26 < v15);
                  }

                  v22 = v51 + 1;
                  ++v24;
                  v23 = v50 + v48;
                  v25 = v31;
                }

                while (v51 + 1 != intValue5);
              }

              v32 = self->super._chunk;
              padSize = self->super._padSize;
              if ((v21 + [(VCPCNNData *)self->super._bias data][4 * v45]) > 0.0)
              {
                v20 = v21 + [(VCPCNNData *)self->super._bias data][4 * v45];
              }

              ([(VCPCNNData *)self->super.super._output data]+ 4 * v40 + 4 * (padSize + v46 + (padSize + v44) * intValue4) * v32)[4 * v41] = v20;
              v15 = *(&self->super.super._executedOnGPU + 3);
              ++v47;
              v19 = v46 + 1;
            }

            while (v46 < intValue2 - v15);
          }

          intValue = v37;
          v38 += intValue2;
          v16 = v15;
          v17 = v15;
        }

        while (v44++ < v37 - v15);
      }

      else
      {
        v17 = v16;
      }

      v39 += intValue5;
      v16 = v17;
      ++v45;
    }

    while (v45 != intValue6);
  }

  return 0;
}

- (int)chunkFourForward
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained objectAtIndexedSubscript:1];
  intValue = [v4 intValue];

  v5 = objc_loadWeakRetained(&self->super.super._inputSize);
  v6 = [v5 objectAtIndexedSubscript:2];
  intValue2 = [v6 intValue];

  v7 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:1];
  intValue3 = [v7 intValue];

  v8 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:2];
  intValue4 = [v8 intValue];

  v9 = objc_loadWeakRetained(&self->super.super._inputSize);
  v10 = [v9 objectAtIndexedSubscript:0];
  intValue5 = [v10 intValue];

  v12 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  intValue6 = [v12 intValue];

  result = -50;
  v15 = intValue;
  if (self->super._chunk == 4 && (intValue5 & 3) == 0 && (intValue6 & 3) == 0)
  {
    v61 = intValue5;
    v16 = *(&self->super.super._executedOnGPU + 3);
    if ([objc_opt_class() isFilterSizeSupported:v16] & 1) != 0 && (v17 = *(&self->super.super._executedOnGPU + 3) - 1, v17 <= 4) && ((0x17u >> v17))
    {
      v62 = v16;
      v54 = intValue4 * intValue3;
      v56 = 4 * intValue4 * intValue3;
      self->CalculateDotProductOfChunk = off_1F496A620[v17];
      v18 = 4 * intValue4;
      data = [(VCPCNNData *)self->super._bias data];
      v57 = intValue6;
      if (intValue6 / self->super._chunk >= 1)
      {
        v20 = data;
        v21 = 0;
        do
        {
          data2 = [(VCPCNNData *)self->super.super._output data];
          v23 = 92;
          padSize = self->super._padSize;
          if (self->super._padding)
          {
            v25 = (*(&self->super.super._executedOnGPU + 3) + ~padSize) & ~((*(&self->super.super._executedOnGPU + 3) + ~padSize) >> 31);
            v26 = intValue3 - v25;
            v27 = intValue4 - v25;
          }

          else
          {
            v27 = intValue4;
            v26 = intValue3;
          }

          chunk = self->super._chunk;
          v68 = v21;
          if (padSize >= v26)
          {
            LODWORD(v35) = self->super._chunk;
          }

          else
          {
            v72 = &data2[v21 * v56];
            v29 = padSize;
            v30 = v26;
            do
            {
              v31 = v23;
              v32 = *(&self->super.super.super.isa + v23);
              v33 = v27 - v32;
              if (v27 <= v32)
              {
                v35 = chunk;
              }

              else
              {
                v34 = &v72[v29 * v18 + chunk * v32];
                do
                {
                  memcpy(v34, v20, 4 * chunk);
                  v35 = self->super._chunk;
                  v34 += v35;
                  LODWORD(chunk) = self->super._chunk;
                  --v33;
                }

                while (v33);
              }

              ++v29;
              chunk = v35;
              v23 = v31;
            }

            while (v29 != v30);
          }

          v20 += v35;
          v21 = v68 + 1;
          intValue6 = v57;
        }

        while (v68 + 1 < v57 / v35);
      }

      data3 = [(VCPCNNData *)self->super._filter data];
      if (intValue6 >= 1)
      {
        v58 = 0;
        v36 = 4 * intValue2;
        v55 = (v62 * v62 * v61);
        v63 = (4 * v62 * v62);
        v65 = v61 / 4;
        v70 = v18;
        do
        {
          v37 = self->super._chunk;
          v38 = objc_loadWeakRetained(&self->super.super._input);
          data4 = [v38 data];

          data5 = [(VCPCNNData *)self->super.super._output data];
          v41 = intValue2;
          if (v65 >= 1)
          {
            v42 = 0;
            v60 = &data5[v56 * (v58 / v37) + self->super._padSize * v18 + (v58 % v37)];
            LODWORD(v43) = self->super._chunk;
            v44 = *(&self->super.super._executedOnGPU + 3);
            v45 = data3;
            do
            {
              v67 = v42;
              v69 = data4;
              if (v44 <= v15)
              {
                v46 = 0;
                v47 = (v60 + 4 * self->super._padSize * v43);
                do
                {
                  if (v44 <= v41)
                  {
                    v73 = v46;
                    v48 = -1;
                    v49 = v47;
                    v50 = data4;
                    do
                    {
                      v51 = (self->CalculateDotProductOfChunk)(v50, v36, v45);
                      v41 = intValue2;
                      *v49 = v51 + *v49;
                      v43 = self->super._chunk;
                      v50 += 4 * v43;
                      v49 += v43;
                      v44 = *(&self->super.super._executedOnGPU + 3);
                      ++v48;
                    }

                    while (v48 < intValue2 - v44);
                    v15 = intValue;
                    v46 = v73;
                    v18 = v70;
                  }

                  data4 += 4 * v36;
                  v47 += v18;
                }

                while (v46++ < v15 - v44);
              }

              v45 += v63;
              data4 = v69 + 16 * intValue2 * intValue;
              v42 = v67 + 1;
            }

            while (v67 + 1 != v65);
          }

          data3 += v55;
          intValue6 = v57;
          ++v58;
        }

        while (v58 != v57);
      }

      if (self->super._reLU && v54 * intValue6 >= 1)
      {
        v53 = 0;
        do
        {
          if ([(VCPCNNData *)self->super.super._output data][v53] < 0.0)
          {
            [(VCPCNNData *)self->super.super._output data][v53] = 0.0;
          }

          result = 0;
          v53 += 4;
        }

        while (4 * (v54 * intValue6) != v53);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -50;
    }
  }

  return result;
}

- (int)forward
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained count];

  if (!v4)
  {
    return -50;
  }

  if (self->super._chunk == 4)
  {
    v5 = objc_loadWeakRetained(&self->super.super._inputSize);
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 intValue] & 3;

    if (v7)
    {
      result = [(VCPCNNConvBlockVector *)self straightForwardForChunkFour];
      if (result)
      {
        return result;
      }

      return 0;
    }
  }

  v9 = objc_loadWeakRetained(&self->super.super._inputSize);
  v10 = [v9 objectAtIndexedSubscript:0];
  if (([v10 intValue] & 3) != 0)
  {
    goto LABEL_13;
  }

  v11 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  if (([v11 intValue] & 3) != 0 || self->super._chunk != 4)
  {

LABEL_13:
    return -50;
  }

  v12 = [objc_opt_class() isFilterSizeSupported:*(&self->super.super._executedOnGPU + 3)];

  if (!v12)
  {
    return -50;
  }

  result = [(VCPCNNConvBlockVector *)self chunkFourForward];
  if (!result)
  {
    return 0;
  }

  return result;
}

@end