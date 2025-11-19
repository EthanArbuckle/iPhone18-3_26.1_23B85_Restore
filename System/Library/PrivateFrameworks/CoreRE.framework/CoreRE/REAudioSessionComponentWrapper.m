@interface REAudioSessionComponentWrapper
- (REAudioSessionComponentWrapper)initWithComponent:(void *)a3;
@end

@implementation REAudioSessionComponentWrapper

- (REAudioSessionComponentWrapper)initWithComponent:(void *)a3
{
  v5.receiver = self;
  v5.super_class = REAudioSessionComponentWrapper;
  result = [(REAudioSessionComponentWrapper *)&v5 init];
  if (result)
  {
    result->_component = a3;
  }

  return result;
}

@end