@interface LCFFeatureValue
- (LCFFeatureValue)initWithBoolValue:(id)a3;
- (LCFFeatureValue)initWithDoubleArray:(id)a3;
- (LCFFeatureValue)initWithDoubleValue:(id)a3;
- (LCFFeatureValue)initWithIntValue:(id)a3;
- (LCFFeatureValue)initWithStringValue:(id)a3;
- (LCFFeatureValue)initWithTimeBucketValue:(id)a3;
- (NSString)valueInString;
- (id)getTypeDBString;
- (id)initEmpty;
@end

@implementation LCFFeatureValue

- (id)initEmpty
{
  v3.receiver = self;
  v3.super_class = LCFFeatureValue;
  result = [(LCFFeatureValue *)&v3 init];
  if (result)
  {
    *(result + 1) = -1;
  }

  return result;
}

- (LCFFeatureValue)initWithIntValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LCFFeatureValue;
  v6 = [(LCFFeatureValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_intValue, a3);
  }

  return v7;
}

- (LCFFeatureValue)initWithDoubleValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LCFFeatureValue;
  v6 = [(LCFFeatureValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_doubleValue, a3);
  }

  return v7;
}

- (LCFFeatureValue)initWithStringValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LCFFeatureValue;
  v6 = [(LCFFeatureValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_stringValue, a3);
  }

  return v7;
}

- (LCFFeatureValue)initWithBoolValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LCFFeatureValue;
  v6 = [(LCFFeatureValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_BOOLValue, a3);
  }

  return v7;
}

- (LCFFeatureValue)initWithTimeBucketValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LCFFeatureValue;
  v6 = [(LCFFeatureValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 5;
    objc_storeStrong(&v6->_timeBucketValue, a3);
  }

  return v7;
}

- (LCFFeatureValue)initWithDoubleArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LCFFeatureValue;
  v6 = [(LCFFeatureValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 6;
    objc_storeStrong(&v6->_doubleArray, a3);
  }

  return v7;
}

- (NSString)valueInString
{
  v2 = 0;
  type = self->_type;
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        intValue = self->_intValue;
        break;
      case 2:
        intValue = self->_doubleValue;
        break;
      case 3:
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", self->_stringValue];
        goto LABEL_16;
      default:
        goto LABEL_17;
    }

LABEL_15:
    v4 = [(NSNumber *)intValue stringValue];
LABEL_16:
    v2 = v4;
    goto LABEL_17;
  }

  switch(type)
  {
    case 4:
      intValue = self->_BOOLValue;
      goto LABEL_15;
    case 5:
      intValue = self->_timeBucketValue;
      goto LABEL_15;
    case 6:
      doubleArray = self->_doubleArray;
      if (doubleArray)
      {
        v10 = 0;
        v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:doubleArray options:0 error:&v10];
        v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
        v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v7];
      }

      else
      {
        v2 = 0;
      }

      break;
  }

LABEL_17:

  return v2;
}

- (id)getTypeDBString
{
  v2 = self->_type - 1;
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return off_279815DD8[v2];
  }
}

@end