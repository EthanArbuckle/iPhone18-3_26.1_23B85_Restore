@interface GKCollectionColumnDividerView
- (GKCollectionColumnDividerView)initWithFrame:(CGRect)a3;
@end

@implementation GKCollectionColumnDividerView

- (GKCollectionColumnDividerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GKCollectionColumnDividerView;
  v3 = [(GKCollectionColumnDividerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.25];
    [(GKCollectionColumnDividerView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end