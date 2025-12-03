@interface FBSDisplayConfiguration
+ (id)_virtualDisplayConfigurationWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMainRootDisplay;
- (CGPoint)nativeCenter;
- (CGRect)_nativeBounds;
- (CGRect)bounds;
- (CGSize)pixelSize;
- (CGSize)safeOverscanRatio;
- (FBSDisplayConfiguration)init;
- (FBSDisplayConfiguration)initWithCADisplay:(id)display;
- (FBSDisplayConfiguration)initWithCADisplay:(id)display isMainDisplay:(BOOL)mainDisplay;
- (FBSDisplayConfiguration)initWithCoder:(id)coder;
- (FBSDisplayConfiguration)initWithXPCDictionary:(id)dictionary;
- (FBSDisplayMode)preferredMode;
- (double)nativeOrientation;
- (id)CADisplay;
- (id)_initWithIdentity:(void *)identity hardwareIdentifier:(void *)identifier name:(void *)name deviceName:(void *)deviceName seed:(int)seed comparable:(char)comparable tags:(double)tags currentMode:(double)self0 preferredMode:(CGFloat)self1 otherModes:(CGFloat)self2 cloningSupported:(CGFloat)self3 overscanned:(CGFloat)self4 overscanCompensation:(CGFloat)self5 safeOverscanRatio:(CGFloat)self6 pixelSize:(unint64_t)self7 nativeBounds:(void *)self8 bounds:(void *)self9 latency:(void *)latency originatingConfiguration:(char)configuration validityCheck:(char)check;
- (id)_initWithImmutableDisplay:(id)display originalDisplay:(id)originalDisplay assertIfInvalid:(BOOL)invalid;
- (id)_nameForDisplayType;
- (id)copyForSecureRendering;
- (id)copyWithOverrideBounds:(CGRect)bounds;
- (id)copyWithOverrideMode:(id)mode;
- (id)copyWithOverrideMode:(id)mode pixelSize:(CGSize)size nativeBounds:(CGRect)bounds;
- (id)copyWithUniqueIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)laterConfiguration:(id)configuration;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)CADisplay;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation FBSDisplayConfiguration

- (BOOL)isMainRootDisplay
{
  identity = [(FBSDisplayConfiguration *)self identity];
  isMainRootDisplay = [identity isMainRootDisplay];

  return isMainRootDisplay;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)CADisplay
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(FBSDisplayConfiguration *)self isVirtualized])
  {
    v3 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_caDisplay)
    {
      displayID = [(FBSDisplayIdentity *)selfCopy->_identity displayID];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      displays = [getCADisplayClass() displays];
      v7 = [displays countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(displays);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            if ([v10 displayId] == displayID)
            {
              objc_storeStrong(&selfCopy->_caDisplay, v10);
              goto LABEL_14;
            }
          }

          v7 = [displays countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      if (!selfCopy->_caDisplay)
      {
        v11 = FBLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(FBSDisplayConfiguration *)displayID CADisplay];
        }
      }
    }

    objc_sync_exit(selfCopy);

    v3 = selfCopy->_caDisplay;
  }

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSDisplayConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_identity withName:0];
  v5 = MEMORY[0x1E696AEC0];
  _referenceSizeDescription = [(FBSDisplayMode *)self->_currentMode _referenceSizeDescription];
  [(FBSDisplayMode *)self->_currentMode refreshRate];
  v8 = v7;
  v9 = FBSDisplayGamutDescription([(FBSDisplayMode *)self->_currentMode colorGamut]);
  v10 = FBSDisplayHDRModeDescription([(FBSDisplayMode *)self->_currentMode hdrMode]);
  v11 = [v5 stringWithFormat:@"%@ %gHz %@ %@", _referenceSizeDescription, v8, v9, v10];
  [v3 appendString:v11 withName:@"mode"];

  if (self->_overscanned)
  {
    overscanCompensation = self->_overscanCompensation;
    if (overscanCompensation == 1)
    {
      v13 = @"scaled";
    }

    else
    {
      if (overscanCompensation != 2)
      {
        goto LABEL_7;
      }

      v13 = @"inset";
    }

    [v3 appendString:v13 withName:@"overscan"];
  }

LABEL_7:

  return v3;
}

- (id)_nameForDisplayType
{
  type = [(FBSDisplayIdentity *)self->_identity type];

  return FBSDisplayTypeName(type);
}

- (FBSDisplayConfiguration)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"init is unavailable on %@", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"FBSDisplay.m";
    v19 = 1024;
    v20 = 399;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSDisplayConfiguration)initWithCADisplay:(id)display
{
  displayCopy = display;
  immutableCopy = [displayCopy immutableCopy];
  v6 = [(FBSDisplayConfiguration *)self _initWithImmutableDisplay:immutableCopy originalDisplay:displayCopy assertIfInvalid:0];

  return v6;
}

- (FBSDisplayConfiguration)initWithCADisplay:(id)display isMainDisplay:(BOOL)mainDisplay
{
  mainDisplayCopy = mainDisplay;
  displayCopy = display;
  v8 = [(FBSDisplayConfiguration *)self initWithCADisplay:displayCopy];
  v9 = v8;
  if (mainDisplayCopy)
  {
    if (![(FBSDisplayConfiguration *)v8 isMainDisplay])
    {
      [(FBSDisplayConfiguration *)displayCopy initWithCADisplay:v9 isMainDisplay:a2];
    }
  }

  else if (v8 && [(FBSDisplayConfiguration *)v8 isMainDisplay])
  {
    [(FBSDisplayConfiguration *)displayCopy initWithCADisplay:v9 isMainDisplay:a2];
  }

  return v9;
}

- (id)_initWithImmutableDisplay:(id)display originalDisplay:(id)originalDisplay assertIfInvalid:(BOOL)invalid
{
  v60 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  originalDisplay;
  LODWORD(originalDisplay) = [displayCopy tag];
  displayId = [displayCopy displayId];
  v58 = 0;
  v8 = FBSDisplayTagToFBSDisplayType(displayId, originalDisplay, &v58);
  displayType = [displayCopy displayType];
  if (displayType >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = displayType;
  }

  v11 = [FBSDisplayIdentity alloc];
  v12 = v58;
  connectionSeed = [displayCopy connectionSeed];
  processId = [displayCopy processId];
  LOBYTE(v44) = 0;
  LOBYTE(v43) = [displayCopy isExternal];
  v15 = [(FBSDisplayIdentity *)v11 _initWithType:v8 UIKitMainLike:v12 displayID:displayId connectionType:v10 connectionSeed:connectionSeed pid:processId external:v43 uniqueIdentifier:0 secure:v44 root:0];
  nativeOrientation = [displayCopy nativeOrientation];
  v17 = FBSDisplayRotationFromCADisplayRotation(nativeOrientation);

  if (v8)
  {
    currentOrientation = [displayCopy currentOrientation];
    v19 = v17 - FBSDisplayRotationFromCADisplayRotation(currentOrientation) + 4;
    v20 = v19 & 3;
    v22 = -v19;
    v21 = v22 < 0;
    v23 = v22 & 3;
    if (v21)
    {
      v17 = v20;
    }

    else
    {
      v17 = -v23;
    }
  }

  v24 = 0.0;
  if (([v15 isMainDisplay] & 1) == 0)
  {
    BKSDisplayServicesGetExternalDisplayScale();
    v24 = v25;
  }

  currentMode = [displayCopy currentMode];
  preferredMode = [displayCopy preferredMode];
  [displayCopy availableModes];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v26 = v57 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v54 objects:v59 count:16];
  v46 = v15;
  obj = v26;
  if (v27)
  {
    v28 = v27;
    v45 = displayCopy;
    v50 = 0;
    v48 = 0;
    v29 = 0;
    v30 = *v55;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v54 + 1) + 8 * i);
        v33 = [[FBSDisplayMode alloc] _initWithCADisplayMode:v32 scale:v17 rotation:v24];
        v34 = [v32 isEqual:currentMode];
        v35 = [v32 isEqual:preferredMode];
        v36 = v35;
        if ((v34 & 1) != 0 || v35)
        {
          if (v34)
          {
            if (v29)
            {
              v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"somehow I have multiple availableModes that match currentMode : current=%@ new=%@ available=%@", currentMode, v32, obj];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                [FBSDisplayConfiguration _initWithImmutableDisplay:a2 originalDisplay:? assertIfInvalid:?];
              }

              [v39 UTF8String];
              _bs_set_crash_log_message();
            }

            v29 = v33;
          }

          if (v36)
          {
            if (v48)
            {
              v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"somehow I have multiple availableModes that match preferredMode : preferred=%@ new=%@ available=%@", preferredMode, v32, obj];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                [FBSDisplayConfiguration _initWithImmutableDisplay:a2 originalDisplay:? assertIfInvalid:?];
              }

              [v40 UTF8String];
              _bs_set_crash_log_message();
            }

            v48 = v33;
          }
        }

        else if (v50)
        {
          [v50 addObject:v33];
        }

        else
        {
          v50 = [MEMORY[0x1E695DFA8] setWithObject:v33];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v28);
    v26 = obj;

    if (v29)
    {
      displayCopy = v45;
      goto LABEL_37;
    }

    v15 = v46;
    displayCopy = v45;
    v37 = v50;
    v38 = v48;
    if (v48)
    {
LABEL_45:
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"if there is no currentMode then there can't be any modes at all : preferred=%@ other=%@ : currentCA=%@ preferredCA=%@ availableCA=%@", v38, v37, currentMode, preferredMode, v26];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSDisplayConfiguration _initWithImmutableDisplay:a2 originalDisplay:? assertIfInvalid:?];
      }

      [v41 UTF8String];
      _bs_set_crash_log_message();
    }
  }

  else
  {

    v37 = 0;
  }

  v51 = v37;
  if (![v37 count])
  {
    if ([v15 isMainDisplay])
    {
      v29 = +[FBSDisplayMode _emptyMode];
    }

    else
    {
      v29 = 0;
    }

LABEL_37:
    [displayCopy frame];
    [v29 pointScale];
    [displayCopy bounds];
    BSFloatIsZero();
  }

  v38 = 0;
  v37 = v51;
  goto LABEL_45;
}

- (id)_initWithIdentity:(void *)identity hardwareIdentifier:(void *)identifier name:(void *)name deviceName:(void *)deviceName seed:(int)seed comparable:(char)comparable tags:(double)tags currentMode:(double)self0 preferredMode:(CGFloat)self1 otherModes:(CGFloat)self2 cloningSupported:(CGFloat)self3 overscanned:(CGFloat)self4 overscanCompensation:(CGFloat)self5 safeOverscanRatio:(CGFloat)self6 pixelSize:(unint64_t)self7 nativeBounds:(void *)self8 bounds:(void *)self9 latency:(void *)latency originatingConfiguration:(char)configuration validityCheck:(char)check
{
  v84 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifierCopy = identifier;
  nameCopy = name;
  deviceNameCopy = deviceName;
  boundsCopy = bounds;
  v78 = a19;
  v45 = identifierCopy;
  latencyCopy = latency;
  v47 = a29;
  v81.receiver = self;
  v81.super_class = FBSDisplayConfiguration;
  v48 = objc_msgSendSuper2(&v81, sel_init);
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(v48 + 14, identity);
    v50 = [v45 copy];
    v51 = v49[15];
    v49[15] = v50;

    v52 = [nameCopy copy];
    v53 = v49[16];
    v49[16] = v52;

    v54 = [deviceNameCopy copy];
    v55 = v49[17];
    v49[17] = v54;

    *(v49 + 52) = seed;
    *(v49 + 218) = comparable;
    v49[24] = size;
    objc_storeStrong(v49 + 18, bounds);
    if (v49[18])
    {
      [MEMORY[0x1E695DFA8] setWithObject:?];
    }

    else
    {
      [MEMORY[0x1E695DFA8] set];
    }
    v56 = ;
    if (v78)
    {
      objc_storeStrong(v49 + 19, a19);
      [v56 addObject:v49[19]];
    }

    if ([latencyCopy count])
    {
      v57 = [latencyCopy copy];
      v58 = v49[20];
      v49[20] = v57;

      [v56 unionSet:latencyCopy];
    }

    v59 = [v56 copy];
    v60 = v49[21];
    v49[21] = v59;

    *(v49 + 216) = configuration;
    *(v49 + 217) = check;
    v49[25] = a23;
    *(v49 + 9) = tags;
    *(v49 + 10) = mode;
    *(v49 + 11) = preferredMode;
    *(v49 + 12) = modes;
    *(v49 + 1) = supported;
    *(v49 + 2) = overscanned;
    *(v49 + 3) = compensation;
    *(v49 + 4) = ratio;
    *(v49 + 5) = a24;
    *(v49 + 6) = a25;
    *(v49 + 7) = a26;
    *(v49 + 8) = a27;
    v49[13] = a28;
    v61 = [v47 copy];
    v62 = v49[28];
    v49[28] = v61;
  }

  if (a30 == 3)
  {
    v63 = identityCopy;
  }

  else
  {
    v63 = identityCopy;
    if (identityCopy)
    {
      type = [identityCopy type];
      connectionType = [identityCopy connectionType];
    }

    else
    {
      type = -1;
      connectionType = -1;
    }

    v66 = objc_opt_class();
    if (v66 != objc_opt_class() || !FBSDisplayTypeIsValid(type) || !FBSDisplayConnectionTypeIsValid(connectionType) || !type && [identityCopy displayID] != 1 || (v67 = FBSDisplayTypeToDisplayTag(type), !boundsCopy) || (v67 & size) != v67 || !FBSDisplayOverscanCompensationIsValid(a23) || tags < 0.0 || tags > 1.0 || mode < 0.0 || mode > 1.0 || (v68 = *MEMORY[0x1E695EFF8], v69 = *(MEMORY[0x1E695EFF8] + 8), v85.origin.x = *MEMORY[0x1E695EFF8], v85.origin.y = v69, v85.size.width = preferredMode, v85.size.height = modes, CGRectIsNull(v85)) || (v86.origin.x = v68, v86.origin.y = v69, v86.size.width = preferredMode, v86.size.height = modes, CGRectIsInfinite(v86)) || (v87.origin.x = supported, v87.origin.y = overscanned, v87.size.width = compensation, v87.size.height = ratio, CGRectIsNull(v87)) || (v88.origin.x = supported, v88.origin.y = overscanned, v88.size.width = compensation, v88.size.height = ratio, CGRectIsInfinite(v88)) || (v89.origin.x = a24, v89.origin.y = a25, v89.size.width = a26, v89.size.height = a27, CGRectIsNull(v89)) || (v90.origin.x = a24, v90.origin.y = a25, v90.size.width = a26, v90.size.height = a27, CGRectIsInfinite(v90)))
    {
      if (a30 == 2)
      {
        v71 = FBLogCommon();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v83 = v49;
          _os_log_impl(&dword_1A2DBB000, v71, OS_LOG_TYPE_INFO, "FBSDisplayConfiguration cannot be initialized as requested : %{public}@", buf, 0xCu);
        }

        currentHandler = v49;
        v49 = 0;
      }

      else
      {
        if (a30 == 1)
        {
          v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSDisplayConfiguration cannot be initialized as requested : %@", v49];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [FBSDisplayConfiguration _initWithIdentity:a2 hardwareIdentifier:? name:? deviceName:? seed:? comparable:? tags:? currentMode:? preferredMode:? otherModes:? cloningSupported:? overscanned:? overscanCompensation:? safeOverscanRatio:? pixelSize:? nativeBounds:? bounds:? latency:? originatingConfiguration:? validityCheck:?];
          }

          [v73 UTF8String];
          _bs_set_crash_log_message();
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v49 file:@"FBSDisplay.m" lineNumber:615 description:{@"FBSDisplayConfiguration cannot be initialized as requested : %@", v49}];
      }
    }
  }

  return v49;
}

+ (id)_virtualDisplayConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  LOBYTE(v24) = 0;
  LOBYTE(v23) = 1;
  v4 = [[FBSDisplayIdentity alloc] _initWithType:7 UIKitMainLike:0 displayID:0xFFFFFFFFLL connectionType:3 connectionSeed:0 pid:0 external:v23 uniqueIdentifier:identifierCopy secure:v24 root:0];
  v5 = +[FBSDisplayMode _emptyMode];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [v5 nativePixelSize];
  v9 = v8;
  v11 = v10;
  [v5 pointScale];
  v13 = v6 / v12;
  v14 = v7 / v12;
  v15 = v9 / v12;
  v16 = v11 / v12;
  v17 = FBSDisplayTypeToDisplayTag([v4 type]);
  v18 = [FBSDisplayConfiguration alloc];
  [v5 pixelSize];
  LOWORD(v25) = 0;
  v21 = [(FBSDisplayConfiguration *)v18 _initWithIdentity:v4 hardwareIdentifier:identifierCopy name:@"Virtual Display" deviceName:@"vDisplay" seed:0 comparable:0 tags:*MEMORY[0x1E695F060] currentMode:*(MEMORY[0x1E695F060] + 8) preferredMode:v19 otherModes:v20 cloningSupported:v6 overscanned:v7 overscanCompensation:v9 safeOverscanRatio:v11 pixelSize:v17 nativeBounds:v5 bounds:0 latency:0 originatingConfiguration:v25 validityCheck:0, *&v13, *&v14, *&v15, *&v16, 0, 0, 1];

  return v21;
}

- (FBSDisplayMode)preferredMode
{
  preferredMode = self->_preferredMode;
  if (!preferredMode)
  {
    preferredMode = self->_currentMode;
  }

  return preferredMode;
}

- (double)nativeOrientation
{
  _rotation = [(FBSDisplayMode *)self->_currentMode _rotation];

  return FBSDisplayRotationRadians(_rotation);
}

- (id)copyWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (identifierCopy)
  {
    if (objc_opt_isKindOfClass())
    {

      [(FBSDisplayIdentity *)self->_identity uniqueIdentifier];
      objc_claimAutoreleasedReturnValue();
      BSEqualObjects();
    }

    [FBSDisplayConfiguration copyWithUniqueIdentifier:a2];
  }

  [FBSDisplayConfiguration copyWithUniqueIdentifier:a2];
}

- (id)copyWithOverrideMode:(id)mode
{
  modeCopy = mode;
  NSClassFromString(&cfstr_Fbsdisplaymode.isa);
  if (!modeCopy)
  {
    [FBSDisplayConfiguration copyWithOverrideMode:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSDisplayConfiguration copyWithOverrideMode:a2];
  }

  [modeCopy pixelSize];
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  [modeCopy nativePixelSize];
  v14 = [(FBSDisplayConfiguration *)self copyWithOverrideMode:modeCopy pixelSize:v7 nativeBounds:v9, v10, v11, v12, v13];

  return v14;
}

- (id)copyWithOverrideBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = [[FBSDisplayConfigurationBuilder alloc] initWithConfiguration:self];
  [(FBSDisplayConfigurationBuilder *)v8 setPixelSize:self->_pixelSize.width nativeBounds:self->_pixelSize.height bounds:self->_nativeBounds.origin.x, self->_nativeBounds.origin.y, self->_nativeBounds.size.width, self->_nativeBounds.size.height, *&x, *&y, *&width, *&height];
  v9 = [(FBSDisplayConfigurationBuilder *)v8 buildWithError:0];

  return v9;
}

- (id)copyWithOverrideMode:(id)mode pixelSize:(CGSize)size nativeBounds:(CGRect)bounds
{
  modeCopy = mode;
  NSClassFromString(&cfstr_Fbsdisplaymode.isa);
  if (modeCopy)
  {
    if (objc_opt_isKindOfClass())
    {

      [modeCopy _rotation];
      [modeCopy pointScale];
      BSFloatIsZero();
    }

    [FBSDisplayConfiguration copyWithOverrideMode:a2 pixelSize:? nativeBounds:?];
  }

  [FBSDisplayConfiguration copyWithOverrideMode:a2 pixelSize:? nativeBounds:?];
}

- (CGRect)_nativeBounds
{
  x = self->_nativeBounds.origin.x;
  y = self->_nativeBounds.origin.y;
  width = self->_nativeBounds.size.width;
  height = self->_nativeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)laterConfiguration:(id)configuration
{
  [configuration identity];
  objc_claimAutoreleasedReturnValue();
  BSEqualObjects();
}

- (id)copyForSecureRendering
{
  if ([(FBSDisplayIdentity *)self->_identity expectsSecureRendering])
  {

    return self;
  }

  else
  {
    v3 = [[FBSDisplayConfigurationBuilder alloc] initWithConfiguration:self];
    [(FBSDisplayConfigurationBuilder *)v3 setExpectsSecureRendering];
    v4 = [(FBSDisplayConfigurationBuilder *)v3 buildWithError:0];

    return v4;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [off_1E76BC9C0 builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  identity = self->_identity;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke;
  v86[3] = &unk_1E76BE088;
  v7 = equalCopy;
  v87 = v7;
  v8 = [v5 appendObject:identity counterpart:v86];
  hardwareIdentifier = self->_hardwareIdentifier;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_2;
  v84[3] = &unk_1E76BD8E0;
  v10 = v7;
  v85 = v10;
  v11 = [v5 appendString:hardwareIdentifier counterpart:v84];
  name = self->_name;
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_3;
  v82[3] = &unk_1E76BD8E0;
  v13 = v10;
  v83 = v13;
  v14 = [v5 appendString:name counterpart:v82];
  deviceName = self->_deviceName;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_4;
  v80[3] = &unk_1E76BD8E0;
  v16 = v13;
  v81 = v16;
  v17 = [v5 appendString:deviceName counterpart:v80];
  tags = self->_tags;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_5;
  v78[3] = &unk_1E76BD908;
  v19 = v16;
  v79 = v19;
  v20 = [v5 appendInteger:tags counterpart:v78];
  currentMode = self->_currentMode;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_6;
  v76[3] = &unk_1E76BE088;
  v22 = v19;
  v77 = v22;
  v23 = [v5 appendObject:currentMode counterpart:v76];
  preferredMode = self->_preferredMode;
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_7;
  v74[3] = &unk_1E76BE088;
  v25 = v22;
  v75 = v25;
  v26 = [v5 appendObject:preferredMode counterpart:v74];
  otherModes = self->_otherModes;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_8;
  v72[3] = &unk_1E76BE088;
  v28 = v25;
  v73 = v28;
  v29 = [v5 appendObject:otherModes counterpart:v72];
  cloningSupported = self->_cloningSupported;
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_9;
  v70[3] = &unk_1E76BD8B8;
  v31 = v28;
  v71 = v31;
  v32 = [v5 appendBool:cloningSupported counterpart:v70];
  overscanned = self->_overscanned;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_10;
  v68[3] = &unk_1E76BD8B8;
  v34 = v31;
  v69 = v34;
  v35 = [v5 appendBool:overscanned counterpart:v68];
  overscanCompensation = self->_overscanCompensation;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_11;
  v66[3] = &unk_1E76BD908;
  v37 = v34;
  v67 = v37;
  v38 = [v5 appendInteger:overscanCompensation counterpart:v66];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_12;
  v64[3] = &unk_1E76BE0B0;
  v39 = v37;
  v65 = v39;
  v40 = [v5 appendCGSize:v64 counterpart:{self->_safeOverscanRatio.width, self->_safeOverscanRatio.height}];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_13;
  v62[3] = &unk_1E76BE0B0;
  v41 = v39;
  v63 = v41;
  v42 = [v5 appendCGSize:v62 counterpart:{self->_pixelSize.width, self->_pixelSize.height}];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_14;
  v60[3] = &unk_1E76BD930;
  v43 = v41;
  v61 = v43;
  v44 = [v5 appendCGRect:v60 counterpart:{self->_nativeBounds.origin.x, self->_nativeBounds.origin.y, self->_nativeBounds.size.width, self->_nativeBounds.size.height}];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_15;
  v58[3] = &unk_1E76BD930;
  v45 = v43;
  v59 = v45;
  v46 = [v5 appendCGRect:v58 counterpart:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  latency = self->_latency;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_16;
  v56[3] = &unk_1E76BE0D8;
  v48 = v45;
  v57 = v48;
  v49 = [v5 appendDouble:v56 counterpart:latency];
  isVirtualized = [(FBSDisplayConfiguration *)self isVirtualized];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_17;
  v54[3] = &unk_1E76BD8B8;
  v55 = v48;
  v51 = v48;
  v52 = [v5 appendBool:isVirtualized counterpart:v54];
  LOBYTE(v48) = [v5 isEqual];

  return v48;
}

- (FBSDisplayConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentMode"];
  if (v5)
  {
    goto LABEL_2;
  }

  if ([v4 isMainDisplay])
  {
    v5 = +[FBSDisplayMode _emptyMode];
    if (v5)
    {
      goto LABEL_2;
    }
  }

  if ([v4 isVirtualized])
  {
    v5 = +[FBSDisplayMode _emptyMode];
LABEL_2:
    v6 = v5;
    goto LABEL_3;
  }

  v6 = 0;
LABEL_3:
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"safeOverscanRatio"];
  v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pixelSize"];
  v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nativeBounds"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bounds"];
  v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardwareIdentifier"];
  v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  v47 = [coderCopy decodeInt32ForKey:@"seed"];
  v45 = [coderCopy decodeBoolForKey:@"notComparable"];
  v46 = [coderCopy decodeIntegerForKey:@"tags"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredMode"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v44 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:? forKey:?];
  v13 = [coderCopy decodeBoolForKey:@"cloningSupported"];
  v14 = [coderCopy decodeBoolForKey:@"overscanned"];
  v15 = [coderCopy decodeIntegerForKey:@"overscanCompensation"];
  if (v7)
  {
    v16 = MEMORY[0x1A58E7870](v7);
    v42 = v17;
    v43 = v16;
  }

  else
  {
    v42 = 1.0;
    v43 = 1.0;
  }

  if (v53)
  {
    MEMORY[0x1A58E7870]();
  }

  else
  {
    [v6 pixelSize];
  }

  v40 = v19;
  v41 = v18;
  if (!v52)
  {
    [v6 nativePixelSize];
    BSRectWithSize();
  }

  MEMORY[0x1A58E76E0]();
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  if (!v8)
  {
    [v6 size];
    BSRectWithSize();
  }

  MEMORY[0x1A58E76E0](v8);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [coderCopy decodeDoubleForKey:@"latency"];
  BYTE1(v39) = v14;
  LOBYTE(v39) = v13;
  v37 = [(FBSDisplayConfiguration *)self _initWithIdentity:v4 hardwareIdentifier:v50 name:v49 deviceName:v48 seed:v47 comparable:v45 ^ 1u tags:v43 currentMode:v42 preferredMode:v41 otherModes:v40 cloningSupported:v24 overscanned:v25 overscanCompensation:v26 safeOverscanRatio:v27 pixelSize:v46 nativeBounds:v6 bounds:v9 latency:v12 originatingConfiguration:v39 validityCheck:v15, v29, v31, v33, v35, v36, 0, 2];

  return v37;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identity forKey:@"identity"];
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    [coderCopy encodeObject:hardwareIdentifier forKey:@"hardwareIdentifier"];
  }

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
  }

  deviceName = self->_deviceName;
  v7 = coderCopy;
  if (deviceName)
  {
    [coderCopy encodeObject:deviceName forKey:@"deviceName"];
    v7 = coderCopy;
  }

  [v7 encodeInt32:self->_noEqual_seed forKey:@"seed"];
  if (!self->_noEqual_comparable)
  {
    [coderCopy encodeBool:1 forKey:@"notComparable"];
  }

  tags = self->_tags;
  if (tags)
  {
    [coderCopy encodeInteger:tags forKey:@"tags"];
  }

  currentMode = self->_currentMode;
  v10 = +[FBSDisplayMode _emptyMode];

  if (currentMode != v10)
  {
    [coderCopy encodeObject:self->_currentMode forKey:@"currentMode"];
  }

  preferredMode = self->_preferredMode;
  if (preferredMode)
  {
    [coderCopy encodeObject:preferredMode forKey:@"preferredMode"];
  }

  if ([(NSSet *)self->_otherModes count])
  {
    [coderCopy encodeObject:self->_otherModes forKey:@"otherModes"];
  }

  if (self->_cloningSupported)
  {
    [coderCopy encodeBool:1 forKey:@"cloningSupported"];
  }

  if (self->_overscanned)
  {
    [coderCopy encodeBool:1 forKey:@"overscanned"];
  }

  overscanCompensation = self->_overscanCompensation;
  if (overscanCompensation)
  {
    [coderCopy encodeInteger:overscanCompensation forKey:@"overscanCompensation"];
  }

  BSSizeEqualToSize();
}

- (FBSDisplayConfiguration)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    [@"identity" UTF8String];
    BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    [@"identity" UTF8String];
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSDisplayConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSDisplayConfiguration *)self succinctDescriptionBuilder];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__FBSDisplayConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E76BE100;
  v6 = succinctDescriptionBuilder;
  v12 = v6;
  selfCopy = self;
  v14 = prefixCopy;
  v7 = prefixCopy;
  [v6 appendBodySectionWithName:0 multilinePrefix:v7 block:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

void __65__FBSDisplayConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 120) withName:@"CADisplay.uniqueID" skipIfEmpty:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 128) withName:@"CADisplay.name"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 136) withName:@"CADisplay.deviceName"];
  v2 = [*(a1 + 32) appendUnsignedInt:*(*(a1 + 40) + 208) withName:@"CADisplay.seed"];
  v3 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 192) withName:@"tags"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 144) withName:@"currentMode"];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 152) withName:@"preferredMode" skipIfNil:1];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) withName:@"cloningSupported" ifEqualTo:1];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (*(v7 + 217) == 1)
  {
    v9 = FBSDisplayOverscanCompensationDescription(*(v7 + 200));
    [v8 appendString:v9 withName:@"overscanCompensation"];
  }

  else
  {
    [*(a1 + 32) appendString:@"n/a" withName:@"overscanCompensation"];
  }

  BSFloatIsOne();
}

- (CGPoint)nativeCenter
{
  currentMode = self->_currentMode;
  if (currentMode && ([(FBSDisplayMode *)currentMode _rotation]& 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    p_pixelSize = &self->_pixelSize;
    p_height = &self->_pixelSize.height;
  }

  else
  {
    p_height = &self->_pixelSize;
    p_pixelSize = &self->_pixelSize.height;
  }

  v6 = p_pixelSize->width * 0.5;
  v7 = p_height->width * 0.5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGSize)safeOverscanRatio
{
  width = self->_safeOverscanRatio.width;
  height = self->_safeOverscanRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithCADisplay:(char *)a3 isMainDisplay:.cold.1(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create a non-main FBSDisplayConfiguration from CADisplay=%@ -> created=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a3);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, a2, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithCADisplay:(char *)a3 isMainDisplay:.cold.2(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create a main FBSDisplayConfiguration from CADisplay=%@ -> created=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a3);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, a2, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithImmutableDisplay:(const char *)a1 originalDisplay:assertIfInvalid:.cold.1(const char *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5);
}

- (void)_initWithImmutableDisplay:(const char *)a1 originalDisplay:assertIfInvalid:.cold.2(const char *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5);
}

- (void)_initWithImmutableDisplay:(const char *)a1 originalDisplay:assertIfInvalid:.cold.3(const char *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5);
}

- (void)_initWithIdentity:(const char *)a1 hardwareIdentifier:name:deviceName:seed:comparable:tags:currentMode:preferredMode:otherModes:cloningSupported:overscanned:overscanCompensation:safeOverscanRatio:pixelSize:nativeBounds:bounds:latency:originatingConfiguration:validityCheck:.cold.1(const char *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5);
}

- (void)copyWithUniqueIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)copyWithUniqueIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)copyWithOverrideMode:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayModeClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)copyWithOverrideMode:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)copyWithOverrideMode:(char *)a1 pixelSize:nativeBounds:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayModeClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)copyWithOverrideMode:(char *)a1 pixelSize:nativeBounds:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)CADisplay
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "Unable to find a CADisplay for decoded displayID %u. The render server process may have crashed.", v2, 8u);
}

@end