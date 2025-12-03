@interface CERecommendationStringTemplate
- (CERecommendationStringTemplate)initWithCoder:(id)coder;
- (CERecommendationStringTemplate)initWithDictionary:(id)dictionary;
- (NSDictionary)actionTitleTemplates;
- (NSDictionary)messageTemplates;
- (NSDictionary)subTitleTemplates;
- (NSDictionary)titleTemplates;
- (id)actionTitleTemplateForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageTemplateForKey:(id)key;
- (id)subTitleTemplateForKey:(id)key;
- (id)titleTemplateForKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CERecommendationStringTemplate

- (CERecommendationStringTemplate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = CERecommendationStringTemplate;
  v5 = [(CERecommendationStringTemplate *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      p_super = &v6->_titleTemplates->super;
      v6->_titleTemplates = v8;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationStringTemplate initWithDictionary:];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = &v6->_subTitleTemplates->super;
      v6->_subTitleTemplates = v11;
    }

    else
    {
      v12 = _CELogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationStringTemplate initWithDictionary:];
      }
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      v15 = &v6->_messageTemplates->super;
      v6->_messageTemplates = v14;
    }

    else
    {
      v15 = _CELogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationStringTemplate initWithDictionary:];
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"actionTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      v18 = &v6->_actionTitleTemplates->super;
      v6->_actionTitleTemplates = v17;
    }

    else
    {
      v18 = _CELogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CERecommendationStringTemplate initWithDictionary:];
      }
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  titleTemplates = [(CERecommendationStringTemplate *)self titleTemplates];
  subTitleTemplates = [(CERecommendationStringTemplate *)self subTitleTemplates];
  messageTemplates = [(CERecommendationStringTemplate *)self messageTemplates];
  actionTitleTemplates = [(CERecommendationStringTemplate *)self actionTitleTemplates];
  v8 = [v3 stringWithFormat:@"titleTemplates: %@, subTitleTemplates: %@, messageTemplates: %@, actionTitleTemplates: %@", titleTemplates, subTitleTemplates, messageTemplates, actionTitleTemplates];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CERecommendationStringTemplate);
  v5->_lock._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(&v5->_lock);
  titleTemplates = [(CERecommendationStringTemplate *)self titleTemplates];
  v7 = [titleTemplates copyWithZone:zone];
  titleTemplates = v5->_titleTemplates;
  v5->_titleTemplates = v7;

  subTitleTemplates = [(CERecommendationStringTemplate *)self subTitleTemplates];
  v10 = [subTitleTemplates copyWithZone:zone];
  subTitleTemplates = v5->_subTitleTemplates;
  v5->_subTitleTemplates = v10;

  messageTemplates = [(CERecommendationStringTemplate *)self messageTemplates];
  v13 = [messageTemplates copyWithZone:zone];
  messageTemplates = v5->_messageTemplates;
  v5->_messageTemplates = v13;

  actionTitleTemplates = [(CERecommendationStringTemplate *)self actionTitleTemplates];
  v16 = [actionTitleTemplates copyWithZone:zone];
  actionTitleTemplates = v5->_actionTitleTemplates;
  v5->_actionTitleTemplates = v16;

  os_unfair_lock_unlock(&v5->_lock);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  titleTemplates = [(CERecommendationStringTemplate *)self titleTemplates];
  [coderCopy encodeObject:titleTemplates forKey:@"title"];

  subTitleTemplates = [(CERecommendationStringTemplate *)self subTitleTemplates];
  [coderCopy encodeObject:subTitleTemplates forKey:@"subtitle"];

  messageTemplates = [(CERecommendationStringTemplate *)self messageTemplates];
  [coderCopy encodeObject:messageTemplates forKey:@"message"];

  actionTitleTemplates = [(CERecommendationStringTemplate *)self actionTitleTemplates];
  [coderCopy encodeObject:actionTitleTemplates forKey:@"actionTitle"];
}

- (CERecommendationStringTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CERecommendationStringTemplate;
  v5 = [(CERecommendationStringTemplate *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_opt_class();
    v8 = [coderCopy decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"title"];
    titleTemplates = v6->_titleTemplates;
    v6->_titleTemplates = v8;

    v10 = objc_opt_class();
    v11 = [coderCopy decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"subtitle"];
    subTitleTemplates = v6->_subTitleTemplates;
    v6->_subTitleTemplates = v11;

    v13 = objc_opt_class();
    v14 = [coderCopy decodeDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() forKey:@"message"];
    messageTemplates = v6->_messageTemplates;
    v6->_messageTemplates = v14;

    v16 = objc_opt_class();
    v17 = [coderCopy decodeDictionaryWithKeysOfClass:v16 objectsOfClass:objc_opt_class() forKey:@"actionTitle"];
    actionTitleTemplates = v6->_actionTitleTemplates;
    v6->_actionTitleTemplates = v17;
  }

  return v6;
}

- (NSDictionary)titleTemplates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_titleTemplates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)subTitleTemplates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_subTitleTemplates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)messageTemplates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_messageTemplates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)actionTitleTemplates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_actionTitleTemplates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)titleTemplateForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_titleTemplates valueForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)subTitleTemplateForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_subTitleTemplates valueForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)messageTemplateForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_messageTemplates valueForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)actionTitleTemplateForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_actionTitleTemplates valueForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end