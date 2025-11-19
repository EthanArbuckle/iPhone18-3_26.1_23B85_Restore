@interface PBUIWallpaperEffectConfiguration
+ (id)normal;
- (BOOL)affectedByContentColorChanges;
- (BOOL)affectedByUserInterfaceStyleChanges;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresMaterialKitRendering;
- (double)backdropParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithStyle:(void *)a3 contentColor:(uint64_t)a4 userInterfaceStyle:;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)includeTint;
- (unint64_t)hash;
- (void)configurationByRemovingTint;
- (void)configurationWithUserInterfaceStyle:(void *)a1;
- (void)uniqueIdentifier;
@end

@implementation PBUIWallpaperEffectConfiguration

- (void)uniqueIdentifier
{
  v1 = a1;
  if (a1)
  {
    if (*(a1 + 11))
    {
      v2 = MEMORY[0x277CCACA8];
      v3 = PBUIWallpaperStyleDescription(*(a1 + 2));
      v4 = v3;
      v5 = v1[3];
      v6 = @"Unspecified";
      if (v5 == 2)
      {
        v6 = @"Dark";
      }

      if (v5 == 1)
      {
        v7 = @"Light";
      }

      else
      {
        v7 = v6;
      }

      v1 = [v2 stringWithFormat:@"%@_%@", v3, v7];
    }

    else
    {
      LODWORD(v8) = *(a1 + 10);
      LODWORD(v9) = *(a1 + 12);
      v10 = a1[7];
      v11 = a1[8];
      v12 = a1[9];
      v13 = a1[10];
      if (v10 == 1.79769313e308)
      {
        v10 = 0.0;
      }

      if (v11 == 1.79769313e308)
      {
        v11 = 0.0;
      }

      if (v12 == 1.79769313e308)
      {
        v12 = 0.0;
      }

      if (v13 == 1.79769313e308)
      {
        v13 = 0.0;
      }

      if (*(a1 + 8))
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      if (*(a1 + 8))
      {
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d:%d:%d:%1.1f:%d:%1.1f:%1.1f", *(a1 + 4), v8, v9, *&v11, v10, *&v12, *&v13];
      v14 = MEMORY[0x277CCACA8];
      v15 = PBUIWallpaperStyleDescription(v1[2]);
      v16 = v15;
      if (*(v1 + 8))
      {
        v17 = @"tinted";
      }

      else
      {
        v17 = @"untinted";
      }

      v1 = [v14 stringWithFormat:@"%@_%@_%@", v15, v17, v4];
    }
  }

  return v1;
}

+ (id)normal
{
  objc_opt_self();
  v0 = [PBUIWallpaperEffectConfiguration alloc];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [(PBUIWallpaperEffectConfiguration *)v0 initWithStyle:v1 contentColor:0 userInterfaceStyle:?];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PBUIWallpaperEffectConfiguration);
  v5 = v4;
  if (v4)
  {
    v4->_style = self->_style;
    v6 = *&self->_backdropParameters.backdropStyle;
    v7 = *&self->_backdropParameters.renderingHint;
    v8 = *&self->_backdropParameters.grayscaleTintAlpha;
    *&v4->_backdropParameters.saturationDeltaFactor = *&self->_backdropParameters.saturationDeltaFactor;
    *&v4->_backdropParameters.grayscaleTintAlpha = v8;
    *&v4->_backdropParameters.backdropStyle = v6;
    *&v4->_backdropParameters.renderingHint = v7;
    v4->_includeTint = self->_includeTint;
    v4->_userInterfaceStyle = self->_userInterfaceStyle;
    v9 = v4;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && v9->_style == self->_style)
    {
      v10 = 24;
      if (!v9->_backdropParameters.materialStyle)
      {
        v10 = 48;
      }

      v8 = *(&v9->super.isa + v10) == *(&self->super.isa + v10);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (double)backdropParameters
{
  if (a1)
  {
    v2 = a1[3];
    *a2 = a1[2];
    a2[1] = v2;
    v3 = a1[4];
    v4 = a1[5];
    a2[2] = v3;
    a2[3] = v4;
  }

  else
  {
    *&v3 = 0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_style];
  v5 = [v3 appendBool:self->_includeTint];
  v6 = [v3 appendInteger:self->_backdropParameters.renderingHint];
  v7 = [v3 appendInteger:self->_userInterfaceStyle];
  v8 = [v3 hash];

  return v8;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperEffectConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = PBUIWallpaperStyleDescription(self->_style);
  [v4 appendString:v5 withName:@"style"];

  v6 = [v4 appendBool:self->_includeTint withName:@"includeTint"];
  v7 = [v4 appendBool:self->_userInterfaceStyle != 0 withName:@"affectedByUserInterfaceStyleChanges"];
  userInterfaceStyle = self->_userInterfaceStyle;
  if (userInterfaceStyle)
  {
    v9 = @"Unspecified";
    if (userInterfaceStyle == 2)
    {
      v9 = @"Dark";
    }

    if (userInterfaceStyle == 1)
    {
      v10 = @"Light";
    }

    else
    {
      v10 = v9;
    }

    [v4 appendString:v10 withName:@"userInterfaceStyle"];
  }

  materialStyle = self->_backdropParameters.materialStyle;
  if (materialStyle)
  {
    v12 = PBUIStringForWallpaperMaterialStyle(materialStyle);
    v13 = @"materialStyle";
  }

  else
  {
    v14 = *&self->_backdropParameters.renderingHint;
    v17[0] = *&self->_backdropParameters.backdropStyle;
    v17[1] = v14;
    v15 = *&self->_backdropParameters.grayscaleTintAlpha;
    v17[2] = *&self->_backdropParameters.saturationDeltaFactor;
    v17[3] = v15;
    v12 = PBUIStringForWallpaperBackdropParameters(v17);
    v13 = @"backdropParameters";
  }

  [v4 appendString:v12 withName:v13];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperEffectConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PBUIWallpaperEffectConfiguration_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_2783622E0;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [v4 appendProem:self block:v7];
  v5 = v4;

  return v4;
}

void __62__PBUIWallpaperEffectConfiguration_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PBUIWallpaperStyleDescription(*(*(a1 + 40) + 16));
  [v1 appendString:v2 withName:0];
}

- (id)initWithStyle:(void *)a3 contentColor:(uint64_t)a4 userInterfaceStyle:
{
  v7 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PBUIWallpaperEffectConfiguration;
    v8 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v8;
    if (v8)
    {
      v8[2] = a2;
      _WallpaperBackdropParametersForStyleAndAverageColor(a2, v7, v14);
      v10 = v14[2];
      v9 = v14[3];
      v11 = v14[1];
      *(a1 + 2) = v14[0];
      *(a1 + 3) = v11;
      *(a1 + 4) = v10;
      *(a1 + 5) = v9;
      *(a1 + 8) = _WallpaperStyleHasTint(a2);
      if (_WallpaperStyleUpdatesWithUserInterfaceStyle(a2))
      {
        v12 = a4;
      }

      else
      {
        v12 = 0;
      }

      *(a1 + 3) = v12;
    }
  }

  return a1;
}

- (BOOL)affectedByContentColorChanges
{
  if (result)
  {
    return *(result + 88) == 0;
  }

  return result;
}

- (BOOL)requiresMaterialKitRendering
{
  if (result)
  {
    return *(result + 88) != 0;
  }

  return result;
}

- (BOOL)affectedByUserInterfaceStyleChanges
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (void)configurationWithUserInterfaceStyle:(void *)a1
{
  if (a1)
  {
    v4 = a1;
    a1 = [a1 copy];
    if (v4[3])
    {
      a1[3] = a2;
    }

    v2 = vars8;
  }

  return a1;
}

- (void)configurationByRemovingTint
{
  if (a1)
  {
    v2 = _WallpaperStyleByRemovingTintFromStyle(a1[2]);
    if (v2 == a1[2])
    {
      v3 = [a1 copy];
    }

    else
    {
      v5 = v2;
      v6 = [PBUIWallpaperEffectConfiguration alloc];
      v7 = [MEMORY[0x277D75348] blackColor];
      v3 = [(PBUIWallpaperEffectConfiguration *)v6 initWithStyle:v5 contentColor:v7 userInterfaceStyle:a1[3]];

      v3[6] = a1[6];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)includeTint
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end