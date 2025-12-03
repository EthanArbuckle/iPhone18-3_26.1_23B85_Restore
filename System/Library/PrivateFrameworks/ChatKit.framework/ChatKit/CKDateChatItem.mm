@interface CKDateChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (NSDate)date;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
@end

@implementation CKDateChatItem

- (id)loadTranscriptText
{
  date = [(CKDateChatItem *)self date];
  v4 = [(CKDateChatItem *)self now];
  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v5 transcriptRegularFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  shouldUseSimpleTimestampsInTranscript = [v7 shouldUseSimpleTimestampsInTranscript];

  v9 = [v4 compare:date];
  if (shouldUseSimpleTimestampsInTranscript)
  {
    if (v9 == -1)
    {
      v10 = v4;
      v11 = date;
    }

    else
    {
      v10 = date;
      v11 = v4;
    }

    v12 = [CKDateUtilities relativeFullDateOnlyFormatterFromDate:v10 toDate:v11];
    v15 = [v12 stringFromDate:date];
    v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15 attributes:transcriptRegularFontAttributes];
  }

  else
  {
    v27 = v4;
    if (v9 == -1)
    {
      v12 = [CKDateUtilities relativeDateFormatterFromDate:v4 toDate:date];
      v13 = v4;
      v14 = date;
    }

    else
    {
      v12 = [CKDateUtilities relativeDateFormatterFromDate:date toDate:v4];
      v13 = date;
      v14 = v4;
    }

    v15 = [CKDateUtilities relativeDateOnlyFormatterFromDate:v13 toDate:v14];
    v17 = [v12 stringFromDate:date];
    v26 = [v15 stringFromDate:date];
    v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v17 attributes:transcriptRegularFontAttributes];
    v18 = transcriptRegularFontAttributes;
    v19 = [v17 rangeOfString:v26];
    v21 = v20;
    v22 = +[CKUIBehavior sharedBehaviors];
    transcriptEmphasizedFontAttributes = [v22 transcriptEmphasizedFontAttributes];
    v24 = v19;
    transcriptRegularFontAttributes = v18;
    [v16 setAttributes:transcriptEmphasizedFontAttributes range:{v24, v21}];

    v4 = v27;
  }

  return v16;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  v6.receiver = self;
  v6.super_class = CKDateChatItem;
  [(CKStampLabelChatItem *)&v6 loadSizeThatFits:insets textAlignmentInsets:fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (NSDate)date
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  date = [iMChatItem date];

  return date;
}

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [itemsCopy objectAtIndexedSubscript:index - 1];
  }

  if ([v16 layoutType] == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v16, "hasInformativeText"))
  {
    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 largeTranscriptSpace];
    v19 = v18;

    height = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v19 bottomSpacing:0.0];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = CKDateChatItem;
    height = [(CKStampChatItem *)&v23 layoutItemSpacingWithEnvironment:environmentCopy datasourceItemIndex:index allDatasourceItems:itemsCopy supplementryItems:supplementryItemsCopy sizeOverride:width, height];
  }

  v21 = height;

  return v21;
}

@end