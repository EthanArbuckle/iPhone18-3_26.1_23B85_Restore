@interface DIIOIterator
- (unsigned)copyNextObject;
@end

@implementation DIIOIterator

- (unsigned)copyNextObject
{
  for (i = self; ; self = i)
  {
    result = IOIteratorNext([(DIIOObject *)self ioObj]);
    if (result)
    {
      break;
    }

    if (IOIteratorIsValid([(DIIOObject *)i ioObj]))
    {
      return 0;
    }

    IOIteratorReset([(DIIOObject *)i ioObj]);
    [(DIIOIterator *)i setStartedOver:1];
  }

  return result;
}

@end