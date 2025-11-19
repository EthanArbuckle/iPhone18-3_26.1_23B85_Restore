@interface CATActiveIDSServiceConnectionContentSendData
+ (id)instanceWithDictionary:(id)a3;
- (CATActiveIDSServiceConnectionContentSendData)initWithSequenceNumber:(id)a3 dataNumber:(unint64_t)a4 dataSegment:(id)a5 segmentRange:(_NSRange)a6 segmentNumber:(unint64_t)a7 totalSegments:(unint64_t)a8;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveIDSServiceConnectionContentSendData

- (CATActiveIDSServiceConnectionContentSendData)initWithSequenceNumber:(id)a3 dataNumber:(unint64_t)a4 dataSegment:(id)a5 segmentRange:(_NSRange)a6 segmentNumber:(unint64_t)a7 totalSegments:(unint64_t)a8
{
  length = a6.length;
  location = a6.location;
  v15 = a3;
  v16 = a5;
  v22.receiver = self;
  v22.super_class = CATActiveIDSServiceConnectionContentSendData;
  v17 = [(CATActiveIDSServiceConnectionContentSendData *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sequenceNumber, a3);
    v18->_dataNumber = a4;
    v19 = [v16 copy];
    mUnderlyingDataSegment = v18->mUnderlyingDataSegment;
    v18->mUnderlyingDataSegment = v19;

    v18->_segmentNumber = a7;
    v18->_totalSegments = a8;
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

  v5 = [(CATActiveIDSServiceConnectionContentSendData *)self dataSegment];
  v6 = [v5 copy];
  [v3 setObject:v6 forKeyedSubscript:@"DataSegment"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATActiveIDSServiceConnectionContentSendData segmentNumber](self, "segmentNumber")}];
  [v3 setObject:v7 forKeyedSubscript:@"SegmentNumber"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATActiveIDSServiceConnectionContentSendData totalSegments](self, "totalSegments")}];
  [v3 setObject:v8 forKeyedSubscript:@"TotalSegments"];

  v9 = [(CATActiveIDSServiceConnectionContentSendData *)self sequenceNumber];
  [v3 setObject:v9 forKeyedSubscript:@"SequenceNumber"];

  v10 = [v3 copy];

  return v10;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"DataNumber"];
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

  v8 = [v4 objectForKeyedSubscript:@"DataSegment"];
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

  v11 = [v4 objectForKeyedSubscript:@"SegmentNumber"];
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

  v14 = [v4 objectForKeyedSubscript:@"TotalSegments"];
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

  v17 = [v4 objectForKeyedSubscript:@"SequenceNumber"];

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
    v20 = [[a1 alloc] initWithSequenceNumber:v19 dataNumber:objc_msgSend(v7 dataSegment:"unsignedIntegerValue") segmentRange:v10 segmentNumber:0 totalSegments:{objc_msgSend(v10, "length"), objc_msgSend(v13, "unsignedIntegerValue"), objc_msgSend(v16, "unsignedIntegerValue")}];
  }

  return v20;
}

@end