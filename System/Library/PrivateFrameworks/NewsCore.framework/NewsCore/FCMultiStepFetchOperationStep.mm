@interface FCMultiStepFetchOperationStep
- (SEL)fetchSelector;
- (void)setFetchSelector:(SEL)selector;
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

- (void)setFetchSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_fetchSelector = selectorCopy;
}

@end