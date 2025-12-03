@interface CEAppInstallRecommendationAction
- (CEAppInstallRecommendationAction)initWithCoder:(id)coder;
- (CEAppInstallRecommendationAction)initWithDictionary:(id)dictionary;
- (CEAppInstallRecommendationAction)initWithIdentifier:(id)identifier title:(id)title appIdentifier:(id)appIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEAppInstallRecommendationAction

- (CEAppInstallRecommendationAction)initWithIdentifier:(id)identifier title:(id)title appIdentifier:(id)appIdentifier
{
  appIdentifierCopy = appIdentifier;
  v13.receiver = self;
  v13.super_class = CEAppInstallRecommendationAction;
  v10 = [(CERecommendationAction *)&v13 initWithIdentifier:identifier actionTitle:title actionType:@"AppInstall"];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appStoreID, appIdentifier);
  }

  return v11;
}

- (CEAppInstallRecommendationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CEAppInstallRecommendationAction;
  v5 = [(CERecommendationAction *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appStoreID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      appStoreID = v5->_appStoreID;
      v5->_appStoreID = v7;
    }

    else
    {
      appStoreID = _CELogSystem();
      if (os_log_type_enabled(appStoreID, OS_LOG_TYPE_DEBUG))
      {
        [CEAppInstallRecommendationAction initWithDictionary:];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CEAppInstallRecommendationAction;
  coderCopy = coder;
  [(CERecommendationAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appStoreID forKey:{@"appStoreID", v5.receiver, v5.super_class}];
}

- (CEAppInstallRecommendationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CEAppInstallRecommendationAction;
  v5 = [(CERecommendationAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appStoreID"];
    appStoreID = v5->_appStoreID;
    v5->_appStoreID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CEAppInstallRecommendationAction;
  v4 = [(CERecommendationAction *)&v6 copyWithZone:zone];
  [v4 setAppStoreID:self->_appStoreID];
  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CEAppInstallRecommendationAction;
  v3 = [(CERecommendationAction *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" appStoreID: %@", self->_appStoreID];

  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse AppStore ID from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end