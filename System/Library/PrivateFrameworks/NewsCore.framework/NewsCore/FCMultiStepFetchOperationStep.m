@interface FCMultiStepFetchOperationStep
- (SEL)fetchSelector;
- (void)setFetchSelector:(SEL)a3;
@end

@implementation FCMultiStepFetchOperationStep

- (SEL)fetchSelector
{
  if (self->_fetchSelector)
  {
    return self->_fetchSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setFetchSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_fetchSelector = v3;
}

@end