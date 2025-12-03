@interface LNVisibilityMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)visibleForUse:(int64_t)use;
- (LNVisibilityMetadata)initWithCoder:(id)coder;
- (LNVisibilityMetadata)initWithIsDiscoverable:(BOOL)discoverable assistantOnly:(BOOL)only;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNVisibilityMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
    goto LABEL_10;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  isDiscoverable = [(LNVisibilityMetadata *)self isDiscoverable];
  if (isDiscoverable != [(LNVisibilityMetadata *)v6 isDiscoverable])
  {
LABEL_7:
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  assistantOnly = [(LNVisibilityMetadata *)self assistantOnly];
  v9 = assistantOnly ^ [(LNVisibilityMetadata *)v6 assistantOnly]^ 1;
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

- (LNVisibilityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isDiscoverable"];
  v6 = [coderCopy decodeBoolForKey:@"assistantOnly"];

  return [(LNVisibilityMetadata *)self initWithIsDiscoverable:v5 assistantOnly:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[LNVisibilityMetadata isDiscoverable](self forKey:{"isDiscoverable"), @"isDiscoverable"}];
  [coderCopy encodeBool:-[LNVisibilityMetadata assistantOnly](self forKey:{"assistantOnly"), @"assistantOnly"}];
}

- (BOOL)visibleForUse:(int64_t)use
{
  if (use == 1)
  {

    return [(LNVisibilityMetadata *)self isDiscoverable];
  }

  else
  {
    if (!use)
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

- (LNVisibilityMetadata)initWithIsDiscoverable:(BOOL)discoverable assistantOnly:(BOOL)only
{
  v10.receiver = self;
  v10.super_class = LNVisibilityMetadata;
  v6 = [(LNVisibilityMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_isDiscoverable = discoverable;
    v6->_assistantOnly = only;
    v8 = v6;
  }

  return v7;
}

@end