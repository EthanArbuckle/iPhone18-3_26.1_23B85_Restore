@interface RequestFactory
+ (id)_crossPlatformPropertyActions;
+ (id)_propertyActionsForPlatform:(id)a3;
+ (id)_propertyActionsForiOS;
+ (id)_requestForEncodedLayersWithSnapshot:(id)a3;
+ (id)_requestForEncodedSceneKitScenesWithSnapshot:(id)a3;
+ (id)_requestForRenderedEffectViewsWithSnapshot:(id)a3;
+ (id)_requestForRenderedMultiLayerViewsWithSnapshot:(id)a3;
+ (id)_requestForRenderedSpriteKitTexturesWithSnapshot:(id)a3;
+ (id)_requestForRenderedViewsWithSnapshot:(id)a3;
+ (id)additionalRequestsWithSnapshot:(id)a3;
+ (id)initialRequestForPlatform:(id)a3;
+ (id)requestForRemainingLazyPropertiesWithSnapshot:(id)a3;
@end

@implementation RequestFactory

+ (id)initialRequestForPlatform:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 _crossPlatformPropertyActions];
  [v5 addObjectsFromArray:v6];

  v7 = [a1 _propertyActionsForPlatform:v4];

  [v5 addObjectsFromArray:v7];
  v8 = [DebugHierarchyRequest requestWithName:@"Initial request" discoveryType:1 actions:v5 completion:0];

  return v8;
}

+ (id)additionalRequestsWithSnapshot:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 _requestForEncodedLayersWithSnapshot:v4];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [a1 _requestForRenderedEffectViewsWithSnapshot:v4];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [a1 _requestForRenderedMultiLayerViewsWithSnapshot:v4];

  if (v8)
  {
    [v5 addObject:v8];
  }

  v9 = [a1 _requestForRenderedViewsWithSnapshot:v4];

  if (v9)
  {
    [v5 addObject:v9];
  }

  v10 = [a1 _requestForRenderedSpriteKitTexturesWithSnapshot:v4];

  if (v10)
  {
    [v5 addObject:v10];
  }

  v11 = [a1 _requestForEncodedSceneKitScenesWithSnapshot:v4];

  if (v11)
  {
    [v5 addObject:v11];
  }

  return v5;
}

+ (id)requestForRemainingLazyPropertiesWithSnapshot:(id)a3
{
  v3 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v3 setPropertyNames:&off_2F718 exlusive:1];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [DebugHierarchyRequest requestWithName:@"Fetch remaining lazy properties" discoveryType:2 actions:v4 completion:0];

  [v5 setTimeout:180.0];

  return v5;
}

+ (id)_requestForEncodedLayersWithSnapshot:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"groupingIdentifier == 'com.apple.QuartzCore.CALayer'"];
  v5 = [v3 rootLevelSnapshotGroups];
  v6 = [v5 filteredArrayUsingPredicate:v4];
  v7 = [v6 firstObject];

  v8 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v7 allObjects];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) identifier];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = objc_alloc_init(DebugHierarchyPropertyAction);
    v16 = [v8 copy];
    [v15 setObjectIdentifiers:v16 exlusive:0];

    [v15 setPropertyNames:&off_2F730 exlusive:0];
    v24 = v15;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [DebugHierarchyRequest requestWithName:@"Fetch encoded layers" discoveryType:2 actions:v17 completion:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_requestForRenderedEffectViewsWithSnapshot:(id)a3
{
  v25 = a3;
  v4 = [a1 _effectViewClassNames];
  if ([v4 count])
  {
    v5 = +[NSMutableArray array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [v25 nodesKindOfRuntimeClass:*(*(&v30 + 1) + 8 * i)];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v27;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v27 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v26 + 1) + 8 * j);
                if ([v15 hasPropertyWithName:@"snapshotImageRenderedUsingDrawHierarchyInRect"])
                {
                  v16 = [v15 identifier];
                  [v5 addObject:v16];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v12);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      v17 = objc_alloc_init(DebugHierarchyPropertyAction);
      v18 = [v5 copy];
      [v17 setObjectIdentifiers:v18 exlusive:0];

      [v17 setPropertyNames:&off_2F748 exlusive:0];
      v19 = objc_alloc_init(DebugHierarchyRunLoopAction);
      v34[0] = v17;
      v34[1] = v19;
      v20 = [NSArray arrayWithObjects:v34 count:2];
      v21 = [DebugHierarchyRequest requestWithName:@"Fetch rendered effect view snapshots" discoveryType:2 actions:v20 completion:0];
    }

    else
    {
      v21 = 0;
    }

    v4 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)_requestForRenderedMultiLayerViewsWithSnapshot:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [NSPredicate predicateWithBlock:&__block_literal_global_0];
  v6 = [v3 nodesMatchingPredicate:v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 hasPropertyWithName:{@"snapshotImageRenderedUsingDrawHierarchyInRect", v20}])
        {
          v13 = [v12 identifier];
          [v4 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    v14 = objc_alloc_init(DebugHierarchyPropertyAction);
    v15 = [v4 copy];
    [v14 setObjectIdentifiers:v15 exlusive:0];

    [v14 setPropertyNames:&off_2F760 exlusive:0];
    v16 = objc_alloc_init(DebugHierarchyRunLoopAction);
    v24[0] = v14;
    v24[1] = v16;
    v17 = [NSArray arrayWithObjects:v24 count:2];
    v18 = [DebugHierarchyRequest requestWithName:@"Fetch rendered multi-layer view snapshots" discoveryType:2 actions:v17 completion:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

BOOL __65__RequestFactory__requestForRenderedMultiLayerViewsWithSnapshot___block_invoke(id a1, DBGSnapshotNode *a2, NSDictionary *a3)
{
  v3 = [(DBGSnapshotNode *)a2 propertyWithName:@"dbgRenderingModeIsMultiLayer"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_requestForRenderedViewsWithSnapshot:(id)a3
{
  v4 = a3;
  v45 = [a1 _effectViewClassNames];
  +[NSMutableArray array];
  v43 = v42 = v4;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = [v4 identifierToNodeMap];
  v6 = [v5 objectEnumerator];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v7)
  {
    goto LABEL_43;
  }

  v8 = v7;
  v9 = *v51;
  do
  {
    v10 = 0;
    do
    {
      if (*v51 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v50 + 1) + 8 * v10);
      v12 = [v11 runtimeType];
      if ([v12 isKindOfTypeWithName:@"UIView"])
      {
      }

      else
      {
        v13 = [v11 runtimeType];
        v14 = [v13 isKindOfTypeWithName:@"NSView"];

        if (!v14)
        {
          goto LABEL_36;
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v15 = v45;
      v16 = [v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v47;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v46 + 1) + 8 * i);
            v21 = [v11 runtimeType];
            LOBYTE(v20) = [v21 isKindOfTypeWithName:v20];

            if (v20)
            {
              v22 = 0;
              goto LABEL_25;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v15 = [v11 runtimeType];
      if ([v15 isKindOfTypeWithName:@"SCNView"])
      {
        goto LABEL_18;
      }

      v23 = [v11 runtimeType];
      if ([v23 isKindOfTypeWithName:@"SKView"])
      {
        goto LABEL_23;
      }

      v24 = [v11 runtimeType];
      if ([v24 isKindOfTypeWithName:@"GLKView"])
      {

LABEL_23:
        v22 = 1;
LABEL_24:

        goto LABEL_25;
      }

      v33 = [v11 runtimeType];
      v34 = [v33 isKindOfTypeWithName:@"ARView"];

      if ((v34 & 1) == 0)
      {
        v35 = [v11 groupWithID:@"com.apple.QuartzCore.CALayer"];
        v15 = v35;
        if (v35)
        {
          v23 = [v35 allObjects];
          v22 = [v23 count] == 0;
          goto LABEL_24;
        }

LABEL_18:
        v22 = 1;
LABEL_25:

        goto LABEL_26;
      }

      v22 = 1;
LABEL_26:
      v25 = [v11 propertyWithName:@"dbgRenderingModeIsMultiLayer"];
      v26 = v25;
      if (v25)
      {
        if (([v25 BOOLValue] ^ 1) & v22)
        {
          goto LABEL_33;
        }
      }

      else if (v22)
      {
        goto LABEL_33;
      }

      v27 = [v11 runtimeType];
      v28 = [v27 isKindOfTypeWithName:@"UIImageView"];

      if (v28)
      {
        v29 = [v11 propertyWithName:@"dbg_holdsSymbolImage"];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 BOOLValue];

          if (v31)
          {
LABEL_33:
            if ([v11 hasPropertyWithName:@"snapshotImage"])
            {
              v32 = [v11 identifier];
              [v43 addObject:v32];
            }
          }
        }
      }

LABEL_36:
      v10 = v10 + 1;
    }

    while (v10 != v8);
    v36 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    v8 = v36;
  }

  while (v36);
LABEL_43:

  if ([v43 count])
  {
    v37 = objc_alloc_init(DebugHierarchyPropertyAction);
    v38 = [v43 copy];
    [v37 setObjectIdentifiers:v38 exlusive:0];

    [v37 setPropertyNames:&off_2F778 exlusive:0];
    v54 = v37;
    v39 = [NSArray arrayWithObjects:&v54 count:1];
    v40 = [DebugHierarchyRequest requestWithName:@"Fetch rendered view snapshots" discoveryType:2 actions:v39 completion:0];
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

+ (id)_requestForRenderedSpriteKitTexturesWithSnapshot:(id)a3
{
  v3 = [a3 nodesKindOfRuntimeClass:@"SKNode"];
  if ([v3 count])
  {
    v4 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 hasPropertyWithName:{@"visualRepresentation", v17}])
          {
            v11 = [v10 identifier];
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v12 = objc_alloc_init(DebugHierarchyPropertyAction);
      v13 = [v4 copy];
      [v12 setObjectIdentifiers:v13 exlusive:0];

      [v12 setPropertyNames:&off_2F790 exlusive:0];
      v21 = v12;
      v14 = [NSArray arrayWithObjects:&v21 count:1];
      v15 = [DebugHierarchyRequest requestWithName:@"Fetch visual representations of sprites" discoveryType:2 actions:v14 completion:0];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_requestForEncodedSceneKitScenesWithSnapshot:(id)a3
{
  v3 = a3;
  v4 = [v3 nodesKindOfRuntimeClass:@"SCNScene"];
  if ([v4 count])
  {
    v5 = +[NSMutableArray array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          if ([v11 hasPropertyWithName:@"encodedPresentationScene"])
          {
            v12 = [v11 identifier];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v13 = objc_alloc_init(DebugHierarchyPropertyAction);
      v14 = [v5 copy];
      [v13 setObjectIdentifiers:v14 exlusive:0];

      [v13 setPropertyNames:&off_2F7A8 exlusive:0];
      v15 = [&__NSArray0__struct arrayByAddingObject:v13];
    }

    else
    {
      v15 = &__NSArray0__struct;
    }
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  v16 = [v3 nodesKindOfRuntimeClass:@"SCNView"];
  if ([v16 count])
  {
    v30 = v4;
    v17 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          if ([v23 hasPropertyWithName:@"pointOfViewIndexPath"])
          {
            v24 = [v23 identifier];
            [v17 addObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v20);
    }

    if ([v17 count])
    {
      v25 = objc_alloc_init(DebugHierarchyPropertyAction);
      v26 = [v17 copy];
      [v25 setObjectIdentifiers:v26 exlusive:0];

      [v25 setPropertyNames:&off_2F7C0 exlusive:0];
      v27 = [v15 arrayByAddingObject:v25];

      v15 = v27;
    }

    v4 = v30;
  }

  if ([v15 count])
  {
    v28 = [DebugHierarchyRequest requestWithName:@"Fetch encoded SCNScenes" discoveryType:2 actions:v15 completion:0];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)_crossPlatformPropertyActions
{
  v2 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v2 setPropertyNames:&off_2F7D8 exlusive:0];
  v3 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v3 setTypes:&off_2F7F0 exlusive:0];
  [v3 setPropertyNames:&off_2F808 exlusive:0];
  v4 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v4 setTypes:&off_2F820 exlusive:0];
  [v4 setPropertyNames:&off_2F838 exlusive:0];
  v5 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v5 setTypes:&off_2F850 exlusive:0];
  [v5 setPropertyNames:&off_2F868 exlusive:0];
  v6 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v6 setTypes:&off_2F880 exlusive:0];
  [v6 setPropertyNames:&off_2F898 exlusive:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)_propertyActionsForPlatform:(id)a3
{
  if ([a3 isEqualToString:@"iOS"])
  {
    v4 = [a1 _propertyActionsForiOS];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_propertyActionsForiOS
{
  v2 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v2 setTypes:&off_2F8B0 exlusive:0];
  [v2 setPropertyNames:&off_2F8C8 exlusive:0];
  v3 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v3 setTypes:&off_2F8E0 exlusive:0];
  [v3 setPropertyNames:&off_2F8F8 exlusive:0];
  v4 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v4 setTypes:&off_2F910 exlusive:0];
  [v4 setPropertyNames:&off_2F928 exlusive:0];
  v5 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v5 setTypes:&off_2F940 exlusive:0];
  [v5 setPropertyNames:&off_2F958 exlusive:0];
  v6 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v6 setTypes:&off_2F970 exlusive:0];
  [v6 setPropertyNames:&off_2F988 exlusive:0];
  v7 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v7 setTypes:&off_2F9A0 exlusive:0];
  [v7 setPropertyNames:&off_2F9B8 exlusive:0];
  v8 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v8 setTypes:&off_2F9D0 exlusive:0];
  [v8 setPropertyNames:&off_2F9E8 exlusive:0];
  v9 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v9 setTypes:&off_2FA00 exlusive:0];
  [v9 setPropertyNames:&off_2FA18 exlusive:0];
  v10 = objc_alloc_init(DebugHierarchyPropertyAction);
  [v10 setTypes:&off_2FA30 exlusive:0];
  [v10 setPropertyNames:&off_2FA48 exlusive:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[8] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:9];

  return v11;
}

@end