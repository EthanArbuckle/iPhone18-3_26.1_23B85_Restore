@interface CESRSamplingDimension
- (BOOL)matches:(id)a3;
- (CESRSamplingDimension)initWithAsrLocale:(id)a3;
- (id)description;
@end

@implementation CESRSamplingDimension

- (BOOL)matches:(id)a3
{
  v4 = a3;
  if (self == v4)
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
    v6 = [(CESRSamplingDimension *)v4 asrLocale];
    v7 = [(NSString *)asrLocale isEqual:v6];
  }

LABEL_7:

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CESRSamplingDimension *)self asrLocale];
  v4 = [v2 stringWithFormat:@"< asrLocale=%@ >", v3];

  return v4;
}

- (CESRSamplingDimension)initWithAsrLocale:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CESRSamplingDimension;
  v6 = [(CESRSamplingDimension *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asrLocale, a3);
  }

  return v7;
}

@end