@interface CERecommendationRule
- (BOOL)ignoreClientRank;
- (CERecommendationRule)initWithCoder:(id)coder;
- (CERecommendationRule)initWithDictionary:(id)dictionary;
- (CERecommendationStringTemplate)templates;
- (CERuleCriteria)criteria;
- (NSArray)context;
- (NSNumber)lastCompletedTimeStamp;
- (NSNumber)rankingHint;
- (NSString)bundleID;
- (NSString)messageHint;
- (NSString)recommendationID;
- (NSString)titleHint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setBundleID:(id)d;
- (void)setContext:(id)context;
- (void)setCriteria:(id)criteria;
- (void)setIgnoreClientRank:(BOOL)rank;
- (void)setLastCompletedTimeStamp:(id)stamp;
- (void)setMessageHint:(id)hint;
- (void)setRankingHint:(id)hint;
- (void)setRecommendationID:(id)d;
- (void)setTemplates:(id)templates;
- (void)setTitleHint:(id)hint;
@end

@implementation CERecommendationRule

- (CERecommendationRule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = CERecommendationRule;
  v5 = [(CERecommendationRule *)&v53 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"recommendationID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      recommendationID = v6->_recommendationID;
      v6->_recommendationID = v8;
    }

    else
    {
      recommendationID = _CELogSystem();
      if (os_log_type_enabled(recommendationID, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      bundleID = v6->_bundleID;
      v6->_bundleID = v11;
    }

    else
    {
      bundleID = _CELogSystem();
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"titleHint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      titleHint = v6->_titleHint;
      v6->_titleHint = v14;
    }

    else
    {
      titleHint = _CELogSystem();
      if (os_log_type_enabled(titleHint, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"messageHint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      messageHint = v6->_messageHint;
      v6->_messageHint = v17;
    }

    else
    {
      messageHint = _CELogSystem();
      if (os_log_type_enabled(messageHint, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"rankingHint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
      p_super = &v6->_rankingHint->super.super;
      v6->_rankingHint = v20;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"lastCompletedTimestamp"];
    objc_opt_class();
    v50 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
      v24 = &v6->_lastCompletedTimeStamp->super.super;
      v6->_lastCompletedTimeStamp = v23;
    }

    else
    {
      v24 = _CELogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"ignoreClientRank"];
    bOOLValue = [v25 BOOLValue];

    v6->_ignoreClientRank = bOOLValue;
    v27 = [CERuleCriteria alloc];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"criteria"];
    v29 = [(CERuleCriteria *)v27 initWithDictionary:v28];

    objc_opt_class();
    v49 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
      v31 = &v6->_criteria->super;
      v6->_criteria = v30;
    }

    else
    {
      v31 = _CELogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"templates"];
    v32 = [[CERecommendationStringTemplate alloc] initWithDictionary:v48];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
      v34 = &v6->_templates->super;
      v6->_templates = v33;
    }

    else
    {
      v34 = _CELogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    v47 = v32;
    if (objc_opt_isKindOfClass())
    {
      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __43__CERecommendationRule_initWithDictionary___block_invoke;
      v51[3] = &unk_278DE02C0;
      v37 = v36;
      v52 = v37;
      [v35 enumerateObjectsUsingBlock:v51];
      v38 = dictionaryCopy;
      v39 = v19;
      v40 = v16;
      v41 = v13;
      v42 = v10;
      v43 = v7;
      context = v6->_context;
      v6->_context = v37;
      v45 = v37;

      v7 = v43;
      v10 = v42;
      v13 = v41;
      v16 = v40;
      v19 = v39;
      dictionaryCopy = v38;
    }

    else
    {
      v45 = _CELogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationRule initWithDictionary:];
      }
    }
  }

  return v6;
}

void __43__CERecommendationRule_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  recommendationID = [(CERecommendationRule *)self recommendationID];
  [coderCopy encodeObject:recommendationID forKey:@"recommendationID"];

  bundleID = [(CERecommendationRule *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  titleHint = [(CERecommendationRule *)self titleHint];
  [coderCopy encodeObject:titleHint forKey:@"titleHint"];

  messageHint = [(CERecommendationRule *)self messageHint];
  [coderCopy encodeObject:messageHint forKey:@"messageHint"];

  rankingHint = [(CERecommendationRule *)self rankingHint];
  [coderCopy encodeObject:rankingHint forKey:@"rankingHint"];

  lastCompletedTimeStamp = [(CERecommendationRule *)self lastCompletedTimeStamp];
  [coderCopy encodeObject:lastCompletedTimeStamp forKey:@"lastCompletedTimeStamp"];

  [coderCopy encodeBool:-[CERecommendationRule ignoreClientRank](self forKey:{"ignoreClientRank"), @"ignoreClientRank"}];
  criteria = [(CERecommendationRule *)self criteria];
  [coderCopy encodeObject:criteria forKey:@"criteria"];

  templates = [(CERecommendationRule *)self templates];
  [coderCopy encodeObject:templates forKey:@"templates"];

  context = [(CERecommendationRule *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (CERecommendationRule)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = CERecommendationRule;
  v5 = [(CERecommendationRule *)&v30 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommendationID"];
    recommendationID = v6->_recommendationID;
    v6->_recommendationID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v6->_bundleID;
    v6->_bundleID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleHint"];
    titleHint = v6->_titleHint;
    v6->_titleHint = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageHint"];
    messageHint = v6->_messageHint;
    v6->_messageHint = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rankingHint"];
    rankingHint = v6->_rankingHint;
    v6->_rankingHint = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastCompletedTimeStamp"];
    lastCompletedTimeStamp = v6->_lastCompletedTimeStamp;
    v6->_lastCompletedTimeStamp = v17;

    v6->_ignoreClientRank = [coderCopy decodeBoolForKey:@"ignoreClientRank"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteria"];
    criteria = v6->_criteria;
    v6->_criteria = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templates"];
    templates = v6->_templates;
    v6->_templates = v21;

    v23 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v25 = [v23 setWithArray:v24];

    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"context"];
    context = v6->_context;
    v6->_context = v26;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[CERecommendationRule allocWithZone:](CERecommendationRule init];
  v5->_lock._os_unfair_lock_opaque = 0;
  recommendationID = [(CERecommendationRule *)self recommendationID];
  [(CERecommendationRule *)v5 setRecommendationID:recommendationID];

  bundleID = [(CERecommendationRule *)self bundleID];
  [(CERecommendationRule *)v5 setBundleID:bundleID];

  titleHint = [(CERecommendationRule *)self titleHint];
  [(CERecommendationRule *)v5 setTitleHint:titleHint];

  messageHint = [(CERecommendationRule *)self messageHint];
  [(CERecommendationRule *)v5 setMessageHint:messageHint];

  rankingHint = [(CERecommendationRule *)self rankingHint];
  [(CERecommendationRule *)v5 setRankingHint:rankingHint];

  lastCompletedTimeStamp = [(CERecommendationRule *)self lastCompletedTimeStamp];
  [(CERecommendationRule *)v5 setLastCompletedTimeStamp:lastCompletedTimeStamp];

  [(CERecommendationRule *)v5 setIgnoreClientRank:[(CERecommendationRule *)self ignoreClientRank]];
  criteria = [(CERecommendationRule *)self criteria];
  v13 = [criteria copyWithZone:zone];
  [(CERecommendationRule *)v5 setCriteria:v13];

  templates = [(CERecommendationRule *)self templates];
  v15 = [templates copyWithZone:zone];
  [(CERecommendationRule *)v5 setTemplates:v15];

  context = [(CERecommendationRule *)self context];
  v17 = [context copyWithZone:zone];
  [(CERecommendationRule *)v5 setContext:v17];

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  recommendationID = [(CERecommendationRule *)self recommendationID];
  bundleID = [(CERecommendationRule *)self bundleID];
  titleHint = [(CERecommendationRule *)self titleHint];
  messageHint = [(CERecommendationRule *)self messageHint];
  rankingHint = [(CERecommendationRule *)self rankingHint];
  lastCompletedTimeStamp = [(CERecommendationRule *)self lastCompletedTimeStamp];
  ignoreClientRank = [(CERecommendationRule *)self ignoreClientRank];
  criteria = [(CERecommendationRule *)self criteria];
  templates = [(CERecommendationRule *)self templates];
  context = [(CERecommendationRule *)self context];
  v13 = [v15 stringWithFormat:@"Recommendation Rule with id: %@, bundleID: %@, titleHint: %@, messageHint: %@, rankingHint: %@, lastCompletedTimestamp: %@, ignoreClientRank: %d, criteria: %@, templates: %@, context: %@", recommendationID, bundleID, titleHint, messageHint, rankingHint, lastCompletedTimeStamp, ignoreClientRank, criteria, templates, context];

  return v13;
}

- (NSString)titleHint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_titleHint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)messageHint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_messageHint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)rankingHint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_rankingHint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)recommendationID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_recommendationID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)bundleID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_bundleID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)ignoreClientRank
{
  os_unfair_lock_lock(&self->_lock);
  ignoreClientRank = self->_ignoreClientRank;
  os_unfair_lock_unlock(&self->_lock);
  return ignoreClientRank;
}

- (NSNumber)lastCompletedTimeStamp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastCompletedTimeStamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CERuleCriteria)criteria
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_criteria;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CERecommendationStringTemplate)templates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_templates;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTitleHint:(id)hint
{
  hintCopy = hint;
  os_unfair_lock_lock(&self->_lock);
  titleHint = self->_titleHint;
  self->_titleHint = hintCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMessageHint:(id)hint
{
  hintCopy = hint;
  os_unfair_lock_lock(&self->_lock);
  messageHint = self->_messageHint;
  self->_messageHint = hintCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRankingHint:(id)hint
{
  hintCopy = hint;
  os_unfair_lock_lock(&self->_lock);
  rankingHint = self->_rankingHint;
  self->_rankingHint = hintCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRecommendationID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  recommendationID = self->_recommendationID;
  self->_recommendationID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setBundleID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  bundleID = self->_bundleID;
  self->_bundleID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIgnoreClientRank:(BOOL)rank
{
  os_unfair_lock_lock(&self->_lock);
  self->_ignoreClientRank = rank;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLastCompletedTimeStamp:(id)stamp
{
  stampCopy = stamp;
  os_unfair_lock_lock(&self->_lock);
  lastCompletedTimeStamp = self->_lastCompletedTimeStamp;
  self->_lastCompletedTimeStamp = stampCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCriteria:(id)criteria
{
  criteriaCopy = criteria;
  os_unfair_lock_lock(&self->_lock);
  criteria = self->_criteria;
  self->_criteria = criteriaCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTemplates:(id)templates
{
  templatesCopy = templates;
  os_unfair_lock_lock(&self->_lock);
  templates = self->_templates;
  self->_templates = templatesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  self->_context = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse recommendationID from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse bundleID from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse titleHint from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.4()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse messageHint from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.5()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse rankingHint from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.6()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse lastCompletedTimestamp from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.7()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse criteria from dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.8()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse templates dictionary from Recommendation Rule.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.9()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse context array from Recommendation Rule.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end