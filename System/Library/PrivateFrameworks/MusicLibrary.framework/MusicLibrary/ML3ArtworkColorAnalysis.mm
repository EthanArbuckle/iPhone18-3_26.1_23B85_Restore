@interface ML3ArtworkColorAnalysis
- (ML3ArtworkColorAnalysis)initWithCoder:(id)coder;
- (ML3ArtworkColorAnalysis)initWithColorAnalysis:(id)analysis;
- (ML3ArtworkColorAnalysis)initWithColorAnalysisDictionary:(id)dictionary;
- (id)dictRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ArtworkColorAnalysis

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backgroundColor = [(ML3ArtworkColorAnalysis *)self backgroundColor];
  [coderCopy encodeObject:backgroundColor forKey:@"backgroundColor"];

  [coderCopy encodeBool:-[ML3ArtworkColorAnalysis isBackgroundColorLight](self forKey:{"isBackgroundColorLight"), @"backgroundColorLight"}];
  primaryTextColor = [(ML3ArtworkColorAnalysis *)self primaryTextColor];
  [coderCopy encodeObject:primaryTextColor forKey:@"primaryTextColor"];

  [coderCopy encodeBool:-[ML3ArtworkColorAnalysis isPrimaryTextColorLight](self forKey:{"isPrimaryTextColorLight"), @"primaryTextColorLight"}];
  secondaryTextColor = [(ML3ArtworkColorAnalysis *)self secondaryTextColor];
  [coderCopy encodeObject:secondaryTextColor forKey:@"secondaryTextColor"];

  [coderCopy encodeBool:-[ML3ArtworkColorAnalysis isSecondaryTextColorLight](self forKey:{"isSecondaryTextColorLight"), @"secondaryTextColorLight"}];
  tertiaryTextColor = [(ML3ArtworkColorAnalysis *)self tertiaryTextColor];
  [coderCopy encodeObject:tertiaryTextColor forKey:@"tertiaryTextColor"];

  [coderCopy encodeBool:-[ML3ArtworkColorAnalysis isTertiaryTextColorLight](self forKey:{"isTertiaryTextColorLight"), @"tertiaryTextColorLight"}];
}

- (ML3ArtworkColorAnalysis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ML3ArtworkColorAnalysis *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v5->_backgroundColorLight = [coderCopy decodeBoolForKey:@"backgroundColorLight"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryTextColor"];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v8;

    v5->_primaryTextColorLight = [coderCopy decodeBoolForKey:@"primaryTextColorLight"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextColor"];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v10;

    v5->_secondaryTextColorLight = [coderCopy decodeBoolForKey:@"secondaryTextColorLight"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tertiaryTextColor"];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = v12;

    v5->_tertiaryTextColorLight = [coderCopy decodeBoolForKey:@"tertiaryTextColorLight"];
  }

  return v5;
}

- (id)dictRepresentation
{
  v14[8] = *MEMORY[0x277D85DE8];
  v13[0] = @"backgroundColor";
  backgroundColor = [(ML3ArtworkColorAnalysis *)self backgroundColor];
  v14[0] = backgroundColor;
  v13[1] = @"primaryTextColor";
  primaryTextColor = [(ML3ArtworkColorAnalysis *)self primaryTextColor];
  v14[1] = primaryTextColor;
  v13[2] = @"secondaryTextColor";
  secondaryTextColor = [(ML3ArtworkColorAnalysis *)self secondaryTextColor];
  v14[2] = secondaryTextColor;
  v13[3] = @"tertiaryTextColor";
  tertiaryTextColor = [(ML3ArtworkColorAnalysis *)self tertiaryTextColor];
  v14[3] = tertiaryTextColor;
  v13[4] = @"backgroundColorLight";
  if ([(ML3ArtworkColorAnalysis *)self isBackgroundColorLight])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v14[4] = v7;
  v13[5] = @"primaryTextColorLight";
  if ([(ML3ArtworkColorAnalysis *)self isPrimaryTextColorLight])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v14[5] = v8;
  v13[6] = @"secondaryTextColorLight";
  if ([(ML3ArtworkColorAnalysis *)self isSecondaryTextColorLight])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v14[6] = v9;
  v13[7] = @"tertiaryTextColorLight";
  if ([(ML3ArtworkColorAnalysis *)self isTertiaryTextColorLight])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v14[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

- (ML3ArtworkColorAnalysis)initWithColorAnalysisDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ML3ArtworkColorAnalysis;
  v5 = [(ML3ArtworkColorAnalysis *)&v20 init];
  if (v5)
  {
    if (!dictionaryCopy)
    {
      v18 = 0;
      goto LABEL_6;
    }

    v6 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"primaryTextColor"];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"secondaryTextColor"];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"tertiaryTextColor"];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColorLight"];
    v5->_backgroundColorLight = [v14 isEqual:@"YES"];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"primaryTextColorLight"];
    v5->_primaryTextColorLight = [v15 isEqual:@"YES"];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"secondaryTextColorLight"];
    v5->_secondaryTextColorLight = [v16 isEqual:@"YES"];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"tertiaryTextColorLight"];
    v5->_tertiaryTextColorLight = [v17 isEqual:@"YES"];
  }

  v18 = v5;
LABEL_6:

  return v18;
}

- (ML3ArtworkColorAnalysis)initWithColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v16.receiver = self;
  v16.super_class = ML3ArtworkColorAnalysis;
  v5 = [(ML3ArtworkColorAnalysis *)&v16 init];
  if (v5)
  {
    if (!analysisCopy)
    {
      v14 = 0;
      goto LABEL_6;
    }

    backgroundColorHex = [analysisCopy backgroundColorHex];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = backgroundColorHex;

    primaryTextColorHex = [analysisCopy primaryTextColorHex];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = primaryTextColorHex;

    secondaryTextColorHex = [analysisCopy secondaryTextColorHex];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = secondaryTextColorHex;

    tertiaryTextColorHex = [analysisCopy tertiaryTextColorHex];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = tertiaryTextColorHex;

    v5->_backgroundColorLight = [analysisCopy isBackgroundColorLight];
    v5->_primaryTextColorLight = [analysisCopy isPrimaryTextColorLight];
    v5->_secondaryTextColorLight = [analysisCopy isSecondaryTextColorLight];
    v5->_tertiaryTextColorLight = [analysisCopy isTertiaryTextColorLight];
  }

  v14 = v5;
LABEL_6:

  return v14;
}

@end