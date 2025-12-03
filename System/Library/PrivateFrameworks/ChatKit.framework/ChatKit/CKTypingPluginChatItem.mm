@interface CKTypingPluginChatItem
+ (id)indicatorLayerForPluginBundleID:(id)d type:(id)type typingIndicatorData:(id)data;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKTypingPluginChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (id)indicatorLayer;
@end

@implementation CKTypingPluginChatItem

- (CKTypingPluginChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = CKTypingPluginChatItem;
  v7 = [(CKChatItem *)&v14 initWithIMChatItem:itemCopy maxWidth:width];
  if (v7)
  {
    type = [itemCopy type];
    v9 = [type copy];
    plugInBundleID = v7->_plugInBundleID;
    v7->_plugInBundleID = v9;

    typingIndicatorIcon = [itemCopy typingIndicatorIcon];
    typingIndicatorData = v7->_typingIndicatorData;
    v7->_typingIndicatorData = typingIndicatorIcon;
  }

  return v7;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  if (insets)
  {
    fits = *MEMORY[0x1E69DDCE0];
    *&fits.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = *&fits.height;
  }

  [CKTypingIndicatorLayer largeBubbleFrame:fits.width];
  v5 = v4;
  v7 = v6;
  v8 = fmax(*MEMORY[0x1E695F060], v4);
  v9 = fmax(*(MEMORY[0x1E695F060] + 8), v6);
  +[CKTypingIndicatorLayer defaultSize];
  v12 = v8 + v10 - v5;
  v13 = v9 + v11 - v7;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (id)indicatorLayerForPluginBundleID:(id)d type:(id)type typingIndicatorData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v9 = MEMORY[0x1E69A5AD0];
  dCopy = d;
  sharedInstance = [v9 sharedInstance];
  v12 = [sharedInstance balloonPluginForBundleID:dCopy];

  customTypingIndicatorLayerClass = [v12 customTypingIndicatorLayerClass];
  if (customTypingIndicatorLayerClass)
  {
    v14 = objc_alloc_init(customTypingIndicatorLayerClass);
  }

  else
  {
    v14 = objc_alloc_init(CKTypingIndicatorLayer);
    v15 = typeCopy;
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    v17 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v15];

    identifier = [v17 identifier];
    v19 = [identifier isEqualToString:*MEMORY[0x1E69A69A8]];

    if (dataCopy && v19 || ([v15 isEqualToString:v15] & 1) == 0)
    {
      __ck_typingImage = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];
    }

    else
    {
      __ck_typingImage = [v17 __ck_typingImage];
    }

    v21 = __ck_typingImage;
    -[CKTypingIndicatorLayer setIconImage:](v14, "setIconImage:", [__ck_typingImage CGImage]);
  }

  return v14;
}

- (id)indicatorLayer
{
  plugInBundleID = [(CKTypingPluginChatItem *)self plugInBundleID];
  iMChatItem = [(CKChatItem *)self IMChatItem];
  type = [iMChatItem type];
  typingIndicatorData = [(CKTypingPluginChatItem *)self typingIndicatorData];
  v7 = [CKTypingPluginChatItem indicatorLayerForPluginBundleID:plugInBundleID type:type typingIndicatorData:typingIndicatorData];

  return v7;
}

@end