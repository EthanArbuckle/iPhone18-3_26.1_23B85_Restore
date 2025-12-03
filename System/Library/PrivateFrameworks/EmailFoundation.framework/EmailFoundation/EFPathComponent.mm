@interface EFPathComponent
+ (EFPathComponent)pathComponentWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (EFPathComponent)initWithString:(id)string;
- (EFPathComponent)pathComponentByDeletingPathExtension;
- (id)debugDescription;
- (id)subpathToIndex:(unint64_t)index;
- (uint64_t)_setSanitizedString:(uint64_t)string;
- (void)_initWithSanitizedString:(void *)string;
@end

@implementation EFPathComponent

+ (EFPathComponent)pathComponentWithString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(objc_opt_class()) initWithString:stringCopy];

  return v4;
}

- (EFPathComponent)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = EFPathComponent;
  v5 = [(EFPathComponent *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    v7 = [(EFPathComponent *)v5 _setSanitizedString:v6];

    if ((v7 & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)_setSanitizedString:(uint64_t)string
{
  v3 = a2;
  v4 = v3;
  if (string)
  {
    if ([v3 length])
    {
      v5 = [v4 copy];
      v6 = *(string + 8);
      *(string + 8) = v5;

      string = 1;
    }

    else
    {
      string = 0;
    }
  }

  return string;
}

- (void)_initWithSanitizedString:(void *)string
{
  v3 = a2;
  if (string)
  {
    v6.receiver = string;
    v6.super_class = EFPathComponent;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    string = v4;
    if (v4)
    {
      if (([(EFPathComponent *)v4 _setSanitizedString:v3]& 1) == 0)
      {

        string = 0;
      }
    }
  }

  return string;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sanitizedString = self->_sanitizedString;
    sanitizedString = [equalCopy sanitizedString];
    v7 = [(NSString *)sanitizedString isEqual:sanitizedString];
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

- (id)subpathToIndex:(unint64_t)index
{
  v5 = [EFPathComponent alloc];
  v6 = [(NSString *)self->_sanitizedString substringToIndex:index];
  v7 = [(EFPathComponent *)v5 _initWithSanitizedString:v6];

  return v7;
}

- (EFPathComponent)pathComponentByDeletingPathExtension
{
  v3 = [EFPathComponent alloc];
  stringByDeletingPathExtension = [(NSString *)self->_sanitizedString stringByDeletingPathExtension];
  v5 = [(EFPathComponent *)v3 _initWithSanitizedString:stringByDeletingPathExtension];

  return v5;
}

@end