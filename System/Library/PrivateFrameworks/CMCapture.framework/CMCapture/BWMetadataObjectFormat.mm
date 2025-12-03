@interface BWMetadataObjectFormat
+ (id)formatWithMetadataIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation BWMetadataObjectFormat

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMetadataObjectFormat;
  [(BWMetadataObjectFormat *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  metadataIdentifiers = self->_metadataIdentifiers;
  v6 = *(equal + 1);

  return [(NSArray *)metadataIdentifiers isEqualToArray:v6];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"MetadataIdentifiers: "];
  v4 = [(NSArray *)self->_metadataIdentifiers count];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = v4 & 0x7FFFFFFF;
    do
    {
      [v3 appendString:{-[NSArray objectAtIndexedSubscript:](self->_metadataIdentifiers, "objectAtIndexedSubscript:", v5)}];
      if (v5 < v6)
      {
        [v3 appendString:{@", "}];
      }

      ++v5;
    }

    while (v7 != v5);
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[BWMetadataObjectFormat description](self, "description")];
}

+ (id)formatWithMetadataIdentifiers:(id)identifiers
{
  v4 = [BWMetadataObjectFormat alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = BWMetadataObjectFormat;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    if (v5)
    {
      v5[1] = [identifiers copy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end