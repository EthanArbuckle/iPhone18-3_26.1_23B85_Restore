@interface EQKitSourceAttribution
- (BOOL)isEqual:(id)equal;
- (EQKitSourceAttribution)initWithSource:(id)source range:(_NSRange)range;
- (_NSRange)range;
- (void)dealloc;
@end

@implementation EQKitSourceAttribution

- (EQKitSourceAttribution)initWithSource:(id)source range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = EQKitSourceAttribution;
  v7 = [(EQKitSourceAttribution *)&v9 init];
  if (v7)
  {
    v7->mSource = [source copy];
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      if (self->mRange.location == [equal range] && self->mRange.length == v6)
      {
        mSource = self->mSource;
        source = [equal source];

        LOBYTE(v5) = [(NSString *)mSource isEqualToString:source];
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