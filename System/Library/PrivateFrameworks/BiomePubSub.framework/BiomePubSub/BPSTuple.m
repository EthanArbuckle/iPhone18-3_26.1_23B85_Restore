@interface BPSTuple
- (BOOL)isEqual:(id)a3;
- (BPSTuple)initWithCoder:(id)a3;
- (BPSTuple)initWithFirst:(id)a3 second:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BPSTuple

- (BPSTuple)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BPSTuple;
  v9 = [(BPSTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  v8 = [(BPSTuple *)self first];
  if (v8 || ([v7 first], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(BPSTuple *)self first];
    v4 = [v7 first];
    if (![v3 isEqual:v4])
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

  v11 = [(BPSTuple *)self second];
  if (v11 || ([v7 second], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(BPSTuple *)self second:v15];
    v13 = [v7 second];
    v10 = [v12 isEqual:v13];

    if (v11)
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
  if (!v8)
  {
  }

LABEL_20:
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BPSTuple *)self first];
  [v4 encodeObject:v5 forKey:@"first"];

  v6 = [(BPSTuple *)self second];
  [v4 encodeObject:v6 forKey:@"second"];
}

- (BPSTuple)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AB10];
  v5 = a3;
  v6 = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"first"];

  v8 = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"second"];

  v10 = [(BPSTuple *)self initWithFirst:v7 second:v9];
  return v10;
}

@end