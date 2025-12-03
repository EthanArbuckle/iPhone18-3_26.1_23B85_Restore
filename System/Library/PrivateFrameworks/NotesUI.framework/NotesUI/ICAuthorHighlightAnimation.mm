@interface ICAuthorHighlightAnimation
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation ICAuthorHighlightAnimation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  duration = [(ICAuthorHighlightAnimation *)self duration];
  fromValue = [(ICAuthorHighlightAnimation *)self fromValue];
  toValue = [(ICAuthorHighlightAnimation *)self toValue];
  color = [(ICAuthorHighlightAnimation *)self color];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimation isAboveExistingHighlights](self, "isAboveExistingHighlights")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimation isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  v12 = [v3 stringWithFormat:@"<%@: %p, duration: %@, fromValue: %@, toValue: %@, color: %@, aboveExistingHighlights: %@, removedOnCompletion: %@>", v5, self, duration, fromValue, toValue, color, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    duration = [v5 duration];
    duration2 = [(ICAuthorHighlightAnimation *)self duration];
    if (![duration isEqual:duration2])
    {
      LOBYTE(v23) = 0;
LABEL_26:

      return v23;
    }

    fromValue = [v5 fromValue];
    fromValue2 = [(ICAuthorHighlightAnimation *)self fromValue];
    if (![fromValue isEqual:fromValue2])
    {
      LOBYTE(v23) = 0;
LABEL_25:

      goto LABEL_26;
    }

    toValue = [v5 toValue];
    toValue2 = [(ICAuthorHighlightAnimation *)self toValue];
    if (![toValue isEqual:toValue2])
    {
      LOBYTE(v23) = 0;
LABEL_24:

      goto LABEL_25;
    }

    v25 = toValue;
    color = [(ICAuthorHighlightAnimation *)self color];
    color2 = [v5 color];
    v14 = *MEMORY[0x1E695E738];
    v27 = color;
    if (*MEMORY[0x1E695E738] == color)
    {
      v15 = 0;
    }

    else
    {
      v15 = color;
    }

    v16 = v15;
    v26 = color2;
    if (v14 == color2)
    {
      v17 = 0;
    }

    else
    {
      v17 = color2;
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
      isAboveExistingHighlights = [v5 isAboveExistingHighlights];
      if (isAboveExistingHighlights == [(ICAuthorHighlightAnimation *)self isAboveExistingHighlights])
      {
        isRemovedOnCompletion = [v5 isRemovedOnCompletion];
        v23 = isRemovedOnCompletion ^ [(ICAuthorHighlightAnimation *)self isRemovedOnCompletion]^ 1;
LABEL_23:
        toValue = v25;

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