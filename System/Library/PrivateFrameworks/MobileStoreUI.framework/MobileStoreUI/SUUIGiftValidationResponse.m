@interface SUUIGiftValidationResponse
- (SUUIGiftValidationResponse)initWithValidationDictionary:(id)a3;
@end

@implementation SUUIGiftValidationResponse

- (SUUIGiftValidationResponse)initWithValidationDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SUUIGiftValidationResponse;
  v5 = [(SUUIGiftValidationResponse *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"status"];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 integerValue];
      v5->_valid = v7 == 0;
      if (!v7)
      {
        v8 = [v4 objectForKey:@"amountFormatted"];
        if (!v8)
        {
          v8 = [v4 objectForKey:@"totalPriceFormatted"];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 copy];
          totalGiftAmountString = v5->_totalGiftAmountString;
          v5->_totalGiftAmountString = v9;
        }

        v11 = [v4 objectForKey:@"giftKey"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = [v11 copy];
        giftKey = v5->_giftKey;
        v5->_giftKey = v12;
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      v5->_valid = 0;
    }

    v11 = [v4 objectForKey:@"errorEntries"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
    {
      v14 = [v11 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 objectForKey:@"localizedMessage"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 copy];
          errorString = v5->_errorString;
          v5->_errorString = v16;
        }
      }
    }

    if (v5->_errorString)
    {
      goto LABEL_22;
    }

    giftKey = [v4 objectForKey:@"userPresentableErrorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [giftKey copy];
      v19 = v5->_errorString;
      v5->_errorString = v18;
    }

    goto LABEL_21;
  }

LABEL_23:

  return v5;
}

@end