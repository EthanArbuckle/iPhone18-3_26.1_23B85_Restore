@interface ICDocCamNavigationController
- (ICDocCamNavigationController)initWithImageCache:(id)a3 docCamDelegate:(id)a4 remoteDocCamDelegate:(id)a5;
- (void)prepareForDismissal;
@end

@implementation ICDocCamNavigationController

- (ICDocCamNavigationController)initWithImageCache:(id)a3 docCamDelegate:(id)a4 remoteDocCamDelegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (DCDebugInterfaceEnabled())
  {
    v11 = off_278F92358;
  }

  else
  {
    v11 = off_278F92350;
  }

  v12 = [objc_alloc(*v11) initWithImageCache:v10];

  v13 = objc_opt_class();
  v14 = DCDynamicCast(v13, v12);
  [v14 setDelegate:v9];

  v15 = objc_opt_class();
  v16 = DCDynamicCast(v15, v12);
  [v16 setDelegate:v8];

  v20.receiver = self;
  v20.super_class = ICDocCamNavigationController;
  v17 = [(ICDocCamNavigationController *)&v20 initWithRootViewController:v12];
  v18 = v17;
  if (v17)
  {
    [(ICDocCamNavigationController *)v17 setModalPresentationStyle:0];
  }

  return v18;
}

- (void)prepareForDismissal
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(ICDocCamNavigationController *)self viewControllers];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = DCDynamicCast(v9, v8);

        if (v10)
        {
          [v8 prepareForDismissal];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(ICDocCamNavigationController *)self viewControllers];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = objc_opt_class();
        v18 = DCDynamicCast(v17, v16);

        if (v18)
        {
          [v16 prepareForDismissal];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }
}

@end