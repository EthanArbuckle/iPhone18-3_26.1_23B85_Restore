@interface ICASSessionDetailArrayItemData
- (ICASSessionDetailArrayItemData)initWithSessionType:(id)a3 startTimestamp:(id)a4 endTimestamp:(id)a5 sessionDuration:(id)a6;
- (id)toDict;
@end

@implementation ICASSessionDetailArrayItemData

- (ICASSessionDetailArrayItemData)initWithSessionType:(id)a3 startTimestamp:(id)a4 endTimestamp:(id)a5 sessionDuration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASSessionDetailArrayItemData;
  v15 = [(ICASSessionDetailArrayItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionType, a3);
    objc_storeStrong(&v16->_startTimestamp, a4);
    objc_storeStrong(&v16->_endTimestamp, a5);
    objc_storeStrong(&v16->_sessionDuration, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"sessionType";
  v3 = [(ICASSessionDetailArrayItemData *)self sessionType];
  if (v3)
  {
    v4 = [(ICASSessionDetailArrayItemData *)self sessionType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"startTimestamp";
  v6 = [(ICASSessionDetailArrayItemData *)self startTimestamp];
  if (v6)
  {
    v7 = [(ICASSessionDetailArrayItemData *)self startTimestamp];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"endTimestamp";
  v9 = [(ICASSessionDetailArrayItemData *)self endTimestamp];
  if (v9)
  {
    v10 = [(ICASSessionDetailArrayItemData *)self endTimestamp];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"sessionDuration";
  v12 = [(ICASSessionDetailArrayItemData *)self sessionDuration];
  if (v12)
  {
    v13 = [(ICASSessionDetailArrayItemData *)self sessionDuration];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end