@interface HKTimeScopeControl
+ (HKTimeScopeControl)controlWithFrame:(CGRect)a3 timeScopes:(id)a4;
- (HKTimeScopeControl)initWithFrame:(CGRect)a3 timeScopes:(id)a4;
- (int64_t)_indexForTimeScope:(int64_t)a3;
- (int64_t)_timeScopeForIndex:(int64_t)a3;
@end

@implementation HKTimeScopeControl

+ (HKTimeScopeControl)controlWithFrame:(CGRect)a3 timeScopes:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [[_HKTimeScopeControlBar alloc] initWithFrame:v8 timeScopes:x, y, width, height];

  return v9;
}

- (HKTimeScopeControl)initWithFrame:(CGRect)a3 timeScopes:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HKTimeScopeControl;
  v11 = [(HKTimeScopeControl *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timeScopes, a4);
  }

  return v12;
}

- (int64_t)_timeScopeForIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_timeScopes objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)_indexForTimeScope:(int64_t)a3
{
  timeScopes = self->_timeScopes;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSArray *)timeScopes indexOfObject:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end