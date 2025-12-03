@interface WFContentPropertyPossibleValuesSynchronousGetter
- (NSString)description;
- (WFContentPropertyPossibleValuesSynchronousGetter)initWithSynchronousGetter:(id)getter;
- (void)getValuesWithCompletionBlock:(id)block;
@end

@implementation WFContentPropertyPossibleValuesSynchronousGetter

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _Block_copy(self->_getter);
  v7 = [v3 stringWithFormat:@"<%@ %p> synchronous getter with block %@", v5, self, v6];

  return v7;
}

- (void)getValuesWithCompletionBlock:(id)block
{
  getter = self->_getter;
  v5 = getter[2];
  blockCopy = block;
  v7 = v5(getter);
  (*(block + 2))(blockCopy, v7);
}

- (WFContentPropertyPossibleValuesSynchronousGetter)initWithSynchronousGetter:(id)getter
{
  getterCopy = getter;
  v10.receiver = self;
  v10.super_class = WFContentPropertyPossibleValuesSynchronousGetter;
  v5 = [(WFContentPropertyPossibleValuesSynchronousGetter *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(getterCopy);
    getter = v5->_getter;
    v5->_getter = v6;

    v8 = v5;
  }

  return v5;
}

@end