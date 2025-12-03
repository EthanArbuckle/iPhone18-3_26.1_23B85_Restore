@interface VCPCNNFullConnectionBlock
+ (id)fcBlockWithNumNeurons:(int)neurons NeuronType:(int)type;
- (VCPCNNFullConnectionBlock)initWithParameters:(int)parameters NeuronType:(int)type;
- (int)constructBlock:(id)block context:(id)context;
- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor;
- (int)readWeightsBias:(__sFILE *)bias weights:(float *)weights bias:(float *)a5 inputDim:(int)dim outputDim:(int)outputDim quantFactor:(int)factor;
- (void)dealloc;
@end

@implementation VCPCNNFullConnectionBlock

+ (id)fcBlockWithNumNeurons:(int)neurons NeuronType:(int)type
{
  v4 = *&type;
  v5 = *&neurons;
  +[VCPCNNMetalContext supportGPU];
  v6 = [objc_alloc(objc_opt_class()) initWithParameters:v5 NeuronType:v4];

  return v6;
}

- (VCPCNNFullConnectionBlock)initWithParameters:(int)parameters NeuronType:(int)type
{
  if (parameters < 1)
  {
    selfCopy = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VCPCNNFullConnectionBlock;
    v6 = [(VCPCNNFullConnectionBlock *)&v9 init];
    if (v6)
    {
      v6->_numNeurons = parameters;
      v6->_weight = 0;
      v6->_bias = 0;
      v6->_neuronType = type;
      v6->super._executedOnGPU = 0;
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
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

- (int)constructBlock:(id)block context:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->super._context, context);
  blockCopy = block;
  objc_storeWeak(&self->super._inputSize, blockCopy);

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

- (int)readWeightsBias:(__sFILE *)bias weights:(float *)weights bias:(float *)a5 inputDim:(int)dim outputDim:(int)outputDim quantFactor:(int)factor
{
  if (!factor)
  {
    operator new[]();
  }

  if (factor != 1)
  {
    return -50;
  }

  if (fread(weights, 4uLL, outputDim * dim, bias) && fread(a5, 4uLL, outputDim, bias))
  {
    return 0;
  }

  return -19;
}

- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor
{
  if (factor != 1)
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
  intValue = [v12 intValue];

  if (self->_weight || self->_bias)
  {
    return -50;
  }

  if (intValue * v7 < 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = 4 * intValue * v7;
  }

  v16 = MEMORY[0x1E69E5398];
  self->_weight = operator new[](v15, MEMORY[0x1E69E5398]);
  if (intValue < 0)
  {
    v17 = -1;
  }

  else
  {
    v17 = 4 * intValue;
  }

  v18 = operator new[](v17, v16);
  self->_bias = v18;
  result = -108;
  if (self->_weight && v18)
  {

    return [(VCPCNNFullConnectionBlock *)self loadWeights:disk inputDim:v7 outputDim:intValue quantFactor:1];
  }

  return result;
}

@end