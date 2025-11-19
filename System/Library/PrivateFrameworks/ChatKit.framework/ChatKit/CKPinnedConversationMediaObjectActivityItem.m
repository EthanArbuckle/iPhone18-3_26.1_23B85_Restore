@interface CKPinnedConversationMediaObjectActivityItem
+ (id)previewImageForMediaObject:(id)a3;
+ (id)previewableMediaObjectFromMessage:(id)a3;
- (CKPinnedConversationMediaObjectActivityItem)initWithMessage:(id)a3 mediaObject:(id)a4 contentScale:(double)a5 attachedContactItemIdentifier:(id)a6;
- (id)activityItemView;
@end

@implementation CKPinnedConversationMediaObjectActivityItem

- (CKPinnedConversationMediaObjectActivityItem)initWithMessage:(id)a3 mediaObject:(id)a4 contentScale:(double)a5 attachedContactItemIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CKPinnedConversationMediaObjectActivityItem;
  v14 = [(CKPinnedConversationMediaObjectActivityItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_message, a3);
    objc_storeStrong(&v15->_mediaObject, a4);
    v15->_activityItemContentScale = a5;
    v16 = [v13 copy];
    attachedContactItemIdentifier = v15->_attachedContactItemIdentifier;
    v15->_attachedContactItemIdentifier = v16;
  }

  return v15;
}

- (id)activityItemView
{
  v2 = [[CKPinnedConversationMediaObjectBubble alloc] initWithMediaObjectActivityItem:self];

  return v2;
}

+ (id)previewableMediaObjectFromMessage:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  [a3 __ck_mediaObjects];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 isPreviewable])
        {
          v10 = [v9 transfer];
          v11 = [v10 commSafetySensitive];

          if ((v11 - 1) >= 2)
          {
            if ([a1 _mediaTypeSupportedForPinningPreview:{objc_msgSend(v9, "mediaType")}])
            {
              v12 = [v9 transfer];
              v13 = [v12 isFileDataReady];

              if (v13)
              {
                v14 = [v9 transfer];
                v15 = [v14 isAdaptiveImageGlyph];

                if ((v15 & 1) == 0)
                {
                  v16 = [a1 previewImageForMediaObject:v9];
                  if (v16)
                  {
                    v18 = v16;
                    v17 = v9;

                    goto LABEL_16;
                  }
                }
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

+ (id)previewImageForMediaObject:(id)a3
{
  v3 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 previewMaxWidth];
  v6 = v5;

  v7 = [v3 previewForWidth:0 orientation:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 image];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end