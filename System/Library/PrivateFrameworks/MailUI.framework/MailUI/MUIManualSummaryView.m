@interface MUIManualSummaryView
- (void)didTapButton;
- (void)updateConstraints;
- (void)updateTextView;
@end

@implementation MUIManualSummaryView

- (void)updateConstraints
{
  MEMORY[0x277D82BE0](self);
  ManualSummaryView.updateConstraints()();
  MEMORY[0x277D82BD8](self);
}

- (void)didTapButton
{
  MEMORY[0x277D82BE0](self);
  sub_214BC81A8();
  MEMORY[0x277D82BD8](self);
}

- (void)updateTextView
{
  MEMORY[0x277D82BE0](self);
  sub_214BCED7C();
  MEMORY[0x277D82BD8](self);
}

@end