@interface ICASSearchResultCountData
- (ICASSearchResultCountData)initWithTopHitCount:(id)a3 notesCount:(id)a4 attachmentsCount:(id)a5;
- (id)toDict;
@end

@implementation ICASSearchResultCountData

- (ICASSearchResultCountData)initWithTopHitCount:(id)a3 notesCount:(id)a4 attachmentsCount:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASSearchResultCountData;
  v12 = [(ICASSearchResultCountData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topHitCount, a3);
    objc_storeStrong(&v13->_notesCount, a4);
    objc_storeStrong(&v13->_attachmentsCount, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"topHitCount";
  v3 = [(ICASSearchResultCountData *)self topHitCount];
  if (v3)
  {
    v4 = [(ICASSearchResultCountData *)self topHitCount];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"notesCount";
  v6 = [(ICASSearchResultCountData *)self notesCount];
  if (v6)
  {
    v7 = [(ICASSearchResultCountData *)self notesCount];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"attachmentsCount";
  v9 = [(ICASSearchResultCountData *)self attachmentsCount];
  if (v9)
  {
    v10 = [(ICASSearchResultCountData *)self attachmentsCount];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end