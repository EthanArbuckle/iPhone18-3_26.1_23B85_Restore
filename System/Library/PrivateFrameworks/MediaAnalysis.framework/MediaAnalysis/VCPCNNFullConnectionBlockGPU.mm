@interface VCPCNNFullConnectionBlockGPU
- (int)forward;
- (int)loadWeights:(__sFILE *)weights inputDim:(int)dim outputDim:(int)outputDim quantFactor:(int)factor;
- (int)setupMPS;
- (int)shuffleWeights:(float *)weights fromSrc:(float *)src inputChannels:(int)channels inputHeight:(int)height inputWidth:(int)width outputChannels:(int)outputChannels;
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
    intValue = [v16 intValue];

    v14 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
    intValue2 = [v14 intValue];
    intValue3 = 1;
    intValue4 = 1;
  }

  else
    v6 = {;
    intValue = [v6 intValue];

    v8 = objc_loadWeakRetained(&self->super.super._inputSize);
    v9 = [v8 objectAtIndexedSubscript:1];
    intValue3 = [v9 intValue];

    v11 = objc_loadWeakRetained(&self->super.super._inputSize);
    v12 = [v11 objectAtIndexedSubscript:2];
    intValue4 = [v12 intValue];

    v14 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
    intValue2 = [v14 intValue];
  }

  v17 = [MEMORY[0x1E69748E8] cnnConvolutionDescriptorWithKernelWidth:intValue4 kernelHeight:intValue3 inputFeatureChannels:intValue outputFeatureChannels:intValue2];
  v18 = v17;
  if (v17)
  {
    [v17 setFeatureChannelsLayout:1];
    v19 = [(VCPCNNFullConnectionBlockGPU *)self convVCPNeuronTypeToMPS:self->super._neuronType];
    fusedNeuronDescriptor = [v18 fusedNeuronDescriptor];
    [fusedNeuronDescriptor setNeuronType:v19];

    if (self->super._neuronType == 1)
    {
      fusedNeuronDescriptor2 = [v18 fusedNeuronDescriptor];
      [fusedNeuronDescriptor2 setA:0.0];
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
      if (intValue3 != 1 || intValue4 != 1)
      {
        v29 = self->_mpsFullConn;
        v32 = (intValue4 + (intValue4 >> 31)) >> 1;
        v33 = (intValue3 + (intValue3 >> 31)) >> 1;
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

- (int)shuffleWeights:(float *)weights fromSrc:(float *)src inputChannels:(int)channels inputHeight:(int)height inputWidth:(int)width outputChannels:(int)outputChannels
{
  if (outputChannels >= 1)
  {
    v8 = 0;
    v9 = (width * height);
    v10 = 4 * v9 * channels;
    do
    {
      if (v9 >= 1)
      {
        v11 = 0;
        srcCopy = src;
        weightsCopy = weights;
        do
        {
          channelsCopy = channels;
          v15 = srcCopy;
          v16 = weightsCopy;
          if (channels >= 1)
          {
            do
            {
              *v16++ = *v15;
              v15 += (width * height);
              --channelsCopy;
            }

            while (channelsCopy);
          }

          ++v11;
          weightsCopy += channels;
          ++srcCopy;
        }

        while (v11 != v9);
      }

      ++v8;
      weights = (weights + v10);
      src = (src + v10);
    }

    while (v8 != outputChannels);
  }

  return 0;
}

- (int)loadWeights:(__sFILE *)weights inputDim:(int)dim outputDim:(int)outputDim quantFactor:(int)factor
{
  v6 = *&factor;
  v7 = *&outputDim;
  v8 = *&dim;
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
    v13 = [(VCPCNNFullConnectionBlock *)self readWeightsBias:weights weights:v16 bias:self->super._bias inputDim:v8 outputDim:v7 quantFactor:v6];
    if (!v13)
    {
      weight = self->super._weight;
      v20 = objc_loadWeakRetained(&self->super.super._inputSize);
      v29 = [v20 objectAtIndexedSubscript:0];
      intValue = [v29 intValue];
      v28 = objc_loadWeakRetained(&self->super.super._inputSize);
      v27 = [v28 objectAtIndexedSubscript:1];
      intValue2 = [v27 intValue];
      v23 = objc_loadWeakRetained(&self->super.super._inputSize);
      v24 = [v23 objectAtIndexedSubscript:2];
      intValue3 = [v24 intValue];
      v26 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
      v18 = -[VCPCNNFullConnectionBlockGPU shuffleWeights:fromSrc:inputChannels:inputHeight:inputWidth:outputChannels:](self, "shuffleWeights:fromSrc:inputChannels:inputHeight:inputWidth:outputChannels:", weight, v17, intValue, intValue2, intValue3, [v26 intValue]);

      if (!v18)
      {
        MEMORY[0x1CCA95C10](v17, 0x1000C8052888210);
        goto LABEL_3;
      }

      return v18;
    }

    return v13;
  }

  v13 = [(VCPCNNFullConnectionBlock *)self readWeightsBias:weights weights:self->super._weight bias:self->super._bias inputDim:v8 outputDim:v7 quantFactor:v6];
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
    commandBuffer = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
    if (commandBuffer)
    {
      v5 = commandBuffer;
      WeakRetained = objc_loadWeakRetained(&self->super.super._input);
      mpsImg = [WeakRetained mpsImg];
      if (mpsImg)
      {
        mpsImg2 = [(VCPCNNData *)self->super.super._output mpsImg];

        if (mpsImg2)
        {
          mpsFullConn = self->_mpsFullConn;
          commandBuffer2 = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
          v11 = objc_loadWeakRetained(&self->super.super._input);
          mpsImg3 = [v11 mpsImg];
          mpsImg4 = [(VCPCNNData *)self->super.super._output mpsImg];
          [(MPSCNNFullyConnected *)mpsFullConn encodeToCommandBuffer:commandBuffer2 sourceImage:mpsImg3 destinationImage:mpsImg4];

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