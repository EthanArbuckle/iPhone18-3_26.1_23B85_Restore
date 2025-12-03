@interface LNActionSummaryString
- (BOOL)isEqual:(id)equal;
- (LNActionSummaryString)initWithCoder:(id)coder;
- (LNActionSummaryString)initWithFormatString:(id)string parameterIdentifiers:(id)identifiers;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionSummaryString

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(parameterIdentifiers3) = 0;
LABEL_20:

      goto LABEL_21;
    }

    formatString = [(LNActionSummaryString *)self formatString];
    formatString2 = [(LNActionSummaryString *)v6 formatString];
    v9 = formatString;
    v10 = formatString2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(parameterIdentifiers3) = 0;
      v13 = v10;
      parameterIdentifiers5 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_16;
      }

      LODWORD(parameterIdentifiers3) = [v9 isEqualToString:v10];

      if (!parameterIdentifiers3)
      {
        goto LABEL_19;
      }
    }

    parameterIdentifiers = [(LNActionSummaryString *)self parameterIdentifiers];
    parameterIdentifiers2 = [(LNActionSummaryString *)v6 parameterIdentifiers];

    if (parameterIdentifiers == parameterIdentifiers2)
    {
      LOBYTE(parameterIdentifiers3) = 1;
      goto LABEL_19;
    }

    parameterIdentifiers3 = [(LNActionSummaryString *)self parameterIdentifiers];
    if (!parameterIdentifiers3)
    {
LABEL_19:

      goto LABEL_20;
    }

    parameterIdentifiers4 = [(LNActionSummaryString *)v6 parameterIdentifiers];

    if (!parameterIdentifiers4)
    {
      LOBYTE(parameterIdentifiers3) = 0;
      goto LABEL_19;
    }

    parameterIdentifiers3 = MEMORY[0x1E695DFD8];
    parameterIdentifiers5 = [(LNActionSummaryString *)self parameterIdentifiers];
    v13 = [parameterIdentifiers3 setWithArray:parameterIdentifiers5];
    v18 = MEMORY[0x1E695DFD8];
    parameterIdentifiers6 = [(LNActionSummaryString *)v6 parameterIdentifiers];
    v20 = [v18 setWithArray:parameterIdentifiers6];
    LOBYTE(parameterIdentifiers3) = [v13 isEqualToSet:v20];

LABEL_16:
    goto LABEL_19;
  }

  LOBYTE(parameterIdentifiers3) = 1;
LABEL_21:

  return parameterIdentifiers3;
}

- (unint64_t)hash
{
  formatString = [(LNActionSummaryString *)self formatString];
  v4 = [formatString hash];
  parameterIdentifiers = [(LNActionSummaryString *)self parameterIdentifiers];
  v6 = [parameterIdentifiers hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  formatString = [(LNActionSummaryString *)self formatString];
  [coderCopy encodeObject:formatString forKey:@"formatString"];

  parameterIdentifiers = [(LNActionSummaryString *)self parameterIdentifiers];
  [coderCopy encodeObject:parameterIdentifiers forKey:@"parameterIdentifiers"];
}

- (LNActionSummaryString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatString"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parameterIdentifiers"];

    if (v9)
    {
      self = [(LNActionSummaryString *)self initWithFormatString:v5 parameterIdentifiers:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  formatString = [(LNActionSummaryString *)self formatString];
  parameterIdentifiers = [(LNActionSummaryString *)self parameterIdentifiers];
  v8 = [parameterIdentifiers valueForKeyPath:@"description"];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@: %p, formatString: %@, parameterIdentifiers: [%@]>", v5, self, formatString, v9];

  return v10;
}

- (LNActionSummaryString)initWithFormatString:(id)string parameterIdentifiers:(id)identifiers
{
  stringCopy = string;
  identifiersCopy = identifiers;
  v9 = identifiersCopy;
  if (stringCopy)
  {
    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionSummaryString.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"formatString"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionSummaryString.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifiers"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNActionSummaryString;
  v10 = [(LNActionSummaryString *)&v19 init];
  if (v10)
  {
    v11 = [stringCopy copy];
    formatString = v10->_formatString;
    v10->_formatString = v11;

    v13 = [v9 copy];
    parameterIdentifiers = v10->_parameterIdentifiers;
    v10->_parameterIdentifiers = v13;

    v15 = v10;
  }

  return v10;
}

@end