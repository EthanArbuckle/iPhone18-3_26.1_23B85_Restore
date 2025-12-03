@interface GKSupplementaryViewFactory
+ (id)factoryForClass:(Class)class target:(id)target configurator:(SEL)configurator;
+ (id)factoryForClass:(Class)class target:(id)target configurator:(SEL)configurator userData:(id)data;
- (GKSupplementaryViewFactory)initWithClass:(Class)class target:(id)target configurator:(SEL)configurator userData:(id)data;
- (SEL)selector;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)target;
- (void)setSelector:(SEL)selector;
@end

@implementation GKSupplementaryViewFactory

+ (id)factoryForClass:(Class)class target:(id)target configurator:(SEL)configurator
{
  targetCopy = target;
  v8 = [[GKSupplementaryViewFactory alloc] initWithClass:class target:targetCopy configurator:configurator userData:0];

  return v8;
}

+ (id)factoryForClass:(Class)class target:(id)target configurator:(SEL)configurator userData:(id)data
{
  dataCopy = data;
  targetCopy = target;
  v11 = [[GKSupplementaryViewFactory alloc] initWithClass:class target:targetCopy configurator:configurator userData:dataCopy];

  return v11;
}

- (GKSupplementaryViewFactory)initWithClass:(Class)class target:(id)target configurator:(SEL)configurator userData:(id)data
{
  targetCopy = target;
  v17.receiver = self;
  v17.super_class = GKSupplementaryViewFactory;
  v10 = [(GKSupplementaryViewFactory *)&v17 init];
  if (v10)
  {
    if (targetCopy && configurator && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [v11 stringWithFormat:@"%@ ([target respondsToSelector:selector])\n[%s (%s:%d)]", v12, "-[GKSupplementaryViewFactory initWithClass:target:configurator:userData:]", objc_msgSend(lastPathComponent, "UTF8String"), 169];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
    }

    objc_storeStrong(&v10->_reusableViewClass, class);
    objc_storeWeak(&v10->_target, targetCopy);
    v10->_configurator = configurator;
  }

  return v10;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v9 = [view _gkDequeueSupplementaryViewForClass:self->_reusableViewClass ofKind:kind forIndexPath:pathCopy];
  target = [(GKSupplementaryViewFactory *)self target];
  if (target)
  {
    configurator = self->_configurator;

    if (configurator)
    {
      target2 = [(GKSupplementaryViewFactory *)self target];
      [target2 self->_configurator];
    }
  }

  return v9;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end