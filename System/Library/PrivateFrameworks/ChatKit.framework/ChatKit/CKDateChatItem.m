@interface CKDateChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (NSDate)date;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
@end

@implementation CKDateChatItem

- (id)loadTranscriptText
{
  v3 = [(CKDateChatItem *)self date];
  v4 = [(CKDateChatItem *)self now];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptRegularFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 shouldUseSimpleTimestampsInTranscript];

  v9 = [v4 compare:v3];
  if (v8)
  {
    if (v9 == -1)
    {
      v10 = v4;
      v11 = v3;
    }

    else
    {
      v10 = v3;
      v11 = v4;
    }

    v12 = [CKDateUtilities relativeFullDateOnlyFormatterFromDate:v10 toDate:v11];
    v15 = [v12 stringFromDate:v3];
    v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15 attributes:v6];
  }

  else
  {
    v27 = v4;
    if (v9 == -1)
    {
      v12 = [CKDateUtilities relativeDateFormatterFromDate:v4 toDate:v3];
      v13 = v4;
      v14 = v3;
    }

    else
    {
      v12 = [CKDateUtilities relativeDateFormatterFromDate:v3 toDate:v4];
      v13 = v3;
      v14 = v4;
    }

    v15 = [CKDateUtilities relativeDateOnlyFormatterFromDate:v13 toDate:v14];
    v17 = [v12 stringFromDate:v3];
    v26 = [v15 stringFromDate:v3];
    v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v17 attributes:v6];
    v18 = v6;
    v19 = [v17 rangeOfString:v26];
    v21 = v20;
    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 transcriptEmphasizedFontAttributes];
    v24 = v19;
    v6 = v18;
    [v16 setAttributes:v23 range:{v24, v21}];

    v4 = v27;
  }

  return v16;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v6.receiver = self;
  v6.super_class = CKDateChatItem;
  [(CKStampLabelChatItem *)&v6 loadSizeThatFits:a4 textAlignmentInsets:a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (NSDate)date
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 date];

  return v3;
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (a4 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 objectAtIndexedSubscript:a4 - 1];
  }

  if ([v16 layoutType] == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v16, "hasInformativeText"))
  {
    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 largeTranscriptSpace];
    v19 = v18;

    v20 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v19 bottomSpacing:0.0];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = CKDateChatItem;
    v20 = [(CKStampChatItem *)&v23 layoutItemSpacingWithEnvironment:v13 datasourceItemIndex:a4 allDatasourceItems:v14 supplementryItems:v15 sizeOverride:width, height];
  }

  v21 = v20;

  return v21;
}

@end