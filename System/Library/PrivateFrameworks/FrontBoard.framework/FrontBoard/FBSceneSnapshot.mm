@interface FBSceneSnapshot
- (BOOL)hasProtectedContent;
- (FBSceneSnapshot)initWithScene:(id)scene context:(id)context;
- (id)_collectLayersToSnapshotFromScene:(void *)scene withSnapshotConfig:(void *)config rootConfig:;
- (uint64_t)_initWithScene:(void *)scene configuration:;
- (void)_baseTransformForSnapshotConfig:(void *)config@<X2> rootConfig:(uint64_t)rootConfig@<X8>;
@end

@implementation FBSceneSnapshot

- (BOOL)hasProtectedContent
{
  fallbackIOSurface = [(FBSceneSnapshot *)self fallbackIOSurface];
  v3 = fallbackIOSurface != 0;

  return v3;
}

- (void)_baseTransformForSnapshotConfig:(void *)config@<X2> rootConfig:(uint64_t)rootConfig@<X8>
{
  v7 = a2;
  configCopy = config;
  if (self)
  {
    v9 = MEMORY[0x1E695EFD0];
    v44 = *(MEMORY[0x1E695EFD0] + 16);
    v45 = *MEMORY[0x1E695EFD0];
    *rootConfig = *MEMORY[0x1E695EFD0];
    *(rootConfig + 16) = v44;
    v43 = *(v9 + 32);
    *(rootConfig + 32) = v43;
    settings = [v7 settings];
    interfaceOrientation = [settings interfaceOrientation];

    if (BSInterfaceOrientationIsValid())
    {
      v12 = interfaceOrientation;
    }

    else
    {
      v12 = 1;
    }

    settings2 = [configCopy settings];
    interfaceOrientation2 = [settings2 interfaceOrientation];

    IsValid = BSInterfaceOrientationIsValid();
    settings3 = [*(self + 8) settings];
    displayConfiguration = [settings3 displayConfiguration];
    [displayConfiguration bounds];

    [configCopy frame];
    v19 = v18;
    v21 = v20;
    if ([configCopy orientation])
    {
      v22 = 1;
    }

    else
    {
      if (IsValid)
      {
        v22 = interfaceOrientation2;
      }

      else
      {
        v22 = 1;
      }

      IsLandscape = BSInterfaceOrientationIsLandscape();
      if (IsLandscape)
      {
        v24 = v19;
      }

      else
      {
        v24 = v21;
      }

      if (IsLandscape)
      {
        v19 = v21;
      }

      v21 = v24;
    }

    if (v12 != v22)
    {
      settings4 = [v7 settings];
      [settings4 frame];

      if (v12 != 1)
      {
        BSConvertRectFromOrientationToOrientation();
      }

      BSRectGetCenter();
      memset(&v50, 0, sizeof(v50));
      CGAffineTransformMakeTranslation(&v50, -v26, -v27);
      *&t1.a = v45;
      *&t1.c = v44;
      *&t1.tx = v43;
      t2 = v50;
      CGAffineTransformConcat(rootConfig, &t1, &t2);
      if (v12 != 1)
      {
        if (v12 == 3)
        {
          v28 = 1.57079633;
        }

        else if (v12 == 4)
        {
          v28 = -1.57079633;
        }

        else
        {
          v28 = 3.14159265;
          if (v12 != 2)
          {
            v28 = 0.0;
          }
        }

        memset(&t1, 0, sizeof(t1));
        CGAffineTransformMakeRotation(&t2, v28);
        BSIntegralTransform();
        v29 = *(rootConfig + 16);
        *&v47.a = *rootConfig;
        *&v47.c = v29;
        *&v47.tx = *(rootConfig + 32);
        v46 = t1;
        CGAffineTransformConcat(&t2, &v47, &v46);
        v30 = *&t2.c;
        *rootConfig = *&t2.a;
        *(rootConfig + 16) = v30;
        *(rootConfig + 32) = *&t2.tx;
      }

      if (v22 != 1)
      {
        if (v22 == 3)
        {
          v31 = 1.57079633;
        }

        else if (v22 == 4)
        {
          v31 = -1.57079633;
        }

        else
        {
          v31 = 3.14159265;
          if (v22 != 2)
          {
            v31 = 0.0;
          }
        }

        memset(&t1, 0, sizeof(t1));
        CGAffineTransformMakeRotation(&t2, -v31);
        BSIntegralTransform();
        v32 = *(rootConfig + 16);
        *&v47.a = *rootConfig;
        *&v47.c = v32;
        *&v47.tx = *(rootConfig + 32);
        v46 = t1;
        CGAffineTransformConcat(&t2, &v47, &v46);
        v33 = *&t2.c;
        *rootConfig = *&t2.a;
        *(rootConfig + 16) = v33;
        *(rootConfig + 32) = *&t2.tx;
        BSConvertRectFromOrientationToOrientation();
      }

      BSRectGetCenter();
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeTranslation(&t1, v34, v35);
      v36 = *(rootConfig + 16);
      *&v47.a = *rootConfig;
      *&v47.c = v36;
      *&v47.tx = *(rootConfig + 32);
      v46 = t1;
      CGAffineTransformConcat(&t2, &v47, &v46);
      v37 = *&t2.c;
      *rootConfig = *&t2.a;
      *(rootConfig + 16) = v37;
      *(rootConfig + 32) = *&t2.tx;
    }

    memset(&v50, 0, sizeof(v50));
    CGAffineTransformMakeTranslation(&v50, -v19, -v21);
    v38 = *(rootConfig + 16);
    *&t2.a = *rootConfig;
    *&t2.c = v38;
    *&t2.tx = *(rootConfig + 32);
    v47 = v50;
    CGAffineTransformConcat(&t1, &t2, &v47);
    v39 = *&t1.c;
    *rootConfig = *&t1.a;
    *(rootConfig + 16) = v39;
    *(rootConfig + 32) = *&t1.tx;
    [configCopy scale];
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformMakeScale(&t1, v40, v40);
    v41 = *(rootConfig + 16);
    *&v47.a = *rootConfig;
    *&v47.c = v41;
    *&v47.tx = *(rootConfig + 32);
    v46 = t1;
    CGAffineTransformConcat(&t2, &v47, &v46);
    v42 = *&t2.c;
    *rootConfig = *&t2.a;
    *(rootConfig + 16) = v42;
    *(rootConfig + 32) = *&t2.tx;
  }

  else
  {
    *(rootConfig + 16) = 0u;
    *(rootConfig + 32) = 0u;
    *rootConfig = 0u;
  }
}

- (uint64_t)_initWithScene:(void *)scene configuration:
{
  v6 = a2;
  sceneCopy = scene;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneSnapshot _initWithScene:configuration:]");
    }

    v24.receiver = self;
    v24.super_class = FBSceneSnapshot;
    v8 = objc_msgSendSuper2(&v24, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong((self + 16), scene);
      v10 = [(FBSceneSnapshot *)self _collectLayersToSnapshotFromScene:sceneCopy withSnapshotConfig:sceneCopy rootConfig:?];
      v11 = objc_alloc(MEMORY[0x1E699FD08]);
      settings = [v6 settings];
      displayConfiguration = [settings displayConfiguration];
      v14 = [v11 initWithDisplayConfiguration:displayConfiguration layers:v10];

      [sceneCopy scale];
      [v14 setScale:?];
      [v14 setOpaque:{objc_msgSend(sceneCopy, "isOpaque")}];
      [v14 setAllowsProtectedContent:{objc_msgSend(sceneCopy, "clientAllowsProtectedContent")}];
      [sceneCopy frame];
      v16 = v15;
      v18 = v17;
      if (![sceneCopy orientation])
      {
        settings2 = [sceneCopy settings];
        [settings2 interfaceOrientation];
        IsLandscape = BSInterfaceOrientationIsLandscape();

        if (IsLandscape)
        {
          v21 = v16;
        }

        else
        {
          v21 = v18;
        }

        if (IsLandscape)
        {
          v16 = v18;
        }

        v18 = v21;
      }

      [v14 setSnapshotSize:{v16, v18}];
      v22 = [objc_alloc(MEMORY[0x1E699FD00]) initWithSnapshotContext:v14];
      v23 = *(self + 32);
      *(self + 32) = v22;
    }
  }

  return self;
}

- (id)_collectLayersToSnapshotFromScene:(void *)scene withSnapshotConfig:(void *)config rootConfig:
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a2;
  sceneCopy = scene;
  configCopy = config;
  v54 = configCopy;
  v52 = sceneCopy;
  if (self)
  {
    v10 = configCopy;
    v11 = MEMORY[0x1E695DFA0];
    layerManager = [v7 layerManager];
    layers = [layerManager layers];
    v14 = [v11 orderedSetWithOrderedSet:layers];

    layersToExclude = [sceneCopy layersToExclude];
    [v14 minusSet:layersToExclude];

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    selfCopy = self;
    [(FBSceneSnapshot *)self _baseTransformForSnapshotConfig:sceneCopy rootConfig:v10, &v61];
    memset(&__src, 0, sizeof(__src));
    *m = v61;
    *&m[16] = v62;
    *&m[32] = v63;
    CATransform3DMakeAffineTransform(&__src, m);
    v17 = +[FBSceneManager keyboardScene];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (!v19)
    {
      goto LABEL_20;
    }

    v20 = v19;
    v21 = *v57;
    while (1)
    {
      v22 = 0;
      do
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(v18);
        }

        proxiedKeyboardOwner = *(*(&v56 + 1) + 8 * v22);
        contextID = [proxiedKeyboardOwner contextID];
        if (contextID)
        {
          v25 = contextID;
          v26 = objc_alloc(MEMORY[0x1E699FD10]);
          memcpy(m, &__src, sizeof(m));
          proxiedKeyboardOwner = [v26 initWithContextID:v25 baseTransform:m];
          if (proxiedKeyboardOwner)
          {
            [orderedSet addObject:proxiedKeyboardOwner];
          }

          goto LABEL_10;
        }

        if ([proxiedKeyboardOwner isKeyboardLayer])
        {
          if (v17 == v7)
          {
            v27 = [[FBSceneSnapshotContext alloc] initWithScene:v17 configurator:0];
            v35 = OUTLINED_FUNCTION_0_3(v27, v28, v29, v30, v31, v32, v33, v34, v52, selfCopy);
            v36 = [FBSceneSnapshot _collectLayersToSnapshotFromScene:v35 withSnapshotConfig:? rootConfig:?];
            [orderedSet unionOrderedSet:v36];

LABEL_10:
          }
        }

        else if ([proxiedKeyboardOwner isKeyboardProxyLayer])
        {
          identityToken = [v17 identityToken];
          proxiedKeyboardOwner = [proxiedKeyboardOwner proxiedKeyboardOwner];
          v38 = [identityToken isEqual:proxiedKeyboardOwner];

          if (v38)
          {
            v39 = [[FBSceneSnapshotContext alloc] initWithScene:v17 configurator:0];
            v47 = OUTLINED_FUNCTION_0_3(v39, v40, v41, v42, v43, v44, v45, v46, v52, selfCopy);
            v48 = [FBSceneSnapshot _collectLayersToSnapshotFromScene:v47 withSnapshotConfig:? rootConfig:?];
            [orderedSet unionOrderedSet:v48];

            goto LABEL_10;
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v49 = [v18 countByEnumeratingWithState:&v56 objects:v64 count:16];
      v20 = v49;
      if (!v49)
      {
LABEL_20:

        goto LABEL_21;
      }
    }
  }

  orderedSet = 0;
LABEL_21:

  v50 = *MEMORY[0x1E69E9840];

  return orderedSet;
}

- (FBSceneSnapshot)initWithScene:(id)scene context:(id)context
{
  contextCopy = context;
  v8 = [(FBSceneSnapshot *)self _initWithScene:scene configuration:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 24), context);
  }

  return v9;
}

@end