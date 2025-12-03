@interface ICASNoteEditorCallOutBarData
- (ICASNoteEditorCallOutBarData)initWithNoteEditorCallOutBarButtonType:(id)type;
- (id)toDict;
@end

@implementation ICASNoteEditorCallOutBarData

- (ICASNoteEditorCallOutBarData)initWithNoteEditorCallOutBarButtonType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASNoteEditorCallOutBarData;
  v6 = [(ICASNoteEditorCallOutBarData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteEditorCallOutBarButtonType, type);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"noteEditorCallOutBarButtonType";
  noteEditorCallOutBarButtonType = [(ICASNoteEditorCallOutBarData *)self noteEditorCallOutBarButtonType];
  if (noteEditorCallOutBarButtonType)
  {
    noteEditorCallOutBarButtonType2 = [(ICASNoteEditorCallOutBarData *)self noteEditorCallOutBarButtonType];
  }

  else
  {
    noteEditorCallOutBarButtonType2 = objc_opt_new();
  }

  v5 = noteEditorCallOutBarButtonType2;
  v10[0] = noteEditorCallOutBarButtonType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end