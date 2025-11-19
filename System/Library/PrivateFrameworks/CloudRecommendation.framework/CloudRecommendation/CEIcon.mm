@interface CEIcon
- (CEIcon)initWithCoder:(id)a3;
- (CEIcon)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CEIcon

- (CEIcon)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CEIcon;
  v5 = [(CEIcon *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      type = v5->_type;
      v5->_type = v7;
    }

    else
    {
      type = _CELogSystem();
      if (os_log_type_enabled(type, OS_LOG_TYPE_DEBUG))
      {
        [CEIcon initWithDictionary:];
      }
    }
  }

  return v5;
}

- (CEIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CEIcon;
  v5 = [(CEIcon *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CEIcon allocWithZone:?]];
  [(CEIcon *)v4 setType:self->_type];
  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse type from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end