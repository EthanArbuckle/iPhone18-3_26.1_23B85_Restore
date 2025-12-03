@interface ICAuthorHighlightAnimationAttribute
- (BOOL)isEqual:(id)equal;
- (ICAuthorHighlightAnimationAttribute)initWithStartDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICAuthorHighlightAnimationAttribute

- (ICAuthorHighlightAnimationAttribute)initWithStartDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = ICAuthorHighlightAnimationAttribute;
  v6 = [(ICAuthorHighlightAnimationAttribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, date);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  startDate = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  v7 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self duration];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self fromValue];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(ICAuthorHighlightAnimationAttribute *)self toValue];
  v12 = [v11 numberWithDouble:?];
  color = [(ICAuthorHighlightAnimationAttribute *)self color];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isAboveExistingHighlights](self, "isAboveExistingHighlights")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  v16 = [v3 stringWithFormat:@"<%@: %p, startDate: %@, duration: %@, fromValue: %@, toValue: %@, color: %@, aboveExistingHighlights: %@, removedOnCompletion: %@>", v5, self, startDate, v8, v10, v12, color, v14, v15];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v28) = 1;
    return v28;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  startDate = [v5 startDate];
  startDate2 = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  if ([startDate isEqual:startDate2])
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
          color = [(ICAuthorHighlightAnimationAttribute *)self color];
          color2 = [v5 color];
          v19 = *MEMORY[0x1E695E738];
          if (*MEMORY[0x1E695E738] == color)
          {
            v20 = 0;
          }

          else
          {
            v20 = color;
          }

          v21 = v20;
          if (v19 == color2)
          {
            v22 = 0;
          }

          else
          {
            v22 = color2;
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
            isAboveExistingHighlights = [v5 isAboveExistingHighlights];
            if (isAboveExistingHighlights == [(ICAuthorHighlightAnimationAttribute *)self isAboveExistingHighlights])
            {
              isRemovedOnCompletion = [v5 isRemovedOnCompletion];
              v28 = isRemovedOnCompletion ^ [(ICAuthorHighlightAnimationAttribute *)self isRemovedOnCompletion]^ 1;
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
  startDate = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  v21 = [startDate hash];
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
  color = [(ICAuthorHighlightAnimationAttribute *)self color];
  [color hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isAboveExistingHighlights](self, "isAboveExistingHighlights")}];
  [v9 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthorHighlightAnimationAttribute isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  [v10 hash];
  v18 = ICHashWithHashKeys(v21, v11, v12, v13, v14, v15, v16, v17, v20);

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICAuthorHighlightAnimationAttribute allocWithZone:?]];
  startDate = [(ICAuthorHighlightAnimationAttribute *)self startDate];
  [(ICAuthorHighlightAnimationAttribute *)v4 setStartDate:startDate];

  [(ICAuthorHighlightAnimationAttribute *)self duration];
  [(ICAuthorHighlightAnimationAttribute *)v4 setDuration:?];
  [(ICAuthorHighlightAnimationAttribute *)self fromValue];
  [(ICAuthorHighlightAnimationAttribute *)v4 setFromValue:?];
  [(ICAuthorHighlightAnimationAttribute *)self toValue];
  [(ICAuthorHighlightAnimationAttribute *)v4 setToValue:?];
  color = [(ICAuthorHighlightAnimationAttribute *)self color];
  [(ICAuthorHighlightAnimationAttribute *)v4 setColor:color];

  [(ICAuthorHighlightAnimationAttribute *)v4 setAboveExistingHighlights:[(ICAuthorHighlightAnimationAttribute *)self isAboveExistingHighlights]];
  [(ICAuthorHighlightAnimationAttribute *)v4 setRemovedOnCompletion:[(ICAuthorHighlightAnimationAttribute *)self isRemovedOnCompletion]];
  return v4;
}

@end