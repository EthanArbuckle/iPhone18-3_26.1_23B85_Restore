@interface BWColorLookupCacheEntry
- (BWColorLookupCacheEntry)initWithForegroundColorLookupTable:(id)a3 backgroundColorLookupTable:(id)a4;
- (void)dealloc;
@end

@implementation BWColorLookupCacheEntry

- (BWColorLookupCacheEntry)initWithForegroundColorLookupTable:(id)a3 backgroundColorLookupTable:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWColorLookupCacheEntry;
  v6 = [(BWColorLookupCacheEntry *)&v8 init];
  if (v6)
  {
    v6->_foregroundColorLookupTable = a3;
    v6->_backgroundColorLookupTable = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWColorLookupCacheEntry;
  [(BWColorLookupCacheEntry *)&v3 dealloc];
}

@end