@interface OCCancel
- (OCCancel)init;
@end

@implementation OCCancel

- (OCCancel)init
{
  v3.receiver = self;
  v3.super_class = OCCancel;
  result = [(OCCancel *)&v3 init];
  if (result)
  {
    *&result->mIsCancelled = 0;
  }

  return result;
}

@end