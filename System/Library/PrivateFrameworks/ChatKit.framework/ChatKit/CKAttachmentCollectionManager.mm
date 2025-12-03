@interface CKAttachmentCollectionManager
- (CKAttachmentCollectionManager)initWithChat:(id)chat photoTransferGUIDs:(id)ds;
- (CKAttachmentCollectionManagerDelegate)delegate;
- (id)guidFromChatItem:(id)item;
- (void)chatItemsChanged:(id)changed;
- (void)dealloc;
- (void)deleteAttachmentItems:(id)items;
- (void)updateCollections;
@end

@implementation CKAttachmentCollectionManager

- (CKAttachmentCollectionManager)initWithChat:(id)chat photoTransferGUIDs:(id)ds
{
  chatCopy = chat;
  dsCopy = ds;
  v16.receiver = self;
  v16.super_class = CKAttachmentCollectionManager;
  v8 = [(CKAttachmentCollectionManager *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(CKAttachmentCollectionManager *)v8 setChat:chatCopy];
    if (dsCopy)
    {
      v10 = [MEMORY[0x1E695DFD8] setWithArray:dsCopy];
      photoTransferGUIDs = v9->_photoTransferGUIDs;
      v9->_photoTransferGUIDs = v10;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E69A5748];
    chat = [(CKAttachmentCollectionManager *)v9 chat];
    [defaultCenter addObserver:v9 selector:sel_chatItemsChanged_ name:v13 object:chat];

    [(CKAttachmentCollectionManager *)v9 updateCollections];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKAttachmentCollectionManager;
  [(CKAttachmentCollectionManager *)&v4 dealloc];
}

- (void)chatItemsChanged:(id)changed
{
  changedCopy = changed;
  photosVideosItems = [(CKAttachmentCollectionManager *)self photosVideosItems];
  v6 = [photosVideosItems mutableCopy];

  otherContentsItems = [(CKAttachmentCollectionManager *)self otherContentsItems];
  v8 = [otherContentsItems mutableCopy];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  userInfo = [changedCopy userInfo];
  object = [changedCopy object];
  v11 = [userInfo objectForKey:*MEMORY[0x1E69A5760]];
  chatItems = [object chatItems];
  v13 = [userInfo objectForKey:*MEMORY[0x1E69A5750]];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke;
  v38[3] = &unk_1E72F6430;
  v38[4] = self;
  v14 = chatItems;
  v39 = v14;
  v15 = v6;
  v40 = v15;
  v16 = v8;
  v41 = v16;
  v42 = &v43;
  [v13 enumerateIndexesWithOptions:2 usingBlock:v38];
  v26 = v14;
  v27 = v13;
  v28 = changedCopy;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = [userInfo objectForKey:*MEMORY[0x1E69A5778]];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke_2;
  v35[3] = &unk_1E72F6458;
  v35[4] = self;
  v19 = v11;
  v36 = v19;
  v20 = v17;
  v37 = v20;
  [v18 enumerateIndexesUsingBlock:v35];
  if ([v20 count])
  {
    *(v44 + 24) = 1;
    v21 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke_3;
    v32[3] = &unk_1E72F6480;
    v22 = v20;
    v33 = v22;
    v23 = v21;
    v34 = v23;
    [v15 enumerateObjectsUsingBlock:v32];
    [v15 removeObjectsAtIndexes:v23];
    [v23 removeAllIndexes];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke_4;
    v29[3] = &unk_1E72F6480;
    v30 = v22;
    v24 = v23;
    v31 = v24;
    [v16 enumerateObjectsUsingBlock:v29];
    [v16 removeObjectsAtIndexes:v24];
  }

  if (*(v44 + 24) == 1)
  {
    [(CKAttachmentCollectionManager *)self setPhotosVideosItems:v15];
    [(CKAttachmentCollectionManager *)self setOtherContentsItems:v16];
    delegate = [(CKAttachmentCollectionManager *)self delegate];
    [delegate attachmentCollectionManagerDidUpdateAttachmentItems:self];
  }

  _Block_object_dispose(&v43, 8);
}

void __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v18 = [v3 guidFromChatItem:v4];

  v5 = v18;
  if (v18)
  {
    v6 = [MEMORY[0x1E69A5B80] sharedInstance];
    v7 = [v6 transferForGUID:v18];

    v8 = [v7 localPath];
    v9 = [v8 __ck_stringByExpandingTildeInPath];

    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v11 = [v7 createdDate];
    v12 = [v7 shareURL];
    v13 = [CKAttachmentItemManager attachmentWithFileURL:v10 size:v18 transferGUID:v18 guid:v11 createdDate:v12 shareURL:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

    if (v13)
    {
      v14 = [v13 UTIType];
      if (UTTypeConformsTo(v14, *MEMORY[0x1E69637F8]))
      {
        v15 = 48;
      }

      else
      {
        v16 = UTTypeConformsTo(v14, *MEMORY[0x1E6963850]);
        v15 = 48;
        if (!v16)
        {
          v15 = 56;
        }
      }

      v17 = *(a1 + v15);
      [v17 addObject:v13];
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;

    v5 = v18;
  }
}

void __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v6 = [v3 guidFromChatItem:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
    v5 = v6;
  }
}

void __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 guid];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

void __50__CKAttachmentCollectionManager_chatItemsChanged___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 guid];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

- (id)guidFromChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferGUID = [itemCopy transferGUID];
  }

  else
  {
    transferGUID = 0;
  }

  return transferGUID;
}

- (void)updateCollections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  chat = [(CKAttachmentCollectionManager *)self chat];
  chatItems = [chat chatItems];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__CKAttachmentCollectionManager_updateCollections__block_invoke;
  v16[3] = &unk_1E72EEAC8;
  v17 = v3;
  v18 = v4;
  v7 = v4;
  v8 = v3;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v16];

  [(CKAttachmentCollectionManager *)self setPhotosVideosItems:v8];
  [(CKAttachmentCollectionManager *)self setOtherContentsItems:v7];
  delegate = [(CKAttachmentCollectionManager *)self delegate];
  [delegate attachmentCollectionManagerDidUpdateAttachmentItems:self];

  v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v10 startTimingForKey:@"loadAttachments Query"];
  chat2 = [(CKAttachmentCollectionManager *)self chat];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__CKAttachmentCollectionManager_updateCollections__block_invoke_2;
  v13[3] = &unk_1E72F64D0;
  v14 = v10;
  selfCopy = self;
  v12 = v10;
  [chat2 loadAttachments:v13];
}

void __50__CKAttachmentCollectionManager_updateCollections__block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v20;
  if (isKindOfClass)
  {
    v5 = [v20 transferGUID];
    if (v5)
    {
      v6 = [MEMORY[0x1E69A5B80] sharedInstance];
      v7 = [v6 transferForGUID:v5];

      v8 = [v7 localPath];
      v9 = [v8 __ck_stringByExpandingTildeInPath];

      v10 = v5;
      v11 = v10;
      if ([v7 isSticker])
      {
        v11 = CKStickerPreviewCacheKeyForFileTransfer(v7);
      }

      if (v9)
      {
        v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
        v13 = [v7 createdDate];
        v14 = [v7 shareURL];
        v15 = [CKAttachmentItemManager attachmentWithFileURL:v12 size:v10 transferGUID:v11 guid:v13 createdDate:v14 shareURL:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

        if (v15)
        {
          v16 = [v15 UTIType];
          if (UTTypeConformsTo(v16, *MEMORY[0x1E69637F8]))
          {
            v17 = 32;
          }

          else
          {
            v18 = UTTypeConformsTo(v16, *MEMORY[0x1E6963850]);
            v17 = 32;
            if (!v18)
            {
              v17 = 40;
            }
          }

          v19 = *(a1 + v17);
          [v19 addObject:v15];
        }
      }
    }

    v4 = v20;
  }
}

void __50__CKAttachmentCollectionManager_updateCollections__block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) stopTimingForKey:@"loadAttachments Query"];
  if (a2)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 32) startTimingForKey:@"loadAttachments buildup attachments"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__CKAttachmentCollectionManager_updateCollections__block_invoke_3;
    v16[3] = &unk_1E72F64A8;
    v16[4] = *(a1 + 40);
    v11 = v9;
    v17 = v11;
    v12 = v10;
    v18 = v12;
    [v7 enumerateObjectsWithOptions:2 usingBlock:v16];
    [*(a1 + 32) stopTimingForKey:@"loadAttachments buildup attachments"];
    [*(a1 + 40) setPhotosVideosItems:v11];
    [*(a1 + 40) setOtherContentsItems:v12];
    v13 = [*(a1 + 40) delegate];
    [v13 attachmentCollectionManagerDidUpdateAttachmentItems:*(a1 + 40)];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "timing = %@", buf, 0xCu);
      }
    }
  }
}

void __50__CKAttachmentCollectionManager_updateCollections__block_invoke_3(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [v21 path];
  v4 = [v3 __ck_stringByExpandingTildeInPath];

  v5 = [v21 guid];
  if (([v21 isSticker] & 1) != 0 || !objc_msgSend(v21, "isTransferComplete"))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [*(a1 + 32) photoTransferGUIDs];
    if (!v7 || (v8 = v7, [*(a1 + 32) photoTransferGUIDs], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v6), v9, v8, v10))
    {
      v11 = [MEMORY[0x1E69A5B80] sharedInstance];
      v12 = [v11 transferForGUID:v6];

      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];
      v14 = [v21 createdDate];
      v15 = [v12 shareURL];
      v16 = [CKAttachmentItemManager attachmentWithFileURL:v13 size:v6 transferGUID:v6 guid:v14 createdDate:v15 shareURL:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

      if (v16)
      {
        v17 = [v16 UTIType];
        if (UTTypeConformsTo(v17, *MEMORY[0x1E69637F8]))
        {
          v18 = 40;
        }

        else
        {
          v19 = UTTypeConformsTo(v17, *MEMORY[0x1E6963850]);
          v18 = 40;
          if (!v19)
          {
            v18 = 48;
          }
        }

        v20 = *(a1 + v18);
        [v20 addObject:v16];
        [v16 setIsSticker:{objc_msgSend(v21, "isSticker")}];
      }
    }
  }
}

- (void)deleteAttachmentItems:(id)items
{
  v52 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        transferGUID = [v11 transferGUID];

        if (transferGUID)
        {
          transferGUID2 = [v11 transferGUID];
          [array addObject:transferGUID2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    photosVideosItems = [(CKAttachmentCollectionManager *)self photosVideosItems];
    v36 = [photosVideosItems mutableCopy];

    otherContentsItems = [(CKAttachmentCollectionManager *)self otherContentsItems];
    v16 = [otherContentsItems mutableCopy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    selfCopy = self;
    photosVideosItems2 = [(CKAttachmentCollectionManager *)self photosVideosItems];
    v18 = [photosVideosItems2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(photosVideosItems2);
          }

          v22 = *(*(&v41 + 1) + 8 * j);
          transferGUID3 = [v22 transferGUID];
          v24 = [array containsObject:transferGUID3];

          if (v24)
          {
            [v36 removeObject:v22];
          }
        }

        v19 = [photosVideosItems2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v19);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    otherContentsItems2 = [(CKAttachmentCollectionManager *)selfCopy otherContentsItems];
    v26 = [otherContentsItems2 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(otherContentsItems2);
          }

          v30 = *(*(&v37 + 1) + 8 * k);
          transferGUID4 = [v30 transferGUID];
          v32 = [array containsObject:transferGUID4];

          if (v32)
          {
            [v16 removeObject:v30];
          }
        }

        v27 = [otherContentsItems2 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v27);
    }

    [(CKAttachmentCollectionManager *)selfCopy setPhotosVideosItems:v36];
    [(CKAttachmentCollectionManager *)selfCopy setOtherContentsItems:v16];
    chat = [(CKAttachmentCollectionManager *)selfCopy chat];
    [chat deleteTransfers:array];

    delegate = [(CKAttachmentCollectionManager *)selfCopy delegate];
    [delegate attachmentCollectionManagerDidUpdateAttachmentItems:selfCopy];
  }
}

- (CKAttachmentCollectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end