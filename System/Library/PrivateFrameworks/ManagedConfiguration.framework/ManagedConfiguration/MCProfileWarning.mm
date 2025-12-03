@interface MCProfileWarning
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProfileWarning:(id)warning;
- (MCProfileWarning)initWithCoder:(id)coder;
- (MCProfileWarning)initWithLocalizedTitle:(id)title localizedBody:(id)body isLongForm:(BOOL)form;
- (id)serializedDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCProfileWarning

- (MCProfileWarning)initWithLocalizedTitle:(id)title localizedBody:(id)body isLongForm:(BOOL)form
{
  titleCopy = title;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = MCProfileWarning;
  v11 = [(MCProfileWarning *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localizedTitle, title);
    objc_storeStrong(&v12->_localizedBody, body);
    v12->_isLongForm = form;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  localizedTitle = self->_localizedTitle;
  coderCopy = coder;
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedBody forKey:@"localizedBody"];
  [coderCopy encodeBool:self->_isLongForm forKey:@"isLongForm"];
}

- (MCProfileWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MCProfileWarning;
  v5 = [(MCProfileWarning *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedBody"];
    localizedBody = v5->_localizedBody;
    v5->_localizedBody = v8;

    v5->_isLongForm = [coderCopy decodeBoolForKey:@"isLongForm"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCProfileWarning *)self isEqualToProfileWarning:equalCopy];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = MCProfileWarning;
      v5 = [(MCProfileWarning *)&v8 isEqual:equalCopy];
    }

    v6 = v5;
  }

  return v6;
}

- (BOOL)isEqualToProfileWarning:(id)warning
{
  warningCopy = warning;
  if (warningCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      localizedTitle = [(MCProfileWarning *)self localizedTitle];
      localizedTitle2 = [warningCopy localizedTitle];
      if (localizedTitle == localizedTitle2 || (-[MCProfileWarning localizedTitle](self, "localizedTitle"), v3 = objc_claimAutoreleasedReturnValue(), [warningCopy localizedTitle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
      {
        localizedBody = [(MCProfileWarning *)self localizedBody];
        localizedBody2 = [warningCopy localizedBody];
        v12 = localizedBody2;
        if (localizedBody == localizedBody2)
        {

          v9 = 1;
        }

        else
        {
          localizedBody3 = [(MCProfileWarning *)self localizedBody];
          localizedBody4 = [warningCopy localizedBody];
          v9 = [localizedBody3 isEqualToString:localizedBody4];
        }

        if (localizedTitle == localizedTitle2)
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