@interface CLKUIAnalogHandConfiguration
+ (id)defaultHourConfigurationForDevice:(id)device;
+ (id)defaultMinuteConfigurationForDevice:(id)device;
+ (id)defaultSecondConfigurationForDevice:(id)device;
+ (id)defaultSubdialConfigurationForDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (CGPoint)anchorPoint;
- (CGRect)bounds;
- (CGSize)directionalShadowOffset;
- (UIEdgeInsets)inlayInsets;
- (id)configurationByApplyingInset:(double)inset;
- (id)configurationByApplyingScale:(double)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)dropShadowCacheIdentifier;
- (id)handCacheIdentifier;
- (id)radialShadowCacheIdentifier;
- (unint64_t)hash;
- (void)copyToConfiguration:(id)configuration;
@end

@implementation CLKUIAnalogHandConfiguration

+ (id)defaultHourConfigurationForDevice:(id)device
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  ___LayoutConstants_block_invoke(device, &v5);
  v3 = objc_alloc_init(CLKUIAnalogHandConfiguration);
  [(CLKUIAnalogHandConfiguration *)v3 setType:0];
  [(CLKUIAnalogHandConfiguration *)v3 setInlayInsetRadius:*&v5];
  [(CLKUIAnalogHandConfiguration *)v3 setHandWidth:*(&v5 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setHandLength:*&v6];
  [(CLKUIAnalogHandConfiguration *)v3 setPegRadius:*(&v6 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setPegStrokeWidth:*&v7];
  [(CLKUIAnalogHandConfiguration *)v3 setArmWidth:*(&v7 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setArmLength:*&v8];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowOpacity:*&v9];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowRadius:*(&v8 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowOpacity:*&v10];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowRadius:*(&v9 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setDirectionalShadowOffset:*(&v10 + 1), *&v11];
  [(CLKUIAnalogHandConfiguration *)v3 setExcludePeg:0];
  [(CLKUIAnalogHandConfiguration *)v3 setSmoothingRadius:1.25];

  return v3;
}

+ (id)defaultMinuteConfigurationForDevice:(id)device
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  ___LayoutConstants_block_invoke(device, v5);
  v3 = objc_alloc_init(CLKUIAnalogHandConfiguration);
  [(CLKUIAnalogHandConfiguration *)v3 setType:0];
  [(CLKUIAnalogHandConfiguration *)v3 setInlayInsetRadius:*v5];
  [(CLKUIAnalogHandConfiguration *)v3 setHandWidth:*(&v6 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setHandLength:*&v7];
  [(CLKUIAnalogHandConfiguration *)v3 setPegRadius:*(&v7 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setPegStrokeWidth:*&v8];
  [(CLKUIAnalogHandConfiguration *)v3 setArmWidth:*(&v8 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setArmLength:*&v9];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowOpacity:*&v10];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowRadius:*(&v9 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowOpacity:*&v11];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowRadius:*(&v10 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setDirectionalShadowOffset:*(&v11 + 1), *&v12];
  [(CLKUIAnalogHandConfiguration *)v3 setExcludePeg:0];
  [(CLKUIAnalogHandConfiguration *)v3 setSmoothingRadius:1.25];

  return v3;
}

+ (id)defaultSecondConfigurationForDevice:(id)device
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  ___LayoutConstants_block_invoke(device, v5);
  v3 = objc_alloc_init(CLKUIAnalogHandConfiguration);
  [(CLKUIAnalogHandConfiguration *)v3 setType:1];
  [(CLKUIAnalogHandConfiguration *)v3 setHandWidth:*(&v6 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setHandLength:*&v7];
  [(CLKUIAnalogHandConfiguration *)v3 setPegRadius:*(&v7 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setPegStrokeWidth:*&v8];
  [(CLKUIAnalogHandConfiguration *)v3 setTailLength:*(&v8 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowOpacity:*(&v9 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowRadius:*&v9];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowOpacity:*(&v10 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowRadius:*&v10];
  [(CLKUIAnalogHandConfiguration *)v3 setDirectionalShadowOffset:v11];
  [(CLKUIAnalogHandConfiguration *)v3 setRoundedSecondHand:1];
  [(CLKUIAnalogHandConfiguration *)v3 setExcludeSecondTail:0];
  [(CLKUIAnalogHandConfiguration *)v3 setSmoothingRadius:1.25];

  return v3;
}

+ (id)defaultSubdialConfigurationForDevice:(id)device
{
  v11 = 0.0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  ___LayoutConstants_block_invoke(device, v5);
  v3 = objc_alloc_init(CLKUIAnalogHandConfiguration);
  [(CLKUIAnalogHandConfiguration *)v3 setType:1];
  [(CLKUIAnalogHandConfiguration *)v3 setHandWidth:*&v10];
  [(CLKUIAnalogHandConfiguration *)v3 setHandLength:*(&v10 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setPegRadius:0.0];
  [(CLKUIAnalogHandConfiguration *)v3 setPegStrokeWidth:v11];
  [(CLKUIAnalogHandConfiguration *)v3 setTailLength:*(&v6 + 1)];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowOpacity:0.0];
  [(CLKUIAnalogHandConfiguration *)v3 setDropShadowRadius:0.0];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowOpacity:0.0];
  [(CLKUIAnalogHandConfiguration *)v3 setRadialShadowRadius:0.0];
  [(CLKUIAnalogHandConfiguration *)v3 setDirectionalShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(CLKUIAnalogHandConfiguration *)v3 setRoundedSecondHand:1];
  [(CLKUIAnalogHandConfiguration *)v3 setExcludeSecondTail:1];
  [(CLKUIAnalogHandConfiguration *)v3 setSmoothingRadius:1.25];

  return v3;
}

- (CGPoint)anchorPoint
{
  type = self->_type;
  if (type == 1)
  {
    handLength = self->_handLength;
    goto LABEL_5;
  }

  if (!type)
  {
    handLength = self->_handLength + self->_armLength + self->_pegRadius + self->_pegStrokeWidth;
LABEL_5:
    [(CLKUIAnalogHandConfiguration *)self bounds];
    v5 = handLength / v4;
  }

  v6 = 0.5;
  result.y = v5;
  result.x = v6;
  return result;
}

- (CGRect)bounds
{
  type = self->_type;
  if (type == 1)
  {
    if (self->_excludeSecondTail)
    {
      v6 = self->_pegRadius + self->_pegStrokeWidth;
      tailLength = v6;
    }

    else
    {
      tailLength = self->_tailLength;
      v6 = self->_pegRadius + self->_pegStrokeWidth;
    }

    v5 = self->_handLength + tailLength;
    v8 = v6 + v6;
    if (self->_handWidth >= v8)
    {
      handWidth = self->_handWidth;
    }

    else
    {
      handWidth = v8;
    }
  }

  else if (!type)
  {
    v4 = self->_pegRadius + self->_pegStrokeWidth;
    handWidth = self->_handWidth;
    if (handWidth < v4 + v4)
    {
      handWidth = v4 + v4;
    }

    v5 = self->_handLength + self->_armLength + v4 * 2.0;
  }

  v9 = 0.0;
  v10 = 0.0;
  result.size.height = v5;
  result.size.width = handWidth;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (UIEdgeInsets)inlayInsets
{
  [(CLKUIAnalogHandConfiguration *)self inlayInsetRadius];
  type = self->_type;
  if (type == 1)
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else if (!type)
  {
    v5 = v3 + self->_armLength + (self->_pegRadius + self->_pegStrokeWidth) * 2.0;
    v4 = v3;
    v6 = v3;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)configurationByApplyingInset:(double)inset
{
  v5 = [(CLKUIAnalogHandConfiguration *)self copy];
  v6 = v5;
  type = self->_type;
  if (type == 1)
  {
    [v5 handWidth];
    [v6 setHandWidth:v16 + inset * -2.0];
    [v6 handLength];
    [v6 setHandLength:v17 - inset];
    [v6 tailLength];
    [v6 setTailLength:v18 - inset];
    [v6 pegRadius];
    if (v19 <= 0.0)
    {
      [v6 pegStrokeWidth];
      v22 = v30 - inset;
    }

    else
    {
      [v6 pegRadius];
      [v6 setPegRadius:v20 + inset];
      [v6 pegStrokeWidth];
      v22 = v21 + inset * -2.0;
    }

    [v6 setPegStrokeWidth:v22];
    [v6 smoothingRadius];
    if (v31 > 0.0)
    {
      [v6 smoothingRadius];
      [v6 setSmoothingRadius:v32 + inset];
    }

    [v6 handWidth];
    [v6 setHandWidth:{fmax(v33, 0.0)}];
    [v6 handLength];
    [v6 setHandLength:{fmax(v34, 0.0)}];
    [v6 tailLength];
    [v6 setTailLength:{fmax(v35, 0.0)}];
  }

  else
  {
    if (type)
    {
      goto LABEL_16;
    }

    [v5 handLength];
    [v6 setHandLength:v8 + inset * -2.0];
    [v6 handWidth];
    [v6 setHandWidth:v9 + inset * -2.0];
    [v6 armWidth];
    [v6 setArmWidth:v10 + inset * -2.0];
    [v6 armLength];
    [v6 setArmLength:v11 + inset * 2.0];
    [v6 pegRadius];
    if (v12 <= 0.0)
    {
      [v6 pegStrokeWidth];
      v15 = v23 - inset;
    }

    else
    {
      [v6 pegRadius];
      [v6 setPegRadius:v13 + inset];
      [v6 pegStrokeWidth];
      v15 = v14 + inset * -2.0;
    }

    [v6 setPegStrokeWidth:v15];
    [v6 smoothingRadius];
    if (v24 > 0.0)
    {
      [v6 smoothingRadius];
      [v6 setSmoothingRadius:v25 + inset];
    }

    [v6 handLength];
    [v6 setHandLength:{fmax(v26, 0.0)}];
    [v6 handWidth];
    [v6 setHandWidth:{fmax(v27, 0.0)}];
    [v6 armWidth];
    [v6 setArmWidth:{fmax(v28, 0.0)}];
    [v6 armLength];
    [v6 setArmLength:{fmax(v29, 0.0)}];
  }

  [v6 pegRadius];
  [v6 setPegRadius:{fmax(v36, 0.0)}];
  [v6 pegStrokeWidth];
  [v6 setPegStrokeWidth:{fmax(v37, 0.0)}];
LABEL_16:

  return v6;
}

- (id)configurationByApplyingScale:(double)scale
{
  v4 = [(CLKUIAnalogHandConfiguration *)self copy];
  [v4 handLength];
  [v4 setHandLength:v5 * scale];
  [v4 handWidth];
  [v4 setHandWidth:v6 * scale];
  [v4 armLength];
  [v4 setArmLength:v7 * scale];
  [v4 armWidth];
  [v4 setArmWidth:v8 * scale];
  [v4 pegStrokeWidth];
  [v4 setPegStrokeWidth:v9 * scale];
  [v4 pegRadius];
  [v4 setPegRadius:v10 * scale];
  [v4 tailLength];
  [v4 setTailLength:v11 * scale];
  [v4 smoothingRadius];
  [v4 setSmoothingRadius:v12 * scale];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(CLKUIAnalogHandConfiguration *)self copyToConfiguration:v4];
  return v4;
}

- (void)copyToConfiguration:(id)configuration
{
  type = self->_type;
  configurationCopy = configuration;
  [configurationCopy setType:type];
  [configurationCopy setInlayInsetRadius:self->_inlayInsetRadius];
  [configurationCopy setHandWidth:self->_handWidth];
  [configurationCopy setHandLength:self->_handLength];
  [configurationCopy setPegRadius:self->_pegRadius];
  [configurationCopy setPegStrokeWidth:self->_pegStrokeWidth];
  [configurationCopy setArmLength:self->_armLength];
  [configurationCopy setArmWidth:self->_armWidth];
  [configurationCopy setTailLength:self->_tailLength];
  [configurationCopy setDropShadowOpacity:self->_dropShadowOpacity];
  [configurationCopy setDropShadowRadius:self->_dropShadowRadius];
  [configurationCopy setRadialShadowOpacity:self->_radialShadowOpacity];
  [configurationCopy setRadialShadowRadius:self->_radialShadowRadius];
  [configurationCopy setDirectionalShadowOffset:{self->_directionalShadowOffset.width, self->_directionalShadowOffset.height}];
  [configurationCopy setRoundedSecondHand:self->_roundedSecondHand];
  [configurationCopy setExcludePeg:self->_excludePeg];
  [configurationCopy setExcludeSecondTail:self->_excludeSecondTail];
  [configurationCopy setSmoothingRadius:self->_smoothingRadius];
  [configurationCopy setRemoveInlay:self->_removeInlay];
  [configurationCopy setOutlineOnly:self->_outlineOnly];
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  type = self->_type;
  if (type == [configurationCopy type] && (inlayInsetRadius = self->_inlayInsetRadius, objc_msgSend(configurationCopy, "inlayInsetRadius"), inlayInsetRadius == v7) && (handWidth = self->_handWidth, objc_msgSend(configurationCopy, "handWidth"), handWidth == v9) && (handLength = self->_handLength, objc_msgSend(configurationCopy, "handLength"), handLength == v11) && (pegRadius = self->_pegRadius, objc_msgSend(configurationCopy, "pegRadius"), pegRadius == v13) && (pegStrokeWidth = self->_pegStrokeWidth, objc_msgSend(configurationCopy, "pegStrokeWidth"), pegStrokeWidth == v15) && (armLength = self->_armLength, objc_msgSend(configurationCopy, "armLength"), armLength == v17) && (armWidth = self->_armWidth, objc_msgSend(configurationCopy, "armWidth"), armWidth == v19) && (tailLength = self->_tailLength, objc_msgSend(configurationCopy, "tailLength"), tailLength == v21) && (roundedSecondHand = self->_roundedSecondHand, roundedSecondHand == objc_msgSend(configurationCopy, "roundedSecondHand")) && (excludePeg = self->_excludePeg, excludePeg == objc_msgSend(configurationCopy, "excludePeg")) && (excludeSecondTail = self->_excludeSecondTail, excludeSecondTail == objc_msgSend(configurationCopy, "excludeSecondTail")))
  {
    smoothingRadius = self->_smoothingRadius;
    [configurationCopy smoothingRadius];
    v27 = smoothingRadius == v26;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CLKUIAnalogHandConfiguration *)self isEqualToConfiguration:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  type = [(CLKUIAnalogHandConfiguration *)self type];
  [(CLKUIAnalogHandConfiguration *)self inlayInsetRadius];
  v5 = type ^ v4;
  [(CLKUIAnalogHandConfiguration *)self handWidth];
  v7 = v6;
  [(CLKUIAnalogHandConfiguration *)self handLength];
  v9 = v5 ^ v7 ^ v8;
  [(CLKUIAnalogHandConfiguration *)self pegRadius];
  v11 = v10;
  [(CLKUIAnalogHandConfiguration *)self pegStrokeWidth];
  v13 = v11 ^ v12;
  [(CLKUIAnalogHandConfiguration *)self armLength];
  v15 = v9 ^ v13 ^ v14;
  [(CLKUIAnalogHandConfiguration *)self armWidth];
  v17 = v16;
  [(CLKUIAnalogHandConfiguration *)self tailLength];
  v19 = v17 ^ v18;
  [(CLKUIAnalogHandConfiguration *)self dropShadowRadius];
  v21 = v19 ^ v20;
  [(CLKUIAnalogHandConfiguration *)self dropShadowOpacity];
  v23 = v15 ^ v21 ^ v22;
  [(CLKUIAnalogHandConfiguration *)self radialShadowRadius];
  v25 = v24;
  [(CLKUIAnalogHandConfiguration *)self radialShadowOpacity];
  v27 = v25 ^ v26;
  [(CLKUIAnalogHandConfiguration *)self directionalShadowOffset];
  v29 = v27 ^ v28;
  [(CLKUIAnalogHandConfiguration *)self directionalShadowOffset];
  v31 = v30;
  roundedSecondHand = [(CLKUIAnalogHandConfiguration *)self roundedSecondHand];
  excludePeg = [(CLKUIAnalogHandConfiguration *)self excludePeg];
  excludeSecondTail = [(CLKUIAnalogHandConfiguration *)self excludeSecondTail];
  [(CLKUIAnalogHandConfiguration *)self smoothingRadius];
  v36 = v35;
  if ([(CLKUIAnalogHandConfiguration *)self removeInlay])
  {
    v37 = 0x10000000;
  }

  else
  {
    v37 = 0;
  }

  outlineOnly = [(CLKUIAnalogHandConfiguration *)self outlineOnly];
  v39 = 0x20000000;
  if (!outlineOnly)
  {
    v39 = 0;
  }

  return v23 ^ v29 ^ roundedSecondHand ^ v31 ^ excludePeg ^ excludeSecondTail ^ v36 ^ v37 ^ v39;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(CLKUIAnalogHandConfiguration *)self type];
  [(CLKUIAnalogHandConfiguration *)self inlayInsetRadius];
  v33 = v5;
  [(CLKUIAnalogHandConfiguration *)self handWidth];
  v32 = v6;
  [(CLKUIAnalogHandConfiguration *)self handLength];
  v31 = v7;
  [(CLKUIAnalogHandConfiguration *)self pegRadius];
  v9 = v8;
  [(CLKUIAnalogHandConfiguration *)self pegStrokeWidth];
  v11 = v10;
  [(CLKUIAnalogHandConfiguration *)self armLength];
  v13 = v12;
  [(CLKUIAnalogHandConfiguration *)self armWidth];
  v15 = v14;
  [(CLKUIAnalogHandConfiguration *)self tailLength];
  v17 = v16;
  [(CLKUIAnalogHandConfiguration *)self directionalShadowOffset];
  v19 = v18;
  [(CLKUIAnalogHandConfiguration *)self directionalShadowOffset];
  v21 = v20;
  roundedSecondHand = [(CLKUIAnalogHandConfiguration *)self roundedSecondHand];
  excludePeg = [(CLKUIAnalogHandConfiguration *)self excludePeg];
  excludeSecondTail = [(CLKUIAnalogHandConfiguration *)self excludeSecondTail];
  [(CLKUIAnalogHandConfiguration *)self smoothingRadius];
  v26 = v25;
  if ([(CLKUIAnalogHandConfiguration *)self removeInlay])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  outlineOnly = [(CLKUIAnalogHandConfiguration *)self outlineOnly];
  v29 = @"NO:";
  if (outlineOnly)
  {
    v29 = @"YES";
  }

  return [v3 stringWithFormat:@"type:%lu-inlayInsetRadius:%f-handWidth:%f-handLength:%f-pegRadius:%f-pegStrokeWidth:%f-armLength:%f-armWidth:%f-tailLength:%f-directionalShadowOffset:%f/%f-roundedSecondHand:%i-excludePeg:%i-excludeSecondTail:%i-smoothingRadius:%f-removeInlay:%@-outlineOnly:%@", type, v33, v32, v31, v9, v11, v13, v15, v17, v19, v21, roundedSecondHand, excludePeg, excludeSecondTail, v26, v27, v29];
}

- (id)handCacheIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(CLKUIAnalogHandConfiguration *)self type];
  [(CLKUIAnalogHandConfiguration *)self inlayInsetRadius];
  v29 = v5;
  [(CLKUIAnalogHandConfiguration *)self handWidth];
  v28 = v6;
  [(CLKUIAnalogHandConfiguration *)self handLength];
  v27 = v7;
  [(CLKUIAnalogHandConfiguration *)self pegRadius];
  v9 = v8;
  [(CLKUIAnalogHandConfiguration *)self pegStrokeWidth];
  v11 = v10;
  [(CLKUIAnalogHandConfiguration *)self armLength];
  v13 = v12;
  [(CLKUIAnalogHandConfiguration *)self armWidth];
  v15 = v14;
  [(CLKUIAnalogHandConfiguration *)self tailLength];
  v17 = v16;
  [(CLKUIAnalogHandConfiguration *)self directionalShadowOffset];
  v19 = v18;
  [(CLKUIAnalogHandConfiguration *)self directionalShadowOffset];
  v21 = v20;
  roundedSecondHand = [(CLKUIAnalogHandConfiguration *)self roundedSecondHand];
  excludePeg = [(CLKUIAnalogHandConfiguration *)self excludePeg];
  excludeSecondTail = [(CLKUIAnalogHandConfiguration *)self excludeSecondTail];
  [(CLKUIAnalogHandConfiguration *)self smoothingRadius];
  return [v3 stringWithFormat:@"%lu-%f-%f-%f-%f-%f-%f-%f-%f-%f-%f-%i-%i-%i-%f-%d-%d", type, v29, v28, v27, v9, v11, v13, v15, v17, v19, v21, roundedSecondHand, excludePeg, excludeSecondTail, v25, -[CLKUIAnalogHandConfiguration removeInlay](self, "removeInlay") ^ 1, -[CLKUIAnalogHandConfiguration outlineOnly](self, "outlineOnly") ^ 1];
}

- (id)radialShadowCacheIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  handCacheIdentifier = [(CLKUIAnalogHandConfiguration *)self handCacheIdentifier];
  [(CLKUIAnalogHandConfiguration *)self radialShadowRadius];
  v6 = v5;
  [(CLKUIAnalogHandConfiguration *)self radialShadowOpacity];
  v8 = [v3 stringWithFormat:@"%@-%f-%f", handCacheIdentifier, v6, v7];

  return v8;
}

- (id)dropShadowCacheIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  handCacheIdentifier = [(CLKUIAnalogHandConfiguration *)self handCacheIdentifier];
  [(CLKUIAnalogHandConfiguration *)self dropShadowRadius];
  v6 = v5;
  [(CLKUIAnalogHandConfiguration *)self dropShadowOpacity];
  v8 = [v3 stringWithFormat:@"%@-%f-%f", handCacheIdentifier, v6, v7];

  return v8;
}

- (CGSize)directionalShadowOffset
{
  width = self->_directionalShadowOffset.width;
  height = self->_directionalShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end