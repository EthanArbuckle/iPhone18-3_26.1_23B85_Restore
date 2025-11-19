@interface CKAggregateAttachmentMessagePartChatItem
- (BOOL)canExport;
- (BOOL)canPerformQuickAction;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKAggregateAttachmentMessagePartChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (CKMediaObjectAssetDataSource)dataSource;
- (NSArray)mediaObjects;
- (NSArray)transferGUIDs;
- (NSURL)momentShareURL;
- (UIEdgeInsets)stickerReactionInsets;
- (id)pasteboardItemProviders;
- (unint64_t)layoutType;
- (void)_generateMediaObjects;
- (void)setTranscriptTraitCollection:(id)a3;
@end

@implementation CKAggregateAttachmentMessagePartChatItem

- (unint64_t)layoutType
{
  if ([(CKChatItem *)self itemIsReply])
  {
    return 13;
  }

  else
  {
    return 18;
  }
}

- (CKAggregateAttachmentMessagePartChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v7.receiver = self;
  v7.super_class = CKAggregateAttachmentMessagePartChatItem;
  v4 = [(CKMessagePartChatItem *)&v7 initWithIMChatItem:a3 maxWidth:a4];
  v5 = v4;
  if (v4)
  {
    [(CKAggregateAttachmentMessagePartChatItem *)v4 _generateMediaObjects];
  }

  return v5;
}

- (void)_generateMediaObjects
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v3;
  v5 = [v3 aggregateAttachmentParts];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        [(CKChatItem *)self maxWidth];
        v12 = v11;
        [(CKChatItem *)self maxWidth];
        v14 = v13;
        v15 = [(CKAggregateAttachmentMessagePartChatItem *)self transcriptTraitCollection];
        [(CKChatItem *)self transcriptBackgroundLuminance];
        v17 = [CKChatItem chatItemWithIMChatItem:v10 balloonMaxWidth:v15 fullMaxWidth:0 transcriptTraitCollection:v12 transcriptBackgroundLuminance:v14 overlayLayout:v16];

        [v4 addObject:v17];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [(CKAggregateAttachmentMessagePartChatItem *)self setAggregateChatItems:v4];
}

- (NSArray)mediaObjects
{
  mediaObjects = self->_mediaObjects;
  if (!mediaObjects)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [(CKAggregateAttachmentMessagePartChatItem *)self aggregateChatItems];
    v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [(CKAggregateAttachmentMessagePartChatItem *)self aggregateChatItems];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__CKAggregateAttachmentMessagePartChatItem_mediaObjects__block_invoke;
    v20[3] = &unk_1E72F81A0;
    v21 = v6;
    v22 = v7;
    v23 = v8;
    v10 = v8;
    v11 = v7;
    v12 = v6;
    [v9 enumerateObjectsUsingBlock:v20];

    v13 = [v12 copy];
    v14 = self->_mediaObjects;
    self->_mediaObjects = v13;

    v15 = [v11 copy];
    aggregatedVisibleAssociatedMessageChatItems = self->_aggregatedVisibleAssociatedMessageChatItems;
    self->_aggregatedVisibleAssociatedMessageChatItems = v15;

    v17 = [v10 copy];
    aggregatedNonTapbackVisibleAssociatedMessageChatItems = self->_aggregatedNonTapbackVisibleAssociatedMessageChatItems;
    self->_aggregatedNonTapbackVisibleAssociatedMessageChatItems = v17;

    mediaObjects = self->_mediaObjects;
  }

  return mediaObjects;
}

void __56__CKAggregateAttachmentMessagePartChatItem_mediaObjects__block_invoke(id *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 mediaObject];
  [a1[4] addObject:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v3 visibleAssociatedMessageChatItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [a1[5] addObject:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [a1[6] addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewBalloonSizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)canExport
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CKAggregateAttachmentMessagePartChatItem *)self mediaObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) canExport])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setTranscriptTraitCollection:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([(UITraitCollection *)self->_transcriptTraitCollection isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_transcriptTraitCollection, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(CKAggregateAttachmentMessagePartChatItem *)self mediaObjects];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setTranscriptTraitCollection:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)canPerformQuickAction
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(CKMessagePartChatItem *)self isReplyContextPreview])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [(CKAggregateAttachmentMessagePartChatItem *)self mediaObjects];
    v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v8 + 1) + 8 * i) canPerformQuickAction])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (UIEdgeInsets)stickerReactionInsets
{
  v2 = [(CKMessagePartChatItem *)self isFromMe];
  v3 = 0.0;
  if (v2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 90.0;
  }

  if (v2)
  {
    v3 = 90.0;
  }

  v5 = 0.0;
  v6 = 0.0;
  result.right = v4;
  result.bottom = v6;
  result.left = v3;
  result.top = v5;
  return result;
}

- (NSArray)transferGUIDs
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 transferGUIDs];

  return v3;
}

- (CKMediaObjectAssetDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [CKMediaObjectAssetDataSource alloc];
    v5 = [(CKAggregateAttachmentMessagePartChatItem *)self aggregateChatItems];
    v6 = [(CKChatItem *)self IMChatItem];
    v7 = [v6 guid];
    v8 = [(CKMediaObjectAssetDataSource *)v4 initWithChatItems:v5 parentChatItemGUID:v7];
    v9 = self->_dataSource;
    self->_dataSource = v8;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (NSURL)momentShareURL
{
  momentShareURL = self->_momentShareURL;
  if (!momentShareURL)
  {
    if (self->_hasCheckedForMomentShareURL)
    {
      momentShareURL = 0;
    }

    else
    {
      self->_hasCheckedForMomentShareURL = 1;
      v4 = [(CKAggregateAttachmentMessagePartChatItem *)self mediaObjects];
      v5 = CKMomentShareURLForMediaObjects(v4);
      v6 = self->_momentShareURL;
      self->_momentShareURL = v5;

      momentShareURL = self->_momentShareURL;
    }
  }

  return momentShareURL;
}

- (id)pasteboardItemProviders
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CKAggregateAttachmentMessagePartChatItem *)self aggregateChatItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(CKAggregateAttachmentMessagePartChatItem *)self aggregateChatItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CKAggregateAttachmentMessagePartChatItem_pasteboardItemProviders__block_invoke;
  v9[3] = &unk_1E72F2768;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __67__CKAggregateAttachmentMessagePartChatItem_pasteboardItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pasteboardItemProviders];
  [v2 addObjectsFromArray:v3];
}

@end