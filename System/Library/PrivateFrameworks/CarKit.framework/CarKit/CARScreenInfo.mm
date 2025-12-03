@interface CARScreenInfo
- (BOOL)_currentProcessHasEntitlement;
- (BOOL)allowsSmartZoom;
- (CARScreenInfo)initWithPropertySupplier:(id)supplier screenType:(unint64_t)type additionalInsets:(NSEdgeInsets)insets displayDictionary:(id)dictionary physicalDisplay:(id)display carCapabilities:(id)capabilities;
- (CGPoint)originInDisplay;
- (CGSize)canvasPixelSizeForDisplayScaleMode:(int64_t)mode;
- (CGSize)displayPixelSize;
- (CGSize)physicalSize;
- (CGSize)pixelSize;
- (CGSize)squaredPixelSize;
- (id)_descriptionForInteractionModel:(unint64_t)model;
- (id)description;
- (id)descriptionForAvailableInteractionModels;
- (id)descriptionForPrimaryInteractionModel;
- (id)displayScaleModesForCanvasPixelSize:(CGSize)size;
- (int64_t)defaultDisplayMode;
- (unint64_t)availableInteractionModels;
- (unint64_t)primaryInteractionModel;
- (void)limitedUIChanged:(BOOL)changed;
- (void)nightModeChanged:(BOOL)changed;
- (void)setPhysicalDisplay:(id)display;
@end

@implementation CARScreenInfo

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)availableInteractionModels
{
  if ([(CARScreenInfo *)self _currentProcessHasEntitlement])
  {
    return 1;
  }

  return [(CARScreenInfo *)self systemAvailableInteractionModels];
}

- (BOOL)_currentProcessHasEntitlement
{
  if (_currentProcessHasEntitlement_onceToken != -1)
  {
    [CARScreenInfo _currentProcessHasEntitlement];
  }

  return _currentProcessHasEntitlement___appHasEntitlement;
}

- (unint64_t)primaryInteractionModel
{
  if ([(CARScreenInfo *)self _currentProcessHasEntitlement])
  {
    return 1;
  }

  return [(CARScreenInfo *)self systemPrimaryInteractionModel];
}

- (CGPoint)originInDisplay
{
  physicalDisplay = [(CARScreenInfo *)self physicalDisplay];
  identifier = [(CARScreenInfo *)self identifier];
  [physicalDisplay originForScreenInfoIdentifier:identifier];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGSize)displayPixelSize
{
  physicalDisplay = [(CARScreenInfo *)self physicalDisplay];
  [physicalDisplay pixelSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)description
{
  v25 = [[CRDisplayScaleInfo alloc] initWithScreenInfo:self];
  v23 = [(CRDisplayScaleInfo *)v25 description];
  v24 = MEMORY[0x1E696AEC0];
  v26.receiver = self;
  v26.super_class = CARScreenInfo;
  v22 = [(CARScreenInfo *)&v26 description];
  identifier = [(CARScreenInfo *)self identifier];
  descriptionForAvailableInteractionModels = [(CARScreenInfo *)self descriptionForAvailableInteractionModels];
  descriptionForPrimaryInteractionModel = [(CARScreenInfo *)self descriptionForPrimaryInteractionModel];
  v4 = @"NO";
  if ([(CARScreenInfo *)self isLimitedUI])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v19 = v5;
  if ([(CARScreenInfo *)self isNightMode])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(CARScreenInfo *)self supportsHighFidelityTouch])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  maxFramesPerSecond = [(CARScreenInfo *)self maxFramesPerSecond];
  [(CARScreenInfo *)self physicalSize];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{w: %f, h: %f}", v9, v10];
  [(CARScreenInfo *)self pixelSize];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{w: %f, h: %f}", v12, v13];
  if ([(CARScreenInfo *)self wantsCornerMasks])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(CARScreenInfo *)self initialFocusOwner])
  {
    v4 = @"YES";
  }

  viewAreas = [(CARScreenInfo *)self viewAreas];
  v17 = [v24 stringWithFormat:@"%@, identifier: %@, availableInteractionModels: %@, primaryInteractionModel: %@, isLimited: %@, isNightMode: %@, supportsHiFi: %@, maxFPS: %lu, physicalSize: %@, pixelSize: %@, wantsCornerMasks: %@, initialFocusOwner: %@, viewAreas: %@, displayScaleInfo: %@", v22, identifier, descriptionForAvailableInteractionModels, descriptionForPrimaryInteractionModel, v19, v6, v7, maxFramesPerSecond, v11, v14, v15, v4, viewAreas, v23];

  return v17;
}

- (id)descriptionForAvailableInteractionModels
{
  systemAvailableInteractionModels = [(CARScreenInfo *)self systemAvailableInteractionModels];

  return [(CARScreenInfo *)self _descriptionForInteractionModel:systemAvailableInteractionModels];
}

- (id)descriptionForPrimaryInteractionModel
{
  systemPrimaryInteractionModel = [(CARScreenInfo *)self systemPrimaryInteractionModel];

  return [(CARScreenInfo *)self _descriptionForInteractionModel:systemPrimaryInteractionModel];
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __46__CARScreenInfo__currentProcessHasEntitlement__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v0 containingBundle];

    v0 = v1;
  }

  v2 = MEMORY[0x1E695DFD8];
  v3 = CARInteractionModelEntitlements();
  v4 = [v2 setWithArray:v3];
  v5 = [v0 entitlementValuesForKeys:v4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = CARInteractionModelEntitlements();
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 BOOLForKey:{*(*(&v11 + 1) + 8 * v10), v11}])
        {
          _currentProcessHasEntitlement___appHasEntitlement = 1;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (CARScreenInfo)initWithPropertySupplier:(id)supplier screenType:(unint64_t)type additionalInsets:(NSEdgeInsets)insets displayDictionary:(id)dictionary physicalDisplay:(id)display carCapabilities:(id)capabilities
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  supplierCopy = supplier;
  dictionaryCopy = dictionary;
  displayCopy = display;
  capabilitiesCopy = capabilities;
  v131.receiver = self;
  v131.super_class = CARScreenInfo;
  v21 = [(CARScreenInfo *)&v131 init];
  v22 = v21;
  if (!supplierCopy || !v21)
  {
    goto LABEL_97;
  }

  v119 = capabilitiesCopy;
  v23 = [dictionaryCopy copy];
  screenInfoResponse = v22->_screenInfoResponse;
  v22->_screenInfoResponse = v23;

  objc_storeStrong(&v22->_physicalDisplay, display);
  v25 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962400]);
  identifier = v22->_identifier;
  v22->_identifier = v25;

  v22->_screenType = type;
  v22->_systemAvailableInteractionModels = 0;
  v22->_supportsLayerTracking = [(CARDisplayInfo *)v22->_physicalDisplay supportsDDPContent];
  v27 = (supplierCopy)[2](supplierCopy, @"cornerMasks");
  objc_opt_class();
  v28 = v27;
  v29 = 0;
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  v22->_wantsCornerMasks = [v29 BOOLValue];
  v30 = [dictionaryCopy objectForKey:@"accessoryGiveFocus"];
  objc_opt_class();
  v31 = v30;
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v118 = v32;
  v22->_initialFocusOwner = [v32 BOOLValue];
  v33 = [dictionaryCopy objectForKey:@"features"];
  objc_opt_class();
  v34 = v33;
  if (objc_opt_isKindOfClass())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v115 = v35;
  if (v35)
  {
    unsignedIntegerValue = [v35 unsignedIntegerValue];
    if ((unsignedIntegerValue & 0xFFFFFFFFFFFFFFC1) != 0)
    {
      v37 = CarGeneralLogging();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CARScreenInfo initWithPropertySupplier:? screenType:? additionalInsets:? displayDictionary:? physicalDisplay:? carCapabilities:?];
      }
    }

    v38 = (unsignedIntegerValue >> 1) & 2;
    if ((unsignedIntegerValue & 8) != 0)
    {
      v38 = 2;
    }

    v39 = ((2 * unsignedIntegerValue) | (unsignedIntegerValue >> 3)) & 4 | (unsignedIntegerValue >> 1) & 8 | v38;
    if (v39 <= 1)
    {
      v39 = 1;
    }

    v22->_systemAvailableInteractionModels = v39;
    v22->_supportsHighFidelityTouch = (unsignedIntegerValue & 8) != 0;
  }

  else
  {
    if (!type)
    {
      v40 = CarGeneralLogging();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [(CARScreenInfo *)&v22->_identifier initWithPropertySupplier:v40 screenType:v41 additionalInsets:v42 displayDictionary:v43 physicalDisplay:v44 carCapabilities:v45, v46];
      }
    }

    v22->_systemAvailableInteractionModels = 1;
    v22->_supportsHighFidelityTouch = 0;
  }

  v47 = [dictionaryCopy objectForKey:@"primaryInputDevice"];
  objc_opt_class();
  v48 = v47;
  if (objc_opt_isKindOfClass())
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    unsignedIntegerValue2 = [v49 unsignedIntegerValue];
    v51 = unsignedIntegerValue2;
    if (unsignedIntegerValue2 <= 1)
    {
      if (!unsignedIntegerValue2)
      {
        goto LABEL_40;
      }

      if (unsignedIntegerValue2 == 1)
      {
LABEL_44:
        v54 = 2;
        goto LABEL_46;
      }
    }

    else
    {
      if (unsignedIntegerValue2 == 4 || unsignedIntegerValue2 == 3)
      {
        goto LABEL_45;
      }

      if (unsignedIntegerValue2 == 2)
      {
LABEL_43:
        v54 = 8;
LABEL_46:
        v22->_systemPrimaryInteractionModel = v54;
        goto LABEL_47;
      }
    }

    v52 = CarGeneralLogging();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [CARScreenInfo initWithPropertySupplier:v51 screenType:? additionalInsets:? displayDictionary:? physicalDisplay:? carCapabilities:?];
    }
  }

LABEL_40:
  v22->_systemPrimaryInteractionModel = 1;
  systemAvailableInteractionModels = v22->_systemAvailableInteractionModels;
  if ((systemAvailableInteractionModels & 2) != 0)
  {
    goto LABEL_44;
  }

  if ((systemAvailableInteractionModels & 4) != 0)
  {
LABEL_45:
    v54 = 4;
    goto LABEL_46;
  }

  if ((systemAvailableInteractionModels & 8) != 0)
  {
    goto LABEL_43;
  }

LABEL_47:
  v55 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962430]);
  objc_opt_class();
  v56 = v55;
  if (objc_opt_isKindOfClass())
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  v113 = v57;
  v22->_maxFramesPerSecond = [v57 unsignedIntegerValue];
  v58 = (supplierCopy[2])(supplierCopy, *MEMORY[0x1E6962438]);
  CRSizeFromDictionary(v58, &v22->_physicalSize);
  v59 = (supplierCopy[2])(supplierCopy, *MEMORY[0x1E6962440]);
  CRSizeFromDictionary(v59, &v22->_pixelSize);
  v60 = (supplierCopy[2])(supplierCopy, *MEMORY[0x1E6962450]);
  CRSizeFromDictionary(v60, &v22->_squaredPixelSize);
  v61 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962418]);
  objc_opt_class();
  v62 = v61;
  if (objc_opt_isKindOfClass())
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  v112 = v63;
  v22->_limitedUI = [v63 BOOLValue];
  v64 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962420]);
  objc_opt_class();
  v65 = v64;
  v114 = v49;
  if (objc_opt_isKindOfClass())
  {
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  v111 = v66;
  v22->_nightMode = [v66 BOOLValue];
  v67 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962428]);
  objc_opt_class();
  v68 = v67;
  if (objc_opt_isKindOfClass())
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v110 = v69;
  v22->_limitedUIElements = [CARSessionConfiguration _limitableUserInterfacesFromLimitedUIValues:v69];
  v70 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962458]);
  objc_opt_class();
  v71 = v70;
  v116 = v29;
  v117 = displayCopy;
  if (objc_opt_isKindOfClass())
  {
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __120__CARScreenInfo_initWithPropertySupplier_screenType_additionalInsets_displayDictionary_physicalDisplay_carCapabilities___block_invoke;
  v129[3] = &unk_1E82FCA80;
  v120 = v73;
  v130 = v120;
  v109 = v72;
  [v72 enumerateObjectsUsingBlock:v129];
  v75 = [dictionaryCopy objectForKey:@"viewAreas"];
  objc_opt_class();
  v76 = v75;
  if (objc_opt_isKindOfClass())
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  capabilitiesCopy = v119;

  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __120__CARScreenInfo_initWithPropertySupplier_screenType_additionalInsets_displayDictionary_physicalDisplay_carCapabilities___block_invoke_2;
  v121[3] = &unk_1E82FCAD0;
  v125 = top;
  v126 = left;
  v127 = bottom;
  v128 = right;
  v108 = v77;
  v122 = v108;
  v78 = v22;
  v123 = v78;
  v107 = v74;
  v124 = v107;
  [v120 enumerateObjectsUsingBlock:v121];
  objc_storeStrong(&v78->_viewAreas, v74);
  if (type == 1)
  {
    v79 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962408]);
    objc_opt_class();
    v80 = v79;
    if (objc_opt_isKindOfClass())
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    initialURL = v78->_initialURL;
    v78->_initialURL = v81;
  }

  v83 = [dictionaryCopy objectForKey:@"uiAppearanceMode"];
  objc_opt_class();
  v84 = v83;
  if (objc_opt_isKindOfClass())
  {
    v85 = v84;
  }

  else
  {
    v85 = 0;
  }

  v105 = v85;
  v78->_supportsAppearanceMode = v85 != 0;
  v86 = [dictionaryCopy objectForKey:@"mapAppearanceMode"];
  objc_opt_class();
  v87 = v86;
  if (objc_opt_isKindOfClass())
  {
    v88 = v87;
  }

  else
  {
    v88 = 0;
  }

  typeCopy = type;
  if (type)
  {
    v90 = v88 == 0;
  }

  else
  {
    v90 = 1;
  }

  v91 = !v90;
  v78->_supportsMapAppearanceMode = v91;
  v92 = [dictionaryCopy objectForKey:{@"nightMode", v105}];
  objc_opt_class();
  v93 = v92;
  if (objc_opt_isKindOfClass())
  {
    v94 = v93;
  }

  else
  {
    v94 = 0;
  }

  v95 = v118;

  if (typeCopy)
  {
    v96 = v94 == 0;
  }

  else
  {
    v96 = 0;
  }

  v97 = !v96;
  v78->_supportsPerDisplayNightMode = v97;
  zoomFactor = [v119 zoomFactor];
  zoomFactor = v78->_zoomFactor;
  v78->_zoomFactor = zoomFactor;

  if (!v78->_zoomFactor)
  {
    v100 = [dictionaryCopy objectForKeyedSubscript:@"zoomFactor"];
    objc_opt_class();
    v101 = v100;
    if (objc_opt_isKindOfClass())
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    v103 = v78->_zoomFactor;
    v78->_zoomFactor = v102;

    v95 = v118;
    capabilitiesCopy = v119;
  }

  displayCopy = v117;
LABEL_97:

  return v22;
}

void __120__CARScreenInfo_initWithPropertySupplier_screenType_additionalInsets_displayDictionary_physicalDisplay_carCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    [*(a1 + 32) addObject:v4];
  }

LABEL_5:
}

void __120__CARScreenInfo_initWithPropertySupplier_screenType_additionalInsets_displayDictionary_physicalDisplay_carCapabilities___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [CARScreenViewArea alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __120__CARScreenInfo_initWithPropertySupplier_screenType_additionalInsets_displayDictionary_physicalDisplay_carCapabilities___block_invoke_3;
  v11[3] = &unk_1E82FCAA8;
  v7 = v5;
  v12 = v7;
  v8 = [*(a1 + 32) count];
  if (v8 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  v10 = [(CARScreenViewArea *)v6 initWithPropertySupplier:v11 additionalInsets:v9 viewAreaDictionary:*(*(a1 + 40) + 11) wantsCornerMasks:*(a1 + 56) displayInfoProvider:*(a1 + 64), *(a1 + 72), *(a1 + 80)];
  if (v8 > a3)
  {
  }

  [*(a1 + 48) addObject:v10];
}

- (id)_descriptionForInteractionModel:(unint64_t)model
{
  modelCopy = model;
  array = [MEMORY[0x1E695DEC8] array];
  v5 = array;
  if ((modelCopy & 2) != 0)
  {
    v6 = [array arrayByAddingObject:@"Touch"];

    v5 = v6;
    if ((modelCopy & 4) == 0)
    {
LABEL_3:
      if ((modelCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((modelCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = [v5 arrayByAddingObject:@"Knob"];

  v5 = v7;
  if ((modelCopy & 8) == 0)
  {
LABEL_4:
    if (modelCopy)
    {
      goto LABEL_10;
    }

LABEL_9:
    if ([v5 count])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_8:
  v8 = [v5 arrayByAddingObject:@"Touchpad"];

  v5 = v8;
  if ((modelCopy & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = [v5 arrayByAddingObject:@"Unknown"];

  v5 = v9;
LABEL_11:
  v10 = [v5 componentsJoinedByString:{@", "}];

  return v10;
}

- (void)nightModeChanged:(BOOL)changed
{
  changedCopy = changed;
  v12 = *MEMORY[0x1E69E9840];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [(CARScreenInfo *)self identifier];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:changedCopy];
    v8 = 138412546;
    v9 = identifier;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Updating night mode on screen %@ to %{public}@", &v8, 0x16u);
  }

  self->_nightMode = changedCopy;
}

- (void)limitedUIChanged:(BOOL)changed
{
  changedCopy = changed;
  v12 = *MEMORY[0x1E69E9840];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [(CARScreenInfo *)self identifier];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:changedCopy];
    v8 = 138412546;
    v9 = identifier;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Updating limited UI on screen %@ to %{public}@", &v8, 0x16u);
  }

  self->_limitedUI = changedCopy;
}

- (void)setPhysicalDisplay:(id)display
{
  objc_storeStrong(&self->_physicalDisplay, display);
  viewAreas = [(CARScreenInfo *)self viewAreas];
  [viewAreas enumerateObjectsUsingBlock:&__block_literal_global_300];
}

- (CGSize)squaredPixelSize
{
  width = self->_squaredPixelSize.width;
  height = self->_squaredPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasPixelSizeForDisplayScaleMode:(int64_t)mode
{
  v4 = [[CRDisplayScaleInfo alloc] initWithScreenInfo:self];
  [(CRDisplayScaleInfo *)v4 canvasPixelSizeForDisplayScaleMode:mode];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)displayScaleModesForCanvasPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [[CRDisplayScaleInfo alloc] initWithScreenInfo:self];
  height = [(CRDisplayScaleInfo *)v5 displayScaleModesForCanvasPixelSize:width, height];

  return height;
}

- (BOOL)allowsSmartZoom
{
  v2 = [[CRDisplayScaleInfo alloc] initWithScreenInfo:self];
  allowsSmartZoom = [(CRDisplayScaleInfo *)v2 allowsSmartZoom];

  return allowsSmartZoom;
}

- (int64_t)defaultDisplayMode
{
  v2 = [[CRDisplayScaleInfo alloc] initWithScreenInfo:self];
  defaultDisplayMode = [(CRDisplayScaleInfo *)v2 defaultDisplayMode];

  return defaultDisplayMode;
}

- (void)initWithPropertySupplier:(uint64_t)a1 screenType:additionalInsets:displayDictionary:physicalDisplay:carCapabilities:.cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_1C81FC000, v2, v3, "Unknown display input methods: %@", v4, v5, v6, v7, v8);
}

- (void)initWithPropertySupplier:(uint64_t)a1 screenType:additionalInsets:displayDictionary:physicalDisplay:carCapabilities:.cold.3(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_1C81FC000, v2, v3, "Unknown primary input device: %@", v4, v5, v6, v7, v8);
}

@end