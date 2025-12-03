@interface FCNewsletter
- (BOOL)isEqual:(id)equal;
- (FCNewsletter)initWithCoder:(id)coder;
- (FCNewsletter)initWithIdentifier:(id)identifier enrollment:(int64_t)enrollment;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCNewsletter

- (FCNewsletter)initWithIdentifier:(id)identifier enrollment:(int64_t)enrollment
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FCNewsletter;
  v8 = [(FCNewsletter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_enrollment = enrollment;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    identifier = [(FCNewsletter *)self identifier];
    identifier2 = [v6 identifier];
    if (identifier == identifier2)
    {
      enrollment = [(FCNewsletter *)self enrollment];
      v9 = enrollment == [v6 enrollment];
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
  identifier = [(FCNewsletter *)self identifier];
  v4 = [identifier hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCNewsletter enrollment](self, "enrollment")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(FCNewsletter *)self identifier];
  v5 = [v3 stringWithFormat:@"<FCNewsletter: identifier=%@, enrollment=%ld>", identifier, -[FCNewsletter enrollment](self, "enrollment")];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(FCNewsletter *)self identifier];

  if (identifier)
  {
    identifier2 = [(FCNewsletter *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"identifier"];
  }

  if ([(FCNewsletter *)self enrollment])
  {
    enrollment = [(FCNewsletter *)self enrollment];
    v7 = @"UNKNOWN";
    if (enrollment == 2)
    {
      v7 = @"SUBSCRIBED";
    }

    if (enrollment == 1)
    {
      v8 = @"UNSUBSCRIBED";
    }

    else
    {
      v8 = v7;
    }

    [coderCopy encodeObject:v8 forKey:@"enrollment"];
  }
}

- (FCNewsletter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enrollment"];

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