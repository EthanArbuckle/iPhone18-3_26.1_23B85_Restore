@interface CKVisionReplyListChatItem
+ (double)navigationBarHeight;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)transcriptTextAlignmentInsets;
@end

@implementation CKVisionReplyListChatItem

- (UIEdgeInsets)transcriptTextAlignmentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (double)navigationBarHeight
{
  if (navigationBarHeight_onceToken != -1)
  {
    +[CKVisionReplyListChatItem navigationBarHeight];
  }

  return *&navigationBarHeight_navigationBarHeight;
}

void __48__CKVisionReplyListChatItem_navigationBarHeight__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
  v0 = [v2 navigationBar];
  [v0 bounds];
  navigationBarHeight_navigationBarHeight = v1;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    a3 = *MEMORY[0x1E69DDCE0];
    *&a3.height = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = *&a3.height;
  }

  v5 = [(CKVisionReplyListChatItem *)self groupRowIndex:a3.width];
  v6 = [(QuickReplyContent *)self->_quickReplyContent rows];
  v7 = [v6 count];

  v8 = 0.0;
  if (v5 < v7)
  {
    v9 = [(QuickReplyContent *)self->_quickReplyContent rowHeights];
    v10 = [v9 objectAtIndexedSubscript:v5];
    [v10 floatValue];
    v8 = v11;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 134218240;
      v16 = self;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[%p] Setting height to %f", &v15, 0x16u);
    }
  }

  v13 = 0.0;
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

@end