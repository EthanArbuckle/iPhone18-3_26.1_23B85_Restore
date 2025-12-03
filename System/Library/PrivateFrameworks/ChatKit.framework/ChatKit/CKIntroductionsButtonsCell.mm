@interface CKIntroductionsButtonsCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKIntroductionsButtonsCell)initWithCoder:(id)coder;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)setButtonsContainer:(id)container;
- (void)setShouldShowIntroductionsLabel:(BOOL)label;
@end

@implementation CKIntroductionsButtonsCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = CKIntroductionsButtonsCell;
    [(CKTranscriptStampCell *)&v15 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
    -[CKIntroductionsButtonsCell setShouldShowIntroductionsLabel:](self, "setShouldShowIntroductionsLabel:", [itemCopy shouldShowIntroductionsLabel]);
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

- (void)setButtonsContainer:(id)container
{
  v4 = *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsContainer);
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsContainer) = container;
  containerCopy = container;
}

- (void)setShouldShowIntroductionsLabel:(BOOL)label
{
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_shouldShowIntroductionsLabel) = label;
  selfCopy = self;
  sub_19082A2FC();
}

- (void)layoutSubviewsForAlignmentContents
{
  selfCopy = self;
  CKIntroductionsButtonsCell.layoutSubviewsForAlignmentContents()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v6 = CKIntroductionsButtonsCell.sizeThatFits(_:)(__PAIR128__(v5, *&width));

  v7 = v6.width;
  height = v6.height;
  result.height = height;
  result.width = v7;
  return result;
}

- (CKIntroductionsButtonsCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsLeadingConstraint) = 0;
  *(&self->super.super.super.super.super.super.super.super.super.isa + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsTrailingConstraint) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end