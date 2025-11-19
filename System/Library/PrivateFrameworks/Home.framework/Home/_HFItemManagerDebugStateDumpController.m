@interface _HFItemManagerDebugStateDumpController
+ (id)sharedInstance;
- (_HFItemManagerDebugStateDumpController)init;
- (id)_performStateDump;
- (void)registerItemManager:(id)a3;
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
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(_HFItemManagerDebugStateDumpController *)v2 setItemManagers:v3];

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

- (void)registerItemManager:(id)a3
{
  v4 = a3;
  v5 = [(_HFItemManagerDebugStateDumpController *)self itemManagers];
  [v5 addObject:v4];
}

- (id)_performStateDump
{
  v2 = [(_HFItemManagerDebugStateDumpController *)self itemManagers];
  v3 = [v2 allObjects];
  v4 = [v3 na_map:&__block_literal_global_80];

  return v4;
}

@end