@interface GKEditAction
+ (id)actionWithName:(id)name selector:(SEL)selector;
+ (id)deleteActionWithName:(id)name;
- (SEL)selector;
- (void)setSelector:(SEL)selector;
@end

@implementation GKEditAction

+ (id)actionWithName:(id)name selector:(SEL)selector
{
  nameCopy = name;
  v6 = objc_alloc_init(GKEditAction);
  [(GKEditAction *)v6 setName:nameCopy];

  [(GKEditAction *)v6 setSelector:selector];

  return v6;
}

+ (id)deleteActionWithName:(id)name
{
  v3 = [GKEditAction actionWithName:name selector:sel_swipeToDeleteCell_];
  [v3 setDestructive:1];

  return v3;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end