@interface ICASSmartFoldersItemData
- (ICASSmartFoldersItemData)initWithTotalCountOfSmartFoldersWithTagsFilter:(id)a3 totalCountOfSmartFoldersWithDateCreatedFilter:(id)a4 totalCountOfSmartFoldersWithDateModifiedFilter:(id)a5 totalCountOfSmartFoldersWithSharedFilter:(id)a6 totalCountOfSmartFoldersWithMentionsFilter:(id)a7 totalCountOfSmartFoldersWithChecklistsFilter:(id)a8 totalCountOfSmartFoldersWithAttachmentsFilter:(id)a9 totalCountOfSmartFoldersWithFoldersFilter:(id)a10 totalCountOfSmartFoldersWithQuickNotesFilter:(id)a11 totalCountOfSmartFoldersWithPinnedNotesFilter:(id)a12 totalCountOfSmartFoldersWithLockedNotesFilter:(id)a13 totalCountOfSmartFoldersWithUnknownFilter:(id)a14;
- (id)toDict;
@end

@implementation ICASSmartFoldersItemData

- (ICASSmartFoldersItemData)initWithTotalCountOfSmartFoldersWithTagsFilter:(id)a3 totalCountOfSmartFoldersWithDateCreatedFilter:(id)a4 totalCountOfSmartFoldersWithDateModifiedFilter:(id)a5 totalCountOfSmartFoldersWithSharedFilter:(id)a6 totalCountOfSmartFoldersWithMentionsFilter:(id)a7 totalCountOfSmartFoldersWithChecklistsFilter:(id)a8 totalCountOfSmartFoldersWithAttachmentsFilter:(id)a9 totalCountOfSmartFoldersWithFoldersFilter:(id)a10 totalCountOfSmartFoldersWithQuickNotesFilter:(id)a11 totalCountOfSmartFoldersWithPinnedNotesFilter:(id)a12 totalCountOfSmartFoldersWithLockedNotesFilter:(id)a13 totalCountOfSmartFoldersWithUnknownFilter:(id)a14
{
  v37 = a3;
  v28 = a4;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v29 = a7;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v38.receiver = self;
  v38.super_class = ICASSmartFoldersItemData;
  v24 = [(ICASSmartFoldersItemData *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_totalCountOfSmartFoldersWithTagsFilter, a3);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithDateCreatedFilter, v28);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithDateModifiedFilter, a5);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithSharedFilter, a6);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithMentionsFilter, v29);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithChecklistsFilter, a8);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithAttachmentsFilter, a9);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithFoldersFilter, a10);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithQuickNotesFilter, a11);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithPinnedNotesFilter, a12);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithLockedNotesFilter, a13);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithUnknownFilter, a14);
  }

  return v25;
}

- (id)toDict
{
  v43[12] = *MEMORY[0x277D85DE8];
  v42[0] = @"totalCountOfSmartFoldersWithTagsFilter";
  v41 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithTagsFilter];
  if (v41)
  {
    v3 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithTagsFilter];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v40 = v3;
  v43[0] = v3;
  v42[1] = @"totalCountOfSmartFoldersWithDateCreatedFilter";
  v39 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateCreatedFilter];
  if (v39)
  {
    v4 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateCreatedFilter];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v38 = v4;
  v43[1] = v4;
  v42[2] = @"totalCountOfSmartFoldersWithDateModifiedFilter";
  v37 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateModifiedFilter];
  if (v37)
  {
    v5 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateModifiedFilter];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v36 = v5;
  v43[2] = v5;
  v42[3] = @"totalCountOfSmartFoldersWithSharedFilter";
  v35 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithSharedFilter];
  if (v35)
  {
    v6 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithSharedFilter];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v34 = v6;
  v43[3] = v6;
  v42[4] = @"totalCountOfSmartFoldersWithMentionsFilter";
  v33 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithMentionsFilter];
  if (v33)
  {
    v7 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithMentionsFilter];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v32 = v7;
  v43[4] = v7;
  v42[5] = @"totalCountOfSmartFoldersWithChecklistsFilter";
  v31 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithChecklistsFilter];
  if (v31)
  {
    v8 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithChecklistsFilter];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v30 = v8;
  v43[5] = v8;
  v42[6] = @"totalCountOfSmartFoldersWithAttachmentsFilter";
  v29 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithAttachmentsFilter];
  if (v29)
  {
    v9 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithAttachmentsFilter];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v28 = v9;
  v43[6] = v9;
  v42[7] = @"totalCountOfSmartFoldersWithFoldersFilter";
  v27 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithFoldersFilter];
  if (v27)
  {
    v10 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithFoldersFilter];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v43[7] = v10;
  v42[8] = @"totalCountOfSmartFoldersWithQuickNotesFilter";
  v12 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithQuickNotesFilter];
  if (v12)
  {
    v13 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithQuickNotesFilter];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v43[8] = v13;
  v42[9] = @"totalCountOfSmartFoldersWithPinnedNotesFilter";
  v15 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithPinnedNotesFilter];
  if (v15)
  {
    v16 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithPinnedNotesFilter];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;
  v43[9] = v16;
  v42[10] = @"totalCountOfSmartFoldersWithLockedNotesFilter";
  v18 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithLockedNotesFilter];
  if (v18)
  {
    v19 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithLockedNotesFilter];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  v43[10] = v19;
  v42[11] = @"totalCountOfSmartFoldersWithUnknownFilter";
  v21 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithUnknownFilter];
  if (v21)
  {
    v22 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithUnknownFilter];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;
  v43[11] = v22;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:12];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end