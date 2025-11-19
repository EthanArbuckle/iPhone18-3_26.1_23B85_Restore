@interface TabCollectionViewBlockObserver
+ (id)observerMap;
+ (void)beginObservingTabView:(id)a3 steadyStateBlock:(id)a4;
+ (void)endObservingTabView:(id)a3;
+ (void)performIgnoringObservationForTabView:(id)a3 block:(id)a4;
- (void)tabCollectionView:(id)a3 didChangeSteadyState:(BOOL)a4;
@end

@implementation TabCollectionViewBlockObserver

+ (id)observerMap
{
  if (observerMap_onceToken != -1)
  {
    +[TabCollectionViewBlockObserver observerMap];
  }

  v3 = observerMap_map;

  return v3;
}

void __45__TabCollectionViewBlockObserver_observerMap__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v1 = observerMap_map;
  observerMap_map = v0;
}

+ (void)beginObservingTabView:(id)a3 steadyStateBlock:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = +[TabCollectionViewBlockObserver observerMap];
  v7 = [v6 objectForKey:v9];

  if (!v7)
  {
    v7 = objc_alloc_init(TabCollectionViewBlockObserver);
    [v9 addPresentationObserver:v7];
    v8 = +[TabCollectionViewBlockObserver observerMap];
    [v8 setObject:v7 forKey:v9];
  }

  [(TabCollectionViewBlockObserver *)v7 setSteadyStateBlock:v5];
}

+ (void)endObservingTabView:(id)a3
{
  v6 = a3;
  v3 = +[TabCollectionViewBlockObserver observerMap];
  v4 = [v3 objectForKey:v6];

  if (v4)
  {
    [v6 removePresentationObserver:v4];
    v5 = +[TabCollectionViewBlockObserver observerMap];
    [v5 removeObjectForKey:v6];
  }
}

+ (void)performIgnoringObservationForTabView:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[TabCollectionViewBlockObserver observerMap];
  v10 = [v7 objectForKey:v6];

  if (v10)
  {
    v8 = v10[8];
    v10[8] = 1;
    v5[2](v5);

    v9 = v10;
    v10[8] = v8;
  }

  else
  {
    v5[2](v5);

    v9 = 0;
  }
}

- (void)tabCollectionView:(id)a3 didChangeSteadyState:(BOOL)a4
{
  if (!self->_ignoreUpdates)
  {
    steadyStateBlock = self->_steadyStateBlock;
    if (steadyStateBlock)
    {
      steadyStateBlock[2](steadyStateBlock, a4);
    }
  }
}

@end