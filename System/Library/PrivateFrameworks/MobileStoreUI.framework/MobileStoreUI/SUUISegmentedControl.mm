@interface SUUISegmentedControl
- (CGRect)frameForSegmentAtIndex:(int64_t)index;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SUUISegmentedControl

- (CGRect)frameForSegmentAtIndex:(int64_t)index
{
  [(SUUISegmentedControl *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 / [(SUUISegmentedControl *)self numberOfSegments]* index;
  v12 = v8 / [(SUUISegmentedControl *)self numberOfSegments];
  v13 = v11;
  v14 = v6;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SUUISegmentedControl;
  [(SUUISegmentedControl *)&v5 touchesEnded:ended withEvent:event];
  [(SUUISegmentedControl *)self sendActionsForControlEvents:4096];
}

@end