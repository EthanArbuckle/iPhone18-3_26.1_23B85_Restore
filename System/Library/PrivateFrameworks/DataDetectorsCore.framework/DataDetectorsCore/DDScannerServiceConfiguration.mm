@interface DDScannerServiceConfiguration
- (BOOL)remoteScannerEnabled;
- (DDScannerServiceConfiguration)initWithCoder:(id)coder;
- (DDScannerServiceConfiguration)initWithScannerType:(int)type passiveIntent:(BOOL)intent;
- (__CFString)recyclingIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initEmpty;
- (void)encodeWithCoder:(id)coder;
- (void)setLanguage:(id)language;
- (void)setLanguageHighConfidence:(BOOL)confidence;
- (void)setSpotlightSuggestionsEnabled:(BOOL)enabled;
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
  if (self)
  {
    selfCopy = self;
    if (([(__CFString *)self remoteScannerEnabled]& 1) != 0)
    {
      self = @"Remote";
    }

    else
    {
      data = selfCopy->data;
      if (!data)
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        info = selfCopy[3].info;
        if (!info)
        {
          info = &stru_1F3B75AB8;
        }

        info = [v4 initWithFormat:@"T:%d|S:%d:%@:%d:%@", LODWORD(selfCopy->info), BYTE4(selfCopy->info), selfCopy[2].info, BYTE1(selfCopy[1].isa), info];
        v7 = selfCopy->data;
        selfCopy->data = info;

        data = selfCopy->data;
      }

      self = data;
    }

    v1 = vars8;
  }

  return self;
}

- (id)initEmpty
{
  v3.receiver = self;
  v3.super_class = DDScannerServiceConfiguration;
  return [(DDScannerServiceConfiguration *)&v3 init];
}

- (void)setLanguageHighConfidence:(BOOL)confidence
{
  if (self->_languageHighConfidence != confidence)
  {
    self->_languageHighConfidence = confidence;
    recyclingIdentifier = self->_recyclingIdentifier;
    self->_recyclingIdentifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  p_language = &self->_language;
  if (self->_language != languageCopy)
  {
    v8 = languageCopy;
    objc_storeStrong(p_language, language);
    recyclingIdentifier = self->_recyclingIdentifier;
    self->_recyclingIdentifier = 0;

    languageCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_language, languageCopy);
}

- (void)setSpotlightSuggestionsEnabled:(BOOL)enabled
{
  if (self->_spotlightSuggestionsEnabled != enabled)
  {
    self->_spotlightSuggestionsEnabled = enabled;
    recyclingIdentifier = self->_recyclingIdentifier;
    self->_recyclingIdentifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  recyclingIdentifier = [(DDScannerServiceConfiguration *)self recyclingIdentifier];
  v6 = recyclingIdentifier;
  if (self->_noObjC)
  {
    v7 = @"C";
  }

  else
  {
    v7 = @"ObjC";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p> %@ timeout:%.1f SPI:%@ resultsOptions:%ld scannerOptions:%ld", v4, self, recyclingIdentifier, *&self->_timeout, v7, self->_resultsOptions, self->_scannerOptions];

  return v8;
}

- (DDScannerServiceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  initEmpty = [(DDScannerServiceConfiguration *)self initEmpty];
  if (initEmpty)
  {
    initEmpty->_scannerType = [coderCopy decodeIntegerForKey:@"ST"];
    initEmpty->_resultsOptions = [coderCopy decodeIntegerForKey:@"RO"];
    initEmpty->_scannerOptions = [coderCopy decodeIntegerForKey:@"SO"];
    [coderCopy decodeDoubleForKey:@"TO"];
    initEmpty->_timeout = v6;
    initEmpty->_noObjC = [coderCopy decodeBoolForKey:@"OC"];
    initEmpty->_languageHighConfidence = [coderCopy decodeBoolForKey:@"LHC"];
    initEmpty->_spotlightSuggestionsEnabled = [coderCopy decodeBoolForKey:@"SP"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LG"];
    language = initEmpty->_language;
    initEmpty->_language = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = initEmpty->_country;
    initEmpty->_country = v9;

    initEmpty->_script = [coderCopy decodeIntegerForKey:@"script"];
    initEmpty->_qos = [coderCopy decodeIntegerForKey:@"qos"];
  }

  return initEmpty;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_scannerType forKey:@"ST"];
  [coderCopy encodeInteger:self->_resultsOptions forKey:@"RO"];
  [coderCopy encodeInteger:self->_scannerOptions forKey:@"SO"];
  [coderCopy encodeDouble:@"TO" forKey:self->_timeout];
  [coderCopy encodeBool:self->_noObjC forKey:@"OC"];
  [coderCopy encodeBool:self->_languageHighConfidence forKey:@"LHC"];
  [coderCopy encodeBool:self->_spotlightSuggestionsEnabled forKey:@"SP"];
  language = self->_language;
  if (language)
  {
    [coderCopy encodeObject:language forKey:@"LG"];
  }

  country = self->_country;
  if (country)
  {
    [coderCopy encodeObject:country forKey:@"country"];
  }

  [coderCopy encodeInteger:self->_script forKey:@"script"];
  [coderCopy encodeInteger:self->_qos forKey:@"qos"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initEmpty"}];
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

- (DDScannerServiceConfiguration)initWithScannerType:(int)type passiveIntent:(BOOL)intent
{
  intentCopy = intent;
  v8.receiver = self;
  v8.super_class = DDScannerServiceConfiguration;
  result = [(DDScannerServiceConfiguration *)&v8 init];
  if (result)
  {
    result->_scannerType = type;
    v7 = 1537;
    if (intentCopy)
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