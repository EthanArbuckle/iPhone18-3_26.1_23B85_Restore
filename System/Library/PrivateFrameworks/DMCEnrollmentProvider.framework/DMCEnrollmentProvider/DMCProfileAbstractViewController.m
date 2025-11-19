@interface DMCProfileAbstractViewController
- (DMCProfileAbstractViewController)init;
- (void)dealloc;
- (void)updateExtendedLayoutIncludesOpaqueBars;
@end

@implementation DMCProfileAbstractViewController

- (DMCProfileAbstractViewController)init
{
  v3.receiver = self;
  v3.super_class = DMCProfileAbstractViewController;
  return [(DMCProfileAbstractViewController *)&v3 init];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCProfileAbstractViewController;
  [(DMCProfileAbstractViewController *)&v4 dealloc];
}

- (void)updateExtendedLayoutIncludesOpaqueBars
{
  v3 = [MEMORY[0x277D3FA48] appearance];
  -[DMCProfileAbstractViewController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [v3 extendedLayoutIncludesOpaqueBars]);
}

@end