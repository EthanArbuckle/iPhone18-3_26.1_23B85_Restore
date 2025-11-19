@interface _MFSharedBufferedDataConsumer
- (void)_reallyDone;
@end

@implementation _MFSharedBufferedDataConsumer

- (void)_reallyDone
{
  v2.receiver = self;
  v2.super_class = _MFSharedBufferedDataConsumer;
  [(MFBufferedDataConsumer *)&v2 done];
}

@end