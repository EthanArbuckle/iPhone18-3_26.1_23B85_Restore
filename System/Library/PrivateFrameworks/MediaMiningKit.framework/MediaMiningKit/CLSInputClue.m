@interface CLSInputClue
- (CLSInputClue)init;
- (void)prepareIfNeeded;
@end

@implementation CLSInputClue

- (void)prepareIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_needsPreparation)
  {
    [(CLSInputClue *)obj _prepareWithProgressBlock:0];
    obj->_needsPreparation = 0;
  }

  objc_sync_exit(obj);
}

- (CLSInputClue)init
{
  v3.receiver = self;
  v3.super_class = CLSInputClue;
  result = [(CLSClue *)&v3 init];
  if (result)
  {
    result->_needsPreparation = 1;
  }

  return result;
}

@end