@interface ICASNoteSelectionData
- (ICASNoteSelectionData)initWithNoteIDs:(id)ds;
- (id)toDict;
@end

@implementation ICASNoteSelectionData

- (ICASNoteSelectionData)initWithNoteIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = ICASNoteSelectionData;
  v6 = [(ICASNoteSelectionData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteIDs, ds);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"noteIDs";
  noteIDs = [(ICASNoteSelectionData *)self noteIDs];
  if (noteIDs)
  {
    noteIDs2 = [(ICASNoteSelectionData *)self noteIDs];
  }

  else
  {
    noteIDs2 = objc_opt_new();
  }

  v5 = noteIDs2;
  v10[0] = noteIDs2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end