@interface ISRecipeFactory
+ (id)factoryWithDescriptor:(id)descriptor;
+ (id)factoryWithDescriptor:(id)descriptor resourceProvider:(id)provider;
- (BOOL)preferRichRecipe;
- (BOOL)shouldSegment;
- (ISRecipeFactory)initWithDescriptor:(id)descriptor resourceProvider:(id)provider;
- (id)_recipe;
- (id)_recipeFromDescriptor;
- (id)genericTaggedRecipe;
- (id)recipe;
- (id)recipeForDecoration:(id)decoration;
- (void)_recipe;
- (void)enableSegmentationForRecipe:(id)recipe;
- (void)pushDescriptorContentsToRecipe:(id)recipe;
@end

@implementation ISRecipeFactory

+ (id)factoryWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [[ISRecipeFactory alloc] initWithDescriptor:descriptorCopy resourceProvider:0];

  return v4;
}

+ (id)factoryWithDescriptor:(id)descriptor resourceProvider:(id)provider
{
  providerCopy = provider;
  descriptorCopy = descriptor;
  v7 = [[ISRecipeFactory alloc] initWithDescriptor:descriptorCopy resourceProvider:providerCopy];

  return v7;
}

- (ISRecipeFactory)initWithDescriptor:(id)descriptor resourceProvider:(id)provider
{
  descriptorCopy = descriptor;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = ISRecipeFactory;
  v9 = [(ISRecipeFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceProvider, provider);
    objc_storeStrong(&v10->_descriptor, descriptor);
  }

  return v10;
}

- (id)_recipeFromDescriptor
{
  descriptor = [(ISRecipeFactory *)self descriptor];
  _recipe = [descriptor _recipe];

  return _recipe;
}

- (id)_recipe
{
  descriptor = [(ISRecipeFactory *)self descriptor];
  shape = [descriptor shape];

  if (!shape || (-[ISRecipeFactory descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _recipePreferRichRecipe:{-[ISRecipeFactory preferRichRecipe](self, "preferRichRecipe")}], suggestedRecipe2 = objc_claimAutoreleasedReturnValue(), v5, !suggestedRecipe2))
  {
    resourceProvider = [(ISRecipeFactory *)self resourceProvider];
    suggestedRecipe = [resourceProvider suggestedRecipe];

    if (!suggestedRecipe)
    {
      goto LABEL_7;
    }

    resourceProvider2 = [(ISRecipeFactory *)self resourceProvider];
    suggestedRecipe2 = [resourceProvider2 suggestedRecipe];

    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ISRecipeFactory *)suggestedRecipe2 _recipe];
    }

    if (!suggestedRecipe2)
    {
LABEL_7:
      resourceProvider3 = [(ISRecipeFactory *)self resourceProvider];
      iconResource = [resourceProvider3 iconResource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 && (v14 = objc_alloc_init(ISGenericRecipe)) != 0 || (-[ISRecipeFactory resourceProvider](self, "resourceProvider"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isCompositedDocument], v15, v16) && (v14 = objc_alloc_init(ISDocumentRecipe)) != 0)
      {
        suggestedRecipe2 = v14;
        goto LABEL_24;
      }

      resourceProvider4 = [(ISRecipeFactory *)self resourceProvider];
      resourceType = [resourceProvider4 resourceType];

      if (!resourceType)
      {
        goto LABEL_21;
      }

      resourceProvider5 = [(ISRecipeFactory *)self resourceProvider];
      resourceType2 = [resourceProvider5 resourceType];

      if (resourceType2 == 2)
      {
        resourceProvider6 = [(ISRecipeFactory *)self resourceProvider];
        platform = [resourceProvider6 platform];
        descriptor2 = [(ISRecipeFactory *)self descriptor];
        v28 = [ISRecipeInfo documentRecipeForPlatform:platform descriptor:descriptor2];
LABEL_18:
        suggestedRecipe2 = v28;
        goto LABEL_19;
      }

      if (resourceType2 != 1)
      {
LABEL_21:
        v29 = _ISDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [(ISRecipeFactory *)v29 _recipe];
        }

        descriptor3 = [(ISRecipeFactory *)self descriptor];
        suggestedRecipe2 = [ISRecipeInfo genericRecipeWithAppliedDescriptorRecipeAttributes:descriptor3];

        goto LABEL_24;
      }

      descriptor4 = [(ISRecipeFactory *)self descriptor];
      platformStyle = [descriptor4 platformStyle];

      if (platformStyle)
      {
        resourceProvider6 = [(ISRecipeFactory *)self descriptor];
        platformStyle2 = [resourceProvider6 platformStyle];
        descriptor2 = [(ISRecipeFactory *)self descriptor];
        resourceProvider7 = [(ISRecipeFactory *)self resourceProvider];
        suggestedRecipe2 = +[ISRecipeInfo appRecipeForPlatformStyle:descriptor:resourcePlatform:preferRichRecipe:](ISRecipeInfo, "appRecipeForPlatformStyle:descriptor:resourcePlatform:preferRichRecipe:", platformStyle2, descriptor2, [resourceProvider7 platform], -[ISRecipeFactory preferRichRecipe](self, "preferRichRecipe"));

LABEL_19:
        goto LABEL_20;
      }

      resourceProvider8 = [(ISRecipeFactory *)self resourceProvider];
      if ([resourceProvider8 platform] == 2)
      {
        resourceProvider9 = [(ISRecipeFactory *)self resourceProvider];
        isPrecomposed = [resourceProvider9 isPrecomposed];

        if (isPrecomposed)
        {
          resourceProvider6 = [(ISRecipeFactory *)self descriptor];
          preferRichRecipe = [(ISRecipeFactory *)self preferRichRecipe];
          v47 = 1;
LABEL_49:
          suggestedRecipe2 = [ISRecipeInfo appRecipeForPlatform:v47 descriptor:resourceProvider6 preferRichRecipe:preferRichRecipe];
LABEL_20:

          if (suggestedRecipe2)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }
      }

      else
      {
      }

      resourceProvider10 = [(ISRecipeFactory *)self resourceProvider];
      if ([resourceProvider10 platform] == 4)
      {
        v49 = +[ISPlatformInfo sharedInstance];
        if ([v49 nativePlatform] == 1)
        {
          resourceProvider11 = [(ISRecipeFactory *)self resourceProvider];
          isPrecomposed2 = [resourceProvider11 isPrecomposed];

          if ((isPrecomposed2 & 1) == 0)
          {
            resourceProvider6 = [(ISRecipeFactory *)self descriptor];
            preferRichRecipe = [(ISRecipeFactory *)self preferRichRecipe];
            v47 = 2;
            goto LABEL_49;
          }

          goto LABEL_52;
        }
      }

LABEL_52:
      resourceProvider6 = [(ISRecipeFactory *)self resourceProvider];
      platform2 = [resourceProvider6 platform];
      descriptor2 = [(ISRecipeFactory *)self descriptor];
      v28 = [ISRecipeInfo appRecipeForPlatform:platform2 descriptor:descriptor2 preferRichRecipe:[(ISRecipeFactory *)self preferRichRecipe]];
      goto LABEL_18;
    }
  }

LABEL_24:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    descriptor5 = [(ISRecipeFactory *)self descriptor];
    [suggestedRecipe2 setShouldDrawBorder:{objc_msgSend(descriptor5, "drawBorder")}];
  }

  resourceProvider12 = [(ISRecipeFactory *)self resourceProvider];
  if (![resourceProvider12 isGenericProvider])
  {

    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if ((v33 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  [suggestedRecipe2 setGeneric:1];
LABEL_32:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = suggestedRecipe2;
    [v34 setMaskBadgeResource:1];
    resourceProvider13 = [(ISRecipeFactory *)self resourceProvider];
    [v34 setBadgeWithSymbol:{objc_msgSend(resourceProvider13, "isBadgedWithSymbol")}];

    resourceProvider14 = [(ISRecipeFactory *)self resourceProvider];
    [v34 setPlatform:{objc_msgSend(resourceProvider14, "platform")}];

    resourceProvider15 = [(ISRecipeFactory *)self resourceProvider];
    textResource = [resourceProvider15 textResource];

    if (textResource)
    {
      [v34 setHasText:1];
    }

    resourceProvider16 = [(ISRecipeFactory *)self resourceProvider];
    backgroundResource = [resourceProvider16 backgroundResource];

    if (backgroundResource)
    {
      [v34 setHasBespokeBackground:1];
      resourceProvider17 = [(ISRecipeFactory *)self resourceProvider];
      [v34 setTreatLikeSymbol:{objc_msgSend(resourceProvider17, "treatLikeSymbol")}];
    }
  }

  return suggestedRecipe2;
}

- (id)recipe
{
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];

  if (resourceProvider)
  {
    [(ISRecipeFactory *)self _recipe];
  }

  else
  {
    [(ISRecipeFactory *)self _recipeFromDescriptor];
  }
  v4 = ;
  [(ISRecipeFactory *)self pushDescriptorContentsToRecipe:v4];
  if ([(ISRecipeFactory *)self shouldSegment])
  {
    [(ISRecipeFactory *)self enableSegmentationForRecipe:v4];
  }

  return v4;
}

- (id)genericTaggedRecipe
{
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];

  if (resourceProvider)
  {
    _recipe = [(ISRecipeFactory *)self _recipe];
  }

  else
  {
    descriptor = [(ISRecipeFactory *)self descriptor];
    _recipe = [descriptor _recipePreferRichRecipe:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [_recipe setGeneric:1];
  }

  return _recipe;
}

- (BOOL)shouldSegment
{
  descriptor = [(ISRecipeFactory *)self descriptor];
  appearance = [descriptor appearance];
  if (appearance != 1)
  {
    descriptor2 = [(ISRecipeFactory *)self descriptor];
    if ([descriptor2 appearance] != 2)
    {
      v9 = 0;
LABEL_23:

      goto LABEL_24;
    }
  }

  resourceProvider = [(ISRecipeFactory *)self resourceProvider];
  if (![resourceProvider allowNonDefaultAppearances])
  {

    v9 = 0;
    if (appearance == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  resourceProvider2 = [(ISRecipeFactory *)self resourceProvider];
  allowAlterationsToResourceArt = [resourceProvider2 allowAlterationsToResourceArt];

  if (appearance != 1)
  {

    if ((allowAlterationsToResourceArt & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    resourceProvider3 = [(ISRecipeFactory *)self resourceProvider];
    descriptor = [resourceProvider3 iconResource];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 1;
LABEL_24:

      return v9;
    }

    descriptor2 = descriptor;
    descriptor3 = [(ISRecipeFactory *)self descriptor];
    if ([descriptor3 appearance] == 1)
    {
      hasDarkResource = [descriptor2 hasDarkResource];

      if (hasDarkResource)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    descriptor4 = [(ISRecipeFactory *)self descriptor];
    if ([descriptor4 appearance] == 2)
    {
      hasTintableResource = [descriptor2 hasTintableResource];

      if (hasTintableResource)
      {
LABEL_19:
        v9 = 0;
LABEL_22:
        descriptor = descriptor2;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v9 = 1;
    goto LABEL_22;
  }

  if (allowAlterationsToResourceArt)
  {
    goto LABEL_11;
  }

  return 0;
}

- (void)enableSegmentationForRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (objc_opt_respondsToSelector())
  {
    [recipeCopy setSegment:1];
  }
}

- (void)pushDescriptorContentsToRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (objc_opt_respondsToSelector())
  {
    descriptor = [(ISRecipeFactory *)self descriptor];
    [recipeCopy updateRecipeWithImageDescriptor:descriptor];
  }
}

- (BOOL)preferRichRecipe
{
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];
  iconResource = [resourceProvider iconResource];
  v4 = [iconResource conformsToProtocol:&unk_1F1A69890];

  return v4 ^ 1;
}

- (id)recipeForDecoration:(id)decoration
{
  v47 = *MEMORY[0x1E69E9840];
  decorationCopy = decoration;
  if ([decorationCopy identifierKind] == 2)
  {
    identifier = [decorationCopy identifier];
    if (identifier)
    {
      v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier];
      goto LABEL_6;
    }
  }

  else
  {
    identifier = 0;
  }

  v6 = 0;
LABEL_6:
  position = [decorationCopy position];
  if (!position)
  {
    v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.emboss"];
    v11 = [v6 conformsToType:v10];

    if (v11)
    {
      v9 = 1;
      position = 1;
      goto LABEL_22;
    }

    v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration-position.trailing-bottom"];
    v13 = [v6 conformsToType:v12];

    if (v13)
    {
      v9 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration-position.leading-bottom"];
      v15 = [v6 conformsToType:v14];

      if (v15)
      {
        v9 = 0;
        position = 2;
        goto LABEL_22;
      }

      v16 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.system"];
      v17 = [v6 conformsToType:v16];

      if (v17 & 1) != 0 || ([identifier isEqualToString:@"com.apple.icon-decoration.folderbadge"])
      {
        position = 1;
        v9 = 1;
        goto LABEL_22;
      }

      v39 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.graphic-icon"];
      v40 = [v6 conformsToType:v39];

      if ((v40 & 1) == 0)
      {
        v41 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.application-icon"];
        v42 = [v6 conformsToType:v41];

        if (v42)
        {
          position = 3;
        }

        else
        {
          position = 0;
        }

        goto LABEL_7;
      }

      v9 = 1;
    }

    position = 3;
    goto LABEL_22;
  }

LABEL_7:
  if ((position & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v43 = 134217984;
      v44 = position;
      _os_log_impl(&dword_1A77B8000, v8, OS_LOG_TYPE_INFO, "Invalid position: %lu. Using default positioning instead..", &v43, 0xCu);
    }

    position = 0;
  }

  v9 = 1;
LABEL_22:
  mode = [decorationCopy mode];
  if (!mode)
  {
    v20 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.emboss"];
    v21 = [v6 conformsToType:v20];

    if ((v21 & 1) == 0)
    {
      if (position < 2)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }

LABEL_27:
    if (position >= 2)
    {
      v22 = _ISDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v43 = 134218240;
        v44 = position;
        v45 = 2048;
        v46 = 2;
        _os_log_impl(&dword_1A77B8000, v22, OS_LOG_TYPE_INFO, "Incompatible decoration position/mode combo: p:%lu,m:%lu. Preferring mode...", &v43, 0x16u);
      }
    }

    v19 = ISCenterEmbossRecipe;
    goto LABEL_32;
  }

  if (mode == 2)
  {
    goto LABEL_27;
  }

  if (position <= 1)
  {
LABEL_25:
    v19 = ISGenericRecipe;
LABEL_32:
    v23 = objc_alloc_init(v19);
LABEL_33:
    v24 = v23;
    goto LABEL_34;
  }

LABEL_38:
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];
  _shouldTreatLikeApp = [resourceProvider _shouldTreatLikeApp];

  if (_shouldTreatLikeApp)
  {
    v29 = 1;
  }

  else
  {
    resourceProvider2 = [(ISRecipeFactory *)self resourceProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      resourceProvider3 = [(ISRecipeFactory *)self resourceProvider];
      record = [resourceProvider3 record];

      objc_opt_class();
      v29 = objc_opt_isKindOfClass();
    }

    else
    {
      v29 = 0;
    }
  }

  resourceProvider4 = [(ISRecipeFactory *)self resourceProvider];
  _shouldTreatLikeFolder = [resourceProvider4 _shouldTreatLikeFolder];

  if ((v9 & v29) == 1)
  {
    if (position == 2)
    {
      v36 = _ISDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_1A77B8000, v36, OS_LOG_TYPE_INFO, "Invalid decoration position configuration for resource. Defaulting to trailing bottom...", &v43, 2u);
      }
    }

    v23 = objc_opt_new();
    goto LABEL_33;
  }

  v24 = objc_alloc_init(ISGenericRecipe);
  if (position == 2)
  {
    v37 = off_1E77C5F80;
  }

  else
  {
    if (position != 3)
    {
      goto LABEL_54;
    }

    v37 = off_1E77C5FE0;
  }

  v38 = objc_alloc_init(*v37);

  v24 = v38;
LABEL_54:
  if (objc_opt_respondsToSelector())
  {
    if (((v29 | _shouldTreatLikeFolder) & 1) == 0)
    {
      [(ISGenericRecipe *)v24 setPrimaryIconType:1];
    }

    if (_shouldTreatLikeFolder)
    {
      [(ISGenericRecipe *)v24 setPrimaryIconType:2];
    }
  }

LABEL_34:

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)_recipe
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Allowing provider to suggest recipe: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end