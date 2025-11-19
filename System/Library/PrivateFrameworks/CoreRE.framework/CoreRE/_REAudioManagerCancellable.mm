@interface _REAudioManagerCancellable
- (_REAudioManagerCancellable)init;
@end

@implementation _REAudioManagerCancellable

- (_REAudioManagerCancellable)init
{
  v3.receiver = self;
  v3.super_class = _REAudioManagerCancellable;
  result = [(_REAudioManagerCancellable *)&v3 init];
  if (result)
  {
    result->_audioService = 0;
    atomic_store(0, &result->_cancelled);
  }

  return result;
}

@end