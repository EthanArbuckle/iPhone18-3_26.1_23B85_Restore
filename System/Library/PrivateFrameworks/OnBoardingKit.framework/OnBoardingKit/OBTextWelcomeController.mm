@interface OBTextWelcomeController
- (BOOL)shouldInlineButtonTray;
- (OBTextWelcomeController)initWithTitle:(id)title;
- (OBTextWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (OBTextWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (UIStackView)stackView;
- (void)addBulletedListItemWithTitle:(id)title description:(id)description accessoryButton:(id)button;
- (void)addSectionWithHeader:(id)header content:(id)content accessoryButton:(id)button;
- (void)loadView;
@end

@implementation OBTextWelcomeController

- (OBTextWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v7.receiver = self;
  v7.super_class = OBTextWelcomeController;
  return [(OBWelcomeController *)&v7 initWithTitle:title detailText:text icon:icon contentLayout:layout];
}

- (OBTextWelcomeController)initWithTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = OBTextWelcomeController;
  return [(OBWelcomeController *)&v4 initWithTitle:title detailText:0 icon:0 contentLayout:2];
}

- (OBTextWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v7.receiver = self;
  v7.super_class = OBTextWelcomeController;
  return [(OBWelcomeController *)&v7 initWithTitle:title detailText:text symbolName:name contentLayout:layout];
}

- (void)loadView
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = OBTextWelcomeController;
  [(OBWelcomeController *)&v31 loadView];
  stackView = [(OBTextWelcomeController *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(OBTextWelcomeController *)self stackView];
  [stackView2 setAxis:1];

  stackView3 = [(OBTextWelcomeController *)self stackView];
  [stackView3 setSpacing:22.0];

  contentView = [(OBWelcomeController *)self contentView];
  stackView4 = [(OBTextWelcomeController *)self stackView];
  [contentView addSubview:stackView4];

  v21 = MEMORY[0x1E696ACD8];
  stackView5 = [(OBTextWelcomeController *)self stackView];
  topAnchor = [stackView5 topAnchor];
  contentView2 = [(OBWelcomeController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v26;
  stackView6 = [(OBTextWelcomeController *)self stackView];
  leftAnchor = [stackView6 leftAnchor];
  contentView3 = [(OBWelcomeController *)self contentView];
  leftAnchor2 = [contentView3 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v32[1] = v20;
  stackView7 = [(OBTextWelcomeController *)self stackView];
  rightAnchor = [stackView7 rightAnchor];
  contentView4 = [(OBWelcomeController *)self contentView];
  rightAnchor2 = [contentView4 rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v32[2] = v11;
  stackView8 = [(OBTextWelcomeController *)self stackView];
  bottomAnchor = [stackView8 bottomAnchor];
  contentView5 = [(OBWelcomeController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [v21 activateConstraints:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)addSectionWithHeader:(id)header content:(id)content accessoryButton:(id)button
{
  buttonCopy = button;
  contentCopy = content;
  headerCopy = header;
  v10 = [[OBTextSectionView alloc] initWithHeader:headerCopy content:contentCopy];

  if (buttonCopy)
  {
    [(OBTextSectionView *)v10 addAccessoryButton:buttonCopy];
  }

  stackView = [(OBTextWelcomeController *)self stackView];
  [stackView addArrangedSubview:v10];

  [(OBTextWelcomeController *)self setCurrentBulletedList:0];
}

- (void)addBulletedListItemWithTitle:(id)title description:(id)description accessoryButton:(id)button
{
  buttonCopy = button;
  descriptionCopy = description;
  titleCopy = title;
  currentBulletedList = [(OBTextWelcomeController *)self currentBulletedList];

  if (!currentBulletedList)
  {
    v12 = [OBTextBulletedList alloc];
    v13 = [(OBBulletedList *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    stackView = [(OBTextWelcomeController *)self stackView];
    [stackView addArrangedSubview:v13];

    [(OBTextWelcomeController *)self setCurrentBulletedList:v13];
  }

  currentBulletedList2 = [(OBTextWelcomeController *)self currentBulletedList];
  [currentBulletedList2 addItemWithTitle:titleCopy description:descriptionCopy accessoryButton:buttonCopy];
}

- (UIStackView)stackView
{
  stackView = self->_stackView;
  if (!stackView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF90]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_stackView;
    self->_stackView = v5;

    stackView = self->_stackView;
  }

  v7 = stackView;

  return v7;
}

- (BOOL)shouldInlineButtonTray
{
  v5.receiver = self;
  v5.super_class = OBTextWelcomeController;
  if ([(OBWelcomeController *)&v5 contentViewUnderButtonTray])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = OBTextWelcomeController;
  return [(OBWelcomeController *)&v4 shouldInlineButtonTray];
}

@end