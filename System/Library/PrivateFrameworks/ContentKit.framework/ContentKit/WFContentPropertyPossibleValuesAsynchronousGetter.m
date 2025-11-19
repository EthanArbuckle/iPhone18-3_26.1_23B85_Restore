@interface WFContentPropertyPossibleValuesAsynchronousGetter
- (NSString)description;
- (WFContentPropertyPossibleValuesAsynchronousGetter)initWithAsynchronousGetter:(id)a3;
- (void)getValuesWithCompletionBlock:(id)a3;
@end

@implementation WFContentPropertyPossibleValuesAsynchronousGetter

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _Block_copy(self->_getter);
  v7 = [v3 stringWithFormat:@"<%@ %p> asynchronous getter with block %@", v5, self, v6];

  return v7;
}

- (void)getValuesWithCompletionBlock:(id)a3
{
  v4 = a3;
  getter = self->_getter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__WFContentPropertyPossibleValuesAsynchronousGetter_getValuesWithCompletionBlock___block_invoke;
  v8[3] = &unk_278347F28;
  v9 = v4;
  v6 = getter[2];
  v7 = v4;
  v6(getter, v8);
}

- (WFContentPropertyPossibleValuesAsynchronousGetter)initWithAsynchronousGetter:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFContentPropertyPossibleValuesAsynchronousGetter;
  v5 = [(WFContentPropertyPossibleValuesAsynchronousGetter *)&v10 init];
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