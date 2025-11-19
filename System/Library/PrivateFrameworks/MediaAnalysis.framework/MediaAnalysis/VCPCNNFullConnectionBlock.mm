@interface VCPCNNFullConnectionBlock
+ (id)fcBlockWithNumNeurons:(int)a3 NeuronType:(int)a4;
- (VCPCNNFullConnectionBlock)initWithParameters:(int)a3 NeuronType:(int)a4;
- (int)constructBlock:(id)a3 context:(id)a4;
- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4;
- (int)readWeightsBias:(__sFILE *)a3 weights:(float *)a4 bias:(float *)a5 inputDim:(int)a6 outputDim:(int)a7 quantFactor:(int)a8;
- (void)dealloc;
@end

@implementation VCPCNNFullConnectionBlock

+ (id)fcBlockWithNumNeurons:(int)a3 NeuronType:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  +[VCPCNNMetalContext supportGPU];
  v6 = [objc_alloc(objc_opt_class()) initWithParameters:v5 NeuronType:v4];

  return v6;
}

- (VCPCNNFullConnectionBlock)initWithParameters:(int)a3 NeuronType:(int)a4
{
  if (a3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VCPCNNFullConnectionBlock;
    v6 = [(VCPCNNFullConnectionBlock *)&v9 init];
    if (v6)
    {
      v6->_numNeurons = a3;
      v6->_weight = 0;
      v6->_bias = 0;
      v6->_neuronType = a4;
      v6->super._executedOnGPU = 0;
    }

    self = v6;
    v7 = self;
  }

  return v7;
}

- (void)dealloc
{
  weight = self->_weight;
  if (weight)
  {
    MEMORY[0x1CCA95C10](weight, 0x1000C8052888210);
  }

  bias = self->_bias;
  if (bias)
  {
    MEMORY[0x1CCA95C10](bias, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = VCPCNNFullConnectionBlock;
  [(VCPCNNFullConnectionBlock *)&v5 dealloc];
}

- (int)constructBlock:(id)a3 context:(id)a4
{
  v7 = a4;
  objc_storeStrong(&self->super._context, a4);
  v8 = a3;
  objc_storeWeak(&self->super._inputSize, v8);

  v9 = [VCPCNNData cnnDataWithGPUContext:self->super._context];
  output = self->super._output;
  self->super._output = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outputSize = self->super._outputSize;
  self->super._outputSize = v11;

  if (self->super._output && (v13 = self->super._outputSize) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_numNeurons];
    [(NSMutableArray *)v13 addObject:v14];

    [(VCPCNNData *)self->super._output setSize:self->super._outputSize];
    v15 = [(VCPCNNData *)self->super._output allocBuffers:self->super._generateOutput];
  }

  else
  {
    v15 = -108;
  }

  return v15;
}

- (int)readWeightsBias:(__sFILE *)a3 weights:(float *)a4 bias:(float *)a5 inputDim:(int)a6 outputDim:(int)a7 quantFactor:(int)a8
{
  if (!a8)
  {
    operator new[]();
  }

  if (a8 != 1)
  {
    return -50;
  }

  if (fread(a4, 4uLL, a7 * a6, a3) && fread(a5, 4uLL, a7, a3))
  {
    return 0;
  }

  return -19;
}

- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4
{
  if (a4 != 1)
  {
    return -50;
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._inputSize);
    v9 = [WeakRetained count];

    if (v9 <= v6)
    {
      break;
    }

    v10 = objc_loadWeakRetained(&self->super._inputSize);
    v11 = [v10 objectAtIndexedSubscript:v6];
    v7 = [v11 intValue] * v7;

    ++v6;
  }

  v12 = [(NSMutableArray *)self->super._outputSize objectAtIndexedSubscript:0];
  v13 = [v12 intValue];

  if (self->_weight || self->_bias)
  {
    return -50;
  }

  if (v13 * v7 < 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = 4 * v13 * v7;
  }

  v16 = MEMORY[0x1E69E5398];
  self->_weight = operator new[](v15, MEMORY[0x1E69E5398]);
  if (v13 < 0)
  {
    v17 = -1;
  }

  else
  {
    v17 = 4 * v13;
  }

  v18 = operator new[](v17, v16);
  self->_bias = v18;
  result = -108;
  if (self->_weight && v18)
  {

    return [(VCPCNNFullConnectionBlock *)self loadWeights:a3 inputDim:v7 outputDim:v13 quantFactor:1];
  }

  return result;
}

@end