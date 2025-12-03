@interface ISIcon
+ (BOOL)variant:(int)variant isMemberOfSet:(unint64_t)set;
+ (BOOL)writeCustomIcon:(id)icon toURL:(id)l error:(id *)error;
+ (_LIIconVariantInfo)variantInfoForSet:(unint64_t)set count:(unint64_t *)count;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)applicationIcon;
+ (id)sizesFromSet:(unint64_t)set;
+ (id)templateTypeForType:(id)type;
+ (int)findVariantFromSet:(unint64_t)set deviceIdiom:(unint64_t)idiom size:(CGSize)size scale:(double)scale;
- (CGImage)CGImageForDescriptor:(id)descriptor;
- (CGImage)CGImageForImageDescriptor:(id)descriptor;
- (ISIcon)iconWithDecorations:(id)decorations;
- (ISIconIdentity)_identity;
- (id)_activeSignpostsForDescriptor:(id)descriptor;
- (id)_beginPrepareISIconSignpost:(id)signpost funcName:(const char *)name;
- (id)_init;
- (id)_prepareImageForImageDescriptor:(id)descriptor;
- (id)imageForDescriptor:(id)descriptor;
- (id)imageForImageDescriptor:(id)descriptor;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)prepareImageForDescriptor:(id)descriptor;
- (void)_endPrepareISIconSignpost:(id)signpost;
- (void)_prepareImagesForImageDescriptors:(id)descriptors;
- (void)getCGImageForImageDescriptor:(id)descriptor completion:(id)completion;
- (void)prepareImagesForDescriptors:(id)descriptors;
- (void)prepareImagesForImageDescriptors:(id)descriptors;
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
  bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v3 = [ISIcon alloc];
  bundleIdentifier = [bundleProxyForCurrentProcess bundleIdentifier];
  v5 = [(ISIcon *)v3 initWithBundleIdentifier:bundleIdentifier];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__ISIcon_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = zone;
    if (allocWithZone__onceToken != -1)
    {
      dispatch_once(&allocWithZone__onceToken, block);
    }

    v6 = allocWithZone__iconFactory;

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___ISIcon;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

uint64_t __24__ISIcon_allocWithZone___block_invoke(uint64_t a1)
{
  allocWithZone__iconFactory = [ISIconFactory allocWithZone:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (ISIcon)iconWithDecorations:(id)decorations
{
  decorationsCopy = decorations;
  v5 = [[ISDecoratedIcon alloc] initWithIcon:self decorations:decorationsCopy];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (CGImage)CGImageForImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(ISIcon *)self imageForImageDescriptor:descriptorCopy];
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
    identifier = [*MEMORY[0x1E6982E48] identifier];
    v11 = [v9 _placeholderImageWithImageDescriptor:descriptorCopy markAsPlaceholder:1 fallbackTypeID:identifier referenceIcon:self];

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

- (CGImage)CGImageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(ISIcon *)self imageForDescriptor:descriptorCopy];
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
    identifier = [*MEMORY[0x1E6982E48] identifier];
    v11 = [v9 _placeholderImageWithImageDescriptor:descriptorCopy markAsPlaceholder:1 fallbackTypeID:identifier referenceIcon:self];

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

- (void)getCGImageForImageDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ISIcon_getCGImageForImageDescriptor_completion___block_invoke;
  v8[3] = &unk_1E77C66E0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ISIcon *)self getImageForImageDescriptor:descriptor completion:v8];
}

uint64_t __50__ISIcon_getCGImageForImageDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGImage];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (id)_beginPrepareISIconSignpost:(id)signpost funcName:(const char *)name
{
  v73 = *MEMORY[0x1E69E9840];
  signpostCopy = signpost;
  array = [MEMORY[0x1E695DF70] array];
  if ([signpostCopy count])
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
      v37 = signpostCopy;
      v10 = signpostCopy;
      v43 = [v10 countByEnumeratingWithState:&v44 objects:v72 count:16];
      if (v43)
      {
        v11 = *v45;
        v38 = array;
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
            digest = [v13 digest];
            if (([v9 containsObject:digest] & 1) == 0)
            {
              [v9 addObject:digest];
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
                  variantOptions = [v13 variantOptions];
                  appearance = [v13 appearance];
                  appearanceVariant = [v13 appearanceVariant];
                  platformStyle = [v13 platformStyle];
                  v27 = [v10 count];
                  *buf = 138415106;
                  selfCopy = self;
                  v50 = 2048;
                  v51 = v13;
                  v52 = 2048;
                  v53 = v20;
                  v54 = 2048;
                  v55 = v22;
                  v56 = 2048;
                  v57 = v24;
                  v58 = 2048;
                  v59 = variantOptions;
                  v60 = 2048;
                  v61 = appearance;
                  v62 = 2048;
                  v63 = appearanceVariant;
                  v64 = 2048;
                  v65 = platformStyle;
                  v66 = 2080;
                  array = v38;
                  nameCopy = name;
                  v68 = 2112;
                  v69 = digest;
                  v70 = 2048;
                  v71 = v27;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PrepareISIcon", "ISIcon: %@, descriptor: <ISImageDescriptor: %p> s (%0.2f, %0.2f)@%.0fx v:%lx a:%ld:%ld ps:%ld , func: %s, Digest=%{signpost.telemetry:string1}@, NumDescriptors=%{signpost.telemetry:number1}lu enableTelemetry=YES ", buf, 0x7Au);
                }

                os_unfair_lock_lock(&self->_lock);
                prepareISIconDigestToSignpostIDs = [(ISIcon *)self prepareISIconDigestToSignpostIDs];

                if (!prepareISIconDigestToSignpostIDs)
                {
                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  [(ISIcon *)self setPrepareISIconDigestToSignpostIDs:dictionary];
                }

                prepareISIconDigestToSignpostIDs2 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                v31 = [prepareISIconDigestToSignpostIDs2 objectForKeyedSubscript:digest];

                if (!v31)
                {
                  v31 = [MEMORY[0x1E695DFA8] set];
                  prepareISIconDigestToSignpostIDs3 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                  [prepareISIconDigestToSignpostIDs3 setObject:v31 forKeyedSubscript:digest];
                }

                v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
                [v31 addObject:v33];

                v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
                [array addObject:v34];

                os_unfair_lock_unlock(&self->_lock);
                v11 = v42;
              }
            }
          }

          v43 = [v10 countByEnumeratingWithState:&v44 objects:v72 count:16];
        }

        while (v43);
      }

      signpostCopy = v37;
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)_endPrepareISIconSignpost:(id)signpost
{
  v42 = *MEMORY[0x1E69E9840];
  signpostCopy = signpost;
  if ([signpostCopy count])
  {
    v5 = _ISPrepareISIconSignpostLog();
    v6 = os_signpost_enabled(v5);

    if (v6)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = signpostCopy;
      obj = signpostCopy;
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
                unsignedLongLongValue = [v8 unsignedLongLongValue];
                if ((unsignedLongLongValue - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v13 = unsignedLongLongValue;
                  if (os_signpost_enabled(v11))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1A77B8000, v11, OS_SIGNPOST_INTERVAL_END, v13, "PrepareISIcon", "", buf, 2u);
                  }
                }
              }
            }

            os_unfair_lock_lock(&self->_lock);
            prepareISIconDigestToSignpostIDs = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
            allKeys = [prepareISIconDigestToSignpostIDs allKeys];
            v16 = [allKeys copy];

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
                  prepareISIconDigestToSignpostIDs2 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                  v24 = [prepareISIconDigestToSignpostIDs2 objectForKeyedSubscript:v22];

                  [v24 removeObject:v8];
                  if (![v24 count])
                  {
                    prepareISIconDigestToSignpostIDs3 = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
                    [prepareISIconDigestToSignpostIDs3 removeObjectForKey:v22];
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

      signpostCopy = v27;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)_activeSignpostsForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy && (_ISPrepareISIconSignpostLog(), v5 = objc_claimAutoreleasedReturnValue(), v6 = os_signpost_enabled(v5), v5, v6))
  {
    os_unfair_lock_lock(&self->_lock);
    prepareISIconDigestToSignpostIDs = [(ISIcon *)self prepareISIconDigestToSignpostIDs];
    digest = [descriptorCopy digest];
    v9 = [prepareISIconDigestToSignpostIDs objectForKey:digest];
    v10 = [v9 copy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_prepareImagesForImageDescriptors:(id)descriptors
{
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ISIcon *)self _prepareImagesForImageDescriptors:v4];
  }
}

- (void)prepareImagesForImageDescriptors:(id)descriptors
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = descriptorsCopy;
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

- (void)prepareImagesForDescriptors:(id)descriptors
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = descriptorsCopy;
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

- (id)prepareImageForDescriptor:(id)descriptor
{
  v13[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [descriptorCopy copyWithZone:0];
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

- (id)imageForImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = _ISDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ISIcon imageForImageDescriptor:v5];
  }

  v6 = [(ISIcon *)self prepareImageForDescriptor:descriptorCopy];

  return v6;
}

- (id)imageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISIcon *)self imageForImageDescriptor:descriptorCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ISIcon *)self _imageForSymbolImageDescriptor:descriptorCopy];
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
  uuid = [v5 uuid];

  v7 = *MEMORY[0x1E69E9840];

  return uuid;
}

+ (BOOL)writeCustomIcon:(id)icon toURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  return 0;
}

- (id)_prepareImageForImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = _ISDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ISIcon(Workaround) _prepareImageForImageDescriptor:v5];
  }

  v6 = [(ISIcon *)self prepareImageForDescriptor:descriptorCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 bitmapData];
  }

  return 0;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  v10[1] = *MEMORY[0x1E69E9840];
  scale = [[ISImageDescriptor alloc] initWithSize:size.width scale:size.height, scale];
  v10[0] = scale;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v6];

  v7 = [(ISIcon *)self imageForImageDescriptor:scale];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (_LIIconVariantInfo)variantInfoForSet:(unint64_t)set count:(unint64_t *)count
{
  setCopy = set;
  if (set >= 5)
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ISIcon(LIIconVariant) variantInfoForSet:setCopy count:v8];
    }

    v6 = 0;
    result = 0;
  }

  else
  {
    v6 = qword_1A782D0D0[set];
    result = *(&off_1E77C6C60 + set);
  }

  *count = v6;
  return result;
}

+ (int)findVariantFromSet:(unint64_t)set deviceIdiom:(unint64_t)idiom size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v10 = [ISIcon variantInfoForSet:set count:&v20];
  v11 = v20;
  if (v20)
  {
    v12 = 0;
    p_var2 = &v10->var2;
    while (1)
    {
      if ((p_var2[1] & idiom) != 0 && *p_var2 == scale)
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
      scaleCopy = scale;
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

+ (id)sizesFromSet:(unint64_t)set
{
  v12 = 0;
  v3 = [ISIcon variantInfoForSet:set count:&v12];
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

+ (BOOL)variant:(int)variant isMemberOfSet:(unint64_t)set
{
  v11 = 0;
  v5 = [ISIcon variantInfoForSet:set count:&v11];
  if (!v11)
  {
    return 0;
  }

  if (v5->var0 == variant)
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

  while (var0 != variant);
  return v11 > v9;
}

+ (id)templateTypeForType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    typeCopy = *MEMORY[0x1E6963800];
  }

  return typeCopy;
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