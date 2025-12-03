@interface GKCollectionColumnDividerView
- (GKCollectionColumnDividerView)initWithFrame:(CGRect)frame;
@end

@implementation GKCollectionColumnDividerView

- (GKCollectionColumnDividerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GKCollectionColumnDividerView;
  v3 = [(GKCollectionColumnDividerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.25];
    [(GKCollectionColumnDividerView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end