@interface CKIntroductionsButtonsCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKIntroductionsButtonsCell)initWithCoder:(id)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)setButtonsContainer:(id)a3;
- (void)setShouldShowIntroductionsLabel:(BOOL)a3;
@end

@implementation CKIntroductionsButtonsCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = CKIntroductionsButtonsCell;
    [(CKTranscriptStampCell *)&v15 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
    -[CKIntroductionsButtonsCell setShouldShowIntroductionsLabel:](self, "setShouldShowIntroductionsLabel:", [v12 shouldShowIntroductionsLabel]);
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKIntroductionsButtonsCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

- (void)setButtonsContainer:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsContainer);
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsContainer) = a3;
  v3 = a3;
}

- (void)setShouldShowIntroductionsLabel:(BOOL)a3
{
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_shouldShowIntroductionsLabel) = a3;
  v3 = self;
  sub_19082A2FC();
}

- (void)layoutSubviewsForAlignmentContents
{
  v2 = self;
  CKIntroductionsButtonsCell.layoutSubviewsForAlignmentContents()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v6 = CKIntroductionsButtonsCell.sizeThatFits(_:)(__PAIR128__(v5, *&width));

  v7 = v6.width;
  height = v6.height;
  result.height = height;
  result.width = v7;
  return result;
}

- (CKIntroductionsButtonsCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsLeadingConstraint) = 0;
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsTrailingConstraint) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end