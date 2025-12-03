@interface ICNote(ItemProviderWriting)
- (id)writableTypeIdentifiersForItemProvider;
- (id)writableTypeIdentifiersForNoteContent;
- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting;
- (uint64_t)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (void)prepareForCopyingData;
@end

@implementation ICNote(ItemProviderWriting)

- (id)writableTypeIdentifiersForNoteContent
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  [orderedSet addObject:*MEMORY[0x277D35D08]];
  writableTypeIdentifiersForItemProvider = [MEMORY[0x277CCA898] writableTypeIdentifiersForItemProvider];
  [orderedSet addObjectsFromArray:writableTypeIdentifiersForItemProvider];

  v2 = *MEMORY[0x277CE1D78];
  identifier = [*MEMORY[0x277CE1D78] identifier];
  v4 = [orderedSet containsObject:identifier];

  if ((v4 & 1) == 0)
  {
    identifier2 = [v2 identifier];
    [orderedSet insertObject:identifier2 atIndex:1];
  }

  array = [orderedSet array];

  return array;
}

- (id)writableTypeIdentifiersForItemProvider
{
  if ([self isPasswordProtected] && !objc_msgSend(self, "isAuthenticated"))
  {
    v3 = &unk_28277E5F8;
  }

  else
  {
    writableTypeIdentifiersForNoteContent = [self writableTypeIdentifiersForNoteContent];
    v3 = [writableTypeIdentifiersForNoteContent arrayByAddingObject:@"com.apple.notes.noteitemprovider"];
  }

  return v3;
}

- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting
{
  if ([a3 isEqual:*MEMORY[0x277D35D08]])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.notes.noteitemprovider"])
  {
    v8 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICNote(ItemProviderWriting) loadDataWithTypeIdentifier:v8 forItemProviderCompletionHandler:?];
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    objectID = [self objectID];
    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__ICNote_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    v13[3] = &unk_2781ABD98;
    v14 = objectID;
    v15 = v6;
    v16 = v7;
    v11 = objectID;
    [mEMORY[0x277D35F30] performBackgroundTask:v13];
  }

  return 0;
}

- (void)prepareForCopyingData
{
  textStorage = [self textStorage];
  styler = [textStorage styler];

  if (styler)
  {
    [self filterAttachmentsInTextStorage:textStorage range:{0, objc_msgSend(textStorage, "length")}];
  }

  else
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v3 = objc_alloc_init(MEMORY[0x277D36900]);
      [v3 setNote:self firstVisibleLocation:0];
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x277D36968]);
      v4 = [[ICLayoutManager alloc] initForTemporaryProcessing:1];
      [v3 setNote:self stylingTextUsingSeparateTextStorageForRendering:0 withLayoutManager:v4];
    }

    [self filterAttachmentsInTextStorage:textStorage range:{0, objc_msgSend(textStorage, "length")}];
    [textStorage setStyler:0];
  }
}

- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  objectID = [self objectID];
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__ICNote_ItemProviderWriting___loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v14[3] = &unk_2781ABD98;
  v15 = objectID;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = objectID;
  [mEMORY[0x277D35F30] performBackgroundTask:v14];

  return 0;
}

@end