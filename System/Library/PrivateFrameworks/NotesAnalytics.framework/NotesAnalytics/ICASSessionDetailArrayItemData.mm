@interface ICASSessionDetailArrayItemData
- (ICASSessionDetailArrayItemData)initWithSessionType:(id)type startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp sessionDuration:(id)duration;
- (id)toDict;
@end

@implementation ICASSessionDetailArrayItemData

- (ICASSessionDetailArrayItemData)initWithSessionType:(id)type startTimestamp:(id)timestamp endTimestamp:(id)endTimestamp sessionDuration:(id)duration
{
  typeCopy = type;
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  durationCopy = duration;
  v18.receiver = self;
  v18.super_class = ICASSessionDetailArrayItemData;
  v15 = [(ICASSessionDetailArrayItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionType, type);
    objc_storeStrong(&v16->_startTimestamp, timestamp);
    objc_storeStrong(&v16->_endTimestamp, endTimestamp);
    objc_storeStrong(&v16->_sessionDuration, duration);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"sessionType";
  sessionType = [(ICASSessionDetailArrayItemData *)self sessionType];
  if (sessionType)
  {
    sessionType2 = [(ICASSessionDetailArrayItemData *)self sessionType];
  }

  else
  {
    sessionType2 = objc_opt_new();
  }

  v5 = sessionType2;
  v19[0] = sessionType2;
  v18[1] = @"startTimestamp";
  startTimestamp = [(ICASSessionDetailArrayItemData *)self startTimestamp];
  if (startTimestamp)
  {
    startTimestamp2 = [(ICASSessionDetailArrayItemData *)self startTimestamp];
  }

  else
  {
    startTimestamp2 = objc_opt_new();
  }

  v8 = startTimestamp2;
  v19[1] = startTimestamp2;
  v18[2] = @"endTimestamp";
  endTimestamp = [(ICASSessionDetailArrayItemData *)self endTimestamp];
  if (endTimestamp)
  {
    endTimestamp2 = [(ICASSessionDetailArrayItemData *)self endTimestamp];
  }

  else
  {
    endTimestamp2 = objc_opt_new();
  }

  v11 = endTimestamp2;
  v19[2] = endTimestamp2;
  v18[3] = @"sessionDuration";
  sessionDuration = [(ICASSessionDetailArrayItemData *)self sessionDuration];
  if (sessionDuration)
  {
    sessionDuration2 = [(ICASSessionDetailArrayItemData *)self sessionDuration];
  }

  else
  {
    sessionDuration2 = objc_opt_new();
  }

  v14 = sessionDuration2;
  v19[3] = sessionDuration2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end