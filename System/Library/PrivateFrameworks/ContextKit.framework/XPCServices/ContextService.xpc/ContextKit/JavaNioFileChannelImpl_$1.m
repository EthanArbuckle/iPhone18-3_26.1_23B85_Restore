@interface JavaNioFileChannelImpl_$1
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation JavaNioFileChannelImpl_$1

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v5 = [a3 position], !a4))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [a4 position];
  if (v6 >= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 > v7)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

@end