@interface CKDualSIMUtilities
+ (CKDualSIMUtilities)sharedUtilities;
+ (id)_imageForLastUsedSIMForConversation:(id)conversation;
+ (id)_textAttachmentForLastUsedSIMForConversation:(id)conversation;
+ (id)makeSummaryAttributedStringWithSIMImageUsingAttributedString:(id)string forConversation:(id)conversation;
- (CKDualSIMUtilities)init;
- (id)_conversationListSIMLabels;
- (void)_createConversationListSIMLabelImagesDictionary;
- (void)_resizeSIMLabel:(id)label;
- (void)updateConversationListSIMLabelImagesDictionary;
@end

@implementation CKDualSIMUtilities

+ (CKDualSIMUtilities)sharedUtilities
{
  if (sharedUtilities_onceToken != -1)
  {
    +[CKDualSIMUtilities sharedUtilities];
  }

  v3 = sharedUtilities_sharedUtilitiesInstance;

  return v3;
}

void __37__CKDualSIMUtilities_sharedUtilities__block_invoke()
{
  v0 = objc_alloc_init(CKDualSIMUtilities);
  v1 = sharedUtilities_sharedUtilitiesInstance;
  sharedUtilities_sharedUtilitiesInstance = v0;
}

- (CKDualSIMUtilities)init
{
  v5.receiver = self;
  v5.super_class = CKDualSIMUtilities;
  v2 = [(CKDualSIMUtilities *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleSIMSubscriptionsUpdate_ name:*MEMORY[0x1E69A78B8] object:0];
  }

  return v2;
}

- (void)_createConversationListSIMLabelImagesDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _conversationListSIMLabels = [(CKDualSIMUtilities *)self _conversationListSIMLabels];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [_conversationListSIMLabels allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [_conversationListSIMLabels objectForKey:v10];
        [v11 bounds];
        v23.width = v12;
        v23.height = v13;
        UIGraphicsBeginImageContextWithOptions(v23, 0, 0.0);
        layer = [v11 layer];
        [layer renderInContext:UIGraphicsGetCurrentContext()];

        v15 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [(NSDictionary *)v3 setObject:v15 forKey:v10];
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  conversationListSIMLabelImagesDictionary = self->_conversationListSIMLabelImagesDictionary;
  self->_conversationListSIMLabelImagesDictionary = v3;
}

- (id)_conversationListSIMLabels
{
  v48 = *MEMORY[0x1E69E9840];
  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mEMORY[0x1E69A8050] = [MEMORY[0x1E69A8050] sharedManager];
  activeSIMIDs = [mEMORY[0x1E69A8050] activeSIMIDs];

  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 conversationListSIMLabelBaseRadius];
  [defaultMetrics scaledValueForValue:?];
  v7 = v6;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = activeSIMIDs;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v40 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        mEMORY[0x1E69A8050]2 = [MEMORY[0x1E69A8050] sharedManager];
        v13 = [mEMORY[0x1E69A8050]2 shortNameForSIMLabel:v11];

        v14 = objc_alloc(MEMORY[0x1E69DCC10]);
        v15 = +[CKUIBehavior sharedBehaviors];
        conversationListSummaryFont = [v15 conversationListSummaryFont];
        [conversationListSummaryFont capHeight];
        v18 = floor(v17 + 0.5);
        v19 = +[CKUIBehavior sharedBehaviors];
        conversationListSummaryFont2 = [v19 conversationListSummaryFont];
        [conversationListSummaryFont2 capHeight];
        v22 = [v14 initWithFrame:{0.0, 0.0, v18, floor(v21 + 0.5)}];

        v23 = MEMORY[0x1E69DB878];
        v24 = +[CKUIBehavior sharedBehaviors];
        conversationListSummaryFont3 = [v24 conversationListSummaryFont];
        [conversationListSummaryFont3 capHeight];
        v27 = floor(v26);
        v28 = +[CKUIBehavior sharedBehaviors];
        [v28 conversationListSIMLabelHeightTextSizeRatio];
        v30 = [v23 boldSystemFontOfSize:v27 / v29];
        [v22 setFont:v30];

        [v22 setText:v13];
        v31 = +[CKUIBehavior sharedBehaviors];
        conversationListSIMLabelTextColor = [v31 conversationListSIMLabelTextColor];
        [v22 setTextColor:conversationListSIMLabelTextColor];

        [v22 setTextAlignment:1];
        v33 = +[CKUIBehavior sharedBehaviors];
        conversationListSIMLabelBackgroundColor = [v33 conversationListSIMLabelBackgroundColor];
        [v22 setBackgroundColor:conversationListSIMLabelBackgroundColor];

        layer = [v22 layer];
        [layer setMasksToBounds:1];

        layer2 = [v22 layer];
        [layer2 setCornerRadius:v7];

        [(CKDualSIMUtilities *)self _resizeSIMLabel:v22];
        [v42 setValue:v22 forKey:v11];
      }

      v9 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v9);
  }

  v37 = [v42 copy];

  return v37;
}

- (void)updateConversationListSIMLabelImagesDictionary
{
  [(CKDualSIMUtilities *)self _createConversationListSIMLabelImagesDictionary];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kCKSIMLabelImagesChanged" object:0];
}

- (void)_resizeSIMLabel:(id)label
{
  labelCopy = label;
  v4 = +[CKUIBehavior sharedBehaviors];
  conversationListSummaryFont = [v4 conversationListSummaryFont];
  [conversationListSummaryFont capHeight];
  v7 = floor(v6 + 0.5);

  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 conversationListSIMLabelBaseBuffer];
  [defaultMetrics scaledValueForValue:?];
  v11 = v10;

  [labelCopy intrinsicContentSize];
  v13 = floor(v11 + v12 + 0.5);
  if (v13 >= v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  v17 = +[CKUIBehavior sharedBehaviors];
  conversationListSummaryFont2 = [v17 conversationListSummaryFont];
  [conversationListSummaryFont2 capHeight];
  [labelCopy setFrame:{0.0, 0.0, v14, floor(v16 + 0.5)}];
}

+ (id)makeSummaryAttributedStringWithSIMImageUsingAttributedString:(id)string forConversation:(id)conversation
{
  stringCopy = string;
  v6 = [CKDualSIMUtilities _textAttachmentForLastUsedSIMForConversation:conversation];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:stringCopy];
    v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v6];
    [v7 insertAttributedString:v8 atIndex:0];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v7 insertAttributedString:v9 atIndex:1];

    v10 = [v7 copy];
  }

  else
  {
    v10 = stringCopy;
  }

  return v10;
}

+ (id)_textAttachmentForLastUsedSIMForConversation:(id)conversation
{
  v3 = [self _imageForLastUsedSIMForConversation:conversation];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v5 = +[CKUIBehavior sharedBehaviors];
    conversationListSummaryFont = [v5 conversationListSummaryFont];
    [conversationListSummaryFont capHeight];
    v8 = v7;
    [v3 size];
    v10 = (v8 - v9) * 0.5;
    [v3 size];
    v12 = v11;
    [v3 size];
    [v4 setBounds:{0.0, v10, v12, v13}];

    [v4 setImage:v3];
    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_imageForLastUsedSIMForConversation:(id)conversation
{
  chat = [conversation chat];
  lastAddressedSIMID = [chat lastAddressedSIMID];

  if (lastAddressedSIMID)
  {
    v5 = +[CKDualSIMUtilities sharedUtilities];
    v6 = [v5 _conversationListSIMLabelImageForSIMID:lastAddressedSIMID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end