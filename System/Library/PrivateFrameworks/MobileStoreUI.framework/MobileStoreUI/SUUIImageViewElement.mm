@interface SUUIImageViewElement
- (BOOL)isEnabled;
- (BOOL)rendersWithParallax;
- (BOOL)rendersWithPerspective;
- (CGSize)layerShadowOffset;
- (CGSize)shadowOffset;
- (CGSize)size;
- (NSString)resourceName;
- (NSURL)URL;
- (SUUIImageViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)accessibilityText;
- (id)applyUpdatesWithElement:(id)element;
- (id)entityValueProperties;
- (id)resourceCacheKey;
- (id)uniquingMapKey;
- (void)_loadEntityValuesIfNeeded;
- (void)entityValueProviderDidChange;
@end

@implementation SUUIImageViewElement

- (SUUIImageViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  v46.receiver = self;
  v46.super_class = SUUIImageViewElement;
  v11 = [(SUUIViewElement *)&v46 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    if (initWithDOMElement_parent_elementFactory__sOnce != -1)
    {
      [SUUIImageViewElement initWithDOMElement:parent:elementFactory:];
    }

    v12 = [elementCopy getAttribute:@"srcset"];
    v13 = [elementCopy getAttribute:@"src"];
    if ([v13 length])
    {
      v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v13];
      url = v11->_url;
      v11->_url = v14;
    }

    else if ([v12 length])
    {
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x2020000000;
      v45[3] = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__15;
      v43 = __Block_byref_object_dispose__15;
      v44 = 0;
      v16 = initWithDOMElement_parent_elementFactory__sSrcSetRegularExpression;
      v17 = [v12 length];
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __65__SUUIImageViewElement_initWithDOMElement_parent_elementFactory___block_invoke_10;
      v35 = &unk_2798F7490;
      v36 = v12;
      v37 = v45;
      v38 = &v39;
      [v16 enumerateMatchesInString:v36 options:0 range:0 usingBlock:{v17, &v32}];
      objc_storeStrong(&v11->_url, v40[5]);

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(v45, 8);
    }

    v18 = [(NSURL *)v11->_url scheme:v32];
    v19 = [v18 isEqualToString:@"resource"];

    if (v19)
    {
      host = [(NSURL *)v11->_url host];
      resourceName = v11->_resourceName;
      v11->_resourceName = host;

      v22 = v11->_url;
      v11->_url = 0;
    }

    v23 = [elementCopy getAttribute:@"height"];
    v24 = [elementCopy getAttribute:@"width"];
    if ([v23 length] && objc_msgSend(v24, "length"))
    {
      [v23 doubleValue];
      v11->_size.height = v25;
      [v24 doubleValue];
      v11->_size.width = v26;
    }

    v27 = [elementCopy getAttribute:@"alt"];
    alt = v11->_alt;
    v11->_alt = v27;

    v29 = [elementCopy getAttribute:@"disabled"];
    if ([v29 length])
    {
      v30 = [v29 BOOLValue] ^ 1;
    }

    else
    {
      v30 = -1;
    }

    v11->_enabled = v30;
  }

  return v11;
}

uint64_t __65__SUUIImageViewElement_initWithDOMElement_parent_elementFactory___block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  initWithDOMElement_parent_elementFactory__sScreenScale = v1;

  v2 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"([^ options:]+) +([^ error:{]+)", 0, 0}];
  v3 = initWithDOMElement_parent_elementFactory__sSrcSetRegularExpression;
  initWithDOMElement_parent_elementFactory__sSrcSetRegularExpression = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void __65__SUUIImageViewElement_initWithDOMElement_parent_elementFactory___block_invoke_10(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v20 = a2;
  v6 = [v20 numberOfRanges] == 3;
  v7 = v20;
  if (v6)
  {
    v8 = a1[4];
    v9 = [v20 rangeAtIndex:2];
    v11 = [v8 substringWithRange:{v9, v10}];
    v12 = [v11 integerValue];

    v13 = objc_alloc(MEMORY[0x277CBEBC0]);
    v14 = a1[4];
    v15 = [v20 rangeAtIndex:1];
    v17 = [v14 substringWithRange:{v15, v16}];
    v18 = [v13 initWithString:v17];

    if (v18)
    {
      v19 = *(a1[5] + 8);
      if (v12 > *(v19 + 24))
      {
        *(v19 + 24) = v12;
        objc_storeStrong((*(a1[6] + 8) + 40), v18);
        *a4 = v12 == initWithDOMElement_parent_elementFactory__sScreenScale;
      }
    }

    v7 = v20;
  }
}

- (id)resourceCacheKey
{
  resourceCacheKey = self->_resourceCacheKey;
  if (!resourceCacheKey)
  {
    v4 = [SUUIImageViewElementCacheKey alloc];
    v5 = [(SUUIImageViewElement *)self URL];
    [(SUUIImageViewElement *)self size];
    v7 = v6;
    v9 = v8;
    style = [(SUUIImageViewElement *)self style];
    imageTreatment = [style imageTreatment];
    v12 = [(SUUIImageViewElementCacheKey *)v4 initWithURL:v5 size:imageTreatment imageTreatment:v7, v9];
    v13 = self->_resourceCacheKey;
    self->_resourceCacheKey = v12;

    resourceCacheKey = self->_resourceCacheKey;
  }

  return resourceCacheKey;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  style = [(SUUIImageViewElement *)self style];
  maxHeight = [style maxHeight];
  maxWidth = [style maxWidth];
  v7 = maxWidth;
  if (maxHeight && maxWidth)
  {
    [maxHeight floatValue];
    height = v8;
    [v7 floatValue];
    width = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)accessibilityText
{
  alt = self->_alt;
  if (alt)
  {
    accessibilityText = alt;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUIImageViewElement;
    accessibilityText = [(SUUIImageViewElement *)&v5 accessibilityText];
  }

  return accessibilityText;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v23.receiver = self;
  v23.super_class = SUUIImageViewElement;
  v5 = [(SUUIViewElement *)&v23 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (v5 != self)
  {
    if (([(NSURL *)v5->_url isEqual:self->_url]& 1) != 0)
    {
      goto LABEL_8;
    }

    v7 = [SUUIImageViewElementCacheKey alloc];
    url = self->_url;
    p_size = &self->_size;
    style = [(SUUIImageViewElement *)self style];
    imageTreatment = [style imageTreatment];
    v12 = [(SUUIImageViewElementCacheKey *)v7 initWithURL:url size:imageTreatment imageTreatment:p_size->width, p_size->height];
    transientResourceCacheKey = v6->_transientResourceCacheKey;
    v6->_transientResourceCacheKey = v12;

    goto LABEL_7;
  }

  if (elementCopy != self && elementCopy)
  {
    v14 = [(NSString *)elementCopy->_alt copy];
    alt = self->_alt;
    self->_alt = v14;

    resourceCacheKey = self->_resourceCacheKey;
    self->_resourceCacheKey = 0;

    resourceName = [(SUUIImageViewElement *)elementCopy resourceName];
    resourceName = self->_resourceName;
    self->_resourceName = resourceName;

    [(SUUIImageViewElement *)elementCopy size];
    self->_size.width = v19;
    self->_size.height = v20;
    v21 = [(SUUIImageViewElement *)elementCopy URL];
    style = self->_url;
    self->_url = v21;
LABEL_7:
  }

LABEL_8:

  return v6;
}

- (id)entityValueProperties
{
  attributes = [(SUUIImageViewElement *)self attributes];
  v3 = [attributes objectForKey:@"valueProperty"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)entityValueProviderDidChange
{
  v5.receiver = self;
  v5.super_class = SUUIImageViewElement;
  [(SUUIViewElement *)&v5 entityValueProviderDidChange];
  self->_hasValidEntityValues = 0;
  entityResourceName = self->_entityResourceName;
  self->_entityResourceName = 0;

  entityURL = self->_entityURL;
  self->_entityURL = 0;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v14 = v2;
  v15 = v3;
  style = [(SUUIImageViewElement *)self style];
  imageTreatment = [style imageTreatment];
  v8 = SUUIImageTreatmentForString(imageTreatment);

  if (v8 == 8)
  {
    return 0;
  }

  style2 = [(SUUIImageViewElement *)self style];
  imageTreatment2 = [style2 imageTreatment];
  v11 = SUUIImageTreatmentForString(imageTreatment2);

  if (v11 == 9)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = SUUIImageViewElement;
  return [(SUUIViewElement *)&v13 isEnabled];
}

- (BOOL)rendersWithPerspective
{
  style = [(SUUIImageViewElement *)self style];
  imageTreatment = [style imageTreatment];
  v4 = SUUIImageTreatmentForString(imageTreatment);

  return v4 == 7;
}

- (BOOL)rendersWithParallax
{
  style = [(SUUIImageViewElement *)self style];
  imageTreatment = [style imageTreatment];
  v4 = SUUIImageTreatmentForString(imageTreatment);

  return v4 == 13;
}

- (id)uniquingMapKey
{
  [(SUUIImageViewElement *)self _loadEntityValuesIfNeeded];
  entityURL = self->_entityURL;
  if (entityURL || (entityURL = self->_entityResourceName) != 0)
  {
    uniquingMapKey = entityURL;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SUUIImageViewElement;
    uniquingMapKey = [(SUUIViewElement *)&v6 uniquingMapKey];
  }

  return uniquingMapKey;
}

- (NSString)resourceName
{
  [(SUUIImageViewElement *)self _loadEntityValuesIfNeeded];
  entityResourceName = self->_entityResourceName;
  if (!entityResourceName)
  {
    entityResourceName = self->_resourceName;
  }

  return entityResourceName;
}

- (NSURL)URL
{
  [(SUUIImageViewElement *)self _loadEntityValuesIfNeeded];
  entityURL = self->_entityURL;
  if (!entityURL)
  {
    entityURL = self->_url;
  }

  return entityURL;
}

- (void)_loadEntityValuesIfNeeded
{
  if (!self->_hasValidEntityValues)
  {
    self->_hasValidEntityValues = 1;
    entityValueProvider = [(SUUIViewElement *)self entityValueProvider];
    if (entityValueProvider)
    {
      attributes = [(SUUIImageViewElement *)self attributes];
      v6 = [attributes objectForKey:@"valueProperty"];

      if (v6)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v9 = [entityValueProvider imageURLForEntityArtworkProperty:v6 fittingSize:self->_size.width destinationScale:{self->_size.height, v8}];

        scheme = [(NSURL *)v9 scheme];
        v11 = [scheme isEqualToString:@"resource"];

        if (v11)
        {
          host = [(NSURL *)v9 host];
        }

        else
        {
          host = 0;
        }
      }

      else
      {
        host = 0;
        v9 = 0;
      }
    }

    else
    {
      host = 0;
      v9 = 0;
    }

    entityURL = self->_entityURL;
    self->_entityURL = v9;
    v17 = v9;

    entityResourceName = self->_entityResourceName;
    self->_entityResourceName = host;
    v15 = host;

    resourceCacheKey = self->_resourceCacheKey;
    self->_resourceCacheKey = 0;
  }
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)layerShadowOffset
{
  width = self->_layerShadowOffset.width;
  height = self->_layerShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end