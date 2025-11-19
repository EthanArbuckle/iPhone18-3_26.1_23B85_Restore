@interface ICASLockedNotesItemData
- (ICASLockedNotesItemData)initWithTotalCountOfV1LockedNotes:(id)a3 totalCountOfV2LockedNotes:(id)a4 totalCountOfLockedNotesWithDivergedMode:(id)a5 totalCountOfLockedNotesWithDivergedPassword:(id)a6;
- (id)toDict;
@end

@implementation ICASLockedNotesItemData

- (ICASLockedNotesItemData)initWithTotalCountOfV1LockedNotes:(id)a3 totalCountOfV2LockedNotes:(id)a4 totalCountOfLockedNotesWithDivergedMode:(id)a5 totalCountOfLockedNotesWithDivergedPassword:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASLockedNotesItemData;
  v15 = [(ICASLockedNotesItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_totalCountOfV1LockedNotes, a3);
    objc_storeStrong(&v16->_totalCountOfV2LockedNotes, a4);
    objc_storeStrong(&v16->_totalCountOfLockedNotesWithDivergedMode, a5);
    objc_storeStrong(&v16->_totalCountOfLockedNotesWithDivergedPassword, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"totalCountOfV1LockedNotes";
  v3 = [(ICASLockedNotesItemData *)self totalCountOfV1LockedNotes];
  if (v3)
  {
    v4 = [(ICASLockedNotesItemData *)self totalCountOfV1LockedNotes];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"totalCountOfV2LockedNotes";
  v6 = [(ICASLockedNotesItemData *)self totalCountOfV2LockedNotes];
  if (v6)
  {
    v7 = [(ICASLockedNotesItemData *)self totalCountOfV2LockedNotes];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"totalCountOfLockedNotesWithDivergedMode";
  v9 = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedMode];
  if (v9)
  {
    v10 = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedMode];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"totalCountOfLockedNotesWithDivergedPassword";
  v12 = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedPassword];
  if (v12)
  {
    v13 = [(ICASLockedNotesItemData *)self totalCountOfLockedNotesWithDivergedPassword];
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