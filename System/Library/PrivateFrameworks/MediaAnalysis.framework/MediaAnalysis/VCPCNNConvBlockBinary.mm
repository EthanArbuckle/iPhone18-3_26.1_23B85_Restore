@interface VCPCNNConvBlockBinary
- (VCPCNNConvBlockBinary)initWithParameters:(int)a3 filterNum:(int)a4 convType:(unint64_t)a5 reLU:(BOOL)a6 padding:(BOOL)a7;
- (int)constructBlock:(id)a3 context:(id)a4;
- (int)fillConvWeightsGPU;
- (int)forward;
- (int)gpuForward;
- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4;
- (void)dealloc;
@end

@implementation VCPCNNConvBlockBinary

- (VCPCNNConvBlockBinary)initWithParameters:(int)a3 filterNum:(int)a4 convType:(unint64_t)a5 reLU:(BOOL)a6 padding:(BOOL)a7
{
  v7 = a7;
  v17.receiver = self;
  v17.super_class = VCPCNNConvBlockBinary;
  v12 = [(VCPCNNConvBlockBinary *)&v17 init];
  v13 = v12;
  if (v12)
  {
    *(&v12->super._executedOnGPU + 3) = a3;
    v12->_filterSize = a4;
    v12->_filterWeightsBinary = 0;
    v12->_filterWeightSize = 1;
    v12->_filterScaling = 0;
    v12->_bias = 0;
    v12->_padding = v7;
    v12->_convType = a5;
    v12->_reLU = a6;
    mpsBinaryConv = v12->_mpsBinaryConv;
    v12->_mpsBinaryConv = 0;

    v15 = v13;
  }

  return v13;
}

- (void)dealloc
{
  filterWeightsBinary = self->_filterWeightsBinary;
  if (filterWeightsBinary)
  {
    MEMORY[0x1CCA95C10](filterWeightsBinary, 0x1000C8052888210);
  }

  filterScaling = self->_filterScaling;
  if (filterScaling)
  {
    MEMORY[0x1CCA95C10](filterScaling, 0x1000C8052888210);
  }

  bias = self->_bias;
  if (bias)
  {
    MEMORY[0x1CCA95C10](bias, 0x1000C8052888210);
  }

  v6.receiver = self;
  v6.super_class = VCPCNNConvBlockBinary;
  [(VCPCNNConvBlockBinary *)&v6 dealloc];
}

- (int)constructBlock:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong(&self->super._context, a4);
    v8 = [VCPCNNData cnnDataWithGPUContext:v7];
    output = self->super._output;
    self->super._output = v8;

    objc_storeWeak(&self->super._inputSize, v6);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    outputSize = self->super._outputSize;
    self->super._outputSize = v10;

    v12 = self->super._outputSize;
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_filterSize];
      v40 = v6;
      [(NSMutableArray *)v12 addObject:v13];

      padding = self->_padding;
      v15 = self->super._outputSize;
      v16 = MEMORY[0x1E696AD98];
      WeakRetained = objc_loadWeakRetained(&self->super._inputSize);
      v18 = [WeakRetained objectAtIndexedSubscript:1];
      if (padding)
      {
        v19 = [v16 numberWithInt:{objc_msgSend(v18, "intValue")}];
        [(NSMutableArray *)v15 addObject:v19];

        v20 = self->super._outputSize;
        v21 = MEMORY[0x1E696AD98];
        v22 = objc_loadWeakRetained(&self->super._inputSize);
        v23 = [v22 objectAtIndexedSubscript:2];
        [v21 numberWithInt:{objc_msgSend(v23, "intValue")}];
      }

      else
      {
        v26 = [v16 numberWithInt:{objc_msgSend(v18, "intValue") - *(&self->super._executedOnGPU + 3) + 1}];
        [(NSMutableArray *)v15 addObject:v26];

        v20 = self->super._outputSize;
        v27 = MEMORY[0x1E696AD98];
        v22 = objc_loadWeakRetained(&self->super._inputSize);
        v23 = [v22 objectAtIndexedSubscript:2];
        [v27 numberWithInt:{objc_msgSend(v23, "intValue") - *(&self->super._executedOnGPU + 3) + 1}];
      }
      v24 = ;
      [(NSMutableArray *)v20 addObject:v24];

      v6 = v40;
      [(VCPCNNData *)self->super._output setSize:self->super._outputSize];
      v25 = [(VCPCNNData *)self->super._output allocBuffers:self->super._generateOutput];
      if (!v25)
      {
        v28 = objc_loadWeakRetained(&self->super._inputSize);
        v29 = [v28 objectAtIndexedSubscript:0];
        v30 = [v29 intValue];
        v31 = v30 + 31;
        if (v30 < -31)
        {
          v31 = v30 + 62;
        }

        self->_filterWeightSize = self->_filterSize * (v31 >> 5) * *(&self->super._executedOnGPU + 3) * *(&self->super._executedOnGPU + 3);

        filterWeightSize = self->_filterWeightSize;
        if (filterWeightSize < 0)
        {
          v33 = -1;
        }

        else
        {
          v33 = 4 * filterWeightSize;
        }

        v34 = MEMORY[0x1E69E5398];
        self->_filterWeightsBinary = operator new[](v33, MEMORY[0x1E69E5398]);
        filterSize = self->_filterSize;
        if (filterSize < 0)
        {
          v36 = -1;
        }

        else
        {
          v36 = 4 * filterSize;
        }

        self->_filterScaling = operator new[](v36, v34);
        v37 = operator new[](v36, v34);
        self->_bias = v37;
        if (self->super._output)
        {
          v25 = -108;
          if (self->_filterWeightsBinary)
          {
            if (v37)
            {
              v38 = self->_filterScaling == 0;
            }

            else
            {
              v38 = 1;
            }

            if (v38)
            {
              v25 = -108;
            }

            else
            {
              v25 = 0;
            }
          }
        }

        else
        {
          v25 = -108;
        }

        v6 = v40;
      }
    }

    else
    {
      v25 = -108;
    }
  }

  else
  {
    v25 = -50;
  }

  return v25;
}

- (int)forward
{
  if (self->super._context)
  {
    return [(VCPCNNConvBlockBinary *)self gpuForward];
  }

  else
  {
    return -50;
  }
}

- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4
{
  if (!self->super._context)
  {
    return 0;
  }

  if (fread(self->_filterWeightsBinary, 4uLL, self->_filterWeightSize, a3) && fread(self->_filterScaling, 4uLL, self->_filterSize, a3) && fread(self->_bias, 4uLL, self->_filterSize, a3))
  {
    return [(VCPCNNConvBlockBinary *)self fillConvWeightsGPU];
  }

  return -19;
}

- (int)gpuForward
{
  if (!self->super._executedOnGPU || (result = [(VCPCNNData *)self->super._output reallocGPUTemporalBuffers]) == 0)
  {
    v4 = [(VCPCNNMetalContext *)self->super._context commandBuffer];
    if (v4)
    {
      v5 = v4;
      WeakRetained = objc_loadWeakRetained(&self->super._input);
      v7 = [WeakRetained mpsImg];
      if (v7)
      {
        v8 = [(VCPCNNData *)self->super._output mpsImg];

        if (v8)
        {
          mpsBinaryConv = self->_mpsBinaryConv;
          v10 = [(VCPCNNMetalContext *)self->super._context commandBuffer];
          v11 = objc_loadWeakRetained(&self->super._input);
          v12 = [v11 mpsImg];
          v13 = [(VCPCNNData *)self->super._output mpsImg];
          [(MPSCNNBinaryConvolution *)mpsBinaryConv encodeToCommandBuffer:v10 sourceImage:v12 destinationImage:v13];

          result = 0;
          self->super._executedOnGPU = 1;
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
  v3 = *(&self->super._executedOnGPU + 3);
  WeakRetained = objc_loadWeakRetained(&self->super._inputSize);
  v5 = [WeakRetained objectAtIndexedSubscript:0];
  v6 = [v5 intValue];

  v7 = [(NSMutableArray *)self->super._outputSize objectAtIndexedSubscript:0];
  LODWORD(v5) = [v7 intValue];

  v8 = [MEMORY[0x1E69748E8] cnnConvolutionDescriptorWithKernelWidth:v3 kernelHeight:v3 inputFeatureChannels:v6 outputFeatureChannels:v5];
  v9 = v8;
  if (v8)
  {
    if (self->_reLU)
    {
      v10 = [v8 fusedNeuronDescriptor];
      [v10 setNeuronType:1];

      v11 = [v9 fusedNeuronDescriptor];
      [v11 setA:0.0];
    }

    [v9 setFeatureChannelsLayout:1];
    v12 = [[VCPCNNMPSDataSource alloc] initWith:268435488 convolutionDescriptor:v9 kernelWeights:self->_filterWeightsBinary biasTerm:0];
    if (v12 && (v13 = objc_alloc(MEMORY[0x1E69748D8]), -[VCPCNNMetalContext device](self->super._context, "device"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 initWithDevice:v14 convolutionData:v12 outputBiasTerms:self->_bias outputScaleTerms:self->_filterScaling inputBiasTerms:0 inputScaleTerms:0 type:self->_convType flags:0], v16 = self->_mpsBinaryConv, self->_mpsBinaryConv = v15, v16, v14, (v17 = self->_mpsBinaryConv) != 0))
    {
      [(MPSCNNBinaryConvolution *)v17 setEdgeMode:0];
      v18 = [(NSMutableArray *)self->super._outputSize objectAtIndexedSubscript:2];
      v19 = [v18 intValue];
      v20 = [(NSMutableArray *)self->super._outputSize objectAtIndexedSubscript:1];
      v21 = [v20 intValue];

      if (!self->_padding)
      {
        if (v3 == 1)
        {
          v22 = 0;
        }

        else
        {
          LODWORD(v22) = (v3 - 1) / 2;
          if (v22 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v22;
          }
        }

        mpsBinaryConv = self->_mpsBinaryConv;
        v27 = v22;
        v28 = v22;
        v29 = 0;
        [(MPSCNNBinaryConvolution *)mpsBinaryConv setOffset:&v27];
      }

      v25 = self->_mpsBinaryConv;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = v19;
      v31 = v21;
      v32 = 1;
      [(MPSCNNBinaryConvolution *)v25 setClipRect:&v27];
      v23 = 0;
    }

    else
    {
      v23 = -108;
    }
  }

  else
  {
    v23 = -108;
  }

  return v23;
}

@end