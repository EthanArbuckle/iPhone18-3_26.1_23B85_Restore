@interface ActivityItemConfiguration
- (ActivityItemConfiguration)initWithInnerItemConfigurationProvider:(id)provider additionalItemProviders:(id)providers;
- (BOOL)activityItemsConfigurationSupportsInteraction:(id)interaction;
- (NSArray)applicationActivitiesForActivityItemsConfiguration;
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key;
- (id)activityItemsConfigurationMetadataForKey:(id)key;
- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)index intent:(id)intent suggestedSize:(CGSize)size;
@end

@implementation ActivityItemConfiguration

- (ActivityItemConfiguration)initWithInnerItemConfigurationProvider:(id)provider additionalItemProviders:(id)providers
{
  providerCopy = provider;
  providersCopy = providers;
  v16.receiver = self;
  v16.super_class = ActivityItemConfiguration;
  v9 = [(ActivityItemConfiguration *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_innerProvider, provider);
    v11 = [providersCopy copy];
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
    itemProvidersForActivityItemsConfiguration = [(UIActivityItemsConfigurationReading *)innerProvider itemProvidersForActivityItemsConfiguration];
    self->_innerProviderItemCount = [itemProvidersForActivityItemsConfiguration count];
    v5 = [itemProvidersForActivityItemsConfiguration arrayByAddingObjectsFromArray:self->_additionalItemProviders];
  }

  else
  {
    v5 = self->_additionalItemProviders;
  }

  return v5;
}

- (BOOL)activityItemsConfigurationSupportsInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationSupportsInteraction:interactionCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)activityItemsConfigurationMetadataForKey:(id)key
{
  keyCopy = key;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationMetadataForKey:keyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key
{
  keyCopy = key;
  if (self->_innerProviderItemCount > index && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationMetadataForItemAtIndex:index key:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)index intent:(id)intent suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  intentCopy = intent;
  if (self->_innerProviderItemCount > index && (objc_opt_respondsToSelector() & 1) != 0)
  {
    height = [(UIActivityItemsConfigurationReading *)self->_innerProvider activityItemsConfigurationPreviewForItemAtIndex:index intent:intentCopy suggestedSize:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (NSArray)applicationActivitiesForActivityItemsConfiguration
{
  if (objc_opt_respondsToSelector())
  {
    applicationActivitiesForActivityItemsConfiguration = [(UIActivityItemsConfigurationReading *)self->_innerProvider applicationActivitiesForActivityItemsConfiguration];
  }

  else
  {
    applicationActivitiesForActivityItemsConfiguration = 0;
  }

  return applicationActivitiesForActivityItemsConfiguration;
}

@end