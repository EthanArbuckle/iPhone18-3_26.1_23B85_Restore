@interface HKSignedClinicalDataQRSegment
+ (id)segmentFromQRCodeValue:(id)value error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataQRSegment)init;
- (HKSignedClinicalDataQRSegment)initWithCoder:(id)coder;
- (HKSignedClinicalDataQRSegment)initWithDataValue:(id)value sourceType:(int64_t)type position:(int64_t)position numberOfExpectedSiblings:(int64_t)siblings;
- (NSString)fullQRCodeValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataQRSegment

- (HKSignedClinicalDataQRSegment)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataQRSegment)initWithDataValue:(id)value sourceType:(int64_t)type position:(int64_t)position numberOfExpectedSiblings:(int64_t)siblings
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = HKSignedClinicalDataQRSegment;
  v11 = [(HKSignedClinicalDataQRSegment *)&v15 init];
  if (v11)
  {
    v12 = [valueCopy copy];
    dataValue = v11->_dataValue;
    v11->_dataValue = v12;

    v11->_sourceType = type;
    v11->_position = position;
    v11->_numberOfExpectedSiblings = siblings;
  }

  return v11;
}

+ (id)segmentFromQRCodeValue:(id)value error:(id *)error
{
  valueCopy = value;
  v7 = [valueCopy length];
  if ([valueCopy rangeOfString:@"HC1:" options:9 range:{0, v7}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([valueCopy hasPrefix:@"shc:/"])
    {
      v9 = [valueCopy componentsSeparatedByString:@"/"];
      if ([v9 count] == 2)
      {
        v10 = [self alloc];
        v11 = [v9 objectAtIndexedSubscript:1];
        v12 = v10;
        v13 = v11;
        v14 = 1;
        v15 = 1;
LABEL_5:
        v16 = [v12 initWithDataValue:v13 sourceType:1 position:v14 numberOfExpectedSiblings:v15];

        goto LABEL_12;
      }

      if ([v9 count] == 4)
      {
        v22 = [v9 objectAtIndexedSubscript:1];
        integerValue = [v22 integerValue];

        if (integerValue <= 0)
        {
          v29 = MEMORY[0x277CCA9B8];
          v27 = [v9 objectAtIndexedSubscript:1];
          [v29 hk_assignError:error code:3 format:{@"invalid chunk position %@", v27}];
        }

        else
        {
          v24 = [v9 objectAtIndexedSubscript:2];
          integerValue2 = [v24 integerValue];

          if (integerValue2 <= 0)
          {
            v30 = MEMORY[0x277CCA9B8];
            v27 = [v9 objectAtIndexedSubscript:2];
            [v30 hk_assignError:error code:3 format:{@"invalid number of chunks %@", v27}];
          }

          else
          {
            if (integerValue <= integerValue2)
            {
              v31 = [self alloc];
              v11 = [v9 objectAtIndexedSubscript:3];
              v12 = v31;
              v13 = v11;
              v14 = integerValue;
              v15 = integerValue2;
              goto LABEL_5;
            }

            v26 = MEMORY[0x277CCA9B8];
            v27 = [v9 objectAtIndexedSubscript:1];
            v28 = [v9 objectAtIndexedSubscript:2];
            [v26 hk_assignError:error code:3 format:{@"invalid number of chunks %@ for total %@", v27, v28}];
          }
        }
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"invalid QR code segment with %ld segments", objc_msgSend(v9, "count")}];
      }
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      if (v7 >= 6)
      {
        v20 = 6;
      }

      else
      {
        v20 = v7;
      }

      v9 = [valueCopy substringToIndex:v20];
      [v19 hk_assignError:error code:3 format:{@"unsupported code value starting with %@", v9}];
    }

    v16 = 0;
  }

  else
  {
    v17 = v8;
    v18 = [self alloc];
    v9 = [valueCopy substringFromIndex:v17];
    v16 = [v18 initWithDataValue:v9 sourceType:2 position:1 numberOfExpectedSiblings:1];
  }

LABEL_12:

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_17:

      goto LABEL_18;
    }

    dataValue = self->_dataValue;
    dataValue = [(HKSignedClinicalDataQRSegment *)v8 dataValue];
    if (dataValue == dataValue)
    {
      goto LABEL_9;
    }

    dataValue2 = [(HKSignedClinicalDataQRSegment *)v8 dataValue];
    if (!dataValue2)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v3 = dataValue2;
    v12 = self->_dataValue;
    dataValue3 = [(HKSignedClinicalDataQRSegment *)v8 dataValue];
    if ([(NSString *)v12 isEqualToString:dataValue3])
    {
LABEL_9:
      sourceType = self->_sourceType;
      if (sourceType == [(HKSignedClinicalDataQRSegment *)v8 sourceType]&& (position = self->_position, position == [(HKSignedClinicalDataQRSegment *)v8 position]))
      {
        numberOfExpectedSiblings = self->_numberOfExpectedSiblings;
        v13 = numberOfExpectedSiblings == [(HKSignedClinicalDataQRSegment *)v8 numberOfExpectedSiblings];
        v14 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      if (dataValue == dataValue)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
LABEL_16:

    goto LABEL_17;
  }

  v14 = 1;
LABEL_18:

  return v14;
}

- (NSString)fullQRCodeValue
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_numberOfExpectedSiblings < 2)
  {
    v5 = prefixStringForSignedClinicalDataSourceType(self->_sourceType);
    v4 = [v3 stringWithFormat:@"%@%@", v5, self->_dataValue];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu/%lu/%@", @"shc:/", self->_position, self->_numberOfExpectedSiblings, self->_dataValue];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  dataValue = self->_dataValue;
  coderCopy = coder;
  [coderCopy encodeObject:dataValue forKey:@"DataValue"];
  [coderCopy encodeInteger:self->_sourceType forKey:@"SourceType"];
  [coderCopy encodeInteger:self->_position forKey:@"Position"];
  [coderCopy encodeInteger:self->_numberOfExpectedSiblings forKey:@"NumberOfExpectedSiblings"];
}

- (HKSignedClinicalDataQRSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataValue"];
  if (v5 && [coderCopy containsValueForKey:@"SourceType"] && objc_msgSend(coderCopy, "containsValueForKey:", @"Position") && (objc_msgSend(coderCopy, "containsValueForKey:", @"NumberOfExpectedSiblings") & 1) != 0)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithDataValue:v5 sourceType:objc_msgSend(coderCopy position:"decodeIntegerForKey:" numberOfExpectedSiblings:{@"SourceType", objc_msgSend(coderCopy, "decodeIntegerForKey:", @"Position", objc_msgSend(coderCopy, "decodeIntegerForKey:", @"NumberOfExpectedSiblings"}];
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

@end