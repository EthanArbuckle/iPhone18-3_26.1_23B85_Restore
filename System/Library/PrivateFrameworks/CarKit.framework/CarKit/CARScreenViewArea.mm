@interface CARScreenViewArea
+ (NSEdgeInsets)insetsForOEMUIWithDisplaySize:(CGSize)size safeFrame:(CGRect)frame viewAreaFrame:(CGRect)areaFrame;
+ (void)insetsForOEMUIWithDisplaySize:(double)size originInDisplay:(double)display safeFrame:(CGFloat)frame viewAreaFrame:(CGFloat)areaFrame;
- (BOOL)_wantsInternalOverrideInsets;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToViewArea:(id)area;
- (CARDisplayInfoProviding)displayInfoProvider;
- (CARScreenViewArea)initWithPropertySupplier:(id)supplier additionalInsets:(NSEdgeInsets)insets viewAreaDictionary:(id)dictionary wantsCornerMasks:(BOOL)masks displayInfoProvider:(id)provider;
- (CGRect)safeFrame;
- (CGRect)unadjustedSafeFrame;
- (CGRect)visibleFrame;
- (NSEdgeInsets)additionalInsets;
- (NSEdgeInsets)oemUIInsets;
- (id)description;
- (void)_updateEffectiveSafeFrame;
@end

@implementation CARScreenViewArea

- (CARDisplayInfoProviding)displayInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_displayInfoProvider);

  return WeakRetained;
}

- (void)_updateEffectiveSafeFrame
{
  v68 = *MEMORY[0x1E69E9840];
  size = self->_unadjustedSafeFrame.size;
  self->_safeFrame.origin = self->_unadjustedSafeFrame.origin;
  self->_safeFrame.size = size;
  if (self->_shouldApplyDisplayInsets)
  {
    displayInfoProvider = [(CARScreenViewArea *)self displayInfoProvider];
    [displayInfoProvider displayPixelSize];
    v6 = v5;
    v8 = v7;

    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v69.width = v6;
      v69.height = v8;
      v10 = NSStringFromSize(v69);
      v11 = NSStringFromRect(self->_unadjustedSafeFrame);
      v12 = NSStringFromRect(self->_visibleFrame);
      *buf = 138412802;
      v63 = v10;
      v64 = 2112;
      v65 = v11;
      v66 = 2112;
      v67 = v12;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Display (%@) supports view areas and does not want corner masks, applying insets to edges that need to be inset. Safe frame: (%@), viewArea frame: (%@)", buf, 0x20u);
    }

    [(CARScreenViewArea *)self oemUIInsets];
    top = v70.top;
    left = v70.left;
    bottom = v70.bottom;
    right = v70.right;
    v17 = *MEMORY[0x1E696A2A0];
    v18 = *(MEMORY[0x1E696A2A0] + 8);
    v19 = *(MEMORY[0x1E696A2A0] + 16);
    v20 = *(MEMORY[0x1E696A2A0] + 24);
    v74.top = *MEMORY[0x1E696A2A0];
    v74.left = v18;
    v74.bottom = v19;
    v74.right = v20;
    if (NSEdgeInsetsEqual(v70, v74))
    {
      v21 = CarGeneralLogging();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromRect(self->_safeFrame);
        v23 = NSStringFromRect(self->_visibleFrame);
        *buf = 138412546;
        v63 = v22;
        v64 = 2112;
        v65 = v23;
        _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "No insets will be applied: Safe frame: (%@), viewArea frame: (%@)", buf, 0x16u);
      }
    }

    else
    {
      v57 = v17;
      v58 = v20;
      v59 = v19;
      v24 = left + self->_safeFrame.origin.x;
      aRect = top + self->_safeFrame.origin.y;
      v25 = self->_safeFrame.size.width - (left + right);
      v26 = self->_safeFrame.size.height - (top + bottom);
      v27 = CarGeneralLogging();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v25 < 740.0 || v26 < 456.0)
      {
        if (v28)
        {
          v72.origin.x = v24;
          v72.size.width = v25;
          v72.origin.y = aRect;
          v72.size.height = v26;
          v32 = NSStringFromRect(v72);
          *buf = 138412290;
          v63 = v32;
          _os_log_impl(&dword_1C81FC000, v27, OS_LOG_TYPE_DEFAULT, "Visible frame inset with OEM insets is too small (%@), not applying insets", buf, 0xCu);
        }
      }

      else
      {
        if (v28)
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Left: %.1f, right: %.1f, top: %.1f, bottom: %.1f", *&left, *&right, *&top, *&bottom];
          v30 = NSStringFromRect(self->_safeFrame);
          v71.origin.x = v24;
          v71.size.width = v25;
          v71.origin.y = aRect;
          v71.size.height = v26;
          v31 = NSStringFromRect(v71);
          *buf = 138412802;
          v63 = v29;
          v64 = 2112;
          v65 = v30;
          v66 = 2112;
          v67 = v31;
          _os_log_impl(&dword_1C81FC000, v27, OS_LOG_TYPE_DEFAULT, "Applying OEM UI insets: %@ before frame: %@, after frame: %@", buf, 0x20u);
        }

        self->_safeFrame.origin.x = v24;
        self->_safeFrame.origin.y = aRect;
        self->_safeFrame.size.width = v25;
        self->_safeFrame.size.height = v26;
      }

      v20 = v58;
      v19 = v59;
      v17 = v57;
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A2A0];
    v18 = *(MEMORY[0x1E696A2A0] + 8);
    v19 = *(MEMORY[0x1E696A2A0] + 16);
    v20 = *(MEMORY[0x1E696A2A0] + 24);
  }

  v75.top = v17;
  v75.left = v18;
  v75.bottom = v19;
  v75.right = v20;
  if (!NSEdgeInsetsEqual(self->_additionalInsets, v75))
  {
    v33 = CarGeneralLogging();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Left: %.1f, right: %.1f, top: %.1f, bottom: %.1f", *&self->_additionalInsets.left, *&self->_additionalInsets.right, *&self->_additionalInsets.top, *&self->_additionalInsets.bottom];
      *buf = 138412290;
      v63 = v34;
      _os_log_impl(&dword_1C81FC000, v33, OS_LOG_TYPE_DEFAULT, "Additional insets provided: %@", buf, 0xCu);
    }

    v35 = *&self->_additionalInsets.top;
    v36 = vaddq_f64(v35, *&self->_additionalInsets.bottom);
    v37 = vsubq_f64(self->_safeFrame.size, vextq_s8(v36, v36, 8uLL));
    if (v37.f64[0] >= 740.0)
    {
      v38 = v37.f64[1];
      if (v37.f64[1] >= 456.0)
      {
        aRecta = v37;
        v39 = self->_safeFrame.origin.x + v35.f64[1];
        v40 = self->_safeFrame.origin.y + v35.f64[0];
        v41 = CarGeneralLogging();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = NSStringFromRect(self->_safeFrame);
          v73.origin.x = v39;
          v73.origin.y = v40;
          v73.size.width = aRecta.f64[0];
          v73.size.height = v38;
          v43 = NSStringFromRect(v73);
          *buf = 138412546;
          v63 = v42;
          v64 = 2112;
          v65 = v43;
          _os_log_impl(&dword_1C81FC000, v41, OS_LOG_TYPE_DEFAULT, "Applying additional insets: before frame: %@, after frame: %@", buf, 0x16u);
        }

        self->_safeFrame.origin.x = v39;
        self->_safeFrame.origin.y = v40;
        self->_safeFrame.size = aRecta;
      }
    }
  }

  if ([(CARScreenViewArea *)self _wantsInternalOverrideInsets])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v45 = [standardUserDefaults valueForKey:@"CARCapabilitesInsets"];

    if (v45)
    {
      v46 = [v45 objectForKeyedSubscript:@"Top"];
      [v46 floatValue];
      v17 = v47;
      v48 = [v45 objectForKeyedSubscript:@"Left"];
      [v48 floatValue];
      v18 = v49;
      v50 = [v45 objectForKeyedSubscript:@"Bottom"];
      [v50 floatValue];
      v19 = v51;
      v52 = [v45 objectForKeyedSubscript:@"Right"];
      [v52 floatValue];
      v20 = v53;
    }

    v54 = v17 + self->_unadjustedSafeFrame.origin.y;
    v55 = self->_unadjustedSafeFrame.size.width - (v18 + v20);
    v56 = self->_unadjustedSafeFrame.size.height - (v17 + v19);
    self->_safeFrame.origin.x = v18 + self->_unadjustedSafeFrame.origin.x;
    self->_safeFrame.origin.y = v54;
    self->_safeFrame.size.width = v55;
    self->_safeFrame.size.height = v56;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v21.receiver = self;
  v21.super_class = CARScreenViewArea;
  v4 = [(CARScreenViewArea *)&v21 description];
  [(CARScreenViewArea *)self visibleFrame];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x: %f, y: %f, w: %f, h: %f}", v5, v6, v7, v8];
  [(CARScreenViewArea *)self safeFrame];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x: %f, y: %f, w: %f, h: %f}", v10, v11, v12, v13];
  displaysTransitionControl = [(CARScreenViewArea *)self displaysTransitionControl];
  statusBarEdge = [(CARScreenViewArea *)self statusBarEdge];
  supportsFocusTransfer = [(CARScreenViewArea *)self supportsFocusTransfer];
  v18 = "no";
  if (supportsFocusTransfer)
  {
    v18 = "yes";
  }

  v19 = [v3 stringWithFormat:@"%@ {visibleFrame: %@ safeFrame: %@ displaysTransitionControl: %d statusBarEdge: %lu supportsFocusTransfer: %s}", v4, v9, v14, displaysTransitionControl, statusBarEdge, v18];

  return v19;
}

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)safeFrame
{
  x = self->_safeFrame.origin.x;
  y = self->_safeFrame.origin.y;
  width = self->_safeFrame.size.width;
  height = self->_safeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CARScreenViewArea)initWithPropertySupplier:(id)supplier additionalInsets:(NSEdgeInsets)insets viewAreaDictionary:(id)dictionary wantsCornerMasks:(BOOL)masks displayInfoProvider:(id)provider
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  supplierCopy = supplier;
  dictionaryCopy = dictionary;
  providerCopy = provider;
  v48.receiver = self;
  v48.super_class = CARScreenViewArea;
  v18 = [(CARScreenViewArea *)&v48 init];
  v19 = v18;
  if (supplierCopy && v18)
  {
    objc_storeWeak(&v18->_displayInfoProvider, providerCopy);
    v20 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962478]);
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v20, &rect))
    {
      size = rect.size;
      v19->_visibleFrame.origin = rect.origin;
      v19->_visibleFrame.size = size;
    }

    else
    {
      v19->_visibleFrame.origin = 0u;
      v19->_visibleFrame.size = 0u;
    }

    v22 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962468]);
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v22, &rect))
    {
      v23 = rect.size;
      v19->_safeFrame.origin = rect.origin;
      v19->_safeFrame.size = v23;
    }

    else
    {
      v19->_safeFrame.origin = 0u;
      v19->_safeFrame.size = 0u;
    }

    v24 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962488]);
    if (v24)
    {
      objc_opt_class();
      v25 = v24;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v25 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }

    v19->_displaysTransitionControl = bOOLValue;
    v27 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962470]);
    v28 = [dictionaryCopy objectForKey:@"viewAreaSupportsFocusTransfer"];
    if (v28)
    {
      objc_opt_class();
      v29 = v28;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue2 = [v29 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }
    }

    else
    {
      bOOLValue2 = 0;
    }

    v19->_supportsFocusTransfer = bOOLValue2;
    v31 = [dictionaryCopy objectForKey:@"safeArea"];
    v32 = [v31 objectForKey:@"drawUIOutsideSafeArea"];
    if (v32)
    {
      objc_opt_class();
      v33 = v32;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue3 = [v33 BOOLValue];
      }

      else
      {
        bOOLValue3 = 0;
      }
    }

    else
    {
      bOOLValue3 = 0;
    }

    v19->_supportsUIOutsideSafeArea = bOOLValue3;
    v35 = v19->_safeFrame.size;
    v19->_unadjustedSafeFrame.origin = v19->_safeFrame.origin;
    v19->_unadjustedSafeFrame.size = v35;
    v19->_additionalInsets.top = top;
    v19->_additionalInsets.left = left;
    v19->_additionalInsets.bottom = bottom;
    v19->_additionalInsets.right = right;
    v36 = !masks;
    if (!dictionaryCopy)
    {
      v36 = 0;
    }

    v19->_shouldApplyDisplayInsets = v36;
    [(CARScreenViewArea *)v19 _updateEffectiveSafeFrame];
    unsignedIntegerValue = [v27 unsignedIntegerValue];
    if (v27 && unsignedIntegerValue <= 2)
    {
      if (unsignedIntegerValue == 2)
      {
        v38 = 2;
        goto LABEL_39;
      }

      if (unsignedIntegerValue == 1)
      {
        v38 = 1;
LABEL_39:
        v19->_statusBarEdge = v38;
        goto LABEL_40;
      }
    }

    else
    {
      v39 = CarGeneralLogging();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(CARScreenViewArea *)v39 initWithPropertySupplier:v40 additionalInsets:v41 viewAreaDictionary:v42 wantsCornerMasks:v43 displayInfoProvider:v44, v45, v46];
      }
    }

    v19->_statusBarEdge = 0;
LABEL_40:
  }

  return v19;
}

- (NSEdgeInsets)oemUIInsets
{
  displayInfoProvider = [(CARScreenViewArea *)self displayInfoProvider];
  [displayInfoProvider originInDisplay];
  v5 = v4;
  v7 = v6;

  displayInfoProvider2 = [(CARScreenViewArea *)self displayInfoProvider];
  [displayInfoProvider2 displayPixelSize];
  v10 = v9;
  v12 = v11;

  [objc_opt_class() insetsForOEMUIWithDisplaySize:v10 originInDisplay:v12 safeFrame:v5 viewAreaFrame:{v7, self->_unadjustedSafeFrame.origin.x, self->_unadjustedSafeFrame.origin.y, self->_unadjustedSafeFrame.size.width, self->_unadjustedSafeFrame.size.height, *&self->_visibleFrame.origin.x, *&self->_visibleFrame.origin.y, *&self->_visibleFrame.size.width, *&self->_visibleFrame.size.height}];
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (BOOL)_wantsInternalOverrideInsets
{
  if (!CRIsInternalInstall())
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"CARCapabilitesInsets"];
  v4 = v3 != 0;

  return v4;
}

+ (NSEdgeInsets)insetsForOEMUIWithDisplaySize:(CGSize)size safeFrame:(CGRect)frame viewAreaFrame:(CGRect)areaFrame
{
  [self insetsForOEMUIWithDisplaySize:size.width originInDisplay:size.height safeFrame:*MEMORY[0x1E695EFF8] viewAreaFrame:{*(MEMORY[0x1E695EFF8] + 8), frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

+ (void)insetsForOEMUIWithDisplaySize:(double)size originInDisplay:(double)display safeFrame:(CGFloat)frame viewAreaFrame:(CGFloat)areaFrame
{
  v52 = *MEMORY[0x1E69E9840];
  v36 = size + a9;
  aRect = display + a10;
  v22 = size + frame;
  v23 = display + areaFrame;
  v24 = CarGeneralLogging();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = BSNSStringFromCGSize();
    v26 = BSNSStringFromCGPoint();
    v53.origin.x = a9;
    v53.origin.y = a10;
    v53.size.width = a11;
    v53.size.height = a12;
    v27 = NSStringFromRect(v53);
    v54.origin.x = frame;
    v54.origin.y = areaFrame;
    v54.size.width = a7;
    v54.size.height = a8;
    v28 = NSStringFromRect(v54);
    v55.origin.x = v36;
    v55.origin.y = aRect;
    v55.size.width = a11;
    v55.size.height = a12;
    v29 = NSStringFromRect(v55);
    v56.origin.x = v22;
    v56.origin.y = v23;
    v56.size.width = a7;
    v56.size.height = a8;
    v30 = NSStringFromRect(v56);
    *buf = 138413570;
    v41 = v25;
    v42 = 2112;
    v43 = v26;
    v44 = 2112;
    v45 = v27;
    v46 = 2112;
    v47 = v28;
    v48 = 2112;
    v49 = v29;
    v50 = 2112;
    v51 = v30;
    _os_log_impl(&dword_1C81FC000, v24, OS_LOG_TYPE_DEFAULT, "Display pixel size: %@, origin in display: %@, incoming view area frame: %@, safe frame: %@, adjusted view area frame: %@, safe frame: %@", buf, 0x3Eu);
  }

  BSFloatEqualToFloat();
  BSFloatEqualToFloat();
  BSFloatEqualToFloat();
  BSFloatEqualToFloat();
  v31 = CarGeneralLogging();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = NSStringFromBOOL();
    v33 = NSStringFromBOOL();
    v34 = NSStringFromBOOL();
    v35 = NSStringFromBOOL();
    *buf = 138413058;
    v41 = v32;
    v42 = 2112;
    v43 = v33;
    v44 = 2112;
    v45 = v34;
    v46 = 2112;
    v47 = v35;
    _os_log_impl(&dword_1C81FC000, v31, OS_LOG_TYPE_DEFAULT, "Display supports view area, should inset: left: %@, right: %@, top: %@, bottom: %@", buf, 0x2Au);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CARScreenViewArea *)self isEqualToViewArea:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToViewArea:(id)area
{
  areaCopy = area;
  [(CARScreenViewArea *)self visibleFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [areaCopy visibleFrame];
  v36.origin.x = v13;
  v36.origin.y = v14;
  v36.size.width = v15;
  v36.size.height = v16;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  if (CGRectEqualToRect(v34, v36) && (-[CARScreenViewArea safeFrame](self, "safeFrame"), v18 = v17, v20 = v19, v22 = v21, v24 = v23, [areaCopy safeFrame], v37.origin.x = v25, v37.origin.y = v26, v37.size.width = v27, v37.size.height = v28, v35.origin.x = v18, v35.origin.y = v20, v35.size.width = v22, v35.size.height = v24, CGRectEqualToRect(v35, v37)) && (v29 = -[CARScreenViewArea displaysTransitionControl](self, "displaysTransitionControl"), v29 == objc_msgSend(areaCopy, "displaysTransitionControl")) && (v30 = -[CARScreenViewArea statusBarEdge](self, "statusBarEdge"), v30 == objc_msgSend(areaCopy, "statusBarEdge")))
  {
    supportsFocusTransfer = [(CARScreenViewArea *)self supportsFocusTransfer];
    v32 = supportsFocusTransfer ^ [areaCopy supportsFocusTransfer] ^ 1;
  }

  else
  {
    LOBYTE(v32) = 0;
  }

  return v32;
}

- (CGRect)unadjustedSafeFrame
{
  x = self->_unadjustedSafeFrame.origin.x;
  y = self->_unadjustedSafeFrame.origin.y;
  width = self->_unadjustedSafeFrame.size.width;
  height = self->_unadjustedSafeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSEdgeInsets)additionalInsets
{
  top = self->_additionalInsets.top;
  left = self->_additionalInsets.left;
  bottom = self->_additionalInsets.bottom;
  right = self->_additionalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end