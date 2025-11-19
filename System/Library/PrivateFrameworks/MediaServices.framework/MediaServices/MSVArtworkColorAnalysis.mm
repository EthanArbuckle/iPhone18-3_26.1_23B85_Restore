@interface MSVArtworkColorAnalysis
- (MSVArtworkColorAnalysis)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSVArtworkColorAnalysis

- (id)_copyWithClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_backgroundColorHex);
    *(v5 + 16) = self->_backgroundColorLight;
    objc_storeStrong(v5 + 3, self->_primaryTextColorHex);
    *(v5 + 32) = self->_primaryTextColorLight;
    objc_storeStrong(v5 + 5, self->_secondaryTextColorHex);
    *(v5 + 48) = self->_secondaryTextColorLight;
    objc_storeStrong(v5 + 7, self->_tertiaryTextColorHex);
    *(v5 + 64) = self->_tertiaryTextColorLight;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MSVArtworkColorAnalysis *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MSVArtworkColorAnalysis *)self backgroundColorHex];
  [v8 encodeObject:v4 forKey:@"backgroundColor"];

  [v8 encodeBool:-[MSVArtworkColorAnalysis isBackgroundColorLight](self forKey:{"isBackgroundColorLight"), @"backgroundColorLight"}];
  v5 = [(MSVArtworkColorAnalysis *)self primaryTextColorHex];
  [v8 encodeObject:v5 forKey:@"primaryTextColor"];

  [v8 encodeBool:-[MSVArtworkColorAnalysis isPrimaryTextColorLight](self forKey:{"isPrimaryTextColorLight"), @"primaryTextColorLight"}];
  v6 = [(MSVArtworkColorAnalysis *)self secondaryTextColorHex];
  [v8 encodeObject:v6 forKey:@"secondaryTextColor"];

  [v8 encodeBool:-[MSVArtworkColorAnalysis isSecondaryTextColorLight](self forKey:{"isSecondaryTextColorLight"), @"secondaryTextColorLight"}];
  v7 = [(MSVArtworkColorAnalysis *)self tertiaryTextColorHex];
  [v8 encodeObject:v7 forKey:@"tertiaryTextColor"];

  [v8 encodeBool:-[MSVArtworkColorAnalysis isTertiaryTextColorLight](self forKey:{"isTertiaryTextColorLight"), @"tertiaryTextColorLight"}];
}

- (MSVArtworkColorAnalysis)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSVArtworkColorAnalysis *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColorHex = v5->_backgroundColorHex;
    v5->_backgroundColorHex = v6;

    v5->_backgroundColorLight = [v4 decodeBoolForKey:@"backgroundColorLight"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryTextColor"];
    primaryTextColorHex = v5->_primaryTextColorHex;
    v5->_primaryTextColorHex = v8;

    v5->_primaryTextColorLight = [v4 decodeBoolForKey:@"primaryTextColorLight"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextColor"];
    secondaryTextColorHex = v5->_secondaryTextColorHex;
    v5->_secondaryTextColorHex = v10;

    v5->_secondaryTextColorLight = [v4 decodeBoolForKey:@"secondaryTextColorLight"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tertiaryTextColor"];
    tertiaryTextColorHex = v5->_tertiaryTextColorHex;
    v5->_tertiaryTextColorHex = v12;

    v5->_tertiaryTextColorLight = [v4 decodeBoolForKey:@"tertiaryTextColorLight"];
  }

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v4 = [(MSVArtworkColorAnalysis *)self backgroundColorHex];
  if ([(MSVArtworkColorAnalysis *)self isBackgroundColorLight])
  {
    v5 = @"Light";
  }

  else
  {
    v5 = @"Dark";
  }

  v6 = [(MSVArtworkColorAnalysis *)self primaryTextColorHex];
  if ([(MSVArtworkColorAnalysis *)self isPrimaryTextColorLight])
  {
    v7 = @"Light";
  }

  else
  {
    v7 = @"Dark";
  }

  v8 = [(MSVArtworkColorAnalysis *)self secondaryTextColorHex];
  if ([(MSVArtworkColorAnalysis *)self isSecondaryTextColorLight])
  {
    v9 = @"Light";
  }

  else
  {
    v9 = @"Dark";
  }

  v10 = [(MSVArtworkColorAnalysis *)self tertiaryTextColorHex];
  if ([(MSVArtworkColorAnalysis *)self isTertiaryTextColorLight])
  {
    v11 = @"Light";
  }

  else
  {
    v11 = @"Dark";
  }

  v12 = [v15 stringWithFormat:@"<%@: %p> (\n  backgroundColor: %@ (%@)\n  primaryTextColor: %@ (%@)\n  secondaryTextColor: %@ (%@)\n  tertiaryTextColor: %@ (%@)\n)", v14, self, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end