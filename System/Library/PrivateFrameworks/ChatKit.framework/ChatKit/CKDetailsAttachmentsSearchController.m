@interface CKDetailsAttachmentsSearchController
- (CKAttachmentSearchResultCell)sizingCell;
- (id)layoutGroupWithEnvironment:(id)a3;
@end

@implementation CKDetailsAttachmentsSearchController

- (id)layoutGroupWithEnvironment:(id)a3
{
  v4 = [(CKSearchController *)self layoutWidth];
  v5 = [(CKSearchController *)self delegate];
  [v5 containerWidthForController:self];
  v7 = v6;

  v28 = 0;
  v29 = 0.0;
  [(CKAttachmentsSearchController *)self fractionalWidth:&v29 count:&v28 forLayoutWidth:v4];
  v8 = [(CKSearchController *)self delegate];
  [v8 parentMarginInsetsForSearchController:self];
  v10 = v9;
  v12 = v11;

  v13 = (v7 - (v10 + v12) + ((v28 - 1) * -10.0)) / v28;
  v14 = objc_opt_new();
  [v14 setFrame:{0.0, 0.0, v13, 1.79769313e308}];
  v15 = [(CKDetailsAttachmentsSearchController *)self sizingCell];
  v16 = [v15 preferredLayoutAttributesFittingAttributes:v14];

  [v16 frame];
  Height = CGRectGetHeight(v31);
  v18 = [MEMORY[0x1E6995558] fractionalWidthDimension:v29];
  v19 = [MEMORY[0x1E6995558] absoluteDimension:Height];
  v20 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v18 heightDimension:v19];
  v21 = [MEMORY[0x1E6995578] itemWithLayoutSize:v20];
  v22 = MEMORY[0x1E6995588];
  v23 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v24 = [v22 sizeWithWidthDimension:v23 heightDimension:v19];

  v25 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v24 subitem:v21 count:v28];
  v26 = [MEMORY[0x1E6995590] fixedSpacing:10.0];
  [v25 setInterItemSpacing:v26];

  return v25;
}

- (CKAttachmentSearchResultCell)sizingCell
{
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    v4 = [CKAttachmentSearchResultCell alloc];
    v5 = [(CKAttachmentSearchResultCell *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_sizingCell;
    self->_sizingCell = v5;

    v7 = [(CKAttachmentSearchResultCell *)self->_sizingCell dateLabel];
    v8 = [MEMORY[0x1E695DF00] date];
    [v7 setDate:v8];

    v22 = +[CKUIBehavior sharedBehaviors];
    v21 = [v22 theme];
    v9 = [v21 conversationListSummaryColor];
    v20 = +[CKUIBehavior sharedBehaviors];
    v10 = [v20 searchResultLabelFont];
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 conversationListSenderColor];
    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 searchResultLabelFont];
    v16 = v9;
    v17 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:&stru_1F04268F8 resultText:@"TEST\nTEST" primaryTextColor:v9 primaryFont:v10 annotatedTextColor:v13 annotatedFont:v15];

    v18 = [(CKAttachmentSearchResultCell *)self->_sizingCell titleLabel];
    [v18 setAttributedText:v17];

    sizingCell = self->_sizingCell;
  }

  return sizingCell;
}

@end