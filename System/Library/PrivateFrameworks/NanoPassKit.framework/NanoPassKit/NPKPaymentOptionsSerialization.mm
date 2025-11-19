@interface NPKPaymentOptionsSerialization
+ (id)_billingAddressDictionaryFromEncodedData:(id)a3;
+ (id)_contactFromEncodedData:(id)a3;
+ (id)setTransactionDefaultsRequest;
+ (void)_deleteAllDefaultBillingAddresses:(id)a3;
+ (void)handleSetTransactionDefaultsRequest:(id)a3;
@end

@implementation NPKPaymentOptionsSerialization

+ (id)setTransactionDefaultsRequest
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D38078]);
  v3 = objc_alloc_init(NPKProtoSetTransactionDefaultsRequest);
  v4 = [v2 defaultShippingAddress];
  if (v4)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32[0]) = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sending default shipping address", v32, 2u);
      }
    }

    v8 = NPKSecureArchiveObject(v4);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultShippingAddress:v8];
  }

  v9 = [v2 defaultContactEmail];
  if (v9)
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32[0]) = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Sending default contact email", v32, 2u);
      }
    }

    v13 = NPKSecureArchiveObject(v9);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultContactEmail:v13];
  }

  v14 = [v2 defaultContactPhone];
  if (v14)
  {
    v15 = pk_Payment_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_Payment_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32[0]) = 0;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Sending default contact phone", v32, 2u);
      }
    }

    v18 = NPKSecureArchiveObject(v14);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultContactPhone:v18];
  }

  v19 = [v2 defaultContactName];
  if (v19)
  {
    v20 = pk_Payment_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_Payment_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32[0]) = 0;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Sending default contact name", v32, 2u);
      }
    }

    v23 = NPKSecureArchiveObject(v19);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultContactName:v23];
  }

  v24 = [v2 _rawDefaultBillingAddresses];
  if (v24)
  {
    v25 = pk_Payment_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = pk_Payment_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v24 count];
        v32[0] = 67109120;
        v32[1] = v28;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Sending %d default billing addresses", v32, 8u);
      }
    }

    v29 = NPKSecureArchiveObject(v24);
    [(NPKProtoSetTransactionDefaultsRequest *)v3 setDefaultBillingAddresses:v29];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)handleSetTransactionDefaultsRequest:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D38078]);
  if ([v4 hasDefaultShippingAddress])
  {
    v6 = [v4 defaultShippingAddress];
    v7 = [a1 _contactFromEncodedData:v6];

    if (v7)
    {
      v8 = pk_Payment_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = pk_Payment_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33[0]) = 0;
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default shipping address", v33, 2u);
        }
      }

      [v5 setDefaultShippingAddress:v7];
    }
  }

  else
  {
    [v5 deleteDefaultShippingAddress];
  }

  if ([v4 hasDefaultContactEmail])
  {
    v11 = [v4 defaultContactEmail];
    v12 = [a1 _contactFromEncodedData:v11];

    if (v12)
    {
      v13 = pk_Payment_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v15 = pk_Payment_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33[0]) = 0;
          _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default contact email", v33, 2u);
        }
      }

      [v5 setDefaultContactEmail:v12];
    }
  }

  else
  {
    [v5 deleteDefaultContactEmail];
  }

  if ([v4 hasDefaultContactPhone])
  {
    v16 = [v4 defaultContactPhone];
    v17 = [a1 _contactFromEncodedData:v16];

    if (v17)
    {
      v18 = pk_Payment_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = pk_Payment_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33[0]) = 0;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default contact phone", v33, 2u);
        }
      }

      [v5 setDefaultContactPhone:v17];
    }
  }

  else
  {
    [v5 deleteDefaultContactPhone];
  }

  if ([v4 hasDefaultContactName])
  {
    v21 = [v4 defaultContactName];
    v22 = [a1 _contactFromEncodedData:v21];

    if (v22)
    {
      v23 = pk_Payment_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v25 = pk_Payment_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33[0]) = 0;
          _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Decoded default contact name", v33, 2u);
        }
      }

      [v5 setDefaultContactName:v22];
    }
  }

  else
  {
    [v5 deleteDefaultContactName];
  }

  if ([v4 hasDefaultBillingAddresses])
  {
    v26 = [v4 defaultBillingAddresses];
    v27 = [a1 _billingAddressDictionaryFromEncodedData:v26];

    if (v27)
    {
      v28 = pk_Payment_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = pk_Payment_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v27 count];
          v33[0] = 67109120;
          v33[1] = v31;
          _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: Decoded %d default billing addresses", v33, 8u);
        }
      }

      [v5 _setRawDefaultBillingAddresses:v27];
    }
  }

  else
  {
    [a1 _deleteAllDefaultBillingAddresses:v5];
  }

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)_deleteAllDefaultBillingAddresses:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionary];
  [v4 _setRawDefaultBillingAddresses:v5];
}

+ (id)_contactFromEncodedData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NPKSecureUnarchiveObject(v3, v4);

  return v5;
}

+ (id)_billingAddressDictionaryFromEncodedData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:0];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:*MEMORY[0x277CCA308]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: Billing address is not a dictionary", buf, 2u);
      }
    }

    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

@end