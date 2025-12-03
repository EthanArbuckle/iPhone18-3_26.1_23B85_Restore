@interface DRContentWindow
- (DRContentWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation DRContentWindow

- (DRContentWindow)initWithWindowScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = DRContentWindow;
  v3 = [(DRContentWindow *)&v7 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(DRContentWindow *)v3 setMultipleTouchEnabled:1];
    v5 = objc_alloc_init(NSMutableDictionary);
    [(DRContentWindow *)v4 setActiveSessionViewModelsForTouchID:v5];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  rootViewController = [(DRContentWindow *)self rootViewController];
  v8 = [rootViewController sessionViewModelForBeginningDragManipulationAtLocation:{x, y}];
  if (v8)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v27.receiver = self;
  v27.super_class = DRContentWindow;
  [(DRContentWindow *)&v27 touchesBegan:beganCopy withEvent:event];
  rootViewController = [(DRContentWindow *)self rootViewController];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = beganCopy;
  objectEnumerator = [beganCopy objectEnumerator];
  v9 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        [v13 locationInView:self];
        v15 = v14;
        v17 = v16;
        v18 = [rootViewController sessionViewModelForBeginningDragManipulationAtLocation:?];
        v19 = v18;
        if (v18)
        {
          [v18 beginDragManipulationWithLocation:{v15, v17, 0.0}];
          activeSessionViewModelsForTouchID = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
          v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 _touchIdentifier]);
          [activeSessionViewModelsForTouchID setObject:v19 forKey:v21];
        }
      }

      v10 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  v21.receiver = self;
  v21.super_class = DRContentWindow;
  [(DRContentWindow *)&v21 touchesMoved:movedCopy withEvent:event];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = movedCopy;
  objectEnumerator = [movedCopy objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        activeSessionViewModelsForTouchID = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
        v15 = [activeSessionViewModelsForTouchID objectForKey:v14];

        if (v15)
        {
          [v12 locationInView:self];
          [v15 updateDragManipulationWithLocation:?];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v23.receiver = self;
  v23.super_class = DRContentWindow;
  [(DRContentWindow *)&v23 touchesEnded:endedCopy withEvent:event];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = endedCopy;
  objectEnumerator = [endedCopy objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        activeSessionViewModelsForTouchID = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
        v15 = [activeSessionViewModelsForTouchID objectForKey:v14];

        if (v15)
        {
          [v12 locationInView:self];
          [v15 endDragManipulationWithLocation:?];
          activeSessionViewModelsForTouchID2 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
          v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
          [activeSessionViewModelsForTouchID2 removeObjectForKey:v17];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v23.receiver = self;
  v23.super_class = DRContentWindow;
  [(DRContentWindow *)&v23 touchesCancelled:cancelledCopy withEvent:event];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = cancelledCopy;
  objectEnumerator = [cancelledCopy objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        activeSessionViewModelsForTouchID = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
        v15 = [activeSessionViewModelsForTouchID objectForKey:v14];

        if (v15)
        {
          [v12 locationInView:self];
          [v15 endDragManipulationWithLocation:?];
          activeSessionViewModelsForTouchID2 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
          v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
          [activeSessionViewModelsForTouchID2 removeObjectForKey:v17];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }
}

@end