@interface CESRSamplingDimension
- (BOOL)matches:(id)matches;
- (CESRSamplingDimension)initWithAsrLocale:(id)locale;
- (id)description;
@end

@implementation CESRSamplingDimension

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  if (self == matchesCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  asrLocale = self->_asrLocale;
  if (!asrLocale)
  {
LABEL_5:
    v7 = 1;
  }

  else
  {
    asrLocale = [(CESRSamplingDimension *)matchesCopy asrLocale];
    v7 = [(NSString *)asrLocale isEqual:asrLocale];
  }

LABEL_7:

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  asrLocale = [(CESRSamplingDimension *)self asrLocale];
  v4 = [v2 stringWithFormat:@"< asrLocale=%@ >", asrLocale];

  return v4;
}

- (CESRSamplingDimension)initWithAsrLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = CESRSamplingDimension;
  v6 = [(CESRSamplingDimension *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asrLocale, locale);
  }

  return v7;
}

@end