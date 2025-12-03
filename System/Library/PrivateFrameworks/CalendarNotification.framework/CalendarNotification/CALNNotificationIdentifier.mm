@interface CALNNotificationIdentifier
+ (id)_allowedCharacterSetForEncodingNotificationIdentifierComponents;
+ (id)_constructNotificationIdentifierStringRepresentationFromComponents:(id)components;
+ (id)_deconstructNotificationIdentifierStringRepresentationIntoComponents:(id)components;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNotificationIdentifier:(id)identifier;
- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier;
- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier stringRepresentation:(id)representation;
- (CALNNotificationIdentifier)initWithStringRepresentation:(id)representation;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationIdentifier

+ (id)_constructNotificationIdentifierStringRepresentationFromComponents:(id)components
{
  v16[2] = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
  }

  sourceIdentifier = [componentsCopy sourceIdentifier];
  sourceClientIdentifier = [componentsCopy sourceClientIdentifier];
  if (![sourceIdentifier length])
  {
    _allowedCharacterSetForEncodingNotificationIdentifierComponents = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(_allowedCharacterSetForEncodingNotificationIdentifierComponents, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
    }

    goto LABEL_13;
  }

  if (![sourceClientIdentifier length])
  {
    _allowedCharacterSetForEncodingNotificationIdentifierComponents = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(_allowedCharacterSetForEncodingNotificationIdentifierComponents, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationIdentifier _constructNotificationIdentifierStringRepresentationFromComponents:];
    }

LABEL_13:
    v12 = 0;
    goto LABEL_18;
  }

  _allowedCharacterSetForEncodingNotificationIdentifierComponents = [self _allowedCharacterSetForEncodingNotificationIdentifierComponents];
  v9 = [sourceIdentifier stringByAddingPercentEncodingWithAllowedCharacters:_allowedCharacterSetForEncodingNotificationIdentifierComponents];
  if (v9)
  {
    v10 = [sourceClientIdentifier stringByAddingPercentEncodingWithAllowedCharacters:_allowedCharacterSetForEncodingNotificationIdentifierComponents];
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

+ (id)_deconstructNotificationIdentifierStringRepresentationIntoComponents:(id)components
{
  v23 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v4 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[CALNNotificationIdentifier _deconstructNotificationIdentifierStringRepresentationIntoComponents:];
  }

  v5 = [componentsCopy componentsSeparatedByString:@"/"];
  if ([v5 count] == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v5 objectAtIndexedSubscript:1];
    stringByRemovingPercentEncoding = [v6 stringByRemovingPercentEncoding];
    stringByRemovingPercentEncoding2 = [v7 stringByRemovingPercentEncoding];
    if ([stringByRemovingPercentEncoding length])
    {
      if ([stringByRemovingPercentEncoding2 length])
      {
        v10 = [[CALNNotificationIdentifierComponents alloc] initWithSourceIdentifier:stringByRemovingPercentEncoding sourceClientIdentifier:stringByRemovingPercentEncoding2];
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
    v22 = componentsCopy;
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

- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v8 = [[CALNNotificationIdentifierComponents alloc] initWithSourceIdentifier:identifierCopy sourceClientIdentifier:clientIdentifierCopy];
  v9 = [objc_opt_class() _constructNotificationIdentifierStringRepresentationFromComponents:v8];
  if (v9)
  {
    self = [(CALNNotificationIdentifier *)self initWithSourceIdentifier:identifierCopy sourceClientIdentifier:clientIdentifierCopy stringRepresentation:v9];
    selfCopy = self;
  }

  else
  {
    v11 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationIdentifier initWithSourceIdentifier:sourceClientIdentifier:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CALNNotificationIdentifier)initWithStringRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [objc_opt_class() _deconstructNotificationIdentifierStringRepresentationIntoComponents:representationCopy];
  v6 = v5;
  if (v5)
  {
    sourceIdentifier = [v5 sourceIdentifier];
    sourceClientIdentifier = [v6 sourceClientIdentifier];
    self = [(CALNNotificationIdentifier *)self initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier stringRepresentation:representationCopy];

    selfCopy = self;
  }

  else
  {
    v10 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationIdentifier initWithStringRepresentation:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CALNNotificationIdentifier)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier stringRepresentation:(id)representation
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = CALNNotificationIdentifier;
  v11 = [(CALNNotificationIdentifier *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    sourceIdentifier = v11->_sourceIdentifier;
    v11->_sourceIdentifier = v12;

    v14 = [clientIdentifierCopy copy];
    sourceClientIdentifier = v11->_sourceClientIdentifier;
    v11->_sourceClientIdentifier = v14;

    v16 = [representationCopy copy];
    stringRepresentation = v11->_stringRepresentation;
    v11->_stringRepresentation = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  sourceIdentifier = [(CALNNotificationIdentifier *)self sourceIdentifier];
  v4 = [sourceIdentifier hash];

  sourceClientIdentifier = [(CALNNotificationIdentifier *)self sourceClientIdentifier];
  v6 = [sourceClientIdentifier hash] ^ v4;

  sourceIdentifier2 = [(CALNNotificationIdentifier *)self sourceIdentifier];
  v8 = [sourceIdentifier2 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationIdentifier *)self isEqualToNotificationIdentifier:equalCopy];

  return v5;
}

- (BOOL)isEqualToNotificationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self == identifierCopy)
  {
    v13 = 1;
  }

  else
  {
    sourceIdentifier = [(CALNNotificationIdentifier *)self sourceIdentifier];
    sourceIdentifier2 = [(CALNNotificationIdentifier *)identifierCopy sourceIdentifier];
    v7 = CalEqualStrings();

    if (v7 && ([(CALNNotificationIdentifier *)self sourceClientIdentifier], v8 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationIdentifier *)identifierCopy sourceClientIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = CalEqualStrings(), v9, v8, v10))
    {
      stringRepresentation = [(CALNNotificationIdentifier *)self stringRepresentation];
      stringRepresentation2 = [(CALNNotificationIdentifier *)identifierCopy stringRepresentation];
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
  sourceIdentifier = [(CALNNotificationIdentifier *)self sourceIdentifier];
  sourceClientIdentifier = [(CALNNotificationIdentifier *)self sourceClientIdentifier];
  stringRepresentation = [(CALNNotificationIdentifier *)self stringRepresentation];
  v8 = [v3 stringWithFormat:@"<%@: %p>(sourceIdentifier = %@, sourceClientIdentifier = %@, stringRepresentation = %@)", v4, self, sourceIdentifier, sourceClientIdentifier, stringRepresentation];

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