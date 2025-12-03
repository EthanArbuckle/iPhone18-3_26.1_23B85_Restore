@interface TKAdaptiveImage
+ (id)zeroTrait;
- (TKAdaptiveImage)init;
- (id)imageTraitForMetrics;
- (id)traits;
- (id)url:(id)url withTrait:(id)trait;
- (void)adaptiveMetricsDidChange;
- (void)dealloc;
- (void)didLoadImage:(id)image state:(unint64_t)state;
- (void)loadWithTrait:(id)trait;
- (void)setQuality:(double)quality;
- (void)setState:(unint64_t)state;
- (void)setUrl:(id)url;
- (void)start;
- (void)stop;
- (void)tmlDispose;
@end

@implementation TKAdaptiveImage

- (TKAdaptiveImage)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = TKAdaptiveImage;
  v6 = [(TKAdaptiveResourceObject *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    v6->_quality = 0.850000024;
    v6->_supportsTraits = 1;
    v6->_state = 0;
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(TKAdaptiveImage *)self stop];
  v2.receiver = selfCopy;
  v2.super_class = TKAdaptiveImage;
  [(TKAdaptiveResourceObject *)&v2 dealloc];
}

- (void)tmlDispose
{
  selfCopy = self;
  v3 = a2;
  [(TKAdaptiveImage *)self stop];
  v2.receiver = selfCopy;
  v2.super_class = TKAdaptiveImage;
  [(TKAdaptiveResourceObject *)&v2 tmlDispose];
}

- (void)setUrl:(id)url
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, url);
  if (selfCopy->_url != location[0] && ([(NSURL *)selfCopy->_url isEqual:location[0]]& 1) == 0)
  {
    objc_storeStrong(&selfCopy->_url, location[0]);
    if (selfCopy->_state)
    {
      [(TKAdaptiveImage *)selfCopy stop];
      [(TKAdaptiveImage *)selfCopy start];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setQuality:(double)quality
{
  qualityCopy = quality;
  if (quality > 1.0 || quality <= 0.0)
  {
    qualityCopy = 0.850000024;
  }

  self->_quality = qualityCopy;
}

- (void)setState:(unint64_t)state
{
  self->_state = state;
  v3 = state == 1;
  if ((state == 1) != self->_loading)
  {
    [(TKAdaptiveImage *)self willChangeValueForKey:?];
    self->_loading = v3;
    [(TKAdaptiveImage *)self didChangeValueForKey:@"loading"];
  }
}

- (void)start
{
  selfCopy = self;
  v7[1] = a2;
  if (self->_state != 1 && selfCopy->_state != 2)
  {
    if (selfCopy->_image)
    {
      [(TKAdaptiveImage *)selfCopy willChangeValueForKey:?];
      objc_storeStrong(&selfCopy->_image, 0);
      [(TKAdaptiveImage *)selfCopy didChangeValueForKey:@"image"];
    }

    scheme = [(NSURL *)selfCopy->_url scheme];
    v4 = [(NSString *)scheme length];
    MEMORY[0x277D82BD8](scheme);
    if (v4)
    {
      selfCopy->_supportsTraits = 1;
      [(TKAdaptiveImage *)selfCopy setState:1];
      imageTraitForMetrics = [(TKAdaptiveImage *)selfCopy imageTraitForMetrics];
      [(TKAdaptiveImage *)selfCopy loadWithTrait:?];
      MEMORY[0x277D82BD8](imageTraitForMetrics);
    }

    else
    {
      selfCopy->_supportsTraits = 0;
      v7[0] = [(NSURL *)selfCopy->_url path];
      if (![v7[0] length] || ((location = objc_msgSend(MEMORY[0x277D755B8], "imageNamed:", v7[0])) == 0 ? (v5 = 0) : (-[TKAdaptiveImage didLoadImage:state:](selfCopy, "didLoadImage:state:", location, 2), v5 = 1), objc_storeStrong(&location, 0), !v5))
      {
        [(TKAdaptiveImage *)selfCopy didLoadImage:0 state:3];
      }

      objc_storeStrong(v7, 0);
    }
  }
}

- (void)stop
{
  if (self->_state == 1)
  {
    [(TKAdaptiveImage *)self setState:4];
    if (self->_task)
    {
      [(TKNetworkTask *)self->_task cancel];
      objc_storeStrong(&self->_task, 0);
    }
  }

  else
  {
    [(TKAdaptiveImage *)self setState:4];
  }
}

- (void)loadWithTrait:(id)trait
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trait);
  if (selfCopy->_supportsTraits && selfCopy->_url)
  {
    if (location[0])
    {
      v17 = [(TKAdaptiveImage *)selfCopy url:selfCopy->_url withTrait:location[0]];
      if (([v17 isEqual:selfCopy->_currentURL] & 1) != 0 && selfCopy->_image)
      {
        v18 = 1;
      }

      else
      {
        [(TKAdaptiveImage *)selfCopy setState:1];
        objc_storeStrong(&selfCopy->_currentURL, v17);
        if (selfCopy->_image && selfCopy->_currentTrait && ![(TKAdaptiveImage_Trait *)selfCopy->_currentTrait compatibleWithTrait:location[0]])
        {
          [(TKAdaptiveImage *)selfCopy willChangeValueForKey:?];
          objc_storeStrong(&selfCopy->_image, 0);
          [(TKAdaptiveImage *)selfCopy didChangeValueForKey:@"image"];
        }

        objc_storeStrong(&selfCopy->_currentTrait, location[0]);
        v16 = 0;
        if ([(NSString *)selfCopy->_priority isEqualToString:@"high"])
        {
          v16 = 1;
        }

        else if ([(NSString *)selfCopy->_priority isEqualToString:@"low"])
        {
          v16 = -1;
        }

        objc_initWeak(&from, selfCopy);
        v7 = +[TKNetwork shared];
        v5 = [MEMORY[0x277CCAD20] requestWithURL:v17];
        v6 = v16;
        v8 = MEMORY[0x277D85DD0];
        v9 = -1073741824;
        v10 = 0;
        v11 = __33__TKAdaptiveImage_loadWithTrait___block_invoke;
        v12 = &unk_2797EE6E0;
        v13 = MEMORY[0x277D82BE0](v17);
        objc_copyWeak(v14, &from);
        v3 = [v7 downloadImage:v5 priority:v6 completion:&v8];
        task = selfCopy->_task;
        selfCopy->_task = v3;
        MEMORY[0x277D82BD8](task);
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v7);
        objc_destroyWeak(v14);
        objc_storeStrong(&v13, 0);
        objc_destroyWeak(&from);
        v18 = 0;
      }

      objc_storeStrong(&v17, 0);
    }

    else
    {
      objc_storeStrong(&selfCopy->_currentURL, 0);
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  objc_storeStrong(location, 0);
}

void __33__TKAdaptiveImage_loadWithTrait___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v8 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained currentURL];
  v11 = [v8 isEqual:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](WeakRetained);
  if (v11)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v5 = v3;
    if (v12)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    [v3 didLoadImage:location[0] state:v4];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)didLoadImage:(id)image state:(unint64_t)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  objc_storeStrong(&selfCopy->_task, 0);
  if (location[0])
  {
    [(TKAdaptiveImage *)selfCopy willChangeValueForKey:?];
    objc_storeStrong(&selfCopy->_image, location[0]);
    [(TKAdaptiveImage *)selfCopy didChangeValueForKey:@"image"];
  }

  [(TKAdaptiveImage *)selfCopy setState:state];
  if (state == 3)
  {
    [(TKAdaptiveImage *)selfCopy emitTMLSignal:@"error" withArguments:0];
  }

  objc_storeStrong(location, 0);
}

- (void)adaptiveMetricsDidChange
{
  selfCopy = self;
  v2[1] = a2;
  if (self->_supportsTraits)
  {
    v2[0] = [(TKAdaptiveImage *)selfCopy imageTraitForMetrics];
    [(TKAdaptiveImage *)selfCopy loadWithTrait:v2[0]];
    objc_storeStrong(v2, 0);
  }
}

+ (id)zeroTrait
{
  v5 = &zeroTrait_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_9);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = zeroTrait_zeroTrait;

  return v2;
}

uint64_t __28__TKAdaptiveImage_zeroTrait__block_invoke()
{
  v0 = objc_alloc_init(TKAdaptiveImage_Trait);
  v1 = zeroTrait_zeroTrait;
  zeroTrait_zeroTrait = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (id)traits
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  tmlChildren = [(TKAdaptiveImage *)selfCopy tmlChildren];
  v5 = MEMORY[0x277D82BE0](v6[0]);
  [tmlChildren enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](tmlChildren);
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

void __25__TKAdaptiveImage_traits__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1[4] addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)imageTraitForMetrics
{
  v16 = &selfCopy;
  selfCopy = self;
  v33 = a2;
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  zeroTrait = [objc_opt_class() zeroTrait];
  v17 = +[TKAdaptiveResourceManager traitCollection];
  v25 = v17;
  traits = [(TKAdaptiveImage *)selfCopy traits];
  v14 = traits;
  v13 = &v19;
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __39__TKAdaptiveImage_imageTraitForMetrics__block_invoke;
  v23 = &unk_2797EE730;
  location = v24;
  v24[0] = MEMORY[0x277D82BE0](v25);
  v24[1] = &v26;
  [v14 enumerateObjectsUsingBlock:&v19];
  MEMORY[0x277D82BD8](v14);
  v10 = v27[5];
  v11 = objc_opt_class();
  zeroTrait2 = [v11 zeroTrait];
  v8 = zeroTrait2;
  MEMORY[0x277D82BD8](v8);
  if (v10 == v8)
  {
    if ((*v16)->_url)
    {
      absoluteString = [(NSURL *)(*v16)->_url absoluteString];
      v6 = absoluteString;
      NSLog(&cfstr_AdaptiveimageN.isa, v6);
      MEMORY[0x277D82BD8](v6);
    }

    v16[1] = 0;
    v18 = 1;
  }

  else
  {
    v16[1] = MEMORY[0x277D82BE0](v27[5]);
    v18 = 1;
  }

  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v25, obj);
  v4 = &v26;
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(v4 + 5, obj);
  v2 = v16[1];

  return v2;
}

void __39__TKAdaptiveImage_imageTraitForMetrics__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] horizontalSizeClass];
  if (v4 == [*(a1 + 32) horizontalSizeClass] || !objc_msgSend(location[0], "horizontalSizeClass"))
  {
    v2 = [location[0] verticalSizeClass];
    if ((v2 == [*(a1 + 32) verticalSizeClass] || !objc_msgSend(location[0], "verticalSizeClass")) && (!objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "horizontalSizeClass") || !objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "verticalSizeClass")))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
    }
  }

  objc_storeStrong(location, 0);
}

- (id)url:(id)url withTrait:(id)trait
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, url);
  v103 = 0;
  objc_storeStrong(&v103, trait);
  [v103 size];
  *&v102 = v4;
  *(&v102 + 1) = v5;
  if (__CGSizeEqualToSize_0(v4, v5, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    if ([v103 useReadableWidth])
    {
      +[TKAdaptiveResourceManager readableContentSize];
      v99 = v6;
      v100 = v7;
    }

    else
    {
      +[TKAdaptiveResourceManager size];
      v97 = v6;
      v98 = v8;
    }

    v101 = v6;
    [v103 relativeSize];
    v94 = v9;
    v95 = v10;
    [v103 relativeSize];
    v92 = v11;
    v93 = v12;
    CGSizeMake_0();
    *&v96 = v13;
    *(&v96 + 1) = v14;
    v102 = v96;
  }

  v109 = *(&v102 + 1);
  v110 = v102;
  CGSizeMake_0();
  *&v91 = v15;
  *(&v91 + 1) = v16;
  v102 = v91;
  [v103 maxSize];
  v89 = v17;
  v90 = v18;
  if (!__CGSizeEqualToSize_0(v17, v18, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [v103 maxSize];
    v86 = v19;
    v87 = v20;
    if (*&v102 >= v19)
    {
      [v103 maxSize];
      v84 = v21;
      v85 = v22;
    }

    [v103 maxSize];
    v82 = v23;
    v83 = v24;
    if (*(&v102 + 1) >= v24)
    {
      [v103 maxSize];
      v80 = v25;
      v81 = v26;
    }

    CGSizeMake_0();
    *&v88 = v27;
    *(&v88 + 1) = v28;
    v102 = v88;
  }

  [v103 minSize];
  v78 = v29;
  v79 = v30;
  if (!__CGSizeEqualToSize_0(v29, v30, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [v103 minSize];
    v75 = v31;
    v76 = v32;
    if (*&v102 <= v31)
    {
      [v103 minSize];
      v73 = v33;
      v74 = v34;
    }

    [v103 minSize];
    v71 = v35;
    v72 = v36;
    if (*(&v102 + 1) <= v36)
    {
      [v103 minSize];
      v69 = v37;
      v70 = v38;
    }

    CGSizeMake_0();
    *&v77 = v39;
    *(&v77 + 1) = v40;
    v102 = v77;
  }

  v57 = +[TKAdaptiveResourceManager traitCollection];
  [v57 displayScale];
  v58 = v41;
  MEMORY[0x277D82BD8](v57);
  v68 = v58;
  if (v58 == 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v68 = v42;
    MEMORY[0x277D82BD8](mainScreen);
  }

  v108 = *&v102 * v68;
  v107 = *(&v102 + 1) * v68;
  CGSizeMake_0();
  *&v67 = v43;
  *(&v67 + 1) = v44;
  v102 = v67;
  whiteColor = MEMORY[0x277D82BE0](selfCopy->_backgroundColor);
  if (whiteColor)
  {
    v65 = 0.0;
    [whiteColor getRed:0 green:0 blue:0 alpha:&v65];
    v45 = v65;
    if (v65 == 0.0)
    {
      objc_storeStrong(&whiteColor, 0);
    }
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    MEMORY[0x277D82BD8](0);
  }

  v64 = [v103 url];
  if (!v64)
  {
    objc_storeStrong(&v64, location[0]);
  }

  [v103 quality];
  if (v46 == 0.0)
  {
    quality = selfCopy->_quality;
  }

  else
  {
    [v103 quality];
    quality = v47;
  }

  v63 = quality;
  v62 = [TKAdaptiveImageAPI getService:selfCopy->_service];
  if (!v62 || ((v54 = v64, [v103 crop], (v61 = (*(v62 + 2))(v62, v54, whiteColor, *&v102, *(&v102 + 1), v48, v49, v50, v51, v63)) == 0) ? (v60 = 0) : (v106 = MEMORY[0x277D82BE0](v61), v60 = 1), objc_storeStrong(&v61, 0), !v60))
  {
    v106 = MEMORY[0x277D82BE0](v64);
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&whiteColor, 0);
  objc_storeStrong(&v103, 0);
  objc_storeStrong(location, 0);
  v52 = v106;

  return v52;
}

@end