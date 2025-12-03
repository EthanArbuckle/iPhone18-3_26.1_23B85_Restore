@interface DNDWebApplicationIdentifier
- (BOOL)isEqual:(id)equal;
- (DNDWebApplicationIdentifier)initWithCoder:(id)coder;
- (DNDWebApplicationIdentifier)initWithWebIdentifier:(id)identifier givenName:(id)name;
- (unint64_t)hash;
- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDWebApplicationIdentifier

- (DNDWebApplicationIdentifier)initWithWebIdentifier:(id)identifier givenName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = DNDWebApplicationIdentifier;
  v8 = [(DNDWebApplicationIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    webIdentifier = v8->_webIdentifier;
    v8->_webIdentifier = v9;

    v11 = [nameCopy copy];
    givenName = v8->_givenName;
    v8->_givenName = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  webIdentifier = [(DNDWebApplicationIdentifier *)self webIdentifier];
  v4 = [webIdentifier hash];
  givenName = [(DNDWebApplicationIdentifier *)self givenName];
  v6 = [givenName hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      webIdentifier = [(DNDWebApplicationIdentifier *)self webIdentifier];
      webIdentifier2 = [(DNDWebApplicationIdentifier *)v6 webIdentifier];
      if (webIdentifier != webIdentifier2)
      {
        webIdentifier3 = [(DNDWebApplicationIdentifier *)self webIdentifier];
        if (!webIdentifier3)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = webIdentifier3;
        webIdentifier4 = [(DNDWebApplicationIdentifier *)v6 webIdentifier];
        if (!webIdentifier4)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        webIdentifier5 = [(DNDWebApplicationIdentifier *)self webIdentifier];
        webIdentifier6 = [(DNDWebApplicationIdentifier *)v6 webIdentifier];
        if (![webIdentifier5 isEqual:webIdentifier6])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = webIdentifier6;
        v25 = webIdentifier5;
        v26 = webIdentifier4;
      }

      givenName = [(DNDWebApplicationIdentifier *)self givenName];
      givenName2 = [(DNDWebApplicationIdentifier *)v6 givenName];
      v16 = givenName2;
      if (givenName == givenName2)
      {

        v13 = 1;
      }

      else
      {
        givenName3 = [(DNDWebApplicationIdentifier *)self givenName];
        if (givenName3)
        {
          v18 = givenName3;
          givenName4 = [(DNDWebApplicationIdentifier *)v6 givenName];
          if (givenName4)
          {
            givenName5 = [(DNDWebApplicationIdentifier *)self givenName];
            [(DNDWebApplicationIdentifier *)v6 givenName];
            v20 = v23 = v3;
            v13 = [givenName5 isEqual:v20];

            v3 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {

          v13 = 0;
        }
      }

      webIdentifier5 = v25;
      webIdentifier4 = v26;
      webIdentifier6 = v24;
      if (webIdentifier == webIdentifier2)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description
{
  objectCopy = object;
  builderCopy = builder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    webIdentifier = [(DNDWebApplicationIdentifier *)self webIdentifier];
    webIdentifier2 = [v8 webIdentifier];
    [builderCopy diffObject:webIdentifier againstObject:webIdentifier2 withDescription:@"webIdentifier"];

    givenName = [(DNDWebApplicationIdentifier *)self givenName];
    givenName2 = [v8 givenName];

    [builderCopy diffObject:givenName againstObject:givenName2 withDescription:@"givenName"];
  }
}

- (DNDWebApplicationIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];

  v7 = [(DNDWebApplicationIdentifier *)self initWithWebIdentifier:v5 givenName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  webIdentifier = self->_webIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:webIdentifier forKey:@"webIdentifier"];
  [coderCopy encodeObject:self->_givenName forKey:@"givenName"];
}

@end