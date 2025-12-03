@interface CDMNLUPreprocessResponseCommand
- (CDMNLUPreprocessResponseCommand)initWithPreprocessingWrapper:(id)wrapper;
@end

@implementation CDMNLUPreprocessResponseCommand

- (CDMNLUPreprocessResponseCommand)initWithPreprocessingWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = CDMNLUPreprocessResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preprocessingWrapper, wrapper);
  }

  return v7;
}

@end