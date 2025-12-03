@interface CDPRecoveryKeyCreateHeaderView
- (CDPRecoveryKeyCreateHeaderView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)layoutSubviews;
@end

@implementation CDPRecoveryKeyCreateHeaderView

- (CDPRecoveryKeyCreateHeaderView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v35.receiver = self;
  v35.super_class = CDPRecoveryKeyCreateHeaderView;
  v5 = [(PSKeychainSyncHeaderView *)&v35 initWithSpecifier:specifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277D3FC08];
    v8 = *(&v5->super.super.super.super.isa + v7);
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [v8 setTextColor:_labelColor];

    v10 = *MEMORY[0x277D3FC00];
    v11 = *(&v6->super.super.super.super.isa + v10);
    _labelColor2 = [MEMORY[0x277D75348] _labelColor];
    [v11 setTextColor:_labelColor2];

    v13 = *(&v6->super.super.super.super.isa + v7);
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v14 = getBFFStyleClass_softClass_0;
    v40 = getBFFStyleClass_softClass_0;
    if (!getBFFStyleClass_softClass_0)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __getBFFStyleClass_block_invoke_0;
      v36[3] = &unk_278E2BA40;
      v36[4] = &v37;
      __getBFFStyleClass_block_invoke_0(v36);
      v14 = v38[3];
    }

    v15 = v14;
    _Block_object_dispose(&v37, 8);
    sharedStyle = [v14 sharedStyle];
    headerTitleFont = [sharedStyle headerTitleFont];
    [v13 setFont:headerTitleFont];

    v18 = *(&v6->super.super.super.super.isa + v10);
    v19 = MEMORY[0x277D74300];
    v20 = *MEMORY[0x277D76918];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    v23 = [v19 preferredFontForTextStyle:v20 compatibleWithTraitCollection:traitCollection];
    [v18 setFont:v23];

    [*(&v6->super.super.super.super.isa + v7) setTextAlignment:1];
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(CDPRecoveryKeyCreateHeaderView *)v6 setBackgroundColor:_systemBackgroundColor];

    if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
    {
      [*(&v6->super.super.super.super.isa + v7) setTextAlignment:4];
      [*(&v6->super.super.super.super.isa + v10) setTextAlignment:4];
      v25 = MEMORY[0x277D74310];
      v26 = *MEMORY[0x277D76A20];
      traitCollection2 = [(CDPRecoveryKeyCreateHeaderView *)v6 traitCollection];
      v28 = [v25 preferredFontDescriptorWithTextStyle:v26 compatibleWithTraitCollection:traitCollection2];

      v29 = MEMORY[0x277D74300];
      v30 = [v28 fontDescriptorWithSymbolicTraits:2];
      v31 = [v29 fontWithDescriptor:v30 size:0.0];
      [*(&v6->super.super.super.super.isa + v7) setFont:v31];

      v32 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:0.0];
      [*(&v6->super.super.super.super.isa + v10) setFont:v32];

      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [*(&v6->super.super.super.super.isa + v10) setTextColor:secondaryLabelColor];
    }
  }

  return v6;
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  v5.receiver = self;
  v5.super_class = CDPRecoveryKeyCreateHeaderView;
  [(PSKeychainSyncHeaderView *)&v5 preferredHeightForWidth:view inTableView:width];
  if (result < 150.0)
  {
    return 150.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CDPRecoveryKeyCreateHeaderView;
  [(PSKeychainSyncHeaderView *)&v7 layoutSubviews];
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v3 = *MEMORY[0x277D3FC08];
    [*(&self->super.super.super.super.isa + v3) frame];
    [*(&self->super.super.super.super.isa + v3) setFrame:v4 + 8.0];
    v5 = *MEMORY[0x277D3FC00];
    [*(&self->super.super.super.super.isa + v5) frame];
    [*(&self->super.super.super.super.isa + v5) setFrame:v6 + 8.0];
  }
}

@end