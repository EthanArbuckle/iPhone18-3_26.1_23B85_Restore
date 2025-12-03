@interface CERecommendationPage
- (CERecommendationPage)initWithCoder:(id)coder;
- (CERecommendationPage)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CERecommendationPage

- (CERecommendationPage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CERecommendationPage;
  v5 = [(CERecommendationPage *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pageTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      title = v5->_title;
      v5->_title = v7;
    }

    else
    {
      title = _CELogSystem();
      if (os_log_type_enabled(title, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationPage initWithDictionary:];
      }
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"pageSubtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      subTitle = v5->_subTitle;
      v5->_subTitle = v10;
    }

    else
    {
      subTitle = _CELogSystem();
      if (os_log_type_enabled(subTitle, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationPage initWithDictionary:];
      }
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"icon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CEImageIcon alloc] initWithDictionary:v12];
      p_super = &v5->_icon->super.super;
      v5->_icon = v13;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationPage initWithDictionary:];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subTitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
}

- (CERecommendationPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CERecommendationPage;
  v5 = [(CERecommendationPage *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CERecommendationPage allocWithZone:?]];
  [(CERecommendationPage *)v4 setTitle:self->_title];
  [(CERecommendationPage *)v4 setSubTitle:self->_subTitle];
  [(CERecommendationPage *)v4 setIcon:self->_icon];
  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_2439E1000, v1, v2, "%@ Unable to parse title from dictionary", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_2439E1000, v1, v2, "%@ Unable to parse subtitle from dictionary", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_2439E1000, v1, v2, "%@ Unable to parse icon from dictionary", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end