@interface SUUIWishlistDataConsumer
- (id)_errorWithData:(id)a3 MIMEType:(id)a4;
- (id)_itemsWithJSONData:(id)a3 error:(id *)a4;
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SUUIWishlistDataConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 MIMEType];
  if ([v9 rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(SUUIWishlistDataConsumer *)self _errorWithData:v8 MIMEType:v9];

    v11 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    v11 = [(SUUIWishlistDataConsumer *)self _itemsWithJSONData:v8 error:&v14];

    v10 = v14;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    v12 = v10;
    *a5 = v10;
  }

LABEL_7:

  return v11;
}

- (id)_errorWithData:(id)a3 MIMEType:(id)a4
{
  v5 = a3;
  if ([a4 rangeOfString:@"xml" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_10:
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D6A678] code:0 userInfo:0];
    goto LABEL_11;
  }

  v7 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:v6];
  v8 = [v7 actionsWithActionType:*MEMORY[0x277D6A570]];
  if ([v8 count] == 1)
  {
    v9 = [v8 objectAtIndex:0];
    v10 = [v9 dialog];
    v11 = [v10 dialogKind];
    v12 = [v11 isEqualToString:*MEMORY[0x277D69E48]];

    v13 = 0;
    if (v12)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D6A678] code:1 userInfo:0];
    }
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v13;
}

- (id)_itemsWithJSONData:(id)a3 error:(id *)a4
{
  v19 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v19];
  v6 = v19;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 objectForKey:@"storePlatformData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_opt_class();
      v10 = SUUIStorePageItemsWithStorePlatformDictionary(v8, 0, v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 objectForKey:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__SUUIWishlistDataConsumer__itemsWithJSONData_error___block_invoke;
      v16[3] = &unk_2798F74C0;
      v17 = v10;
      v7 = v12;
      v18 = v7;
      [v11 enumerateKeysAndObjectsUsingBlock:v16];
    }

    else
    {
      v7 = 0;
    }
  }

  if (a4 && !v7)
  {
    v13 = v6;
    *a4 = v6;
  }

  v14 = v7;

  return v7;
}

void __53__SUUIWishlistDataConsumer__itemsWithJSONData_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"adamIds"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [*(a1 + 32) objectForKey:v10];
            if (v11)
            {
              [*(a1 + 40) addObject:v11];
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

@end