@interface EFPathComponent
+ (EFPathComponent)pathComponentWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EFPathComponent)initWithString:(id)a3;
- (EFPathComponent)pathComponentByDeletingPathExtension;
- (id)debugDescription;
- (id)subpathToIndex:(unint64_t)a3;
- (uint64_t)_setSanitizedString:(uint64_t)a1;
- (void)_initWithSanitizedString:(void *)a1;
@end

@implementation EFPathComponent

+ (EFPathComponent)pathComponentWithString:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithString:v3];

  return v4;
}

- (EFPathComponent)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EFPathComponent;
  v5 = [(EFPathComponent *)&v9 init];
  if (v5)
  {
    v6 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    v7 = [(EFPathComponent *)v5 _setSanitizedString:v6];

    if ((v7 & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)_setSanitizedString:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 length])
    {
      v5 = [v4 copy];
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_initWithSanitizedString:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = EFPathComponent;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      if (([(EFPathComponent *)v4 _setSanitizedString:v3]& 1) == 0)
      {

        a1 = 0;
      }
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sanitizedString = self->_sanitizedString;
    v6 = [v4 sanitizedString];
    v7 = [(NSString *)sanitizedString isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSString *)self->_sanitizedString debugDescription];
  v5 = [v3 stringWithFormat:@"<EFPathComponent %p %@>", self, v4, 0];

  return v5;
}

- (id)subpathToIndex:(unint64_t)a3
{
  v5 = [EFPathComponent alloc];
  v6 = [(NSString *)self->_sanitizedString substringToIndex:a3];
  v7 = [(EFPathComponent *)v5 _initWithSanitizedString:v6];

  return v7;
}

- (EFPathComponent)pathComponentByDeletingPathExtension
{
  v3 = [EFPathComponent alloc];
  v4 = [(NSString *)self->_sanitizedString stringByDeletingPathExtension];
  v5 = [(EFPathComponent *)v3 _initWithSanitizedString:v4];

  return v5;
}

@end