@interface OBTextWelcomeController
- (BOOL)shouldInlineButtonTray;
- (OBTextWelcomeController)initWithTitle:(id)a3;
- (OBTextWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (OBTextWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (UIStackView)stackView;
- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 accessoryButton:(id)a5;
- (void)addSectionWithHeader:(id)a3 content:(id)a4 accessoryButton:(id)a5;
- (void)loadView;
@end

@implementation OBTextWelcomeController

- (OBTextWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v7.receiver = self;
  v7.super_class = OBTextWelcomeController;
  return [(OBWelcomeController *)&v7 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:a6];
}

- (OBTextWelcomeController)initWithTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBTextWelcomeController;
  return [(OBWelcomeController *)&v4 initWithTitle:a3 detailText:0 icon:0 contentLayout:2];
}

- (OBTextWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v7.receiver = self;
  v7.super_class = OBTextWelcomeController;
  return [(OBWelcomeController *)&v7 initWithTitle:a3 detailText:a4 symbolName:a5 contentLayout:a6];
}

- (void)loadView
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = OBTextWelcomeController;
  [(OBWelcomeController *)&v31 loadView];
  v3 = [(OBTextWelcomeController *)self stackView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(OBTextWelcomeController *)self stackView];
  [v4 setAxis:1];

  v5 = [(OBTextWelcomeController *)self stackView];
  [v5 setSpacing:22.0];

  v6 = [(OBWelcomeController *)self contentView];
  v7 = [(OBTextWelcomeController *)self stackView];
  [v6 addSubview:v7];

  v21 = MEMORY[0x1E696ACD8];
  v30 = [(OBTextWelcomeController *)self stackView];
  v28 = [v30 topAnchor];
  v29 = [(OBWelcomeController *)self contentView];
  v27 = [v29 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [(OBTextWelcomeController *)self stackView];
  v23 = [v25 leftAnchor];
  v24 = [(OBWelcomeController *)self contentView];
  v22 = [v24 leftAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v32[1] = v20;
  v19 = [(OBTextWelcomeController *)self stackView];
  v8 = [v19 rightAnchor];
  v9 = [(OBWelcomeController *)self contentView];
  v10 = [v9 rightAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v32[2] = v11;
  v12 = [(OBTextWelcomeController *)self stackView];
  v13 = [v12 bottomAnchor];
  v14 = [(OBWelcomeController *)self contentView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v32[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [v21 activateConstraints:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)addSectionWithHeader:(id)a3 content:(id)a4 accessoryButton:(id)a5
{
  v12 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[OBTextSectionView alloc] initWithHeader:v9 content:v8];

  if (v12)
  {
    [(OBTextSectionView *)v10 addAccessoryButton:v12];
  }

  v11 = [(OBTextWelcomeController *)self stackView];
  [v11 addArrangedSubview:v10];

  [(OBTextWelcomeController *)self setCurrentBulletedList:0];
}

- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 accessoryButton:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(OBTextWelcomeController *)self currentBulletedList];

  if (!v11)
  {
    v12 = [OBTextBulletedList alloc];
    v13 = [(OBBulletedList *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v14 = [(OBTextWelcomeController *)self stackView];
    [v14 addArrangedSubview:v13];

    [(OBTextWelcomeController *)self setCurrentBulletedList:v13];
  }

  v15 = [(OBTextWelcomeController *)self currentBulletedList];
  [v15 addItemWithTitle:v10 description:v9 accessoryButton:v8];
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