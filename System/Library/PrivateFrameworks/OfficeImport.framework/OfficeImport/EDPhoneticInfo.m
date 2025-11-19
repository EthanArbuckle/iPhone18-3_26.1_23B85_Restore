@interface EDPhoneticInfo
+ (id)phoneticInfoWithResources:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEDPhoneticInfo:(id)a3;
- (EDPhoneticInfo)initWithResources:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)font;
- (void)appendString:(id)a3;
- (void)prependString:(id)a3;
- (void)setAlign:(int)a3;
- (void)setFont:(id)a3;
- (void)setFontIndex:(unint64_t)a3;
- (void)setString:(id)a3;
- (void)setType:(int)a3;
@end

@implementation EDPhoneticInfo

- (EDPhoneticInfo)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EDPhoneticInfo;
  v5 = [(EDPhoneticInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mFontIndex = 0;
    *&v6->mType = 0;
  }

  return v6;
}

+ (id)phoneticInfoWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v7 = [v5 initWithResources:WeakRetained];

  if (v7)
  {
    *(v7 + 16) = self->mFontIndex;
    *(v7 + 32) = *&self->mType;
    v8 = [(NSString *)self->mString copy];
    v9 = *(v7 + 24);
    *(v7 + 24) = v8;

    v10 = [(EDCollection *)self->mRuns copyWithZone:a3];
    v11 = *(v7 + 40);
    *(v7 + 40) = v10;

    *(v7 + 48) = self->mDoNotModify;
    v12 = v7;
  }

  return v7;
}

- (BOOL)isEqualToEDPhoneticInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->mFontIndex == v4[2] && self->mType == *(v4 + 8) && [(EDCollection *)self->mRuns isEqual:v4[5]]&& [(NSString *)self->mString isEqualToString:v5[3]]&& self->mAlign == *(v5 + 9);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDPhoneticInfo *)self isEqualToEDPhoneticInfo:v5];
  }

  return v6;
}

- (void)setType:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mType = a3;
  }
}

- (void)setAlign:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mAlign = a3;
  }
}

- (void)setString:(id)a3
{
  v5 = a3;
  if (!self->mDoNotModify)
  {
    mString = self->mString;
    p_mString = &self->mString;
    if (mString != v5)
    {
      v8 = v5;
      objc_storeStrong(p_mString, a3);
      v5 = v8;
    }
  }
}

- (void)prependString:(id)a3
{
  v10 = a3;
  if (!self->mDoNotModify)
  {
    v4 = [v10 stringByAppendingString:self->mString];
    [(EDPhoneticInfo *)self setString:v4];

    v5 = [(EDCollection *)self->mRuns count];
    v6 = [v10 length];
    if (v5 >= 2)
    {
      v7 = v6;
      for (i = 1; i != v5; ++i)
      {
        v9 = [(EDCollection *)self->mRuns objectAtIndex:i];
        [v9 adjustIndex:v7];
      }
    }
  }
}

- (void)appendString:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v6 = v4;
    v5 = [(NSString *)self->mString stringByAppendingString:v4];
    [(EDPhoneticInfo *)self setString:v5];

    v4 = v6;
  }
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained fonts];

  v5 = [v4 objectAtIndex:self->mFontIndex];

  return v5;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained fonts];

    self->mFontIndex = [v6 addObject:v7];
    v4 = v7;
  }
}

- (void)setFontIndex:(unint64_t)a3
{
  if (!self->mDoNotModify)
  {
    self->mFontIndex = a3;
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDPhoneticInfo;
  v2 = [(EDPhoneticInfo *)&v4 description];

  return v2;
}

@end