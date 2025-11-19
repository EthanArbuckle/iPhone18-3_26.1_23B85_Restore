@interface ISCustomRecipe
+ (id)customRecipeWithInfo:(id)a3 bundle:(id)a4;
- (ISCustomRecipe)initWithRecipe:(id)a3 bitmapResources:(id)a4 symbolResources:(id)a5 bundle:(id)a6;
- (id)resourceNamed:(id)a3;
@end

@implementation ISCustomRecipe

+ (id)customRecipeWithInfo:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _IF_stringForKey:@"recipe-name"];
  if ([v7 isEqualToString:@"embossed-folder"])
  {
    v8 = @"ISEmbossedFolder";
  }

  else
  {
    v8 = [v5 _IF_stringForKey:@"class-name"];
    if (!v8)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (![NSClassFromString(&v8->isa) conformsToProtocol:&unk_1F1A68638])
  {
    goto LABEL_7;
  }

  v9 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_7;
  }

  if (v9)
  {
    v14 = [v5 _IF_dictionaryForKey:@"bitmap-resources"];
    v15 = v14;
    v16 = MEMORY[0x1E695E0F8];
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    v10 = v17;

    v18 = [v5 _IF_dictionaryForKey:@"symbol-resources"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    v11 = v20;

    v12 = [[ISCustomRecipe alloc] initWithRecipe:v9 bitmapResources:v10 symbolResources:v11 bundle:v6];
    goto LABEL_9;
  }

LABEL_8:
  v10 = 0;
  v11 = 0;
  v12 = 0;
LABEL_9:

  return v12;
}

- (ISCustomRecipe)initWithRecipe:(id)a3 bitmapResources:(id)a4 symbolResources:(id)a5 bundle:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = ISCustomRecipe;
  v15 = [(ISCustomRecipe *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_recipe, a3);
    v17 = [v12 copy];
    bitmapResources = v16->_bitmapResources;
    v16->_bitmapResources = v17;

    v19 = [v13 copy];
    symbolResources = v16->_symbolResources;
    v16->_symbolResources = v19;

    objc_storeStrong(&v16->_bundle, a6);
  }

  return v16;
}

- (id)resourceNamed:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_bitmapResources _IF_stringForKey:v4];
  if (!v5 || ([(IFBundle *)self->_bundle assetCatalogURL], v6 = objc_claimAutoreleasedReturnValue(), v12 = 0, [ISAssetCatalogResource assetCatalogResourceWithURL:v6 imageName:v5 error:&v12], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = [(NSDictionary *)self->_symbolResources _IF_stringForKey:v4];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E69A89B0]);
      v10 = [(IFBundle *)self->_bundle bundleURL];
      v7 = [v9 initWithSymbolName:v8 bundleURL:v10];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end