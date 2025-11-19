@interface VCPCNNConvBlockGPU
- (int)fillConvWeightsGPU;
- (int)gpuForward;
- (int)readBatchNormParam:(__sFILE *)a3 quantFactor:(signed __int16)a4;
- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4;
- (void)dealloc;
- (void)releaseBatchNormMemory;
@end

@implementation VCPCNNConvBlockGPU

- (void)releaseBatchNormMemory
{
  batchNormMean = self->_batchNormMean;
  if (batchNormMean)
  {
    MEMORY[0x1CCA95C10](batchNormMean, 0x1000C8052888210);
  }

  batchNormVar = self->_batchNormVar;
  if (batchNormVar)
  {
    MEMORY[0x1CCA95C10](batchNormVar, 0x1000C8052888210);
  }

  batchNormBeta = self->_batchNormBeta;
  if (batchNormBeta)
  {
    MEMORY[0x1CCA95C10](batchNormBeta, 0x1000C8052888210);
  }

  batchNormGamma = self->_batchNormGamma;
  if (batchNormGamma)
  {
    MEMORY[0x1CCA95C10](batchNormGamma, 0x1000C8052888210);
  }

  self->_batchNormMean = 0;
  self->_batchNormVar = 0;
  self->_batchNormBeta = 0;
  self->_batchNormGamma = 0;
}

- (void)dealloc
{
  [(VCPCNNConvBlockGPU *)self releaseBatchNormMemory];
  v3.receiver = self;
  v3.super_class = VCPCNNConvBlockGPU;
  [(VCPCNNConvBlockGPU *)&v3 dealloc];
}

- (int)gpuForward
{
  if (!self->super.super._executedOnGPU || (result = [(VCPCNNData *)self->super.super._output reallocGPUTemporalBuffers]) == 0)
  {
    v4 = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
    if (v4)
    {
      v5 = v4;
      WeakRetained = objc_loadWeakRetained(&self->super.super._input);
      v7 = [WeakRetained mpsImg];
      if (v7)
      {
        v8 = [(VCPCNNData *)self->super.super._output mpsImg];

        if (v8)
        {
          mpsConv = self->_mpsConv;
          v10 = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
          v11 = objc_loadWeakRetained(&self->super.super._input);
          v12 = [v11 mpsImg];
          v13 = [(VCPCNNData *)self->super.super._output mpsImg];
          [(MPSCNNConvolution *)mpsConv encodeToCommandBuffer:v10 sourceImage:v12 destinationImage:v13];

          result = 0;
          self->super.super._executedOnGPU = 1;
          return result;
        }
      }

      else
      {
      }
    }

    return -108;
  }

  return result;
}

- (int)fillConvWeightsGPU
{
  v3 = [(VCPCNNData *)self->super._filter size];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 intValue];

  v6 = [(VCPCNNData *)self->super._filter size];
  v7 = [v6 objectAtIndexedSubscript:1];
  v8 = [v7 intValue];

  v9 = [(VCPCNNData *)self->super._filter size];
  v10 = [v9 objectAtIndexedSubscript:2];
  v11 = [v10 intValue];
  v12 = [(VCPCNNData *)self->super._filter size];
  v13 = [v12 objectAtIndexedSubscript:3];
  v14 = [v13 intValue];

  v15 = [(VCPCNNData *)self->super._filter size];
  v16 = [v15 objectAtIndexedSubscript:2];
  v58 = [v16 intValue];

  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v18 = [WeakRetained objectAtIndexedSubscript:0];
  v19 = [v18 intValue];

  v20 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  v21 = [v20 intValue];
  v22 = (v14 * v11);

  v23 = v8 * v5 * v22;
  if (v23 < 0)
  {
    v24 = -1;
  }

  else
  {
    v24 = 4 * v23;
  }

  v25 = operator new[](v24, MEMORY[0x1E69E5398]);
  if (!v25)
  {
    return -108;
  }

  v26 = v25;
  memcpy(v25, [(VCPCNNData *)self->super._filter data], 4 * v5 * v8 * v22);
  v27 = [(VCPCNNData *)self->super._filter data];
  if (v5 >= 1)
  {
    v28 = 0;
    v29 = 4 * v22 * v8;
    v30 = v26;
    do
    {
      if (v22 >= 1)
      {
        v31 = 0;
        v32 = v30;
        v33 = v27;
        do
        {
          v34 = v8;
          v35 = v32;
          v36 = v33;
          if (v8 >= 1)
          {
            do
            {
              *v36++ = *v35;
              v35 += v22;
              --v34;
            }

            while (v34);
          }

          ++v31;
          v33 += v8;
          ++v32;
        }

        while (v31 != v22);
      }

      ++v28;
      v27 = (v27 + v29);
      v30 = (v30 + v29);
    }

    while (v28 != v5);
  }

  MEMORY[0x1CCA95C10](v26, 0x1000C8052888210);
  if (v19 != v21 || v19 != self->super._groups)
  {
    v39 = [MEMORY[0x1E69748E8] cnnConvolutionDescriptorWithKernelWidth:v58 kernelHeight:v58 inputFeatureChannels:v19 outputFeatureChannels:v21];
    if (v39)
    {
      v38 = v39;
      [v39 setGroups:self->super._groups];
      goto LABEL_19;
    }

    return -108;
  }

  v37 = [MEMORY[0x1E6974910] cnnConvolutionDescriptorWithKernelWidth:v58 kernelHeight:v58 inputFeatureChannels:v19 outputFeatureChannels:v19];
  if (!v37)
  {
    return -108;
  }

  v38 = v37;
  [v37 setGroups:1];
LABEL_19:
  if (self->super._reLU)
  {
    v40 = [v38 fusedNeuronDescriptor];
    [v40 setNeuronType:1];

    v41 = [v38 fusedNeuronDescriptor];
    [v41 setA:0.0];
  }

  [v38 setStrideInPixelsX:self->super._stride];
  [v38 setStrideInPixelsY:self->super._stride];
  [v38 setFeatureChannelsLayout:1];
  if (self->super._batchNorm)
  {
    LODWORD(v42) = 925353388;
    [v38 setBatchNormalizationParametersForInferenceWithMean:self->_batchNormMean variance:self->_batchNormVar gamma:self->_batchNormGamma beta:self->_batchNormBeta epsilon:v42];
  }

  v43 = [[VCPCNNMPSDataSource alloc] initWith:268435488 convolutionDescriptor:v38 kernelWeights:[(VCPCNNData *)self->super._filter data] biasTerm:[(VCPCNNData *)self->super._bias data]];
  if (v43 && (v44 = objc_alloc(MEMORY[0x1E69748E0]), -[VCPCNNMetalContext device](self->super.super._context, "device"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v44 initWithDevice:v45 weights:v43], v47 = self->_mpsConv, self->_mpsConv = v46, v47, v45, (v48 = self->_mpsConv) != 0))
  {
    [(MPSCNNConvolution *)v48 setEdgeMode:0];
    v49 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:2];
    v50 = [v49 intValue];
    v51 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:1];
    v52 = [v51 intValue];

    if (!self->super._padding)
    {
      if (v58 == 1)
      {
        v53 = 0;
      }

      else
      {
        LODWORD(v53) = (v58 - 1) / 2;
        if (v53 <= 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = v53;
        }
      }

      mpsConv = self->_mpsConv;
      v59 = v53;
      v60 = v53;
      v61 = 0;
      [(MPSCNNConvolution *)mpsConv setOffset:&v59];
    }

    v56 = self->_mpsConv;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = v50;
    v63 = v52;
    v64 = 1;
    [(MPSCNNConvolution *)v56 setClipRect:&v59];
    v54 = 0;
  }

  else
  {
    v54 = -108;
  }

  return v54;
}

- (int)readBatchNormParam:(__sFILE *)a3 quantFactor:(signed __int16)a4
{
  if (!self->super._batchNorm)
  {
    return 0;
  }

  v4 = a4;
  [(VCPCNNConvBlockGPU *)self releaseBatchNormMemory];
  filterSize = self->super._filterSize;
  if (!v4)
  {
    if ((filterSize & 0x80000000) != 0)
    {
      v14 = -1;
    }

    else
    {
      v14 = 4 * filterSize;
    }

    v15 = operator new[](v14, MEMORY[0x1E69E5398]);
    self->_batchNormMean = v15;
    if (v15)
    {
      v16 = operator new[](v14, MEMORY[0x1E69E5398]);
      self->_batchNormVar = v16;
      if (v16)
      {
        v17 = operator new[](v14, MEMORY[0x1E69E5398]);
        self->_batchNormGamma = v17;
        if (v17)
        {
          v18 = operator new[](v14, MEMORY[0x1E69E5398]);
          self->_batchNormBeta = v18;
          if (v18)
          {
            operator new[]();
          }
        }
      }
    }

    return -108;
  }

  if (v4 != 1)
  {
    return -50;
  }

  if ((filterSize & 0x80000000) != 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = 4 * filterSize;
  }

  v9 = operator new[](v8, MEMORY[0x1E69E5398]);
  self->_batchNormMean = v9;
  if (!v9)
  {
    return -108;
  }

  v10 = operator new[](v8, MEMORY[0x1E69E5398]);
  self->_batchNormVar = v10;
  if (!v10)
  {
    return -108;
  }

  v11 = operator new[](v8, MEMORY[0x1E69E5398]);
  self->_batchNormGamma = v11;
  if (!v11)
  {
    return -108;
  }

  v12 = operator new[](v8, MEMORY[0x1E69E5398]);
  self->_batchNormBeta = v12;
  if (!v12)
  {
    return -108;
  }

  if (fread(self->_batchNormMean, 4uLL, filterSize, a3) == filterSize && fread(self->_batchNormVar, 4uLL, filterSize, a3) == filterSize && fread(self->_batchNormGamma, 4uLL, filterSize, a3) == filterSize && fread(self->_batchNormBeta, 4uLL, filterSize, a3) == filterSize)
  {
    return 0;
  }

  else
  {
    return -19;
  }
}

- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4
{
  v4 = a4;
  result = [VCPCNNData readFromDisk:"readFromDisk:quantFactor:" quantFactor:?];
  if (!result)
  {
    result = [(VCPCNNData *)self->super._bias readFromDisk:a3 quantFactor:v4];
    if (!result)
    {
      result = [(VCPCNNConvBlockGPU *)self readBatchNormParam:a3 quantFactor:v4];
      if (!result)
      {

        return [(VCPCNNConvBlockGPU *)self fillConvWeightsGPU];
      }
    }
  }

  return result;
}

@end