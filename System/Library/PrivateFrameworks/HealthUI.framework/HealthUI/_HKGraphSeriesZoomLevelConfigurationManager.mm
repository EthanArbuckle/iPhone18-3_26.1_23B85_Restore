@interface _HKGraphSeriesZoomLevelConfigurationManager
- (_HKGraphSeriesZoomLevelConfigurationManager)init;
- (id)_displayTypeIdentifierForDisplayType:(id)a3;
- (id)allDisplayTypes;
- (id)configurationForDisplayType:(id)a3;
- (id)configurationForGraphSeries:(id)a3;
- (void)addConfiguration:(id)a3;
- (void)removeConfigurationForDisplayType:(id)a3;
- (void)reset;
@end

@implementation _HKGraphSeriesZoomLevelConfigurationManager

- (_HKGraphSeriesZoomLevelConfigurationManager)init
{
  v10.receiver = self;
  v10.super_class = _HKGraphSeriesZoomLevelConfigurationManager;
  v2 = [(_HKGraphSeriesZoomLevelConfigurationManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    displayTypeIdentifierToConfiguration = v2->_displayTypeIdentifierToConfiguration;
    v2->_displayTypeIdentifierToConfiguration = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    graphSeriesUUIDToConfiguration = v2->_graphSeriesUUIDToConfiguration;
    v2->_graphSeriesUUIDToConfiguration = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    graphSeriesInOrderAdded = v2->_graphSeriesInOrderAdded;
    v2->_graphSeriesInOrderAdded = v7;
  }

  return v2;
}

- (void)addConfiguration:(id)a3
{
  displayTypeIdentifierToConfiguration = self->_displayTypeIdentifierToConfiguration;
  v5 = a3;
  v6 = [v5 displayType];
  v7 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self _displayTypeIdentifierForDisplayType:v6];
  [(NSMutableDictionary *)displayTypeIdentifierToConfiguration setObject:v5 forKey:v7];

  graphSeriesUUIDToConfiguration = self->_graphSeriesUUIDToConfiguration;
  v9 = [v5 graphSeries];
  v10 = [v9 UUID];
  [(NSMutableDictionary *)graphSeriesUUIDToConfiguration setObject:v5 forKey:v10];

  graphSeriesInOrderAdded = self->_graphSeriesInOrderAdded;
  v12 = [v5 graphSeries];

  [(NSMutableArray *)graphSeriesInOrderAdded addObject:v12];
}

- (void)removeConfigurationForDisplayType:(id)a3
{
  v4 = a3;
  v12 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self configurationForDisplayType:v4];
  displayTypeIdentifierToConfiguration = self->_displayTypeIdentifierToConfiguration;
  v6 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self _displayTypeIdentifierForDisplayType:v4];

  [(NSMutableDictionary *)displayTypeIdentifierToConfiguration removeObjectForKey:v6];
  if (v12)
  {
    graphSeriesUUIDToConfiguration = self->_graphSeriesUUIDToConfiguration;
    v8 = [v12 graphSeries];
    v9 = [v8 UUID];
    [(NSMutableDictionary *)graphSeriesUUIDToConfiguration removeObjectForKey:v9];

    graphSeriesInOrderAdded = self->_graphSeriesInOrderAdded;
    v11 = [v12 graphSeries];
    [(NSMutableArray *)graphSeriesInOrderAdded removeObject:v11];
  }
}

- (void)reset
{
  [(NSMutableDictionary *)self->_displayTypeIdentifierToConfiguration removeAllObjects];
  [(NSMutableDictionary *)self->_graphSeriesUUIDToConfiguration removeAllObjects];
  graphSeriesInOrderAdded = self->_graphSeriesInOrderAdded;

  [(NSMutableArray *)graphSeriesInOrderAdded removeAllObjects];
}

- (id)configurationForDisplayType:(id)a3
{
  displayTypeIdentifierToConfiguration = self->_displayTypeIdentifierToConfiguration;
  v4 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self _displayTypeIdentifierForDisplayType:a3];
  v5 = [(NSMutableDictionary *)displayTypeIdentifierToConfiguration objectForKey:v4];

  return v5;
}

- (id)configurationForGraphSeries:(id)a3
{
  graphSeriesUUIDToConfiguration = self->_graphSeriesUUIDToConfiguration;
  v4 = [a3 UUID];
  v5 = [(NSMutableDictionary *)graphSeriesUUIDToConfiguration objectForKey:v4];

  return v5;
}

- (id)allDisplayTypes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_graphSeriesInOrderAdded;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self configurationForGraphSeries:*(*(&v12 + 1) + 8 * i), v12];
        v10 = [v9 displayType];
        [v3 addObject:v10];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_displayTypeIdentifierForDisplayType:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 displayTypeIdentifier];

  return [v3 numberWithInteger:v4];
}

@end