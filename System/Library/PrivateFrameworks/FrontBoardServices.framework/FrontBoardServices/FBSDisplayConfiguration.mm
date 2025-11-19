@interface FBSDisplayConfiguration
+ (id)_virtualDisplayConfigurationWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMainRootDisplay;
- (CGPoint)nativeCenter;
- (CGRect)_nativeBounds;
- (CGRect)bounds;
- (CGSize)pixelSize;
- (CGSize)safeOverscanRatio;
- (FBSDisplayConfiguration)init;
- (FBSDisplayConfiguration)initWithCADisplay:(id)a3;
- (FBSDisplayConfiguration)initWithCADisplay:(id)a3 isMainDisplay:(BOOL)a4;
- (FBSDisplayConfiguration)initWithCoder:(id)a3;
- (FBSDisplayConfiguration)initWithXPCDictionary:(id)a3;
- (FBSDisplayMode)preferredMode;
- (double)nativeOrientation;
- (id)CADisplay;
- (id)_initWithIdentity:(void *)a3 hardwareIdentifier:(void *)a4 name:(void *)a5 deviceName:(void *)a6 seed:(int)a7 comparable:(char)a8 tags:(double)a9 currentMode:(double)a10 preferredMode:(CGFloat)a11 otherModes:(CGFloat)a12 cloningSupported:(CGFloat)a13 overscanned:(CGFloat)a14 overscanCompensation:(CGFloat)a15 safeOverscanRatio:(CGFloat)a16 pixelSize:(unint64_t)a17 nativeBounds:(void *)a18 bounds:(void *)a19 latency:(void *)a20 originatingConfiguration:(char)a21 validityCheck:(char)a22;
- (id)_initWithImmutableDisplay:(id)a3 originalDisplay:(id)a4 assertIfInvalid:(BOOL)a5;
- (id)_nameForDisplayType;
- (id)copyForSecureRendering;
- (id)copyWithOverrideBounds:(CGRect)a3;
- (id)copyWithOverrideMode:(id)a3;
- (id)copyWithOverrideMode:(id)a3 pixelSize:(CGSize)a4 nativeBounds:(CGRect)a5;
- (id)copyWithUniqueIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)laterConfiguration:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)CADisplay;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation FBSDisplayConfiguration

- (BOOL)isMainRootDisplay
{
  v2 = [(FBSDisplayConfiguration *)self identity];
  v3 = [v2 isMainRootDisplay];

  return v3;
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
    v4 = self;
    objc_sync_enter(v4);
    if (!v4->_caDisplay)
    {
      v5 = [(FBSDisplayIdentity *)v4->_identity displayID];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [getCADisplayClass() displays];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            if ([v10 displayId] == v5)
            {
              objc_storeStrong(&v4->_caDisplay, v10);
              goto LABEL_14;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      if (!v4->_caDisplay)
      {
        v11 = FBLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(FBSDisplayConfiguration *)v5 CADisplay];
        }
      }
    }

    objc_sync_exit(v4);

    v3 = v4->_caDisplay;
  }

  return v3;
}

- (id)succinctDescription
{
  v2 = [(FBSDisplayConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_identity withName:0];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(FBSDisplayMode *)self->_currentMode _referenceSizeDescription];
  [(FBSDisplayMode *)self->_currentMode refreshRate];
  v8 = v7;
  v9 = FBSDisplayGamutDescription([(FBSDisplayMode *)self->_currentMode colorGamut]);
  v10 = FBSDisplayHDRModeDescription([(FBSDisplayMode *)self->_currentMode hdrMode]);
  v11 = [v5 stringWithFormat:@"%@ %gHz %@ %@", v6, v8, v9, v10];
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
  v2 = [(FBSDisplayIdentity *)self->_identity type];

  return FBSDisplayTypeName(v2);
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
    v16 = self;
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

- (FBSDisplayConfiguration)initWithCADisplay:(id)a3
{
  v4 = a3;
  v5 = [v4 immutableCopy];
  v6 = [(FBSDisplayConfiguration *)self _initWithImmutableDisplay:v5 originalDisplay:v4 assertIfInvalid:0];

  return v6;
}

- (FBSDisplayConfiguration)initWithCADisplay:(id)a3 isMainDisplay:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(FBSDisplayConfiguration *)self initWithCADisplay:v7];
  v9 = v8;
  if (v4)
  {
    if (![(FBSDisplayConfiguration *)v8 isMainDisplay])
    {
      [(FBSDisplayConfiguration *)v7 initWithCADisplay:v9 isMainDisplay:a2];
    }
  }

  else if (v8 && [(FBSDisplayConfiguration *)v8 isMainDisplay])
  {
    [(FBSDisplayConfiguration *)v7 initWithCADisplay:v9 isMainDisplay:a2];
  }

  return v9;
}

- (id)_initWithImmutableDisplay:(id)a3 originalDisplay:(id)a4 assertIfInvalid:(BOOL)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  a4;
  LODWORD(a4) = [v6 tag];
  v7 = [v6 displayId];
  v58 = 0;
  v8 = FBSDisplayTagToFBSDisplayType(v7, a4, &v58);
  v9 = [v6 displayType];
  if (v9 >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  v11 = [FBSDisplayIdentity alloc];
  v12 = v58;
  v13 = [v6 connectionSeed];
  v14 = [v6 processId];
  LOBYTE(v44) = 0;
  LOBYTE(v43) = [v6 isExternal];
  v15 = [(FBSDisplayIdentity *)v11 _initWithType:v8 UIKitMainLike:v12 displayID:v7 connectionType:v10 connectionSeed:v13 pid:v14 external:v43 uniqueIdentifier:0 secure:v44 root:0];
  v16 = [v6 nativeOrientation];
  v17 = FBSDisplayRotationFromCADisplayRotation(v16);

  if (v8)
  {
    v18 = [v6 currentOrientation];
    v19 = v17 - FBSDisplayRotationFromCADisplayRotation(v18) + 4;
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

  v53 = [v6 currentMode];
  v52 = [v6 preferredMode];
  [v6 availableModes];
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
    v45 = v6;
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
        v34 = [v32 isEqual:v53];
        v35 = [v32 isEqual:v52];
        v36 = v35;
        if ((v34 & 1) != 0 || v35)
        {
          if (v34)
          {
            if (v29)
            {
              v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"somehow I have multiple availableModes that match currentMode : current=%@ new=%@ available=%@", v53, v32, obj];
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
              v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"somehow I have multiple availableModes that match preferredMode : preferred=%@ new=%@ available=%@", v52, v32, obj];
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
      v6 = v45;
      goto LABEL_37;
    }

    v15 = v46;
    v6 = v45;
    v37 = v50;
    v38 = v48;
    if (v48)
    {
LABEL_45:
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"if there is no currentMode then there can't be any modes at all : preferred=%@ other=%@ : currentCA=%@ preferredCA=%@ availableCA=%@", v38, v37, v53, v52, v26];
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
    [v6 frame];
    [v29 pointScale];
    [v6 bounds];
    BSFloatIsZero();
  }

  v38 = 0;
  v37 = v51;
  goto LABEL_45;
}

- (id)_initWithIdentity:(void *)a3 hardwareIdentifier:(void *)a4 name:(void *)a5 deviceName:(void *)a6 seed:(int)a7 comparable:(char)a8 tags:(double)a9 currentMode:(double)a10 preferredMode:(CGFloat)a11 otherModes:(CGFloat)a12 cloningSupported:(CGFloat)a13 overscanned:(CGFloat)a14 overscanCompensation:(CGFloat)a15 safeOverscanRatio:(CGFloat)a16 pixelSize:(unint64_t)a17 nativeBounds:(void *)a18 bounds:(void *)a19 latency:(void *)a20 originatingConfiguration:(char)a21 validityCheck:(char)a22
{
  v84 = *MEMORY[0x1E69E9840];
  v77 = a3;
  v43 = a4;
  v80 = a5;
  v79 = a6;
  v44 = a18;
  v78 = a19;
  v45 = v43;
  v46 = a20;
  v47 = a29;
  v81.receiver = a1;
  v81.super_class = FBSDisplayConfiguration;
  v48 = objc_msgSendSuper2(&v81, sel_init);
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(v48 + 14, a3);
    v50 = [v45 copy];
    v51 = v49[15];
    v49[15] = v50;

    v52 = [v80 copy];
    v53 = v49[16];
    v49[16] = v52;

    v54 = [v79 copy];
    v55 = v49[17];
    v49[17] = v54;

    *(v49 + 52) = a7;
    *(v49 + 218) = a8;
    v49[24] = a17;
    objc_storeStrong(v49 + 18, a18);
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

    if ([v46 count])
    {
      v57 = [v46 copy];
      v58 = v49[20];
      v49[20] = v57;

      [v56 unionSet:v46];
    }

    v59 = [v56 copy];
    v60 = v49[21];
    v49[21] = v59;

    *(v49 + 216) = a21;
    *(v49 + 217) = a22;
    v49[25] = a23;
    *(v49 + 9) = a9;
    *(v49 + 10) = a10;
    *(v49 + 11) = a11;
    *(v49 + 12) = a12;
    *(v49 + 1) = a13;
    *(v49 + 2) = a14;
    *(v49 + 3) = a15;
    *(v49 + 4) = a16;
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
    v63 = v77;
  }

  else
  {
    v63 = v77;
    if (v77)
    {
      v64 = [v77 type];
      v65 = [v77 connectionType];
    }

    else
    {
      v64 = -1;
      v65 = -1;
    }

    v66 = objc_opt_class();
    if (v66 != objc_opt_class() || !FBSDisplayTypeIsValid(v64) || !FBSDisplayConnectionTypeIsValid(v65) || !v64 && [v77 displayID] != 1 || (v67 = FBSDisplayTypeToDisplayTag(v64), !v44) || (v67 & a17) != v67 || !FBSDisplayOverscanCompensationIsValid(a23) || a9 < 0.0 || a9 > 1.0 || a10 < 0.0 || a10 > 1.0 || (v68 = *MEMORY[0x1E695EFF8], v69 = *(MEMORY[0x1E695EFF8] + 8), v85.origin.x = *MEMORY[0x1E695EFF8], v85.origin.y = v69, v85.size.width = a11, v85.size.height = a12, CGRectIsNull(v85)) || (v86.origin.x = v68, v86.origin.y = v69, v86.size.width = a11, v86.size.height = a12, CGRectIsInfinite(v86)) || (v87.origin.x = a13, v87.origin.y = a14, v87.size.width = a15, v87.size.height = a16, CGRectIsNull(v87)) || (v88.origin.x = a13, v88.origin.y = a14, v88.size.width = a15, v88.size.height = a16, CGRectIsInfinite(v88)) || (v89.origin.x = a24, v89.origin.y = a25, v89.size.width = a26, v89.size.height = a27, CGRectIsNull(v89)) || (v90.origin.x = a24, v90.origin.y = a25, v90.size.width = a26, v90.size.height = a27, CGRectIsInfinite(v90)))
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

        v70 = v49;
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

        v70 = [MEMORY[0x1E696AAA8] currentHandler];
        [v70 handleFailureInMethod:a2 object:v49 file:@"FBSDisplay.m" lineNumber:615 description:{@"FBSDisplayConfiguration cannot be initialized as requested : %@", v49}];
      }
    }
  }

  return v49;
}

+ (id)_virtualDisplayConfigurationWithIdentifier:(id)a3
{
  v3 = a3;
  LOBYTE(v24) = 0;
  LOBYTE(v23) = 1;
  v4 = [[FBSDisplayIdentity alloc] _initWithType:7 UIKitMainLike:0 displayID:0xFFFFFFFFLL connectionType:3 connectionSeed:0 pid:0 external:v23 uniqueIdentifier:v3 secure:v24 root:0];
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
  v21 = [(FBSDisplayConfiguration *)v18 _initWithIdentity:v4 hardwareIdentifier:v3 name:@"Virtual Display" deviceName:@"vDisplay" seed:0 comparable:0 tags:*MEMORY[0x1E695F060] currentMode:*(MEMORY[0x1E695F060] + 8) preferredMode:v19 otherModes:v20 cloningSupported:v6 overscanned:v7 overscanCompensation:v9 safeOverscanRatio:v11 pixelSize:v17 nativeBounds:v5 bounds:0 latency:0 originatingConfiguration:v25 validityCheck:0, *&v13, *&v14, *&v15, *&v16, 0, 0, 1];

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
  v2 = [(FBSDisplayMode *)self->_currentMode _rotation];

  return FBSDisplayRotationRadians(v2);
}

- (id)copyWithUniqueIdentifier:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (v5)
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

- (id)copyWithOverrideMode:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Fbsdisplaymode.isa);
  if (!v5)
  {
    [FBSDisplayConfiguration copyWithOverrideMode:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSDisplayConfiguration copyWithOverrideMode:a2];
  }

  [v5 pixelSize];
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  [v5 nativePixelSize];
  v14 = [(FBSDisplayConfiguration *)self copyWithOverrideMode:v5 pixelSize:v7 nativeBounds:v9, v10, v11, v12, v13];

  return v14;
}

- (id)copyWithOverrideBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [[FBSDisplayConfigurationBuilder alloc] initWithConfiguration:self];
  [(FBSDisplayConfigurationBuilder *)v8 setPixelSize:self->_pixelSize.width nativeBounds:self->_pixelSize.height bounds:self->_nativeBounds.origin.x, self->_nativeBounds.origin.y, self->_nativeBounds.size.width, self->_nativeBounds.size.height, *&x, *&y, *&width, *&height];
  v9 = [(FBSDisplayConfigurationBuilder *)v8 buildWithError:0];

  return v9;
}

- (id)copyWithOverrideMode:(id)a3 pixelSize:(CGSize)a4 nativeBounds:(CGRect)a5
{
  v6 = a3;
  NSClassFromString(&cfstr_Fbsdisplaymode.isa);
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {

      [v6 _rotation];
      [v6 pointScale];
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

- (id)laterConfiguration:(id)a3
{
  [a3 identity];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [off_1E76BC9C0 builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  identity = self->_identity;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke;
  v86[3] = &unk_1E76BE088;
  v7 = v4;
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
  v50 = [(FBSDisplayConfiguration *)self isVirtualized];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __35__FBSDisplayConfiguration_isEqual___block_invoke_17;
  v54[3] = &unk_1E76BD8B8;
  v55 = v48;
  v51 = v48;
  v52 = [v5 appendBool:v50 counterpart:v54];
  LOBYTE(v48) = [v5 isEqual];

  return v48;
}

- (FBSDisplayConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"currentMode"];
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
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"safeOverscanRatio"];
  v53 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pixelSize"];
  v52 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nativeBounds"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bounds"];
  v50 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareIdentifier"];
  v49 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v48 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  v47 = [v3 decodeInt32ForKey:@"seed"];
  v45 = [v3 decodeBoolForKey:@"notComparable"];
  v46 = [v3 decodeIntegerForKey:@"tags"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"preferredMode"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v44 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:? forKey:?];
  v13 = [v3 decodeBoolForKey:@"cloningSupported"];
  v14 = [v3 decodeBoolForKey:@"overscanned"];
  v15 = [v3 decodeIntegerForKey:@"overscanCompensation"];
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
  [v3 decodeDoubleForKey:@"latency"];
  BYTE1(v39) = v14;
  LOBYTE(v39) = v13;
  v37 = [(FBSDisplayConfiguration *)self _initWithIdentity:v4 hardwareIdentifier:v50 name:v49 deviceName:v48 seed:v47 comparable:v45 ^ 1u tags:v43 currentMode:v42 preferredMode:v41 otherModes:v40 cloningSupported:v24 overscanned:v25 overscanCompensation:v26 safeOverscanRatio:v27 pixelSize:v46 nativeBounds:v6 bounds:v9 latency:v12 originatingConfiguration:v39 validityCheck:v15, v29, v31, v33, v35, v36, 0, 2];

  return v37;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeObject:self->_identity forKey:@"identity"];
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    [v13 encodeObject:hardwareIdentifier forKey:@"hardwareIdentifier"];
  }

  name = self->_name;
  if (name)
  {
    [v13 encodeObject:name forKey:@"name"];
  }

  deviceName = self->_deviceName;
  v7 = v13;
  if (deviceName)
  {
    [v13 encodeObject:deviceName forKey:@"deviceName"];
    v7 = v13;
  }

  [v7 encodeInt32:self->_noEqual_seed forKey:@"seed"];
  if (!self->_noEqual_comparable)
  {
    [v13 encodeBool:1 forKey:@"notComparable"];
  }

  tags = self->_tags;
  if (tags)
  {
    [v13 encodeInteger:tags forKey:@"tags"];
  }

  currentMode = self->_currentMode;
  v10 = +[FBSDisplayMode _emptyMode];

  if (currentMode != v10)
  {
    [v13 encodeObject:self->_currentMode forKey:@"currentMode"];
  }

  preferredMode = self->_preferredMode;
  if (preferredMode)
  {
    [v13 encodeObject:preferredMode forKey:@"preferredMode"];
  }

  if ([(NSSet *)self->_otherModes count])
  {
    [v13 encodeObject:self->_otherModes forKey:@"otherModes"];
  }

  if (self->_cloningSupported)
  {
    [v13 encodeBool:1 forKey:@"cloningSupported"];
  }

  if (self->_overscanned)
  {
    [v13 encodeBool:1 forKey:@"overscanned"];
  }

  overscanCompensation = self->_overscanCompensation;
  if (overscanCompensation)
  {
    [v13 encodeInteger:overscanCompensation forKey:@"overscanCompensation"];
  }

  BSSizeEqualToSize();
}

- (FBSDisplayConfiguration)initWithXPCDictionary:(id)a3
{
  if (a3)
  {
    [@"identity" UTF8String];
    BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  if (a3)
  {
    [@"identity" UTF8String];
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSDisplayConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSDisplayConfiguration *)self succinctDescriptionBuilder];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__FBSDisplayConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E76BE100;
  v6 = v5;
  v12 = v6;
  v13 = self;
  v14 = v4;
  v7 = v4;
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
  v2[1] = a1;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "Unable to find a CADisplay for decoded displayID %u. The render server process may have crashed.", v2, 8u);
}

@end