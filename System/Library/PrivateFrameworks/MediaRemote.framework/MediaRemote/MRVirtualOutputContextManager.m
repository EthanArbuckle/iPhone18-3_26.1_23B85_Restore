@interface MRVirtualOutputContextManager
+ (id)sharedManager;
- (id)fetchForUID:(id)a3;
- (void)addOutputContext:(id)a3;
- (void)removeOutputContext:(id)a3;
@end

@implementation MRVirtualOutputContextManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[MRVirtualOutputContextManager sharedManager];
  }

  v3 = sharedManager___sharedService;

  return v3;
}

void __46__MRVirtualOutputContextManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRVirtualOutputContextManager);
  v1 = sharedManager___sharedService;
  sharedManager___sharedService = v0;
}

- (id)fetchForUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_ouputContextMap objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)addOutputContext:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  ouputContextMap = v4->_ouputContextMap;
  v6 = [v7 uniqueIdentifier];
  [(NSMutableDictionary *)ouputContextMap setObject:v7 forKeyedSubscript:v6];

  objc_sync_exit(v4);
}

- (void)removeOutputContext:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_ouputContextMap setObject:0 forKeyedSubscript:v5];
  objc_sync_exit(v4);
}

@end