@interface CAFUIStatusTableView
- (CAFUIStatusTableView)initWithFrame:(CGRect)a3;
- (void)update;
@end

@implementation CAFUIStatusTableView

- (CAFUIStatusTableView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CAFUIStatusTableView;
  return [(CAFUIStatusTableView *)&v4 initWithFrame:0 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)update
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CAFUIStatusTableView_update__block_invoke;
  block[3] = &unk_278D495E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end