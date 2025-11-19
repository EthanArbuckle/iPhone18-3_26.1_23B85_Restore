@interface CRKRestrictionsObserver
+ (void)addRestrictionsObserver:(id)a3;
+ (void)removeRestrictionsObserver:(id)a3;
@end

@implementation CRKRestrictionsObserver

+ (void)addRestrictionsObserver:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v6 = [v3 defaultCenter];
  v5 = +[CRKRestrictions didChangeNotification];
  [v6 addObserver:v4 selector:sel_restrictionsDidChange_ name:v5 object:0];
}

+ (void)removeRestrictionsObserver:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v6 = [v3 defaultCenter];
  v5 = +[CRKRestrictions didChangeNotification];
  [v6 removeObserver:v4 name:v5 object:0];
}

@end