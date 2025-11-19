@interface HFActionNaturalLanguageExecutionTuple
+ (id)tuple:(id)a3 second:(id)a4 third:(id)a5;
- (HFActionNaturalLanguageExecutionTuple)initWithFirst:(id)a3 second:(id)a4 third:(id)a5;
@end

@implementation HFActionNaturalLanguageExecutionTuple

- (HFActionNaturalLanguageExecutionTuple)initWithFirst:(id)a3 second:(id)a4 third:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFActionNaturalLanguageExecutionTuple;
  v12 = [(HFActionNaturalLanguageExecutionTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_first, a3);
    objc_storeStrong(&v13->_second, a4);
    objc_storeStrong(&v13->_third, a5);
  }

  return v13;
}

+ (id)tuple:(id)a3 second:(id)a4 third:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithFirst:v9 second:v8 third:v7];

  return v10;
}

@end