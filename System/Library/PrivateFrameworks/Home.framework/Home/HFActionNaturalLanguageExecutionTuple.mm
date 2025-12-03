@interface HFActionNaturalLanguageExecutionTuple
+ (id)tuple:(id)tuple second:(id)second third:(id)third;
- (HFActionNaturalLanguageExecutionTuple)initWithFirst:(id)first second:(id)second third:(id)third;
@end

@implementation HFActionNaturalLanguageExecutionTuple

- (HFActionNaturalLanguageExecutionTuple)initWithFirst:(id)first second:(id)second third:(id)third
{
  firstCopy = first;
  secondCopy = second;
  thirdCopy = third;
  v15.receiver = self;
  v15.super_class = HFActionNaturalLanguageExecutionTuple;
  v12 = [(HFActionNaturalLanguageExecutionTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_first, first);
    objc_storeStrong(&v13->_second, second);
    objc_storeStrong(&v13->_third, third);
  }

  return v13;
}

+ (id)tuple:(id)tuple second:(id)second third:(id)third
{
  thirdCopy = third;
  secondCopy = second;
  tupleCopy = tuple;
  v10 = [objc_alloc(objc_opt_class()) initWithFirst:tupleCopy second:secondCopy third:thirdCopy];

  return v10;
}

@end