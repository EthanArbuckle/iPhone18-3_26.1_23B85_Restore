@interface HKSignedClinicalDataQRSegment
+ (id)segmentFromQRCodeValue:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataQRSegment)init;
- (HKSignedClinicalDataQRSegment)initWithCoder:(id)a3;
- (HKSignedClinicalDataQRSegment)initWithDataValue:(id)a3 sourceType:(int64_t)a4 position:(int64_t)a5 numberOfExpectedSiblings:(int64_t)a6;
- (NSString)fullQRCodeValue;
- (void)encodeWithCoder:(id)a3;
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

- (HKSignedClinicalDataQRSegment)initWithDataValue:(id)a3 sourceType:(int64_t)a4 position:(int64_t)a5 numberOfExpectedSiblings:(int64_t)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = HKSignedClinicalDataQRSegment;
  v11 = [(HKSignedClinicalDataQRSegment *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    dataValue = v11->_dataValue;
    v11->_dataValue = v12;

    v11->_sourceType = a4;
    v11->_position = a5;
    v11->_numberOfExpectedSiblings = a6;
  }

  return v11;
}

+ (id)segmentFromQRCodeValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 length];
  if ([v6 rangeOfString:@"HC1:" options:9 range:{0, v7}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 hasPrefix:@"shc:/"])
    {
      v9 = [v6 componentsSeparatedByString:@"/"];
      if ([v9 count] == 2)
      {
        v10 = [a1 alloc];
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
        v23 = [v22 integerValue];

        if (v23 <= 0)
        {
          v29 = MEMORY[0x277CCA9B8];
          v27 = [v9 objectAtIndexedSubscript:1];
          [v29 hk_assignError:a4 code:3 format:{@"invalid chunk position %@", v27}];
        }

        else
        {
          v24 = [v9 objectAtIndexedSubscript:2];
          v25 = [v24 integerValue];

          if (v25 <= 0)
          {
            v30 = MEMORY[0x277CCA9B8];
            v27 = [v9 objectAtIndexedSubscript:2];
            [v30 hk_assignError:a4 code:3 format:{@"invalid number of chunks %@", v27}];
          }

          else
          {
            if (v23 <= v25)
            {
              v31 = [a1 alloc];
              v11 = [v9 objectAtIndexedSubscript:3];
              v12 = v31;
              v13 = v11;
              v14 = v23;
              v15 = v25;
              goto LABEL_5;
            }

            v26 = MEMORY[0x277CCA9B8];
            v27 = [v9 objectAtIndexedSubscript:1];
            v28 = [v9 objectAtIndexedSubscript:2];
            [v26 hk_assignError:a4 code:3 format:{@"invalid number of chunks %@ for total %@", v27, v28}];
          }
        }
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"invalid QR code segment with %ld segments", objc_msgSend(v9, "count")}];
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

      v9 = [v6 substringToIndex:v20];
      [v19 hk_assignError:a4 code:3 format:{@"unsupported code value starting with %@", v9}];
    }

    v16 = 0;
  }

  else
  {
    v17 = v8;
    v18 = [a1 alloc];
    v9 = [v6 substringFromIndex:v17];
    v16 = [v18 initWithDataValue:v9 sourceType:2 position:1 numberOfExpectedSiblings:1];
  }

LABEL_12:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_17:

      goto LABEL_18;
    }

    dataValue = self->_dataValue;
    v10 = [(HKSignedClinicalDataQRSegment *)v8 dataValue];
    if (dataValue == v10)
    {
      goto LABEL_9;
    }

    v11 = [(HKSignedClinicalDataQRSegment *)v8 dataValue];
    if (!v11)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v3 = v11;
    v12 = self->_dataValue;
    v4 = [(HKSignedClinicalDataQRSegment *)v8 dataValue];
    if ([(NSString *)v12 isEqualToString:v4])
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

      if (dataValue == v10)
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

- (void)encodeWithCoder:(id)a3
{
  dataValue = self->_dataValue;
  v5 = a3;
  [v5 encodeObject:dataValue forKey:@"DataValue"];
  [v5 encodeInteger:self->_sourceType forKey:@"SourceType"];
  [v5 encodeInteger:self->_position forKey:@"Position"];
  [v5 encodeInteger:self->_numberOfExpectedSiblings forKey:@"NumberOfExpectedSiblings"];
}

- (HKSignedClinicalDataQRSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataValue"];
  if (v5 && [v4 containsValueForKey:@"SourceType"] && objc_msgSend(v4, "containsValueForKey:", @"Position") && (objc_msgSend(v4, "containsValueForKey:", @"NumberOfExpectedSiblings") & 1) != 0)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithDataValue:v5 sourceType:objc_msgSend(v4 position:"decodeIntegerForKey:" numberOfExpectedSiblings:{@"SourceType", objc_msgSend(v4, "decodeIntegerForKey:", @"Position", objc_msgSend(v4, "decodeIntegerForKey:", @"NumberOfExpectedSiblings"}];
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

@end