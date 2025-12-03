@interface SeparatorSupplementaryView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SeparatorSupplementaryView

- (void)traitCollectionDidChange:(id)change
{
  MEMORY[0x277D82BE0](change);
  MEMORY[0x277D82BE0](self);
  v6.value.super.isa = change;
  SeparatorSupplementaryView.traitCollectionDidChange(_:)(v6);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](change);
}

@end