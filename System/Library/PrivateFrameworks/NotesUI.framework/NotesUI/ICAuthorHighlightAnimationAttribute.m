@interface ICAuthorHighlightAnimationAttribute
- (BOOL)isEqual:(id)a3;
- (ICAuthorHighlightAnimationAttribute)initWithStartDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICAuthorHighlightAnimationAttribute

- (ICAuthorHighlightAnimationAttribute)initWithStartDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICAuthorHighlightAnimationAttribute;
  v6 = [(ICAuthorHighlightAnimationAttribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  v7 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self duration];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self fromValue];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self toValue];
  v12 = [v11 numberWithDouble:?];
  v13 = [(ICAuthorHighlightAnimationAttribute *)self color];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isAboveExistingHighlights](self, "isAboveExistingHighlights")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  v16 = [v3 stringWithFormat:@"<%@: %p, startDate: %@, duration: %@, fromValue: %@, toValue: %@, color: %@, aboveExistingHighlights: %@, removedOnCompletion: %@>", v5, self, v6, v8, v10, v12, v13, v14, v15];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v28) = 1;
    return v28;
  }

  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v6 = [v5 startDate];
  v7 = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  if ([v6 isEqual:v7])
  {
    [v5 duration];
    v9 = v8;
    [(ICAuthorHighlightAnimationAttribute *)self duration];
    if (v9 == v10)
    {
      [v5 fromValue];
      v12 = v11;
      [(ICAuthorHighlightAnimationAttribute *)self fromValue];
      if (v12 == v13)
      {
        [v5 toValue];
        v15 = v14;
        [(ICAuthorHighlightAnimationAttribute *)self toValue];
        if (v15 == v16)
        {
          v17 = [(ICAuthorHighlightAnimationAttribute *)self color];
          v18 = [v5 color];
          v19 = *MEMORY[0x1E695E738];
          if (*MEMORY[0x1E695E738] == v17)
          {
            v20 = 0;
          }

          else
          {
            v20 = v17;
          }

          v21 = v20;
          if (v19 == v18)
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

          v23 = v22;
          if (!(v21 | v23))
          {
            goto LABEL_16;
          }

          v24 = v23;
          if (!v21 || !v23)
          {

            goto LABEL_23;
          }

          v25 = [v21 isEqual:v23];

          if (v25)
          {
LABEL_16:
            v26 = [v5 isAboveExistingHighlights];
            if (v26 == [(ICAuthorHighlightAnimationAttribute *)self isAboveExistingHighlights])
            {
              v27 = [v5 isRemovedOnCompletion];
              v28 = v27 ^ [(ICAuthorHighlightAnimationAttribute *)self isRemovedOnCompletion]^ 1;
LABEL_24:

              goto LABEL_19;
            }
          }

LABEL_23:
          LOBYTE(v28) = 0;
          goto LABEL_24;
        }
      }
    }
  }

  LOBYTE(v28) = 0;
LABEL_19:

  return v28;
}

- (unint64_t)hash
{
  v23 = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  v21 = [v23 hash];
  v3 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self duration];
  v22 = [v3 numberWithDouble:?];
  v20 = [v22 hash];
  v4 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self fromValue];
  v5 = [v4 numberWithDouble:?];
  [v5 hash];
  v6 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self toValue];
  v7 = [v6 numberWithDouble:?];
  [v7 hash];
  v8 = [(ICAuthorHighlightAnimationAttribute *)self color];
  [v8 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isAboveExistingHighlights](self, "isAboveExistingHighlights")}];
  [v9 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  [v10 hash];
  v18 = ICHashWithHashKeys(v21, v11, v12, v13, v14, v15, v16, v17, v20);

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICAuthorHighlightAnimationAttribute allocWithZone:?]];
  v5 = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  [(ICAuthorHighlightAnimationAttribute *)v4 setStartDate:v5];

  [(ICAuthorHighlightAnimationAttribute *)self duration];
  [(ICAuthorHighlightAnimationAttribute *)v4 setDuration:?];
  [(ICAuthorHighlightAnimationAttribute *)self fromValue];
  [(ICAuthorHighlightAnimationAttribute *)v4 setFromValue:?];
  [(ICAuthorHighlightAnimationAttribute *)self toValue];
  [(ICAuthorHighlightAnimationAttribute *)v4 setToValue:?];
  v6 = [(ICAuthorHighlightAnimationAttribute *)self color];
  [(ICAuthorHighlightAnimationAttribute *)v4 setColor:v6];

  [(ICAuthorHighlightAnimationAttribute *)v4 setAboveExistingHighlights:[(ICAuthorHighlightAnimationAttribute *)self isAboveExistingHighlights]];
  [(ICAuthorHighlightAnimationAttribute *)v4 setRemovedOnCompletion:[(ICAuthorHighlightAnimationAttribute *)self isRemovedOnCompletion]];
  return v4;
}

@end