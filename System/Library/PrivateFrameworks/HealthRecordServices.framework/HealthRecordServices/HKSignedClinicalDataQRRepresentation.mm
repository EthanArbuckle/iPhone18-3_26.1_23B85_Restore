@interface HKSignedClinicalDataQRRepresentation
+ (HKSignedClinicalDataQRRepresentation)representationWithQRSegment:(id)segment;
+ (HKSignedClinicalDataQRRepresentation)representationWithSMARTHealthCardQRSegmentData:(id)data;
+ (id)representationForEUDCCPayloadData:(id)data error:(id *)error;
+ (id)representationForJWSPayload:(id)payload error:(id *)error;
+ (id)representationForJWSPayloadData:(id)data error:(id *)error;
+ (id)representationForRawContent:(id)content sourceType:(int64_t)type error:(id *)error;
- (BOOL)hasAllExpectedSegments;
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataQRRepresentation)init;
- (HKSignedClinicalDataQRRepresentation)initWithCoder:(id)coder;
- (HKSignedClinicalDataQRRepresentation)initWithSourceType:(int64_t)type;
- (NSNumber)expectedNumberOfSegments;
- (id)orderedSegmentsWithError:(id *)error;
- (id)representationByAddingQRSegment:(id)segment error:(id *)error;
- (void)encodeWithCoder:(id)coder;
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

- (HKSignedClinicalDataQRRepresentation)initWithSourceType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = HKSignedClinicalDataQRRepresentation;
  result = [(HKSignedClinicalDataQRRepresentation *)&v5 init];
  if (result)
  {
    result->_sourceType = type;
  }

  return result;
}

+ (HKSignedClinicalDataQRRepresentation)representationWithQRSegment:(id)segment
{
  v11[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (!segmentCopy)
  {
    [(HKSignedClinicalDataQRRepresentation *)a2 representationWithQRSegment:self];
  }

  v6 = [[self alloc] initWithSourceType:{objc_msgSend(segmentCopy, "sourceType")}];
  v11[0] = segmentCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = v6[2];
  v6[2] = v7;

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (HKSignedClinicalDataQRRepresentation)representationWithSMARTHealthCardQRSegmentData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([dataCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [HKSignedClinicalDataQRSegment alloc];
      v8 = [dataCopy objectAtIndexedSubscript:v6];
      v9 = -[HKSignedClinicalDataQRSegment initWithDataValue:sourceType:position:numberOfExpectedSiblings:](v7, "initWithDataValue:sourceType:position:numberOfExpectedSiblings:", v8, 1, ++v6, [dataCopy count]);

      [v5 addObject:v9];
    }

    while (v6 < [dataCopy count]);
  }

  v10 = [[self alloc] initWithSourceType:1];
  v11 = [v5 copy];
  v12 = v10[2];
  v10[2] = v11;

  return v10;
}

- (id)representationByAddingQRSegment:(id)segment error:(id *)error
{
  segmentCopy = segment;
  if (!segmentCopy)
  {
    [HKSignedClinicalDataQRRepresentation representationByAddingQRSegment:a2 error:self];
  }

  if ([segmentCopy sourceType] != self->_sourceType)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"attempting to add a segment with a different source type"];
    selfCopy = 0;
    goto LABEL_15;
  }

  firstObject = [(NSArray *)self->_alreadyScannedSegments firstObject];
  v9 = firstObject;
  if (!firstObject)
  {
    goto LABEL_9;
  }

  numberOfExpectedSiblings = [firstObject numberOfExpectedSiblings];
  if (numberOfExpectedSiblings != [segmentCopy numberOfExpectedSiblings])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:{@"attempting to add a segment with a different number of expected siblings, aborting"}];
    selfCopy = 0;
    goto LABEL_14;
  }

  position = [v9 position];
  if (position != [segmentCopy position])
  {
LABEL_9:
    selfCopy = [objc_alloc(objc_opt_class()) initWithSourceType:self->_sourceType];
    if (self->_alreadyScannedSegments)
    {
      alreadyScannedSegments = self->_alreadyScannedSegments;
    }

    else
    {
      alreadyScannedSegments = MEMORY[0x277CBEBF8];
    }

    v14 = [(NSArray *)alreadyScannedSegments arrayByAddingObject:segmentCopy];
    v15 = selfCopy->_alreadyScannedSegments;
    selfCopy->_alreadyScannedSegments = v14;

    goto LABEL_14;
  }

  selfCopy = self;
LABEL_14:

LABEL_15:

  return selfCopy;
}

- (NSNumber)expectedNumberOfSegments
{
  firstObject = [(NSArray *)self->_alreadyScannedSegments firstObject];
  v3 = firstObject;
  if (firstObject)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "numberOfExpectedSiblings")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasAllExpectedSegments
{
  expectedNumberOfSegments = [(HKSignedClinicalDataQRRepresentation *)self expectedNumberOfSegments];
  v4 = expectedNumberOfSegments;
  if (expectedNumberOfSegments && [expectedNumberOfSegments intValue] >= 1)
  {
    intValue = [v4 intValue];
    v6 = [(NSArray *)self->_alreadyScannedSegments count]== intValue;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)orderedSegmentsWithError:(id *)error
{
  if ([(HKSignedClinicalDataQRRepresentation *)self hasAllExpectedSegments])
  {
    v5 = [(NSArray *)self->_alreadyScannedSegments sortedArrayUsingComparator:&__block_literal_global_4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:118 description:@"not all segments have been scanned yet"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      alreadyScannedSegments = self->_alreadyScannedSegments;
      alreadyScannedSegments = [(HKSignedClinicalDataQRRepresentation *)v6 alreadyScannedSegments];
      if (alreadyScannedSegments == alreadyScannedSegments)
      {
        v12 = 1;
      }

      else
      {
        alreadyScannedSegments2 = [(HKSignedClinicalDataQRRepresentation *)v6 alreadyScannedSegments];
        if (alreadyScannedSegments2)
        {
          v10 = self->_alreadyScannedSegments;
          alreadyScannedSegments3 = [(HKSignedClinicalDataQRRepresentation *)v6 alreadyScannedSegments];
          v12 = [(NSArray *)v10 isEqualToArray:alreadyScannedSegments3];
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

- (void)encodeWithCoder:(id)coder
{
  alreadyScannedSegments = self->_alreadyScannedSegments;
  coderCopy = coder;
  [coderCopy encodeObject:alreadyScannedSegments forKey:@"AlreadyScannedSegments"];
  [coderCopy encodeInteger:self->_sourceType forKey:@"SourceType"];
}

- (HKSignedClinicalDataQRRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"SourceType"])
  {
    v5 = -[HKSignedClinicalDataQRRepresentation initWithSourceType:](self, "initWithSourceType:", [coderCopy decodeIntegerForKey:@"SourceType"]);
    if (!v5)
    {
      selfCopy = 0;
      goto LABEL_6;
    }

    v6 = v5;
    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"AlreadyScannedSegments"];
    alreadyScannedSegments = v6->_alreadyScannedSegments;
    v6->_alreadyScannedSegments = v8;

    self = v6;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

LABEL_6:
  return selfCopy;
}

+ (id)representationForRawContent:(id)content sourceType:(int64_t)type error:(id *)error
{
  contentCopy = content;
  if (type == 2)
  {
    v9 = [self representationForEUDCCPayloadData:contentCopy error:error];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v9 = [self representationForJWSPayloadData:contentCopy error:error];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = NSStringForSignedClinicalDataSourceType();
  [v11 hk_assignError:error code:3 format:{@"source type %@ (%lld) is not supported for QR representation generation", v12, type}];

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)representationForJWSPayloadData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy encoding:4];

  if (v8)
  {
    v9 = [self representationForJWSPayload:v8 error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"failed to convert JWS data to NSString"];
    v9 = 0;
  }

  return v9;
}

+ (id)representationForJWSPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v6 = [payloadCopy length];
  if ([payloadCopy length] < 0x4AC)
  {
    v7 = 2390;
  }

  else
  {
    v7 = (2 * vcvtpd_s64_f64([payloadCopy length] / vcvtpd_s64_f64(v6 / 1191.0)));
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([payloadCopy length])
  {
    errorCopy = error;
    v9 = 0;
    while (1)
    {
      v10 = [payloadCopy rangeOfComposedCharacterSequenceAtIndex:v9];
      v12 = v11;
      if (v11)
      {
        break;
      }

LABEL_13:
      v9 += v12;
      if (v9 >= [payloadCopy length])
      {
        goto LABEL_14;
      }
    }

    v13 = v10;
    v14 = v11;
    while (1)
    {
      v15 = [payloadCopy characterAtIndex:v13];
      if (v15 <= 0x2C)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:3 format:{@"JWS character at index %d cannot be represented an a SMART Health Card QR code because its ASCII value of %0d is below the offset", v9 + v12 + 0xFFFFFFFF, v15}];
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

    [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:3 format:{@"JWS character at index %d cannot be represented an a SMART Health Card QR code because its ASCII value of %0d is unexpectedly high", v9 + v12 + 0xFFFFFFFF, v15}];
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

+ (id)representationForEUDCCPayloadData:(id)data error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v6 = [data hk_zlibCompressedIncludingHeaderAndTrailer:1 errorOut:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    hk_base45Encoded = [v6 hk_base45Encoded];
    if (hk_base45Encoded)
    {
      v10 = [MEMORY[0x277CCAB68] stringWithString:@"HC1:"];
      [v10 appendString:hk_base45Encoded];
      v18[0] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v12 = [HKSignedClinicalDataQRRepresentation representationWithSMARTHealthCardQRSegmentData:v11];

      goto LABEL_7;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"%@: error base45 encoding data", self, v16}];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    hk_base45Encoded = [v7 localizedDescription];
    [v13 hk_assignError:error code:3 format:{@"%@: error zlib compressing data: %@", self, hk_base45Encoded}];
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