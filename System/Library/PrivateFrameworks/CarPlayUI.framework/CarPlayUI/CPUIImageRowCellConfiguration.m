@interface CPUIImageRowCellConfiguration
+ (id)configurationWithText:(id)a3 artworkCatalogs:(id)a4 imageTitles:(id)a5 selectGridItemBlock:(id)a6 selectTitleBlock:(id)a7 showActivityIndicator:(BOOL)a8 enabled:(BOOL)a9 bundleIdentifier:(id)a10;
+ (id)configurationWithText:(id)a3 images:(id)a4 imageTitles:(id)a5 selectGridItemBlock:(id)a6 selectTitleBlock:(id)a7 showActivityIndicator:(BOOL)a8 enabled:(BOOL)a9 bundleIdentifier:(id)a10;
+ (id)configurationWithText:(id)a3 itemsConfigurations:(id)a4 allowsMultipleLines:(BOOL)a5 selectGridItemBlock:(id)a6 selectTitleBlock:(id)a7 showActivityIndicator:(BOOL)a8 enabled:(BOOL)a9 bundleIdentifier:(id)a10;
+ (id)configurationWithText:(id)a3 itemsConfigurations:(id)a4 maximumNumberOfLines:(unint64_t)a5 contentInsets:(NSDirectionalEdgeInsets)a6 lineSpacing:(double)a7 selectGridItemBlock:(id)a8 selectTitleBlock:(id)a9 showActivityIndicator:(BOOL)a10 enabled:(BOOL)a11 bundleIdentifier:(id)a12;
+ (id)configurationWithText:(id)a3 itemsConfigurations:(id)a4 maximumNumberOfLines:(unint64_t)a5 contentInsets:(NSDirectionalEdgeInsets)a6 selectGridItemBlock:(id)a7 selectTitleBlock:(id)a8 showActivityIndicator:(BOOL)a9 enabled:(BOOL)a10 bundleIdentifier:(id)a11;
- (NSDirectionalEdgeInsets)contentInsets;
- (id)artworkCatalogs;
- (id)imageTitles;
@end

@implementation CPUIImageRowCellConfiguration

+ (id)configurationWithText:(id)a3 itemsConfigurations:(id)a4 allowsMultipleLines:(BOOL)a5 selectGridItemBlock:(id)a6 selectTitleBlock:(id)a7 showActivityIndicator:(BOOL)a8 enabled:(BOOL)a9 bundleIdentifier:(id)a10
{
  v10 = a8;
  v13 = a5;
  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = a4;
  v21 = a3;
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

  LOBYTE(v27) = a9;
  v25 = [a1 configurationWithText:v21 itemsConfigurations:v20 maximumNumberOfLines:!v13 contentInsets:v19 selectGridItemBlock:v18 selectTitleBlock:v10 showActivityIndicator:v23 enabled:v23 bundleIdentifier:{v23, v24, v27, v17}];

  return v25;
}

+ (id)configurationWithText:(id)a3 itemsConfigurations:(id)a4 maximumNumberOfLines:(unint64_t)a5 contentInsets:(NSDirectionalEdgeInsets)a6 selectGridItemBlock:(id)a7 selectTitleBlock:(id)a8 showActivityIndicator:(BOOL)a9 enabled:(BOOL)a10 bundleIdentifier:(id)a11
{
  v11 = a9;
  trailing = a6.trailing;
  bottom = a6.bottom;
  leading = a6.leading;
  top = a6.top;
  v22 = a11;
  v23 = a8;
  v24 = a7;
  v25 = a4;
  v26 = a3;
  if (_UISolariumEnabled())
  {
    v27 = 8.0;
  }

  else
  {
    v27 = 12.0;
  }

  LOBYTE(v30) = a10;
  v28 = [a1 configurationWithText:v26 itemsConfigurations:v25 maximumNumberOfLines:a5 contentInsets:v24 lineSpacing:v23 selectGridItemBlock:v11 selectTitleBlock:top showActivityIndicator:leading enabled:bottom bundleIdentifier:{trailing, v27, v30, v22}];

  return v28;
}

+ (id)configurationWithText:(id)a3 itemsConfigurations:(id)a4 maximumNumberOfLines:(unint64_t)a5 contentInsets:(NSDirectionalEdgeInsets)a6 lineSpacing:(double)a7 selectGridItemBlock:(id)a8 selectTitleBlock:(id)a9 showActivityIndicator:(BOOL)a10 enabled:(BOOL)a11 bundleIdentifier:(id)a12
{
  v12 = a10;
  trailing = a6.trailing;
  bottom = a6.bottom;
  leading = a6.leading;
  top = a6.top;
  v23 = a12;
  v24 = a9;
  v25 = a8;
  v26 = a4;
  v27 = a3;
  v28 = objc_opt_new();
  [v28 setTitle:v27];

  [v28 setItemsConfigurations:v26];
  [v28 setMaximumNumberOfLines:a5];
  [v28 setContentInsets:{top, leading, bottom, trailing}];
  [v28 setLineSpacing:a7];
  [v28 setSelectGridItemBlock:v25];

  [v28 setSelectTitleBlock:v24];
  [v28 setShowActivityIndicator:v12];
  [v28 setEnabled:a11];
  [v28 setBundleIdentifier:v23];

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
  v4 = [(CPUIImageRowCellConfiguration *)self itemsConfigurations];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v9 = [*(*(&v12 + 1) + 8 * i) artworkCatalog];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(CPUIImageRowCellConfiguration *)self itemsConfigurations];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v9 = [*(*(&v12 + 1) + 8 * i) title];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

+ (id)configurationWithText:(id)a3 images:(id)a4 imageTitles:(id)a5 selectGridItemBlock:(id)a6 selectTitleBlock:(id)a7 showActivityIndicator:(BOOL)a8 enabled:(BOOL)a9 bundleIdentifier:(id)a10
{
  v27 = a8;
  v15 = a5;
  v16 = a10;
  v17 = a7;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = objc_opt_new();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __158__CPUIImageRowCellConfiguration_configurationWithText_images_imageTitles_selectGridItemBlock_selectTitleBlock_showActivityIndicator_enabled_bundleIdentifier___block_invoke;
  v28[3] = &unk_278D9C470;
  v29 = v15;
  v30 = v21;
  v22 = v21;
  v23 = v15;
  [v19 enumerateObjectsUsingBlock:v28];

  v24 = [v22 copy];
  v25 = [a1 configurationWithText:v20 itemsConfigurations:v24 selectGridItemBlock:v18 selectTitleBlock:v17 showActivityIndicator:v27 enabled:a9 bundleIdentifier:v16];

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

+ (id)configurationWithText:(id)a3 artworkCatalogs:(id)a4 imageTitles:(id)a5 selectGridItemBlock:(id)a6 selectTitleBlock:(id)a7 showActivityIndicator:(BOOL)a8 enabled:(BOOL)a9 bundleIdentifier:(id)a10
{
  v27 = a8;
  v15 = a5;
  v16 = a10;
  v17 = a7;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = objc_opt_new();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __167__CPUIImageRowCellConfiguration_configurationWithText_artworkCatalogs_imageTitles_selectGridItemBlock_selectTitleBlock_showActivityIndicator_enabled_bundleIdentifier___block_invoke;
  v28[3] = &unk_278D9C498;
  v29 = v15;
  v30 = v21;
  v22 = v21;
  v23 = v15;
  [v19 enumerateObjectsUsingBlock:v28];

  v24 = [v22 copy];
  v25 = [a1 configurationWithText:v20 itemsConfigurations:v24 selectGridItemBlock:v18 selectTitleBlock:v17 showActivityIndicator:v27 enabled:a9 bundleIdentifier:v16];

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