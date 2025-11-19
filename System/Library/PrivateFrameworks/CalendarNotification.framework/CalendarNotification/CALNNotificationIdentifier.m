@interface CALNNotificationIdentifier
+ (id)_allowedCharacterSetForEncodingNotificationIdentifierComponents;
+ (id)_constructNotificationIdentifierStringRepresentationFromComponents:(id)a3;
+ (id)_deconstructNotificationIdentifierStringRepresentationIntoComponents:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNotificationIdentifier:(id)a3;
- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4;
- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4 stringRepresentation:(id)a5;
- (CALNNotificationIdentifier)initWithStringRepresentation:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationIdentifier

+ (id)_constructNotificationIdentifierStringRepresentationFromComponents:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
  }

  v6 = [v4 sourceIdentifier];
  v7 = [v4 sourceClientIdentifier];
  if (![v6 length])
  {
    v8 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
    }

    goto LABEL_13;
  }

  if (![v7 length])
  {
    v8 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
    }

LABEL_13:
    v12 = 0;
    goto LABEL_18;
  }

  v8 = [a1 _allowedCharacterSetForEncodingNotificationIdentifierComponents];
  v9 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v8];
  if (v9)
  {
    v10 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];
    v16[0] = v9;
    v16[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v12 = [v11 componentsJoinedByString:@"/"];
    v13 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
    }

    v12 = 0;
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_deconstructNotificationIdentifierStringRepresentationIntoComponents:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CALNNotificationIdentifier _deconstructNotificationIdentifierStringRepresentationIntoComponents:];
  }

  v5 = [v3 componentsSeparatedByString:@"/"];
  if ([v5 count] == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v5 objectAtIndexedSubscript:1];
    v8 = [v6 stringByRemovingPercentEncoding];
    v9 = [v7 stringByRemovingPercentEncoding];
    if ([v8 length])
    {
      if ([v9 length])
      {
        v10 = [[CALNNotificationIdentifierComponents alloc] initWithSourceIdentifier:v8 sourceClientIdentifier:v9];
        v11 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          +[CALNNotificationIdentifier _deconstructNotificationIdentifierStringRepresentationIntoComponents:];
        }

        goto LABEL_16;
      }

      v11 = +[CALNLogSubsystem defaultCategory];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CALNNotificationIdentifier _deconstructNotificationIdentifierStringRepresentationIntoComponents:];
      }
    }

    else
    {
      v11 = +[CALNLogSubsystem defaultCategory];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CALNNotificationIdentifier _deconstructNotificationIdentifierStringRepresentationIntoComponents:];
      }
    }

    v10 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v15 = 138544130;
    v16 = &unk_2855308A8;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = v5;
    v21 = 2114;
    v22 = v3;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Cannot deconstruct notification identifier string representation into components since there are an unexpected number of encoded components. Expected encoded component count: %{public}@. Actual encoded component count: %{public}@. Encoded components: %{public}@. String representation: %{public}@.", &v15, 0x2Au);
  }

  v10 = 0;
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_allowedCharacterSetForEncodingNotificationIdentifierComponents
{
  if (_allowedCharacterSetForEncodingNotificationIdentifierComponents_onceToken != -1)
  {
    +[CALNNotificationIdentifier _allowedCharacterSetForEncodingNotificationIdentifierComponents];
  }

  v3 = _allowedCharacterSetForEncodingNotificationIdentifierComponents_allowedCharacterSet;

  return v3;
}

void __93__CALNNotificationIdentifier__allowedCharacterSetForEncodingNotificationIdentifierComponents__block_invoke()
{
  v3 = [@"/" stringByAppendingString:@"%"];
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v3];
  v1 = [v0 invertedSet];
  v2 = _allowedCharacterSetForEncodingNotificationIdentifierComponents_allowedCharacterSet;
  _allowedCharacterSetForEncodingNotificationIdentifierComponents_allowedCharacterSet = v1;
}

- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CALNNotificationIdentifierComponents alloc] initWithSourceIdentifier:v6 sourceClientIdentifier:v7];
  v9 = [objc_opt_class() _constructNotificationIdentifierStringRepresentationFromComponents:v8];
  if (v9)
  {
    self = [(CALNNotificationIdentifier *)self initWithSourceIdentifier:v6 sourceClientIdentifier:v7 stringRepresentation:v9];
    v10 = self;
  }

  else
  {
    v11 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationIdentifier initWithSourceIdentifier:sourceClientIdentifier:];
    }

    v10 = 0;
  }

  return v10;
}

- (CALNNotificationIdentifier)initWithStringRepresentation:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _deconstructNotificationIdentifierStringRepresentationIntoComponents:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sourceIdentifier];
    v8 = [v6 sourceClientIdentifier];
    self = [(CALNNotificationIdentifier *)self initWithSourceIdentifier:v7 sourceClientIdentifier:v8 stringRepresentation:v4];

    v9 = self;
  }

  else
  {
    v10 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationIdentifier initWithStringRepresentation:];
    }

    v9 = 0;
  }

  return v9;
}

- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4 stringRepresentation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CALNNotificationIdentifier;
  v11 = [(CALNNotificationIdentifier *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    sourceIdentifier = v11->_sourceIdentifier;
    v11->_sourceIdentifier = v12;

    v14 = [v9 copy];
    sourceClientIdentifier = v11->_sourceClientIdentifier;
    v11->_sourceClientIdentifier = v14;

    v16 = [v10 copy];
    stringRepresentation = v11->_stringRepresentation;
    v11->_stringRepresentation = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(CALNNotificationIdentifier *)self sourceIdentifier];
  v4 = [v3 hash];

  v5 = [(CALNNotificationIdentifier *)self sourceClientIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(CALNNotificationIdentifier *)self sourceIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationIdentifier *)self isEqualToNotificationIdentifier:v4];

  return v5;
}

- (BOOL)isEqualToNotificationIdentifier:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v5 = [(CALNNotificationIdentifier *)self sourceIdentifier];
    v6 = [(CALNNotificationIdentifier *)v4 sourceIdentifier];
    v7 = CalEqualStrings();

    if (v7 && ([(CALNNotificationIdentifier *)self sourceClientIdentifier], v8 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationIdentifier *)v4 sourceClientIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = CalEqualStrings(), v9, v8, v10))
    {
      v11 = [(CALNNotificationIdentifier *)self stringRepresentation];
      v12 = [(CALNNotificationIdentifier *)v4 stringRepresentation];
      v13 = CalEqualStrings();
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNNotificationIdentifier *)self sourceIdentifier];
  v6 = [(CALNNotificationIdentifier *)self sourceClientIdentifier];
  v7 = [(CALNNotificationIdentifier *)self stringRepresentation];
  v8 = [v3 stringWithFormat:@"<%@: %p>(sourceIdentifier = %@, sourceClientIdentifier = %@, stringRepresentation = %@)", v4, self, v5, v6, v7];

  return v8;
}

+ (void)_constructNotificationIdentifierStringRepresentationFromComponents:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_242909000, v0, OS_LOG_TYPE_DEBUG, "Constructing notification identifier string representation from components: %{public}@.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_constructNotificationIdentifierStringRepresentationFromComponents:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_242909000, v0, v1, "Constructed notification identifier string representation from components. String representation: %{public}@. Components: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_constructNotificationIdentifierStringRepresentationFromComponents:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Cannot construct notification identifier string representation from components since source identifier could not be encoded. Components: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_constructNotificationIdentifierStringRepresentationFromComponents:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Cannot construct notification identifier string representation from components since source client identifier is an empty string. Components: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_constructNotificationIdentifierStringRepresentationFromComponents:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Cannot construct notification identifier string representation from components since source identifier is an empty string. Components: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_deconstructNotificationIdentifierStringRepresentationIntoComponents:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_242909000, v0, OS_LOG_TYPE_DEBUG, "Deconstructing notification identifier string representation into components. String representation: %{public}@.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_deconstructNotificationIdentifierStringRepresentationIntoComponents:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_242909000, v0, v1, "Deconstructed notification identifier string representation into components. String representation: %{public}@. Components: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_deconstructNotificationIdentifierStringRepresentationIntoComponents:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Cannot deconstruct notification identifier string representation into components since source client identifier is an empty string. String representation: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_deconstructNotificationIdentifierStringRepresentationIntoComponents:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Cannot deconstruct notification identifier string representation into components since source identifier is an empty string. String representation: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSourceIdentifier:sourceClientIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_242909000, v0, OS_LOG_TYPE_ERROR, "Cannot initialize notification identifier with source client identifier and source client identifier because a string representation could not be constructed. Source identifier: %{public}@. Source Client identifier: %{public}@.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithStringRepresentation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Cannot initialize notification identifier with string representation because string representation could not be deconstructed into components. String representation: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end