@interface CKTypingPluginChatItem
+ (id)indicatorLayerForPluginBundleID:(id)a3 type:(id)a4 typingIndicatorData:(id)a5;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKTypingPluginChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (id)indicatorLayer;
@end

@implementation CKTypingPluginChatItem

- (CKTypingPluginChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CKTypingPluginChatItem;
  v7 = [(CKChatItem *)&v14 initWithIMChatItem:v6 maxWidth:a4];
  if (v7)
  {
    v8 = [v6 type];
    v9 = [v8 copy];
    plugInBundleID = v7->_plugInBundleID;
    v7->_plugInBundleID = v9;

    v11 = [v6 typingIndicatorIcon];
    typingIndicatorData = v7->_typingIndicatorData;
    v7->_typingIndicatorData = v11;
  }

  return v7;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  if (a4)
  {
    a3 = *MEMORY[0x1E69DDCE0];
    *&a3.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = *&a3.height;
  }

  [CKTypingIndicatorLayer largeBubbleFrame:a3.width];
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

+ (id)indicatorLayerForPluginBundleID:(id)a3 type:(id)a4 typingIndicatorData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E69A5AD0];
  v10 = a3;
  v11 = [v9 sharedInstance];
  v12 = [v11 balloonPluginForBundleID:v10];

  v13 = [v12 customTypingIndicatorLayerClass];
  if (v13)
  {
    v14 = objc_alloc_init(v13);
  }

  else
  {
    v14 = objc_alloc_init(CKTypingIndicatorLayer);
    v15 = v7;
    v16 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v17 = [v16 balloonPluginForBundleID:v15];

    v18 = [v17 identifier];
    v19 = [v18 isEqualToString:*MEMORY[0x1E69A69A8]];

    if (v8 && v19 || ([v15 isEqualToString:v15] & 1) == 0)
    {
      v20 = [MEMORY[0x1E69DCAB8] imageWithData:v8];
    }

    else
    {
      v20 = [v17 __ck_typingImage];
    }

    v21 = v20;
    -[CKTypingIndicatorLayer setIconImage:](v14, "setIconImage:", [v20 CGImage]);
  }

  return v14;
}

- (id)indicatorLayer
{
  v3 = [(CKTypingPluginChatItem *)self plugInBundleID];
  v4 = [(CKChatItem *)self IMChatItem];
  v5 = [v4 type];
  v6 = [(CKTypingPluginChatItem *)self typingIndicatorData];
  v7 = [CKTypingPluginChatItem indicatorLayerForPluginBundleID:v3 type:v5 typingIndicatorData:v6];

  return v7;
}

@end