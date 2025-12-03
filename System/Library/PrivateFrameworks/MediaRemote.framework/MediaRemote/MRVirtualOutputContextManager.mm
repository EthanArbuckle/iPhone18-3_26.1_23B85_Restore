@interface MRVirtualOutputContextManager
+ (id)sharedManager;
- (id)fetchForUID:(id)d;
- (void)addOutputContext:(id)context;
- (void)removeOutputContext:(id)context;
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

- (id)fetchForUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_ouputContextMap objectForKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)addOutputContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ouputContextMap = selfCopy->_ouputContextMap;
  uniqueIdentifier = [contextCopy uniqueIdentifier];
  [(NSMutableDictionary *)ouputContextMap setObject:contextCopy forKeyedSubscript:uniqueIdentifier];

  objc_sync_exit(selfCopy);
}

- (void)removeOutputContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_ouputContextMap setObject:0 forKeyedSubscript:contextCopy];
  objc_sync_exit(selfCopy);
}

@end