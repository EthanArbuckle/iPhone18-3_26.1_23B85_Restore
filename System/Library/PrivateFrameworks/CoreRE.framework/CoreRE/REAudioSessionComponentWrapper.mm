@interface REAudioSessionComponentWrapper
- (REAudioSessionComponentWrapper)initWithComponent:(void *)component;
@end

@implementation REAudioSessionComponentWrapper

- (REAudioSessionComponentWrapper)initWithComponent:(void *)component
{
  v5.receiver = self;
  v5.super_class = REAudioSessionComponentWrapper;
  result = [(REAudioSessionComponentWrapper *)&v5 init];
  if (result)
  {
    result->_component = component;
  }

  return result;
}

@end