@interface FCNewsletter
- (BOOL)isEqual:(id)a3;
- (FCNewsletter)initWithCoder:(id)a3;
- (FCNewsletter)initWithIdentifier:(id)a3 enrollment:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCNewsletter

- (FCNewsletter)initWithIdentifier:(id)a3 enrollment:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FCNewsletter;
  v8 = [(FCNewsletter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_enrollment = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(FCNewsletter *)self identifier];
    v8 = [v6 identifier];
    if (v7 == v8)
    {
      v10 = [(FCNewsletter *)self enrollment];
      v9 = v10 == [v6 enrollment];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(FCNewsletter *)self identifier];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCNewsletter enrollment](self, "enrollment")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FCNewsletter *)self identifier];
  v5 = [v3 stringWithFormat:@"<FCNewsletter: identifier=%@, enrollment=%ld>", v4, -[FCNewsletter enrollment](self, "enrollment")];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(FCNewsletter *)self identifier];

  if (v4)
  {
    v5 = [(FCNewsletter *)self identifier];
    [v9 encodeObject:v5 forKey:@"identifier"];
  }

  if ([(FCNewsletter *)self enrollment])
  {
    v6 = [(FCNewsletter *)self enrollment];
    v7 = @"UNKNOWN";
    if (v6 == 2)
    {
      v7 = @"SUBSCRIBED";
    }

    if (v6 == 1)
    {
      v8 = @"UNSUBSCRIBED";
    }

    else
    {
      v8 = v7;
    }

    [v9 encodeObject:v8 forKey:@"enrollment"];
  }
}

- (FCNewsletter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enrollment"];

  if ([v6 isEqualToString:@"UNSUBSCRIBED"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToString:@"SUBSCRIBED"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(FCNewsletter *)self initWithIdentifier:v5 enrollment:v7];

  return v8;
}

@end