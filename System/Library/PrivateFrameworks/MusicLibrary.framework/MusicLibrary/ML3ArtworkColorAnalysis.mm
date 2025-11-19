@interface ML3ArtworkColorAnalysis
- (ML3ArtworkColorAnalysis)initWithCoder:(id)a3;
- (ML3ArtworkColorAnalysis)initWithColorAnalysis:(id)a3;
- (ML3ArtworkColorAnalysis)initWithColorAnalysisDictionary:(id)a3;
- (id)dictRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3ArtworkColorAnalysis

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ML3ArtworkColorAnalysis *)self backgroundColor];
  [v8 encodeObject:v4 forKey:@"backgroundColor"];

  [v8 encodeBool:-[ML3ArtworkColorAnalysis isBackgroundColorLight](self forKey:{"isBackgroundColorLight"), @"backgroundColorLight"}];
  v5 = [(ML3ArtworkColorAnalysis *)self primaryTextColor];
  [v8 encodeObject:v5 forKey:@"primaryTextColor"];

  [v8 encodeBool:-[ML3ArtworkColorAnalysis isPrimaryTextColorLight](self forKey:{"isPrimaryTextColorLight"), @"primaryTextColorLight"}];
  v6 = [(ML3ArtworkColorAnalysis *)self secondaryTextColor];
  [v8 encodeObject:v6 forKey:@"secondaryTextColor"];

  [v8 encodeBool:-[ML3ArtworkColorAnalysis isSecondaryTextColorLight](self forKey:{"isSecondaryTextColorLight"), @"secondaryTextColorLight"}];
  v7 = [(ML3ArtworkColorAnalysis *)self tertiaryTextColor];
  [v8 encodeObject:v7 forKey:@"tertiaryTextColor"];

  [v8 encodeBool:-[ML3ArtworkColorAnalysis isTertiaryTextColorLight](self forKey:{"isTertiaryTextColorLight"), @"tertiaryTextColorLight"}];
}

- (ML3ArtworkColorAnalysis)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ML3ArtworkColorAnalysis *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v5->_backgroundColorLight = [v4 decodeBoolForKey:@"backgroundColorLight"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryTextColor"];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v8;

    v5->_primaryTextColorLight = [v4 decodeBoolForKey:@"primaryTextColorLight"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextColor"];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v10;

    v5->_secondaryTextColorLight = [v4 decodeBoolForKey:@"secondaryTextColorLight"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tertiaryTextColor"];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = v12;

    v5->_tertiaryTextColorLight = [v4 decodeBoolForKey:@"tertiaryTextColorLight"];
  }

  return v5;
}

- (id)dictRepresentation
{
  v14[8] = *MEMORY[0x277D85DE8];
  v13[0] = @"backgroundColor";
  v3 = [(ML3ArtworkColorAnalysis *)self backgroundColor];
  v14[0] = v3;
  v13[1] = @"primaryTextColor";
  v4 = [(ML3ArtworkColorAnalysis *)self primaryTextColor];
  v14[1] = v4;
  v13[2] = @"secondaryTextColor";
  v5 = [(ML3ArtworkColorAnalysis *)self secondaryTextColor];
  v14[2] = v5;
  v13[3] = @"tertiaryTextColor";
  v6 = [(ML3ArtworkColorAnalysis *)self tertiaryTextColor];
  v14[3] = v6;
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

- (ML3ArtworkColorAnalysis)initWithColorAnalysisDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ML3ArtworkColorAnalysis;
  v5 = [(ML3ArtworkColorAnalysis *)&v20 init];
  if (v5)
  {
    if (!v4)
    {
      v18 = 0;
      goto LABEL_6;
    }

    v6 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v8 = [v4 objectForKeyedSubscript:@"primaryTextColor"];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v8;

    v10 = [v4 objectForKeyedSubscript:@"secondaryTextColor"];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v10;

    v12 = [v4 objectForKeyedSubscript:@"tertiaryTextColor"];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = v12;

    v14 = [v4 objectForKeyedSubscript:@"backgroundColorLight"];
    v5->_backgroundColorLight = [v14 isEqual:@"YES"];

    v15 = [v4 objectForKeyedSubscript:@"primaryTextColorLight"];
    v5->_primaryTextColorLight = [v15 isEqual:@"YES"];

    v16 = [v4 objectForKeyedSubscript:@"secondaryTextColorLight"];
    v5->_secondaryTextColorLight = [v16 isEqual:@"YES"];

    v17 = [v4 objectForKeyedSubscript:@"tertiaryTextColorLight"];
    v5->_tertiaryTextColorLight = [v17 isEqual:@"YES"];
  }

  v18 = v5;
LABEL_6:

  return v18;
}

- (ML3ArtworkColorAnalysis)initWithColorAnalysis:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ML3ArtworkColorAnalysis;
  v5 = [(ML3ArtworkColorAnalysis *)&v16 init];
  if (v5)
  {
    if (!v4)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v6 = [v4 backgroundColorHex];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v8 = [v4 primaryTextColorHex];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v8;

    v10 = [v4 secondaryTextColorHex];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v10;

    v12 = [v4 tertiaryTextColorHex];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = v12;

    v5->_backgroundColorLight = [v4 isBackgroundColorLight];
    v5->_primaryTextColorLight = [v4 isPrimaryTextColorLight];
    v5->_secondaryTextColorLight = [v4 isSecondaryTextColorLight];
    v5->_tertiaryTextColorLight = [v4 isTertiaryTextColorLight];
  }

  v14 = v5;
LABEL_6:

  return v14;
}

@end