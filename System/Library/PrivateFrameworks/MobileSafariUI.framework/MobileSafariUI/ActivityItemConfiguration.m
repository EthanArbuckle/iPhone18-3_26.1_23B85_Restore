@interface ActivityItemConfiguration
- (ActivityItemConfiguration)initWithInnerItemConfigurationProvider:(id)a3 additionalItemProviders:(id)a4;
- (BOOL)activityItemsConfigurationSupportsInteraction:(id)a3;
- (NSArray)applicationActivitiesForActivityItemsConfiguration;
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)a3 key:(id)a4;
- (id)activityItemsConfigurationMetadataForKey:(id)a3;
- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)a3 intent:(id)a4 suggestedSize:(CGSize)a5;
@end

@implementation ActivityItemConfiguration

- (ActivityItemConfiguration)initWithInnerItemConfigurationProvider:(id)a3 additionalItemProviders:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ActivityItemConfiguration;
  v9 = [(ActivityItemConfiguration *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_innerProvider, a3);
    v11 = [v8 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v10->_additionalItemProviders, v13);

    v14 = v10;
  }

  return v10;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  innerProvider = self->_innerProvider;
  if (innerProvider)
  {
    v4 = [(UIActivityItemsConfigurationReading *)innerProvider itemProvidersForActivityItemsConfiguration];
    self->_innerProviderItemCount = [v4 count];
    v5 = [v4 arrayByAddingObjectsFromArray:self->_additionalItemProviders];
  }

  else
  {
    v5 = self->_additionalItemProviders;
  }

  return v5;
}

- (BOOL)activityItemsConfigurationSupportsInteraction:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationSupportsInteraction:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)activityItemsConfigurationMetadataForKey:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationMetadataForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)a3 key:(id)a4
{
  v6 = a4;
  if (self->_innerProviderItemCount > a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationMetadataForItemAtIndex:a3 key:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)a3 intent:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  if (self->_innerProviderItemCount > a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationPreviewForItemAtIndex:a3 intent:v9 suggestedSize:width, height];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)applicationActivitiesForActivityItemsConfiguration
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIActivityItemsConfigurationReading *)self->_innerProvider applicationActivitiesForActivityItemsConfiguration];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end