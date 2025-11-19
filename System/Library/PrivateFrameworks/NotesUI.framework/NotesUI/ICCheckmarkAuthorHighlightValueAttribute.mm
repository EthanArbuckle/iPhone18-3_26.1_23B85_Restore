@interface ICCheckmarkAuthorHighlightValueAttribute
- (BOOL)isEqual:(id)a3;
- (ICCheckmarkAuthorHighlightValueAttribute)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICCheckmarkAuthorHighlightValueAttribute

- (ICCheckmarkAuthorHighlightValueAttribute)init
{
  v3.receiver = self;
  v3.super_class = ICCheckmarkAuthorHighlightValueAttribute;
  result = [(ICCheckmarkAuthorHighlightValueAttribute *)&v3 init];
  if (result)
  {
    result->_foregroundAlpha = 1.0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MEMORY[0x1E696AD98];
  [(ICCheckmarkAuthorHighlightValueAttribute *)self foregroundAlpha];
  v7 = [v6 numberWithDouble:?];
  v8 = [(ICCheckmarkAuthorHighlightValueAttribute *)self highlightColor];
  v9 = [v3 stringWithFormat:@"<%@: %p, foregroundAlpha: %@, highlightColor: %@>", v5, self, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  [v5 foregroundAlpha];
  v7 = v6;
  [(ICCheckmarkAuthorHighlightValueAttribute *)self foregroundAlpha];
  if (v7 == v8)
  {
    v9 = [v5 highlightColor];
    v10 = [(ICCheckmarkAuthorHighlightValueAttribute *)self highlightColor];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(ICCheckmarkAuthorHighlightValueAttribute *)self foregroundAlpha];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  v6 = [(ICCheckmarkAuthorHighlightValueAttribute *)self highlightColor];
  v7 = [v6 hash];
  v15 = ICHashWithHashKeys(v5, v8, v9, v10, v11, v12, v13, v14, v7);

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICCheckmarkAuthorHighlightValueAttribute allocWithZone:?]];
  [(ICCheckmarkAuthorHighlightValueAttribute *)self foregroundAlpha];
  [(ICCheckmarkAuthorHighlightValueAttribute *)v4 setForegroundAlpha:?];
  v5 = [(ICCheckmarkAuthorHighlightValueAttribute *)self highlightColor];
  [(ICCheckmarkAuthorHighlightValueAttribute *)v4 setHighlightColor:v5];

  return v4;
}

@end