@interface PKDynamicLayerEmitterConfiguration
- (PKDynamicLayerEmitterConfiguration)initWithCoder:(id)a3;
- (PKDynamicLayerEmitterConfiguration)initWithDictionary:(id)a3;
- (float)_emitterBirthrate;
- (float)_emitterScaleWithPixelSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureEmitterLayer:(id)a3 withBounds:(CGRect)a4;
- (void)configureEmitterLayer:(id)a3 withImage:(CGImage *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDynamicLayerEmitterConfiguration

- (float)_emitterBirthrate
{
  density = self->_density;
  result = 0.0;
  if (density <= 2)
  {
    return flt_1ADB9B3C8[density];
  }

  return result;
}

- (PKDynamicLayerEmitterConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v42.receiver = self;
    v42.super_class = PKDynamicLayerEmitterConfiguration;
    v5 = [(PKDynamicLayerEmitterConfiguration *)&v42 init];
    if (!v5)
    {
LABEL_35:
      self = v5;
      v10 = self;
      goto LABEL_36;
    }

    v6 = [v4 PKStringForKey:@"style"];
    v7 = v6;
    if (v6 == @"twinkling")
    {
      goto LABEL_6;
    }

    if (!v6)
    {
      goto LABEL_20;
    }

    v8 = [(__CFString *)v6 isEqualToString:@"twinkling"];

    if (v8)
    {
LABEL_6:
      v9 = 0;
      goto LABEL_21;
    }

    v11 = v7;
    if (v11 == @"falling" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"falling"], v12, (v13 & 1) != 0))
    {
      v9 = 1;
      goto LABEL_21;
    }

    v14 = v12;
    if (v14 == @"blooming" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"blooming"], v15, (v16 & 1) != 0))
    {
      v9 = 2;
      goto LABEL_21;
    }

    v17 = v15;
    if (v17 == @"rising" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"rising"], v18, (v19 & 1) != 0))
    {
      v9 = 3;
      goto LABEL_21;
    }

    v20 = v18;
    if (v20 == @"shooting" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"shooting"], v21, v22))
    {
      v9 = 4;
    }

    else
    {
LABEL_20:
      v9 = 5;
    }

LABEL_21:

    v5->_style = v9;
    v23 = [v4 PKStringForKey:@"density"];
    v24 = v23;
    if (v23 == @"low" || v23 == 0)
    {
      goto LABEL_26;
    }

    v26 = [(__CFString *)v23 isEqualToString:@"low"];

    if (v26)
    {
      goto LABEL_26;
    }

    v36 = v24;
    if (v36 == @"medium" || (v37 = v36, v38 = [(__CFString *)v36 isEqualToString:@"medium"], v37, (v38 & 1) != 0))
    {
      v27 = 1;
    }

    else
    {
      v39 = v37;
      if (v39 != @"high")
      {
        v40 = v39;
        v41 = [(__CFString *)v39 isEqualToString:@"high"];

        if (!v41)
        {
LABEL_26:
          v27 = 0;
          goto LABEL_27;
        }
      }

      v27 = 2;
    }

LABEL_27:

    v5->_density = v27;
    v28 = [v4 PKStringForKey:@"physicsEffect"];
    v29 = v28;
    v30 = 0;
    if (v28 != @"off" && v28)
    {
      v31 = [(__CFString *)v28 isEqualToString:@"off"];

      v30 = 0;
      if ((v31 & 1) == 0)
      {
        v32 = v29;
        if (v32 == @"turbulence" || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"turbulence"], v33, v34))
        {
          v30 = 1;
        }
      }
    }

    v5->_physicsEffect = v30;
    goto LABEL_35;
  }

  v10 = 0;
LABEL_36:

  return v10;
}

- (void)configureEmitterLayer:(id)a3 withImage:(CGImage *)a4
{
  v46[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    goto LABEL_20;
  }

  v7 = [MEMORY[0x1E6979360] emitterCell];
  [v7 setContents:a4];
  [(PKDynamicLayerEmitterConfiguration *)self _emitterBirthrate];
  [v7 setBirthRate:?];
  Width = CGImageGetWidth(a4);
  [(PKDynamicLayerEmitterConfiguration *)self _emitterScaleWithPixelSize:Width, CGImageGetHeight(a4)];
  [v7 setScale:v9];
  [v6 setEmitterMode:*MEMORY[0x1E69797C8]];
  [v6 setEmitterShape:*MEMORY[0x1E69797B0]];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  style = self->_style;
  if (style <= 1)
  {
    if (style)
    {
      if (style == 1)
      {
        [v7 setParticleType:*MEMORY[0x1E6979770]];
        LODWORD(v22) = 10.0;
        [v7 setLifetime:v22];
        LODWORD(v23) = 2.0;
        [v7 setLifetimeRange:v23];
        [v7 setYAcceleration:5.0];
        [v7 setOrientationRange:180.0];
        [v7 setSpin:4.0];
        [v7 setSpinRange:2.0];
        v17 = PKCreateDynamicLayerOpacityBehavior(&unk_1F23B44C0);
        [v10 addObject:v17];
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    LODWORD(v11) = 3.0;
    [v7 setLifetime:v11];
    LODWORD(v33) = 3.0;
    [v7 setLifetimeRange:v33];
    v34 = PKCreateDynamicLayerOpacityBehavior(&unk_1F23B44A8);
    [v10 addObject:v34];

    v46[0] = &unk_1F23B7090;
    v35 = MEMORY[0x1E696AD98];
    [v7 scale];
    v17 = [v35 numberWithDouble:?];
    v46[1] = v17;
    v46[2] = &unk_1F23B7090;
    v27 = MEMORY[0x1E695DEC8];
    v28 = v46;
    v32 = 3;
LABEL_14:
    v19 = [v27 arrayWithObjects:v28 count:v32];
    v20 = PKCreateDynamicLayerScaleBehavior(v19);
    [v10 addObject:v20];
    goto LABEL_15;
  }

  switch(style)
  {
    case 2:
      LODWORD(v11) = 4.0;
      [v7 setLifetime:v11];
      LODWORD(v24) = 1.0;
      [v7 setLifetimeRange:v24];
      v25 = PKCreateDynamicLayerOpacityBehavior(&unk_1F23B44D8);
      [v10 addObject:v25];

      v45[0] = &unk_1F23B7090;
      v26 = MEMORY[0x1E696AD98];
      [v7 scale];
      v17 = [v26 numberWithDouble:?];
      v45[1] = v17;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v45;
LABEL_12:
      v32 = 2;
      goto LABEL_14;
    case 3:
      LODWORD(v11) = 4.0;
      [v7 setLifetime:v11];
      LODWORD(v29) = 4.0;
      [v7 setLifetimeRange:v29];
      [v7 setYAcceleration:-10.0];
      v30 = PKCreateDynamicLayerOpacityBehavior(&unk_1F23B44F0);
      [v10 addObject:v30];

      v44[0] = &unk_1F23B7090;
      v31 = MEMORY[0x1E696AD98];
      [v7 scale];
      v17 = [v31 numberWithDouble:?];
      v44[1] = v17;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v44;
      goto LABEL_12;
    case 4:
      LODWORD(v11) = 5.0;
      [v7 setLifetime:v11];
      LODWORD(v13) = 5.0;
      [v7 setLifetimeRange:v13];
      [v7 setEmissionRange:3.14159265];
      [v7 setVelocity:100.0];
      [v7 setSpinRange:4.0];
      v14 = PKCreateDynamicLayerOpacityBehavior(&unk_1F23B4508);
      [v10 addObject:v14];

      v15 = MEMORY[0x1E696AD98];
      [v7 scale];
      v17 = [v15 numberWithDouble:v16 * 0.5];
      v43[0] = v17;
      v18 = MEMORY[0x1E696AD98];
      [v7 scale];
      v19 = [v18 numberWithDouble:?];
      v43[1] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
      v21 = PKCreateDynamicLayerScaleBehavior(v20);
      [v10 addObject:v21];

LABEL_15:
      goto LABEL_16;
  }

LABEL_17:
  if (self->_physicsEffect == 1)
  {
    v36 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979768]];
    v37 = [MEMORY[0x1E696B098] valueWithCAPoint3D:{10.0, 10.0, 10.0}];
    [v36 setValue:v37 forKey:@"force"];

    LODWORD(v38) = 0.25;
    v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
    [v36 setValue:v39 forKey:@"frequency"];

    [v10 addObject:v36];
  }

  v42 = v7;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  [v6 setEmitterCells:v40];

  v41 = [v10 copy];
  [v6 setEmitterBehaviors:v41];

LABEL_20:
}

- (void)configureEmitterLayer:(id)a3 withBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  style = self->_style;
  if (style - 2 < 3 || style == 0)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v13 = v9;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    [v13 setEmitterPosition:{MidX, CGRectGetMidY(v16)}];
LABEL_7:
    [v13 setEmitterSize:{width, height}];
    v9 = v13;
    goto LABEL_8;
  }

  if (style == 1)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v13 = v9;
    [v9 setEmitterPosition:{CGRectGetMidX(v17), height * -0.2}];
    height = height * 0.4;
    goto LABEL_7;
  }

LABEL_8:
}

- (float)_emitterScaleWithPixelSize:(CGSize)a3
{
  density = self->_density;
  v4 = 0.0;
  if (density <= 2)
  {
    v4 = dbl_1ADB9B3D8[density];
  }

  return v4 / fmax(a3.width, a3.height);
}

- (PKDynamicLayerEmitterConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKDynamicLayerEmitterConfiguration;
  v5 = [(PKDynamicLayerEmitterConfiguration *)&v7 init];
  if (v5)
  {
    -[PKDynamicLayerEmitterConfiguration setStyle:](v5, "setStyle:", [v4 decodeIntegerForKey:@"emitterStyle"]);
    -[PKDynamicLayerEmitterConfiguration setDensity:](v5, "setDensity:", [v4 decodeIntegerForKey:@"emitterDensity"]);
    -[PKDynamicLayerEmitterConfiguration setPhysicsEffect:](v5, "setPhysicsEffect:", [v4 decodeIntegerForKey:@"emitterPhysicsEffect"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"emitterStyle"];
  [v5 encodeInteger:self->_density forKey:@"emitterDensity"];
  [v5 encodeInteger:self->_physicsEffect forKey:@"emitterPhysicsEffect"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PKDynamicLayerEmitterConfiguration allocWithZone:?]];
  *(result + 2) = self->_style;
  *(result + 3) = self->_density;
  *(result + 4) = self->_physicsEffect;
  return result;
}

@end