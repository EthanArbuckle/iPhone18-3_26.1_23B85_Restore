@interface VCPCNNFullConnectionBlockGPU
- (int)forward;
- (int)loadWeights:(__sFILE *)a3 inputDim:(int)a4 outputDim:(int)a5 quantFactor:(int)a6;
- (int)setupMPS;
- (int)shuffleWeights:(float *)a3 fromSrc:(float *)a4 inputChannels:(int)a5 inputHeight:(int)a6 inputWidth:(int)a7 outputChannels:(int)a8;
@end

@implementation VCPCNNFullConnectionBlockGPU

- (int)setupMPS
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained count];

  v5 = objc_loadWeakRetained(&self->super.super._inputSize);
  [v5 objectAtIndexedSubscript:0];
  if (v4 < 3)
    v16 = {;
    v7 = [v16 intValue];

    v14 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
    v15 = [v14 intValue];
    v10 = 1;
    v13 = 1;
  }

  else
    v6 = {;
    v7 = [v6 intValue];

    v8 = objc_loadWeakRetained(&self->super.super._inputSize);
    v9 = [v8 objectAtIndexedSubscript:1];
    v10 = [v9 intValue];

    v11 = objc_loadWeakRetained(&self->super.super._inputSize);
    v12 = [v11 objectAtIndexedSubscript:2];
    v13 = [v12 intValue];

    v14 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
    v15 = [v14 intValue];
  }

  v17 = [MEMORY[0x1E69748E8] cnnConvolutionDescriptorWithKernelWidth:v13 kernelHeight:v10 inputFeatureChannels:v7 outputFeatureChannels:v15];
  v18 = v17;
  if (v17)
  {
    [v17 setFeatureChannelsLayout:1];
    v19 = [(VCPCNNFullConnectionBlockGPU *)self convVCPNeuronTypeToMPS:self->super._neuronType];
    v20 = [v18 fusedNeuronDescriptor];
    [v20 setNeuronType:v19];

    if (self->super._neuronType == 1)
    {
      v21 = [v18 fusedNeuronDescriptor];
      [v21 setA:0.0];
    }

    v22 = [[VCPCNNMPSDataSource alloc] initWith:268435488 convolutionDescriptor:v18 kernelWeights:self->super._weight biasTerm:self->super._bias];
    if (v22 && (v23 = objc_alloc(MEMORY[0x1E6974928]), -[VCPCNNMetalContext device](self->super.super._context, "device"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v23 initWithDevice:v24 weights:v22], v26 = self->_mpsFullConn, self->_mpsFullConn = v25, v26, v24, (v27 = self->_mpsFullConn) != 0))
    {
      [(MPSCNNFullyConnected *)v27 setEdgeMode:0];
      v32 = 0;
      v33 = 0;
      mpsFullConn = self->_mpsFullConn;
      v34 = 0;
      v35 = vdupq_n_s64(1uLL);
      v36 = 1;
      [(MPSCNNFullyConnected *)mpsFullConn setClipRect:&v32];
      if (v10 != 1 || v13 != 1)
      {
        v29 = self->_mpsFullConn;
        v32 = (v13 + (v13 >> 31)) >> 1;
        v33 = (v10 + (v10 >> 31)) >> 1;
        v34 = 0;
        [(MPSCNNFullyConnected *)v29 setOffset:&v32];
      }

      v30 = 0;
    }

    else
    {
      v30 = -108;
    }
  }

  else
  {
    v30 = -108;
  }

  return v30;
}

- (int)shuffleWeights:(float *)a3 fromSrc:(float *)a4 inputChannels:(int)a5 inputHeight:(int)a6 inputWidth:(int)a7 outputChannels:(int)a8
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = (a7 * a6);
    v10 = 4 * v9 * a5;
    do
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = a4;
        v13 = a3;
        do
        {
          v14 = a5;
          v15 = v12;
          v16 = v13;
          if (a5 >= 1)
          {
            do
            {
              *v16++ = *v15;
              v15 += (a7 * a6);
              --v14;
            }

            while (v14);
          }

          ++v11;
          v13 += a5;
          ++v12;
        }

        while (v11 != v9);
      }

      ++v8;
      a3 = (a3 + v10);
      a4 = (a4 + v10);
    }

    while (v8 != a8);
  }

  return 0;
}

- (int)loadWeights:(__sFILE *)a3 inputDim:(int)a4 outputDim:(int)a5 quantFactor:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v12 = [WeakRetained count];

  if (v12 != 1)
  {
    if (v7 * v8 < 0)
    {
      v15 = -1;
    }

    else
    {
      v15 = 4 * (v7 * v8);
    }

    v16 = operator new[](v15, MEMORY[0x1E69E5398]);
    if (!v16)
    {
      return -108;
    }

    v17 = v16;
    v13 = [(VCPCNNFullConnectionBlock *)self readWeightsBias:a3 weights:v16 bias:self->super._bias inputDim:v8 outputDim:v7 quantFactor:v6];
    if (!v13)
    {
      weight = self->super._weight;
      v20 = objc_loadWeakRetained(&self->super.super._inputSize);
      v29 = [v20 objectAtIndexedSubscript:0];
      v21 = [v29 intValue];
      v28 = objc_loadWeakRetained(&self->super.super._inputSize);
      v27 = [v28 objectAtIndexedSubscript:1];
      v22 = [v27 intValue];
      v23 = objc_loadWeakRetained(&self->super.super._inputSize);
      v24 = [v23 objectAtIndexedSubscript:2];
      v25 = [v24 intValue];
      v26 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
      v18 = -[VCPCNNFullConnectionBlockGPU shuffleWeights:fromSrc:inputChannels:inputHeight:inputWidth:outputChannels:](self, "shuffleWeights:fromSrc:inputChannels:inputHeight:inputWidth:outputChannels:", weight, v17, v21, v22, v25, [v26 intValue]);

      if (!v18)
      {
        MEMORY[0x1CCA95C10](v17, 0x1000C8052888210);
        goto LABEL_3;
      }

      return v18;
    }

    return v13;
  }

  v13 = [(VCPCNNFullConnectionBlock *)self readWeightsBias:a3 weights:self->super._weight bias:self->super._bias inputDim:v8 outputDim:v7 quantFactor:v6];
  if (v13)
  {
    return v13;
  }

LABEL_3:

  return [(VCPCNNFullConnectionBlockGPU *)self setupMPS];
}

- (int)forward
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
          mpsFullConn = self->_mpsFullConn;
          v10 = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
          v11 = objc_loadWeakRetained(&self->super.super._input);
          v12 = [v11 mpsImg];
          v13 = [(VCPCNNData *)self->super.super._output mpsImg];
          [(MPSCNNFullyConnected *)mpsFullConn encodeToCommandBuffer:v10 sourceImage:v12 destinationImage:v13];

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

@end