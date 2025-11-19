@interface CKAutomaticTranslationIndicatorCell
+ (CKTranscriptLegibilityLabel)translationTitleLabel;
+ (UIButton)showHideButton;
+ (id)reuseIdentifier;
- (BOOL)shouldShowTitleLabel;
- (BOOL)shouldShowToggleButton;
- (CKAutomaticTranslationIndicatorCellDelegate)delegate;
- (double)heightThatFits:(CGSize)a3;
- (void)activateConstraintsForButtonOnly;
- (void)activateConstraintsForLabelAndButton;
- (void)activateConstraintsForLabelOnly;
- (void)addButtonMenuWithCompletionHandler:(id)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)removeButtonMenu;
- (void)removeLabelView;
- (void)setButtonAttributedString:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setProgressIndicator:(id)a3;
- (void)setTitleAttributedString:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)setTitleToButtonVerticalConstraint:(id)a3;
- (void)setToggleButton:(id)a3;
- (void)updateButtonMenu;
- (void)updateContentConstraints;
- (void)updateTitleToButtonVerticalConstraint;
@end

@implementation CKAutomaticTranslationIndicatorCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18.receiver = self;
    v18.super_class = CKAutomaticTranslationIndicatorCell;
    [(CKTranscriptCell *)&v18 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
    v14 = [v12 titleAttributedText];
    [(CKAutomaticTranslationIndicatorCell *)self setTitleAttributedString:v14];

    v15 = [v12 buttonAttributedText];
    [(CKAutomaticTranslationIndicatorCell *)self setButtonAttributedString:v15];

    [v12 languageDownloadProgress];
    [(CKAutomaticTranslationIndicatorCell *)self setLanguageDownloadProgress:?];
    [(CKAutomaticTranslationIndicatorCell *)self updateContentConstraints];
    v16 = [v12 imAutomaticTranslationIndicatorChatItem];
    if ([v16 translationLanguageStatus]== 3)
    {
      v17 = [v12 imAutomaticTranslationIndicatorChatItem];
      -[CKAutomaticTranslationIndicatorCell setButtonPresentsMenu:](self, "setButtonPresentsMenu:", [v17 userTranslationLanguageStatus] == 3);
    }

    else
    {
      [(CKAutomaticTranslationIndicatorCell *)self setButtonPresentsMenu:0];
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
  v2 = [objc_allocWithZone(CKTranscriptLegibilityLabel) initWithFrame_];
  [v2 setNumberOfLines_];
  v3 = v2;
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

- (void)setDelegate:(id)a3
{
  swift_unknownObjectWeakAssign();

  [(CKAutomaticTranslationIndicatorCell *)self updateButtonMenu];
}

+ (UIButton)showHideButton
{
  v2 = sub_19095C10C();

  return v2;
}

- (void)setTitleLabel:(id)a3
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleLabel);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleLabel) = a3;
  v3 = a3;
}

- (void)setToggleButton:(id)a3
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_toggleButton);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_toggleButton) = a3;
  v3 = a3;
}

- (void)setProgressIndicator:(id)a3
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_progressIndicator);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_progressIndicator) = a3;
  v3 = a3;
}

- (void)setTitleToButtonVerticalConstraint:(id)a3
{
  v4 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleToButtonVerticalConstraint);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleToButtonVerticalConstraint) = a3;
  v3 = a3;
}

- (BOOL)shouldShowTitleLabel
{
  v2 = self;
  v3 = [(CKAutomaticTranslationIndicatorCell *)v2 titleAttributedString];
  if (v3)
  {

    v4 = [(CKAutomaticTranslationIndicatorCell *)v2 titleAttributedString];
    if (v4)
    {
      v5 = v4;
      v6 = [(NSAttributedString *)v4 length];

      LOBYTE(v4) = v6 > 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldShowToggleButton
{
  v2 = [(CKAutomaticTranslationIndicatorCell *)self buttonAttributedString];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

- (void)setTitleAttributedString:(id)a3
{
  v4 = OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString;
  v5 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString) = a3;
  v6 = a3;
  v9 = self;

  v7 = [(CKAutomaticTranslationIndicatorCell *)v9 titleLabel];
  v8 = *(self + v4);
  [(CKTranscriptLegibilityLabel *)v7 setAttributedText:v8];
}

- (void)setButtonAttributedString:(id)a3
{
  v4 = OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString;
  v5 = *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString);
  *(self + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString) = a3;
  v6 = a3;
  v9 = self;

  v7 = [(CKAutomaticTranslationIndicatorCell *)v9 toggleButton];
  v8 = *(self + v4);
  [(UIButton *)v7 setAttributedTitle:v8 forState:0];
}

- (void)activateConstraintsForLabelOnly
{
  v2 = self;
  sub_190958FBC();
}

- (void)activateConstraintsForButtonOnly
{
  v2 = self;
  sub_19095936C();
}

- (void)activateConstraintsForLabelAndButton
{
  v2 = self;
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
  v7 = self;
  v8 = sub_190D57290();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_190857E08(0, 0, v5, &unk_190DE09D8, v9);
}

- (void)updateContentConstraints
{
  v2 = self;
  sub_19095A6B8();
}

- (void)addButtonMenuWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_190C798DC(0, 0, v7, &unk_190DD75C8, v12);
}

- (void)removeButtonMenu
{
  v3 = self;
  v2 = [(CKAutomaticTranslationIndicatorCell *)v3 toggleButton];
  [(UIButton *)v2 setMenu:0];
}

- (void)updateTitleToButtonVerticalConstraint
{
  v9 = self;
  v2 = [(CKAutomaticTranslationIndicatorCell *)v9 titleToButtonVerticalConstraint];
  if (v2)
  {

    v3 = [objc_opt_self() sharedBehaviors];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [(CKAutomaticTranslationIndicatorCell *)v3 smallTranscriptSpace];
    v6 = v5;
    v7 = [(CKAutomaticTranslationIndicatorCell *)v9 titleToButtonVerticalConstraint];
    [(NSLayoutConstraint *)v7 setConstant:v6];

    v8 = v4;
  }

  else
  {
    v8 = v9;
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v4.receiver = self;
  v4.super_class = CKAutomaticTranslationIndicatorCell;
  v2 = self;
  [(CKEditableCollectionViewCell *)&v4 layoutSubviewsForAlignmentContents];
  v3 = [(CKAutomaticTranslationIndicatorCell *)v2 containerView:v4.receiver];
  [(CKEditableCollectionViewCell *)v2 contentAlignmentRect];
  [(UIView *)v3 setFrame:?];
}

- (double)heightThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_19095BD90(width, height);
  v7 = v6;

  return v7;
}

- (void)removeLabelView
{
  v4 = self;
  v2 = [(CKAutomaticTranslationIndicatorCell *)v4 titleLabel];
  [(CKTranscriptLegibilityLabel *)v2 removeFromSuperview];

  v3 = [(CKAutomaticTranslationIndicatorCell *)v4 toggleButton];
  [(UIButton *)v3 removeFromSuperview];
}

@end