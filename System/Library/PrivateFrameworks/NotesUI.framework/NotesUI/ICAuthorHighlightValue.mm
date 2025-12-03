@interface ICAuthorHighlightValue
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation ICAuthorHighlightValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  value = [(ICAuthorHighlightValue *)self value];
  color = [(ICAuthorHighlightValue *)self color];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightValue isAboveImplicitHighlights](self, "isAboveImplicitHighlights")}];
  v9 = [v3 stringWithFormat:@"<%@: %p, value: %@, color: %@, aboveImplicitHighlights: %@>", v5, self, value, color, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    value = [v5 value];
    value2 = [(ICAuthorHighlightValue *)self value];
    if (![value isEqual:value2])
    {
      LOBYTE(v17) = 0;
LABEL_22:

      return v17;
    }

    color = [(ICAuthorHighlightValue *)self color];
    color2 = [v5 color];
    v10 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == color)
    {
      v11 = 0;
    }

    else
    {
      v11 = color;
    }

    v12 = v11;
    if (v10 == color2)
    {
      v13 = 0;
    }

    else
    {
      v13 = color2;
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
        isAboveImplicitHighlights = [v5 isAboveImplicitHighlights];
        v17 = isAboveImplicitHighlights ^ [(ICAuthorHighlightValue *)self isAboveImplicitHighlights]^ 1;
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