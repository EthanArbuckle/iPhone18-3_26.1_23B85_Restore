@interface ICASSmartFoldersItemData
- (ICASSmartFoldersItemData)initWithTotalCountOfSmartFoldersWithTagsFilter:(id)filter totalCountOfSmartFoldersWithDateCreatedFilter:(id)createdFilter totalCountOfSmartFoldersWithDateModifiedFilter:(id)modifiedFilter totalCountOfSmartFoldersWithSharedFilter:(id)sharedFilter totalCountOfSmartFoldersWithMentionsFilter:(id)mentionsFilter totalCountOfSmartFoldersWithChecklistsFilter:(id)checklistsFilter totalCountOfSmartFoldersWithAttachmentsFilter:(id)attachmentsFilter totalCountOfSmartFoldersWithFoldersFilter:(id)self0 totalCountOfSmartFoldersWithQuickNotesFilter:(id)self1 totalCountOfSmartFoldersWithPinnedNotesFilter:(id)self2 totalCountOfSmartFoldersWithLockedNotesFilter:(id)self3 totalCountOfSmartFoldersWithUnknownFilter:(id)self4;
- (id)toDict;
@end

@implementation ICASSmartFoldersItemData

- (ICASSmartFoldersItemData)initWithTotalCountOfSmartFoldersWithTagsFilter:(id)filter totalCountOfSmartFoldersWithDateCreatedFilter:(id)createdFilter totalCountOfSmartFoldersWithDateModifiedFilter:(id)modifiedFilter totalCountOfSmartFoldersWithSharedFilter:(id)sharedFilter totalCountOfSmartFoldersWithMentionsFilter:(id)mentionsFilter totalCountOfSmartFoldersWithChecklistsFilter:(id)checklistsFilter totalCountOfSmartFoldersWithAttachmentsFilter:(id)attachmentsFilter totalCountOfSmartFoldersWithFoldersFilter:(id)self0 totalCountOfSmartFoldersWithQuickNotesFilter:(id)self1 totalCountOfSmartFoldersWithPinnedNotesFilter:(id)self2 totalCountOfSmartFoldersWithLockedNotesFilter:(id)self3 totalCountOfSmartFoldersWithUnknownFilter:(id)self4
{
  filterCopy = filter;
  createdFilterCopy = createdFilter;
  createdFilterCopy2 = createdFilter;
  modifiedFilterCopy = modifiedFilter;
  sharedFilterCopy = sharedFilter;
  mentionsFilterCopy = mentionsFilter;
  mentionsFilterCopy2 = mentionsFilter;
  checklistsFilterCopy = checklistsFilter;
  attachmentsFilterCopy = attachmentsFilter;
  foldersFilterCopy = foldersFilter;
  notesFilterCopy = notesFilter;
  pinnedNotesFilterCopy = pinnedNotesFilter;
  lockedNotesFilterCopy = lockedNotesFilter;
  unknownFilterCopy = unknownFilter;
  v38.receiver = self;
  v38.super_class = ICASSmartFoldersItemData;
  v24 = [(ICASSmartFoldersItemData *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_totalCountOfSmartFoldersWithTagsFilter, filter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithDateCreatedFilter, createdFilterCopy);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithDateModifiedFilter, modifiedFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithSharedFilter, sharedFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithMentionsFilter, mentionsFilterCopy);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithChecklistsFilter, checklistsFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithAttachmentsFilter, attachmentsFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithFoldersFilter, foldersFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithQuickNotesFilter, notesFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithPinnedNotesFilter, pinnedNotesFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithLockedNotesFilter, lockedNotesFilter);
    objc_storeStrong(&v25->_totalCountOfSmartFoldersWithUnknownFilter, unknownFilter);
  }

  return v25;
}

- (id)toDict
{
  v43[12] = *MEMORY[0x277D85DE8];
  v42[0] = @"totalCountOfSmartFoldersWithTagsFilter";
  totalCountOfSmartFoldersWithTagsFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithTagsFilter];
  if (totalCountOfSmartFoldersWithTagsFilter)
  {
    totalCountOfSmartFoldersWithTagsFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithTagsFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithTagsFilter2 = objc_opt_new();
  }

  v40 = totalCountOfSmartFoldersWithTagsFilter2;
  v43[0] = totalCountOfSmartFoldersWithTagsFilter2;
  v42[1] = @"totalCountOfSmartFoldersWithDateCreatedFilter";
  totalCountOfSmartFoldersWithDateCreatedFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateCreatedFilter];
  if (totalCountOfSmartFoldersWithDateCreatedFilter)
  {
    totalCountOfSmartFoldersWithDateCreatedFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateCreatedFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithDateCreatedFilter2 = objc_opt_new();
  }

  v38 = totalCountOfSmartFoldersWithDateCreatedFilter2;
  v43[1] = totalCountOfSmartFoldersWithDateCreatedFilter2;
  v42[2] = @"totalCountOfSmartFoldersWithDateModifiedFilter";
  totalCountOfSmartFoldersWithDateModifiedFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateModifiedFilter];
  if (totalCountOfSmartFoldersWithDateModifiedFilter)
  {
    totalCountOfSmartFoldersWithDateModifiedFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithDateModifiedFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithDateModifiedFilter2 = objc_opt_new();
  }

  v36 = totalCountOfSmartFoldersWithDateModifiedFilter2;
  v43[2] = totalCountOfSmartFoldersWithDateModifiedFilter2;
  v42[3] = @"totalCountOfSmartFoldersWithSharedFilter";
  totalCountOfSmartFoldersWithSharedFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithSharedFilter];
  if (totalCountOfSmartFoldersWithSharedFilter)
  {
    totalCountOfSmartFoldersWithSharedFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithSharedFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithSharedFilter2 = objc_opt_new();
  }

  v34 = totalCountOfSmartFoldersWithSharedFilter2;
  v43[3] = totalCountOfSmartFoldersWithSharedFilter2;
  v42[4] = @"totalCountOfSmartFoldersWithMentionsFilter";
  totalCountOfSmartFoldersWithMentionsFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithMentionsFilter];
  if (totalCountOfSmartFoldersWithMentionsFilter)
  {
    totalCountOfSmartFoldersWithMentionsFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithMentionsFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithMentionsFilter2 = objc_opt_new();
  }

  v32 = totalCountOfSmartFoldersWithMentionsFilter2;
  v43[4] = totalCountOfSmartFoldersWithMentionsFilter2;
  v42[5] = @"totalCountOfSmartFoldersWithChecklistsFilter";
  totalCountOfSmartFoldersWithChecklistsFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithChecklistsFilter];
  if (totalCountOfSmartFoldersWithChecklistsFilter)
  {
    totalCountOfSmartFoldersWithChecklistsFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithChecklistsFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithChecklistsFilter2 = objc_opt_new();
  }

  v30 = totalCountOfSmartFoldersWithChecklistsFilter2;
  v43[5] = totalCountOfSmartFoldersWithChecklistsFilter2;
  v42[6] = @"totalCountOfSmartFoldersWithAttachmentsFilter";
  totalCountOfSmartFoldersWithAttachmentsFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithAttachmentsFilter];
  if (totalCountOfSmartFoldersWithAttachmentsFilter)
  {
    totalCountOfSmartFoldersWithAttachmentsFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithAttachmentsFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithAttachmentsFilter2 = objc_opt_new();
  }

  v28 = totalCountOfSmartFoldersWithAttachmentsFilter2;
  v43[6] = totalCountOfSmartFoldersWithAttachmentsFilter2;
  v42[7] = @"totalCountOfSmartFoldersWithFoldersFilter";
  totalCountOfSmartFoldersWithFoldersFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithFoldersFilter];
  if (totalCountOfSmartFoldersWithFoldersFilter)
  {
    totalCountOfSmartFoldersWithFoldersFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithFoldersFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithFoldersFilter2 = objc_opt_new();
  }

  v11 = totalCountOfSmartFoldersWithFoldersFilter2;
  v43[7] = totalCountOfSmartFoldersWithFoldersFilter2;
  v42[8] = @"totalCountOfSmartFoldersWithQuickNotesFilter";
  totalCountOfSmartFoldersWithQuickNotesFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithQuickNotesFilter];
  if (totalCountOfSmartFoldersWithQuickNotesFilter)
  {
    totalCountOfSmartFoldersWithQuickNotesFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithQuickNotesFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithQuickNotesFilter2 = objc_opt_new();
  }

  v14 = totalCountOfSmartFoldersWithQuickNotesFilter2;
  v43[8] = totalCountOfSmartFoldersWithQuickNotesFilter2;
  v42[9] = @"totalCountOfSmartFoldersWithPinnedNotesFilter";
  totalCountOfSmartFoldersWithPinnedNotesFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithPinnedNotesFilter];
  if (totalCountOfSmartFoldersWithPinnedNotesFilter)
  {
    totalCountOfSmartFoldersWithPinnedNotesFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithPinnedNotesFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithPinnedNotesFilter2 = objc_opt_new();
  }

  v17 = totalCountOfSmartFoldersWithPinnedNotesFilter2;
  v43[9] = totalCountOfSmartFoldersWithPinnedNotesFilter2;
  v42[10] = @"totalCountOfSmartFoldersWithLockedNotesFilter";
  totalCountOfSmartFoldersWithLockedNotesFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithLockedNotesFilter];
  if (totalCountOfSmartFoldersWithLockedNotesFilter)
  {
    totalCountOfSmartFoldersWithLockedNotesFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithLockedNotesFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithLockedNotesFilter2 = objc_opt_new();
  }

  v20 = totalCountOfSmartFoldersWithLockedNotesFilter2;
  v43[10] = totalCountOfSmartFoldersWithLockedNotesFilter2;
  v42[11] = @"totalCountOfSmartFoldersWithUnknownFilter";
  totalCountOfSmartFoldersWithUnknownFilter = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithUnknownFilter];
  if (totalCountOfSmartFoldersWithUnknownFilter)
  {
    totalCountOfSmartFoldersWithUnknownFilter2 = [(ICASSmartFoldersItemData *)self totalCountOfSmartFoldersWithUnknownFilter];
  }

  else
  {
    totalCountOfSmartFoldersWithUnknownFilter2 = objc_opt_new();
  }

  v23 = totalCountOfSmartFoldersWithUnknownFilter2;
  v43[11] = totalCountOfSmartFoldersWithUnknownFilter2;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:12];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end