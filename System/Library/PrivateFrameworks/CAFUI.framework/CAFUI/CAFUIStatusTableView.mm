@interface CAFUIStatusTableView
- (CAFUIStatusTableView)initWithFrame:(CGRect)frame;
- (void)update;
@end

@implementation CAFUIStatusTableView

- (CAFUIStatusTableView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CAFUIStatusTableView;
  return [(CAFUIStatusTableView *)&v4 initWithFrame:0 style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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