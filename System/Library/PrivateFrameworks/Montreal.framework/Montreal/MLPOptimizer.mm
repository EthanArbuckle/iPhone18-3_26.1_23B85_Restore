@interface MLPOptimizer
+ (id)optimizerWithNetwork:(id)network momentum:(id)momentum velocity:(id)velocity;
- (MLPNetwork)network;
- (MLPOptimizer)initWithNetwork:(id)network mpsOptimizer:(id)optimizer;
- (void)encodeToCommandBuffer:(id)buffer inputGradientMatrix:(id)matrix inputValuesMatrix:(id)valuesMatrix;
- (void)encodeToCommandBuffer:(id)buffer inputGradientVector:(id)vector inputValuesVector:(id)valuesVector;
@end

@implementation MLPOptimizer

+ (id)optimizerWithNetwork:(id)network momentum:(id)momentum velocity:(id)velocity
{
  networkCopy = network;
  momentumCopy = momentum;
  velocityCopy = velocity;
  v13 = objc_msgSend_optimizerParams(networkCopy, v10, v11, v12);
  v17 = objc_msgSend_optimizerType(v13, v14, v15, v16);

  if (v17 == 1)
  {
    v18 = [MLPOptimizerAdam alloc];
    v20 = objc_msgSend_initWithNetwork_momentum_velocity_(v18, v19, networkCopy, momentumCopy, velocityCopy);
  }

  else
  {
    v21 = [MLPOptimizerSGD alloc];
    v20 = objc_msgSend_initWithNetwork_momentum_(v21, v22, networkCopy, momentumCopy);
  }

  v23 = v20;

  return v23;
}

- (MLPOptimizer)initWithNetwork:(id)network mpsOptimizer:(id)optimizer
{
  networkCopy = network;
  optimizerCopy = optimizer;
  v11.receiver = self;
  v11.super_class = MLPOptimizer;
  v8 = [(MLPOptimizer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_network, networkCopy);
    objc_storeStrong(&v9->_mpsOptimizer, optimizer);
  }

  return v9;
}

- (void)encodeToCommandBuffer:(id)buffer inputGradientVector:(id)vector inputValuesVector:(id)valuesVector
{
  bufferCopy = buffer;
  vectorCopy = vector;
  valuesVectorCopy = valuesVector;
  v11 = MEMORY[0x1E695DF30];
  v12 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(a2);
  v16 = objc_msgSend_stringWithFormat_(v12, v14, @"%@ not implemented in a subclass", v15, v13);
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x1E695D930], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)encodeToCommandBuffer:(id)buffer inputGradientMatrix:(id)matrix inputValuesMatrix:(id)valuesMatrix
{
  bufferCopy = buffer;
  matrixCopy = matrix;
  valuesMatrixCopy = valuesMatrix;
  v13 = objc_msgSend_network(self, v10, v11, v12);
  v17 = objc_msgSend_deviceHandler(v13, v14, v15, v16);
  v20 = objc_msgSend_matrixToVector_(v17, v18, matrixCopy, v19);
  v24 = objc_msgSend_network(self, v21, v22, v23);
  v28 = objc_msgSend_deviceHandler(v24, v25, v26, v27);
  v31 = objc_msgSend_matrixToVector_(v28, v29, valuesMatrixCopy, v30);
  objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_(self, v32, bufferCopy, v20, v31);

  objc_msgSend_resetReadCount(matrixCopy, v33, v34, v35);
}

- (MLPNetwork)network
{
  WeakRetained = objc_loadWeakRetained(&self->_network);

  return WeakRetained;
}

@end