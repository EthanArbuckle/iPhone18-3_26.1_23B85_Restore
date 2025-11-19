@interface CVNLPCaptionModelBase
- (CVNLPCaptionModelBase)initWithOptions:(id)a3 runTimeParams:(id)a4;
@end

@implementation CVNLPCaptionModelBase

- (CVNLPCaptionModelBase)initWithOptions:(id)a3 runTimeParams:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CVNLPCaptionModelBase;
  v8 = [(CVNLPModelBase *)&v11 initWithOptions:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_runTimeParams, a4);
  }

  return v9;
}

@end