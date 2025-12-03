@interface CATActiveIDSServiceConnectionContentSendData
+ (id)instanceWithDictionary:(id)dictionary;
- (CATActiveIDSServiceConnectionContentSendData)initWithSequenceNumber:(id)number dataNumber:(unint64_t)dataNumber dataSegment:(id)segment segmentRange:(_NSRange)range segmentNumber:(unint64_t)segmentNumber totalSegments:(unint64_t)segments;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveIDSServiceConnectionContentSendData

- (CATActiveIDSServiceConnectionContentSendData)initWithSequenceNumber:(id)number dataNumber:(unint64_t)dataNumber dataSegment:(id)segment segmentRange:(_NSRange)range segmentNumber:(unint64_t)segmentNumber totalSegments:(unint64_t)segments
{
  length = range.length;
  location = range.location;
  numberCopy = number;
  segmentCopy = segment;
  v22.receiver = self;
  v22.super_class = CATActiveIDSServiceConnectionContentSendData;
  v17 = [(CATActiveIDSServiceConnectionContentSendData *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sequenceNumber, number);
    v18->_dataNumber = dataNumber;
    v19 = [segmentCopy copy];
    mUnderlyingDataSegment = v18->mUnderlyingDataSegment;
    v18->mUnderlyingDataSegment = v19;

    v18->_segmentNumber = segmentNumber;
    v18->_totalSegments = segments;
    v18->mSegmentRange.location = location;
    v18->mSegmentRange.length = length;
  }

  return v18;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATActiveIDSServiceConnectionContentSendData dataNumber](self, "dataNumber")}];
  [v3 setObject:v4 forKeyedSubscript:@"DataNumber"];

  dataSegment = [(CATActiveIDSServiceConnectionContentSendData *)self dataSegment];
  v6 = [dataSegment copy];
  [v3 setObject:v6 forKeyedSubscript:@"DataSegment"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATActiveIDSServiceConnectionContentSendData segmentNumber](self, "segmentNumber")}];
  [v3 setObject:v7 forKeyedSubscript:@"SegmentNumber"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATActiveIDSServiceConnectionContentSendData totalSegments](self, "totalSegments")}];
  [v3 setObject:v8 forKeyedSubscript:@"TotalSegments"];

  sequenceNumber = [(CATActiveIDSServiceConnectionContentSendData *)self sequenceNumber];
  [v3 setObject:sequenceNumber forKeyedSubscript:@"SequenceNumber"];

  v10 = [v3 copy];

  return v10;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"DataNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"DataSegment"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"SegmentNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"TotalSegments"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"SequenceNumber"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = 0;
  if (v7 && v10 && v13 && v16)
  {
    v20 = [[self alloc] initWithSequenceNumber:v19 dataNumber:objc_msgSend(v7 dataSegment:"unsignedIntegerValue") segmentRange:v10 segmentNumber:0 totalSegments:{objc_msgSend(v10, "length"), objc_msgSend(v13, "unsignedIntegerValue"), objc_msgSend(v16, "unsignedIntegerValue")}];
  }

  return v20;
}

@end