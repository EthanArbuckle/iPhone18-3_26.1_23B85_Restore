@interface ICAuthorHighlightValue
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation ICAuthorHighlightValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICAuthorHighlightValue *)self value];
  v7 = [(ICAuthorHighlightValue *)self color];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightValue isAboveImplicitHighlights](self, "isAboveImplicitHighlights")}];
  v9 = [v3 stringWithFormat:@"<%@: %p, value: %@, color: %@, aboveImplicitHighlights: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [v5 value];
    v7 = [(ICAuthorHighlightValue *)self value];
    if (![v6 isEqual:v7])
    {
      LOBYTE(v17) = 0;
LABEL_22:

      return v17;
    }

    v8 = [(ICAuthorHighlightValue *)self color];
    v9 = [v5 color];
    v10 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
    if (v10 == v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v9;
    }

    v14 = v13;
    if (!(v12 | v14))
    {
      goto LABEL_19;
    }

    v15 = v14;
    if (v12)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
    }

    else
    {
      v18 = [v12 isEqual:v14];

      if (v18)
      {
LABEL_19:
        v19 = [v5 isAboveImplicitHighlights];
        v17 = v19 ^ [(ICAuthorHighlightValue *)self isAboveImplicitHighlights]^ 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    LOBYTE(v17) = 0;
    goto LABEL_21;
  }

  LOBYTE(v17) = 1;
  return v17;
}

@end