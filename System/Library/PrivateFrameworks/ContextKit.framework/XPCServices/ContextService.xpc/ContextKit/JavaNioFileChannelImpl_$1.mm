@interface JavaNioFileChannelImpl_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation JavaNioFileChannelImpl_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || (v5 = [id position], !withId))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  position = [withId position];
  if (v6 >= position)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 > position)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

@end