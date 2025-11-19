@interface HPSUISpatialProfileSingleStepBottomContainer
- (OBBoldTrayButton)continueButton;
- (OBHeaderView)infoView;
- (UILabel)learnMoreView;
- (UIScrollView)scrollView;
- (UIStackView)stackContainerView;
- (UIView)buttonTray;
- (UIView)spacerViewFirst;
- (UIView)spacerViewSecond;
- (UIVisualEffectView)buttonTrayEffectView;
- (_TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)a3;
- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4;
- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4 animateInAlongSide:(id *)a5 animateOutAlongSide:(id *)a6 animatedCompletion:(id)a7;
- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4 completionAction:(id)a5;
- (void)showContinueButton:(BOOL)a3;
- (void)updateContinueButtonActionWithTarget:(id)a3 selector:(SEL)a4;
- (void)updateContinueButtonTitleWithTitle:(id)a3;
@end

@implementation HPSUISpatialProfileSingleStepBottomContainer

- (OBHeaderView)infoView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B5B58();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (UIView)spacerViewFirst
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B5C24();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (UILabel)learnMoreView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B5CF0();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (UIView)spacerViewSecond
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B5DBC();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (UIVisualEffectView)buttonTrayEffectView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B5E88();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (OBBoldTrayButton)continueButton
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B5F54();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (UIView)buttonTray
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B6020();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (UIStackView)stackContainerView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B60EC();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (UIScrollView)scrollView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2B61B8();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (_TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)a3
{
  v5 = _Block_copy(a3);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  return HPSUISpatialProfileSingleStepBottomContainer.init(withBudsInEarString:)(sub_1AC2BBA80, v3);
}

- (void)showContinueButton:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1AC30910C();
  sub_1AC2B71CC(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (void)updateContinueButtonActionWithTarget:(id)a3 selector:(SEL)a4
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1AC2B7370(a3, a4);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

- (void)updateContinueButtonTitleWithTitle:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC30A92C();
  sub_1AC2B7890();

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2B7A94(a3, a4);
  MEMORY[0x1E69E5920](self);
}

- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4 completionAction:(id)a5
{
  v9 = _Block_copy(a5);
  MEMORY[0x1E69E5928](self);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v5 = sub_1AC2BBA88;
  }

  else
  {
    v5 = 0;
  }

  sub_1AC2B7B74(a3, a4);
  sub_1AC238B8C(v5);
  MEMORY[0x1E69E5920](self);
}

- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4 animateInAlongSide:(id *)a5 animateOutAlongSide:(id *)a6 animatedCompletion:(id)a7
{
  v15 = _Block_copy(a7);
  MEMORY[0x1E69E5928](self);
  if (v15)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v15;
    v8 = sub_1AC2BBA88;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  sub_1AC2B7D3C(a3, a4, a5, a6, v8, v9);
  sub_1AC238B8C(v8);
  MEMORY[0x1E69E5920](self);
}

@end