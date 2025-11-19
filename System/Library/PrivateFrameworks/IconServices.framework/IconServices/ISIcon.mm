@interface ISIcon
+ (BOOL)variant:(int)a3 isMemberOfSet:(unint64_t)a4;
+ (BOOL)writeCustomIcon:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (_LIIconVariantInfo)variantInfoForSet:(unint64_t)a3 count:(unint64_t *)a4;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)applicationIcon;
+ (id)sizesFromSet:(unint64_t)a3;
+ (id)templateTypeForType:(id)a3;
+ (int)findVariantFromSet:(unint64_t)a3 deviceIdiom:(unint64_t)a4 size:(CGSize)a5 scale:(double)a6;
- (CGImage)CGImageForDescriptor:(id)a3;
- (CGImage)CGImageForImageDescriptor:(id)a3;
- (ISIcon)iconWithDecorations:(id)a3;
- (ISIconIdentity)_identity;
- (id)_activeSignpostsForDescriptor:(id)a3;
- (id)_beginPrepareISIconSignpost:(id)a3 funcName:(const char *)a4;
- (id)_init;
- (id)_prepareImageForImageDescriptor:(id)a3;
- (id)imageForDescriptor:(id)a3;
- (id)imageForImageDescriptor:(id)a3;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (id)prepareImageForDescriptor:(id)a3;
- (void)_endPrepareISIconSignpost:(id)a3;
- (void)_prepareImagesForImageDescriptors:(id)a3;
- (void)getCGImageForImageDescriptor:(id)a3 completion:(id)a4;
- (void)prepareImagesForDescriptors:(id)a3;
- (void)prepareImagesForImageDescriptors:(id)a3;
@end

@implementation ISIcon

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ISIcon;
  result = [(ISIcon *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
  }

  return result;
}

+ (id)applicationIcon
{
  v2 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v3 = [ISIcon alloc];
  v4 = [v2 bundleIdentifier];
  v5 = [(ISIcon *)v3 initWithBundleIdentifier:v4];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__ISIcon_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a3;
    if (allocWithZone__onceToken != -1)
    {
      dispatch_once(&allocWithZone__onceToken, block);
    }

    v6 = allocWithZone__iconFactory;

    return v6;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___ISIcon;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

uint64_t __24__ISIcon_allocWithZone___block_invoke(uint64_t a1)
{
  allocWithZone__iconFactory = [ISIconFactory allocWithZone:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (ISIcon)iconWithDecorations:(id)a3
{
  v4 = a3;
  v5 = [[ISDecoratedIcon alloc] initWithIcon:self decorations:v4];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (CGImage)CGImageForImageDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(ISIcon *)self imageForImageDescriptor:v4];
  if ([v5 CGImage])
  {
    v6 = CFRetain([v5 CGImage]);
    v7 = CFAutorelease(v6);
  }

  else
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ISIcon CGImageForImageDescriptor:];
    }

    v9 = MEMORY[0x1E69A8988];
    v10 = [*MEMORY[0x1E6982E48] identifier];
    v11 = [v9 _placeholderImageWithImageDescriptor:v4 markAsPlaceholder:1 fallbackTypeID:v10 referenceIcon:self];

    if ([v11 CGImage])
    {
      v12 = CFRetain([v11 CGImage]);
      v7 = CFAutorelease(v12);
    }

    else
    {
      v7 = 0;
    }

    v5 = v11;
  }

  return v7;
}

- (CGImage)CGImageForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(ISIcon *)self imageForDescriptor:v4];
  if ([v5 CGImage])
  {
    v6 = CFRetain([v5 CGImage]);
    v7 = CFAutorelease(v6);
  }

  else
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ISIcon CGImageForImageDescriptor:];
    }

    v9 = MEMORY[0x1E69A8988];
    v10 = [*MEMORY[0x1E6982E48] identifier];
    v11 = [v9 _placeholderImageWithImageDescriptor:v4 markAsPlaceholder:1 fallbackTypeID:v10 referenceIcon:self];

    if ([v11 CGImage])
    {
      v12 = CFRetain([v11 CGImage]);
      v7 = CFAutorelease(v12);
    }

    else
    {
      v7 = 0;
    }

    v5 = v11;
  }

  return v7;
}

- (void)getCGImageForImageDescriptor:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ISIcon_getCGImageForImageDescriptor_completion___block_invoke;
  v8[3] = &unk_1E77C66E0;
  v9 = v6;
  v7 = v6;
  [(ISIcon *)self getImageForImageDescriptor:a3 completion:v8];
}

uint64_t __50__ISIcon_getCGImageForImageDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGImage];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (id)_beginPrepareISIconSignpost:(id)a3 funcName:(const char *)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v7 = _ISPrepareISIconSignpostLog();
    v8 = os_signpost_enabled(v7);

    if (v8)
    {
      v9 = [MEMORY[0x1E695DFA8] set];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v37 = v5;
      v10 = v5;
      v43 = [v10 countByEnumeratingWithState:&v44 objects:v72 count:16];
      if (v43)
      {
        v11 = *v45;
        v38 = v6;
        v42 = *v45;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v45 != v11)
            {
              objc_enumerationMutation(v10);
            }

            v13 = *(*(&v44 + 1) + 8 * i);
            v14 = [v13 digest];
            if (([v9 containsObject:v14] & 1) == 0)
            {
              [v9 addObject:v14];
              v15 = _ISPrepareISIconSignpostLog();
              v16 = os_signpost_id_generate(v15);

              if (v16)
              {
                v17 = _ISPrepareISIconSignpostLog();
                v18 = v17;
                if (v16 != -1 && os_signpost_enabled(v17))
                {
                  [v13 size];
                  v20 = v19;
                  [v13 size];
                  v22 = v21;
                  [v13 scale];
                  v24 = v23;
                  v41 = [v13 variantOptions];
                  v40 = [v13 appearance];
                  v25 = [v13 appearanceVariant];
                  v26 = [v13 platformStyle];
                  v27 = [v10 count];
                  *buf = 138415106;
                  v49 = self;
                  v50 = 2048;
                  v51 = v13;
                  v52 = 2048;
                  v53 = v20;
                  v54 = 2048;
                  v55 = v22;
                  v56 = 2048;
                  v57 = v24;
                  v58 = 2048;
                  v59 = v41;
                  v60 = 2048;
                  v61 = v40;
                  v62 = 2048;
                  v63 = v25;
                  v64 = 2048;
                  v65 = v26;
                  v66 = 2080;
                  v6 = v38;
                  v67 = a4;
                  v68 = 2112;
                  v69 = v14;
                  v70 = 2048;
                  v71 = v27;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PrepareISIcon", "ISIcon: %@, descriptor: <ISImageDescriptor: %p> s (%0.2f, %0.2f)@%.0fx v:%lx a:%ld:%ld ps:%ld , func: %s, Digest=%{signpost.telemetry:string1}@, NumDescriptors=%{signpost.telemetry:number1}lu enableTelemetry=YES ", buf, 0x7Au);
                }

                os_unfair_lock_lock(&self->_lock);
                v28 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];

                if (!v28)
                {
                  v29 = [MEMORY[0x1E695DF90] dictionary];
                  [(ISIcon *)self setPrepareISIconDigestToSignpostIDs:v29];
                }

                v30 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                v31 = [v30 objectForKeyedSubscript:v14];

                if (!v31)
                {
                  v31 = [MEMORY[0x1E695DFA8] set];
                  v32 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                  [v32 setObject:v31 forKeyedSubscript:v14];
                }

                v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
                [v31 addObject:v33];

                v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
                [v6 addObject:v34];

                os_unfair_lock_unlock(&self->_lock);
                v11 = v42;
              }
            }
          }

          v43 = [v10 countByEnumeratingWithState:&v44 objects:v72 count:16];
        }

        while (v43);
      }

      v5 = v37;
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_endPrepareISIconSignpost:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = _ISPrepareISIconSignpostLog();
    v6 = os_signpost_enabled(v5);

    if (v6)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = v4;
      obj = v4;
      v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v30)
      {
        v29 = *v37;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v37 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v36 + 1) + 8 * i);
            if ([v8 unsignedLongLongValue])
            {
              v9 = _ISPrepareISIconSignpostLog();
              v10 = os_signpost_enabled(v9);

              if (v10)
              {
                v11 = _ISPrepareISIconSignpostLog();
                v12 = [v8 unsignedLongLongValue];
                if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v13 = v12;
                  if (os_signpost_enabled(v11))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1A77B8000, v11, OS_SIGNPOST_INTERVAL_END, v13, "PrepareISIcon", "", buf, 2u);
                  }
                }
              }
            }

            os_unfair_lock_lock(&self->_lock);
            v14 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
            v15 = [v14 allKeys];
            v16 = [v15 copy];

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v32;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v32 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v31 + 1) + 8 * j);
                  v23 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                  v24 = [v23 objectForKeyedSubscript:v22];

                  [v24 removeObject:v8];
                  if (![v24 count])
                  {
                    v25 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                    [v25 removeObjectForKey:v22];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
              }

              while (v19);
            }

            os_unfair_lock_unlock(&self->_lock);
          }

          v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v30);
      }

      v4 = v27;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)_activeSignpostsForDescriptor:(id)a3
{
  v4 = a3;
  if (v4 && (_ISPrepareISIconSignpostLog(), v5 = objc_claimAutoreleasedReturnValue(), v6 = os_signpost_enabled(v5), v5, v6))
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
    v8 = [v4 digest];
    v9 = [v7 objectForKey:v8];
    v10 = [v9 copy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_prepareImagesForImageDescriptors:(id)a3
{
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ISIcon *)self _prepareImagesForImageDescriptors:v4];
  }
}

- (void)prepareImagesForImageDescriptors:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ISIcon *)self _tweakCopiedImageDescriptorsIfNecessary:v5];
  v12 = [(ISIcon *)self _beginPrepareISIconSignpost:v5 funcName:"[ISIcon prepareImagesForImageDescriptors:]"];
  [(ISIcon *)self _prepareImagesForImageDescriptors:v5];
  [(ISIcon *)self _endPrepareISIconSignpost:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)prepareImagesForDescriptors:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{0, v14}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ISIcon *)self _tweakCopiedImageDescriptorsIfNecessary:v5];
  v12 = [(ISIcon *)self _beginPrepareISIconSignpost:v5 funcName:"[ISIcon prepareImagesForDescriptors:]"];
  [(ISIcon *)self _prepareImagesForImageDescriptors:v5];
  [(ISIcon *)self _endPrepareISIconSignpost:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)prepareImageForDescriptor:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 copyWithZone:0];
    v13[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7 = [(ISIcon *)self _beginPrepareISIconSignpost:v6 funcName:"[ISIcon prepareImageForDescriptor:]"];
    v8 = [(ISIcon *)self imageForDescriptor:v5];
    v9 = v8;
    if (!v8 || [v8 placeholder])
    {
      [v5 setIgnoreCache:0];
      [(ISIcon *)self _prepareImagesForImageDescriptors:v6];
      v10 = [(ISIcon *)self imageForDescriptor:v5];

      v9 = v10;
    }

    [(ISIcon *)self _endPrepareISIconSignpost:v7];
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)imageForImageDescriptor:(id)a3
{
  v4 = a3;
  v5 = _ISDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ISIcon imageForImageDescriptor:v5];
  }

  v6 = [(ISIcon *)self prepareImageForDescriptor:v4];

  return v6;
}

- (id)imageForDescriptor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISIcon *)self imageForImageDescriptor:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISIcon *)self _imageForSymbolImageDescriptor:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (ISIconIdentity)_identity
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [[ISImageDescriptor alloc] initWithSize:32.0 scale:32.0, 1.0];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v4];

  v5 = [(ISIcon *)self imageForImageDescriptor:v3];
  v6 = [v5 uuid];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)writeCustomIcon:(id)a3 toURL:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  return 0;
}

- (id)_prepareImageForImageDescriptor:(id)a3
{
  v4 = a3;
  v5 = _ISDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ISIcon(Workaround) _prepareImageForImageDescriptor:v5];
  }

  v6 = [(ISIcon *)self prepareImageForDescriptor:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 bitmapData];
  }

  return 0;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [[ISImageDescriptor alloc] initWithSize:a3.width scale:a3.height, a4];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v6];

  v7 = [(ISIcon *)self imageForImageDescriptor:v5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (_LIIconVariantInfo)variantInfoForSet:(unint64_t)a3 count:(unint64_t *)a4
{
  v5 = a3;
  if (a3 >= 5)
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ISIcon(LIIconVariant) variantInfoForSet:v5 count:v8];
    }

    v6 = 0;
    result = 0;
  }

  else
  {
    v6 = qword_1A782D0D0[a3];
    result = *(&off_1E77C6C60 + a3);
  }

  *a4 = v6;
  return result;
}

+ (int)findVariantFromSet:(unint64_t)a3 deviceIdiom:(unint64_t)a4 size:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v10 = [ISIcon variantInfoForSet:a3 count:&v20];
  v11 = v20;
  if (v20)
  {
    v12 = 0;
    p_var2 = &v10->var2;
    while (1)
    {
      if ((p_var2[1] & a4) != 0 && *p_var2 == a6)
      {
        v12 = *(p_var2 - 6);
        if (*(p_var2 - 1) >= height || *(p_var2 - 2) >= width)
        {
          break;
        }
      }

      p_var2 += 6;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(p_var2 + 2);
      *buf = 136315906;
      v22 = v19;
      v23 = 2048;
      v24 = width;
      v25 = 2048;
      v26 = height;
      v27 = 2048;
      v28 = a6;
      _os_log_debug_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEBUG, "Picked %s for size: (%lf, %lf) scale: %lf", buf, 0x2Au);
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)sizesFromSet:(unint64_t)a3
{
  v12 = 0;
  v3 = [ISIcon variantInfoForSet:a3 count:&v12];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
  if (v12)
  {
    v5 = 0;
    p_var1 = &v3->var1;
    do
    {
      v7 = *p_var1;
      p_var1 += 3;
      v11 = v7;
      v8 = [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:"{CGSize=dd}"];
      [v4 addObject:v8];

      ++v5;
    }

    while (v12 > v5);
  }

  v9 = [v4 copy];

  return v9;
}

+ (BOOL)variant:(int)a3 isMemberOfSet:(unint64_t)a4
{
  v11 = 0;
  v5 = [ISIcon variantInfoForSet:a4 count:&v11];
  if (!v11)
  {
    return 0;
  }

  if (v5->var0 == a3)
  {
    return 1;
  }

  v7 = v5 + 1;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v11 == v8)
    {
      break;
    }

    var0 = v7->var0;
    ++v7;
    ++v8;
  }

  while (var0 != a3);
  return v11 > v9;
}

+ (id)templateTypeForType:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = *MEMORY[0x1E6963800];
  }

  return v3;
}

- (void)CGImageForImageDescriptor:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1A77B8000, v0, OS_LOG_TYPE_ERROR, "Failed to create icon image for %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_prepareImagesForImageDescriptors:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Should not be here. -_prepareImagesForImageDescriptors: should be overridden by: %s", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end