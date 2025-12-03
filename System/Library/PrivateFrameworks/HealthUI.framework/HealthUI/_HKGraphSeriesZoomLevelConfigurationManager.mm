@interface _HKGraphSeriesZoomLevelConfigurationManager
- (_HKGraphSeriesZoomLevelConfigurationManager)init;
- (id)_displayTypeIdentifierForDisplayType:(id)type;
- (id)allDisplayTypes;
- (id)configurationForDisplayType:(id)type;
- (id)configurationForGraphSeries:(id)series;
- (void)addConfiguration:(id)configuration;
- (void)removeConfigurationForDisplayType:(id)type;
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

    array = [MEMORY[0x1E695DF70] array];
    graphSeriesInOrderAdded = v2->_graphSeriesInOrderAdded;
    v2->_graphSeriesInOrderAdded = array;
  }

  return v2;
}

- (void)addConfiguration:(id)configuration
{
  displayTypeIdentifierToConfiguration = self->_displayTypeIdentifierToConfiguration;
  configurationCopy = configuration;
  displayType = [configurationCopy displayType];
  v7 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self _displayTypeIdentifierForDisplayType:displayType];
  [(NSMutableDictionary *)displayTypeIdentifierToConfiguration setObject:configurationCopy forKey:v7];

  graphSeriesUUIDToConfiguration = self->_graphSeriesUUIDToConfiguration;
  graphSeries = [configurationCopy graphSeries];
  uUID = [graphSeries UUID];
  [(NSMutableDictionary *)graphSeriesUUIDToConfiguration setObject:configurationCopy forKey:uUID];

  graphSeriesInOrderAdded = self->_graphSeriesInOrderAdded;
  graphSeries2 = [configurationCopy graphSeries];

  [(NSMutableArray *)graphSeriesInOrderAdded addObject:graphSeries2];
}

- (void)removeConfigurationForDisplayType:(id)type
{
  typeCopy = type;
  v12 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self configurationForDisplayType:typeCopy];
  displayTypeIdentifierToConfiguration = self->_displayTypeIdentifierToConfiguration;
  v6 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self _displayTypeIdentifierForDisplayType:typeCopy];

  [(NSMutableDictionary *)displayTypeIdentifierToConfiguration removeObjectForKey:v6];
  if (v12)
  {
    graphSeriesUUIDToConfiguration = self->_graphSeriesUUIDToConfiguration;
    graphSeries = [v12 graphSeries];
    uUID = [graphSeries UUID];
    [(NSMutableDictionary *)graphSeriesUUIDToConfiguration removeObjectForKey:uUID];

    graphSeriesInOrderAdded = self->_graphSeriesInOrderAdded;
    graphSeries2 = [v12 graphSeries];
    [(NSMutableArray *)graphSeriesInOrderAdded removeObject:graphSeries2];
  }
}

- (void)reset
{
  [(NSMutableDictionary *)self->_displayTypeIdentifierToConfiguration removeAllObjects];
  [(NSMutableDictionary *)self->_graphSeriesUUIDToConfiguration removeAllObjects];
  graphSeriesInOrderAdded = self->_graphSeriesInOrderAdded;

  [(NSMutableArray *)graphSeriesInOrderAdded removeAllObjects];
}

- (id)configurationForDisplayType:(id)type
{
  displayTypeIdentifierToConfiguration = self->_displayTypeIdentifierToConfiguration;
  v4 = [(_HKGraphSeriesZoomLevelConfigurationManager *)self _displayTypeIdentifierForDisplayType:type];
  v5 = [(NSMutableDictionary *)displayTypeIdentifierToConfiguration objectForKey:v4];

  return v5;
}

- (id)configurationForGraphSeries:(id)series
{
  graphSeriesUUIDToConfiguration = self->_graphSeriesUUIDToConfiguration;
  uUID = [series UUID];
  v5 = [(NSMutableDictionary *)graphSeriesUUIDToConfiguration objectForKey:uUID];

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
        displayType = [v9 displayType];
        [v3 addObject:displayType];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_displayTypeIdentifierForDisplayType:(id)type
{
  v3 = MEMORY[0x1E696AD98];
  displayTypeIdentifier = [type displayTypeIdentifier];

  return [v3 numberWithInteger:displayTypeIdentifier];
}

@end