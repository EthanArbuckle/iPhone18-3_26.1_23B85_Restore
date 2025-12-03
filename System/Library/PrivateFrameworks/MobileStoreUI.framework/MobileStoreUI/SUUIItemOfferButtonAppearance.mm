@interface SUUIItemOfferButtonAppearance
- (SUUIItemOfferButtonAppearance)initWithColorScheme:(id)scheme;
@end

@implementation SUUIItemOfferButtonAppearance

- (SUUIItemOfferButtonAppearance)initWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (schemeCopy)
  {
    v16.receiver = self;
    v16.super_class = SUUIItemOfferButtonAppearance;
    v5 = [(SUUIItemOfferButtonAppearance *)&v16 init];
    if (v5)
    {
      secondaryTextColor = [schemeCopy secondaryTextColor];
      buttonColor = v5->_buttonColor;
      v5->_buttonColor = secondaryTextColor;

      schemeStyle = [schemeCopy schemeStyle];
      if (schemeStyle <= 1)
      {
        if (schemeStyle)
        {
          if (schemeStyle != 1)
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }

LABEL_11:
        v9 = MEMORY[0x277D75348];
        v10 = 0.0980392157;
        v11 = 0.670588235;
        v12 = 0.125490196;
        goto LABEL_12;
      }

      if (schemeStyle == 2)
      {
        goto LABEL_11;
      }

      if (schemeStyle == 3)
      {
LABEL_10:
        v9 = MEMORY[0x277D75348];
        v10 = 0.2;
        v11 = 0.792156863;
        v12 = 0.231372549;
LABEL_12:
        v13 = [v9 colorWithRed:v10 green:v11 blue:v12 alpha:1.0];
        confirmationColor = v5->_confirmationColor;
        v5->_confirmationColor = v13;
      }
    }
  }

  else
  {

    v5 = 0;
  }

LABEL_13:

  return v5;
}

@end