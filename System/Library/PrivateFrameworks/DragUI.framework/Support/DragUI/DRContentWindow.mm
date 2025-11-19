@interface DRContentWindow
- (DRContentWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation DRContentWindow

- (DRContentWindow)initWithWindowScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = DRContentWindow;
  v3 = [(DRContentWindow *)&v7 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    [(DRContentWindow *)v3 setMultipleTouchEnabled:1];
    v5 = objc_alloc_init(NSMutableDictionary);
    [(DRContentWindow *)v4 setActiveSessionViewModelsForTouchID:v5];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(DRContentWindow *)self rootViewController];
  v8 = [v7 sessionViewModelForBeginningDragManipulationAtLocation:{x, y}];
  if (v8)
  {
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = DRContentWindow;
  [(DRContentWindow *)&v27 touchesBegan:v6 withEvent:a4];
  v7 = [(DRContentWindow *)self rootViewController];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v6;
  v8 = [v6 objectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        [v13 locationInView:self];
        v15 = v14;
        v17 = v16;
        v18 = [v7 sessionViewModelForBeginningDragManipulationAtLocation:?];
        v19 = v18;
        if (v18)
        {
          [v18 beginDragManipulationWithLocation:{v15, v17, 0.0}];
          v20 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
          v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 _touchIdentifier]);
          [v20 setObject:v19 forKey:v21];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = DRContentWindow;
  [(DRContentWindow *)&v21 touchesMoved:v6 withEvent:a4];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = v6;
  v7 = [v6 objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
        v15 = [v13 objectForKey:v14];

        if (v15)
        {
          [v12 locationInView:self];
          [v15 updateDragManipulationWithLocation:?];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = DRContentWindow;
  [(DRContentWindow *)&v23 touchesEnded:v6 withEvent:a4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v6;
  v7 = [v6 objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
        v15 = [v13 objectForKey:v14];

        if (v15)
        {
          [v12 locationInView:self];
          [v15 endDragManipulationWithLocation:?];
          v16 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
          v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
          [v16 removeObjectForKey:v17];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = DRContentWindow;
  [(DRContentWindow *)&v23 touchesCancelled:v6 withEvent:a4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v6;
  v7 = [v6 objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
        v15 = [v13 objectForKey:v14];

        if (v15)
        {
          [v12 locationInView:self];
          [v15 endDragManipulationWithLocation:?];
          v16 = [(DRContentWindow *)self activeSessionViewModelsForTouchID];
          v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 _touchIdentifier]);
          [v16 removeObjectForKey:v17];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }
}

@end