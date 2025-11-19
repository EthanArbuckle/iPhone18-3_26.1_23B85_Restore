@interface EDString
+ (EDString)edStringWithString:(id)a3;
+ (EDString)edStringWithString:(id)a3 runs:(id)a4;
+ (id)string;
- (BOOL)areThereRuns;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEDString:(id)a3;
- (EDString)init;
- (EDString)initWithString:(id)a3;
- (EDString)initWithString:(id)a3 runs:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)firstFont;
- (id)firstRunEffects;
- (id)firstRunFont;
- (unint64_t)hash;
- (void)appendString:(id)a3;
- (void)prependString:(id)a3;
- (void)removeCharacterAtIndex:(unint64_t)a3;
- (void)removeCharactersInSet:(id)a3;
- (void)setPhoneticInfo:(id)a3;
- (void)setRuns:(id)a3;
- (void)setString:(id)a3;
@end

@implementation EDString

- (EDString)init
{
  v3.receiver = self;
  v3.super_class = EDString;
  result = [(EDString *)&v3 init];
  if (result)
  {
    result->mDoNotModify = 0;
  }

  return result;
}

- (BOOL)areThereRuns
{
  mRuns = self->mRuns;
  if (mRuns)
  {
    LOBYTE(mRuns) = [(EDCollection *)mRuns count]!= 0;
  }

  return mRuns;
}

+ (id)string
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (unint64_t)hash
{
  v3 = [(EDPhoneticInfo *)self->mPhoneticInfo hash];
  v4 = ([(EDCollection *)self->mRuns hash]<< 8) + (v3 << 16);
  return v4 + [(NSString *)self->mString hash];
}

- (id)firstRunFont
{
  if ([(EDString *)self areThereRuns])
  {
    v3 = [(EDCollection *)self->mRuns objectAtIndex:0];
    v4 = [v3 font];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)firstRunEffects
{
  if ([(EDString *)self areThereRuns])
  {
    v3 = [(EDCollection *)self->mRuns objectAtIndex:0];
    v4 = [v3 effects];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (EDString)initWithString:(id)a3
{
  v4 = a3;
  v5 = [(EDString *)self init];
  v6 = v5;
  if (v5)
  {
    [(EDString *)v5 setString:v4];
  }

  return v6;
}

- (EDString)initWithString:(id)a3 runs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDString *)self initWithString:v6];
  v9 = v8;
  if (v8)
  {
    [(EDString *)v8 setRuns:v7];
  }

  return v9;
}

+ (EDString)edStringWithString:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithString:v3];

  return v4;
}

+ (EDString)edStringWithString:(id)a3 runs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithString:v5 runs:v6];

  return v7;
}

- (BOOL)isEqualToEDString:(id)a3
{
  v4 = a3;
  mRuns = self->mRuns;
  if ((mRuns == v4[2] || [(EDCollection *)mRuns isEqual:?]) && ((mPhoneticInfo = self->mPhoneticInfo, mPhoneticInfo == v4[3]) || [(EDPhoneticInfo *)mPhoneticInfo isEqual:?]))
  {
    mString = self->mString;
    if (mString == v4[1])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSString *)mString isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(EDString *)self isEqualToString:v5];
LABEL_8:
        v7 = v6;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(EDString *)self isEqualToEDString:v5];
        goto LABEL_8;
      }
    }

    v7 = 0;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  if (v5)
  {
    *(v5 + 32) = 0;
    v7 = [(EDKeyedCollection *)self->mRuns copyWithZone:a3];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSString *)self->mString copy];
    v10 = v6[1];
    v6[1] = v9;

    v11 = [(EDPhoneticInfo *)self->mPhoneticInfo copyWithZone:a3];
    v12 = v6[3];
    v6[3] = v11;

    v13 = v6;
  }

  return v6;
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
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v11 = v4;
    v5 = [v4 stringByAppendingString:self->mString];
    [(EDString *)self setString:v5];

    v6 = [(EDCollection *)self->mRuns count];
    v7 = [v11 length];
    if (v6 >= 2)
    {
      v8 = v7;
      for (i = 1; i != v6; ++i)
      {
        v10 = [(EDCollection *)self->mRuns objectAtIndex:i];
        [v10 adjustIndex:v8];
      }
    }

    [(EDPhoneticInfo *)self->mPhoneticInfo prependString:v11];
    v4 = v11;
  }
}

- (void)appendString:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v6 = v4;
    v5 = [(NSString *)self->mString stringByAppendingString:v4];
    [(EDString *)self setString:v5];

    v4 = v6;
  }
}

- (void)removeCharacterAtIndex:(unint64_t)a3
{
  mString = self->mString;
  if (mString && [(NSString *)mString length]> a3)
  {
    v6 = [(EDCollection *)self->mRuns count];
    if (v6 >= 2)
    {
      v7 = v6;
      for (i = 1; i != v7; ++i)
      {
        v11 = [(EDCollection *)self->mRuns objectAtIndex:i];
        v9 = [v11 charIndex];
        if (v9)
        {
          v10 = v9 >= a3;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          [v11 setCharIndex:v9 - 1];
        }
      }
    }

    v12 = [(NSString *)self->mString stringByReplacingCharactersInRange:a3 withString:1, &stru_286EE1130];
    [(EDString *)self setString:?];
  }
}

- (void)removeCharactersInSet:(id)a3
{
  v6 = a3;
  if (v6)
  {
    mString = self->mString;
    if (mString)
    {
      for (i = [(NSString *)mString rangeOfCharacterFromSet:v6]; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSString *)self->mString rangeOfCharacterFromSet:v6])
      {
        [(EDString *)self removeCharacterAtIndex:?];
      }
    }
  }
}

- (void)setPhoneticInfo:(id)a3
{
  v7 = a3;
  if (!self->mDoNotModify)
  {
    mPhoneticInfo = self->mPhoneticInfo;
    p_mPhoneticInfo = &self->mPhoneticInfo;
    if (mPhoneticInfo != v7)
    {
      objc_storeStrong(p_mPhoneticInfo, a3);
      [(EDPhoneticInfo *)*p_mPhoneticInfo setDoNotModify:1];
    }
  }
}

- (void)setRuns:(id)a3
{
  v5 = a3;
  if (!self->mDoNotModify)
  {
    mRuns = self->mRuns;
    p_mRuns = &self->mRuns;
    if (mRuns != v5)
    {
      v8 = v5;
      objc_storeStrong(p_mRuns, a3);
      v5 = v8;
    }
  }
}

- (id)firstFont
{
  mRuns = self->mRuns;
  if (mRuns && [(EDCollection *)mRuns count]&& ([(EDCollection *)self->mRuns objectAtIndex:0], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [(EDCollection *)self->mRuns objectAtIndex:0];
    v7 = [v6 font];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDString;
  v2 = [(EDString *)&v4 description];

  return v2;
}

@end