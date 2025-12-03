@interface HUCAPackageLayer
+ (id)_allTags;
+ (id)_tagsForName:(id)name;
- (HUCAPackageLayer)initWithName:(id)name layer:(id)layer;
- (void)_applyPrimaryColorWithModifiers:(id)modifiers;
- (void)applyModifiers:(id)modifiers;
@end

@implementation HUCAPackageLayer

+ (id)_allTags
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_7);
  }

  v3 = qword_281122538;

  return v3;
}

void __28__HUCAPackageLayer__allTags__block_invoke_2()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"color";
  v5[1] = @"secondaryColor";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = qword_281122538;
  qword_281122538 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_tagsForName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_new();
  v6 = [nameCopy componentsSeparatedByString:@"_"];
  if ([v6 count] >= 2)
  {
    v7 = 1;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      _allTags = [self _allTags];
      v10 = [_allTags containsObject:v8];

      if (v10)
      {
        [v5 addObject:v8];
      }

      ++v7;
    }

    while (v7 < [v6 count]);
  }

  return v5;
}

- (HUCAPackageLayer)initWithName:(id)name layer:(id)layer
{
  nameCopy = name;
  layerCopy = layer;
  v14.receiver = self;
  v14.super_class = HUCAPackageLayer;
  v9 = [(HUCAPackageLayer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_layer, layer);
    v11 = [objc_opt_class() _tagsForName:nameCopy];
    tags = v10->_tags;
    v10->_tags = v11;
  }

  return v10;
}

- (void)applyModifiers:(id)modifiers
{
  modifiersCopy = modifiers;
  tags = [(HUCAPackageLayer *)self tags];
  v5 = [tags containsObject:@"color"];

  if (v5)
  {
    [(HUCAPackageLayer *)self _applyPrimaryColorWithModifiers:modifiersCopy];
  }
}

- (void)_applyPrimaryColorWithModifiers:(id)modifiers
{
  v30 = *MEMORY[0x277D85DE8];
  modifiersCopy = modifiers;
  objc_opt_class();
  layer = [(HUCAPackageLayer *)self layer];
  if (objc_opt_isKindOfClass())
  {
    v6 = layer;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name = [(HUCAPackageLayer *)self name];
      layer2 = [(HUCAPackageLayer *)self layer];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = 138412546;
      v27 = name;
      v28 = 2112;
      v29 = v25;
      _os_log_error_impl(&dword_254573000, v8, OS_LOG_TYPE_ERROR, "Package layer (%@) of type '%@' requested to modify primary color but isn't a valid CAShapeLayer", &v26, 0x16u);
    }
  }

  v9 = [modifiersCopy objectForKeyedSubscript:*MEMORY[0x277D13A10]];
  v10 = [modifiersCopy objectForKeyedSubscript:*MEMORY[0x277D13A18]];
  v11 = [modifiersCopy objectForKeyedSubscript:*MEMORY[0x277D13A08]];

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12 || v11 != 0)
  {
    v14 = 1.0;
    v15 = 1.0;
    if (v9)
    {
      [v9 doubleValue];
      v15 = v16;
    }

    if (v10)
    {
      [v10 doubleValue];
      v14 = v17;
    }

    if (v11)
    {
      [v11 doubleValue];
      v19 = v18;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = [MEMORY[0x277D75340] colorWithHue:v15 saturation:v14 brightness:1.0 alpha:v19];
    [v7 setFillColor:{objc_msgSend(v20, "CGColor")}];
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end