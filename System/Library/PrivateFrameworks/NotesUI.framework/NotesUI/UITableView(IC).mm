@interface UITableView(IC)
- (id)ic_middleVisibleIndexPath;
@end

@implementation UITableView(IC)

- (id)ic_middleVisibleIndexPath
{
  [self ic_visibleRectConsideringInsets:1];
  v2 = [self indexPathsForRowsInRect:?];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(v2, "count") >> 1}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end