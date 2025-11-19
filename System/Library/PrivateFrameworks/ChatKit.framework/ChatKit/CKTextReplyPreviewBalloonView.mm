@interface CKTextReplyPreviewBalloonView
- (CGSize)_minimumFittingSize;
- (CGSize)_textSizeThatFits:(CGSize)a3 translationSecondaryTextSize:(CGSize *)a4 textAlignmentInsets:(UIEdgeInsets *)a5 isSingleLine:(BOOL *)a6;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKTextReplyPreviewBalloonView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (UIEdgeInsets)targetTextContainerInsets;
- (id)description;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForMessagePart:(id)a3;
- (void)prepareForReuse;
@end

@implementation CKTextReplyPreviewBalloonView

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CKTextReplyPreviewBalloonView;
  [(CKTextBalloonView *)&v6 configureForMessagePart:v4];
  if (v4)
  {
    [v4 balloonDescriptor];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v5];
  -[CKTextReplyPreviewBalloonView setIsFromMe:](self, "setIsFromMe:", [v4 isFromMe]);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CKTextReplyPreviewBalloonView;
  v4 = [(CKTextBalloonView *)&v9 textView];
  v8.receiver = self;
  v8.super_class = CKTextReplyPreviewBalloonView;
  v5 = [(CKTextBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKTextReplyPreviewBalloonView textView:%@ %@]", v4, v5];

  return v6;
}

- (CKTextReplyPreviewBalloonView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CKTextReplyPreviewBalloonView;
  v3 = [(CKTextBalloonView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKTextBalloonView *)v3 textView];
    [(CKTextReplyPreviewBalloonView *)v4 targetTextContainerInsets];
    [v5 setTextContainerInset:?];
    [v5 setSelectable:0];
    v6 = [v5 textContainer];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v6 setMaximumNumberOfLines:{objc_msgSend(v7, "replyBalloonMaximumNumberOfLines")}];

    [v6 setLineBreakMode:4];
    [(CKTextReplyPreviewBalloonView *)v4 setIsFromMe:0];
    v8 = [(CKBalloonView *)v4 doubleTapGestureRecognizer];
    [v8 setEnabled:0];
  }

  return v4;
}

- (UIEdgeInsets)targetTextContainerInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 replyBalloonTextContainerInset];
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

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKTextReplyPreviewBalloonView;
  [(CKTextBalloonView *)&v4 prepareForReuse];
  v3 = [(CKTextBalloonView *)self textView];
  [v3 setHidden:0];

  [(CKTextBalloonView *)self setContainsExcessiveLineHeightCharacters:0];
}

- (CGSize)_textSizeThatFits:(CGSize)a3 translationSecondaryTextSize:(CGSize *)a4 textAlignmentInsets:(UIEdgeInsets *)a5 isSingleLine:(BOOL *)a6
{
  height = a3.height;
  width = a3.width;
  v10 = [(CKTextBalloonView *)self textView];
  [v10 sizeThatFits:a5 textAlignmentInsets:a6 isSingleLine:{width, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)_minimumFittingSize
{
  if ([(CKBalloonView *)self hasTail])
  {
    v3 = [(CKBalloonView *)self balloonTailShape];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 skinnyReplyBalloonMaskSizeWithTailShape:v3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIEdgeInsets)balloonTypePillContentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 textReplyPreviewBalloonPillContentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 textAlignmentRectInsetsScaleFactor];
  v12 = v4 * v11;
  v13 = v6 * v11;
  v14 = v8 * v11;
  v15 = v10 * v11;

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v6.receiver = self;
  v6.super_class = CKTextReplyPreviewBalloonView;
  [(CKBalloonDescriptor_t *)&v6 balloonDescriptor];
  result = [(CKTextReplyPreviewBalloonView *)self shouldUseFilledBalloonStyle];
  if (result)
  {
    retstr->var2 = 0;
    retstr->var6 = 4;
  }

  return result;
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  [(CKTextReplyPreviewBalloonView *)self setShouldUseFilledBalloonStyle:1];
  [(CKTextBalloonView *)self prepareForDisplay];
  v5.receiver = self;
  v5.super_class = CKTextReplyPreviewBalloonView;
  [(CKTextBalloonView *)&v5 addFilter:v4];
}

- (void)clearFilters
{
  [(CKTextReplyPreviewBalloonView *)self setShouldUseFilledBalloonStyle:0];
  [(CKTextBalloonView *)self prepareForDisplay];
  v3.receiver = self;
  v3.super_class = CKTextReplyPreviewBalloonView;
  [(CKTextBalloonView *)&v3 clearFilters];
}

@end