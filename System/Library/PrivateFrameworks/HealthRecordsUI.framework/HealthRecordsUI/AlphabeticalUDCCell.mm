@interface AlphabeticalUDCCell
- (void)awakeFromNib;
- (void)showDetailViewController:(id)a3 viewController:(id)a4;
@end

@implementation AlphabeticalUDCCell

- (void)awakeFromNib
{
  v2 = self;
  sub_1D10D8B20();
}

- (void)showDetailViewController:(id)a3 viewController:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_1D10DA1CC(v10, a4);

  sub_1D10DD0D8(v10, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D10DCFE8);
}

@end