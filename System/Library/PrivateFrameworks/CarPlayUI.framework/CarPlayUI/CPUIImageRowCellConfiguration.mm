@interface CPUIImageRowCellConfiguration
+ (id)configurationWithText:(id)text artworkCatalogs:(id)catalogs imageTitles:(id)titles selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)enabled bundleIdentifier:(id)self0;
+ (id)configurationWithText:(id)text images:(id)images imageTitles:(id)titles selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)enabled bundleIdentifier:(id)self0;
+ (id)configurationWithText:(id)text itemsConfigurations:(id)configurations allowsMultipleLines:(BOOL)lines selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)enabled bundleIdentifier:(id)self0;
+ (id)configurationWithText:(id)text itemsConfigurations:(id)configurations maximumNumberOfLines:(unint64_t)lines contentInsets:(NSDirectionalEdgeInsets)insets lineSpacing:(double)spacing selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)self0 enabled:(BOOL)self1 bundleIdentifier:(id)self2;
+ (id)configurationWithText:(id)text itemsConfigurations:(id)configurations maximumNumberOfLines:(unint64_t)lines contentInsets:(NSDirectionalEdgeInsets)insets selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)self0 bundleIdentifier:(id)self1;
- (NSDirectionalEdgeInsets)contentInsets;
- (id)artworkCatalogs;
- (id)imageTitles;
@end

@implementation CPUIImageRowCellConfiguration

+ (id)configurationWithText:(id)text itemsConfigurations:(id)configurations allowsMultipleLines:(BOOL)lines selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)enabled bundleIdentifier:(id)self0
{
  indicatorCopy = indicator;
  linesCopy = lines;
  identifierCopy = identifier;
  titleBlockCopy = titleBlock;
  blockCopy = block;
  configurationsCopy = configurations;
  textCopy = text;
  v22 = _UISolariumEnabled();
  v23 = 12.0;
  if (v22)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 12.0;
  }

  if (v22)
  {
    v23 = 8.0;
  }

  LOBYTE(v27) = enabled;
  v25 = [self configurationWithText:textCopy itemsConfigurations:configurationsCopy maximumNumberOfLines:!linesCopy contentInsets:blockCopy selectGridItemBlock:titleBlockCopy selectTitleBlock:indicatorCopy showActivityIndicator:v23 enabled:v23 bundleIdentifier:{v23, v24, v27, identifierCopy}];

  return v25;
}

+ (id)configurationWithText:(id)text itemsConfigurations:(id)configurations maximumNumberOfLines:(unint64_t)lines contentInsets:(NSDirectionalEdgeInsets)insets selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)self0 bundleIdentifier:(id)self1
{
  indicatorCopy = indicator;
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  identifierCopy = identifier;
  titleBlockCopy = titleBlock;
  blockCopy = block;
  configurationsCopy = configurations;
  textCopy = text;
  if (_UISolariumEnabled())
  {
    v27 = 8.0;
  }

  else
  {
    v27 = 12.0;
  }

  LOBYTE(v30) = enabled;
  v28 = [self configurationWithText:textCopy itemsConfigurations:configurationsCopy maximumNumberOfLines:lines contentInsets:blockCopy lineSpacing:titleBlockCopy selectGridItemBlock:indicatorCopy selectTitleBlock:top showActivityIndicator:leading enabled:bottom bundleIdentifier:{trailing, v27, v30, identifierCopy}];

  return v28;
}

+ (id)configurationWithText:(id)text itemsConfigurations:(id)configurations maximumNumberOfLines:(unint64_t)lines contentInsets:(NSDirectionalEdgeInsets)insets lineSpacing:(double)spacing selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)self0 enabled:(BOOL)self1 bundleIdentifier:(id)self2
{
  indicatorCopy = indicator;
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  identifierCopy = identifier;
  titleBlockCopy = titleBlock;
  blockCopy = block;
  configurationsCopy = configurations;
  textCopy = text;
  v28 = objc_opt_new();
  [v28 setTitle:textCopy];

  [v28 setItemsConfigurations:configurationsCopy];
  [v28 setMaximumNumberOfLines:lines];
  [v28 setContentInsets:{top, leading, bottom, trailing}];
  [v28 setLineSpacing:spacing];
  [v28 setSelectGridItemBlock:blockCopy];

  [v28 setSelectTitleBlock:titleBlockCopy];
  [v28 setShowActivityIndicator:indicatorCopy];
  [v28 setEnabled:enabled];
  [v28 setBundleIdentifier:identifierCopy];

  return v28;
}

- (id)artworkCatalogs
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  itemsConfigurations = [(CPUIImageRowCellConfiguration *)self itemsConfigurations];
  v5 = [itemsConfigurations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(itemsConfigurations);
        }

        artworkCatalog = [*(*(&v12 + 1) + 8 * i) artworkCatalog];
        [v3 addObject:artworkCatalog];
      }

      v6 = [itemsConfigurations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)imageTitles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  itemsConfigurations = [(CPUIImageRowCellConfiguration *)self itemsConfigurations];
  v5 = [itemsConfigurations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(itemsConfigurations);
        }

        title = [*(*(&v12 + 1) + 8 * i) title];
        [v3 addObject:title];
      }

      v6 = [itemsConfigurations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

+ (id)configurationWithText:(id)text images:(id)images imageTitles:(id)titles selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)enabled bundleIdentifier:(id)self0
{
  indicatorCopy = indicator;
  titlesCopy = titles;
  identifierCopy = identifier;
  titleBlockCopy = titleBlock;
  blockCopy = block;
  imagesCopy = images;
  textCopy = text;
  v21 = objc_opt_new();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __158__CPUIImageRowCellConfiguration_configurationWithText_images_imageTitles_selectGridItemBlock_selectTitleBlock_showActivityIndicator_enabled_bundleIdentifier___block_invoke;
  v28[3] = &unk_278D9C470;
  v29 = titlesCopy;
  v30 = v21;
  v22 = v21;
  v23 = titlesCopy;
  [imagesCopy enumerateObjectsUsingBlock:v28];

  v24 = [v22 copy];
  v25 = [self configurationWithText:textCopy itemsConfigurations:v24 selectGridItemBlock:blockCopy selectTitleBlock:titleBlockCopy showActivityIndicator:indicatorCopy enabled:enabled bundleIdentifier:identifierCopy];

  return v25;
}

void __158__CPUIImageRowCellConfiguration_configurationWithText_images_imageTitles_selectGridItemBlock_selectTitleBlock_showActivityIndicator_enabled_bundleIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  v5 = [CPUIImageRowCellItemConfiguration alloc];
  if ([*(a1 + 32) count] <= a3)
  {
    v7 = [(CPUIImageRowCellItemConfiguration *)v5 initWithImage:v8 title:0 subtitle:0];
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndex:a3];
    v7 = [(CPUIImageRowCellItemConfiguration *)v5 initWithImage:v8 title:v6 subtitle:0];
  }

  [*(a1 + 40) addObject:v7];
}

+ (id)configurationWithText:(id)text artworkCatalogs:(id)catalogs imageTitles:(id)titles selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator enabled:(BOOL)enabled bundleIdentifier:(id)self0
{
  indicatorCopy = indicator;
  titlesCopy = titles;
  identifierCopy = identifier;
  titleBlockCopy = titleBlock;
  blockCopy = block;
  catalogsCopy = catalogs;
  textCopy = text;
  v21 = objc_opt_new();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __167__CPUIImageRowCellConfiguration_configurationWithText_artworkCatalogs_imageTitles_selectGridItemBlock_selectTitleBlock_showActivityIndicator_enabled_bundleIdentifier___block_invoke;
  v28[3] = &unk_278D9C498;
  v29 = titlesCopy;
  v30 = v21;
  v22 = v21;
  v23 = titlesCopy;
  [catalogsCopy enumerateObjectsUsingBlock:v28];

  v24 = [v22 copy];
  v25 = [self configurationWithText:textCopy itemsConfigurations:v24 selectGridItemBlock:blockCopy selectTitleBlock:titleBlockCopy showActivityIndicator:indicatorCopy enabled:enabled bundleIdentifier:identifierCopy];

  return v25;
}

void __167__CPUIImageRowCellConfiguration_configurationWithText_artworkCatalogs_imageTitles_selectGridItemBlock_selectTitleBlock_showActivityIndicator_enabled_bundleIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  v5 = [CPUIImageRowCellItemConfiguration alloc];
  if ([*(a1 + 32) count] <= a3)
  {
    v7 = [(CPUIImageRowCellItemConfiguration *)v5 initWithArtworkCatalog:v8 title:0 subtitle:0];
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndex:a3];
    v7 = [(CPUIImageRowCellItemConfiguration *)v5 initWithArtworkCatalog:v8 title:v6 subtitle:0];
  }

  [*(a1 + 40) addObject:v7];
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end