@interface ViewReuseManager
- (ViewReuseManager)initWithReusableViewClass:(Class)class;
- (ViewReuseManagerDelegate)delegate;
- (id)makeView;
- (void)_addTrackedViewForRepresentedObjectAtIndex:(unint64_t)index;
- (void)_didReceiveMemoryWarning:(id)warning;
- (void)_recycleView:(id)view;
- (void)_recycleViewsInCollection:(id)collection;
- (void)dealloc;
- (void)insertView:(id)view inTrackedViewsAtIndex:(int64_t)index;
- (void)recycleView:(id)view;
- (void)removeViewFromTrackedViews:(id)views;
- (void)setDelegate:(id)delegate;
- (void)updateTrackedViewsForRepresentedObjectsInRange:(_NSRange)range;
@end

@implementation ViewReuseManager

- (ViewReuseManager)initWithReusableViewClass:(Class)class
{
  v11.receiver = self;
  v11.super_class = ViewReuseManager;
  v4 = [(ViewReuseManager *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_reusableViewClass = class;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    reusableViews = v5->_reusableViews;
    v5->_reusableViews = v6;

    v5->_firstPreviouslyVisibleRepresentedObjectIndex = 0x7FFFFFFFFFFFFFFFLL;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

    v9 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_reusableViews;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = ViewReuseManager;
  [(ViewReuseManager *)&v9 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (obj)
    {
      if (!self->_trackedViews)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
        trackedViews = self->_trackedViews;
        self->_trackedViews = v6;

        v5 = obj;
      }

      if (!self->_viewsPendingRecycling)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
        viewsPendingRecycling = self->_viewsPendingRecycling;
        self->_viewsPendingRecycling = v8;

        v5 = obj;
      }
    }
  }
}

- (void)insertView:(id)view inTrackedViewsAtIndex:(int64_t)index
{
  trackedViews = self->_trackedViews;
  viewCopy = view;
  [(NSMutableArray *)trackedViews insertObject:viewCopy atIndex:index];
  [(NSMutableSet *)self->_viewsPendingRecycling removeObject:viewCopy];
}

- (void)removeViewFromTrackedViews:(id)views
{
  viewsPendingRecycling = self->_viewsPendingRecycling;
  viewsCopy = views;
  [(NSMutableSet *)viewsPendingRecycling addObject:viewsCopy];
  [(NSMutableArray *)self->_trackedViews removeObject:viewsCopy];
}

- (id)makeView
{
  anyObject = [(NSMutableSet *)self->_reusableViews anyObject];
  if (anyObject)
  {
    v4 = anyObject;
    [(NSMutableSet *)self->_reusableViews removeObject:anyObject];
    [v4 setHidden:0];
  }

  else
  {
    v4 = objc_alloc_init(self->_reusableViewClass);
  }

  return v4;
}

- (void)recycleView:(id)view
{
  reusableViews = self->_reusableViews;
  viewCopy = view;
  [(NSMutableSet *)reusableViews addObject:viewCopy];
  [viewCopy setHidden:1];
}

- (void)updateTrackedViewsForRepresentedObjectsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([(NSMutableSet *)self->_viewsPendingRecycling count])
  {
    [(ViewReuseManager *)self _recycleViewsInCollection:self->_viewsPendingRecycling];
    [(ViewReuseManager *)self _recycleViewsInCollection:self->_trackedViews];
  }

  v7 = [(NSMutableArray *)self->_trackedViews count];
  if (v7)
  {
    v8.length = v7;
    v8.location = self->_firstPreviouslyVisibleRepresentedObjectIndex;
    if (!self->_alwaysSendPrepareForReuse && v8.location == location && v7 == length)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v33.location = location;
    v33.length = length;
    v9 = NSIntersectionRange(v33, v8);
    v10 = v9.location;
    v11 = v9.length;
    if (v9.length)
    {
      v12 = v9.location - self->_firstPreviouslyVisibleRepresentedObjectIndex;
      v13 = [(NSMutableArray *)self->_trackedViews subarrayWithRange:v12, v9.length];
      [(NSMutableArray *)self->_trackedViews removeObjectsInRange:v12, v9.length];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v10 = 0;
  }

  if (v11)
  {
    v14 = v10;
  }

  else
  {
    v14 = location;
  }

  self->_firstPreviouslyVisibleRepresentedObjectIndex = location;
  [(ViewReuseManager *)self _recycleViewsInCollection:self->_trackedViews];
  if (location < v14)
  {
    v15 = location;
    do
    {
      [(ViewReuseManager *)self _addTrackedViewForRepresentedObjectAtIndex:v15++];
    }

    while (v14 != v15);
  }

  if (v11)
  {
    v25 = location;
    v26 = length;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v13;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          if (self->_alwaysSendPrepareForReuse)
          {
            [WeakRetained viewReuseManager:self prepareView:*(*(&v27 + 1) + 8 * i) toRepresentObjectAtIndex:v10];
          }

          ++v10;
          [(NSMutableArray *)self->_trackedViews addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    location = v25;
    length = v26;
    v13 = v24;
  }

  v22 = location + length;
  for (j = v14 + v11; j < v22; ++j)
  {
    [(ViewReuseManager *)self _addTrackedViewForRepresentedObjectAtIndex:j];
  }

LABEL_11:
}

- (void)_didReceiveMemoryWarning:(id)warning
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_reusableViews;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_reusableViews removeAllObjects];
}

- (void)_recycleViewsInCollection:(id)collection
{
  v14 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [collectionCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(collectionCopy);
        }

        [(ViewReuseManager *)self _recycleView:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [collectionCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [collectionCopy removeAllObjects];
}

- (void)_recycleView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewReuseManager:self willRecycleView:viewCopy];
  [(ViewReuseManager *)self recycleView:viewCopy];
}

- (void)_addTrackedViewForRepresentedObjectAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  makeView = [(ViewReuseManager *)self makeView];
  [WeakRetained viewReuseManager:self prepareView:makeView toRepresentObjectAtIndex:index];
  [(NSMutableArray *)self->_trackedViews addObject:makeView];
}

- (ViewReuseManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end