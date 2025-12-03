@interface BPSTuple
- (BOOL)isEqual:(id)equal;
- (BPSTuple)initWithCoder:(id)coder;
- (BPSTuple)initWithFirst:(id)first second:(id)second;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BPSTuple

- (BPSTuple)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = BPSTuple;
  v9 = [(BPSTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v7 = equalCopy;
  first = [(BPSTuple *)self first];
  if (first || ([v7 first], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    first2 = [(BPSTuple *)self first];
    first3 = [v7 first];
    if (![first2 isEqual:first3])
    {
      v10 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v9 = 1;
  }

  else
  {
    v17 = 0;
    v9 = 0;
  }

  second = [(BPSTuple *)self second];
  if (second || ([v7 second], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(BPSTuple *)self second:v15];
    second2 = [v7 second];
    v10 = [v12 isEqual:second2];

    if (second)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
    v10 = 1;
  }

LABEL_15:
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!first)
  {
  }

LABEL_20:
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  first = [(BPSTuple *)self first];
  [coderCopy encodeObject:first forKey:@"first"];

  second = [(BPSTuple *)self second];
  [coderCopy encodeObject:second forKey:@"second"];
}

- (BPSTuple)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AB10];
  coderCopy = coder;
  bm_allowedClassesForSecureCodingBMBookmark = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark forKey:@"first"];

  bm_allowedClassesForSecureCodingBMBookmark2 = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
  v9 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark2 forKey:@"second"];

  v10 = [(BPSTuple *)self initWithFirst:v7 second:v9];
  return v10;
}

@end