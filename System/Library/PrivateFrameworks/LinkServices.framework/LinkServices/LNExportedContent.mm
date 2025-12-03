@interface LNExportedContent
- (BOOL)isEqual:(id)equal;
- (LNExportedContent)initWithCoder:(id)coder;
- (LNExportedContent)initWithContentType:(id)type content:(id)content;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNExportedContent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    contentType = [(LNExportedContent *)self contentType];
    contentType2 = [(LNExportedContent *)v6 contentType];
    v9 = contentType;
    v10 = contentType2;
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
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    content = [(LNExportedContent *)self content];
    content2 = [(LNExportedContent *)v6 content];
    v14 = content;
    v17 = content2;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  contentType = [(LNExportedContent *)self contentType];
  v4 = [contentType hash];
  content = [(LNExportedContent *)self content];
  v6 = [content hash];

  return v6 ^ v4;
}

- (LNExportedContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNExportedContent *)self initWithContentType:v5 content:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentType = [(LNExportedContent *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];

  content = [(LNExportedContent *)self content];
  [coderCopy encodeObject:content forKey:@"content"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contentType = [(LNExportedContent *)self contentType];
  v4ContentType = [contentType contentType];
  content = [(LNExportedContent *)self content];
  filename = [content filename];
  v8 = [v3 stringWithFormat:@"<%@> <%@>", v4ContentType, filename];

  return v8;
}

- (LNExportedContent)initWithContentType:(id)type content:(id)content
{
  typeCopy = type;
  contentCopy = content;
  v9 = contentCopy;
  if (typeCopy)
  {
    if (contentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNExportedContentConfiguration.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"contentType"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNExportedContentConfiguration.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"content"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNExportedContent;
  v10 = [(LNExportedContent *)&v19 init];
  if (v10)
  {
    v11 = [typeCopy copy];
    contentType = v10->_contentType;
    v10->_contentType = v11;

    v13 = [v9 copy];
    content = v10->_content;
    v10->_content = v13;

    v15 = v10;
  }

  return v10;
}

@end