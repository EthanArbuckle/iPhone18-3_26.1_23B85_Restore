@interface OITSUDurationFormat
+ (id)formatWithFormat:(id)a3 name:(id)a4;
- (BOOL)isEqual:(id)a3;
- (OITSUDurationFormat)initWithFormat:(id)a3 name:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setFormatName:(id)a3;
@end

@implementation OITSUDurationFormat

+ (id)formatWithFormat:(id)a3 name:(id)a4
{
  v4 = [[a1 alloc] initWithFormat:a3 name:a4];

  return v4;
}

- (OITSUDurationFormat)initWithFormat:(id)a3 name:(id)a4
{
  v8.receiver = self;
  v8.super_class = OITSUDurationFormat;
  v6 = [(OITSUDurationFormat *)&v8 init];
  if (v6)
  {
    v6->mFormat = a3;
    v6->mName = a4;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mFormat = self->mFormat;
  mName = self->mName;

  return [v4 initWithFormat:mFormat name:mName];
}

- (void)dealloc
{
  self->mFormat = 0;

  self->mName = 0;
  v3.receiver = self;
  v3.super_class = OITSUDurationFormat;
  [(OITSUDurationFormat *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->mFormat isEqualToString:*(a3 + 1)];
    if (v5)
    {
      mName = self->mName;
      if (mName | *(a3 + 2))
      {

        LOBYTE(v5) = [(NSString *)mName isEqualToString:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setFormatName:(id)a3
{
  v5 = a3;

  self->mName = a3;
}

@end