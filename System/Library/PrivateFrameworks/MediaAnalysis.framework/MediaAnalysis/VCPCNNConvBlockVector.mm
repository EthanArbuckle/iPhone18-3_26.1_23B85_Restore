@interface VCPCNNConvBlockVector
- (VCPCNNConvBlockVector)initWithParameters:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7 groups:(int)a8 stride:(int)a9 batchNorm:(BOOL)a10;
- (int)chunkFourForward;
- (int)forward;
- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4;
- (int)straightForwardForChunkFour;
@end

@implementation VCPCNNConvBlockVector

- (VCPCNNConvBlockVector)initWithParameters:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7 groups:(int)a8 stride:(int)a9 batchNorm:(BOOL)a10
{
  v10 = *&a8;
  v11 = a7;
  v12 = a6;
  v13 = *&a5;
  v14 = *&a4;
  v15 = *&a3;
  v16 = self;
  if ([VCPCNNConvBlockVector isFilterSizeSupported:*(&self->super.super._executedOnGPU + 3)]&& (v16->super._filterSize & 3) == 0)
  {
    v20.receiver = v16;
    v20.super_class = VCPCNNConvBlockVector;
    BYTE4(v19) = a10;
    LODWORD(v19) = a9;
    v16 = [(VCPCNNConvBlock *)&v20 initWithParameters:v15 filterNum:v14 chunk:v13 reLU:v12 padding:v11 groups:v10 stride:v19 batchNorm:?];
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4
{
  v4 = a4;
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
    result = [(VCPCNNData *)filter readFromDisk:a3 quantFactor:v4];
    if (result)
    {
      return result;
    }

    bias = self->super._bias;
    v15 = a3;
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
  __stream = a3;
  v20 = [v19 intValue];

  v21 = [(VCPCNNData *)self->super._filter size];
  v22 = [v21 objectAtIndexedSubscript:1];
  v23 = [v22 intValue];

  v24 = [(VCPCNNData *)self->super._filter size];
  v25 = [v24 objectAtIndexedSubscript:2];
  v26 = [v25 intValue];
  v27 = [(VCPCNNData *)self->super._filter size];
  v28 = [v27 objectAtIndexedSubscript:3];
  v29 = [v28 intValue] * v26;

  v30 = v23 * v20 * v29;
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
  if (v4 >= 2)
  {
    if (fread(v32, 2uLL, v30, __stream))
    {
      if (v30 >= 1)
      {
        v34 = v30 - 1;
        do
        {
          v33[v34] = *(v33 + v34) / v4;
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
  v36 = [(VCPCNNData *)self->super._filter data];
  if (v20 >= 1)
  {
    v37 = 0;
    chunk = self->super._chunk;
    v39 = v33;
    do
    {
      if (v23 >= 1)
      {
        for (i = 0; i != v23; ++i)
        {
          if (v29 >= 1)
          {
            v41 = (i % chunk) + i / chunk * chunk * v29;
            v42 = v29;
            do
            {
              v43 = *v39++;
              v36[v41] = v43;
              v41 += chunk;
              --v42;
            }

            while (v42);
          }
        }
      }

      ++v37;
      v36 += v29 * v23;
    }

    while (v37 != v20);
  }

  MEMORY[0x1CCA95C10](v33, 0x1000C8052888210);
  bias = self->super._bias;
  v15 = __stream;
LABEL_30:
  result = [(VCPCNNData *)bias readFromDisk:v15 quantFactor:v4];
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
  v5 = [v4 intValue];

  v6 = objc_loadWeakRetained(&self->super.super._inputSize);
  v7 = [v6 objectAtIndexedSubscript:2];
  v43 = [v7 intValue];

  v8 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:1];
  v9 = [v8 intValue];

  v10 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:2];
  v42 = [v10 intValue];

  v11 = objc_loadWeakRetained(&self->super.super._inputSize);
  v12 = [v11 objectAtIndexedSubscript:0];
  v49 = [v12 intValue];

  v13 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  v14 = [v13 intValue];

  if (self->super._chunk != 4)
  {
    return -50;
  }

  if (v14 >= 1)
  {
    v39 = 0;
    v45 = 0;
    v36 = (4 * v42 * v9);
    v15 = *(&self->super.super._executedOnGPU + 3);
    v48 = (v5 * v43);
    v16 = v15;
    v37 = v5;
    do
    {
      if (v16 <= v5)
      {
        v38 = 0;
        v44 = 0;
        chunk = self->super._chunk;
        v41 = (v45 % chunk);
        v40 = v36 * (v45 / chunk);
        do
        {
          if (v16 <= v43)
          {
            v19 = 0;
            v47 = v38;
            v15 = v16;
            do
            {
              v46 = v19;
              v20 = 0.0;
              v21 = 0.0;
              if (v49 >= 1)
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

                          v30 = [(VCPCNNData *)self->super._filter data];
                          v15 = *(&self->super.super._executedOnGPU + 3);
                          v21 = v21 + (v29 * v30[v15 * (v26 + v24 * v15) + v27++]);
                        }

                        while (v27 < v15);
                      }

                      ++v26;
                      LODWORD(v23) = v23 + v43;
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

                while (v51 + 1 != v49);
              }

              v32 = self->super._chunk;
              padSize = self->super._padSize;
              if ((v21 + [(VCPCNNData *)self->super._bias data][4 * v45]) > 0.0)
              {
                v20 = v21 + [(VCPCNNData *)self->super._bias data][4 * v45];
              }

              ([(VCPCNNData *)self->super.super._output data]+ 4 * v40 + 4 * (padSize + v46 + (padSize + v44) * v42) * v32)[4 * v41] = v20;
              v15 = *(&self->super.super._executedOnGPU + 3);
              ++v47;
              v19 = v46 + 1;
            }

            while (v46 < v43 - v15);
          }

          v5 = v37;
          v38 += v43;
          v16 = v15;
          v17 = v15;
        }

        while (v44++ < v37 - v15);
      }

      else
      {
        v17 = v16;
      }

      v39 += v49;
      v16 = v17;
      ++v45;
    }

    while (v45 != v14);
  }

  return 0;
}

- (int)chunkFourForward
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained objectAtIndexedSubscript:1];
  v71 = [v4 intValue];

  v5 = objc_loadWeakRetained(&self->super.super._inputSize);
  v6 = [v5 objectAtIndexedSubscript:2];
  v74 = [v6 intValue];

  v7 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:1];
  v66 = [v7 intValue];

  v8 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:2];
  v64 = [v8 intValue];

  v9 = objc_loadWeakRetained(&self->super.super._inputSize);
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 intValue];

  v12 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  v13 = [v12 intValue];

  result = -50;
  v15 = v71;
  if (self->super._chunk == 4 && (v11 & 3) == 0 && (v13 & 3) == 0)
  {
    v61 = v11;
    v16 = *(&self->super.super._executedOnGPU + 3);
    if ([objc_opt_class() isFilterSizeSupported:v16] & 1) != 0 && (v17 = *(&self->super.super._executedOnGPU + 3) - 1, v17 <= 4) && ((0x17u >> v17))
    {
      v62 = v16;
      v54 = v64 * v66;
      v56 = 4 * v64 * v66;
      self->CalculateDotProductOfChunk = off_1F496A620[v17];
      v18 = 4 * v64;
      v19 = [(VCPCNNData *)self->super._bias data];
      v57 = v13;
      if (v13 / self->super._chunk >= 1)
      {
        v20 = v19;
        v21 = 0;
        do
        {
          v22 = [(VCPCNNData *)self->super.super._output data];
          v23 = 92;
          padSize = self->super._padSize;
          if (self->super._padding)
          {
            v25 = (*(&self->super.super._executedOnGPU + 3) + ~padSize) & ~((*(&self->super.super._executedOnGPU + 3) + ~padSize) >> 31);
            v26 = v66 - v25;
            v27 = v64 - v25;
          }

          else
          {
            v27 = v64;
            v26 = v66;
          }

          chunk = self->super._chunk;
          v68 = v21;
          if (padSize >= v26)
          {
            LODWORD(v35) = self->super._chunk;
          }

          else
          {
            v72 = &v22[v21 * v56];
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
          v13 = v57;
        }

        while (v68 + 1 < v57 / v35);
      }

      v59 = [(VCPCNNData *)self->super._filter data];
      if (v13 >= 1)
      {
        v58 = 0;
        v36 = 4 * v74;
        v55 = (v62 * v62 * v61);
        v63 = (4 * v62 * v62);
        v65 = v61 / 4;
        v70 = v18;
        do
        {
          v37 = self->super._chunk;
          v38 = objc_loadWeakRetained(&self->super.super._input);
          v39 = [v38 data];

          v40 = [(VCPCNNData *)self->super.super._output data];
          v41 = v74;
          if (v65 >= 1)
          {
            v42 = 0;
            v60 = &v40[v56 * (v58 / v37) + self->super._padSize * v18 + (v58 % v37)];
            LODWORD(v43) = self->super._chunk;
            v44 = *(&self->super.super._executedOnGPU + 3);
            v45 = v59;
            do
            {
              v67 = v42;
              v69 = v39;
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
                    v50 = v39;
                    do
                    {
                      v51 = (self->CalculateDotProductOfChunk)(v50, v36, v45);
                      v41 = v74;
                      *v49 = v51 + *v49;
                      v43 = self->super._chunk;
                      v50 += 4 * v43;
                      v49 += v43;
                      v44 = *(&self->super.super._executedOnGPU + 3);
                      ++v48;
                    }

                    while (v48 < v74 - v44);
                    v15 = v71;
                    v46 = v73;
                    v18 = v70;
                  }

                  v39 += 4 * v36;
                  v47 += v18;
                }

                while (v46++ < v15 - v44);
              }

              v45 += v63;
              v39 = v69 + 16 * v74 * v71;
              v42 = v67 + 1;
            }

            while (v67 + 1 != v65);
          }

          v59 += v55;
          v13 = v57;
          ++v58;
        }

        while (v58 != v57);
      }

      if (self->super._reLU && v54 * v13 >= 1)
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

        while (4 * (v54 * v13) != v53);
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