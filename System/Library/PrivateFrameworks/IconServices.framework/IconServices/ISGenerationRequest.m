@interface ISGenerationRequest
- (ISGenerationRequest)init;
- (ISGenerationRequest)initWithCoder:(id)a3;
- (id)compositorElementsForDecorations:(id)a3 primaryIconResourceProvider:(id)a4 imageDescriptor:(id)a5;
- (id)generateImageReturningRecordIdentifiers:(id *)a3;
- (id)iconSpecificationFromRecipe:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)sendAnalytics:(id)a3 compositor:(id)a4 imageDescriptor:(id)a5;
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

- (ISGenerationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ISGenerationRequest;
  v5 = [(ISGenerationRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageDescriptor"];
    imageDescriptor = v5->_imageDescriptor;
    v5->_imageDescriptor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lsDatabaseUUID"];
    lsDatabaseUUID = v5->_lsDatabaseUUID;
    v5->_lsDatabaseUUID = v10;

    v5->_lsDatabaseSequenceNumber = [v4 decodeInt64ForKey:@"lsDatabaseSequenceNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  imageDescriptor = self->_imageDescriptor;
  v5 = a3;
  [v5 encodeObject:imageDescriptor forKey:@"imageDescriptor"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_lsDatabaseUUID forKey:@"lsDatabaseUUID"];
  [v5 encodeInt64:self->_lsDatabaseSequenceNumber forKey:@"lsDatabaseSequenceNumber"];
}

- (void)sendAnalytics:(id)a3 compositor:(id)a4 imageDescriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF00] date];
  [v11 timeIntervalSinceDate:_lastAnalyticsStartDate];
  v13 = v12;

  v14 = +[ISDefaults sharedInstance];
  v15 = [v14 isIconSegmentationAnalyticsForAllIconsEnabled];

  if ((v15 & 1) != 0 || v13 > 604800.0)
  {
    _analyticsMessageCount = 0;
  }

  else if (_analyticsMessageCount > 9)
  {
    goto LABEL_18;
  }

  v16 = [(ISGenerationRequest *)self icon];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18 = [(ISGenerationRequest *)self icon];
    v19 = [v18 bundleIdentifier];

    if (([v19 hasPrefix:@"com.apple"] & 1) == 0)
    {
      v20 = +[ISDefaults sharedInstance];
      if ([v20 isIconSegmentationAnalyticsForAllIconsEnabled])
      {

LABEL_11:
        v22 = [(ISGenerationRequest *)self icon];
        v23 = [v22 bundleVersion];

        v24 = [v8 iconResource];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          v26 = [v8 iconResource];
          v27 = [v26 hasDarkResource];
          v28 = [v26 hasTintableResource];
        }

        else
        {
          v28 = 0;
          v27 = 0;
        }

        v29 = [v9 analyticsSegmented];
        v30 = [v10 appearance];
        v35 = MEMORY[0x1E69E9820];
        v36 = v19;
        v31 = v23;
        LOBYTE(v38) = v29;
        BYTE1(v38) = v27;
        BYTE2(v38) = v28;
        v37 = v31;
        AnalyticsSendEventLazy();
        v32 = _analyticsMessageCount;
        if (!_analyticsMessageCount)
        {
          v33 = [MEMORY[0x1E695DF00] date];
          v34 = _lastAnalyticsStartDate;
          _lastAnalyticsStartDate = v33;

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

- (id)generateImageReturningRecordIdentifiers:(id *)a3
{
  v3 = self;
  v125 = *MEMORY[0x1E69E9840];
  v4 = [(ISGenerationRequest *)self imageDescriptor];
  v5 = [v4 copy];

  v6 = [(ISGenerationRequest *)v3 icon];
  v108 = v6;
  if (v5)
  {
    v7 = _ISPrepareISIconSignpostLog();
    v8 = os_signpost_enabled(v7);

    if (v8)
    {
      v105 = v3;
      v109 = v5;
      v9 = [v6 _activeSignpostsForDescriptor:v5];
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
                v18 = [v14 unsignedLongLongValue];
                if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v19 = v18;
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

      v6 = v108;
      v5 = v109;
      v3 = v105;
    }
  }

  v20 = [v6 makeResourceProvider];
  v21 = v20;
  if (v20)
  {
    [v20 resolveIconResource];
    [v21 configureProviderFromDescriptor:v5];
    v22 = objc_alloc_init(ISCompositor);
    v23 = [v21 customRecipe];

    if (v23)
    {
      v24 = [v21 customRecipe];
    }

    else
    {
      v24 = v21;
    }

    v26 = v24;
    v27 = [ISRecipeFactory factoryWithDescriptor:v5 resourceProvider:v21];
    v28 = [v27 recipe];

    if ([v21 isGenericProvider] && (objc_msgSend(v5, "shape") == 5 || objc_msgSend(v5, "shape") == 6))
    {
      v29 = MEMORY[0x1E69A8990];
      v30 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      v31 = [v29 imageBagWithResourcesNamed:@"AppClipDefaultIcon" fromBundle:v30];
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

    v34 = [(ISGenerationRequest *)v3 iconSpecificationFromRecipe:v28];
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
    v50 = [v21 iconResource];
    objc_opt_class();
    v51 = objc_opt_isKindOfClass();

    if (v51)
    {
      v52 = [v21 iconResource];
      [v52 updateDescriptorWithImageDescriptor:v5];
    }

    v106 = v26;
    v102 = [[ISCompositorElement alloc] initWithRecipe:v28 resourceProvider:v26];
    [(ISCompositor *)v22 addElement:?];
    v53 = objc_opt_new();
    v54 = [v6 decorations];
    [v53 addObjectsFromArray:v54];

    v55 = [ISIconDecoration decorationsFromDescriptor:v5];
    [v53 addObjectsFromArray:v55];

    v101 = v53;
    v56 = [(ISGenerationRequest *)v3 compositorElementsForDecorations:v53 primaryIconResourceProvider:v21 imageDescriptor:v5];
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
    v104 = v28;
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

    v75 = [v21 iconResource];
    v76 = [v75 conformsToProtocol:&unk_1F1A69890];

    if (v76)
    {
      [(ISCompositor *)v22 setGraphicsContextPreset:1];
    }

    v77 = [(ISCompositor *)v22 imageForSize:v74 scale:v73, v66];
    [(ISGenerationRequest *)v3 sendAnalytics:v21 compositor:v22 imageDescriptor:v5];
    v78 = [v21 iconResource];
    v79 = [v78 conformsToProtocol:&unk_1F1A69910];

    if (v79)
    {
      v80 = [v21 iconResource];
      v81 = [v80 layerDataForSize:v74 scale:{v73, v66}];
    }

    else
    {
      v81 = 0;
    }

    v82 = objc_alloc(MEMORY[0x1E69A8988]);
    v83 = [v77 CGImage];
    [v77 scale];
    v99 = v81;
    v84 = [v82 initWithCGImage:v83 scale:v81 layerData:?];

    [v110 minimumSize];
    [v84 setMinimumSize:?];
    [v84 setIconSize:{v62, v64}];
    v85 = [v84 data];
    v86 = objc_alloc(MEMORY[0x1E69A8988]);
    v87 = [v21 validationToken];
    v25 = [v86 initWithData:v85 uuid:0 validationToken:v87];

    v88 = [v21 iconResource];
    LODWORD(v87) = [v88 conformsToProtocol:&unk_1F1A69890];

    if (v87)
    {
      v89 = [v21 iconResource];
      v90 = [v89 generationReport];
      [v25 setGenerationReport:v90];
    }

    else
    {
      v89 = [v84 generationReport];
      [v25 setGenerationReport:v89];
    }

    [v25 setLargest:v100];
    if (a3)
    {
      v91 = v5;
      v92 = [v21 sourceRecordIdentifiers];
      if (v92 && (v93 = v92, [v21 sourceRecordIdentifiers], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "count"), v94, v93, v95))
      {
        *a3 = [v21 sourceRecordIdentifiers];
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

    v6 = v108;
  }

  else
  {
    v25 = 0;
  }

  v97 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)iconSpecificationFromRecipe:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 iconSpecification];
  }

  else
  {
    [MEMORY[0x1E69A8980] defaultIconSpecification];
  }
  v4 = ;

  return v4;
}

- (id)compositorElementsForDecorations:(id)a3 primaryIconResourceProvider:(id)a4 imageDescriptor:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v52 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v7;
  v54 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v54)
  {
    v10 = *v56;
    v50 = v8;
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
        v13 = [ISRecipeFactory factoryWithDescriptor:v9 resourceProvider:v8];
        v14 = [v13 recipeForDecoration:v12];

        v15 = [v12 identifierKind];
        if (v15 == 1)
        {
          v24 = MEMORY[0x1E6963620];
          v25 = [v12 identifier];
          v19 = [v24 bundleRecordWithBundleIdentifier:v25 allowPlaceholder:1 error:0];

          v18 = [[ISRecordResourceProvider alloc] initWithRecord:v19 options:0];
          [(ISResourceProvider *)v18 resolveIconResource];
          [(ISRecordResourceProvider *)v18 configureProviderFromDescriptor:v9];
          if (!v14)
          {
            goto LABEL_32;
          }

          v26 = [(ISRecordResourceProvider *)v18 iconResource];

          if (!v26)
          {
            goto LABEL_32;
          }

          v27 = [(ISRecordResourceProvider *)v18 iconResource];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v29 = [(ISRecordResourceProvider *)v18 iconResource];
            [v29 updateDescriptorWithImageDescriptor:v9];
          }

          v30 = [_ISCompositorElement alloc];
          v61 = @"kISPrimaryResourceKey";
          v31 = [(ISRecordResourceProvider *)v18 iconResource];
          v62 = v31;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v62;
          v34 = &v61;
          goto LABEL_31;
        }

        if (v15 != 3)
        {
          if (v15 != 2)
          {
            goto LABEL_34;
          }

          v16 = [v8 decorationResources];
          v17 = [v12 uuid];
          v18 = [v16 objectForKeyedSubscript:v17];

          if (v18)
          {
            v19 = [[ISResourceProvider alloc] initWithResource:v18 templateResource:0];
          }

          else
          {
            v35 = MEMORY[0x1E69636B0];
            v36 = [v12 identifier];
            v37 = [v35 typeRecordWithIdentifier:v36];

            v38 = [MEMORY[0x1E6963620] coreTypesBundleRecord];
            v39 = [v38 bundleIdentifier];

            v40 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:@"com.apple.icon-decoration.system"];
            if ([v37 conformsToTypeRecord:v40] && (objc_msgSend(v37, "declaringBundleRecord"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "bundleIdentifier"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", v39), v42, v41, !v43))
            {
              v19 = 0;
            }

            else
            {
              v44 = [v37 identifier];
              v19 = [(ISResourceProvider *)ISRecordResourceProvider resourceProviderWithTypeIdentifier:v44 options:0];
            }

            v8 = v50;
            v10 = v51;
          }

          [(ISResourceProvider *)v19 resolveIconResource];
          [(ISResourceProvider *)v19 configureProviderFromDescriptor:v9];
          if (!v14)
          {
            goto LABEL_32;
          }

          v45 = [(ISResourceProvider *)v19 iconResource];

          if (!v45)
          {
            goto LABEL_32;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISRecordResourceProvider *)v18 updateDescriptorWithImageDescriptor:v9];
          }

          v30 = [_ISCompositorElement alloc];
          v63 = @"kISPrimaryResourceKey";
          v31 = [(ISResourceProvider *)v19 iconResource];
          v64 = v31;
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

        v20 = [v12 compositorResource];
        v19 = v20;
        if (v14)
        {
          v21 = v20 == 0;
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