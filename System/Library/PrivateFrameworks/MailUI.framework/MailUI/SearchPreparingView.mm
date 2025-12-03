@interface SearchPreparingView
- (void)updateWith:(id)with;
@end

@implementation SearchPreparingView

- (void)updateWith:(id)with
{
  MEMORY[0x277D82BE0](with);
  MEMORY[0x277D82BE0](self);
  sub_214CAAD84(with);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](with);
}

@end