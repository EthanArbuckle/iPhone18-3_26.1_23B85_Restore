@interface ICASSearchBufferArrayData
- (ICASSearchBufferArrayData)initWithSearchStringLength:(id)a3 topHitCount:(id)a4 nonTopHitCount:(id)a5 isResultSelected:(id)a6 nonTopHitRawCount:(id)a7 attachmentHitCount:(id)a8;
- (id)toDict;
@end

@implementation ICASSearchBufferArrayData

- (ICASSearchBufferArrayData)initWithSearchStringLength:(id)a3 topHitCount:(id)a4 nonTopHitCount:(id)a5 isResultSelected:(id)a6 nonTopHitRawCount:(id)a7 attachmentHitCount:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = ICASSearchBufferArrayData;
  v18 = [(ICASSearchBufferArrayData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchStringLength, a3);
    objc_storeStrong(&v19->_topHitCount, a4);
    objc_storeStrong(&v19->_nonTopHitCount, a5);
    objc_storeStrong(&v19->_isResultSelected, a6);
    objc_storeStrong(&v19->_nonTopHitRawCount, a7);
    objc_storeStrong(&v19->_attachmentHitCount, a8);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"searchStringLength";
  v24 = [(ICASSearchBufferArrayData *)self searchStringLength];
  if (v24)
  {
    v3 = [(ICASSearchBufferArrayData *)self searchStringLength];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v23 = v3;
  v26[0] = v3;
  v25[1] = @"topHitCount";
  v21 = [(ICASSearchBufferArrayData *)self topHitCount];
  if (v21)
  {
    v4 = [(ICASSearchBufferArrayData *)self topHitCount];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v26[1] = v4;
  v25[2] = @"nonTopHitCount";
  v6 = [(ICASSearchBufferArrayData *)self nonTopHitCount];
  if (v6)
  {
    v7 = [(ICASSearchBufferArrayData *)self nonTopHitCount];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v26[2] = v7;
  v25[3] = @"isResultSelected";
  v9 = [(ICASSearchBufferArrayData *)self isResultSelected];
  if (v9)
  {
    v10 = [(ICASSearchBufferArrayData *)self isResultSelected];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v26[3] = v10;
  v25[4] = @"nonTopHitRawCount";
  v12 = [(ICASSearchBufferArrayData *)self nonTopHitRawCount];
  if (v12)
  {
    v13 = [(ICASSearchBufferArrayData *)self nonTopHitRawCount];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v26[4] = v13;
  v25[5] = @"attachmentHitCount";
  v15 = [(ICASSearchBufferArrayData *)self attachmentHitCount];
  if (v15)
  {
    v16 = [(ICASSearchBufferArrayData *)self attachmentHitCount];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;
  v26[5] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end