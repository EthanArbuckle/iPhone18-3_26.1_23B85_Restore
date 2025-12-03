@interface NTKPeopleComplicationImageProvider
- (BOOL)isEqual:(id)equal;
- (NTKPeopleComplicationImageProvider)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NTKPeopleComplicationImageProvider

- (NTKPeopleComplicationImageProvider)init
{
  v5.receiver = self;
  v5.super_class = NTKPeopleComplicationImageProvider;
  initPrivate = [(CLKImageProvider *)&v5 initPrivate];
  v3 = initPrivate;
  if (initPrivate)
  {
    [(CLKImageProvider *)initPrivate setImageViewCreationHandler:&__block_literal_global_153];
  }

  return v3;
}

NTKPeopleComplicationImageView *__42__NTKPeopleComplicationImageProvider_init__block_invoke(double a1, double a2)
{
  v2 = [[NTKPeopleComplicationImageView alloc] initWithFrame:0.0, 0.0, a1, a2];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v16 = 1;
    }

    else
    {
      v5 = equalCopy;
      borderWidth = self->_borderWidth;
      [(NTKPeopleComplicationImageProvider *)v5 borderWidth];
      if (vabdd_f64(borderWidth, v7) >= 2.22044605e-16 || (fontSize = self->_fontSize, [(NTKPeopleComplicationImageProvider *)v5 fontSize], vabdd_f64(fontSize, v9) >= 2.22044605e-16))
      {
        v16 = 0;
      }

      else
      {
        profileImage = self->_profileImage;
        profileImage = [(NTKPeopleComplicationImageProvider *)v5 profileImage];
        if ([(UIImage *)profileImage isEqual:profileImage])
        {
          fullName = self->_fullName;
          fullName = [(NTKPeopleComplicationImageProvider *)v5 fullName];
          if ([(NSString *)fullName isEqualToString:fullName])
          {
            nameAbbreviation = self->_nameAbbreviation;
            nameAbbreviation = [(NTKPeopleComplicationImageProvider *)v5 nameAbbreviation];
            v16 = [(NSString *)nameAbbreviation isEqualToString:nameAbbreviation];
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NTKPeopleComplicationImageProvider;
  v5 = [(CLKImageProvider *)&v10 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    [v5 setBorderWidth:self->_borderWidth];
    [v6 setFontSize:self->_fontSize];
    [v6 setProfileImage:self->_profileImage];
    v7 = [(NSString *)self->_fullName copyWithZone:zone];
    [v6 setFullName:v7];

    v8 = [(NSString *)self->_nameAbbreviation copyWithZone:zone];
    [v6 setNameAbbreviation:v8];
  }

  return v6;
}

@end