@interface CVNLPCaptionModelBase
- (CVNLPCaptionModelBase)initWithOptions:(id)options runTimeParams:(id)params;
@end

@implementation CVNLPCaptionModelBase

- (CVNLPCaptionModelBase)initWithOptions:(id)options runTimeParams:(id)params
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = CVNLPCaptionModelBase;
  v8 = [(CVNLPModelBase *)&v11 initWithOptions:options];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_runTimeParams, params);
  }

  return v9;
}

@end