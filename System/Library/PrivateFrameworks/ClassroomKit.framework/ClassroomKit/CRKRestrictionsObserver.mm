@interface CRKRestrictionsObserver
+ (void)addRestrictionsObserver:(id)observer;
+ (void)removeRestrictionsObserver:(id)observer;
@end

@implementation CRKRestrictionsObserver

+ (void)addRestrictionsObserver:(id)observer
{
  v3 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v3 defaultCenter];
  v5 = +[CRKRestrictions didChangeNotification];
  [defaultCenter addObserver:observerCopy selector:sel_restrictionsDidChange_ name:v5 object:0];
}

+ (void)removeRestrictionsObserver:(id)observer
{
  v3 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v3 defaultCenter];
  v5 = +[CRKRestrictions didChangeNotification];
  [defaultCenter removeObserver:observerCopy name:v5 object:0];
}

@end