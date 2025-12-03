@interface HKGraphSeriesConfigurationManager
- (BOOL)configurationContainsDisplayType:(id)type;
- (HKGraphSeriesConfigurationManager)init;
- (id)_configurationManagerForZoom:(int64_t)zoom;
- (id)allDisplayTypes;
- (id)allDisplayTypesForZoom:(int64_t)zoom;
- (id)allGraphSeriesForZoom:(int64_t)zoom;
- (id)configurationForDisplayType:(id)type zoom:(int64_t)zoom;
- (id)configurationForGraphSeries:(id)series zoom:(int64_t)zoom;
- (int64_t)_zoomLevelForGraphZoom:(int64_t)zoom;
- (void)addConfiguration:(id)configuration zoom:(int64_t)zoom;
- (void)removeConfigurationsForDisplayType:(id)type;
- (void)reset;
@end

@implementation HKGraphSeriesConfigurationManager

- (HKGraphSeriesConfigurationManager)init
{
  v6.receiver = self;
  v6.super_class = HKGraphSeriesConfigurationManager;
  v2 = [(HKGraphSeriesConfigurationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    zoomLevelConfigurationManagers = v2->_zoomLevelConfigurationManagers;
    v2->_zoomLevelConfigurationManagers = v3;
  }

  return v2;
}

- (void)addConfiguration:(id)configuration zoom:(int64_t)zoom
{
  configurationCopy = configuration;
  v7 = [(HKGraphSeriesConfigurationManager *)self _zoomLevelForGraphZoom:zoom];
  zoomLevelConfigurationManagers = self->_zoomLevelConfigurationManagers;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v10 = [(NSMutableDictionary *)zoomLevelConfigurationManagers objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = self->_zoomLevelConfigurationManagers;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
  }

  v14 = self->_zoomLevelConfigurationManagers;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v15 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v16];
  [v15 addConfiguration:configurationCopy];
}

- (void)removeConfigurationsForDisplayType:(id)type
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_zoomLevelConfigurationManagers allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeConfigurationForDisplayType:typeCopy];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)reset
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_zoomLevelConfigurationManagers allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)configurationForDisplayType:(id)type zoom:(int64_t)zoom
{
  typeCopy = type;
  v7 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:zoom];
  v8 = [v7 configurationForDisplayType:typeCopy];

  return v8;
}

- (id)configurationForGraphSeries:(id)series zoom:(int64_t)zoom
{
  seriesCopy = series;
  v7 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:zoom];
  v8 = [v7 configurationForGraphSeries:seriesCopy];

  return v8;
}

- (id)allDisplayTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  for (i = 2; i != 8; ++i)
  {
    v5 = [(HKGraphSeriesConfigurationManager *)self allDisplayTypesForZoom:i];
    [v3 addObjectsFromArray:v5];
  }

  array = [v3 array];

  return array;
}

- (id)allDisplayTypesForZoom:(int64_t)zoom
{
  v3 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:zoom];
  allDisplayTypes = [v3 allDisplayTypes];

  return allDisplayTypes;
}

- (id)allGraphSeriesForZoom:(int64_t)zoom
{
  v3 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:zoom];
  allGraphSeries = [v3 allGraphSeries];

  return allGraphSeries;
}

- (BOOL)configurationContainsDisplayType:(id)type
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allDisplayTypes = [(HKGraphSeriesConfigurationManager *)self allDisplayTypes];
  v6 = [allDisplayTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allDisplayTypes);
        }

        if (*(*(&v10 + 1) + 8 * i) == typeCopy)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allDisplayTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (int64_t)_zoomLevelForGraphZoom:(int64_t)zoom
{
  result = 3;
  if (zoom > 3)
  {
    if (zoom > 6)
    {
      if (zoom == 7)
      {
        return 1;
      }

      else if (zoom == 8)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HKGraphSeriesConfigurationManager.m" lineNumber:145 description:@"Invalid zoom level provided"];

        return 3;
      }
    }

    else
    {
      v9 = 2;
      if (zoom != 6)
      {
        v9 = 3;
      }

      if (zoom == 4)
      {
        return 4;
      }

      else
      {
        return v9;
      }
    }
  }

  else
  {
    v5 = 6;
    v6 = 5;
    if (zoom != 3)
    {
      v6 = 3;
    }

    if (zoom != 2)
    {
      v5 = v6;
    }

    v7 = 8;
    v8 = 7;
    if (zoom != 1)
    {
      v8 = 3;
    }

    if (zoom)
    {
      v7 = v8;
    }

    if (zoom <= 1)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

- (id)_configurationManagerForZoom:(int64_t)zoom
{
  v4 = [(HKGraphSeriesConfigurationManager *)self _zoomLevelForGraphZoom:zoom];
  zoomLevelConfigurationManagers = self->_zoomLevelConfigurationManagers;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v7 = [(NSMutableDictionary *)zoomLevelConfigurationManagers objectForKeyedSubscript:v6];

  return v7;
}

@end