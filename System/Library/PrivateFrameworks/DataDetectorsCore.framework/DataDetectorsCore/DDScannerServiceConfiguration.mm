@interface DDScannerServiceConfiguration
- (BOOL)remoteScannerEnabled;
- (DDScannerServiceConfiguration)initWithCoder:(id)a3;
- (DDScannerServiceConfiguration)initWithScannerType:(int)a3 passiveIntent:(BOOL)a4;
- (__CFString)recyclingIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initEmpty;
- (void)encodeWithCoder:(id)a3;
- (void)setLanguage:(id)a3;
- (void)setLanguageHighConfidence:(BOOL)a3;
- (void)setSpotlightSuggestionsEnabled:(BOOL)a3;
@end

@implementation DDScannerServiceConfiguration

- (BOOL)remoteScannerEnabled
{
  remoteScannerEnabled = self->_remoteScannerEnabled;
  if (!remoteScannerEnabled)
  {
    [(DDScannerServiceConfiguration *)self qos];
  }

  return remoteScannerEnabled;
}

- (__CFString)recyclingIdentifier
{
  if (a1)
  {
    v2 = a1;
    if (([(__CFString *)a1 remoteScannerEnabled]& 1) != 0)
    {
      a1 = @"Remote";
    }

    else
    {
      data = v2->data;
      if (!data)
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        info = v2[3].info;
        if (!info)
        {
          info = &stru_1F3B75AB8;
        }

        v6 = [v4 initWithFormat:@"T:%d|S:%d:%@:%d:%@", LODWORD(v2->info), BYTE4(v2->info), v2[2].info, BYTE1(v2[1].isa), info];
        v7 = v2->data;
        v2->data = v6;

        data = v2->data;
      }

      a1 = data;
    }

    v1 = vars8;
  }

  return a1;
}

- (id)initEmpty
{
  v3.receiver = self;
  v3.super_class = DDScannerServiceConfiguration;
  return [(DDScannerServiceConfiguration *)&v3 init];
}

- (void)setLanguageHighConfidence:(BOOL)a3
{
  if (self->_languageHighConfidence != a3)
  {
    self->_languageHighConfidence = a3;
    recyclingIdentifier = self->_recyclingIdentifier;
    self->_recyclingIdentifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setLanguage:(id)a3
{
  v5 = a3;
  p_language = &self->_language;
  if (self->_language != v5)
  {
    v8 = v5;
    objc_storeStrong(p_language, a3);
    recyclingIdentifier = self->_recyclingIdentifier;
    self->_recyclingIdentifier = 0;

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_language, v5);
}

- (void)setSpotlightSuggestionsEnabled:(BOOL)a3
{
  if (self->_spotlightSuggestionsEnabled != a3)
  {
    self->_spotlightSuggestionsEnabled = a3;
    recyclingIdentifier = self->_recyclingIdentifier;
    self->_recyclingIdentifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(DDScannerServiceConfiguration *)self recyclingIdentifier];
  v6 = v5;
  if (self->_noObjC)
  {
    v7 = @"C";
  }

  else
  {
    v7 = @"ObjC";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p> %@ timeout:%.1f SPI:%@ resultsOptions:%ld scannerOptions:%ld", v4, self, v5, *&self->_timeout, v7, self->_resultsOptions, self->_scannerOptions];

  return v8;
}

- (DDScannerServiceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DDScannerServiceConfiguration *)self initEmpty];
  if (v5)
  {
    v5->_scannerType = [v4 decodeIntegerForKey:@"ST"];
    v5->_resultsOptions = [v4 decodeIntegerForKey:@"RO"];
    v5->_scannerOptions = [v4 decodeIntegerForKey:@"SO"];
    [v4 decodeDoubleForKey:@"TO"];
    v5->_timeout = v6;
    v5->_noObjC = [v4 decodeBoolForKey:@"OC"];
    v5->_languageHighConfidence = [v4 decodeBoolForKey:@"LHC"];
    v5->_spotlightSuggestionsEnabled = [v4 decodeBoolForKey:@"SP"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LG"];
    language = v5->_language;
    v5->_language = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = v5->_country;
    v5->_country = v9;

    v5->_script = [v4 decodeIntegerForKey:@"script"];
    v5->_qos = [v4 decodeIntegerForKey:@"qos"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:self->_scannerType forKey:@"ST"];
  [v6 encodeInteger:self->_resultsOptions forKey:@"RO"];
  [v6 encodeInteger:self->_scannerOptions forKey:@"SO"];
  [v6 encodeDouble:@"TO" forKey:self->_timeout];
  [v6 encodeBool:self->_noObjC forKey:@"OC"];
  [v6 encodeBool:self->_languageHighConfidence forKey:@"LHC"];
  [v6 encodeBool:self->_spotlightSuggestionsEnabled forKey:@"SP"];
  language = self->_language;
  if (language)
  {
    [v6 encodeObject:language forKey:@"LG"];
  }

  country = self->_country;
  if (country)
  {
    [v6 encodeObject:country forKey:@"country"];
  }

  [v6 encodeInteger:self->_script forKey:@"script"];
  [v6 encodeInteger:self->_qos forKey:@"qos"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initEmpty"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_scannerType;
    *(v4 + 56) = self->_resultsOptions;
    *(v4 + 64) = self->_scannerOptions;
    *(v4 + 48) = self->_timeout;
    *(v4 + 32) = self->_noObjC;
    *(v4 + 33) = self->_languageHighConfidence;
    *(v4 + 12) = self->_spotlightSuggestionsEnabled;
    *(v4 + 13) = self->_remoteScannerEnabled;
    objc_storeStrong((v4 + 72), self->_language);
    objc_storeStrong((v5 + 16), self->_recyclingIdentifier);
    objc_storeStrong((v5 + 88), self->_mockMLResults);
    objc_storeStrong((v5 + 96), self->_supportedMLResults);
    *(v5 + 36) = self->_qos;
    *(v5 + 40) = self->_script;
    objc_storeStrong((v5 + 104), self->_country);
  }

  return v5;
}

- (DDScannerServiceConfiguration)initWithScannerType:(int)a3 passiveIntent:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = DDScannerServiceConfiguration;
  result = [(DDScannerServiceConfiguration *)&v8 init];
  if (result)
  {
    result->_scannerType = a3;
    v7 = 1537;
    if (v4)
    {
      v7 = 1989;
    }

    result->_resultsOptions = v7;
    result->_scannerOptions = 0;
    result->_timeout = 6.0;
  }

  return result;
}

@end