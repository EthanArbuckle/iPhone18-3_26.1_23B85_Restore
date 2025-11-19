@interface OADBevel
- (BOOL)isEqual:(id)a3;
- (OADBevel)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADBevel

- (OADBevel)init
{
  v8.receiver = self;
  v8.super_class = OADBevel;
  result = [(OADBevel *)&v8 init];
  if (result)
  {
    result->mType = 2;
    __asm { FMOV            V0.2S, #6.0 }

    *&result->mWidth = _D0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->mType;
  *(result + 3) = LODWORD(self->mWidth);
  *(result + 4) = LODWORD(self->mHeight);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  mType = self->mType;
  if (mType != [v5 type])
  {
    goto LABEL_7;
  }

  mWidth = self->mWidth;
  [v6 width];
  if (mWidth != v9)
  {
    goto LABEL_7;
  }

  mHeight = self->mHeight;
  [v6 height];
  v12 = mHeight == v11;
LABEL_8:

  return v12;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADBevel;
  v2 = [(OADBevel *)&v4 description];

  return v2;
}

@end