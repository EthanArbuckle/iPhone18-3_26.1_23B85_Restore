@interface CDMNLUPreprocessResponseCommand
- (CDMNLUPreprocessResponseCommand)initWithPreprocessingWrapper:(id)a3;
@end

@implementation CDMNLUPreprocessResponseCommand

- (CDMNLUPreprocessResponseCommand)initWithPreprocessingWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMNLUPreprocessResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preprocessingWrapper, a3);
  }

  return v7;
}

@end