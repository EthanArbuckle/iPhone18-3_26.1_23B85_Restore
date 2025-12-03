@interface ICAuthorHighlightValueAttribute
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICAuthorHighlightValueAttribute

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightValueAttribute *)self value];
  v7 = [v6 numberWithDouble:?];
  color = [(ICAuthorHighlightValueAttribute *)self color];
  v9 = [v3 stringWithFormat:@"<%@: %p, value: %@, color: %@>", v5, self, v7, color];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  [v5 value];
  v7 = v6;
  [(ICAuthorHighlightValueAttribute *)self value];
  if (v7 == v8)
  {
    color = [(ICAuthorHighlightValueAttribute *)self color];
    color2 = [v5 color];
    v11 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == color)
    {
      v12 = 0;
    }

    else
    {
      v12 = color;
    }

    v13 = v12;
    if (v11 == color2)
    {
      v14 = 0;
    }

    else
    {
      v14 = color2;
    }

    v15 = v14;
    v16 = v15;
    if (v13 | v15)
    {
      if (v13)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = [v13 isEqual:v15];
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightValueAttribute *)self value];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  color = [(ICAuthorHighlightValueAttribute *)self color];
  v7 = [color hash];
  v15 = ICHashWithHashKeys(v5, v8, v9, v10, v11, v12, v13, v14, v7);

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICAuthorHighlightValueAttribute allocWithZone:?]];
  [(ICAuthorHighlightValueAttribute *)self value];
  [(ICAuthorHighlightValueAttribute *)v4 setValue:?];
  color = [(ICAuthorHighlightValueAttribute *)self color];
  [(ICAuthorHighlightValueAttribute *)v4 setColor:color];

  return v4;
}

@end