@interface LNEntityIdentifier
- (BOOL)isEqual:(id)equal;
- (LNEntityIdentifier)initWithCoder:(id)coder;
- (LNEntityIdentifier)initWithString:(id)string;
- (LNEntityIdentifier)initWithTypeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier instanceIdentifier:(id)instanceIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEntityIdentifier

- (unint64_t)hash
{
  typeIdentifier = [(LNEntityIdentifier *)self typeIdentifier];
  v4 = [typeIdentifier hash];
  bundleIdentifier = [(LNEntityIdentifier *)self bundleIdentifier];
  v6 = [bundleIdentifier hash] ^ v4;
  instanceIdentifier = [(LNEntityIdentifier *)self instanceIdentifier];
  v8 = [instanceIdentifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    typeIdentifier = [(LNEntityIdentifier *)self typeIdentifier];
    typeIdentifier2 = [(LNEntityIdentifier *)v6 typeIdentifier];
    v9 = typeIdentifier;
    v10 = typeIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    bundleIdentifier = [(LNEntityIdentifier *)self bundleIdentifier];
    bundleIdentifier2 = [(LNEntityIdentifier *)v6 bundleIdentifier];
    v14 = bundleIdentifier;
    v18 = bundleIdentifier2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    instanceIdentifier = [(LNEntityIdentifier *)self instanceIdentifier];
    instanceIdentifier2 = [(LNEntityIdentifier *)v6 instanceIdentifier];
    v20 = instanceIdentifier;
    v23 = instanceIdentifier2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqualToString:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (LNEntityIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNEntityIdentifier *)self initWithTypeIdentifier:v5 bundleIdentifier:v7 instanceIdentifier:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  typeIdentifier = [(LNEntityIdentifier *)self typeIdentifier];
  [coderCopy encodeObject:typeIdentifier forKey:@"typeIdentifier"];

  instanceIdentifier = [(LNEntityIdentifier *)self instanceIdentifier];
  [coderCopy encodeObject:instanceIdentifier forKey:@"instanceIdentifier"];

  bundleIdentifier = [(LNEntityIdentifier *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (id)description
{
  v17[3] = *MEMORY[0x1E69E9840];
  bundleIdentifier = [(LNEntityIdentifier *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    v16[0] = @"bundleIdentifier";
    bundleIdentifier2 = [(LNEntityIdentifier *)self bundleIdentifier];
    v17[0] = bundleIdentifier2;
    v16[1] = @"instanceIdentifier";
    instanceIdentifier = [(LNEntityIdentifier *)self instanceIdentifier];
    v17[1] = instanceIdentifier;
    v16[2] = @"typeIdentifier";
    typeIdentifier = [(LNEntityIdentifier *)self typeIdentifier];
    v17[2] = typeIdentifier;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v15 = 0;
    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:2 error:&v15];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    typeIdentifier2 = [(LNEntityIdentifier *)self typeIdentifier];
    instanceIdentifier2 = [(LNEntityIdentifier *)self instanceIdentifier];
    v9 = [v10 stringWithFormat:@"%@/%@", typeIdentifier2, instanceIdentifier2];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (LNEntityIdentifier)initWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEntityIdentifier.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"identifierString"}];
  }

  if ([stringCopy hasPrefix:@"{"])
  {
    v6 = [stringCopy dataUsingEncoding:4];
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:1 error:0];
    v8 = v7;
    if (!v7)
    {
      selfCopy2 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v9 = [v7 objectForKeyedSubscript:@"typeIdentifier"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v21 = v10;

    v22 = [v21 componentsSeparatedByString:@"."];

    lastObject = [v22 lastObject];

    v23 = [v8 objectForKeyedSubscript:@"instanceIdentifier"];
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v20 = v24;

    v25 = [v8 objectForKeyedSubscript:@"bundleIdentifier"];
    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if ([lastObject length] && objc_msgSend(v20, "length"))
    {
      self = [(LNEntityIdentifier *)self initWithTypeIdentifier:lastObject bundleIdentifier:v27 instanceIdentifier:v20];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }

LABEL_35:
    goto LABEL_36;
  }

  v11 = [stringCopy rangeOfString:@"/"];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v11;
    v15 = v12;
    v6 = [stringCopy substringToIndex:v11];
    v8 = [v6 componentsSeparatedByString:@"."];
    lastObject2 = [v8 lastObject];
    v17 = lastObject2;
    if (lastObject2)
    {
      v18 = lastObject2;
    }

    else
    {
      v18 = v6;
    }

    lastObject = v18;

    v20 = [stringCopy substringFromIndex:v14 + v15];
    if ([lastObject length] && objc_msgSend(v20, "length"))
    {
      self = [(LNEntityIdentifier *)self initWithTypeIdentifier:lastObject bundleIdentifier:0 instanceIdentifier:v20];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }

    goto LABEL_35;
  }

  selfCopy2 = 0;
LABEL_37:

  return selfCopy2;
}

- (LNEntityIdentifier)initWithTypeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier instanceIdentifier:(id)instanceIdentifier
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  v12 = instanceIdentifierCopy;
  if (identifierCopy)
  {
    if (instanceIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEntityIdentifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"typeIdentifier"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNEntityIdentifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"instanceIdentifier"}];

LABEL_3:
  v29.receiver = self;
  v29.super_class = LNEntityIdentifier;
  v13 = [(LNEntityIdentifier *)&v29 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    typeIdentifier = v13->_typeIdentifier;
    v13->_typeIdentifier = v14;

    v16 = [v12 length];
    if (v16 <= LNEntityIdentifierMaximumValueLength)
    {
      v20 = [v12 copy];
    }

    else
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      ln_isTesting = [processInfo ln_isTesting];

      if ((ln_isTesting & 1) == 0)
      {
        v19 = os_log_create("com.apple.runtime-issues", "Link Runtime Issues");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v31 = LNEntityIdentifierMaximumValueLength;
          _os_log_fault_impl(&dword_18EF7E000, v19, OS_LOG_TYPE_FAULT, "Excessive identifier value length. Identifiers should be %ld characters or less, the supplied value was truncated.", buf, 0xCu);
        }
      }

      v20 = [v12 substringToIndex:LNEntityIdentifierMaximumValueLength];
    }

    instanceIdentifier = v13->_instanceIdentifier;
    v13->_instanceIdentifier = v20;

    v22 = [bundleIdentifierCopy copy];
    bundleIdentifier = v13->_bundleIdentifier;
    v13->_bundleIdentifier = v22;

    v24 = v13;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

@end