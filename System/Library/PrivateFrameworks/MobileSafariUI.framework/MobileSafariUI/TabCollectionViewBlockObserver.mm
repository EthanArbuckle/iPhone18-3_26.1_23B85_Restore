@interface TabCollectionViewBlockObserver
+ (id)observerMap;
+ (void)beginObservingTabView:(id)view steadyStateBlock:(id)block;
+ (void)endObservingTabView:(id)view;
+ (void)performIgnoringObservationForTabView:(id)view block:(id)block;
- (void)tabCollectionView:(id)view didChangeSteadyState:(BOOL)state;
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

+ (void)beginObservingTabView:(id)view steadyStateBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  v6 = +[TabCollectionViewBlockObserver observerMap];
  v7 = [v6 objectForKey:viewCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(TabCollectionViewBlockObserver);
    [viewCopy addPresentationObserver:v7];
    v8 = +[TabCollectionViewBlockObserver observerMap];
    [v8 setObject:v7 forKey:viewCopy];
  }

  [(TabCollectionViewBlockObserver *)v7 setSteadyStateBlock:blockCopy];
}

+ (void)endObservingTabView:(id)view
{
  viewCopy = view;
  v3 = +[TabCollectionViewBlockObserver observerMap];
  v4 = [v3 objectForKey:viewCopy];

  if (v4)
  {
    [viewCopy removePresentationObserver:v4];
    v5 = +[TabCollectionViewBlockObserver observerMap];
    [v5 removeObjectForKey:viewCopy];
  }
}

+ (void)performIgnoringObservationForTabView:(id)view block:(id)block
{
  blockCopy = block;
  viewCopy = view;
  v7 = +[TabCollectionViewBlockObserver observerMap];
  v10 = [v7 objectForKey:viewCopy];

  if (v10)
  {
    v8 = v10[8];
    v10[8] = 1;
    blockCopy[2](blockCopy);

    v9 = v10;
    v10[8] = v8;
  }

  else
  {
    blockCopy[2](blockCopy);

    v9 = 0;
  }
}

- (void)tabCollectionView:(id)view didChangeSteadyState:(BOOL)state
{
  if (!self->_ignoreUpdates)
  {
    steadyStateBlock = self->_steadyStateBlock;
    if (steadyStateBlock)
    {
      steadyStateBlock[2](steadyStateBlock, state);
    }
  }
}

@end