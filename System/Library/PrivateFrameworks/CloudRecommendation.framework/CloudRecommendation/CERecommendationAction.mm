@interface CERecommendationAction
- (CERecommendationAction)initWithCoder:(id)a3;
- (CERecommendationAction)initWithDictionary:(id)a3;
- (CERecommendationAction)initWithIdentifier:(id)a3 actionTitle:(id)a4 actionType:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CERecommendationAction

- (CERecommendationAction)initWithIdentifier:(id)a3 actionTitle:(id)a4 actionType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CERecommendationAction;
  v12 = [(CERecommendationAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionIdentifier, a3);
    objc_storeStrong(&v13->_actionTitle, a4);
    objc_storeStrong(&v13->_actionType, a5);
  }

  return v13;
}

- (CERecommendationAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CERecommendationAction;
  v5 = [(CERecommendationAction *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      actionIdentifier = v5->_actionIdentifier;
      v5->_actionIdentifier = v7;
    }

    else
    {
      actionIdentifier = _CELogSystem();
      if (os_log_type_enabled(actionIdentifier, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationAction initWithDictionary:];
      }
    }

    v9 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      actionTitle = v5->_actionTitle;
      v5->_actionTitle = v10;
    }

    else
    {
      actionTitle = _CELogSystem();
      if (os_log_type_enabled(actionTitle, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationAction initWithDictionary:];
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      actionType = v5->_actionType;
      v5->_actionType = v13;
    }

    else
    {
      actionType = _CELogSystem();
      if (os_log_type_enabled(actionType, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationAction initWithDictionary:];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  actionIdentifier = self->_actionIdentifier;
  v5 = a3;
  [v5 encodeObject:actionIdentifier forKey:@"actionIdentifier"];
  [v5 encodeObject:self->_actionTitle forKey:@"actionTitle"];
  [v5 encodeObject:self->_actionType forKey:@"actionType"];
}

- (CERecommendationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CERecommendationAction;
  v5 = [(CERecommendationAction *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionTitle"];
    actionTitle = v5->_actionTitle;
    v5->_actionTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
    actionType = v5->_actionType;
    v5->_actionType = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CERecommendationAction allocWithZone:?]];
  [(CERecommendationAction *)v4 setActionIdentifier:self->_actionIdentifier];
  [(CERecommendationAction *)v4 setActionTitle:self->_actionTitle];
  [(CERecommendationAction *)v4 setActionType:self->_actionType];
  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse actionIdentifier from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse actionTitle from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse actionType from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end