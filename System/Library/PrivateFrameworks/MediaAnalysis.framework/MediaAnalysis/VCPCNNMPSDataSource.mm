@interface VCPCNNMPSDataSource
- (VCPCNNMPSDataSource)initWith:(unsigned int)with convolutionDescriptor:(id)descriptor kernelWeights:(void *)weights biasTerm:(float *)term;
@end

@implementation VCPCNNMPSDataSource

- (VCPCNNMPSDataSource)initWith:(unsigned int)with convolutionDescriptor:(id)descriptor kernelWeights:(void *)weights biasTerm:(float *)term
{
  descriptorCopy = descriptor;
  v15.receiver = self;
  v15.super_class = VCPCNNMPSDataSource;
  v12 = [(VCPCNNMPSDataSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_dataType = with;
    objc_storeStrong(&v12->_descriptor, descriptor);
    v13->_kernelWeights = weights;
    v13->_biasTerms = term;
  }

  return v13;
}

@end