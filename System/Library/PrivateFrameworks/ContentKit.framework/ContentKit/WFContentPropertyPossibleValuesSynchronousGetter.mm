@interface WFContentPropertyPossibleValuesSynchronousGetter
- (NSString)description;
- (WFContentPropertyPossibleValuesSynchronousGetter)initWithSynchronousGetter:(id)a3;
- (void)getValuesWithCompletionBlock:(id)a3;
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

- (void)getValuesWithCompletionBlock:(id)a3
{
  getter = self->_getter;
  v5 = getter[2];
  v6 = a3;
  v7 = v5(getter);
  (*(a3 + 2))(v6, v7);
}

- (WFContentPropertyPossibleValuesSynchronousGetter)initWithSynchronousGetter:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFContentPropertyPossibleValuesSynchronousGetter;
  v5 = [(WFContentPropertyPossibleValuesSynchronousGetter *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    getter = v5->_getter;
    v5->_getter = v6;

    v8 = v5;
  }

  return v5;
}

@end