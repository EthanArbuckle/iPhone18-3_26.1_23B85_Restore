@interface CKTranscriptModel
- (CKTranscriptModel)initWithConversation:(id)a3 delegate:(id)a4;
- (CKTranscriptModelDelegate)delegate;
- (NSDiffableDataSourceSnapshot)snapshot;
- (id)chatItemWithIMChatItem:(id)a3 traitCollection:(id)a4 transcriptBackgroundLuminance:(double)a5;
- (id)chatItemsWithIMChatItems:(id)a3;
- (void)reload;
- (void)setChatItems:(id)a3;
@end

@implementation CKTranscriptModel

- (CKTranscriptModel)initWithConversation:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13.receiver = self;
    v13.super_class = CKTranscriptModel;
    v8 = [(CKTranscriptModel *)&v13 init];
    v9 = v8;
    if (v8)
    {
      [(CKTranscriptModel *)v8 setDelegate:v7];
      [(CKTranscriptModel *)v9 setConversation:v6];
    }

    self = v9;
    v10 = self;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKTranscriptModel - Initialized with nil conversation", buf, 2u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (NSDiffableDataSourceSnapshot)snapshot
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() transcriptSectionIdentifier];
  v4 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 appendSectionsWithIdentifiers:v5];

  v6 = [(CKTranscriptModel *)self chatItems];
  v7 = [v6 __imArrayByApplyingBlock:&__block_literal_global_108];

  [v4 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:v3];

  return v4;
}

id __29__CKTranscriptModel_snapshot__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 IMChatItem];
  v3 = [v2 guid];

  return v3;
}

- (void)reload
{
  [(CKTranscriptModel *)self setChatItems:0];
  v3 = [(CKTranscriptModel *)self conversation];
  v4 = [v3 chat];
  v6 = [v4 chatItems];

  v5 = [(CKTranscriptModel *)self chatItemsWithIMChatItems:v6];
  [(CKTranscriptModel *)self setChatItems:v5];
}

- (id)chatItemsWithIMChatItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(CKTranscriptModel *)self delegate];
  v7 = [v6 traitCollectionForModel:self];

  v8 = [(CKTranscriptModel *)self delegate];
  [v8 transcriptBackgroundLuminanceForModel:self];
  v10 = v9;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(CKTranscriptModel *)self chatItemWithIMChatItem:*(*(&v18 + 1) + 8 * i) traitCollection:v7 transcriptBackgroundLuminance:v10, v18];
        if (v16)
        {
          [v5 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v5;
}

- (id)chatItemWithIMChatItem:(id)a3 traitCollection:(id)a4 transcriptBackgroundLuminance:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKTranscriptModel *)self delegate];
  [v10 itemMaxWidthForModel:self];
  v12 = v11;

  v13 = [(CKTranscriptModel *)self delegate];
  [v13 balloonMaxWidthForModel:self];
  v15 = v14;

  v16 = [CKChatItem chatItemWithIMChatItem:v9 balloonMaxWidth:v8 fullMaxWidth:0 transcriptTraitCollection:v15 transcriptBackgroundLuminance:v12 overlayLayout:a5];

  return v16;
}

- (void)setChatItems:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_chatItems != v5)
  {
    v19 = self;
    objc_storeStrong(&self->_chatItems, a3);
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](v5, "count")}];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = v5;
    obj = v5;
    v24 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v24)
    {
      v22 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v9 = v23;
          v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v26;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v26 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v25 + 1) + 8 * j);
                v15 = [v8 IMChatItem];
                v16 = [v15 guid];
                v17 = [v14 supplementaryViewKindForGUID:v16];

                [v6 setObject:v8 forKey:v17];
              }

              v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v11);
          }
        }

        v24 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }

    v18 = [v6 copy];
    [(CKTranscriptModel *)v19 setSupplementaryKindToChatItemMap:v18];

    v5 = v20;
  }
}

- (CKTranscriptModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end