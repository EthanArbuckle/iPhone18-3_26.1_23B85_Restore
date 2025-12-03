@interface OITSUDurationFormat
+ (id)formatWithFormat:(id)format name:(id)name;
- (BOOL)isEqual:(id)equal;
- (OITSUDurationFormat)initWithFormat:(id)format name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setFormatName:(id)name;
@end

@implementation OITSUDurationFormat

+ (id)formatWithFormat:(id)format name:(id)name
{
  v4 = [[self alloc] initWithFormat:format name:name];

  return v4;
}

- (OITSUDurationFormat)initWithFormat:(id)format name:(id)name
{
  v8.receiver = self;
  v8.super_class = OITSUDurationFormat;
  v6 = [(OITSUDurationFormat *)&v8 init];
  if (v6)
  {
    v6->mFormat = format;
    v6->mName = name;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->mFormat isEqualToString:*(equal + 1)];
    if (v5)
    {
      mName = self->mName;
      if (mName | *(equal + 2))
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

- (void)setFormatName:(id)name
{
  nameCopy = name;

  self->mName = name;
}

@end