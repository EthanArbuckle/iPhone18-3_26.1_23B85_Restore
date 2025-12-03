@interface ICASSearchBufferArrayData
- (ICASSearchBufferArrayData)initWithSearchStringLength:(id)length topHitCount:(id)count nonTopHitCount:(id)hitCount isResultSelected:(id)selected nonTopHitRawCount:(id)rawCount attachmentHitCount:(id)attachmentHitCount;
- (id)toDict;
@end

@implementation ICASSearchBufferArrayData

- (ICASSearchBufferArrayData)initWithSearchStringLength:(id)length topHitCount:(id)count nonTopHitCount:(id)hitCount isResultSelected:(id)selected nonTopHitRawCount:(id)rawCount attachmentHitCount:(id)attachmentHitCount
{
  lengthCopy = length;
  countCopy = count;
  hitCountCopy = hitCount;
  selectedCopy = selected;
  rawCountCopy = rawCount;
  attachmentHitCountCopy = attachmentHitCount;
  v24.receiver = self;
  v24.super_class = ICASSearchBufferArrayData;
  v18 = [(ICASSearchBufferArrayData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchStringLength, length);
    objc_storeStrong(&v19->_topHitCount, count);
    objc_storeStrong(&v19->_nonTopHitCount, hitCount);
    objc_storeStrong(&v19->_isResultSelected, selected);
    objc_storeStrong(&v19->_nonTopHitRawCount, rawCount);
    objc_storeStrong(&v19->_attachmentHitCount, attachmentHitCount);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"searchStringLength";
  searchStringLength = [(ICASSearchBufferArrayData *)self searchStringLength];
  if (searchStringLength)
  {
    searchStringLength2 = [(ICASSearchBufferArrayData *)self searchStringLength];
  }

  else
  {
    searchStringLength2 = objc_opt_new();
  }

  v23 = searchStringLength2;
  v26[0] = searchStringLength2;
  v25[1] = @"topHitCount";
  topHitCount = [(ICASSearchBufferArrayData *)self topHitCount];
  if (topHitCount)
  {
    topHitCount2 = [(ICASSearchBufferArrayData *)self topHitCount];
  }

  else
  {
    topHitCount2 = objc_opt_new();
  }

  v5 = topHitCount2;
  v26[1] = topHitCount2;
  v25[2] = @"nonTopHitCount";
  nonTopHitCount = [(ICASSearchBufferArrayData *)self nonTopHitCount];
  if (nonTopHitCount)
  {
    nonTopHitCount2 = [(ICASSearchBufferArrayData *)self nonTopHitCount];
  }

  else
  {
    nonTopHitCount2 = objc_opt_new();
  }

  v8 = nonTopHitCount2;
  v26[2] = nonTopHitCount2;
  v25[3] = @"isResultSelected";
  isResultSelected = [(ICASSearchBufferArrayData *)self isResultSelected];
  if (isResultSelected)
  {
    isResultSelected2 = [(ICASSearchBufferArrayData *)self isResultSelected];
  }

  else
  {
    isResultSelected2 = objc_opt_new();
  }

  v11 = isResultSelected2;
  v26[3] = isResultSelected2;
  v25[4] = @"nonTopHitRawCount";
  nonTopHitRawCount = [(ICASSearchBufferArrayData *)self nonTopHitRawCount];
  if (nonTopHitRawCount)
  {
    nonTopHitRawCount2 = [(ICASSearchBufferArrayData *)self nonTopHitRawCount];
  }

  else
  {
    nonTopHitRawCount2 = objc_opt_new();
  }

  v14 = nonTopHitRawCount2;
  v26[4] = nonTopHitRawCount2;
  v25[5] = @"attachmentHitCount";
  attachmentHitCount = [(ICASSearchBufferArrayData *)self attachmentHitCount];
  if (attachmentHitCount)
  {
    attachmentHitCount2 = [(ICASSearchBufferArrayData *)self attachmentHitCount];
  }

  else
  {
    attachmentHitCount2 = objc_opt_new();
  }

  v17 = attachmentHitCount2;
  v26[5] = attachmentHitCount2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end