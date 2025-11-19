@interface SBImageAnalysisServer
- (SBImageAnalysisServer)init;
@end

@implementation SBImageAnalysisServer

- (SBImageAnalysisServer)init
{
  v6.receiver = self;
  v6.super_class = SBImageAnalysisServer;
  v2 = [(SBImageAnalysisServer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    analyzer = v2->_analyzer;
    v2->_analyzer = v3;
  }

  return v2;
}

@end