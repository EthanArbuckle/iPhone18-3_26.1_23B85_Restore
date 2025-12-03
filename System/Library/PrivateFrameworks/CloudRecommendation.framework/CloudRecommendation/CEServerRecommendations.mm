@interface CEServerRecommendations
- (CEServerRecommendations)initWithCoder:(id)coder;
- (CEServerRecommendations)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEServerRecommendations

- (CEServerRecommendations)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = CEServerRecommendations;
  v5 = [(CEServerRecommendations *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recommendations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __46__CEServerRecommendations_initWithDictionary___block_invoke;
      v26[3] = &unk_278DE02C0;
      v27 = v7;
      v8 = v7;
      [v6 enumerateObjectsUsingBlock:v26];
      v9 = [v8 copy];
      recommendations = v5->_recommendations;
      v5->_recommendations = v9;
    }

    else
    {
      v8 = _CELogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CEServerRecommendations initWithDictionary:];
      }
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKeyedSubscript:@"sectionDetails"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __46__CEServerRecommendations_initWithDictionary___block_invoke_23;
        v24 = &unk_278DE02C0;
        v25 = v13;
        v14 = v13;
        [v12 enumerateObjectsUsingBlock:&v21];
        v15 = [v14 copy:v21];
        sections = v5->_sections;
        v5->_sections = v15;
      }

      else
      {
        v14 = _CELogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [CEServerRecommendations initWithDictionary:];
        }
      }

      v17 = [v11 objectForKeyedSubscript:@"sectionHeader"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [[CERecommendationPage alloc] initWithDictionary:v17];
        p_super = &v5->_page->super;
        v5->_page = v18;
      }

      else
      {
        p_super = _CELogSystem();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
        {
          [CEServerRecommendations initWithDictionary:];
        }
      }
    }

    else
    {
      v12 = _CELogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CEServerRecommendations initWithDictionary:];
      }
    }
  }

  return v5;
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [[CERecommendation alloc] initWithDictionary:v4];

    [*(a1 + 32) addObject:v5];
  }

  else
  {
    v6 = _CELogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__CEServerRecommendations_initWithDictionary___block_invoke_cold_1();
    }
  }
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [[CERecommendationSection alloc] initWithDictionary:v4];

    [*(a1 + 32) addObject:v5];
  }

  else
  {
    v6 = _CELogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__CEServerRecommendations_initWithDictionary___block_invoke_23_cold_1();
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  recommendations = self->_recommendations;
  coderCopy = coder;
  [coderCopy encodeObject:recommendations forKey:@"recommendations"];
  [coderCopy encodeObject:self->_sections forKey:@"sections"];
  [coderCopy encodeObject:self->_page forKey:@"page"];
}

- (CEServerRecommendations)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CEServerRecommendations;
  v5 = [(CEServerRecommendations *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recommendations"];
    recommendations = v5->_recommendations;
    v5->_recommendations = v9;

    v11 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"page"];
    page = v5->_page;
    v5->_page = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CEServerRecommendations allocWithZone:?]];
  [(CEServerRecommendations *)v4 setRecommendations:self->_recommendations];
  [(CEServerRecommendations *)v4 setSections:self->_sections];
  [(CEServerRecommendations *)v4 setPage:self->_page];
  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1_1(v1);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_2(&dword_2439E1000, v1, v2, "Expected recommendation object to be a dictionary, instead found a %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__CEServerRecommendations_initWithDictionary___block_invoke_23_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_2(&dword_2439E1000, v1, v2, "Expected section object to be a dictionary, instead found a %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end