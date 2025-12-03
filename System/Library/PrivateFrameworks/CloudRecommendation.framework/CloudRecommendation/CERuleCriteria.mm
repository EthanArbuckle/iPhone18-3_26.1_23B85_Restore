@interface CERuleCriteria
- (CERuleCriteria)initWithCoder:(id)coder;
- (CERuleCriteria)initWithDictionary:(id)dictionary;
- (NSNumber)max;
- (NSNumber)min;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setMax:(id)max;
- (void)setMin:(id)min;
@end

@implementation CERuleCriteria

- (CERuleCriteria)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CERuleCriteria;
  v5 = [(CERuleCriteria *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      p_super = &v6->_min->super.super;
      v6->_min = v8;
    }

    else
    {
      p_super = _CELogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [CERuleCriteria initWithDictionary:];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"max"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = &v6->_max->super.super;
      v6->_max = v11;
    }

    else
    {
      v12 = _CELogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CERuleCriteria initWithDictionary:];
      }
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CERuleCriteria *)self min];
  [coderCopy encodeObject:v5 forKey:@"min"];

  v6 = [(CERuleCriteria *)self max];
  [coderCopy encodeObject:v6 forKey:@"max"];
}

- (CERuleCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CERuleCriteria;
  v5 = [(CERuleCriteria *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"min"];
    min = v6->_min;
    v6->_min = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"max"];
    max = v6->_max;
    v6->_max = v9;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CERuleCriteria allocWithZone:?]];
  v4->_lock._os_unfair_lock_opaque = 0;
  v5 = [(CERuleCriteria *)self min];
  [(CERuleCriteria *)v4 setMin:v5];

  v6 = [(CERuleCriteria *)self max];
  [(CERuleCriteria *)v4 setMax:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CERuleCriteria *)self min];
  v5 = [(CERuleCriteria *)self max];
  v6 = [v3 stringWithFormat:@"Criteria with min: %@, max: %@", v4, v5];

  return v6;
}

- (NSNumber)min
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_min;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)max
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_max;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMin:(id)min
{
  minCopy = min;
  os_unfair_lock_lock(&self->_lock);
  min = self->_min;
  self->_min = minCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMax:(id)max
{
  maxCopy = max;
  os_unfair_lock_lock(&self->_lock);
  max = self->_max;
  self->_max = maxCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithDictionary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_2439E1000, v1, v2, "%@ unable to parse min from dictionary.", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_2439E1000, v1, v2, "%@ unable to parse max from dictionary.", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end