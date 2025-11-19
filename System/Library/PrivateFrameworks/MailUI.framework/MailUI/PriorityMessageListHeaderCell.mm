@interface PriorityMessageListHeaderCell
- (void)prepareForReuse;
@end

@implementation PriorityMessageListHeaderCell

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  PriorityMessageListHeaderCell.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

@end