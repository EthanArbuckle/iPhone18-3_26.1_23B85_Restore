@interface IFGraphicSymbolDescriptor
- (BOOL)_addDarkModeBorder;
- (BOOL)_addLightModeBorder;
- (BOOL)isExtendedAppearanceVariant;
- (CGSize)size;
- (CGSize)symbolOffset;
- (CUIEncapsulationShape)encapsulationShape;
- (IFColor)resolvedBorderColor;
- (IFGraphicSymbolDescriptor)init;
- (NSArray)_processedEnclosureColors;
- (NSArray)_processedSymbolColors;
- (NSArray)resolvedEnclosureColors;
- (NSArray)resolvedSymbolColors;
- (NSString)resolvedName;
- (double)pointSize;
- (double)resolvedBorderWidth;
- (id)_colorForIFSystemColor:(int64_t)a3;
- (id)_debugDynamicGraphicIconColor;
- (id)_defaultEnclosureColor;
- (id)_defaultSymbolColor;
- (id)_resolvedColorsForColors:(id)a3 defaultColor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)enclosureEffect;
- (int64_t)fill;
- (int64_t)resolvedFill;
- (int64_t)resolvedRenderingModeFromSuggestedMode:(int64_t)a3;
- (int64_t)resolvedShape;
- (int64_t)shape;
- (int64_t)symbolEffect;
- (int64_t)symbolWeight;
- (unint64_t)symbolSize;
- (void)checkForSymbolOverride;
- (void)pointSize;
- (void)setName:(id)a3;
- (void)setResolvedName:(id)a3;
- (void)symbolOffset;
- (void)symbolSize;
- (void)symbolWeight;
@end

@implementation IFGraphicSymbolDescriptor

- (IFGraphicSymbolDescriptor)init
{
  v9.receiver = self;
  v9.super_class = IFGraphicSymbolDescriptor;
  v2 = [(IFSymbolImageDescriptor *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_size = vdupq_n_s64(0x4040000000000000uLL);
    v2->_appearance = 0;
    v2->_contrast = 0;
    v2->_vibrancy = 0;
    v2->_appearanceVariant = 0;
    name = v2->_name;
    v2->_name = 0;

    v5 = +[IFPlatformInfo sharedInstance];
    v3->_platform = [v5 nativePlatform];

    [MEMORY[0x1E6999438] automaticOffset];
    v3->_symbolOffset.width = v6;
    v3->_symbolOffset.height = v7;
    [(IFSymbolImageDescriptor *)v3 setPointSize:0.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = IFGraphicSymbolDescriptor;
  v4 = [(IFSymbolImageDescriptor *)&v12 copyWithZone:a3];
  v4[17] = self->_size;
  v5 = [(NSArray *)self->_enclosureColors copy];
  v6 = *(v4 + 10);
  *(v4 + 10) = v5;

  v7 = [(NSArray *)self->_symbolColors copy];
  v8 = *(v4 + 11);
  *(v4 + 11) = v7;

  *(v4 + 12) = self->_renderingMode;
  v9 = [(NSString *)self->_name copy];
  v10 = *(v4 + 26);
  *(v4 + 26) = v9;

  *(v4 + 27) = self->_appearance;
  *(v4 + 28) = self->_contrast;
  *(v4 + 29) = self->_vibrancy;
  v4[18] = self->_symbolOffset;
  *(v4 + 30) = self->_symbolEffect;
  *(v4 + 31) = self->_enclosureEffect;
  *(v4 + 9) = self->_shape;
  *(v4 + 13) = self->_fill;
  return v4;
}

- (id)_debugDynamicGraphicIconColor
{
  if (_debugDynamicGraphicIconColor_once != -1)
  {
    [IFGraphicSymbolDescriptor _debugDynamicGraphicIconColor];
  }

  v3 = _debugDynamicGraphicIconColor_color;

  return v3;
}

uint64_t __58__IFGraphicSymbolDescriptor__debugDynamicGraphicIconColor__block_invoke()
{
  _debugDynamicGraphicIconColor_color = [[IFColor alloc] initWithRed:225.0 green:225.0 blue:230.0 alpha:255.0];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_colorForIFSystemColor:(int64_t)a3
{
  v3 = [[IFColor alloc] initWithSystemColor:a3 appearance:[(IFGraphicSymbolDescriptor *)self appearance] contrast:[(IFGraphicSymbolDescriptor *)self contrast] vibrancy:[(IFGraphicSymbolDescriptor *)self vibrancy]];

  return v3;
}

- (id)_resolvedColorsForColors:(id)a3 defaultColor:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v22;
    *&v10 = 138412290;
    v19 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = -[IFGraphicSymbolDescriptor _colorForIFSystemColor:](self, "_colorForIFSystemColor:", [v14 intValue]);
          }

          else
          {
            v16 = IFDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v19;
              v26 = v14;
              _os_log_debug_impl(&dword_1B9DEC000, v16, OS_LOG_TYPE_DEBUG, "Unexpected color %@", buf, 0xCu);
            }

            v15 = v6[2](v6);
          }
        }

        v17 = v15;
        [v7 addObject:{v15, v19}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)_defaultSymbolColor
{
  enclosureColors = self->_enclosureColors;
  if (enclosureColors && [(NSArray *)enclosureColors count])
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    v5 = [v4 symbolColorAlternate];
  }

  else
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    v5 = [v4 symbolColor];
  }

  v6 = [(IFGraphicSymbolDescriptor *)self _colorForIFSystemColor:v5];

  return v6;
}

- (id)_defaultEnclosureColor
{
  symbolColors = self->_symbolColors;
  if (symbolColors && [(NSArray *)symbolColors count])
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    v5 = [v4 enclosureColorAlternate];
  }

  else
  {
    v4 = +[IFGraphicSymbolDefaults sharedInstance];
    v5 = [v4 enclosureColor];
  }

  v6 = [(IFGraphicSymbolDescriptor *)self _colorForIFSystemColor:v5];

  return v6;
}

- (NSArray)_processedSymbolColors
{
  v9[1] = *MEMORY[0x1E69E9840];
  symbolColors = self->_symbolColors;
  if (symbolColors && [(NSArray *)symbolColors count])
  {
    v4 = self->_symbolColors;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__IFGraphicSymbolDescriptor__processedSymbolColors__block_invoke;
    v8[3] = &unk_1E7ED9818;
    v8[4] = self;
    v5 = [(IFGraphicSymbolDescriptor *)self _resolvedColorsForColors:v4 defaultColor:v8];
  }

  else
  {
    v6 = [(IFGraphicSymbolDescriptor *)self _defaultSymbolColor];
    v9[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v5;
}

- (NSArray)_processedEnclosureColors
{
  v9[1] = *MEMORY[0x1E69E9840];
  enclosureColors = self->_enclosureColors;
  if (enclosureColors && [(NSArray *)enclosureColors count])
  {
    v4 = self->_enclosureColors;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__IFGraphicSymbolDescriptor__processedEnclosureColors__block_invoke;
    v8[3] = &unk_1E7ED9818;
    v8[4] = self;
    v5 = [(IFGraphicSymbolDescriptor *)self _resolvedColorsForColors:v4 defaultColor:v8];
  }

  else
  {
    v6 = [(IFGraphicSymbolDescriptor *)self _defaultEnclosureColor];
    v9[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v5;
}

- (NSArray)resolvedSymbolColors
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([(IFGraphicSymbolDescriptor *)self appearanceVariant]== 1)
  {
    if ([(IFGraphicSymbolDescriptor *)self appearance]== 1)
    {
      v3 = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
      if ([v3 count] == 1)
      {
        v4 = [v3 objectAtIndexedSubscript:0];
        v5 = +[IFColor white];
        if ([v4 isEqual:v5])
        {

LABEL_14:
          v8 = [(IFGraphicSymbolDescriptor *)self _processedSymbolColors];
          goto LABEL_16;
        }

        v10 = [v3 objectAtIndexedSubscript:0];
        v11 = +[IFColor black];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          goto LABEL_14;
        }
      }

      v8 = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
      goto LABEL_16;
    }

    if ([(IFGraphicSymbolDescriptor *)self appearance]== 2)
    {
      v9 = [(IFSymbolImageDescriptor *)self tintColor];

      if (v9)
      {
        v3 = [(IFSymbolImageDescriptor *)self tintColor];
        v18[0] = v3;
        v6 = MEMORY[0x1E695DEC8];
        v7 = v18;
        goto LABEL_9;
      }

      v14 = IFDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        _os_log_impl(&dword_1B9DEC000, v14, OS_LOG_TYPE_INFO, "No tint colour set for tintable request", &v16, 2u);
      }
    }
  }

  else if ([(IFGraphicSymbolDescriptor *)self appearanceVariant]== 3 || [(IFGraphicSymbolDescriptor *)self appearanceVariant]== 2)
  {
    v3 = +[IFColor white];
    v17 = v3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v17;
LABEL_9:
    v8 = [v6 arrayWithObjects:v7 count:1];
LABEL_16:
    v13 = v8;

    goto LABEL_21;
  }

  v13 = [(IFGraphicSymbolDescriptor *)self _processedSymbolColors];
LABEL_21:

  return v13;
}

- (NSArray)resolvedEnclosureColors
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([(IFGraphicSymbolDescriptor *)self isExtendedAppearanceVariant])
  {
    v3 = [[IFColor alloc] initWithRed:0.1922 green:0.1922 blue:0.1922 alpha:1.0];
    v4 = [[IFColor alloc] initWithRed:0.0784 green:0.0784 blue:0.0784 alpha:1.0];
    v7[0] = v3;
    v7[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
  }

  return v5;
}

- (int64_t)resolvedRenderingModeFromSuggestedMode:(int64_t)a3
{
  v5 = [(IFGraphicSymbolDescriptor *)self renderingMode];
  if (v5 <= 3)
  {
    if (v5 == 2)
    {
      return 3;
    }

    if (v5 == 3)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (v5 != 4)
  {
    if (v5 == 5)
    {
      return 4;
    }

LABEL_8:
    if ((a3 - 1) >= 3)
    {
      return 1;
    }

    else
    {
      return a3;
    }
  }

  if ([(IFGraphicSymbolDescriptor *)self appearance]!= 2)
  {
    return 2;
  }

  result = [(IFGraphicSymbolDescriptor *)self appearanceVariant];
  if (result != 1)
  {
    return 2;
  }

  return result;
}

- (int64_t)resolvedShape
{
  v2 = [(IFGraphicSymbolDescriptor *)self shape];
  if (v2 == 3)
  {
    return 2;
  }

  else
  {
    return v2 == 2;
  }
}

- (CUIEncapsulationShape)encapsulationShape
{
  v2 = [(IFGraphicSymbolDescriptor *)self shape];
  switch(v2)
  {
    case 3:
      v3 = [MEMORY[0x1E6999380] newCapsule];
      break;
    case 2:
      v3 = [MEMORY[0x1E6999380] newCircle];
      break;
    case 1:
      v3 = [MEMORY[0x1E6999380] newRoundedRect];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (int64_t)fill
{
  if (!self->_fill)
  {
    if ([(IFGraphicSymbolDescriptor *)self platform]== 1 || [(IFGraphicSymbolDescriptor *)self platform]== 2 || [(IFGraphicSymbolDescriptor *)self platform]== 16)
    {
      v3 = 2;
    }

    else
    {
      v5 = +[IFDefaults sharedInstance];
      v6 = [v5 iconStackAppIconsAllowed];

      v3 = 1;
      if (v6)
      {
        v3 = 2;
      }
    }

    self->_fill = v3;
  }

  if ([(IFGraphicSymbolDescriptor *)self isExtendedAppearanceVariant])
  {
    return 4;
  }

  else
  {
    return self->_fill;
  }
}

- (int64_t)resolvedFill
{
  v2 = [(IFGraphicSymbolDescriptor *)self fill];
  if ((v2 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return v2 - 1;
  }
}

- (int64_t)symbolEffect
{
  result = [(IFGraphicSymbolDescriptor *)self platform];
  if (result != 1)
  {
    return [(IFGraphicSymbolDescriptor *)self platform]== 2;
  }

  return result;
}

- (int64_t)enclosureEffect
{
  result = [(IFGraphicSymbolDescriptor *)self platform];
  if (result != 1)
  {
    return [(IFGraphicSymbolDescriptor *)self platform]== 2;
  }

  return result;
}

- (void)setName:(id)a3
{
  objc_storeStrong(&self->_name, a3);

  [(IFGraphicSymbolDescriptor *)self checkForSymbolOverride];
}

- (void)setResolvedName:(id)a3
{
  objc_storeStrong(&self->_resolvedName, a3);

  [(IFGraphicSymbolDescriptor *)self checkForSymbolOverride];
}

- (NSString)resolvedName
{
  resolvedName = self->_resolvedName;
  if (resolvedName)
  {
    v3 = resolvedName;
  }

  else
  {
    v3 = [(IFGraphicSymbolDescriptor *)self name];
  }

  return v3;
}

- (BOOL)_addLightModeBorder
{
  result = 0;
  if (([(IFGraphicSymbolDescriptor *)self platform]& 0x3C) != 0 && [(IFGraphicSymbolDescriptor *)self fill]== 1 && ![(IFGraphicSymbolDescriptor *)self appearance])
  {
    v3 = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = +[IFColor white];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)_addDarkModeBorder
{
  result = 0;
  if (([(IFGraphicSymbolDescriptor *)self platform]& 0x3C) != 0)
  {
    if ([(IFGraphicSymbolDescriptor *)self fill]== 1 && [(IFGraphicSymbolDescriptor *)self appearance]== 1)
    {
      v3 = [(IFGraphicSymbolDescriptor *)self _processedEnclosureColors];
      v4 = [v3 objectAtIndexedSubscript:0];
      v5 = +[IFColor black];
      v6 = [v4 isEqual:v5];

      if (v6)
      {
        return 1;
      }
    }

    if ([(IFGraphicSymbolDescriptor *)self isExtendedAppearanceVariant])
    {
      return 1;
    }
  }

  return result;
}

- (double)resolvedBorderWidth
{
  if ([(IFGraphicSymbolDescriptor *)self _addLightModeBorder]|| (v4 = [(IFGraphicSymbolDescriptor *)self _addDarkModeBorder], result = 0.0, v4))
  {
    [(IFSymbolImageDescriptor *)self scale];
    return 1.0 / v5;
  }

  return result;
}

- (IFColor)resolvedBorderColor
{
  if ([(IFGraphicSymbolDescriptor *)self _addLightModeBorder]|| [(IFGraphicSymbolDescriptor *)self _addDarkModeBorder])
  {
    v3 = [IFColor borderColorForAppearance:[(IFGraphicSymbolDescriptor *)self appearance]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)shape
{
  result = self->_shape;
  if (!result)
  {
    if ([(IFGraphicSymbolDescriptor *)self platform]== 8)
    {
      result = 2;
    }

    else if ([(IFGraphicSymbolDescriptor *)self platform]== 16)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    self->_shape = result;
  }

  return result;
}

- (void)checkForSymbolOverride
{
  v1 = [a1 symbolOverride];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (double)pointSize
{
  v3 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
  [v3 pointSizeAdjuster];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v18.receiver = self;
    v18.super_class = IFGraphicSymbolDescriptor;
    [(IFSymbolImageDescriptor *)&v18 pointSize];
    if (v12 >= 1.0)
    {
      v17.receiver = self;
      v17.super_class = IFGraphicSymbolDescriptor;
      [(IFSymbolImageDescriptor *)&v17 pointSize];
      return v15;
    }

    [(IFGraphicSymbolDescriptor *)self size];
    v8 = v13;
    v9 = +[IFGraphicSymbolDefaults sharedInstance];
    [v9 enclosureSizeMultiplier];
  }

  else
  {
    v6 = IFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self pointSize];
    }

    [(IFGraphicSymbolDescriptor *)self size];
    v8 = v7;
    v9 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    [v9 pointSizeAdjuster];
    v11 = v10;
  }

  v14 = v8 / v11;

  return v14;
}

- (unint64_t)symbolSize
{
  v3 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
  v4 = [v3 symbolSize];

  if (v4)
  {
    v5 = IFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self symbolSize];
    }

    v6 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    v7 = [v6 symbolSize];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IFGraphicSymbolDescriptor;
    return [(IFSymbolImageDescriptor *)&v9 symbolSize];
  }

  return v7;
}

- (int64_t)symbolWeight
{
  v3 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
  v4 = [v3 symbolWeight];

  if (v4)
  {
    v5 = IFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self symbolWeight];
    }

    v6 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    v7 = [v6 symbolWeight];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IFGraphicSymbolDescriptor;
    return [(IFSymbolImageDescriptor *)&v9 symbolWeight];
  }

  return v7;
}

- (CGSize)symbolOffset
{
  v3 = [(IFGraphicSymbolDescriptor *)self symbolOverride];

  if (v3)
  {
    v4 = IFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(IFGraphicSymbolDescriptor *)self symbolOffset];
    }

    v5 = [(IFGraphicSymbolDescriptor *)self symbolOverride];
    [v5 offset];
    v7 = v6;
    height = v8;

    v10 = [(IFGraphicSymbolDescriptor *)self flipXOffsetOverride];
    width = -v7;
    if (!v10)
    {
      width = v7;
    }
  }

  else
  {
    width = self->_symbolOffset.width;
    height = self->_symbolOffset.height;
  }

  v12 = height;
  result.height = v12;
  result.width = width;
  return result;
}

- (BOOL)isExtendedAppearanceVariant
{
  if ([(IFGraphicSymbolDescriptor *)self appearanceVariant]!= 1)
  {
    goto LABEL_5;
  }

  v3 = [(IFGraphicSymbolDescriptor *)self appearance];
  if (v3 != 1)
  {
    if ([(IFGraphicSymbolDescriptor *)self appearance]== 2)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

LABEL_5:
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = IFGraphicSymbolDescriptor;
  v4 = [(IFGraphicSymbolDescriptor *)&v12 description];
  [(IFGraphicSymbolDescriptor *)self size];
  v6 = v5;
  [(IFGraphicSymbolDescriptor *)self size];
  v8 = v7;
  [(IFSymbolImageDescriptor *)self scale];
  v10 = [v3 stringWithFormat:@"%@ - (%0.2f, %0.2f)@%.0fx", v4, v6, v8, v9];

  return v10;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)pointSize
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)symbolSize
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)symbolWeight
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)symbolOffset
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end