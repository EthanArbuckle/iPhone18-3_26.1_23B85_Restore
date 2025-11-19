@interface MTChange
- (MTChange)initWithProperty:(id)a3 changedValue:(id)a4 originalValue:(id)a5;
@end

@implementation MTChange

- (MTChange)initWithProperty:(id)a3 changedValue:(id)a4 originalValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MTChange;
  v11 = [(MTChange *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    property = v11->_property;
    v11->_property = v12;

    objc_storeStrong(&v11->_changedValue, a4);
    objc_storeStrong(&v11->_originalValue, a5);
  }

  return v11;
}

@end