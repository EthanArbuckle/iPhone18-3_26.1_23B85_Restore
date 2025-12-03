@interface _HFItemManagerDebugStateDumpController
+ (id)sharedInstance;
- (_HFItemManagerDebugStateDumpController)init;
- (id)_performStateDump;
- (void)registerItemManager:(id)manager;
@end

@implementation _HFItemManagerDebugStateDumpController

+ (id)sharedInstance
{
  if (_MergedGlobals_212 != -1)
  {
    dispatch_once(&_MergedGlobals_212, &__block_literal_global_70);
  }

  v3 = qword_280E02AD0;

  return v3;
}

- (_HFItemManagerDebugStateDumpController)init
{
  v9.receiver = self;
  v9.super_class = _HFItemManagerDebugStateDumpController;
  v2 = [(_HFItemManagerDebugStateDumpController *)&v9 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(_HFItemManagerDebugStateDumpController *)v2 setItemManagers:weakObjectsHashTable];

    v4 = +[HFDebugStateDumpManager sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46___HFItemManagerDebugStateDumpController_init__block_invoke;
    v7[3] = &unk_277DF3668;
    v8 = v2;
    v5 = [v4 registerStateDumpHandler:v7 withName:@"HFItemManager"];
  }

  return v2;
}

- (void)registerItemManager:(id)manager
{
  managerCopy = manager;
  itemManagers = [(_HFItemManagerDebugStateDumpController *)self itemManagers];
  [itemManagers addObject:managerCopy];
}

- (id)_performStateDump
{
  itemManagers = [(_HFItemManagerDebugStateDumpController *)self itemManagers];
  allObjects = [itemManagers allObjects];
  v4 = [allObjects na_map:&__block_literal_global_80];

  return v4;
}

@end