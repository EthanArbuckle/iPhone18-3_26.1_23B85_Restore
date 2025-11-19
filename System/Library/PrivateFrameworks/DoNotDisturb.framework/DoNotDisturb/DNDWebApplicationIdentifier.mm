@interface DNDWebApplicationIdentifier
- (BOOL)isEqual:(id)a3;
- (DNDWebApplicationIdentifier)initWithCoder:(id)a3;
- (DNDWebApplicationIdentifier)initWithWebIdentifier:(id)a3 givenName:(id)a4;
- (unint64_t)hash;
- (void)diffAgainstObject:(id)a3 usingDiffBuilder:(id)a4 withDescription:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDWebApplicationIdentifier

- (DNDWebApplicationIdentifier)initWithWebIdentifier:(id)a3 givenName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DNDWebApplicationIdentifier;
  v8 = [(DNDWebApplicationIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    webIdentifier = v8->_webIdentifier;
    v8->_webIdentifier = v9;

    v11 = [v7 copy];
    givenName = v8->_givenName;
    v8->_givenName = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(DNDWebApplicationIdentifier *)self webIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDWebApplicationIdentifier *)self givenName];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDWebApplicationIdentifier *)self webIdentifier];
      v8 = [(DNDWebApplicationIdentifier *)v6 webIdentifier];
      if (v7 != v8)
      {
        v9 = [(DNDWebApplicationIdentifier *)self webIdentifier];
        if (!v9)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = v9;
        v10 = [(DNDWebApplicationIdentifier *)v6 webIdentifier];
        if (!v10)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v11 = [(DNDWebApplicationIdentifier *)self webIdentifier];
        v12 = [(DNDWebApplicationIdentifier *)v6 webIdentifier];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = v12;
        v25 = v11;
        v26 = v10;
      }

      v14 = [(DNDWebApplicationIdentifier *)self givenName];
      v15 = [(DNDWebApplicationIdentifier *)v6 givenName];
      v16 = v15;
      if (v14 == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(DNDWebApplicationIdentifier *)self givenName];
        if (v17)
        {
          v18 = v17;
          v19 = [(DNDWebApplicationIdentifier *)v6 givenName];
          if (v19)
          {
            v22 = [(DNDWebApplicationIdentifier *)self givenName];
            [(DNDWebApplicationIdentifier *)v6 givenName];
            v20 = v23 = v3;
            v13 = [v22 isEqual:v20];

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

      v11 = v25;
      v10 = v26;
      v12 = v24;
      if (v7 == v8)
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

- (void)diffAgainstObject:(id)a3 usingDiffBuilder:(id)a4 withDescription:(id)a5
{
  v13 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v13;
    v9 = [(DNDWebApplicationIdentifier *)self webIdentifier];
    v10 = [v8 webIdentifier];
    [v7 diffObject:v9 againstObject:v10 withDescription:@"webIdentifier"];

    v11 = [(DNDWebApplicationIdentifier *)self givenName];
    v12 = [v8 givenName];

    [v7 diffObject:v11 againstObject:v12 withDescription:@"givenName"];
  }
}

- (DNDWebApplicationIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];

  v7 = [(DNDWebApplicationIdentifier *)self initWithWebIdentifier:v5 givenName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  webIdentifier = self->_webIdentifier;
  v5 = a3;
  [v5 encodeObject:webIdentifier forKey:@"webIdentifier"];
  [v5 encodeObject:self->_givenName forKey:@"givenName"];
}

@end