@interface VCPCNNMPSDataSource
- (VCPCNNMPSDataSource)initWith:(unsigned int)a3 convolutionDescriptor:(id)a4 kernelWeights:(void *)a5 biasTerm:(float *)a6;
@end

@implementation VCPCNNMPSDataSource

- (VCPCNNMPSDataSource)initWith:(unsigned int)a3 convolutionDescriptor:(id)a4 kernelWeights:(void *)a5 biasTerm:(float *)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = VCPCNNMPSDataSource;
  v12 = [(VCPCNNMPSDataSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_dataType = a3;
    objc_storeStrong(&v12->_descriptor, a4);
    v13->_kernelWeights = a5;
    v13->_biasTerms = a6;
  }

  return v13;
}

@end