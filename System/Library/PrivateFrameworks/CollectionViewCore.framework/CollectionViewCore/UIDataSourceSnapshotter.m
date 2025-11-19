@interface UIDataSourceSnapshotter
@end

@implementation UIDataSourceSnapshotter

uint64_t __51___UIDataSourceSnapshotter_snapshotterForSnapshot___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 == -1)
  {
    return [v2 numberOfSections];
  }

  else
  {
    return [v2 numberOfItemsInSection:a2];
  }
}

@end