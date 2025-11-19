@interface CHRecognizerOptions
- (CHRecognizerOptions)init;
@end

@implementation CHRecognizerOptions

- (CHRecognizerOptions)init
{
  v3.receiver = self;
  v3.super_class = CHRecognizerOptions;
  result = [(CHRecognizerOptions *)&v3 init];
  if (result)
  {
    *&result->_enableCachingIfAvailable = 257;
    result->_enableGen2CharacterLMIfAvailable = 0;
  }

  return result;
}

@end