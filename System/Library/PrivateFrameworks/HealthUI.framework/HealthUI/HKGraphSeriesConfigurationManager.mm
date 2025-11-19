@interface HKGraphSeriesConfigurationManager
- (BOOL)configurationContainsDisplayType:(id)a3;
- (HKGraphSeriesConfigurationManager)init;
- (id)_configurationManagerForZoom:(int64_t)a3;
- (id)allDisplayTypes;
- (id)allDisplayTypesForZoom:(int64_t)a3;
- (id)allGraphSeriesForZoom:(int64_t)a3;
- (id)configurationForDisplayType:(id)a3 zoom:(int64_t)a4;
- (id)configurationForGraphSeries:(id)a3 zoom:(int64_t)a4;
- (int64_t)_zoomLevelForGraphZoom:(int64_t)a3;
- (void)addConfiguration:(id)a3 zoom:(int64_t)a4;
- (void)removeConfigurationsForDisplayType:(id)a3;
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

- (void)addConfiguration:(id)a3 zoom:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKGraphSeriesConfigurationManager *)self _zoomLevelForGraphZoom:a4];
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
  [v15 addConfiguration:v6];
}

- (void)removeConfigurationsForDisplayType:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_zoomLevelConfigurationManagers allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeConfigurationForDisplayType:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(NSMutableDictionary *)self->_zoomLevelConfigurationManagers allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)configurationForDisplayType:(id)a3 zoom:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:a4];
  v8 = [v7 configurationForDisplayType:v6];

  return v8;
}

- (id)configurationForGraphSeries:(id)a3 zoom:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:a4];
  v8 = [v7 configurationForGraphSeries:v6];

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

  v6 = [v3 array];

  return v6;
}

- (id)allDisplayTypesForZoom:(int64_t)a3
{
  v3 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:a3];
  v4 = [v3 allDisplayTypes];

  return v4;
}

- (id)allGraphSeriesForZoom:(int64_t)a3
{
  v3 = [(HKGraphSeriesConfigurationManager *)self _configurationManagerForZoom:a3];
  v4 = [v3 allGraphSeries];

  return v4;
}

- (BOOL)configurationContainsDisplayType:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HKGraphSeriesConfigurationManager *)self allDisplayTypes];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * i) == v4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (int64_t)_zoomLevelForGraphZoom:(int64_t)a3
{
  result = 3;
  if (a3 > 3)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        return 1;
      }

      else if (a3 == 8)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"HKGraphSeriesConfigurationManager.m" lineNumber:145 description:@"Invalid zoom level provided"];

        return 3;
      }
    }

    else
    {
      v9 = 2;
      if (a3 != 6)
      {
        v9 = 3;
      }

      if (a3 == 4)
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
    if (a3 != 3)
    {
      v6 = 3;
    }

    if (a3 != 2)
    {
      v5 = v6;
    }

    v7 = 8;
    v8 = 7;
    if (a3 != 1)
    {
      v8 = 3;
    }

    if (a3)
    {
      v7 = v8;
    }

    if (a3 <= 1)
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

- (id)_configurationManagerForZoom:(int64_t)a3
{
  v4 = [(HKGraphSeriesConfigurationManager *)self _zoomLevelForGraphZoom:a3];
  zoomLevelConfigurationManagers = self->_zoomLevelConfigurationManagers;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v7 = [(NSMutableDictionary *)zoomLevelConfigurationManagers objectForKeyedSubscript:v6];

  return v7;
}

@end