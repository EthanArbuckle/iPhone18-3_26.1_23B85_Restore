@interface FBSceneSnapshot
- (BOOL)hasProtectedContent;
- (FBSceneSnapshot)initWithScene:(id)a3 context:(id)a4;
- (id)_collectLayersToSnapshotFromScene:(void *)a3 withSnapshotConfig:(void *)a4 rootConfig:;
- (uint64_t)_initWithScene:(void *)a3 configuration:;
- (void)_baseTransformForSnapshotConfig:(void *)a3@<X2> rootConfig:(uint64_t)a4@<X8>;
@end

@implementation FBSceneSnapshot

- (BOOL)hasProtectedContent
{
  v2 = [(FBSceneSnapshot *)self fallbackIOSurface];
  v3 = v2 != 0;

  return v3;
}

- (void)_baseTransformForSnapshotConfig:(void *)a3@<X2> rootConfig:(uint64_t)a4@<X8>
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = MEMORY[0x1E695EFD0];
    v44 = *(MEMORY[0x1E695EFD0] + 16);
    v45 = *MEMORY[0x1E695EFD0];
    *a4 = *MEMORY[0x1E695EFD0];
    *(a4 + 16) = v44;
    v43 = *(v9 + 32);
    *(a4 + 32) = v43;
    v10 = [v7 settings];
    v11 = [v10 interfaceOrientation];

    if (BSInterfaceOrientationIsValid())
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    v13 = [v8 settings];
    v14 = [v13 interfaceOrientation];

    IsValid = BSInterfaceOrientationIsValid();
    v16 = [*(a1 + 8) settings];
    v17 = [v16 displayConfiguration];
    [v17 bounds];

    [v8 frame];
    v19 = v18;
    v21 = v20;
    if ([v8 orientation])
    {
      v22 = 1;
    }

    else
    {
      if (IsValid)
      {
        v22 = v14;
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
      v25 = [v7 settings];
      [v25 frame];

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
      CGAffineTransformConcat(a4, &t1, &t2);
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
        v29 = *(a4 + 16);
        *&v47.a = *a4;
        *&v47.c = v29;
        *&v47.tx = *(a4 + 32);
        v46 = t1;
        CGAffineTransformConcat(&t2, &v47, &v46);
        v30 = *&t2.c;
        *a4 = *&t2.a;
        *(a4 + 16) = v30;
        *(a4 + 32) = *&t2.tx;
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
        v32 = *(a4 + 16);
        *&v47.a = *a4;
        *&v47.c = v32;
        *&v47.tx = *(a4 + 32);
        v46 = t1;
        CGAffineTransformConcat(&t2, &v47, &v46);
        v33 = *&t2.c;
        *a4 = *&t2.a;
        *(a4 + 16) = v33;
        *(a4 + 32) = *&t2.tx;
        BSConvertRectFromOrientationToOrientation();
      }

      BSRectGetCenter();
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeTranslation(&t1, v34, v35);
      v36 = *(a4 + 16);
      *&v47.a = *a4;
      *&v47.c = v36;
      *&v47.tx = *(a4 + 32);
      v46 = t1;
      CGAffineTransformConcat(&t2, &v47, &v46);
      v37 = *&t2.c;
      *a4 = *&t2.a;
      *(a4 + 16) = v37;
      *(a4 + 32) = *&t2.tx;
    }

    memset(&v50, 0, sizeof(v50));
    CGAffineTransformMakeTranslation(&v50, -v19, -v21);
    v38 = *(a4 + 16);
    *&t2.a = *a4;
    *&t2.c = v38;
    *&t2.tx = *(a4 + 32);
    v47 = v50;
    CGAffineTransformConcat(&t1, &t2, &v47);
    v39 = *&t1.c;
    *a4 = *&t1.a;
    *(a4 + 16) = v39;
    *(a4 + 32) = *&t1.tx;
    [v8 scale];
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformMakeScale(&t1, v40, v40);
    v41 = *(a4 + 16);
    *&v47.a = *a4;
    *&v47.c = v41;
    *&v47.tx = *(a4 + 32);
    v46 = t1;
    CGAffineTransformConcat(&t2, &v47, &v46);
    v42 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v42;
    *(a4 + 32) = *&t2.tx;
  }

  else
  {
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }
}

- (uint64_t)_initWithScene:(void *)a3 configuration:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneSnapshot _initWithScene:configuration:]");
    }

    v24.receiver = a1;
    v24.super_class = FBSceneSnapshot;
    v8 = objc_msgSendSuper2(&v24, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong((a1 + 16), a3);
      v10 = [(FBSceneSnapshot *)a1 _collectLayersToSnapshotFromScene:v7 withSnapshotConfig:v7 rootConfig:?];
      v11 = objc_alloc(MEMORY[0x1E699FD08]);
      v12 = [v6 settings];
      v13 = [v12 displayConfiguration];
      v14 = [v11 initWithDisplayConfiguration:v13 layers:v10];

      [v7 scale];
      [v14 setScale:?];
      [v14 setOpaque:{objc_msgSend(v7, "isOpaque")}];
      [v14 setAllowsProtectedContent:{objc_msgSend(v7, "clientAllowsProtectedContent")}];
      [v7 frame];
      v16 = v15;
      v18 = v17;
      if (![v7 orientation])
      {
        v19 = [v7 settings];
        [v19 interfaceOrientation];
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
      v23 = *(a1 + 32);
      *(a1 + 32) = v22;
    }
  }

  return a1;
}

- (id)_collectLayersToSnapshotFromScene:(void *)a3 withSnapshotConfig:(void *)a4 rootConfig:
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v54 = v9;
  v52 = v8;
  if (a1)
  {
    v10 = v9;
    v11 = MEMORY[0x1E695DFA0];
    v12 = [v7 layerManager];
    v13 = [v12 layers];
    v14 = [v11 orderedSetWithOrderedSet:v13];

    v15 = [v8 layersToExclude];
    [v14 minusSet:v15];

    v16 = [MEMORY[0x1E695DFA0] orderedSet];
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v53 = a1;
    [(FBSceneSnapshot *)a1 _baseTransformForSnapshotConfig:v8 rootConfig:v10, &v61];
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

        v23 = *(*(&v56 + 1) + 8 * v22);
        v24 = [v23 contextID];
        if (v24)
        {
          v25 = v24;
          v26 = objc_alloc(MEMORY[0x1E699FD10]);
          memcpy(m, &__src, sizeof(m));
          v23 = [v26 initWithContextID:v25 baseTransform:m];
          if (v23)
          {
            [v16 addObject:v23];
          }

          goto LABEL_10;
        }

        if ([v23 isKeyboardLayer])
        {
          if (v17 == v7)
          {
            v27 = [[FBSceneSnapshotContext alloc] initWithScene:v17 configurator:0];
            v35 = OUTLINED_FUNCTION_0_3(v27, v28, v29, v30, v31, v32, v33, v34, v52, v53);
            v36 = [FBSceneSnapshot _collectLayersToSnapshotFromScene:v35 withSnapshotConfig:? rootConfig:?];
            [v16 unionOrderedSet:v36];

LABEL_10:
          }
        }

        else if ([v23 isKeyboardProxyLayer])
        {
          v37 = [v17 identityToken];
          v23 = [v23 proxiedKeyboardOwner];
          v38 = [v37 isEqual:v23];

          if (v38)
          {
            v39 = [[FBSceneSnapshotContext alloc] initWithScene:v17 configurator:0];
            v47 = OUTLINED_FUNCTION_0_3(v39, v40, v41, v42, v43, v44, v45, v46, v52, v53);
            v48 = [FBSceneSnapshot _collectLayersToSnapshotFromScene:v47 withSnapshotConfig:? rootConfig:?];
            [v16 unionOrderedSet:v48];

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

  v16 = 0;
LABEL_21:

  v50 = *MEMORY[0x1E69E9840];

  return v16;
}

- (FBSceneSnapshot)initWithScene:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = [(FBSceneSnapshot *)self _initWithScene:a3 configuration:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 24), a4);
  }

  return v9;
}

@end