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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCUIViewController;
  [(MCUIViewController *)&v4 dealloc];
}

- (void)updateExtendedLayoutIncludesOpaqueBars
{
  v3 = [MEMORY[0x277D3FA48] appearance];
  -[MCUIViewController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [v3 extendedLayoutIncludesOpaqueBars]);
}

@end