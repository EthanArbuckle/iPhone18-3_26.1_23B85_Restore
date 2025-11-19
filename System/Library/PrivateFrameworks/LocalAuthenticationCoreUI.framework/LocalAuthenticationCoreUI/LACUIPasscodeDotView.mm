@interface LACUIPasscodeDotView
- (LACUIPasscodeDotView)init;
- (void)_setup;
- (void)drawRect:(CGRect)a3;
- (void)showConcealed;
- (void)showEmpty;
- (void)showRevealed:(id)a3;
@end

@implementation LACUIPasscodeDotView

- (LACUIPasscodeDotView)init
{
  v5.receiver = self;
  v5.super_class = LACUIPasscodeDotView;
  v2 = [(LACUIPasscodeDotView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LACUIPasscodeDotView *)v2 _setup];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  v6.receiver = self;
  v6.super_class = LACUIPasscodeDotView;
  [(LACUIPasscodeDotView *)&v6 drawRect:a3.origin.x, a3.origin.y, a3.size.width];
  v5 = [(LACUIPasscodeDotView *)self layer];
  [v5 setCornerRadius:height * 0.5];
}

- (void)showConcealed
{
  v3 = [(LACUIPasscodeDotView *)self layer];
  [v3 setBorderWidth:0.0];

  v4 = [(LACUIPasscodeDotView *)self _concealedColor];
  v5 = [v4 CGColor];
  v6 = [(LACUIPasscodeDotView *)self layer];
  [v6 setBorderColor:v5];

  v7 = [(LACUIPasscodeDotView *)self _concealedColor];
  v8 = [v7 CGColor];
  v9 = [(LACUIPasscodeDotView *)self layer];
  [v9 setBackgroundColor:v8];

  characterLabel = self->_characterLabel;

  [(UILabel *)characterLabel setText:&stru_28681D590];
}

- (void)showEmpty
{
  v3 = [(LACUIPasscodeDotView *)self layer];
  [v3 setBorderWidth:1.25];

  v4 = [(LACUIPasscodeDotView *)self _emptyBorderColor];
  v5 = [v4 CGColor];
  v6 = [(LACUIPasscodeDotView *)self layer];
  [v6 setBorderColor:v5];

  v7 = [MEMORY[0x277D75348] clearColor];
  v8 = [v7 CGColor];
  v9 = [(LACUIPasscodeDotView *)self layer];
  [v9 setBackgroundColor:v8];

  characterLabel = self->_characterLabel;

  [(UILabel *)characterLabel setText:&stru_28681D590];
}

- (void)showRevealed:(id)a3
{
  v11 = a3;
  if ([v11 length] != 1)
  {
    [LACUIPasscodeDotView showRevealed:];
  }

  v4 = [(LACUIPasscodeDotView *)self layer];
  [v4 setBorderWidth:0.0];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [v5 CGColor];
  v7 = [(LACUIPasscodeDotView *)self layer];
  [v7 setBorderColor:v6];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [v8 CGColor];
  v10 = [(LACUIPasscodeDotView *)self layer];
  [v10 setBackgroundColor:v9];

  [(UILabel *)self->_characterLabel setText:v11];
}

- (void)_setup
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  characterLabel = self->_characterLabel;
  self->_characterLabel = v3;

  v5 = self->_characterLabel;
  v6 = __30__LACUIPasscodeDotView__setup__block_invoke();
  [(UILabel *)v5 setFont:v6];

  [(LACUIPasscodeDotView *)self addSubview:self->_characterLabel];
  [(UILabel *)self->_characterLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = MEMORY[0x277CCAAD0];
  v8 = [(UILabel *)self->_characterLabel centerXAnchor];
  v9 = [(LACUIPasscodeDotView *)self centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v16[0] = v10;
  v11 = [(UILabel *)self->_characterLabel centerYAnchor];
  v12 = [(LACUIPasscodeDotView *)self centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v7 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

id __30__LACUIPasscodeDotView__setup__block_invoke()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  v1 = [v0 fontDescriptor];
  v13 = *MEMORY[0x277D74338];
  v2 = *MEMORY[0x277D74388];
  v10[0] = *MEMORY[0x277D74398];
  v10[1] = v2;
  v11[0] = &unk_286827178;
  v11[1] = &unk_286827190;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v6 = [v1 fontDescriptorByAddingAttributes:v5];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __41__LACUIPasscodeDotView__emptyBorderColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

@end