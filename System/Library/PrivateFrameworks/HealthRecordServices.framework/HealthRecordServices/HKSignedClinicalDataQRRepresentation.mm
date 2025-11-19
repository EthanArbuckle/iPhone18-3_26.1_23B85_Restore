@interface HKSignedClinicalDataQRRepresentation
+ (HKSignedClinicalDataQRRepresentation)representationWithQRSegment:(id)a3;
+ (HKSignedClinicalDataQRRepresentation)representationWithSMARTHealthCardQRSegmentData:(id)a3;
+ (id)representationForEUDCCPayloadData:(id)a3 error:(id *)a4;
+ (id)representationForJWSPayload:(id)a3 error:(id *)a4;
+ (id)representationForJWSPayloadData:(id)a3 error:(id *)a4;
+ (id)representationForRawContent:(id)a3 sourceType:(int64_t)a4 error:(id *)a5;
- (BOOL)hasAllExpectedSegments;
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataQRRepresentation)init;
- (HKSignedClinicalDataQRRepresentation)initWithCoder:(id)a3;
- (HKSignedClinicalDataQRRepresentation)initWithSourceType:(int64_t)a3;
- (NSNumber)expectedNumberOfSegments;
- (id)orderedSegmentsWithError:(id *)a3;
- (id)representationByAddingQRSegment:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataQRRepresentation

- (HKSignedClinicalDataQRRepresentation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataQRRepresentation)initWithSourceType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKSignedClinicalDataQRRepresentation;
  result = [(HKSignedClinicalDataQRRepresentation *)&v5 init];
  if (result)
  {
    result->_sourceType = a3;
  }

  return result;
}

+ (HKSignedClinicalDataQRRepresentation)representationWithQRSegment:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(HKSignedClinicalDataQRRepresentation *)a2 representationWithQRSegment:a1];
  }

  v6 = [[a1 alloc] initWithSourceType:{objc_msgSend(v5, "sourceType")}];
  v11[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = v6[2];
  v6[2] = v7;

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (HKSignedClinicalDataQRRepresentation)representationWithSMARTHealthCardQRSegmentData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = [HKSignedClinicalDataQRSegment alloc];
      v8 = [v4 objectAtIndexedSubscript:v6];
      v9 = -[HKSignedClinicalDataQRSegment initWithDataValue:sourceType:position:numberOfExpectedSiblings:](v7, "initWithDataValue:sourceType:position:numberOfExpectedSiblings:", v8, 1, ++v6, [v4 count]);

      [v5 addObject:v9];
    }

    while (v6 < [v4 count]);
  }

  v10 = [[a1 alloc] initWithSourceType:1];
  v11 = [v5 copy];
  v12 = v10[2];
  v10[2] = v11;

  return v10;
}

- (id)representationByAddingQRSegment:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    [HKSignedClinicalDataQRRepresentation representationByAddingQRSegment:a2 error:self];
  }

  if ([v7 sourceType] != self->_sourceType)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"attempting to add a segment with a different source type"];
    v12 = 0;
    goto LABEL_15;
  }

  v8 = [(NSArray *)self->_alreadyScannedSegments firstObject];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = [v8 numberOfExpectedSiblings];
  if (v10 != [v7 numberOfExpectedSiblings])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:{@"attempting to add a segment with a different number of expected siblings, aborting"}];
    v12 = 0;
    goto LABEL_14;
  }

  v11 = [v9 position];
  if (v11 != [v7 position])
  {
LABEL_9:
    v12 = [objc_alloc(objc_opt_class()) initWithSourceType:self->_sourceType];
    if (self->_alreadyScannedSegments)
    {
      alreadyScannedSegments = self->_alreadyScannedSegments;
    }

    else
    {
      alreadyScannedSegments = MEMORY[0x277CBEBF8];
    }

    v14 = [(NSArray *)alreadyScannedSegments arrayByAddingObject:v7];
    v15 = v12->_alreadyScannedSegments;
    v12->_alreadyScannedSegments = v14;

    goto LABEL_14;
  }

  v12 = self;
LABEL_14:

LABEL_15:

  return v12;
}

- (NSNumber)expectedNumberOfSegments
{
  v2 = [(NSArray *)self->_alreadyScannedSegments firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "numberOfExpectedSiblings")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasAllExpectedSegments
{
  v3 = [(HKSignedClinicalDataQRRepresentation *)self expectedNumberOfSegments];
  v4 = v3;
  if (v3 && [v3 intValue] >= 1)
  {
    v5 = [v4 intValue];
    v6 = [(NSArray *)self->_alreadyScannedSegments count]== v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)orderedSegmentsWithError:(id *)a3
{
  if ([(HKSignedClinicalDataQRRepresentation *)self hasAllExpectedSegments])
  {
    v5 = [(NSArray *)self->_alreadyScannedSegments sortedArrayUsingComparator:&__block_literal_global_4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:118 description:@"not all segments have been scanned yet"];
    v5 = 0;
  }

  return v5;
}

uint64_t __65__HKSignedClinicalDataQRRepresentation_orderedSegmentsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 position];
  if (v6 >= [v5 position])
  {
    v8 = [v4 position];
    v7 = v8 > [v5 position];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      alreadyScannedSegments = self->_alreadyScannedSegments;
      v8 = [(HKSignedClinicalDataQRRepresentation *)v6 alreadyScannedSegments];
      if (alreadyScannedSegments == v8)
      {
        v12 = 1;
      }

      else
      {
        v9 = [(HKSignedClinicalDataQRRepresentation *)v6 alreadyScannedSegments];
        if (v9)
        {
          v10 = self->_alreadyScannedSegments;
          v11 = [(HKSignedClinicalDataQRRepresentation *)v6 alreadyScannedSegments];
          v12 = [(NSArray *)v10 isEqualToArray:v11];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  alreadyScannedSegments = self->_alreadyScannedSegments;
  v5 = a3;
  [v5 encodeObject:alreadyScannedSegments forKey:@"AlreadyScannedSegments"];
  [v5 encodeInteger:self->_sourceType forKey:@"SourceType"];
}

- (HKSignedClinicalDataQRRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"SourceType"])
  {
    v5 = -[HKSignedClinicalDataQRRepresentation initWithSourceType:](self, "initWithSourceType:", [v4 decodeIntegerForKey:@"SourceType"]);
    if (!v5)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v6 = v5;
    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"AlreadyScannedSegments"];
    alreadyScannedSegments = v6->_alreadyScannedSegments;
    v6->_alreadyScannedSegments = v8;

    self = v6;
    v10 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

LABEL_6:
  return v10;
}

+ (id)representationForRawContent:(id)a3 sourceType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a4 == 2)
  {
    v9 = [a1 representationForEUDCCPayloadData:v8 error:a5];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v9 = [a1 representationForJWSPayloadData:v8 error:a5];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = NSStringForSignedClinicalDataSourceType();
  [v11 hk_assignError:a5 code:3 format:{@"source type %@ (%lld) is not supported for QR representation generation", v12, a4}];

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)representationForJWSPayloadData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7 encoding:4];

  if (v8)
  {
    v9 = [a1 representationForJWSPayload:v8 error:a4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"failed to convert JWS data to NSString"];
    v9 = 0;
  }

  return v9;
}

+ (id)representationForJWSPayload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 length];
  if ([v5 length] < 0x4AC)
  {
    v7 = 2390;
  }

  else
  {
    v7 = (2 * vcvtpd_s64_f64([v5 length] / vcvtpd_s64_f64(v6 / 1191.0)));
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v5 length])
  {
    v23 = a4;
    v9 = 0;
    while (1)
    {
      v10 = [v5 rangeOfComposedCharacterSequenceAtIndex:v9];
      v12 = v11;
      if (v11)
      {
        break;
      }

LABEL_13:
      v9 += v12;
      if (v9 >= [v5 length])
      {
        goto LABEL_14;
      }
    }

    v13 = v10;
    v14 = v11;
    while (1)
    {
      v15 = [v5 characterAtIndex:v13];
      if (v15 <= 0x2C)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:v23 code:3 format:{@"JWS character at index %d cannot be represented an a SMART Health Card QR code because its ASCII value of %0d is below the offset", v9 + v12 + 0xFFFFFFFF, v15}];
        goto LABEL_19;
      }

      v16 = v15 - 45;
      if ((v15 - 45) >= 0x64)
      {
        break;
      }

      if ([v8 length] >= v7)
      {
        v17 = [v8 copy];
        [v24 addObject:v17];

        v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
        v8 = v18;
      }

      [v8 appendFormat:@"%02d", v16];
      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    [MEMORY[0x277CCA9B8] hk_assignError:v23 code:3 format:{@"JWS character at index %d cannot be represented an a SMART Health Card QR code because its ASCII value of %0d is unexpectedly high", v9 + v12 + 0xFFFFFFFF, v15}];
LABEL_19:
    v21 = 0;
    v19 = v24;
  }

  else
  {
LABEL_14:
    v19 = v24;
    if ([v8 length])
    {
      v20 = [v8 copy];
      [v24 addObject:v20];
    }

    v21 = [HKSignedClinicalDataQRRepresentation representationWithSMARTHealthCardQRSegmentData:v24];
  }

  return v21;
}

+ (id)representationForEUDCCPayloadData:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v6 = [a3 hk_zlibCompressedIncludingHeaderAndTrailer:1 errorOut:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 hk_base45Encoded];
    if (v9)
    {
      v10 = [MEMORY[0x277CCAB68] stringWithString:@"HC1:"];
      [v10 appendString:v9];
      v18[0] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v12 = [HKSignedClinicalDataQRRepresentation representationWithSMARTHealthCardQRSegmentData:v11];

      goto LABEL_7;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"%@: error base45 encoding data", a1, v16}];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v9 = [v7 localizedDescription];
    [v13 hk_assignError:a4 code:3 format:{@"%@: error zlib compressing data: %@", a1, v9}];
  }

  v12 = 0;
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)representationWithQRSegment:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSignedClinicalDataQRRepresentation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"segment"}];
}

- (void)representationByAddingQRSegment:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSignedClinicalDataQRRepresentation.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"segment"}];
}

@end