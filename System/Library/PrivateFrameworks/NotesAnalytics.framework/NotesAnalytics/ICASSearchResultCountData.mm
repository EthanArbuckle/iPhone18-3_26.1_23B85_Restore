@interface ICASSearchResultCountData
- (ICASSearchResultCountData)initWithTopHitCount:(id)count notesCount:(id)notesCount attachmentsCount:(id)attachmentsCount;
- (id)toDict;
@end

@implementation ICASSearchResultCountData

- (ICASSearchResultCountData)initWithTopHitCount:(id)count notesCount:(id)notesCount attachmentsCount:(id)attachmentsCount
{
  countCopy = count;
  notesCountCopy = notesCount;
  attachmentsCountCopy = attachmentsCount;
  v15.receiver = self;
  v15.super_class = ICASSearchResultCountData;
  v12 = [(ICASSearchResultCountData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topHitCount, count);
    objc_storeStrong(&v13->_notesCount, notesCount);
    objc_storeStrong(&v13->_attachmentsCount, attachmentsCount);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"topHitCount";
  topHitCount = [(ICASSearchResultCountData *)self topHitCount];
  if (topHitCount)
  {
    topHitCount2 = [(ICASSearchResultCountData *)self topHitCount];
  }

  else
  {
    topHitCount2 = objc_opt_new();
  }

  v5 = topHitCount2;
  v16[0] = topHitCount2;
  v15[1] = @"notesCount";
  notesCount = [(ICASSearchResultCountData *)self notesCount];
  if (notesCount)
  {
    notesCount2 = [(ICASSearchResultCountData *)self notesCount];
  }

  else
  {
    notesCount2 = objc_opt_new();
  }

  v8 = notesCount2;
  v16[1] = notesCount2;
  v15[2] = @"attachmentsCount";
  attachmentsCount = [(ICASSearchResultCountData *)self attachmentsCount];
  if (attachmentsCount)
  {
    attachmentsCount2 = [(ICASSearchResultCountData *)self attachmentsCount];
  }

  else
  {
    attachmentsCount2 = objc_opt_new();
  }

  v11 = attachmentsCount2;
  v16[2] = attachmentsCount2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end