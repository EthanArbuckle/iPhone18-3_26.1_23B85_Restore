@interface ICASFindInNoteData
- (ICASFindInNoteData)initWithWasSearchQueryEntered:(id)entered;
- (id)toDict;
@end

@implementation ICASFindInNoteData

- (ICASFindInNoteData)initWithWasSearchQueryEntered:(id)entered
{
  enteredCopy = entered;
  v9.receiver = self;
  v9.super_class = ICASFindInNoteData;
  v6 = [(ICASFindInNoteData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wasSearchQueryEntered, entered);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"wasSearchQueryEntered";
  wasSearchQueryEntered = [(ICASFindInNoteData *)self wasSearchQueryEntered];
  if (wasSearchQueryEntered)
  {
    wasSearchQueryEntered2 = [(ICASFindInNoteData *)self wasSearchQueryEntered];
  }

  else
  {
    wasSearchQueryEntered2 = objc_opt_new();
  }

  v5 = wasSearchQueryEntered2;
  v10[0] = wasSearchQueryEntered2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end