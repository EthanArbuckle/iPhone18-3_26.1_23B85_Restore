@interface BWColorLookupCacheEntry
- (BWColorLookupCacheEntry)initWithForegroundColorLookupTable:(id)table backgroundColorLookupTable:(id)lookupTable;
- (void)dealloc;
@end

@implementation BWColorLookupCacheEntry

- (BWColorLookupCacheEntry)initWithForegroundColorLookupTable:(id)table backgroundColorLookupTable:(id)lookupTable
{
  v8.receiver = self;
  v8.super_class = BWColorLookupCacheEntry;
  v6 = [(BWColorLookupCacheEntry *)&v8 init];
  if (v6)
  {
    v6->_foregroundColorLookupTable = table;
    v6->_backgroundColorLookupTable = lookupTable;
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