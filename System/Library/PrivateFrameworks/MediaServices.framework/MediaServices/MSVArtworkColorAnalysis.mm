@interface MSVArtworkColorAnalysis
- (MSVArtworkColorAnalysis)initWithCoder:(id)coder;
- (id)_copyWithClass:(Class)class;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSVArtworkColorAnalysis

- (id)_copyWithClass:(Class)class
{
  v4 = objc_alloc_init(class);
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MSVArtworkColorAnalysis *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backgroundColorHex = [(MSVArtworkColorAnalysis *)self backgroundColorHex];
  [coderCopy encodeObject:backgroundColorHex forKey:@"backgroundColor"];

  [coderCopy encodeBool:-[MSVArtworkColorAnalysis isBackgroundColorLight](self forKey:{"isBackgroundColorLight"), @"backgroundColorLight"}];
  primaryTextColorHex = [(MSVArtworkColorAnalysis *)self primaryTextColorHex];
  [coderCopy encodeObject:primaryTextColorHex forKey:@"primaryTextColor"];

  [coderCopy encodeBool:-[MSVArtworkColorAnalysis isPrimaryTextColorLight](self forKey:{"isPrimaryTextColorLight"), @"primaryTextColorLight"}];
  secondaryTextColorHex = [(MSVArtworkColorAnalysis *)self secondaryTextColorHex];
  [coderCopy encodeObject:secondaryTextColorHex forKey:@"secondaryTextColor"];

  [coderCopy encodeBool:-[MSVArtworkColorAnalysis isSecondaryTextColorLight](self forKey:{"isSecondaryTextColorLight"), @"secondaryTextColorLight"}];
  tertiaryTextColorHex = [(MSVArtworkColorAnalysis *)self tertiaryTextColorHex];
  [coderCopy encodeObject:tertiaryTextColorHex forKey:@"tertiaryTextColor"];

  [coderCopy encodeBool:-[MSVArtworkColorAnalysis isTertiaryTextColorLight](self forKey:{"isTertiaryTextColorLight"), @"tertiaryTextColorLight"}];
}

- (MSVArtworkColorAnalysis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MSVArtworkColorAnalysis *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColorHex = v5->_backgroundColorHex;
    v5->_backgroundColorHex = v6;

    v5->_backgroundColorLight = [coderCopy decodeBoolForKey:@"backgroundColorLight"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryTextColor"];
    primaryTextColorHex = v5->_primaryTextColorHex;
    v5->_primaryTextColorHex = v8;

    v5->_primaryTextColorLight = [coderCopy decodeBoolForKey:@"primaryTextColorLight"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextColor"];
    secondaryTextColorHex = v5->_secondaryTextColorHex;
    v5->_secondaryTextColorHex = v10;

    v5->_secondaryTextColorLight = [coderCopy decodeBoolForKey:@"secondaryTextColorLight"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tertiaryTextColor"];
    tertiaryTextColorHex = v5->_tertiaryTextColorHex;
    v5->_tertiaryTextColorHex = v12;

    v5->_tertiaryTextColorLight = [coderCopy decodeBoolForKey:@"tertiaryTextColorLight"];
  }

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  backgroundColorHex = [(MSVArtworkColorAnalysis *)self backgroundColorHex];
  if ([(MSVArtworkColorAnalysis *)self isBackgroundColorLight])
  {
    v5 = @"Light";
  }

  else
  {
    v5 = @"Dark";
  }

  primaryTextColorHex = [(MSVArtworkColorAnalysis *)self primaryTextColorHex];
  if ([(MSVArtworkColorAnalysis *)self isPrimaryTextColorLight])
  {
    v7 = @"Light";
  }

  else
  {
    v7 = @"Dark";
  }

  secondaryTextColorHex = [(MSVArtworkColorAnalysis *)self secondaryTextColorHex];
  if ([(MSVArtworkColorAnalysis *)self isSecondaryTextColorLight])
  {
    v9 = @"Light";
  }

  else
  {
    v9 = @"Dark";
  }

  tertiaryTextColorHex = [(MSVArtworkColorAnalysis *)self tertiaryTextColorHex];
  if ([(MSVArtworkColorAnalysis *)self isTertiaryTextColorLight])
  {
    v11 = @"Light";
  }

  else
  {
    v11 = @"Dark";
  }

  v12 = [v15 stringWithFormat:@"<%@: %p> (\n  backgroundColor: %@ (%@)\n  primaryTextColor: %@ (%@)\n  secondaryTextColor: %@ (%@)\n  tertiaryTextColor: %@ (%@)\n)", v14, self, backgroundColorHex, v5, primaryTextColorHex, v7, secondaryTextColorHex, v9, tertiaryTextColorHex, v11];

  return v12;
}

@end