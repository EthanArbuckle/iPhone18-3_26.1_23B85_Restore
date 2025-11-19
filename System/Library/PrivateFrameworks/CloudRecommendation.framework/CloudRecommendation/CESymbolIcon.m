@interface CESymbolIcon
- (CESymbolIcon)initWithCoder:(id)a3;
- (CESymbolIcon)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CESymbolIcon

- (CESymbolIcon)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CESymbolIcon;
  v5 = [(CEIcon *)&v22 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      identifier = v5->_identifier;
      v5->_identifier = v7;
    }

    else
    {
      identifier = _CELogSystem();
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:];
      }
    }

    v9 = [v4 objectForKeyedSubscript:@"path"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      path = v5->_path;
      v5->_path = v10;
    }

    else
    {
      path = _CELogSystem();
      if (os_log_type_enabled(path, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:];
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"color"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      systemColorName = v5->_systemColorName;
      v5->_systemColorName = v13;
    }

    else
    {
      systemColorName = _CELogSystem();
      if (os_log_type_enabled(systemColorName, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:];
      }
    }

    v15 = [v4 objectForKeyedSubscript:@"foregroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      foregroundSystemColorName = v5->_foregroundSystemColorName;
      v5->_foregroundSystemColorName = v16;
    }

    else
    {
      foregroundSystemColorName = _CELogSystem();
      if (os_log_type_enabled(foregroundSystemColorName, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:];
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      backgroundSystemColorName = v5->_backgroundSystemColorName;
      v5->_backgroundSystemColorName = v19;
    }

    else
    {
      backgroundSystemColorName = _CELogSystem();
      if (os_log_type_enabled(backgroundSystemColorName, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:];
      }
    }
  }

  return v5;
}

- (CESymbolIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CESymbolIcon;
  v5 = [(CEIcon *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemColorName"];
    systemColorName = v5->_systemColorName;
    v5->_systemColorName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundSystemColorName"];
    foregroundSystemColorName = v5->_foregroundSystemColorName;
    v5->_foregroundSystemColorName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundSystemColorName"];
    backgroundSystemColorName = v5->_backgroundSystemColorName;
    v5->_backgroundSystemColorName = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CESymbolIcon;
  v4 = [(CEIcon *)&v6 copyWithZone:a3];
  [v4 setIdentifier:self->_identifier];
  [v4 setPath:self->_path];
  [v4 setSystemColorName:self->_systemColorName];
  [v4 setForegroundSystemColorName:self->_foregroundSystemColorName];
  [v4 setBackgroundSystemColorName:self->_backgroundSystemColorName];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CESymbolIcon;
  v4 = a3;
  [(CEIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"id", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_path forKey:@"path"];
  [v4 encodeObject:self->_systemColorName forKey:@"systemColorName"];
  [v4 encodeObject:self->_foregroundSystemColorName forKey:@"foregroundSystemColorName"];
  [v4 encodeObject:self->_backgroundSystemColorName forKey:@"backgroundSystemColorName"];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CESymbolIcon;
  v3 = [(CEIcon *)&v7 description];
  foregroundSystemColorName = self->_foregroundSystemColorName;
  v5 = [v3 stringByAppendingFormat:@" id: %@, path: %@, systemColorName: %@, foregroundSystemColorName: %@, backgroundSystemColorName: %@", self->_identifier, self->_path, self->_systemColorName, foregroundSystemColorName, self->_backgroundSystemColorName];

  return v5;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse identifier from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse path from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse color from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.4()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse foreground color from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.5()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse background color from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end