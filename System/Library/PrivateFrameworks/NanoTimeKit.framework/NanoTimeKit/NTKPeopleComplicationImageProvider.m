@interface NTKPeopleComplicationImageProvider
- (BOOL)isEqual:(id)a3;
- (NTKPeopleComplicationImageProvider)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NTKPeopleComplicationImageProvider

- (NTKPeopleComplicationImageProvider)init
{
  v5.receiver = self;
  v5.super_class = NTKPeopleComplicationImageProvider;
  v2 = [(CLKImageProvider *)&v5 initPrivate];
  v3 = v2;
  if (v2)
  {
    [(CLKImageProvider *)v2 setImageViewCreationHandler:&__block_literal_global_153];
  }

  return v3;
}

NTKPeopleComplicationImageView *__42__NTKPeopleComplicationImageProvider_init__block_invoke(double a1, double a2)
{
  v2 = [[NTKPeopleComplicationImageView alloc] initWithFrame:0.0, 0.0, a1, a2];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v16 = 1;
    }

    else
    {
      v5 = v4;
      borderWidth = self->_borderWidth;
      [(NTKPeopleComplicationImageProvider *)v5 borderWidth];
      if (vabdd_f64(borderWidth, v7) >= 2.22044605e-16 || (fontSize = self->_fontSize, [(NTKPeopleComplicationImageProvider *)v5 fontSize], vabdd_f64(fontSize, v9) >= 2.22044605e-16))
      {
        v16 = 0;
      }

      else
      {
        profileImage = self->_profileImage;
        v11 = [(NTKPeopleComplicationImageProvider *)v5 profileImage];
        if ([(UIImage *)profileImage isEqual:v11])
        {
          fullName = self->_fullName;
          v13 = [(NTKPeopleComplicationImageProvider *)v5 fullName];
          if ([(NSString *)fullName isEqualToString:v13])
          {
            nameAbbreviation = self->_nameAbbreviation;
            v15 = [(NTKPeopleComplicationImageProvider *)v5 nameAbbreviation];
            v16 = [(NSString *)nameAbbreviation isEqualToString:v15];
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

- (id)copyWithZone:(_NSZone *)a3
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
    v7 = [(NSString *)self->_fullName copyWithZone:a3];
    [v6 setFullName:v7];

    v8 = [(NSString *)self->_nameAbbreviation copyWithZone:a3];
    [v6 setNameAbbreviation:v8];
  }

  return v6;
}

@end