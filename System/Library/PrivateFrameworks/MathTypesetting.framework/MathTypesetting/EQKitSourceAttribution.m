@interface EQKitSourceAttribution
- (BOOL)isEqual:(id)a3;
- (EQKitSourceAttribution)initWithSource:(id)a3 range:(_NSRange)a4;
- (_NSRange)range;
- (void)dealloc;
@end

@implementation EQKitSourceAttribution

- (EQKitSourceAttribution)initWithSource:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9.receiver = self;
  v9.super_class = EQKitSourceAttribution;
  v7 = [(EQKitSourceAttribution *)&v9 init];
  if (v7)
  {
    v7->mSource = [a3 copy];
    v7->mRange.location = location;
    v7->mRange.length = length;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitSourceAttribution;
  [(EQKitSourceAttribution *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      if (self->mRange.location == [a3 range] && self->mRange.length == v6)
      {
        mSource = self->mSource;
        v8 = [a3 source];

        LOBYTE(v5) = [(NSString *)mSource isEqualToString:v8];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (_NSRange)range
{
  length = self->mRange.length;
  location = self->mRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end