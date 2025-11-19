@interface MXMSample
- (MXMSample)initWithCoder:(id)a3;
- (MXMSample)initWithTag:(id)a3 attributes:(id)a4 doubleValue:(double)a5 unit:(id)a6 timestamp:(unint64_t)a7;
- (NSMeasurement)asMeasurementValue;
- (NSNumber)asNumberValue;
- (NSString)shortDesc;
- (double)floatValue;
- (id)attributeWithName:(id)a3;
- (id)convertToUnit:(id)a3;
- (id)description;
- (int64_t)integerValue;
- (unint64_t)unsignedValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMSample

- (NSMeasurement)asMeasurementValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  v4 = [(MXMSample *)self asNumberValue];
  [v4 doubleValue];
  v6 = v5;
  v7 = [(MXMSample *)self unit];
  v8 = [v3 initWithDoubleValue:v7 unit:v6];

  return v8;
}

- (NSNumber)asNumberValue
{
  v3 = [(MXMSample *)self valueType];
  if (v3 == 2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MXMSample unsignedValue](self, "unsignedValue")}];
  }

  else if (v3 == 1)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MXMSample integerValue](self, "integerValue")}];
  }

  else if (v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CCABB0];
    [(MXMSample *)self floatValue];
    v5 = [v4 numberWithDouble:?];
  }

  return v5;
}

- (NSString)shortDesc
{
  [(MXMSample *)self floatValue];
  v4 = v3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(MXMSample *)self unit];
  v7 = [v6 symbol];
  v8 = [v5 stringWithFormat:@"%0.3f %@", v4, v7];

  return v8;
}

- (double)floatValue
{
  result = 0.0;
  if (self->_underlyingValueLength >= 8)
  {
    return *[(NSData *)self->_underlyingValue bytes:0.0];
  }

  return result;
}

- (int64_t)integerValue
{
  if (self->_underlyingValueLength >= 8)
  {
    return *[(NSData *)self->_underlyingValue bytes:v2];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)unsignedValue
{
  if (self->_underlyingValueLength >= 8)
  {
    return *[(NSData *)self->_underlyingValue bytes:v2];
  }

  else
  {
    return 0;
  }
}

- (id)attributeWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_attributes;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (MXMSample)initWithTag:(id)a3 attributes:(id)a4 doubleValue:(double)a5 unit:(id)a6 timestamp:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v22 = a5;
  v15 = a6;
  v21.receiver = self;
  v21.super_class = MXMSample;
  v16 = [(MXMSample *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_unit, a6);
    objc_storeStrong(&v17->_tag, a3);
    objc_storeStrong(&v17->_attributes, a4);
    v17->_underlyingValueLength = 8;
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v22 length:8];
    underlyingValue = v17->_underlyingValue;
    v17->_underlyingValue = v18;

    v17->_timestamp = a7;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  tag = self->_tag;
  v5 = a3;
  [v5 encodeObject:tag forKey:@"tag"];
  [v5 encodeObject:self->_unit forKey:@"unit"];
  [v5 encodeBytes:-[NSData bytes](self->_underlyingValue length:"bytes") forKey:{self->_underlyingValueLength, @"underlyingValue"}];
}

- (MXMSample)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MXMSample;
  v5 = [(MXMSample *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
    unit = v5->_unit;
    v5->_unit = v8;

    v15 = 0;
    v10 = MEMORY[0x277CBEA90];
    v11 = [v4 decodeBytesForKey:@"underlyingValue" returnedLength:&v15];
    v12 = [v10 dataWithBytes:v11 length:v15];
    underlyingValue = v5->_underlyingValue;
    v5->_underlyingValue = v12;

    v5->_underlyingValueLength = v15;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MXMSampleTag *)self->_tag domainNameString];
  [(MXMSample *)self floatValue];
  v8 = v7;
  v9 = [(NSUnit *)self->_unit symbol];
  v10 = [v3 stringWithFormat:@"<%@: %p '%@' %f %@>", v5, self, v6, v8, v9];

  return v10;
}

- (id)convertToUnit:(id)a3
{
  v4 = a3;
  v5 = [(MXMSample *)self unit];

  if (v5)
  {
    v6 = [(MXMSample *)self asMeasurementValue];
    v7 = [v6 measurementByConvertingToUnit:v4];
    v8 = [MXMSample alloc];
    v9 = [(MXMSample *)self tag];
    v10 = [(MXMSample *)self attributes];
    [v7 doubleValue];
    v11 = [(MXMSample *)v8 initWithTag:v9 attributes:v10 doubleValue:v4 unit:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end