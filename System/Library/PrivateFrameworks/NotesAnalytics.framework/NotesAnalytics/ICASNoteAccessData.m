@interface ICASNoteAccessData
- (ICASNoteAccessData)initWithIsPasswordProtected:(id)a3 isPinned:(id)a4 collaborationStatus:(id)a5 collaborationType:(id)a6;
- (id)toDict;
@end

@implementation ICASNoteAccessData

- (ICASNoteAccessData)initWithIsPasswordProtected:(id)a3 isPinned:(id)a4 collaborationStatus:(id)a5 collaborationType:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASNoteAccessData;
  v15 = [(ICASNoteAccessData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_isPasswordProtected, a3);
    objc_storeStrong(&v16->_isPinned, a4);
    objc_storeStrong(&v16->_collaborationStatus, a5);
    objc_storeStrong(&v16->_collaborationType, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"isPasswordProtected";
  v3 = [(ICASNoteAccessData *)self isPasswordProtected];
  if (v3)
  {
    v4 = [(ICASNoteAccessData *)self isPasswordProtected];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"isPinned";
  v6 = [(ICASNoteAccessData *)self isPinned];
  if (v6)
  {
    v7 = [(ICASNoteAccessData *)self isPinned];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"collaborationStatus";
  v9 = [(ICASNoteAccessData *)self collaborationStatus];
  if (v9)
  {
    v10 = [(ICASNoteAccessData *)self collaborationStatus];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"collaborationType";
  v12 = [(ICASNoteAccessData *)self collaborationType];
  if (v12)
  {
    v13 = [(ICASNoteAccessData *)self collaborationType];
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