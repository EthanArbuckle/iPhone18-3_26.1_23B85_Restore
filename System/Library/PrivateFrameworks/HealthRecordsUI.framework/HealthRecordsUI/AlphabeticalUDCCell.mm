@interface AlphabeticalUDCCell
- (void)awakeFromNib;
- (void)showDetailViewController:(id)controller viewController:(id)viewController;
@end

@implementation AlphabeticalUDCCell

- (void)awakeFromNib
{
  selfCopy = self;
  sub_1D10D8B20();
}

- (void)showDetailViewController:(id)controller viewController:(id)viewController
{
  if (controller)
  {
    viewControllerCopy = viewController;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    viewControllerCopy2 = viewController;
    selfCopy2 = self;
  }

  sub_1D10DA1CC(v10, viewController);

  sub_1D10DD0D8(v10, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D10DCFE8);
}

@end