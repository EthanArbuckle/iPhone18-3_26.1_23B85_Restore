@interface NUScrollView
- (CGRect)visibleRect;
- (id)description;
@end

@implementation NUScrollView

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NUScrollView;
  v4 = [(NUScrollView *)&v8 description];
  [(NUScrollView *)self zoomScale];
  v6 = [v3 stringWithFormat:@"%@ zoomScale: %g", v4, v5];;

  return v6;
}

- (CGRect)visibleRect
{
  [(NUScrollView *)self contentSize];
  v4 = v3;
  [(NUScrollView *)self contentOffset];
  v6 = v4 - v5;
  [(NUScrollView *)self contentSize];
  v8 = v7;
  [(NUScrollView *)self contentOffset];
  v10 = v8 - v9;
  [(NUScrollView *)self contentOffset];
  v13 = v6;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end