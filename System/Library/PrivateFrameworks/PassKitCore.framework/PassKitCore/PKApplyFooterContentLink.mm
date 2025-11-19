@interface PKApplyFooterContentLink
- (BOOL)isEqual:(id)a3;
- (PKApplyFooterContentLink)initWithCoder:(id)a3;
- (PKApplyFooterContentLink)initWithDictionary:(id)a3;
- (_NSRange)linkRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyFooterContentLink

- (PKApplyFooterContentLink)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKApplyFooterContentLink;
  v5 = [(PKApplyFooterContentLink *)&v24 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"linkText"];
    linkText = v5->_linkText;
    v5->_linkText = v6;

    v8 = [v4 PKIntegerForKey:@"linkLocation"];
    v9 = [v4 PKIntegerForKey:@"linkLength"];
    if (v9 >= 1)
    {
      v5->_linkRange.location = v8;
      v5->_linkRange.length = v9;
    }

    v10 = [v4 PKURLForKey:@"linkURL"];
    linkURL = v5->_linkURL;
    v5->_linkURL = v10;

    v12 = [v4 PKStringForKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v12;

    v14 = [v4 PKStringForKey:@"analyticsIdentifier"];
    analyticsIdentifier = v5->_analyticsIdentifier;
    v5->_analyticsIdentifier = v14;

    v16 = [v4 PKStringForKey:@"behavior"];
    v17 = v16;
    v18 = 0;
    if (v16 != @"default" && v16)
    {
      v19 = [(__CFString *)v16 isEqualToString:@"default"];

      v18 = 0;
      if ((v19 & 1) == 0)
      {
        v20 = v17;
        if (v20 == @"leaveContext" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"leaveContext"], v21, v22))
        {
          v18 = 1;
        }
      }
    }

    v5->_behavior = v18;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_linkText forKeyedSubscript:@"linkText"];
  v4 = NSStringFromRange(self->_linkRange);
  [v3 setObject:v4 forKeyedSubscript:@"linkRange"];

  v5 = [(NSURL *)self->_linkURL absoluteString];
  [v3 setObject:v5 forKeyedSubscript:@"linkURL"];

  [v3 setObject:self->_termsIdentifier forKeyedSubscript:@"termsIdentifier"];
  [v3 setObject:self->_analyticsIdentifier forKeyedSubscript:@"analyticsIdentifier"];
  if (self->_behavior)
  {
    v6 = @"leaveContext";
  }

  else
  {
    v6 = @"default";
  }

  [v3 setObject:v6 forKeyedSubscript:@"behavior"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        linkText = v6->_linkText;
        v8 = self->_linkText;
        v9 = linkText;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_28;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_29;
          }
        }

        linkURL = self->_linkURL;
        v14 = v6->_linkURL;
        if (linkURL && v14)
        {
          if (([(NSURL *)linkURL isEqual:?]& 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else if (linkURL != v14)
        {
          goto LABEL_29;
        }

        termsIdentifier = v6->_termsIdentifier;
        v8 = self->_termsIdentifier;
        v16 = termsIdentifier;
        v10 = v16;
        if (v8 == v16)
        {
        }

        else
        {
          if (!v8 || !v16)
          {
            goto LABEL_28;
          }

          v17 = [(NSString *)v8 isEqualToString:v16];

          if (!v17)
          {
            goto LABEL_29;
          }
        }

        analyticsIdentifier = v6->_analyticsIdentifier;
        v8 = self->_analyticsIdentifier;
        v19 = analyticsIdentifier;
        v10 = v19;
        if (v8 == v19)
        {

LABEL_33:
          if (self->_linkRange.location == v6->_linkRange.location && self->_linkRange.length == v6->_linkRange.length)
          {
            v12 = self->_behavior == v6->_behavior;
            goto LABEL_30;
          }

LABEL_29:
          v12 = 0;
LABEL_30:

          goto LABEL_31;
        }

        if (v8 && v19)
        {
          v20 = [(NSString *)v8 isEqualToString:v19];

          if (!v20)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v12 = 0;
  }

LABEL_31:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_linkText];
  [v3 safelyAddObject:self->_linkURL];
  [v3 safelyAddObject:self->_termsIdentifier];
  [v3 safelyAddObject:self->_analyticsIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_linkRange.location - v4 + 32 * v4;
  v6 = self->_linkRange.length - v5 + 32 * v5;
  v7 = self->_behavior - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_linkText)
  {
    [v3 appendFormat:@"linkText: '%@'; ", self->_linkText];
  }

  if (self->_linkURL)
  {
    [v4 appendFormat:@"termsIdentifier: '%@'; ", self->_termsIdentifier];
  }

  if (self->_termsIdentifier)
  {
    [v4 appendFormat:@"termsIdentifier: '%@'; ", self->_termsIdentifier];
  }

  if (self->_analyticsIdentifier)
  {
    [v4 appendFormat:@"analyticsIdentifier: '%@'; ", self->_analyticsIdentifier];
  }

  v5.length = self->_linkRange.length;
  if (v5.length)
  {
    v5.location = self->_linkRange.location;
    v6 = NSStringFromRange(v5);
    [v4 appendFormat:@"linkRange: '%@'; ", v6];
  }

  if (self->_behavior)
  {
    v7 = @"leaveContext";
  }

  else
  {
    v7 = @"default";
  }

  [v4 appendFormat:@"behavior: '%@'; ", v7];
  [v4 appendFormat:@">"];
  v8 = [v4 copy];

  return v8;
}

- (PKApplyFooterContentLink)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKApplyFooterContentLink;
  v5 = [(PKApplyFooterContentLink *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkText"];
    linkText = v5->_linkText;
    v5->_linkText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkURL"];
    linkURL = v5->_linkURL;
    v5->_linkURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsIdentifier"];
    analyticsIdentifier = v5->_analyticsIdentifier;
    v5->_analyticsIdentifier = v12;

    v14 = [v4 decodeIntegerForKey:@"linkLocation"];
    v15 = [v4 decodeIntegerForKey:@"linkLength"];
    if (v15 >= 1)
    {
      v5->_linkRange.location = v14;
      v5->_linkRange.length = v15;
    }

    v5->_behavior = [v4 decodeIntegerForKey:@"behavior"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  linkText = self->_linkText;
  v5 = a3;
  [v5 encodeObject:linkText forKey:@"linkText"];
  [v5 encodeObject:self->_linkURL forKey:@"linkURL"];
  [v5 encodeObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  [v5 encodeObject:self->_analyticsIdentifier forKey:@"analyticsIdentifier"];
  [v5 encodeInteger:self->_linkRange.location forKey:@"linkLocation"];
  [v5 encodeInteger:self->_linkRange.length forKey:@"linkLength"];
  [v5 encodeInteger:self->_behavior forKey:@"behavior"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKApplyFooterContentLink allocWithZone:](PKApplyFooterContentLink init];
  v6 = [(NSString *)self->_linkText copyWithZone:a3];
  linkText = v5->_linkText;
  v5->_linkText = v6;

  v8 = [(NSURL *)self->_linkURL copyWithZone:a3];
  linkURL = v5->_linkURL;
  v5->_linkURL = v8;

  v10 = [(NSString *)self->_termsIdentifier copyWithZone:a3];
  termsIdentifier = v5->_termsIdentifier;
  v5->_termsIdentifier = v10;

  v12 = [(NSString *)self->_analyticsIdentifier copyWithZone:a3];
  analyticsIdentifier = v5->_analyticsIdentifier;
  v5->_analyticsIdentifier = v12;

  v5->_linkRange = self->_linkRange;
  v5->_behavior = self->_behavior;
  return v5;
}

- (_NSRange)linkRange
{
  length = self->_linkRange.length;
  location = self->_linkRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end