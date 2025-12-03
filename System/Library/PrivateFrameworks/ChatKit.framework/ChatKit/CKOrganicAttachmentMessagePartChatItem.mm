@interface CKOrganicAttachmentMessagePartChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKOrganicAttachmentMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (Class)balloonViewClass;
- (unint64_t)layoutType;
@end

@implementation CKOrganicAttachmentMessagePartChatItem

- (unint64_t)layoutType
{
  if ([(CKChatItem *)self itemIsReply])
  {
    return 13;
  }

  else
  {
    return 19;
  }
}

- (CKOrganicAttachmentMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CKOrganicAttachmentMessagePartChatItem;
  v4 = [(CKAttachmentMessagePartChatItem *)&v18 initWithIMChatItem:item maxWidth:width];
  visibleAssociatedMessageChatItems = [(CKMessagePartChatItem *)v4 visibleAssociatedMessageChatItems];
  v6 = [visibleAssociatedMessageChatItems count];

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    visibleAssociatedMessageChatItems2 = [(CKMessagePartChatItem *)v4 visibleAssociatedMessageChatItems];
    v8 = [visibleAssociatedMessageChatItems2 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(visibleAssociatedMessageChatItems2);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 setParentIsOrganicLayout:1];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [visibleAssociatedMessageChatItems2 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v4;
}

- (Class)balloonViewClass
{
  v3 = objc_opt_class();
  iMChatItem = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v14.receiver = self;
  v14.super_class = CKOrganicAttachmentMessagePartChatItem;
  [(CKAttachmentMessagePartChatItem *)&v14 loadSizeThatFits:insets textAlignmentInsets:?];
  v8 = width * dbl_190DD1070[v6 < v7];
  if (height < v8)
  {
    v9 = width / width;
    v10 = 0.0;
    if (width == 0.0)
    {
      v9 = 0.0;
    }

    if (v8 != 0.0)
    {
      v10 = height / v8;
    }

    v11 = fmin(v9, v10);
    width = width * v11;
    v8 = v8 * v11;
  }

  v12 = ceil(width);
  v13 = ceil(v8);
  result.height = v13;
  result.width = v12;
  return result;
}

@end