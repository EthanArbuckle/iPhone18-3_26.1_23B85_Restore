@interface PKPaymentTransactionPresentationInformation
- (BOOL)isEqual:(id)a3;
@end

@implementation PKPaymentTransactionPresentationInformation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        primaryString = self->_primaryString;
        v8 = v6->_primaryString;
        if (primaryString && v8)
        {
          if (([(NSString *)primaryString isEqual:?]& 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (primaryString != v8)
        {
          goto LABEL_37;
        }

        secondaryString = v6->_secondaryString;
        v11 = self->_secondaryString;
        v12 = secondaryString;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          if (!v11 || !v12)
          {

            goto LABEL_37;
          }

          v14 = [(NSString *)v11 isEqualToString:v12];

          if (!v14)
          {
            goto LABEL_37;
          }
        }

        tertiaryString = self->_tertiaryString;
        v16 = v6->_tertiaryString;
        if (tertiaryString && v16)
        {
          if (([(NSString *)tertiaryString isEqual:?]& 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (tertiaryString != v16)
        {
          goto LABEL_37;
        }

        badgeString = self->_badgeString;
        v18 = v6->_badgeString;
        if (badgeString && v18)
        {
          if (([(NSString *)badgeString isEqual:?]& 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (badgeString != v18)
        {
          goto LABEL_37;
        }

        valueString = self->_valueString;
        v20 = v6->_valueString;
        if (valueString && v20)
        {
          if (([(NSString *)valueString isEqual:?]& 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (valueString != v20)
        {
          goto LABEL_37;
        }

        if (self->_destructiveSecondaryString == v6->_destructiveSecondaryString && self->_shouldShowDisclosure == v6->_shouldShowDisclosure && self->_shouldStrikeValue == v6->_shouldStrikeValue)
        {
          v9 = self->_shouldGrayValue == v6->_shouldGrayValue;
LABEL_38:

          goto LABEL_39;
        }

LABEL_37:
        v9 = 0;
        goto LABEL_38;
      }
    }

    v9 = 0;
  }

LABEL_39:

  return v9;
}

@end