@interface EDPhoneticInfo
+ (id)phoneticInfoWithResources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEDPhoneticInfo:(id)info;
- (EDPhoneticInfo)initWithResources:(id)resources;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)font;
- (void)appendString:(id)string;
- (void)prependString:(id)string;
- (void)setAlign:(int)align;
- (void)setFont:(id)font;
- (void)setFontIndex:(unint64_t)index;
- (void)setString:(id)string;
- (void)setType:(int)type;
@end

@implementation EDPhoneticInfo

- (EDPhoneticInfo)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = EDPhoneticInfo;
  v5 = [(EDPhoneticInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mFontIndex = 0;
    *&v6->mType = 0;
  }

  return v6;
}

+ (id)phoneticInfoWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
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

    v10 = [(EDCollection *)self->mRuns copyWithZone:zone];
    v11 = *(v7 + 40);
    *(v7 + 40) = v10;

    *(v7 + 48) = self->mDoNotModify;
    v12 = v7;
  }

  return v7;
}

- (BOOL)isEqualToEDPhoneticInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  v6 = self->mFontIndex == infoCopy[2] && self->mType == *(infoCopy + 8) && [(EDCollection *)self->mRuns isEqual:infoCopy[5]]&& [(NSString *)self->mString isEqualToString:v5[3]]&& self->mAlign == *(v5 + 9);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDPhoneticInfo *)self isEqualToEDPhoneticInfo:v5];
  }

  return v6;
}

- (void)setType:(int)type
{
  if (!self->mDoNotModify)
  {
    self->mType = type;
  }
}

- (void)setAlign:(int)align
{
  if (!self->mDoNotModify)
  {
    self->mAlign = align;
  }
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
    v4 = [stringCopy stringByAppendingString:self->mString];
    [(EDPhoneticInfo *)self setString:v4];

    v5 = [(EDCollection *)self->mRuns count];
    v6 = [stringCopy length];
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

- (void)appendString:(id)string
{
  stringCopy = string;
  if (!self->mDoNotModify)
  {
    v6 = stringCopy;
    v5 = [(NSString *)self->mString stringByAppendingString:stringCopy];
    [(EDPhoneticInfo *)self setString:v5];

    stringCopy = v6;
  }
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];

  v5 = [fonts objectAtIndex:self->mFontIndex];

  return v5;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (!self->mDoNotModify)
  {
    v7 = fontCopy;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    fonts = [WeakRetained fonts];

    self->mFontIndex = [fonts addObject:v7];
    fontCopy = v7;
  }
}

- (void)setFontIndex:(unint64_t)index
{
  if (!self->mDoNotModify)
  {
    self->mFontIndex = index;
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