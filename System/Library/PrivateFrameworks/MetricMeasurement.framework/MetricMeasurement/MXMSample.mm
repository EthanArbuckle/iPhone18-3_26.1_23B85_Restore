@interface MXMSample
- (MXMSample)initWithCoder:(id)coder;
- (MXMSample)initWithTag:(id)tag attributes:(id)attributes doubleValue:(double)value unit:(id)unit timestamp:(unint64_t)timestamp;
- (NSMeasurement)asMeasurementValue;
- (NSNumber)asNumberValue;
- (NSString)shortDesc;
- (double)floatValue;
- (id)attributeWithName:(id)name;
- (id)convertToUnit:(id)unit;
- (id)description;
- (int64_t)integerValue;
- (unint64_t)unsignedValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMSample

- (NSMeasurement)asMeasurementValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  asNumberValue = [(MXMSample *)self asNumberValue];
  [asNumberValue doubleValue];
  v6 = v5;
  unit = [(MXMSample *)self unit];
  v8 = [v3 initWithDoubleValue:unit unit:v6];

  return v8;
}

- (NSNumber)asNumberValue
{
  valueType = [(MXMSample *)self valueType];
  if (valueType == 2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MXMSample unsignedValue](self, "unsignedValue")}];
  }

  else if (valueType == 1)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MXMSample integerValue](self, "integerValue")}];
  }

  else if (valueType)
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
  unit = [(MXMSample *)self unit];
  symbol = [unit symbol];
  v8 = [v5 stringWithFormat:@"%0.3f %@", v4, symbol];

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

- (id)attributeWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
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
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

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

- (MXMSample)initWithTag:(id)tag attributes:(id)attributes doubleValue:(double)value unit:(id)unit timestamp:(unint64_t)timestamp
{
  tagCopy = tag;
  attributesCopy = attributes;
  valueCopy = value;
  unitCopy = unit;
  v21.receiver = self;
  v21.super_class = MXMSample;
  v16 = [(MXMSample *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_unit, unit);
    objc_storeStrong(&v17->_tag, tag);
    objc_storeStrong(&v17->_attributes, attributes);
    v17->_underlyingValueLength = 8;
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&valueCopy length:8];
    underlyingValue = v17->_underlyingValue;
    v17->_underlyingValue = v18;

    v17->_timestamp = timestamp;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  tag = self->_tag;
  coderCopy = coder;
  [coderCopy encodeObject:tag forKey:@"tag"];
  [coderCopy encodeObject:self->_unit forKey:@"unit"];
  [coderCopy encodeBytes:-[NSData bytes](self->_underlyingValue length:"bytes") forKey:{self->_underlyingValueLength, @"underlyingValue"}];
}

- (MXMSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MXMSample;
  v5 = [(MXMSample *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
    unit = v5->_unit;
    v5->_unit = v8;

    v15 = 0;
    v10 = MEMORY[0x277CBEA90];
    v11 = [coderCopy decodeBytesForKey:@"underlyingValue" returnedLength:&v15];
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
  domainNameString = [(MXMSampleTag *)self->_tag domainNameString];
  [(MXMSample *)self floatValue];
  v8 = v7;
  symbol = [(NSUnit *)self->_unit symbol];
  v10 = [v3 stringWithFormat:@"<%@: %p '%@' %f %@>", v5, self, domainNameString, v8, symbol];

  return v10;
}

- (id)convertToUnit:(id)unit
{
  unitCopy = unit;
  unit = [(MXMSample *)self unit];

  if (unit)
  {
    asMeasurementValue = [(MXMSample *)self asMeasurementValue];
    v7 = [asMeasurementValue measurementByConvertingToUnit:unitCopy];
    v8 = [MXMSample alloc];
    v9 = [(MXMSample *)self tag];
    attributes = [(MXMSample *)self attributes];
    [v7 doubleValue];
    v11 = [(MXMSample *)v8 initWithTag:v9 attributes:attributes doubleValue:unitCopy unit:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end