@interface ICASLockedNotesItemData
- (ICASLockedNotesItemData)initWithTotalCountOfV1LockedNotes:(id)notes totalCountOfV2LockedNotes:(id)lockedNotes totalCountOfLockedNotesWithDivergedMode:(id)mode totalCountOfLockedNotesWithDivergedPassword:(id)password;
- (id)toDict;
@end

@implementation ICASLockedNotesItemData

- (ICASLockedNotesItemData)initWithTotalCountOfV1LockedNotes:(id)notes totalCountOfV2LockedNotes:(id)lockedNotes totalCountOfLockedNotesWithDivergedMode:(id)mode totalCountOfLockedNotesWithDivergedPassword:(id)password
{
  notesCopy = notes;
  lockedNotesCopy = lockedNotes;
  modeCopy = mode;
  passwordCopy = password;
  v18.receiver = self;
  v18.super_class = ICASLockedNotesItemData;
  v15 = [(ICASLockedNotesItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_totalCountOfV1LockedNotes, notes);
    objc_storeStrong(&v16->_totalCountOfV2LockedNotes, lockedNotes);
    objc_storeStrong(&v16->_totalCountOfLockedNotesWithDivergedMode, mode);
    objc_storeStrong(&v16->_totalCountOfLockedNotesWithDivergedPassword, password);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"totalCountOfV1LockedNotes";
  totalCountOfV1LockedNotes = [(ICASLockedNotesItemData *)self totalCountOfV1LockedNotes];
  if (totalCountOfV1LockedNotes)
  {
    totalCountOfV1LockedNotes2 = [(ICASLockedNotesItemData *)self totalCountOfV1LockedNotes];
  }

  else
  {
    totalCountOfV1LockedNotes2 = objc_opt_new();
  }

  v5 = totalCountOfV1LockedNotes2;
  v19[0] = totalCountOfV1LockedNotes2;
  v18[1] = @"totalCountOfV2LockedNotes";
  totalCountOfV2LockedNotes = [(ICASLockedNotesItemData *)self totalCountOfV2LockedNotes];
  if (totalCountOfV2LockedNotes)
  {
    totalCountOfV2LockedNotes2 = [(ICASLockedNotesItemData *)self totalCountOfV2LockedNotes];
  }

  else
  {
    totalCountOfV2LockedNotes2 = objc_opt_new();
  }

  v8 = totalCountOfV2LockedNotes2;
  v19[1] = totalCountOfV2LockedNotes2;
  v18[2] = @"totalCountOfLockedNotesWithDivergedMode";
  totalCountOfLockedNotesWithDivergedMode = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedMode];
  if (totalCountOfLockedNotesWithDivergedMode)
  {
    totalCountOfLockedNotesWithDivergedMode2 = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedMode];
  }

  else
  {
    totalCountOfLockedNotesWithDivergedMode2 = objc_opt_new();
  }

  v11 = totalCountOfLockedNotesWithDivergedMode2;
  v19[2] = totalCountOfLockedNotesWithDivergedMode2;
  v18[3] = @"totalCountOfLockedNotesWithDivergedPassword";
  totalCountOfLockedNotesWithDivergedPassword = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedPassword];
  if (totalCountOfLockedNotesWithDivergedPassword)
  {
    totalCountOfLockedNotesWithDivergedPassword2 = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedPassword];
  }

  else
  {
    totalCountOfLockedNotesWithDivergedPassword2 = objc_opt_new();
  }

  v14 = totalCountOfLockedNotesWithDivergedPassword2;
  v19[3] = totalCountOfLockedNotesWithDivergedPassword2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end