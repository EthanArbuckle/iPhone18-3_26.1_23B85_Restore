@interface UIView(BRGeometry)
+ (id)br_behaviourMap;
+ (void)br_gatherBehaviour;
+ (void)br_setGatherBehaviour:()BRGeometry;
+ (void)br_setGatherBehaviour:()BRGeometry forClassesNamed:;
- (uint64_t)br_viewIsClipped;
- (void)br_setLayerNames;
@end

@implementation UIView(BRGeometry)

+ (id)br_behaviourMap
{
  if (br_behaviourMap_onceToken != -1)
  {
    +[UIView(BRGeometry) br_behaviourMap];
  }

  v1 = br_behaviourMap_behaviourMap;

  return v1;
}

+ (void)br_gatherBehaviour
{
  v2 = [a1 br_behaviourMap];
  objc_sync_enter(v2);
  v3 = NSStringFromClass(a1);
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v3 = [v4 unsignedIntegerValue];
  }

  objc_sync_exit(v2);
  if (!v4)
  {
    if (objc_opt_class() == a1)
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_msgSend(a1 "superclass")];
    }
  }

  return v3;
}

+ (void)br_setGatherBehaviour:()BRGeometry
{
  obj = [a1 br_behaviourMap];
  objc_sync_enter(obj);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = NSStringFromClass(a1);
  [obj setObject:v5 forKey:v6];

  objc_sync_exit(obj);
}

+ (void)br_setGatherBehaviour:()BRGeometry forClassesNamed:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 br_behaviourMap];
  objc_sync_enter(v7);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a3, v14}];
        [v7 setObject:v13 forKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
}

- (void)br_setLayerNames
{
  v2 = [a1 layer];
  v5.receiver = a1;
  v5.super_class = UIView_0;
  v3 = objc_msgSendSuper2(&v5, sel_description);
  [v2 setName:v3];

  v4 = [a1 subviews];
  [v4 makeObjectsPerformSelector:sel_br_setLayerNames];
}

- (uint64_t)br_viewIsClipped
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(a1, &BRIgnoreClippingKey);
  v3 = v2;
  if (v2 && ([v2 BOOLValue] & 1) != 0)
  {
LABEL_33:
    v23 = 0;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = [a1 constraintsAffectingLayoutForAxis:1];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      do
      {
        v8 = 0;
        do
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * v8);
          v10 = [v9 firstItem];
          if (v10 == a1 && [v9 firstAttribute] == 8 && !objc_msgSend(v9, "secondAttribute"))
          {
            [v9 constant];
            v12 = v11;

            if (v12 == 0.0)
            {
LABEL_32:

              goto LABEL_33;
            }
          }

          else
          {
          }

          ++v8;
        }

        while (v6 != v8);
        v13 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
        v6 = v13;
      }

      while (v13);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [a1 constraintsAffectingLayoutForAxis:{0, 0}];
    v14 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v4);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          v19 = [v18 firstItem];
          if (v19 == a1 && [v18 firstAttribute] == 7 && !objc_msgSend(v18, "secondAttribute"))
          {
            [v18 constant];
            v21 = v20;

            if (v21 == 0.0)
            {
              goto LABEL_32;
            }
          }

          else
          {
          }

          ++v17;
        }

        while (v15 != v17);
        v22 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
        v15 = v22;
      }

      while (v22);
    }

    v23 = [a1 _UIViewDebuggingIsViewClipping];
  }

  return v23;
}

@end