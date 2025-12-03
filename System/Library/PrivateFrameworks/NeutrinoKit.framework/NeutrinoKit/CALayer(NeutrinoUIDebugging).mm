@interface CALayer(NeutrinoUIDebugging)
- (id)nu_layerRecursiveDescription;
- (void)_nu_recursiveDescriptionWithLevel:()NeutrinoUIDebugging result:;
@end

@implementation CALayer(NeutrinoUIDebugging)

- (id)nu_layerRecursiveDescription
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [self _nu_recursiveDescriptionWithLevel:0 result:v2];

  return v2;
}

- (void)_nu_recursiveDescriptionWithLevel:()NeutrinoUIDebugging result:
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 >= 1)
  {
    v7 = a3;
    do
    {
      [v6 appendFormat:@" | "];
      --v7;
    }

    while (v7);
  }

  memset(&v31, 0, sizeof(v31));
  [self transform];
  v30 = v31;
  if (CATransform3DIsIdentity(&v30))
  {
    v8 = &stru_286D64640;
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@", %@ = {{%g, %g, %g, %g}, {%g, %g, %g, %g}, {%g, %g, %g, %g}, {%g, %g, %g, %g}}", @"transform", *&v31.m11, *&v31.m13, *&v31.m21, *&v31.m23, *&v31.m31, *&v31.m33, *&v31.m41, *&v31.m43];
  }

  memset(&v30, 0, sizeof(v30));
  [self sublayerTransform];
  v29 = v30;
  v24 = v8;
  if (CATransform3DIsIdentity(&v29))
  {
    v9 = &stru_286D64640;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@", %@ = {{%g, %g, %g, %g}, {%g, %g, %g, %g}, {%g, %g, %g, %g}, {%g, %g, %g, %g}}", @"sublayerTransform", *&v30.m11, *&v30.m12, *&v30.m13, *&v30.m14, *&v30.m21, *&v30.m22, *&v30.m23, *&v30.m24, *&v30.m31, *&v30.m32, *&v30.m33, *&v30.m34, *&v30.m41, *&v30.m42, *&v30.m43, *&v30.m44];
  }

  v10 = objc_opt_class();
  v22 = NSStringFromClass(v10);
  [self frame];
  v11 = NSStringFromCGRect(v36);
  [self bounds];
  v12 = NSStringFromCGRect(v37);
  if ([self isHidden])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [self position];
  v14 = NSStringFromCGPoint(v34);
  [self anchorPoint];
  v15 = NSStringFromCGPoint(v35);
  preferredDynamicRange = [self preferredDynamicRange];
  v23 = v9;
  [v6 appendFormat:@"<%p %@> frame = %@, bounds = %@%@%@, isHidden = %@, position = %@, anchor = %@, edr = %@\n", self, v22, v11, v12, v24, v9, v13, v14, v15, preferredDynamicRange];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  sublayers = [self sublayers];
  v18 = [sublayers countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v25 + 1) + 8 * i) _nu_recursiveDescriptionWithLevel:a3 + 1 result:v6];
      }

      v19 = [sublayers countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v19);
  }
}

@end