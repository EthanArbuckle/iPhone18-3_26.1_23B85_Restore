@interface LNEntityIdentifier
- (BOOL)isEqual:(id)a3;
- (LNEntityIdentifier)initWithCoder:(id)a3;
- (LNEntityIdentifier)initWithString:(id)a3;
- (LNEntityIdentifier)initWithTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 instanceIdentifier:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEntityIdentifier

- (unint64_t)hash
{
  v3 = [(LNEntityIdentifier *)self typeIdentifier];
  v4 = [v3 hash];
  v5 = [(LNEntityIdentifier *)self bundleIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNEntityIdentifier *)self instanceIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNEntityIdentifier *)self typeIdentifier];
    v8 = [(LNEntityIdentifier *)v6 typeIdentifier];
    v9 = v7;
    v10 = v8;
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

    v16 = [(LNEntityIdentifier *)self bundleIdentifier];
    v17 = [(LNEntityIdentifier *)v6 bundleIdentifier];
    v14 = v16;
    v18 = v17;
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

    v21 = [(LNEntityIdentifier *)self instanceIdentifier];
    v22 = [(LNEntityIdentifier *)v6 instanceIdentifier];
    v20 = v21;
    v23 = v22;
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

- (LNEntityIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"instanceIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

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
    v9 = 0;
  }

  else
  {
    self = [(LNEntityIdentifier *)self initWithTypeIdentifier:v5 bundleIdentifier:v7 instanceIdentifier:v6];
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNEntityIdentifier *)self typeIdentifier];
  [v4 encodeObject:v5 forKey:@"typeIdentifier"];

  v6 = [(LNEntityIdentifier *)self instanceIdentifier];
  [v4 encodeObject:v6 forKey:@"instanceIdentifier"];

  v7 = [(LNEntityIdentifier *)self bundleIdentifier];
  [v4 encodeObject:v7 forKey:@"bundleIdentifier"];
}

- (id)description
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = [(LNEntityIdentifier *)self bundleIdentifier];

  if (v3)
  {
    v16[0] = @"bundleIdentifier";
    v4 = [(LNEntityIdentifier *)self bundleIdentifier];
    v17[0] = v4;
    v16[1] = @"instanceIdentifier";
    v5 = [(LNEntityIdentifier *)self instanceIdentifier];
    v17[1] = v5;
    v16[2] = @"typeIdentifier";
    v6 = [(LNEntityIdentifier *)self typeIdentifier];
    v17[2] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v15 = 0;
    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:2 error:&v15];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(LNEntityIdentifier *)self typeIdentifier];
    v12 = [(LNEntityIdentifier *)self instanceIdentifier];
    v9 = [v10 stringWithFormat:@"%@/%@", v11, v12];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (LNEntityIdentifier)initWithString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"LNEntityIdentifier.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"identifierString"}];
  }

  if ([v5 hasPrefix:@"{"])
  {
    v6 = [v5 dataUsingEncoding:4];
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:1 error:0];
    v8 = v7;
    if (!v7)
    {
      v13 = 0;
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

    v19 = [v22 lastObject];

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

    if ([v19 length] && objc_msgSend(v20, "length"))
    {
      self = [(LNEntityIdentifier *)self initWithTypeIdentifier:v19 bundleIdentifier:v27 instanceIdentifier:v20];
      v13 = self;
    }

    else
    {
      v13 = 0;
    }

LABEL_35:
    goto LABEL_36;
  }

  v11 = [v5 rangeOfString:@"/"];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v11;
    v15 = v12;
    v6 = [v5 substringToIndex:v11];
    v8 = [v6 componentsSeparatedByString:@"."];
    v16 = [v8 lastObject];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v6;
    }

    v19 = v18;

    v20 = [v5 substringFromIndex:v14 + v15];
    if ([v19 length] && objc_msgSend(v20, "length"))
    {
      self = [(LNEntityIdentifier *)self initWithTypeIdentifier:v19 bundleIdentifier:0 instanceIdentifier:v20];
      v13 = self;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_35;
  }

  v13 = 0;
LABEL_37:

  return v13;
}

- (LNEntityIdentifier)initWithTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 instanceIdentifier:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"LNEntityIdentifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"typeIdentifier"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"LNEntityIdentifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"instanceIdentifier"}];

LABEL_3:
  v29.receiver = self;
  v29.super_class = LNEntityIdentifier;
  v13 = [(LNEntityIdentifier *)&v29 init];
  if (v13)
  {
    v14 = [v9 copy];
    typeIdentifier = v13->_typeIdentifier;
    v13->_typeIdentifier = v14;

    v16 = [v12 length];
    if (v16 <= LNEntityIdentifierMaximumValueLength)
    {
      v20 = [v12 copy];
    }

    else
    {
      v17 = [MEMORY[0x1E696AE30] processInfo];
      v18 = [v17 ln_isTesting];

      if ((v18 & 1) == 0)
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

    v22 = [v10 copy];
    bundleIdentifier = v13->_bundleIdentifier;
    v13->_bundleIdentifier = v22;

    v24 = v13;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

@end