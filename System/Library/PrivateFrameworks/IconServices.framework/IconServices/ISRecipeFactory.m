@interface ISRecipeFactory
+ (id)factoryWithDescriptor:(id)a3;
+ (id)factoryWithDescriptor:(id)a3 resourceProvider:(id)a4;
- (BOOL)preferRichRecipe;
- (BOOL)shouldSegment;
- (ISRecipeFactory)initWithDescriptor:(id)a3 resourceProvider:(id)a4;
- (id)_recipe;
- (id)_recipeFromDescriptor;
- (id)genericTaggedRecipe;
- (id)recipe;
- (id)recipeForDecoration:(id)a3;
- (void)_recipe;
- (void)enableSegmentationForRecipe:(id)a3;
- (void)pushDescriptorContentsToRecipe:(id)a3;
@end

@implementation ISRecipeFactory

+ (id)factoryWithDescriptor:(id)a3
{
  v3 = a3;
  v4 = [[ISRecipeFactory alloc] initWithDescriptor:v3 resourceProvider:0];

  return v4;
}

+ (id)factoryWithDescriptor:(id)a3 resourceProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ISRecipeFactory alloc] initWithDescriptor:v6 resourceProvider:v5];

  return v7;
}

- (ISRecipeFactory)initWithDescriptor:(id)a3 resourceProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ISRecipeFactory;
  v9 = [(ISRecipeFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceProvider, a4);
    objc_storeStrong(&v10->_descriptor, a3);
  }

  return v10;
}

- (id)_recipeFromDescriptor
{
  v2 = [(ISRecipeFactory *)self descriptor];
  v3 = [v2 _recipe];

  return v3;
}

- (id)_recipe
{
  v3 = [(ISRecipeFactory *)self descriptor];
  v4 = [v3 shape];

  if (!v4 || (-[ISRecipeFactory descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _recipePreferRichRecipe:{-[ISRecipeFactory preferRichRecipe](self, "preferRichRecipe")}], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(ISRecipeFactory *)self resourceProvider];
    v8 = [v7 suggestedRecipe];

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(ISRecipeFactory *)self resourceProvider];
    v6 = [v9 suggestedRecipe];

    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ISRecipeFactory *)v6 _recipe];
    }

    if (!v6)
    {
LABEL_7:
      v11 = [(ISRecipeFactory *)self resourceProvider];
      v12 = [v11 iconResource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 && (v14 = objc_alloc_init(ISGenericRecipe)) != 0 || (-[ISRecipeFactory resourceProvider](self, "resourceProvider"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isCompositedDocument], v15, v16) && (v14 = objc_alloc_init(ISDocumentRecipe)) != 0)
      {
        v6 = v14;
        goto LABEL_24;
      }

      v17 = [(ISRecipeFactory *)self resourceProvider];
      v18 = [v17 resourceType];

      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = [(ISRecipeFactory *)self resourceProvider];
      v20 = [v19 resourceType];

      if (v20 == 2)
      {
        v23 = [(ISRecipeFactory *)self resourceProvider];
        v27 = [v23 platform];
        v25 = [(ISRecipeFactory *)self descriptor];
        v28 = [ISRecipeInfo documentRecipeForPlatform:v27 descriptor:v25];
LABEL_18:
        v6 = v28;
        goto LABEL_19;
      }

      if (v20 != 1)
      {
LABEL_21:
        v29 = _ISDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [(ISRecipeFactory *)v29 _recipe];
        }

        v30 = [(ISRecipeFactory *)self descriptor];
        v6 = [ISRecipeInfo genericRecipeWithAppliedDescriptorRecipeAttributes:v30];

        goto LABEL_24;
      }

      v21 = [(ISRecipeFactory *)self descriptor];
      v22 = [v21 platformStyle];

      if (v22)
      {
        v23 = [(ISRecipeFactory *)self descriptor];
        v24 = [v23 platformStyle];
        v25 = [(ISRecipeFactory *)self descriptor];
        v26 = [(ISRecipeFactory *)self resourceProvider];
        v6 = +[ISRecipeInfo appRecipeForPlatformStyle:descriptor:resourcePlatform:preferRichRecipe:](ISRecipeInfo, "appRecipeForPlatformStyle:descriptor:resourcePlatform:preferRichRecipe:", v24, v25, [v26 platform], -[ISRecipeFactory preferRichRecipe](self, "preferRichRecipe"));

LABEL_19:
        goto LABEL_20;
      }

      v43 = [(ISRecipeFactory *)self resourceProvider];
      if ([v43 platform] == 2)
      {
        v44 = [(ISRecipeFactory *)self resourceProvider];
        v45 = [v44 isPrecomposed];

        if (v45)
        {
          v23 = [(ISRecipeFactory *)self descriptor];
          v46 = [(ISRecipeFactory *)self preferRichRecipe];
          v47 = 1;
LABEL_49:
          v6 = [ISRecipeInfo appRecipeForPlatform:v47 descriptor:v23 preferRichRecipe:v46];
LABEL_20:

          if (v6)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }
      }

      else
      {
      }

      v48 = [(ISRecipeFactory *)self resourceProvider];
      if ([v48 platform] == 4)
      {
        v49 = +[ISPlatformInfo sharedInstance];
        if ([v49 nativePlatform] == 1)
        {
          v50 = [(ISRecipeFactory *)self resourceProvider];
          v51 = [v50 isPrecomposed];

          if ((v51 & 1) == 0)
          {
            v23 = [(ISRecipeFactory *)self descriptor];
            v46 = [(ISRecipeFactory *)self preferRichRecipe];
            v47 = 2;
            goto LABEL_49;
          }

          goto LABEL_52;
        }
      }

LABEL_52:
      v23 = [(ISRecipeFactory *)self resourceProvider];
      v52 = [v23 platform];
      v25 = [(ISRecipeFactory *)self descriptor];
      v28 = [ISRecipeInfo appRecipeForPlatform:v52 descriptor:v25 preferRichRecipe:[(ISRecipeFactory *)self preferRichRecipe]];
      goto LABEL_18;
    }
  }

LABEL_24:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [(ISRecipeFactory *)self descriptor];
    [v6 setShouldDrawBorder:{objc_msgSend(v31, "drawBorder")}];
  }

  v32 = [(ISRecipeFactory *)self resourceProvider];
  if (![v32 isGenericProvider])
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

  [v6 setGeneric:1];
LABEL_32:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v6;
    [v34 setMaskBadgeResource:1];
    v35 = [(ISRecipeFactory *)self resourceProvider];
    [v34 setBadgeWithSymbol:{objc_msgSend(v35, "isBadgedWithSymbol")}];

    v36 = [(ISRecipeFactory *)self resourceProvider];
    [v34 setPlatform:{objc_msgSend(v36, "platform")}];

    v37 = [(ISRecipeFactory *)self resourceProvider];
    v38 = [v37 textResource];

    if (v38)
    {
      [v34 setHasText:1];
    }

    v39 = [(ISRecipeFactory *)self resourceProvider];
    v40 = [v39 backgroundResource];

    if (v40)
    {
      [v34 setHasBespokeBackground:1];
      v41 = [(ISRecipeFactory *)self resourceProvider];
      [v34 setTreatLikeSymbol:{objc_msgSend(v41, "treatLikeSymbol")}];
    }
  }

  return v6;
}

- (id)recipe
{
  v3 = [(ISRecipeFactory *)self resourceProvider];

  if (v3)
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
  v3 = [(ISRecipeFactory *)self resourceProvider];

  if (v3)
  {
    v4 = [(ISRecipeFactory *)self _recipe];
  }

  else
  {
    v5 = [(ISRecipeFactory *)self descriptor];
    v4 = [v5 _recipePreferRichRecipe:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setGeneric:1];
  }

  return v4;
}

- (BOOL)shouldSegment
{
  v4 = [(ISRecipeFactory *)self descriptor];
  v5 = [v4 appearance];
  if (v5 != 1)
  {
    v2 = [(ISRecipeFactory *)self descriptor];
    if ([v2 appearance] != 2)
    {
      v9 = 0;
LABEL_23:

      goto LABEL_24;
    }
  }

  v6 = [(ISRecipeFactory *)self resourceProvider];
  if (![v6 allowNonDefaultAppearances])
  {

    v9 = 0;
    if (v5 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v7 = [(ISRecipeFactory *)self resourceProvider];
  v8 = [v7 allowAlterationsToResourceArt];

  if (v5 != 1)
  {

    if ((v8 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    v10 = [(ISRecipeFactory *)self resourceProvider];
    v4 = [v10 iconResource];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 1;
LABEL_24:

      return v9;
    }

    v2 = v4;
    v11 = [(ISRecipeFactory *)self descriptor];
    if ([v11 appearance] == 1)
    {
      v12 = [v2 hasDarkResource];

      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v13 = [(ISRecipeFactory *)self descriptor];
    if ([v13 appearance] == 2)
    {
      v14 = [v2 hasTintableResource];

      if (v14)
      {
LABEL_19:
        v9 = 0;
LABEL_22:
        v4 = v2;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v9 = 1;
    goto LABEL_22;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  return 0;
}

- (void)enableSegmentationForRecipe:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 setSegment:1];
  }
}

- (void)pushDescriptorContentsToRecipe:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(ISRecipeFactory *)self descriptor];
    [v5 updateRecipeWithImageDescriptor:v4];
  }
}

- (BOOL)preferRichRecipe
{
  v2 = [(ISRecipeFactory *)self resourceProvider];
  v3 = [v2 iconResource];
  v4 = [v3 conformsToProtocol:&unk_1F1A69890];

  return v4 ^ 1;
}

- (id)recipeForDecoration:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 identifierKind] == 2)
  {
    v5 = [v4 identifier];
    if (v5)
    {
      v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:v5];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = [v4 position];
  if (!v7)
  {
    v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.emboss"];
    v11 = [v6 conformsToType:v10];

    if (v11)
    {
      v9 = 1;
      v7 = 1;
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
        v7 = 2;
        goto LABEL_22;
      }

      v16 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.system"];
      v17 = [v6 conformsToType:v16];

      if (v17 & 1) != 0 || ([v5 isEqualToString:@"com.apple.icon-decoration.folderbadge"])
      {
        v7 = 1;
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
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_7;
      }

      v9 = 1;
    }

    v7 = 3;
    goto LABEL_22;
  }

LABEL_7:
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v43 = 134217984;
      v44 = v7;
      _os_log_impl(&dword_1A77B8000, v8, OS_LOG_TYPE_INFO, "Invalid position: %lu. Using default positioning instead..", &v43, 0xCu);
    }

    v7 = 0;
  }

  v9 = 1;
LABEL_22:
  v18 = [v4 mode];
  if (!v18)
  {
    v20 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.emboss"];
    v21 = [v6 conformsToType:v20];

    if ((v21 & 1) == 0)
    {
      if (v7 < 2)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }

LABEL_27:
    if (v7 >= 2)
    {
      v22 = _ISDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v43 = 134218240;
        v44 = v7;
        v45 = 2048;
        v46 = 2;
        _os_log_impl(&dword_1A77B8000, v22, OS_LOG_TYPE_INFO, "Incompatible decoration position/mode combo: p:%lu,m:%lu. Preferring mode...", &v43, 0x16u);
      }
    }

    v19 = ISCenterEmbossRecipe;
    goto LABEL_32;
  }

  if (v18 == 2)
  {
    goto LABEL_27;
  }

  if (v7 <= 1)
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
  v27 = [(ISRecipeFactory *)self resourceProvider];
  v28 = [v27 _shouldTreatLikeApp];

  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v30 = [(ISRecipeFactory *)self resourceProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v32 = [(ISRecipeFactory *)self resourceProvider];
      v33 = [v32 record];

      objc_opt_class();
      v29 = objc_opt_isKindOfClass();
    }

    else
    {
      v29 = 0;
    }
  }

  v34 = [(ISRecipeFactory *)self resourceProvider];
  v35 = [v34 _shouldTreatLikeFolder];

  if ((v9 & v29) == 1)
  {
    if (v7 == 2)
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
  if (v7 == 2)
  {
    v37 = off_1E77C5F80;
  }

  else
  {
    if (v7 != 3)
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
    if (((v29 | v35) & 1) == 0)
    {
      [(ISGenericRecipe *)v24 setPrimaryIconType:1];
    }

    if (v35)
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
  v4 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Allowing provider to suggest recipe: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end