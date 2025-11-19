@interface SeparatorSupplementaryView
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SeparatorSupplementaryView

- (void)traitCollectionDidChange:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v6.value.super.isa = a3;
  SeparatorSupplementaryView.traitCollectionDidChange(_:)(v6);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end