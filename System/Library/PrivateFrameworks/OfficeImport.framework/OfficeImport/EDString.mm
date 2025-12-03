@interface EDString
+ (EDString)edStringWithString:(id)string;
+ (EDString)edStringWithString:(id)string runs:(id)runs;
+ (id)string;
- (BOOL)areThereRuns;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEDString:(id)string;
- (EDString)init;
- (EDString)initWithString:(id)string;
- (EDString)initWithString:(id)string runs:(id)runs;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstFont;
- (id)firstRunEffects;
- (id)firstRunFont;
- (unint64_t)hash;
- (void)appendString:(id)string;
- (void)prependString:(id)string;
- (void)removeCharacterAtIndex:(unint64_t)index;
- (void)removeCharactersInSet:(id)set;
- (void)setPhoneticInfo:(id)info;
- (void)setRuns:(id)runs;
- (void)setString:(id)string;
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
    font = [v3 font];
  }

  else
  {
    font = 0;
  }

  return font;
}

- (id)firstRunEffects
{
  if ([(EDString *)self areThereRuns])
  {
    v3 = [(EDCollection *)self->mRuns objectAtIndex:0];
    effects = [v3 effects];
  }

  else
  {
    effects = 0;
  }

  return effects;
}

- (EDString)initWithString:(id)string
{
  stringCopy = string;
  v5 = [(EDString *)self init];
  v6 = v5;
  if (v5)
  {
    [(EDString *)v5 setString:stringCopy];
  }

  return v6;
}

- (EDString)initWithString:(id)string runs:(id)runs
{
  stringCopy = string;
  runsCopy = runs;
  v8 = [(EDString *)self initWithString:stringCopy];
  v9 = v8;
  if (v8)
  {
    [(EDString *)v8 setRuns:runsCopy];
  }

  return v9;
}

+ (EDString)edStringWithString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(objc_opt_class()) initWithString:stringCopy];

  return v4;
}

+ (EDString)edStringWithString:(id)string runs:(id)runs
{
  stringCopy = string;
  runsCopy = runs;
  v7 = [objc_alloc(objc_opt_class()) initWithString:stringCopy runs:runsCopy];

  return v7;
}

- (BOOL)isEqualToEDString:(id)string
{
  stringCopy = string;
  mRuns = self->mRuns;
  if ((mRuns == stringCopy[2] || [(EDCollection *)mRuns isEqual:?]) && ((mPhoneticInfo = self->mPhoneticInfo, mPhoneticInfo == stringCopy[3]) || [(EDPhoneticInfo *)mPhoneticInfo isEqual:?]))
  {
    mString = self->mString;
    if (mString == stringCopy[1])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    if (equalCopy)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  if (v5)
  {
    *(v5 + 32) = 0;
    v7 = [(EDKeyedCollection *)self->mRuns copyWithZone:zone];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSString *)self->mString copy];
    v10 = v6[1];
    v6[1] = v9;

    v11 = [(EDPhoneticInfo *)self->mPhoneticInfo copyWithZone:zone];
    v12 = v6[3];
    v6[3] = v11;

    v13 = v6;
  }

  return v6;
}

- (void)setString:(id)string
{
  stringCopy = string;
  if (!self->mDoNotModify)
  {
    mString = self->mString;
    p_mString = &self->mString;
    if (mString != stringCopy)
    {
      v8 = stringCopy;
      objc_storeStrong(p_mString, string);
      stringCopy = v8;
    }
  }
}

- (void)prependString:(id)string
{
  stringCopy = string;
  if (!self->mDoNotModify)
  {
    v11 = stringCopy;
    v5 = [stringCopy stringByAppendingString:self->mString];
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
    stringCopy = v11;
  }
}

- (void)appendString:(id)string
{
  stringCopy = string;
  if (!self->mDoNotModify)
  {
    v6 = stringCopy;
    v5 = [(NSString *)self->mString stringByAppendingString:stringCopy];
    [(EDString *)self setString:v5];

    stringCopy = v6;
  }
}

- (void)removeCharacterAtIndex:(unint64_t)index
{
  mString = self->mString;
  if (mString && [(NSString *)mString length]> index)
  {
    v6 = [(EDCollection *)self->mRuns count];
    if (v6 >= 2)
    {
      v7 = v6;
      for (i = 1; i != v7; ++i)
      {
        v11 = [(EDCollection *)self->mRuns objectAtIndex:i];
        charIndex = [v11 charIndex];
        if (charIndex)
        {
          v10 = charIndex >= index;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          [v11 setCharIndex:charIndex - 1];
        }
      }
    }

    v12 = [(NSString *)self->mString stringByReplacingCharactersInRange:index withString:1, &stru_286EE1130];
    [(EDString *)self setString:?];
  }
}

- (void)removeCharactersInSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    mString = self->mString;
    if (mString)
    {
      for (i = [(NSString *)mString rangeOfCharacterFromSet:setCopy]; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSString *)self->mString rangeOfCharacterFromSet:setCopy])
      {
        [(EDString *)self removeCharacterAtIndex:?];
      }
    }
  }
}

- (void)setPhoneticInfo:(id)info
{
  infoCopy = info;
  if (!self->mDoNotModify)
  {
    mPhoneticInfo = self->mPhoneticInfo;
    p_mPhoneticInfo = &self->mPhoneticInfo;
    if (mPhoneticInfo != infoCopy)
    {
      objc_storeStrong(p_mPhoneticInfo, info);
      [(EDPhoneticInfo *)*p_mPhoneticInfo setDoNotModify:1];
    }
  }
}

- (void)setRuns:(id)runs
{
  runsCopy = runs;
  if (!self->mDoNotModify)
  {
    mRuns = self->mRuns;
    p_mRuns = &self->mRuns;
    if (mRuns != runsCopy)
    {
      v8 = runsCopy;
      objc_storeStrong(p_mRuns, runs);
      runsCopy = v8;
    }
  }
}

- (id)firstFont
{
  mRuns = self->mRuns;
  if (mRuns && [(EDCollection *)mRuns count]&& ([(EDCollection *)self->mRuns objectAtIndex:0], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [(EDCollection *)self->mRuns objectAtIndex:0];
    font = [v6 font];
  }

  else
  {
    font = 0;
  }

  return font;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDString;
  v2 = [(EDString *)&v4 description];

  return v2;
}

@end