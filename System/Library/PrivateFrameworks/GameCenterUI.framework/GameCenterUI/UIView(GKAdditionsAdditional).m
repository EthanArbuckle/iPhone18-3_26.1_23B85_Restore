@interface UIView(GKAdditionsAdditional)
- (__CFString)_gkAncestryAffectingVisualLayout;
- (id)_gkAncestryDescription;
- (id)_gkRecursiveDescriptionForKey:()GKAdditionsAdditional depth:;
- (id)_gkRecursiveDescriptionForValue:()GKAdditionsAdditional forKey:depth:;
- (void)_gkRecursivelyApplyBlock:()GKAdditionsAdditional depth:;
@end

@implementation UIView(GKAdditionsAdditional)

- (void)_gkRecursivelyApplyBlock:()GKAdditionsAdditional depth:
{
  v6 = a3;
  v6[2](v6, a1, a4);
  v7 = a4 + 1;
  v8 = [a1 subviews];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__UIView_GKAdditionsAdditional___gkRecursivelyApplyBlock_depth___block_invoke;
  v10[3] = &unk_279669B78;
  v11 = v6;
  v12 = v7;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:v10];
}

- (id)_gkRecursiveDescriptionForKey:()GKAdditionsAdditional depth:
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAB68] string];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__UIView_GKAdditionsAdditional___gkRecursiveDescriptionForKey_depth___block_invoke;
  v13[3] = &unk_279669BA0;
  v14 = v6;
  v8 = v7;
  v15 = v8;
  v9 = v6;
  [a1 _gkRecursivelyApplyBlock:v13 depth:a4];
  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)_gkRecursiveDescriptionForValue:()GKAdditionsAdditional forKey:depth:
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCAB68] string];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__UIView_GKAdditionsAdditional___gkRecursiveDescriptionForValue_forKey_depth___block_invoke;
  v17[3] = &unk_279669BC8;
  v18 = v9;
  v19 = v8;
  v11 = v10;
  v20 = v11;
  v12 = v8;
  v13 = v9;
  [a1 _gkRecursivelyApplyBlock:v17 depth:a5];
  v14 = v20;
  v15 = v11;

  return v11;
}

- (id)_gkAncestryDescription
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:32];
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p>", objc_opt_class(), v4];
      [v2 addObject:v5];

      v6 = [v4 superview];

      v4 = v6;
    }

    while (v6);
  }

  v7 = [v2 componentsJoinedByString:@" -> "];

  return v7;
}

- (__CFString)_gkAncestryAffectingVisualLayout
{
  v70 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:32];
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    v59 = *(MEMORY[0x277CBF348] + 8);
    v60 = *MEMORY[0x277CBF348];
    do
    {
      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [v4 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      memset(&v68, 0, sizeof(v68));
      v21 = [v4 layer];
      v22 = v21;
      if (v21)
      {
        [v21 transform];
      }

      else
      {
        memset(&v68, 0, sizeof(v68));
      }

      memset(&v67, 0, sizeof(v67));
      v23 = [v4 layer];
      v24 = v23;
      if (v23)
      {
        [v23 sublayerTransform];
      }

      else
      {
        memset(&v67, 0, sizeof(v67));
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = objc_opt_class();
      v72.origin.x = v6;
      v72.origin.y = v8;
      v72.size.width = v10;
      v72.size.height = v12;
      v27 = NSStringFromCGRect(v72);
      v28 = [v25 stringWithFormat:@"<%@ %p> frame:%@", v26, v4, v27];

      if (v14 != v60 || v16 != v59 || v18 != v10 || v20 != v12)
      {
        v73.origin.x = v14;
        v73.origin.y = v16;
        v73.size.width = v18;
        v73.size.height = v20;
        v29 = NSStringFromCGRect(v73);
        v30 = [v28 stringByAppendingFormat:@" bounds:%@", v29];

        v28 = v30;
      }

      v31 = [v4 layer];
      [v31 zPosition];
      v33 = v32;

      if (v33 != 0.0)
      {
        v34 = [v4 layer];
        [v34 zPosition];
        v36 = [v28 stringByAppendingFormat:@" zPos:%g", v35];

        v28 = v36;
      }

      v66 = v68;
      if (!CATransform3DIsIdentity(&v66))
      {
        v66 = v68;
        v37 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v66];
        v38 = [v28 stringByAppendingFormat:@" transform:%@", v37];

        v28 = v38;
      }

      v66 = v67;
      if (!CATransform3DIsIdentity(&v66))
      {
        v66 = v67;
        v39 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v66];
        v40 = [v28 stringByAppendingFormat:@" sublayerTransform:%@", v39];

        v28 = v40;
      }

      v41 = [v4 layer];
      v42 = [v41 animationKeys];

      if ([v42 count])
      {
        v43 = [v42 componentsJoinedByString:{@", "}];
        v44 = [v28 stringByAppendingFormat:@" animations:%@", v43];

        v28 = v44;
      }

      [v2 addObject:v28];
      v45 = [v4 superview];

      v4 = v45;
    }

    while (v45);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = v2;
  v46 = [v2 reverseObjectEnumerator];
  v47 = [v46 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = &stru_28612D290;
    v50 = *v63;
    v51 = &stru_28612D290;
    do
    {
      v52 = 0;
      v53 = v49;
      do
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(v46);
        }

        v54 = *(*(&v62 + 1) + 8 * v52);
        v55 = [(__CFString *)v51 stringByAppendingString:v53];

        v56 = [v55 stringByAppendingString:v54];

        v51 = [v56 stringByAppendingString:@"\n"];

        v49 = [(__CFString *)v53 stringByAppendingString:@" "];

        ++v52;
        v53 = v49;
      }

      while (v48 != v52);
      v48 = [v46 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v48);
  }

  else
  {
    v49 = &stru_28612D290;
    v51 = &stru_28612D290;
  }

  objc_autoreleasePoolPop(context);

  return v51;
}

@end