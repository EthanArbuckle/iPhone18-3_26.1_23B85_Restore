@interface CNEmailAddressScanner
- (id)firstEmailAddressInString:(id)string;
- (void)enumerateEmailAddressesInString:(id)string usingBlock:(id)block;
- (void)withEmailAddressesInString:(id)string each:(id)each;
@end

@implementation CNEmailAddressScanner

- (id)firstEmailAddressInString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (off_1EF440708(&__block_literal_global_120, stringCopy))
  {
    matchedString = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [MEMORY[0x1E6999A88] scanString:{stringCopy, 0}];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = *MEMORY[0x1E69999C0];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          type = [v11 type];
          v13 = [type isEqualToString:v9];

          if (v13)
          {
            matchedString = [v11 matchedString];
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    matchedString = 0;
LABEL_13:
  }

  v14 = *MEMORY[0x1E69E9840];

  return matchedString;
}

- (void)enumerateEmailAddressesInString:(id)string usingBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  if (!off_1EF440708(&__block_literal_global_120, stringCopy))
  {
    v7 = [CNObservable observableWithScannerResultsOfType:2 inString:stringCopy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__CNEmailAddressScanner_enumerateEmailAddressesInString_usingBlock___block_invoke;
    v8[3] = &unk_1E6ED60F0;
    v9 = blockCopy;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __68__CNEmailAddressScanner_enumerateEmailAddressesInString_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v6 matchedString];
  v7 = [v6 range];
  v9 = v8;

  (*(v5 + 16))(v5, v10, v7, v9, a4);
}

- (void)withEmailAddressesInString:(id)string each:(id)each
{
  eachCopy = each;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CNEmailAddressScanner_withEmailAddressesInString_each___block_invoke;
  v8[3] = &unk_1E6ED6118;
  v9 = eachCopy;
  v7 = eachCopy;
  [(CNEmailAddressScanner *)self enumerateEmailAddressesInString:string usingBlock:v8];
}

@end