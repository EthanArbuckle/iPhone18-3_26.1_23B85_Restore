@interface CERecommendationInfo
- (CERecommendationInfo)initWithCoder:(id)a3;
- (CERecommendationInfo)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CERecommendationInfo

- (CERecommendationInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CERecommendationInfo;
  v5 = [(CERecommendationInfo *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      recommendationSpecifierTitle = v5->_recommendationSpecifierTitle;
      v5->_recommendationSpecifierTitle = v7;
    }

    else
    {
      recommendationSpecifierTitle = _CELogSystem();
      if (os_log_type_enabled(recommendationSpecifierTitle, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v9 = [v4 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      recommendationSpecifierSubtitle = v5->_recommendationSpecifierSubtitle;
      v5->_recommendationSpecifierSubtitle = v10;
    }

    else
    {
      recommendationSpecifierSubtitle = _CELogSystem();
      if (os_log_type_enabled(recommendationSpecifierSubtitle, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"recommendationsUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      if (v13)
      {
        objc_storeStrong(&v5->_serverRecommendationsURL, v13);
      }
    }

    else
    {
      v13 = _CELogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"recommendationRulesUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
      if (v15)
      {
        objc_storeStrong(&v5->_serverRulesURL, v15);
      }
    }

    else
    {
      v15 = _CELogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"completedRecommendationsUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      if (v17)
      {
        objc_storeStrong(&v5->_completedRecommendationsURL, v17);
      }
    }

    else
    {
      v17 = _CELogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"subtitleTemplates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      p_super = &v5->_subtitleTemplates->super;
      v5->_subtitleTemplates = v19;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationInfo initWithDictionary:];
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CERecommendationInfo);
  [(CERecommendationInfo *)v4 setRecommendationSpecifierTitle:self->_recommendationSpecifierTitle];
  [(CERecommendationInfo *)v4 setRecommendationSpecifierSubtitle:self->_recommendationSpecifierSubtitle];
  [(CERecommendationInfo *)v4 setServerRecommendationsURL:self->_serverRecommendationsURL];
  [(CERecommendationInfo *)v4 setServerRulesURL:self->_serverRulesURL];
  [(CERecommendationInfo *)v4 setCompletedRecommendationsURL:self->_completedRecommendationsURL];
  [(CERecommendationInfo *)v4 setSubtitleTemplates:self->_subtitleTemplates];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  recommendationSpecifierTitle = self->_recommendationSpecifierTitle;
  v5 = a3;
  [v5 encodeObject:recommendationSpecifierTitle forKey:@"title"];
  [v5 encodeObject:self->_recommendationSpecifierSubtitle forKey:@"message"];
  [v5 encodeObject:self->_serverRecommendationsURL forKey:@"recommendationsUrl"];
  [v5 encodeObject:self->_serverRulesURL forKey:@"recommendationRulesUrl"];
  [v5 encodeObject:self->_completedRecommendationsURL forKey:@"completedRecommendationsUrl"];
  [v5 encodeObject:self->_subtitleTemplates forKey:@"subtitleTemplates"];
}

- (CERecommendationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CERecommendationInfo;
  v5 = [(CERecommendationInfo *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    recommendationSpecifierTitle = v5->_recommendationSpecifierTitle;
    v5->_recommendationSpecifierTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    recommendationSpecifierSubtitle = v5->_recommendationSpecifierSubtitle;
    v5->_recommendationSpecifierSubtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recommendationsUrl"];
    serverRecommendationsURL = v5->_serverRecommendationsURL;
    v5->_serverRecommendationsURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recommendationRulesUrl"];
    serverRulesURL = v5->_serverRulesURL;
    v5->_serverRulesURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completedRecommendationsUrl"];
    completedRecommendationsURL = v5->_completedRecommendationsURL;
    v5->_completedRecommendationsURL = v14;

    v16 = objc_opt_class();
    v17 = [v4 decodeDictionaryWithKeysOfClass:v16 objectsOfClass:objc_opt_class() forKey:@"subtitleTemplates"];
    subtitleTemplates = v5->_subtitleTemplates;
    v5->_subtitleTemplates = v17;
  }

  return v5;
}

@end