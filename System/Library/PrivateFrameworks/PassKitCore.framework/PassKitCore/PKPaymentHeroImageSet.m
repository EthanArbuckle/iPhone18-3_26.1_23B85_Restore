@interface PKPaymentHeroImageSet
- (PKPaymentHeroImageSet)initWithDictionary:(id)a3;
- (id)imageForPreferredLanguages:(id)a3 scale:(double)a4;
@end

@implementation PKPaymentHeroImageSet

- (PKPaymentHeroImageSet)initWithDictionary:(id)a3
{
  v5 = a3;
  v6 = [(PKPaymentHeroImageSet *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (id)imageForPreferredLanguages:(id)a3 scale:(double)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSDictionary *)self->_model objectForKey:*(*(&v23 + 1) + 8 * i)];
        if (v11)
        {
          v12 = v11;

          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(NSDictionary *)self->_model objectForKey:@"base"];
  if (v12)
  {
LABEL_14:
    if (a4 <= 2.0)
    {
      v14 = @"2x";
    }

    else
    {
      v14 = @"3x";
    }

    v15 = v14;
    v16 = [v12 objectForKey:v15];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      if (a4 >= 3.0)
      {
        v18 = @"2x";
      }

      else
      {
        v18 = @"3x";
      }

      v19 = v18;

      v20 = [v12 objectForKey:v19];
      if (!v20)
      {
        v20 = v12;
      }

      v17 = v20;
      v15 = v19;
    }

    v13 = [[PKPaymentHeroImageModel alloc] initWithDictionary:v17];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Unable to find a matching language in hero image set", v22, 2u);
    }

    v13 = 0;
  }

  return v13;
}

@end