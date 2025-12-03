@interface ISGenerationRequest
- (ISGenerationRequest)init;
- (ISGenerationRequest)initWithCoder:(id)coder;
- (id)compositorElementsForDecorations:(id)decorations primaryIconResourceProvider:(id)provider imageDescriptor:(id)descriptor;
- (id)generateImageReturningRecordIdentifiers:(id *)identifiers;
- (id)iconSpecificationFromRecipe:(id)recipe;
- (void)encodeWithCoder:(id)coder;
- (void)sendAnalytics:(id)analytics compositor:(id)compositor imageDescriptor:(id)descriptor;
@end

@implementation ISGenerationRequest

- (ISGenerationRequest)init
{
  v10.receiver = self;
  v10.super_class = ISGenerationRequest;
  v2 = [(ISGenerationRequest *)&v10 init];
  if (v2)
  {
    v8 = 0;
    v9 = 0;
    [MEMORY[0x1E6963688] _is_getSequenceNumber:&v9 andUUID:&v8];
    v3 = v8;
    v4 = v8;
    v2->_lsDatabaseSequenceNumber = v9;
    objc_storeStrong(&v2->_lsDatabaseUUID, v3);
    if (!_lastAnalyticsStartDate)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:0.0];
      v6 = _lastAnalyticsStartDate;
      _lastAnalyticsStartDate = v5;
    }
  }

  return v2;
}

- (ISGenerationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ISGenerationRequest;
  v5 = [(ISGenerationRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDescriptor"];
    imageDescriptor = v5->_imageDescriptor;
    v5->_imageDescriptor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsDatabaseUUID"];
    lsDatabaseUUID = v5->_lsDatabaseUUID;
    v5->_lsDatabaseUUID = v10;

    v5->_lsDatabaseSequenceNumber = [coderCopy decodeInt64ForKey:@"lsDatabaseSequenceNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  imageDescriptor = self->_imageDescriptor;
  coderCopy = coder;
  [coderCopy encodeObject:imageDescriptor forKey:@"imageDescriptor"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_lsDatabaseUUID forKey:@"lsDatabaseUUID"];
  [coderCopy encodeInt64:self->_lsDatabaseSequenceNumber forKey:@"lsDatabaseSequenceNumber"];
}

- (void)sendAnalytics:(id)analytics compositor:(id)compositor imageDescriptor:(id)descriptor
{
  analyticsCopy = analytics;
  compositorCopy = compositor;
  descriptorCopy = descriptor;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:_lastAnalyticsStartDate];
  v13 = v12;

  v14 = +[ISDefaults sharedInstance];
  isIconSegmentationAnalyticsForAllIconsEnabled = [v14 isIconSegmentationAnalyticsForAllIconsEnabled];

  if ((isIconSegmentationAnalyticsForAllIconsEnabled & 1) != 0 || v13 > 604800.0)
  {
    _analyticsMessageCount = 0;
  }

  else if (_analyticsMessageCount > 9)
  {
    goto LABEL_18;
  }

  icon = [(ISGenerationRequest *)self icon];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    icon2 = [(ISGenerationRequest *)self icon];
    bundleIdentifier = [icon2 bundleIdentifier];

    if (([bundleIdentifier hasPrefix:@"com.apple"] & 1) == 0)
    {
      v20 = +[ISDefaults sharedInstance];
      if ([v20 isIconSegmentationAnalyticsForAllIconsEnabled])
      {

LABEL_11:
        icon3 = [(ISGenerationRequest *)self icon];
        bundleVersion = [icon3 bundleVersion];

        iconResource = [analyticsCopy iconResource];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          iconResource2 = [analyticsCopy iconResource];
          hasDarkResource = [iconResource2 hasDarkResource];
          hasTintableResource = [iconResource2 hasTintableResource];
        }

        else
        {
          hasTintableResource = 0;
          hasDarkResource = 0;
        }

        analyticsSegmented = [compositorCopy analyticsSegmented];
        appearance = [descriptorCopy appearance];
        v35 = MEMORY[0x1E69E9820];
        v36 = bundleIdentifier;
        v31 = bundleVersion;
        LOBYTE(v38) = analyticsSegmented;
        BYTE1(v38) = hasDarkResource;
        BYTE2(v38) = hasTintableResource;
        v37 = v31;
        AnalyticsSendEventLazy();
        v32 = _analyticsMessageCount;
        if (!_analyticsMessageCount)
        {
          date2 = [MEMORY[0x1E695DF00] date];
          v34 = _lastAnalyticsStartDate;
          _lastAnalyticsStartDate = date2;

          v32 = _analyticsMessageCount;
        }

        _analyticsMessageCount = v32 + 1;

        goto LABEL_17;
      }

      v21 = arc4random_uniform(3u);

      if (v21 == 1)
      {
        goto LABEL_11;
      }
    }

LABEL_17:
  }

LABEL_18:
}

id __76__ISGenerationRequest_Generation__sendAnalytics_compositor_imageDescriptor___block_invoke(uint64_t a1)
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13[0] = @"Identifier";
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v3;
  v13[1] = @"Version";
  v4 = *(a1 + 40);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v5;
  v13[2] = @"Segmentable";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v14[2] = v6;
  v13[3] = @"HasDarkResources";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
  v14[3] = v7;
  v13[4] = @"HasTintedResources";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 58)];
  v14[4] = v8;
  v13[5] = @"HomeScreenStyle";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v14[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  if (v4)
  {
    if (v2)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v2)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)generateImageReturningRecordIdentifiers:(id *)identifiers
{
  selfCopy = self;
  v125 = *MEMORY[0x1E69E9840];
  imageDescriptor = [(ISGenerationRequest *)self imageDescriptor];
  v5 = [imageDescriptor copy];

  icon = [(ISGenerationRequest *)selfCopy icon];
  v108 = icon;
  if (v5)
  {
    v7 = _ISPrepareISIconSignpostLog();
    v8 = os_signpost_enabled(v7);

    if (v8)
    {
      v105 = selfCopy;
      v109 = v5;
      v9 = [icon _activeSignpostsForDescriptor:v5];
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v115 objects:v124 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v116;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v116 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v115 + 1) + 8 * i);
            if ([v14 unsignedLongLongValue])
            {
              v15 = _ISPrepareISIconSignpostLog();
              v16 = os_signpost_enabled(v15);

              if (v16)
              {
                v17 = _ISPrepareISIconSignpostLog();
                unsignedLongLongValue = [v14 unsignedLongLongValue];
                if ((unsignedLongLongValue - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v19 = unsignedLongLongValue;
                  if (os_signpost_enabled(v17))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1A77B8000, v17, OS_SIGNPOST_EVENT, v19, "PrepareISIcon", "ISA_GENERATEING_IMAGE", buf, 2u);
                  }
                }
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v115 objects:v124 count:16];
        }

        while (v11);
      }

      icon = v108;
      v5 = v109;
      selfCopy = v105;
    }
  }

  makeResourceProvider = [icon makeResourceProvider];
  v21 = makeResourceProvider;
  if (makeResourceProvider)
  {
    [makeResourceProvider resolveIconResource];
    [v21 configureProviderFromDescriptor:v5];
    v22 = objc_alloc_init(ISCompositor);
    customRecipe = [v21 customRecipe];

    if (customRecipe)
    {
      customRecipe2 = [v21 customRecipe];
    }

    else
    {
      customRecipe2 = v21;
    }

    v26 = customRecipe2;
    v27 = [ISRecipeFactory factoryWithDescriptor:v5 resourceProvider:v21];
    recipe = [v27 recipe];

    if ([v21 isGenericProvider] && (objc_msgSend(v5, "shape") == 5 || objc_msgSend(v5, "shape") == 6))
    {
      v29 = MEMORY[0x1E69A8990];
      iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      v31 = [v29 imageBagWithResourcesNamed:@"AppClipDefaultIcon" fromBundle:iconsetResourceBundle];
      [v21 setIconResource:v31];
    }

    if ([v5 shape] == 5 || objc_msgSend(v5, "shape") == 6 || (objc_msgSend(v21, "suggestedRecipe"), v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v32, (isKindOfClass & 1) != 0))
    {
      [(ISCompositor *)v22 setRenderingMode:2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISCompositor *)v22 setRenderingMode:2];
    }

    v34 = [(ISGenerationRequest *)selfCopy iconSpecificationFromRecipe:recipe];
    [v5 size];
    v36 = v35;
    v38 = v37;
    [v5 scale];
    v40 = [v34 imageSpecificationForSize:v36 scale:{v38, v39}];
    [v40 size];
    v42 = v41;
    [v34 maxSize];
    v103 = v34;
    if (v42 == v43 && ([v40 size], v45 = v44, objc_msgSend(v34, "maxSize"), v45 == v46))
    {
      [v40 scale];
      v48 = v47;
      [v34 maxScale];
      v100 = v48 == v49;
    }

    else
    {
      v100 = 0;
    }

    v110 = v40;
    iconResource = [v21 iconResource];
    objc_opt_class();
    v51 = objc_opt_isKindOfClass();

    if (v51)
    {
      iconResource2 = [v21 iconResource];
      [iconResource2 updateDescriptorWithImageDescriptor:v5];
    }

    v106 = v26;
    v102 = [[ISCompositorElement alloc] initWithRecipe:recipe resourceProvider:v26];
    [(ISCompositor *)v22 addElement:?];
    v53 = objc_opt_new();
    decorations = [icon decorations];
    [v53 addObjectsFromArray:decorations];

    v55 = [ISIconDecoration decorationsFromDescriptor:v5];
    [v53 addObjectsFromArray:v55];

    v101 = v53;
    v56 = [(ISGenerationRequest *)selfCopy compositorElementsForDecorations:v53 primaryIconResourceProvider:v21 imageDescriptor:v5];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v57 = [v56 countByEnumeratingWithState:&v111 objects:v123 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v112;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v112 != v59)
          {
            objc_enumerationMutation(v56);
          }

          [(ISCompositor *)v22 addElement:*(*(&v111 + 1) + 8 * j)];
        }

        v58 = [v56 countByEnumeratingWithState:&v111 objects:v123 count:16];
      }

      while (v58);
    }

    [v110 size];
    v62 = v61;
    v64 = v63;
    [v110 scale];
    v66 = v65;
    if (([v5 specialIconOptions] & 4) != 0)
    {
      [v5 size];
      v62 = v67;
      v64 = v68;
      [v5 scale];
      v66 = v69;
    }

    objc_opt_class();
    v104 = recipe;
    v70 = objc_opt_isKindOfClass();
    v71 = round(v62 * 1.18);
    v72 = round(v64 * 1.18);
    if (v70)
    {
      v73 = v72;
    }

    else
    {
      v73 = v64;
    }

    if (v70)
    {
      v74 = v71;
    }

    else
    {
      v74 = v62;
    }

    iconResource3 = [v21 iconResource];
    v76 = [iconResource3 conformsToProtocol:&unk_1F1A69890];

    if (v76)
    {
      [(ISCompositor *)v22 setGraphicsContextPreset:1];
    }

    v77 = [(ISCompositor *)v22 imageForSize:v74 scale:v73, v66];
    [(ISGenerationRequest *)selfCopy sendAnalytics:v21 compositor:v22 imageDescriptor:v5];
    iconResource4 = [v21 iconResource];
    v79 = [iconResource4 conformsToProtocol:&unk_1F1A69910];

    if (v79)
    {
      iconResource5 = [v21 iconResource];
      v81 = [iconResource5 layerDataForSize:v74 scale:{v73, v66}];
    }

    else
    {
      v81 = 0;
    }

    v82 = objc_alloc(MEMORY[0x1E69A8988]);
    cGImage = [v77 CGImage];
    [v77 scale];
    v99 = v81;
    v84 = [v82 initWithCGImage:cGImage scale:v81 layerData:?];

    [v110 minimumSize];
    [v84 setMinimumSize:?];
    [v84 setIconSize:{v62, v64}];
    data = [v84 data];
    v86 = objc_alloc(MEMORY[0x1E69A8988]);
    validationToken = [v21 validationToken];
    v25 = [v86 initWithData:data uuid:0 validationToken:validationToken];

    iconResource6 = [v21 iconResource];
    LODWORD(validationToken) = [iconResource6 conformsToProtocol:&unk_1F1A69890];

    if (validationToken)
    {
      iconResource7 = [v21 iconResource];
      generationReport = [iconResource7 generationReport];
      [v25 setGenerationReport:generationReport];
    }

    else
    {
      iconResource7 = [v84 generationReport];
      [v25 setGenerationReport:iconResource7];
    }

    [v25 setLargest:v100];
    if (identifiers)
    {
      v91 = v5;
      sourceRecordIdentifiers = [v21 sourceRecordIdentifiers];
      if (sourceRecordIdentifiers && (v93 = sourceRecordIdentifiers, [v21 sourceRecordIdentifiers], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "count"), v94, v93, v95))
      {
        *identifiers = [v21 sourceRecordIdentifiers];
      }

      else
      {
        v96 = _ISDefaultLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v120 = v21;
          v121 = 2112;
          v122 = v108;
          _os_log_impl(&dword_1A77B8000, v96, OS_LOG_TYPE_DEFAULT, "Resource provider %@ for %@ has no record identifiers", buf, 0x16u);
        }
      }

      v5 = v91;
    }

    icon = v108;
  }

  else
  {
    v25 = 0;
  }

  v97 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)iconSpecificationFromRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (objc_opt_respondsToSelector())
  {
    [recipeCopy iconSpecification];
  }

  else
  {
    [MEMORY[0x1E69A8980] defaultIconSpecification];
  }
  v4 = ;

  return v4;
}

- (id)compositorElementsForDecorations:(id)decorations primaryIconResourceProvider:(id)provider imageDescriptor:(id)descriptor
{
  v66 = *MEMORY[0x1E69E9840];
  decorationsCopy = decorations;
  providerCopy = provider;
  descriptorCopy = descriptor;
  v52 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = decorationsCopy;
  v54 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v54)
  {
    v10 = *v56;
    v50 = providerCopy;
    v51 = *v56;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * i);
        v13 = [ISRecipeFactory factoryWithDescriptor:descriptorCopy resourceProvider:providerCopy];
        v14 = [v13 recipeForDecoration:v12];

        identifierKind = [v12 identifierKind];
        if (identifierKind == 1)
        {
          v24 = MEMORY[0x1E6963620];
          identifier = [v12 identifier];
          v19 = [v24 bundleRecordWithBundleIdentifier:identifier allowPlaceholder:1 error:0];

          v18 = [[ISRecordResourceProvider alloc] initWithRecord:v19 options:0];
          [(ISResourceProvider *)v18 resolveIconResource];
          [(ISRecordResourceProvider *)v18 configureProviderFromDescriptor:descriptorCopy];
          if (!v14)
          {
            goto LABEL_32;
          }

          iconResource = [(ISRecordResourceProvider *)v18 iconResource];

          if (!iconResource)
          {
            goto LABEL_32;
          }

          iconResource2 = [(ISRecordResourceProvider *)v18 iconResource];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            iconResource3 = [(ISRecordResourceProvider *)v18 iconResource];
            [iconResource3 updateDescriptorWithImageDescriptor:descriptorCopy];
          }

          v30 = [_ISCompositorElement alloc];
          v61 = @"kISPrimaryResourceKey";
          iconResource4 = [(ISRecordResourceProvider *)v18 iconResource];
          v62 = iconResource4;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v62;
          v34 = &v61;
          goto LABEL_31;
        }

        if (identifierKind != 3)
        {
          if (identifierKind != 2)
          {
            goto LABEL_34;
          }

          decorationResources = [providerCopy decorationResources];
          uuid = [v12 uuid];
          v18 = [decorationResources objectForKeyedSubscript:uuid];

          if (v18)
          {
            v19 = [[ISResourceProvider alloc] initWithResource:v18 templateResource:0];
          }

          else
          {
            v35 = MEMORY[0x1E69636B0];
            identifier2 = [v12 identifier];
            v37 = [v35 typeRecordWithIdentifier:identifier2];

            coreTypesBundleRecord = [MEMORY[0x1E6963620] coreTypesBundleRecord];
            bundleIdentifier = [coreTypesBundleRecord bundleIdentifier];

            v40 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:@"com.apple.icon-decoration.system"];
            if ([v37 conformsToTypeRecord:v40] && (objc_msgSend(v37, "declaringBundleRecord"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "bundleIdentifier"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", bundleIdentifier), v42, v41, !v43))
            {
              v19 = 0;
            }

            else
            {
              identifier3 = [v37 identifier];
              v19 = [(ISResourceProvider *)ISRecordResourceProvider resourceProviderWithTypeIdentifier:identifier3 options:0];
            }

            providerCopy = v50;
            v10 = v51;
          }

          [(ISResourceProvider *)v19 resolveIconResource];
          [(ISResourceProvider *)v19 configureProviderFromDescriptor:descriptorCopy];
          if (!v14)
          {
            goto LABEL_32;
          }

          iconResource5 = [(ISResourceProvider *)v19 iconResource];

          if (!iconResource5)
          {
            goto LABEL_32;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISRecordResourceProvider *)v18 updateDescriptorWithImageDescriptor:descriptorCopy];
          }

          v30 = [_ISCompositorElement alloc];
          v63 = @"kISPrimaryResourceKey";
          iconResource4 = [(ISResourceProvider *)v19 iconResource];
          v64 = iconResource4;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v64;
          v34 = &v63;
LABEL_31:
          v46 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
          v47 = [(_ISCompositorElement *)v30 initWithRecipe:v14 resources:v46];

          [v52 addObject:v47];
          v10 = v51;
          goto LABEL_32;
        }

        compositorResource = [v12 compositorResource];
        v19 = compositorResource;
        if (v14)
        {
          v21 = compositorResource == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          goto LABEL_33;
        }

        v22 = [_ISCompositorElement alloc];
        v59 = @"kISPrimaryResourceKey";
        v60 = v19;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v18 = [(_ISCompositorElement *)v22 initWithRecipe:v14 resources:v23];

        [v52 addObject:v18];
LABEL_32:

LABEL_33:
LABEL_34:
      }

      v54 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v54);
  }

  v48 = *MEMORY[0x1E69E9840];

  return v52;
}

@end