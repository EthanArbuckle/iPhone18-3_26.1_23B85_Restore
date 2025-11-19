@interface CERecommendationStringTemplate
- (CERecommendationStringTemplate)initWithCoder:(id)a3;
- (CERecommendationStringTemplate)initWithDictionary:(id)a3;
- (NSDictionary)actionTitleTemplates;
- (NSDictionary)messageTemplates;
- (NSDictionary)subTitleTemplates;
- (NSDictionary)titleTemplates;
- (id)actionTitleTemplateForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messageTemplateForKey:(id)a3;
- (id)subTitleTemplateForKey:(id)a3;
- (id)titleTemplateForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CERecommendationStringTemplate

- (CERecommendationStringTemplate)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CERecommendationStringTemplate;
  v5 = [(CERecommendationStringTemplate *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 objectForKeyedSubscript:@"title"];
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

    v10 = [v4 objectForKeyedSubscript:@"subtitle"];
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

    v13 = [v4 objectForKeyedSubscript:@"message"];
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

    v16 = [v4 objectForKeyedSubscript:@"actionTitle"];
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
  v4 = [(CERecommendationStringTemplate *)self titleTemplates];
  v5 = [(CERecommendationStringTemplate *)self subTitleTemplates];
  v6 = [(CERecommendationStringTemplate *)self messageTemplates];
  v7 = [(CERecommendationStringTemplate *)self actionTitleTemplates];
  v8 = [v3 stringWithFormat:@"titleTemplates: %@, subTitleTemplates: %@, messageTemplates: %@, actionTitleTemplates: %@", v4, v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CERecommendationStringTemplate);
  v5->_lock._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(&v5->_lock);
  v6 = [(CERecommendationStringTemplate *)self titleTemplates];
  v7 = [v6 copyWithZone:a3];
  titleTemplates = v5->_titleTemplates;
  v5->_titleTemplates = v7;

  v9 = [(CERecommendationStringTemplate *)self subTitleTemplates];
  v10 = [v9 copyWithZone:a3];
  subTitleTemplates = v5->_subTitleTemplates;
  v5->_subTitleTemplates = v10;

  v12 = [(CERecommendationStringTemplate *)self messageTemplates];
  v13 = [v12 copyWithZone:a3];
  messageTemplates = v5->_messageTemplates;
  v5->_messageTemplates = v13;

  v15 = [(CERecommendationStringTemplate *)self actionTitleTemplates];
  v16 = [v15 copyWithZone:a3];
  actionTitleTemplates = v5->_actionTitleTemplates;
  v5->_actionTitleTemplates = v16;

  os_unfair_lock_unlock(&v5->_lock);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CERecommendationStringTemplate *)self titleTemplates];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(CERecommendationStringTemplate *)self subTitleTemplates];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(CERecommendationStringTemplate *)self messageTemplates];
  [v4 encodeObject:v7 forKey:@"message"];

  v8 = [(CERecommendationStringTemplate *)self actionTitleTemplates];
  [v4 encodeObject:v8 forKey:@"actionTitle"];
}

- (CERecommendationStringTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CERecommendationStringTemplate;
  v5 = [(CERecommendationStringTemplate *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_opt_class();
    v8 = [v4 decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"title"];
    titleTemplates = v6->_titleTemplates;
    v6->_titleTemplates = v8;

    v10 = objc_opt_class();
    v11 = [v4 decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"subtitle"];
    subTitleTemplates = v6->_subTitleTemplates;
    v6->_subTitleTemplates = v11;

    v13 = objc_opt_class();
    v14 = [v4 decodeDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() forKey:@"message"];
    messageTemplates = v6->_messageTemplates;
    v6->_messageTemplates = v14;

    v16 = objc_opt_class();
    v17 = [v4 decodeDictionaryWithKeysOfClass:v16 objectsOfClass:objc_opt_class() forKey:@"actionTitle"];
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

- (id)titleTemplateForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_titleTemplates valueForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)subTitleTemplateForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_subTitleTemplates valueForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)messageTemplateForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_messageTemplates valueForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)actionTitleTemplateForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_actionTitleTemplates valueForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end