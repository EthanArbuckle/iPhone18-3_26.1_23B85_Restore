@interface _HDAggregationStateKey
+ (void)keyForCollector:(void *)collector device:(void *)device aggregator:;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _HDAggregationStateKey

+ (void)keyForCollector:(void *)collector device:(void *)device aggregator:
{
  deviceCopy = device;
  collectorCopy = collector;
  v8 = a2;
  v9 = objc_alloc_init(objc_opt_self());
  v10 = [v8 identifierForDataAggregator:deviceCopy];

  v11 = [v10 copy];
  v12 = v9[1];
  v9[1] = v11;

  v13 = [collectorCopy copy];
  v14 = v9[2];
  v9[2] = v13;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_collectorIdentifier isEqualToString:equalCopy[1]])
  {
    device = self->_device;
    if (device == equalCopy[2])
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