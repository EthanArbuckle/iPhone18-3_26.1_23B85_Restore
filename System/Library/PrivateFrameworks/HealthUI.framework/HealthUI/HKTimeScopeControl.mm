@interface HKTimeScopeControl
+ (HKTimeScopeControl)controlWithFrame:(CGRect)frame timeScopes:(id)scopes;
- (HKTimeScopeControl)initWithFrame:(CGRect)frame timeScopes:(id)scopes;
- (int64_t)_indexForTimeScope:(int64_t)scope;
- (int64_t)_timeScopeForIndex:(int64_t)index;
@end

@implementation HKTimeScopeControl

+ (HKTimeScopeControl)controlWithFrame:(CGRect)frame timeScopes:(id)scopes
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  scopesCopy = scopes;
  height = [[_HKTimeScopeControlBar alloc] initWithFrame:scopesCopy timeScopes:x, y, width, height];

  return height;
}

- (HKTimeScopeControl)initWithFrame:(CGRect)frame timeScopes:(id)scopes
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  scopesCopy = scopes;
  v14.receiver = self;
  v14.super_class = HKTimeScopeControl;
  height = [(HKTimeScopeControl *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_timeScopes, scopes);
  }

  return v12;
}

- (int64_t)_timeScopeForIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_timeScopes objectAtIndexedSubscript:index];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)_indexForTimeScope:(int64_t)scope
{
  timeScopes = self->_timeScopes;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
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