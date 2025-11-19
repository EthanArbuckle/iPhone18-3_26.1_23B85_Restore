@interface BCSVisibilityItem
- (BCSVisibilityItem)initWithCoder:(id)a3;
- (BCSVisibilityItem)initWithLanguage:(id)a3 country:(id)a4 ratio:(double)a5;
- (BCSVisibilityItem)initWithVisibility:(id)a3;
- (BOOL)isVisibleForDSID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSVisibilityItem

- (BCSVisibilityItem)initWithVisibility:(id)a3
{
  v4 = a3;
  v5 = [v4 language];
  v6 = [v4 country];
  [v4 ratio];
  v8 = v7;

  v9 = [(BCSVisibilityItem *)self initWithLanguage:v5 country:v6 ratio:v8];
  return v9;
}

- (BCSVisibilityItem)initWithLanguage:(id)a3 country:(id)a4 ratio:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = BCSVisibilityItem;
  v10 = [(BCSVisibilityItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    language = v10->_language;
    v10->_language = v11;

    v13 = [v9 copy];
    country = v10->_country;
    v10->_country = v13;

    v10->_ratio = a5;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSVisibilityItem *)self language];
  v5 = [(BCSVisibilityItem *)self country];
  [(BCSVisibilityItem *)self ratio];
  v7 = [v3 stringWithFormat:@"(%@ - %@) : %f", v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  language = self->_language;
  v5 = a3;
  [v5 encodeObject:language forKey:@"BCSVisibilityItemLanguageKey"];
  [v5 encodeObject:self->_country forKey:@"BCSVisibilityItemCountryKey"];
  [v5 encodeDouble:@"BCSVisibilityItemRatioKey" forKey:self->_ratio];
}

- (BCSVisibilityItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSVisibilityItemLanguageKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSVisibilityItemCountryKey"];
  [v4 decodeDoubleForKey:@"BCSVisibilityItemRatioKey"];
  v8 = v7;

  v9 = [(BCSVisibilityItem *)self initWithLanguage:v5 country:v6 ratio:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSVisibilityItem *)self language];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[1];
    v5[1] = v7;

    v9 = [(BCSVisibilityItem *)self language];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;

    [(BCSVisibilityItem *)self ratio];
    v5[3] = v12;
  }

  return v5;
}

- (BOOL)isVisibleForDSID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BCSHashService SHA256TruncatedHashForInputString:v4 includedBytes:32];
  v6 = [v4 length];
  v7 = ABSLogCommon();
  v8 = v7;
  if (!v6 || (v5 & 0x8000000000000000) != 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v4 length];
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