@interface CERuleConfiguration
- (CERecommendationInfo)recommendationInfo;
- (CERuleConfiguration)initWithCoder:(id)a3;
- (CERuleConfiguration)initWithDictionary:(id)a3;
- (NSArray)ruleset;
- (NSDictionary)thresholds;
- (NSNumber)maxRecommendationsToShow;
- (NSURL)actionURL;
- (NSURL)completedURL;
- (NSURL)dismissURL;
- (NSURL)displayURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)thresholdForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setActionURL:(id)a3;
- (void)setCompletedURL:(id)a3;
- (void)setDismissURL:(id)a3;
- (void)setDisplayURL:(id)a3;
- (void)setMaxRecommendationsToShow:(id)a3;
- (void)setRecommendationInfo:(id)a3;
@end

@implementation CERuleConfiguration

- (CERuleConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = CERuleConfiguration;
  v5 = [(CERuleConfiguration *)&v40 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 objectForKeyedSubscript:@"displayUrl"];
    objc_opt_class();
    v36 = v7;
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      p_super = &v6->_displayURL->super;
      v6->_displayURL = v8;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:];
      }
    }

    v10 = [v4 objectForKeyedSubscript:@"dismissUrl"];
    objc_opt_class();
    v35 = v10;
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:{v10, v10, v36}];
      v12 = &v6->_dismissURL->super;
      v6->_dismissURL = v11;
    }

    else
    {
      v12 = _CELogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:];
      }
    }

    v13 = [v4 objectForKeyedSubscript:@"actionUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
      v15 = &v6->_actionURL->super;
      v6->_actionURL = v14;
    }

    else
    {
      v15 = _CELogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CERuleConfiguration *)v6 initWithDictionary:v15];
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"completedUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      v18 = &v6->_completedURL->super;
      v6->_completedURL = v17;
    }

    else
    {
      v18 = _CELogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:];
      }
    }

    v19 = [v4 objectForKeyedSubscript:@"maxTipsShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
      v21 = &v6->_maxRecommendationsToShow->super.super;
      v6->_maxRecommendationsToShow = v20;
    }

    else
    {
      v21 = _CELogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:];
      }
    }

    v22 = [v4 objectForKeyedSubscript:@"thresholds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
      v24 = &v6->_thresholds->super;
      v6->_thresholds = v23;
    }

    else
    {
      v24 = _CELogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:];
      }
    }

    v25 = [v4 objectForKeyedSubscript:@"recommendationsInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[CERecommendationInfo alloc] initWithDictionary:v25];
      v27 = &v6->_recommendationInfo->super;
      v6->_recommendationInfo = v26;
    }

    else
    {
      v27 = _CELogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:];
      }
    }

    v28 = [v4 objectForKeyedSubscript:@"ruleset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __42__CERuleConfiguration_initWithDictionary___block_invoke;
      v37[3] = &unk_278DE0560;
      v30 = v6;
      v38 = v30;
      v39 = v29;
      v31 = v29;
      [v28 enumerateObjectsUsingBlock:v37];
      v32 = [v31 copy];
      ruleset = v30->_ruleset;
      v30->_ruleset = v32;
    }

    else
    {
      v31 = _CELogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [CERuleConfiguration initWithDictionary:];
      }
    }
  }

  return v6;
}

void __42__CERuleConfiguration_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [[CERuleset alloc] initWithDictionary:v4];

    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v5 = _CELogSystem();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEBUG))
    {
      __42__CERuleConfiguration_initWithDictionary___block_invoke_cold_1(a1);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CERuleConfiguration *)self displayURL];
  [v4 encodeObject:v5 forKey:@"displayURL"];

  v6 = [(CERuleConfiguration *)self dismissURL];
  [v4 encodeObject:v6 forKey:@"dismissURL"];

  v7 = [(CERuleConfiguration *)self completedURL];
  [v4 encodeObject:v7 forKey:@"completedURL"];

  v8 = [(CERuleConfiguration *)self actionURL];
  [v4 encodeObject:v8 forKey:@"actionURL"];

  v9 = [(CERuleConfiguration *)self maxRecommendationsToShow];
  [v4 encodeObject:v9 forKey:@"maxRecommendationsToShow"];

  v10 = [(CERuleConfiguration *)self thresholds];
  [v4 encodeObject:v10 forKey:@"thresholds"];

  v11 = [(CERuleConfiguration *)self ruleset];
  [v4 encodeObject:v11 forKey:@"ruleset"];

  v12 = [(CERuleConfiguration *)self recommendationInfo];
  [v4 encodeObject:v12 forKey:@"recommendationsInfo"];
}

- (CERuleConfiguration)initWithCoder:(id)a3
{
  v33[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CERuleConfiguration;
  v5 = [(CERuleConfiguration *)&v31 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayURL"];
    displayURL = v6->_displayURL;
    v6->_displayURL = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dismissURL"];
    dismissURL = v6->_dismissURL;
    v6->_dismissURL = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completedURL"];
    completedURL = v6->_completedURL;
    v6->_completedURL = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v6->_actionURL;
    v6->_actionURL = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxRecommendationsToShow"];
    maxRecommendationsToShow = v6->_maxRecommendationsToShow;
    v6->_maxRecommendationsToShow = v15;

    v17 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
    v19 = [v17 setWithArray:v18];

    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"thresholds"];
    thresholds = v6->_thresholds;
    v6->_thresholds = v20;

    v22 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v24 = [v22 setWithArray:v23];

    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"ruleset"];
    ruleset = v6->_ruleset;
    v6->_ruleset = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recommendationsInfo"];
    recommendationInfo = v6->_recommendationInfo;
    v6->_recommendationInfo = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[CERuleConfiguration allocWithZone:](CERuleConfiguration init];
  v5->_lock._os_unfair_lock_opaque = 0;
  v6 = [(CERuleConfiguration *)self displayURL];
  [(CERuleConfiguration *)v5 setDisplayURL:v6];

  v7 = [(CERuleConfiguration *)self dismissURL];
  [(CERuleConfiguration *)v5 setDismissURL:v7];

  v8 = [(CERuleConfiguration *)self completedURL];
  [(CERuleConfiguration *)v5 setCompletedURL:v8];

  v9 = [(CERuleConfiguration *)self actionURL];
  [(CERuleConfiguration *)v5 setActionURL:v9];

  v10 = [(CERuleConfiguration *)self maxRecommendationsToShow];
  [(CERuleConfiguration *)v5 setMaxRecommendationsToShow:v10];

  v11 = [(CERuleConfiguration *)self recommendationInfo];
  [(CERuleConfiguration *)v5 setRecommendationInfo:v11];

  os_unfair_lock_lock(&v5->_lock);
  v12 = [(CERuleConfiguration *)self thresholds];
  thresholds = v5->_thresholds;
  v5->_thresholds = v12;

  v14 = [(CERuleConfiguration *)self ruleset];
  v15 = [v14 copyWithZone:a3];
  ruleset = v5->_ruleset;
  v5->_ruleset = v15;

  os_unfair_lock_unlock(&v5->_lock);
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CERuleConfiguration *)self displayURL];
  v5 = [(CERuleConfiguration *)self dismissURL];
  v6 = [(CERuleConfiguration *)self completedURL];
  v7 = [(CERuleConfiguration *)self actionURL];
  v8 = [(CERuleConfiguration *)self maxRecommendationsToShow];
  v9 = [(CERuleConfiguration *)self thresholds];
  v10 = [(CERuleConfiguration *)self ruleset];
  v11 = [(CERuleConfiguration *)self recommendationInfo];
  v12 = [v3 stringWithFormat:@"Rule configuration with displayURL: %@, dismissURL: %@, completedURL: %@, actionURL: %@, maxRecommendations: %@, thresholds: %@, ruleset: %@, recommendationInfo: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (NSURL)displayURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSURL)dismissURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_dismissURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSURL)completedURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_completedURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSURL)actionURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_actionURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)maxRecommendationsToShow
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_maxRecommendationsToShow;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)thresholds
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_thresholds;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)ruleset
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_ruleset copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)thresholdForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_thresholds valueForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (CERecommendationInfo)recommendationInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_recommendationInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDisplayURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  displayURL = self->_displayURL;
  self->_displayURL = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDismissURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  dismissURL = self->_dismissURL;
  self->_dismissURL = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCompletedURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  completedURL = self->_completedURL;
  self->_completedURL = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setActionURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  actionURL = self->_actionURL;
  self->_actionURL = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaxRecommendationsToShow:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  maxRecommendationsToShow = self->_maxRecommendationsToShow;
  self->_maxRecommendationsToShow = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRecommendationInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  recommendationInfo = self->_recommendationInfo;
  self->_recommendationInfo = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithDictionary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1(v3);
  _os_log_error_impl(&dword_2439E1000, a2, OS_LOG_TYPE_ERROR, "%@ Unable to parse actionURL from dictionary", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.8()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__CERuleConfiguration_initWithDictionary___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end