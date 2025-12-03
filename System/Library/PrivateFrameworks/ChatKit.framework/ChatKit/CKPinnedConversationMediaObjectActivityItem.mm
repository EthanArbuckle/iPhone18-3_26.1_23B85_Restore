@interface CKPinnedConversationMediaObjectActivityItem
+ (id)previewImageForMediaObject:(id)object;
+ (id)previewableMediaObjectFromMessage:(id)message;
- (CKPinnedConversationMediaObjectActivityItem)initWithMessage:(id)message mediaObject:(id)object contentScale:(double)scale attachedContactItemIdentifier:(id)identifier;
- (id)activityItemView;
@end

@implementation CKPinnedConversationMediaObjectActivityItem

- (CKPinnedConversationMediaObjectActivityItem)initWithMessage:(id)message mediaObject:(id)object contentScale:(double)scale attachedContactItemIdentifier:(id)identifier
{
  messageCopy = message;
  objectCopy = object;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CKPinnedConversationMediaObjectActivityItem;
  v14 = [(CKPinnedConversationMediaObjectActivityItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_message, message);
    objc_storeStrong(&v15->_mediaObject, object);
    v15->_activityItemContentScale = scale;
    v16 = [identifierCopy copy];
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

+ (id)previewableMediaObjectFromMessage:(id)message
{
  v25 = *MEMORY[0x1E69E9840];
  [message __ck_mediaObjects];
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
          transfer = [v9 transfer];
          commSafetySensitive = [transfer commSafetySensitive];

          if ((commSafetySensitive - 1) >= 2)
          {
            if ([self _mediaTypeSupportedForPinningPreview:{objc_msgSend(v9, "mediaType")}])
            {
              transfer2 = [v9 transfer];
              isFileDataReady = [transfer2 isFileDataReady];

              if (isFileDataReady)
              {
                transfer3 = [v9 transfer];
                isAdaptiveImageGlyph = [transfer3 isAdaptiveImageGlyph];

                if ((isAdaptiveImageGlyph & 1) == 0)
                {
                  v16 = [self previewImageForMediaObject:v9];
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

+ (id)previewImageForMediaObject:(id)object
{
  objectCopy = object;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 previewMaxWidth];
  v6 = v5;

  v7 = [objectCopy previewForWidth:0 orientation:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = v7;
LABEL_5:
    v9 = image;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [v7 image];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end