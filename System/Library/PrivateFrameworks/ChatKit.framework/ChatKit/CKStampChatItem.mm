@interface CKStampChatItem
- (Class)cellClass;
- (UIEdgeInsets)contentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
@end

@implementation CKStampChatItem

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 stampTranscriptInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (Class)cellClass
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CKStampChatItem.m" lineNumber:25 description:@"Subclasses must implement cellClass"];

  return 0;
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v12 objectAtIndex:a4 - 1];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 smallTranscriptSpace];
  v17 = v16;

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 mediumTranscriptSpace];
  v20 = v19;

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 mediumLargeTranscriptSpace];
  v23 = v22;

  v24 = +[CKUIBehavior sharedBehaviors];
  [v24 largeTranscriptSpace];
  v26 = v25;

  if (v14)
  {
    switch([v14 layoutType])
    {
      case 1:
        break;
      case 2:
      case 8:
      case 11:
      case 12:
      case 19:
      case 23:
      case 24:
        goto LABEL_6;
      case 3:
      case 5:
      case 6:
      case 9:
      case 13:
      case 15:
        v23 = v26;
        break;
      case 10:
        v27 = +[CKUIBehavior sharedBehaviors];
        [v27 balloonBalloonTranscriptSpace:{objc_msgSend(v14, "contiguousType")}];
        goto LABEL_8;
      case 18:
        v23 = v20;
        break;
      default:
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = objc_opt_class();
            *v34 = 138412546;
            *&v34[4] = v32;
            *&v34[12] = 2112;
            *&v34[14] = objc_opt_class();
            v33 = *&v34[14];
            _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", v34, 0x16u);
          }
        }

LABEL_6:
        v23 = v17;
        break;
    }
  }

  else
  {
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 topTranscriptSpace];
LABEL_8:
    v23 = v28;
  }

  v29 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v23 bottomSpacing:0.0, *v34, *&v34[16], v35];

  return v29;
}

@end