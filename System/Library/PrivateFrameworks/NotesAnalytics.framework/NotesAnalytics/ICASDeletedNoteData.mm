@interface ICASDeletedNoteData
- (ICASDeletedNoteData)initWithDeletedNoteCount:(id)count;
- (id)toDict;
@end

@implementation ICASDeletedNoteData

- (ICASDeletedNoteData)initWithDeletedNoteCount:(id)count
{
  countCopy = count;
  v9.receiver = self;
  v9.super_class = ICASDeletedNoteData;
  v6 = [(ICASDeletedNoteData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deletedNoteCount, count);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"deletedNoteCount";
  deletedNoteCount = [(ICASDeletedNoteData *)self deletedNoteCount];
  if (deletedNoteCount)
  {
    deletedNoteCount2 = [(ICASDeletedNoteData *)self deletedNoteCount];
  }

  else
  {
    deletedNoteCount2 = objc_opt_new();
  }

  v5 = deletedNoteCount2;
  v10[0] = deletedNoteCount2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end