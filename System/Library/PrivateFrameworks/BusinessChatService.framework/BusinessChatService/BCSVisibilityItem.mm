@interface BCSVisibilityItem
- (BCSVisibilityItem)initWithCoder:(id)coder;
- (BCSVisibilityItem)initWithLanguage:(id)language country:(id)country ratio:(double)ratio;
- (BCSVisibilityItem)initWithVisibility:(id)visibility;
- (BOOL)isVisibleForDSID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSVisibilityItem

- (BCSVisibilityItem)initWithVisibility:(id)visibility
{
  visibilityCopy = visibility;
  language = [visibilityCopy language];
  country = [visibilityCopy country];
  [visibilityCopy ratio];
  v8 = v7;

  v9 = [(BCSVisibilityItem *)self initWithLanguage:language country:country ratio:v8];
  return v9;
}

- (BCSVisibilityItem)initWithLanguage:(id)language country:(id)country ratio:(double)ratio
{
  languageCopy = language;
  countryCopy = country;
  v16.receiver = self;
  v16.super_class = BCSVisibilityItem;
  v10 = [(BCSVisibilityItem *)&v16 init];
  if (v10)
  {
    v11 = [languageCopy copy];
    language = v10->_language;
    v10->_language = v11;

    v13 = [countryCopy copy];
    country = v10->_country;
    v10->_country = v13;

    v10->_ratio = ratio;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  language = [(BCSVisibilityItem *)self language];
  country = [(BCSVisibilityItem *)self country];
  [(BCSVisibilityItem *)self ratio];
  v7 = [v3 stringWithFormat:@"(%@ - %@) : %f", language, country, v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  language = self->_language;
  coderCopy = coder;
  [coderCopy encodeObject:language forKey:@"BCSVisibilityItemLanguageKey"];
  [coderCopy encodeObject:self->_country forKey:@"BCSVisibilityItemCountryKey"];
  [coderCopy encodeDouble:@"BCSVisibilityItemRatioKey" forKey:self->_ratio];
}

- (BCSVisibilityItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSVisibilityItemLanguageKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSVisibilityItemCountryKey"];
  [coderCopy decodeDoubleForKey:@"BCSVisibilityItemRatioKey"];
  v8 = v7;

  v9 = [(BCSVisibilityItem *)self initWithLanguage:v5 country:v6 ratio:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    language = [(BCSVisibilityItem *)self language];
    v7 = [language copyWithZone:zone];
    v8 = v5[1];
    v5[1] = v7;

    language2 = [(BCSVisibilityItem *)self language];
    v10 = [language2 copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;

    [(BCSVisibilityItem *)self ratio];
    v5[3] = v12;
  }

  return v5;
}

- (BOOL)isVisibleForDSID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [BCSHashService SHA256TruncatedHashForInputString:dCopy includedBytes:32];
  v6 = [dCopy length];
  v7 = ABSLogCommon();
  v8 = v7;
  if (!v6 || (v5 & 0x8000000000000000) != 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [dCopy length];
      v16 = NSStringFromBOOL();
      v17 = NSStringFromBOOL();
      v18 = 136315650;
      v19 = "[BCSVisibilityItem isVisibleForDSID:]";
      v20 = 2114;
      v21 = *&v16;
      v22 = 2114;
      v23 = v17;
      _os_log_error_impl(&dword_242072000, v8, OS_LOG_TYPE_ERROR, "%s isVisible - DSID length greater than 0:%{public}@ - hashedDSID greater than 0:%{public}@", &v18, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[BCSVisibilityItem isVisibleForDSID:]";
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s isVisible - valid DSID & hashedDSID", &v18, 0xCu);
    }

    v9 = v5 % 0xF4240;
    [(BCSVisibilityItem *)self ratio];
    v11 = v10 * 1000000.0;
    v12 = ABSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[BCSVisibilityItem isVisibleForDSID:]";
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "%s isVisible - visibilityConverted:%f", &v18, 0x16u);
    }

    v13 = v11 > v9;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end