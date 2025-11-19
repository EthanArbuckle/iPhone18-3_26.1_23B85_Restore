@interface VCPCNNBlock
- (NSMutableArray)inputSize;
- (VCPCNNData)input;
@end

@implementation VCPCNNBlock

- (NSMutableArray)inputSize
{
  WeakRetained = objc_loadWeakRetained(&self->_inputSize);

  return WeakRetained;
}

- (VCPCNNData)input
{
  WeakRetained = objc_loadWeakRetained(&self->_input);

  return WeakRetained;
}

@end