@interface CKAutomaticTranslationIndicatorCell
+ (CKTranscriptLegibilityLabel)translationTitleLabel;
+ (UIButton)showHideButton;
+ (id)reuseIdentifier;
- (BOOL)shouldShowTitleLabel;
- (BOOL)shouldShowToggleButton;
- (CKAutomaticTranslationIndicatorCellDelegate)delegate;
- (double)heightThatFits:(CGSize)fits;
- (void)activateConstraintsForButtonOnly;
- (void)activateConstraintsForLabelAndButton;
- (void)activateConstraintsForLabelOnly;
- (void)addButtonMenuWithCompletionHandler:(id)handler;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)removeButtonMenu;
- (void)removeLabelView;
- (void)setButtonAttributedString:(id)string;
- (void)setDelegate:(id)delegate;
- (void)setProgressIndicator:(id)indicator;
- (void)setTitleAttributedString:(id)string;
- (void)setTitleLabel:(id)label;
- (void)setTitleToButtonVerticalConstraint:(id)constraint;
- (void)setToggleButton:(id)button;
- (void)updateButtonMenu;
- (void)updateContentConstraints;
- (void)updateTitleToButtonVerticalConstraint;
@end

@implementation CKAutomaticTranslationIndicatorCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18.receiver = self;
    v18.super_class = CKAutomaticTranslationIndicatorCell;
    [(CKTranscriptCell *)&v18 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
    titleAttributedText = [itemCopy titleAttributedText];
    [(CKAutomaticTranslationIndicatorCell *)self setTitleAttributedString:titleAttributedText];

    buttonAttributedText = [itemCopy buttonAttributedText];
    [(CKAutomaticTranslationIndicatorCell *)self setButtonAttributedString:buttonAttributedText];

    [itemCopy languageDownloadProgress];
    [(CKAutomaticTranslationIndicatorCell *)self setLanguageDownloadProgress:?];
    [(CKAutomaticTranslationIndicatorCell *)self updateContentConstraints];
    imAutomaticTranslationIndicatorChatItem = [itemCopy imAutomaticTranslationIndicatorChatItem];
    if ([imAutomaticTranslationIndicatorChatItem translationLanguageStatus]== 3)
    {
      imAutomaticTranslationIndicatorChatItem2 = [itemCopy imAutomaticTranslationIndicatorChatItem];
      -[CKAutomaticTranslationIndicatorCell setButtonPresentsMenu:](self, "setButtonPresentsMenu:", [imAutomaticTranslationIndicatorChatItem2 userTranslationLanguageStatus] == 3);
    }

    else
    {
      [(CKAutomaticTranslationIndicatorCell *)self setButtonPresentsMenu:0];
    }
  }

  else
  {
    imAutomaticTranslationIndicatorChatItem = IMLogHandleForCategory();
    if (os_log_type_enabled(imAutomaticTranslationIndicatorChatItem, OS_LOG_TYPE_ERROR))
    {
      [CKAutomaticTranslationIndicatorCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

+ (id)reuseIdentifier
{
  v2 = sub_190D56ED0();

  return v2;
}

+ (CKTranscriptLegibilityLabel)translationTitleLabel
{
  initWithFrame_ = [objc_allocWithZone(CKTranscriptLegibilityLabel) initWithFrame_];
  [initWithFrame_ setNumberOfLines_];
  v3 = initWithFrame_;
  [v3 setContentMode_];
  [v3 setTextAlignment_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  return v3;
}

- (CKAutomaticTranslationIndicatorCellDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();

  [(CKAutomaticTranslationIndicatorCell *)self updateButtonMenu];
}

+ (UIButton)showHideButton
{
  v2 = sub_19095C10C();

  return v2;
}

- (void)setTitleLabel:(id)label
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleLabel);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleLabel) = label;
  labelCopy = label;
}

- (void)setToggleButton:(id)button
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_toggleButton);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_toggleButton) = button;
  buttonCopy = button;
}

- (void)setProgressIndicator:(id)indicator
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_progressIndicator);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_progressIndicator) = indicator;
  indicatorCopy = indicator;
}

- (void)setTitleToButtonVerticalConstraint:(id)constraint
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleToButtonVerticalConstraint);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleToButtonVerticalConstraint) = constraint;
  constraintCopy = constraint;
}

- (BOOL)shouldShowTitleLabel
{
  selfCopy = self;
  titleAttributedString = [(CKAutomaticTranslationIndicatorCell *)selfCopy titleAttributedString];
  if (titleAttributedString)
  {

    titleAttributedString2 = [(CKAutomaticTranslationIndicatorCell *)selfCopy titleAttributedString];
    if (titleAttributedString2)
    {
      v5 = titleAttributedString2;
      v6 = [(NSAttributedString *)titleAttributedString2 length];

      LOBYTE(titleAttributedString2) = v6 > 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    LOBYTE(titleAttributedString2) = 0;
  }

  return titleAttributedString2;
}

- (BOOL)shouldShowToggleButton
{
  buttonAttributedString = [(CKAutomaticTranslationIndicatorCell *)self buttonAttributedString];
  v3 = buttonAttributedString;
  if (buttonAttributedString)
  {
  }

  return v3 != 0;
}

- (void)setTitleAttributedString:(id)string
{
  v4 = OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString;
  v5 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString) = string;
  stringCopy = string;
  selfCopy = self;

  titleLabel = [(CKAutomaticTranslationIndicatorCell *)selfCopy titleLabel];
  v8 = *(self + v4);
  [(CKTranscriptLegibilityLabel *)titleLabel setAttributedText:v8];
}

- (void)setButtonAttributedString:(id)string
{
  v4 = OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString;
  v5 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString) = string;
  stringCopy = string;
  selfCopy = self;

  toggleButton = [(CKAutomaticTranslationIndicatorCell *)selfCopy toggleButton];
  v8 = *(self + v4);
  [(UIButton *)toggleButton setAttributedTitle:v8 forState:0];
}

- (void)activateConstraintsForLabelOnly
{
  selfCopy = self;
  sub_190958FBC();
}

- (void)activateConstraintsForButtonOnly
{
  selfCopy = self;
  sub_19095936C();
}

- (void)activateConstraintsForLabelAndButton
{
  selfCopy = self;
  sub_190959724();
}

- (void)updateButtonMenu
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_190D572E0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_190D572A0();
  selfCopy = self;
  v8 = sub_190D57290();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_190857E08(0, 0, v5, &unk_190DE09D8, v9);
}

- (void)updateContentConstraints
{
  selfCopy = self;
  sub_19095A6B8();
}

- (void)addButtonMenuWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_190D572E0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_190DE09A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_190DD75C0;
  v12[5] = v11;
  selfCopy = self;
  sub_190C798DC(0, 0, v7, &unk_190DD75C8, v12);
}

- (void)removeButtonMenu
{
  selfCopy = self;
  toggleButton = [(CKAutomaticTranslationIndicatorCell *)selfCopy toggleButton];
  [(UIButton *)toggleButton setMenu:0];
}

- (void)updateTitleToButtonVerticalConstraint
{
  selfCopy = self;
  titleToButtonVerticalConstraint = [(CKAutomaticTranslationIndicatorCell *)selfCopy titleToButtonVerticalConstraint];
  if (titleToButtonVerticalConstraint)
  {

    sharedBehaviors = [objc_opt_self() sharedBehaviors];
    if (!sharedBehaviors)
    {
      __break(1u);
      return;
    }

    v4 = sharedBehaviors;
    [(CKAutomaticTranslationIndicatorCell *)sharedBehaviors smallTranscriptSpace];
    v6 = v5;
    titleToButtonVerticalConstraint2 = [(CKAutomaticTranslationIndicatorCell *)selfCopy titleToButtonVerticalConstraint];
    [(NSLayoutConstraint *)titleToButtonVerticalConstraint2 setConstant:v6];

    v8 = v4;
  }

  else
  {
    v8 = selfCopy;
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v4.receiver = self;
  v4.super_class = CKAutomaticTranslationIndicatorCell;
  selfCopy = self;
  [(CKEditableCollectionViewCell *)&v4 layoutSubviewsForAlignmentContents];
  v3 = [(CKAutomaticTranslationIndicatorCell *)selfCopy containerView:v4.receiver];
  [(CKEditableCollectionViewCell *)selfCopy contentAlignmentRect];
  [(UIView *)v3 setFrame:?];
}

- (double)heightThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_19095BD90(width, height);
  v7 = v6;

  return v7;
}

- (void)removeLabelView
{
  selfCopy = self;
  titleLabel = [(CKAutomaticTranslationIndicatorCell *)selfCopy titleLabel];
  [(CKTranscriptLegibilityLabel *)titleLabel removeFromSuperview];

  toggleButton = [(CKAutomaticTranslationIndicatorCell *)selfCopy toggleButton];
  [(UIButton *)toggleButton removeFromSuperview];
}

@end