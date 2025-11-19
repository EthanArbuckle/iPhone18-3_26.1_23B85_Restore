@interface LNVisibilityMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)visibleForUse:(int64_t)a3;
- (LNVisibilityMetadata)initWithCoder:(id)a3;
- (LNVisibilityMetadata)initWithIsDiscoverable:(BOOL)a3 assistantOnly:(BOOL)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNVisibilityMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
    goto LABEL_10;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v7 = [(LNVisibilityMetadata *)self isDiscoverable];
  if (v7 != [(LNVisibilityMetadata *)v6 isDiscoverable])
  {
LABEL_7:
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  v8 = [(LNVisibilityMetadata *)self assistantOnly];
  v9 = v8 ^ [(LNVisibilityMetadata *)v6 assistantOnly]^ 1;
LABEL_8:

LABEL_10:
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(LNVisibilityMetadata *)self isDiscoverable])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(LNVisibilityMetadata *)self assistantOnly])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, isDiscoverable: %@, assistantOnly: %@>", v5, self, v6, v7];

  return v8;
}

- (LNVisibilityMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isDiscoverable"];
  v6 = [v4 decodeBoolForKey:@"assistantOnly"];

  return [(LNVisibilityMetadata *)self initWithIsDiscoverable:v5 assistantOnly:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[LNVisibilityMetadata isDiscoverable](self forKey:{"isDiscoverable"), @"isDiscoverable"}];
  [v4 encodeBool:-[LNVisibilityMetadata assistantOnly](self forKey:{"assistantOnly"), @"assistantOnly"}];
}

- (BOOL)visibleForUse:(int64_t)a3
{
  if (a3 == 1)
  {

    return [(LNVisibilityMetadata *)self isDiscoverable];
  }

  else
  {
    if (!a3)
    {
      if ([(LNVisibilityMetadata *)self isDiscoverable])
      {
        v3 = ![(LNVisibilityMetadata *)self assistantOnly];
      }

      else
      {
        v3 = 0;
      }
    }

    return v3 & 1;
  }
}

- (LNVisibilityMetadata)initWithIsDiscoverable:(BOOL)a3 assistantOnly:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = LNVisibilityMetadata;
  v6 = [(LNVisibilityMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_isDiscoverable = a3;
    v6->_assistantOnly = a4;
    v8 = v6;
  }

  return v7;
}

@end