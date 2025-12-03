@interface CEURLRecommendationAction
- (CEURLRecommendationAction)initWithCoder:(id)coder;
- (CEURLRecommendationAction)initWithDictionary:(id)dictionary;
- (CEURLRecommendationAction)initWithIdentifier:(id)identifier actionType:(id)type title:(id)title actionURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEURLRecommendationAction

- (CEURLRecommendationAction)initWithIdentifier:(id)identifier actionType:(id)type title:(id)title actionURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = CEURLRecommendationAction;
  v12 = [(CERecommendationAction *)&v15 initWithIdentifier:identifier actionTitle:title actionType:type];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionURL, l);
  }

  return v13;
}

- (CEURLRecommendationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CEURLRecommendationAction;
  v5 = [(CERecommendationAction *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
      p_super = &v5->_actionURL->super;
      v5->_actionURL = v7;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CEURLRecommendationAction initWithDictionary:];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CEURLRecommendationAction;
  coderCopy = coder;
  [(CERecommendationAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_actionURL forKey:{@"actionURL", v5.receiver, v5.super_class}];
}

- (CEURLRecommendationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CEURLRecommendationAction;
  v5 = [(CERecommendationAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CEURLRecommendationAction;
  v4 = [(CERecommendationAction *)&v6 copyWithZone:zone];
  [v4 setActionURL:self->_actionURL];
  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CEURLRecommendationAction;
  v3 = [(CERecommendationAction *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" actionURL: %@", self->_actionURL];

  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse url from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end