@interface CERecommendation
- (CERecommendation)initWithCoder:(id)a3;
- (CERecommendation)initWithDictionary:(id)a3;
- (CERecommendation)initWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 bundleID:(id)a6 storageRecoverable:(id)a7 category:(id)a8 actions:(id)a9;
- (CERecommendation)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 message:(id)a6 bundleID:(id)a7 storageRecoverable:(id)a8 category:(id)a9 actions:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parseActions:(id)a3;
@end

@implementation CERecommendation

- (CERecommendation)initWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 bundleID:(id)a6 storageRecoverable:(id)a7 category:(id)a8 actions:(id)a9
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v16 = a8;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = CERecommendation;
  v18 = [(CERecommendation *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_title, a4);
    subTitle = v19->_subTitle;
    v19->_subTitle = &stru_2856B3060;

    objc_storeStrong(&v19->_message, a5);
    objc_storeStrong(&v19->_bundleID, a6);
    objc_storeStrong(&v19->_storageRecoverable, a7);
    objc_storeStrong(&v19->_category, a8);
    objc_storeStrong(&v19->_actions, a9);
    v19->_completed = 0;
    status = v19->_status;
    v19->_status = 0;
  }

  return v19;
}

- (CERecommendation)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 message:(id)a6 bundleID:(id)a7 storageRecoverable:(id)a8 category:(id)a9 actions:(id)a10
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v22 = a9;
  v17 = a10;
  v29.receiver = self;
  v29.super_class = CERecommendation;
  v18 = [(CERecommendation *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_title, a4);
    objc_storeStrong(&v19->_subTitle, a5);
    objc_storeStrong(&v19->_message, a6);
    objc_storeStrong(&v19->_bundleID, a7);
    objc_storeStrong(&v19->_storageRecoverable, a8);
    objc_storeStrong(&v19->_category, a9);
    objc_storeStrong(&v19->_actions, a10);
    v19->_completed = 0;
    status = v19->_status;
    v19->_status = 0;
  }

  return v19;
}

- (CERecommendation)initWithDictionary:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = CERecommendation;
  v5 = [(CERecommendation *)&v49 init];
  v6 = v5;
  if (v5)
  {
    v5->_completed = 0;
    v7 = [v4 objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      identifier = v6->_identifier;
      v6->_identifier = v8;
    }

    else
    {
      identifier = _CELogSystem();
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v10 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      title = v6->_title;
      v6->_title = v11;
    }

    else
    {
      title = _CELogSystem();
      if (os_log_type_enabled(title, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v13 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      subTitle = v6->_subTitle;
      v6->_subTitle = v14;
    }

    else
    {
      subTitle = _CELogSystem();
      if (os_log_type_enabled(subTitle, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    v48 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      message = v6->_message;
      v6->_message = v17;
    }

    else
    {
      message = _CELogSystem();
      if (os_log_type_enabled(message, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v19 = [v4 objectForKeyedSubscript:@"bundleID"];
    objc_opt_class();
    v47 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
      bundleID = v6->_bundleID;
      v6->_bundleID = v20;
    }

    else
    {
      bundleID = _CELogSystem();
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v22 = [v4 objectForKeyedSubscript:@"storageRecoverable"];
    objc_opt_class();
    v46 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
      p_super = &v6->_storageRecoverable->super.super;
      v6->_storageRecoverable = v23;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v25 = [v4 objectForKeyedSubscript:@"category"];
    objc_opt_class();
    v45 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
      category = v6->_category;
      v6->_category = v26;
    }

    else
    {
      category = _CELogSystem();
      if (os_log_type_enabled(category, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v28 = [v4 objectForKeyedSubscript:@"actions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CERecommendation *)v6 parseActions:v28];
    }

    else
    {
      v29 = _CELogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v30 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
      status = v6->_status;
      v6->_status = v31;
    }

    else
    {
      status = _CELogSystem();
      if (os_log_type_enabled(status, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendation initWithDictionary:];
      }
    }

    v33 = [v4 objectForKeyedSubscript:@"icon"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = _CELogSystem();
      if (os_log_type_enabled(&v41->super.super, OS_LOG_TYPE_ERROR))
      {
        [CERecommendation initWithDictionary:];
      }

      goto LABEL_50;
    }

    v43 = v13;
    v44 = v7;
    v34 = v10;
    v35 = [v33 objectForKeyedSubscript:@"type"];
    v36 = [v35 isEqualToString:@"IMAGE"];

    v37 = [v33 objectForKeyedSubscript:@"type"];
    v38 = [v37 isEqualToString:@"SF_SYMBOL"];

    v39 = [v33 objectForKeyedSubscript:@"type"];
    v40 = [v39 isEqualToString:@"GRAPHIC_ICON"];

    if (v36)
    {
      v41 = [[CEImageIcon alloc] initWithDictionary:v33];
      v10 = v34;
      if (v41)
      {
        objc_storeStrong(&v6->_icon, v41);
      }

      v7 = v44;
    }

    else
    {
      v10 = v34;
      if (!v38)
      {
        v13 = v43;
        v7 = v44;
        if (!v40)
        {
          goto LABEL_51;
        }

        v41 = [[CEGraphicIcon alloc] initWithDictionary:v33];
        if (v41)
        {
          objc_storeStrong(&v6->_icon, v41);
        }

LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      v41 = [[CESymbolIcon alloc] initWithDictionary:v33];
      v7 = v44;
      if (v41)
      {
        objc_storeStrong(&v6->_icon, v41);
      }
    }

    v13 = v43;
    goto LABEL_50;
  }

LABEL_52:

  return v6;
}

- (void)parseActions:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__CERecommendation_parseActions___block_invoke;
  v10[3] = &unk_278DE02C0;
  v11 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];
  actions = self->_actions;
  self->_actions = v8;
}

void __33__CERecommendation_parseActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 isEqualToString:@"Deeplink"];
      v7 = [v5 isEqualToString:@"LiftUIUrl"];
      v8 = [v5 isEqualToString:@"RemoteUIUrl"];
      v9 = [v5 isEqualToString:@"WebUrl"];
      v10 = [v5 isEqualToString:@"EnableDataclass"];
      v11 = [v5 isEqualToString:@"AppInstall"];
      if ((v6 & 1) != 0 || (v7 & 1) != 0 || (v8 & 1) != 0 || v9)
      {
        v12 = CEURLRecommendationAction;
      }

      else if (v10)
      {
        v12 = CEDataclassRecommendationAction;
      }

      else
      {
        if (!v11)
        {
          v14 = _CELogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            __33__CERecommendation_parseActions___block_invoke_cold_2(v14);
          }

          goto LABEL_17;
        }

        v12 = CEAppInstallRecommendationAction;
      }

      v13 = [[v12 alloc] initWithDictionary:v4];
      if (v13)
      {
        [*(a1 + 32) addObject:v13];
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __33__CERecommendation_parseActions___block_invoke_cold_1();
  }

LABEL_18:
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subTitle forKey:@"subtitle"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_storageRecoverable forKey:@"storageRecoverable"];
  [v5 encodeObject:self->_category forKey:@"category"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeBool:self->_completed forKey:@"completed"];
  [v5 encodeObject:self->_status forKey:@"status"];
}

- (CERecommendation)initWithCoder:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CERecommendation;
  v5 = [(CERecommendation *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storageRecoverable"];
    storageRecoverable = v5->_storageRecoverable;
    v5->_storageRecoverable = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v18;

    v20 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v22 = [v20 setWithArray:v21];

    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v25;

    v5->_completed = [v4 decodeBoolForKey:@"completed"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CERecommendation allocWithZone:?]title:"initWithIdentifier:title:message:bundleID:storageRecoverable:category:actions:" message:self->_identifier bundleID:self->_title storageRecoverable:self->_message category:self->_bundleID actions:self->_storageRecoverable, self->_category, self->_actions];
  [(CERecommendation *)v4 setSubTitle:self->_subTitle];
  [(CERecommendation *)v4 setIcon:self->_icon];
  [(CERecommendation *)v4 setCompleted:self->_completed];
  [(CERecommendation *)v4 setStatus:self->_status];
  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse identifier for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse title for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse subtitle for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.4()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse message for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.5()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse bundleID for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.6()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse storageRecoverable for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.7()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse category for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.8()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse actions for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.9()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Status string not present for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.10()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_2(&dword_2439E1000, v2, v3, "%@ Unable to parse icon for recommendation.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __33__CERecommendation_parseActions___block_invoke_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_2(&dword_2439E1000, v2, v3, "Expected action object to be a dictionary, instead found a %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end