@interface MCProfileWarning
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProfileWarning:(id)a3;
- (MCProfileWarning)initWithCoder:(id)a3;
- (MCProfileWarning)initWithLocalizedTitle:(id)a3 localizedBody:(id)a4 isLongForm:(BOOL)a5;
- (id)serializedDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MCProfileWarning

- (MCProfileWarning)initWithLocalizedTitle:(id)a3 localizedBody:(id)a4 isLongForm:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MCProfileWarning;
  v11 = [(MCProfileWarning *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localizedTitle, a3);
    objc_storeStrong(&v12->_localizedBody, a4);
    v12->_isLongForm = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  localizedTitle = self->_localizedTitle;
  v5 = a3;
  [v5 encodeObject:localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_localizedBody forKey:@"localizedBody"];
  [v5 encodeBool:self->_isLongForm forKey:@"isLongForm"];
}

- (MCProfileWarning)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MCProfileWarning;
  v5 = [(MCProfileWarning *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedBody"];
    localizedBody = v5->_localizedBody;
    v5->_localizedBody = v8;

    v5->_isLongForm = [v4 decodeBoolForKey:@"isLongForm"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCProfileWarning *)self isEqualToProfileWarning:v4];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = MCProfileWarning;
      v5 = [(MCProfileWarning *)&v8 isEqual:v4];
    }

    v6 = v5;
  }

  return v6;
}

- (BOOL)isEqualToProfileWarning:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(MCProfileWarning *)self localizedTitle];
      v8 = [v6 localizedTitle];
      if (v7 == v8 || (-[MCProfileWarning localizedTitle](self, "localizedTitle"), v3 = objc_claimAutoreleasedReturnValue(), [v6 localizedTitle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
      {
        v10 = [(MCProfileWarning *)self localizedBody];
        v11 = [v6 localizedBody];
        v12 = v11;
        if (v10 == v11)
        {

          v9 = 1;
        }

        else
        {
          v13 = [(MCProfileWarning *)self localizedBody];
          v14 = [v6 localizedBody];
          v9 = [v13 isEqualToString:v14];
        }

        if (v7 == v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_12:
      goto LABEL_13;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)serializedDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_localizedTitle forKeyedSubscript:@"Title"];
  [v3 setObject:self->_localizedBody forKeyedSubscript:@"Body"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLongForm];
  [v3 setObject:v4 forKeyedSubscript:@"Long Form"];

  return v3;
}

@end