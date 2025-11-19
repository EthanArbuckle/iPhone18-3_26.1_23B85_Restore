@interface _HDAggregationStateKey
+ (void)keyForCollector:(void *)a3 device:(void *)a4 aggregator:;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _HDAggregationStateKey

+ (void)keyForCollector:(void *)a3 device:(void *)a4 aggregator:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc_init(objc_opt_self());
  v10 = [v8 identifierForDataAggregator:v6];

  v11 = [v10 copy];
  v12 = v9[1];
  v9[1] = v11;

  v13 = [v7 copy];
  v14 = v9[2];
  v9[2] = v13;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_collectorIdentifier isEqualToString:v4[1]])
  {
    device = self->_device;
    if (device == v4[2])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(HKDevice *)device isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  device = self->_device;
  v4 = [(NSString *)self->_collectorIdentifier hash];
  if (device)
  {
    v4 ^= [(HKDevice *)self->_device hash];
  }

  return v4;
}

@end