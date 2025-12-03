@interface CKAnimatedEmojiMediaObject
+ (id)UTITypes;
- (id)attachmentSummary:(unint64_t)summary;
- (id)icon;
- (id)previewForWidth:(double)width orientation:(char)orientation;
- (id)previewItemTitle;
@end

@implementation CKAnimatedEmojiMediaObject

+ (id)UTITypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], @"emoji.gif", *MEMORY[0x1E69637D8]);
  v5[0] = PreferredIdentifierForTag;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)previewItemTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PREVIEW_TITLE_ANIMATED_EMOJI" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)icon
{
  v2 = *MEMORY[0x1E69637D8];
  if (v2)
  {
    v3 = +[CKMediaObject iconCache];
    v4 = [v3 objectForKeyedSubscript:v2];

    if (!v4)
    {
      v5 = [MEMORY[0x1E6963658] documentProxyForName:0 type:v2 MIMEType:0];
      v4 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v5 format:3];
      if (v4)
      {
        v6 = +[CKMediaObject iconCache];
        [v6 setObject:v4 forKeyedSubscript:v2];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Animated Emoji" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 emojiPreviewMaxWidth];
  v9 = v8;

  if (v9 <= width)
  {
    widthCopy = v9;
  }

  else
  {
    widthCopy = width;
  }

  v13.receiver = self;
  v13.super_class = CKAnimatedEmojiMediaObject;
  v11 = [(CKAnimatedImageMediaObject *)&v13 previewForWidth:orientationCopy orientation:widthCopy];

  return v11;
}

@end