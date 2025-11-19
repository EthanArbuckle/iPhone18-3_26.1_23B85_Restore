@interface PKDynamicLayerConfiguration
- (PKDynamicLayerConfiguration)initWithCoder:(id)a3;
- (PKDynamicLayerConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDynamicLayerConfiguration

- (PKDynamicLayerConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v38.receiver = self;
    v38.super_class = PKDynamicLayerConfiguration;
    v5 = [(PKDynamicLayerConfiguration *)&v38 init];
    if (v5)
    {
      v6 = [v4 PKNumberForKey:@"version"];
      v7 = v6;
      if (v6)
      {
        v5->_version = [v6 unsignedIntegerValue];
        v5->_parallaxEnabled = [v4 PKBoolForKey:@"parallaxEnabled"];
        v8 = [v4 PKDictionaryForKey:@"backgroundParallaxEmitter"];
        if (v8)
        {
          v9 = [[PKDynamicLayerEmitterConfiguration alloc] initWithDictionary:v8];
          backgroundParallaxEmitter = v5->_backgroundParallaxEmitter;
          v5->_backgroundParallaxEmitter = v9;
        }

        v11 = [v4 PKDictionaryForKey:@"neutralEmitter"];
        v12 = v11;
        if (v8)
        {
          v13 = 1;
        }

        else
        {
          v13 = v11 == 0;
        }

        if (!v13)
        {
          v14 = [[PKDynamicLayerEmitterConfiguration alloc] initWithDictionary:v11];
          neutralEmitter = v5->_neutralEmitter;
          v5->_neutralEmitter = v14;
        }

        v16 = [v4 PKDictionaryForKey:@"foregroundParallaxEmitter"];
        v17 = v16;
        if (v8 | v12)
        {
          v18 = 1;
        }

        else
        {
          v18 = v16 == 0;
        }

        if (!v18)
        {
          v19 = [[PKDynamicLayerEmitterConfiguration alloc] initWithDictionary:v16];
          foregroundParallaxEmitter = v5->_foregroundParallaxEmitter;
          v5->_foregroundParallaxEmitter = v19;
        }

        v21 = [v4 PKDictionaryForKey:@"staticOverlayEmitter"];
        v22 = v21;
        if (v17)
        {
          v23 = 1;
        }

        else
        {
          v23 = (v8 | v12) != 0;
        }

        if (!v23 && v21)
        {
          v24 = [[PKDynamicLayerEmitterConfiguration alloc] initWithDictionary:v21];
          staticOverlayEmitter = v5->_staticOverlayEmitter;
          v5->_staticOverlayEmitter = v24;
        }

        v26 = [PKDynamicLayerTransactionEffectConfiguration alloc];
        v27 = [v4 PKDictionaryForKey:@"transactionEffect"];
        v28 = [(PKDynamicLayerTransactionEffectConfiguration *)v26 initWithDictionary:v27];
        transactionEffect = v5->_transactionEffect;
        v5->_transactionEffect = v28;

        v30 = [PKDynamicLayerCrossDissolveConfiguration alloc];
        v31 = [v4 PKDictionaryForKey:@"crossDissolve"];
        v32 = [(PKDynamicLayerCrossDissolveConfiguration *)v30 initWithDictionary:v31];
        crossDissolve = v5->_crossDissolve;
        v5->_crossDissolve = v32;
      }

      else
      {
        v35 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_1AD337000, v35, OS_LOG_TYPE_DEFAULT, "No dynamic layer version included, default to unsupported", v37, 2u);
        }

        v5->_version = 0;
      }
    }

    self = v5;
    v34 = self;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (PKDynamicLayerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKDynamicLayerConfiguration;
  v5 = [(PKDynamicLayerConfiguration *)&v13 init];
  if (v5)
  {
    -[PKDynamicLayerConfiguration setVersion:](v5, "setVersion:", [v4 decodeIntegerForKey:@"version"]);
    -[PKDynamicLayerConfiguration setParallaxEnabled:](v5, "setParallaxEnabled:", [v4 decodeBoolForKey:@"parallaxEnabled"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundParallaxEmitter"];
    [(PKDynamicLayerConfiguration *)v5 setBackgroundParallaxEmitter:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"neutralEmitter"];
    [(PKDynamicLayerConfiguration *)v5 setNeutralEmitter:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundParallaxEmitter"];
    [(PKDynamicLayerConfiguration *)v5 setForegroundParallaxEmitter:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"staticOverlayEmitter"];
    [(PKDynamicLayerConfiguration *)v5 setStaticOverlayEmitter:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionEffect"];
    [(PKDynamicLayerConfiguration *)v5 setTransactionEffect:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crossDissolve"];
    [(PKDynamicLayerConfiguration *)v5 setCrossDissolve:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeBool:self->_parallaxEnabled forKey:@"parallaxEnabled"];
  [v5 encodeObject:self->_backgroundParallaxEmitter forKey:@"backgroundParallaxEmitter"];
  [v5 encodeObject:self->_neutralEmitter forKey:@"neutralEmitter"];
  [v5 encodeObject:self->_foregroundParallaxEmitter forKey:@"foregroundParallaxEmitter"];
  [v5 encodeObject:self->_staticOverlayEmitter forKey:@"staticOverlayEmitter"];
  [v5 encodeObject:self->_transactionEffect forKey:@"transactionEffect"];
  [v5 encodeObject:self->_crossDissolve forKey:@"crossDissolve"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKDynamicLayerConfiguration allocWithZone:](PKDynamicLayerConfiguration init];
  v5->_version = self->_version;
  v5->_parallaxEnabled = self->_parallaxEnabled;
  v6 = [(PKDynamicLayerEmitterConfiguration *)self->_backgroundParallaxEmitter copyWithZone:a3];
  backgroundParallaxEmitter = v5->_backgroundParallaxEmitter;
  v5->_backgroundParallaxEmitter = v6;

  v8 = [(PKDynamicLayerEmitterConfiguration *)self->_neutralEmitter copyWithZone:a3];
  neutralEmitter = v5->_neutralEmitter;
  v5->_neutralEmitter = v8;

  v10 = [(PKDynamicLayerEmitterConfiguration *)self->_foregroundParallaxEmitter copyWithZone:a3];
  foregroundParallaxEmitter = v5->_foregroundParallaxEmitter;
  v5->_foregroundParallaxEmitter = v10;

  v12 = [(PKDynamicLayerEmitterConfiguration *)self->_staticOverlayEmitter copyWithZone:a3];
  staticOverlayEmitter = v5->_staticOverlayEmitter;
  v5->_staticOverlayEmitter = v12;

  v14 = [(PKDynamicLayerTransactionEffectConfiguration *)self->_transactionEffect copyWithZone:a3];
  transactionEffect = v5->_transactionEffect;
  v5->_transactionEffect = v14;

  v16 = [(PKDynamicLayerCrossDissolveConfiguration *)self->_crossDissolve copyWithZone:a3];
  crossDissolve = v5->_crossDissolve;
  v5->_crossDissolve = v16;

  return v5;
}

@end