@interface ICAuthorHighlightAnimation
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation ICAuthorHighlightAnimation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICAuthorHighlightAnimation *)self duration];
  v7 = [(ICAuthorHighlightAnimation *)self fromValue];
  v8 = [(ICAuthorHighlightAnimation *)self toValue];
  v9 = [(ICAuthorHighlightAnimation *)self color];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimation isAboveExistingHighlights](self, "isAboveExistingHighlights")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimation isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  v12 = [v3 stringWithFormat:@"<%@: %p, duration: %@, fromValue: %@, toValue: %@, color: %@, aboveExistingHighlights: %@, removedOnCompletion: %@>", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [v5 duration];
    v7 = [(ICAuthorHighlightAnimation *)self duration];
    if (![v6 isEqual:v7])
    {
      LOBYTE(v23) = 0;
LABEL_26:

      return v23;
    }

    v8 = [v5 fromValue];
    v9 = [(ICAuthorHighlightAnimation *)self fromValue];
    if (![v8 isEqual:v9])
    {
      LOBYTE(v23) = 0;
LABEL_25:

      goto LABEL_26;
    }

    v10 = [v5 toValue];
    v11 = [(ICAuthorHighlightAnimation *)self toValue];
    if (![v10 isEqual:v11])
    {
      LOBYTE(v23) = 0;
LABEL_24:

      goto LABEL_25;
    }

    v25 = v10;
    v12 = [(ICAuthorHighlightAnimation *)self color];
    v13 = [v5 color];
    v14 = *MEMORY[0x1E695E738];
    v27 = v12;
    if (*MEMORY[0x1E695E738] == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15;
    v26 = v13;
    if (v14 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13;
    }

    v18 = v17;
    if (!(v16 | v18))
    {
      goto LABEL_15;
    }

    v19 = v18;
    if (!v16 || !v18)
    {

      goto LABEL_22;
    }

    v20 = [v16 isEqual:v18];

    if (v20)
    {
LABEL_15:
      v21 = [v5 isAboveExistingHighlights];
      if (v21 == [(ICAuthorHighlightAnimation *)self isAboveExistingHighlights])
      {
        v22 = [v5 isRemovedOnCompletion];
        v23 = v22 ^ [(ICAuthorHighlightAnimation *)self isRemovedOnCompletion]^ 1;
LABEL_23:
        v10 = v25;

        goto LABEL_24;
      }
    }

LABEL_22:
    LOBYTE(v23) = 0;
    goto LABEL_23;
  }

  LOBYTE(v23) = 1;
  return v23;
}

@end