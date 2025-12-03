@interface MTStylingProvidingSolidColorLayer
- (id)_fillDarkStyleSet;
- (id)_fillLightStyleSet;
- (id)_strokeDarkStyleSet;
- (id)_strokeLightStyleSet;
- (id)_styleSetForCategory:(id)category;
- (id)_styleSetForCategory:(id)category styleDefinitions:(id)definitions;
- (id)_styleSetNameForCategory:(id)category;
- (id)visualStylingProviderForCategory:(id)category;
- (void)_updateVisualStylingProviderForCategory:(id)category;
- (void)_updateVisualStylingProviders;
- (void)setBackgroundColor:(CGColor *)color;
@end

@implementation MTStylingProvidingSolidColorLayer

- (id)visualStylingProviderForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSMutableDictionary *)self->_cmStylingProviders objectForKey:categoryCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
    cmStylingProviders = self->_cmStylingProviders;
    if (!cmStylingProviders)
    {
      v7 = objc_opt_new();
      v8 = self->_cmStylingProviders;
      self->_cmStylingProviders = v7;

      cmStylingProviders = self->_cmStylingProviders;
    }

    [(NSMutableDictionary *)cmStylingProviders setObject:v5 forKey:categoryCopy];
    [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviders];
  }

  return v5;
}

- (void)setBackgroundColor:(CGColor *)color
{
  v4.receiver = self;
  v4.super_class = MTStylingProvidingSolidColorLayer;
  [(MTStylingProvidingSolidColorLayer *)&v4 setBackgroundColor:color];
  [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviders];
}

- (void)_updateVisualStylingProviders
{
  [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviderForCategory:@"stroke"];

  [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviderForCategory:@"fill"];
}

- (void)_updateVisualStylingProviderForCategory:(id)category
{
  cmStylingProviders = self->_cmStylingProviders;
  categoryCopy = category;
  v7 = [(NSMutableDictionary *)cmStylingProviders objectForKey:categoryCopy];
  v6 = [(MTStylingProvidingSolidColorLayer *)self _styleSetForCategory:categoryCopy];

  [v7 _setVisualStyleSet:v6];
}

- (id)_styleSetForCategory:(id)category
{
  categoryCopy = category;
  if (!MTCGColorIsPerceivedLight([(MTStylingProvidingSolidColorLayer *)self backgroundColor]))
  {
    if (@"fill" == categoryCopy)
    {
      _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _fillLightStyleSet];
      goto LABEL_11;
    }

    if (@"stroke" == categoryCopy)
    {
      _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _strokeLightStyleSet];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (@"fill" == categoryCopy)
  {
    _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _fillDarkStyleSet];
    goto LABEL_11;
  }

  if (@"stroke" != categoryCopy)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_12;
  }

  _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _strokeDarkStyleSet];
LABEL_11:
  v6 = _fillLightStyleSet;
LABEL_12:

  return v6;
}

- (id)_fillLightStyleSet
{
  v11[2] = *MEMORY[0x1E69E9840];
  backgroundColor = [(MTStylingProvidingSolidColorLayer *)self backgroundColor];
  v4 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusLAndWhiteTint(backgroundColor, 0.185, 0.85);
  v5 = MTStylingProvidingSolidColorLayerHighlightStyleDictionary(backgroundColor);
  v10[0] = @"primary";
  v10[1] = @"highlight";
  v11[0] = v4;
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [(MTStylingProvidingSolidColorLayer *)self _styleSetForCategory:@"fill" styleDefinitions:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_strokeLightStyleSet
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusLAndWhiteTint([(MTStylingProvidingSolidColorLayer *)self backgroundColor], 0.48, 0.7);
  v8[0] = @"primary";
  v8[1] = @"secondary";
  v9[0] = &unk_1F3E018D0;
  v9[1] = v3;
  v8[2] = @"tertiary";
  v9[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v5 = [(MTStylingProvidingSolidColorLayer *)self _styleSetForCategory:@"stroke" styleDefinitions:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_fillDarkStyleSet
{
  v11[2] = *MEMORY[0x1E69E9840];
  backgroundColor = [(MTStylingProvidingSolidColorLayer *)self backgroundColor];
  v4 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.9);
  v5 = MTStylingProvidingSolidColorLayerHighlightStyleDictionary(backgroundColor);
  v10[0] = @"primary";
  v10[1] = @"highlight";
  v11[0] = v4;
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [(MTStylingProvidingSolidColorLayer *)self _styleSetForCategory:@"fill" styleDefinitions:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_strokeDarkStyleSet
{
  v12[3] = *MEMORY[0x1E69E9840];
  backgroundColor = [(MTStylingProvidingSolidColorLayer *)self backgroundColor];
  v4 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.2);
  v5 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.5);
  v6 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.7);
  v11[0] = @"primary";
  v11[1] = @"secondary";
  v12[0] = v4;
  v12[1] = v5;
  v11[2] = @"tertiary";
  v12[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [(MTStylingProvidingSolidColorLayer *)self _styleSetForCategory:@"stroke" styleDefinitions:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_styleSetForCategory:(id)category styleDefinitions:(id)definitions
{
  v27 = *MEMORY[0x1E69E9840];
  definitionsCopy = definitions;
  v7 = [(MTStylingProvidingSolidColorLayer *)self _styleSetNameForCategory:category];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [&unk_1F3E018F8 mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = definitionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        capitalizedString = [v15 capitalizedString];
        v17 = [v7 stringByAppendingString:capitalizedString];

        [v9 setObject:v17 forKey:v15];
        v18 = [v10 objectForKey:v15];
        [v8 setObject:v18 forKey:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  [v9 setObject:v8 forKey:@"styles"];
  v19 = [[MTVisualStyleSet alloc] initWithName:v7 visualStyleSetDescription:v9 andDescendantDescriptions:0];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_styleSetNameForCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  if (@"stroke" != categoryCopy && @"fill" != categoryCopy)
  {
    [(MTStylingProvidingSolidColorLayer *)a2 _styleSetNameForCategory:?];
  }

  v8 = [@"solidColorBackground" mutableCopy];
  v9 = v8;
  if (@"stroke" == v6)
  {
    v10 = @"Stroke";
  }

  else
  {
    if (@"fill" != v6)
    {
      goto LABEL_11;
    }

    v10 = @"Fill";
  }

  [v8 appendString:v10];
LABEL_11:
  if (MTCGColorIsPerceivedLight([(MTStylingProvidingSolidColorLayer *)self backgroundColor]))
  {
    v11 = @"Dark";
  }

  else
  {
    v11 = @"Light";
  }

  [v9 appendString:v11];

  return v9;
}

- (void)_styleSetNameForCategory:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTStylingProvidingSolidColorLayer.m" lineNumber:148 description:@"MTStylingProvidingSolidColorLayer only supports stroke and fill"];
}

@end