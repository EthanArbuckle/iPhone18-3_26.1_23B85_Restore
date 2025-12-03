@interface MCUIViewController
- (MCUIViewController)init;
- (void)dealloc;
- (void)updateExtendedLayoutIncludesOpaqueBars;
@end

@implementation MCUIViewController

- (MCUIViewController)init
{
  v3.receiver = self;
  v3.super_class = MCUIViewController;
  return [(MCUIViewController *)&v3 init];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCUIViewController;
  [(MCUIViewController *)&v4 dealloc];
}

- (void)updateExtendedLayoutIncludesOpaqueBars
{
  appearance = [MEMORY[0x277D3FA48] appearance];
  -[MCUIViewController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [appearance extendedLayoutIncludesOpaqueBars]);
}

@end