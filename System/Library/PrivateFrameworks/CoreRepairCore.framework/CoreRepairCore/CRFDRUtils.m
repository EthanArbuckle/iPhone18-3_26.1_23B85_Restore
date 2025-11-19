@interface CRFDRUtils
+ (BOOL)hasMesaUnsealedData;
@end

@implementation CRFDRUtils

+ (BOOL)hasMesaUnsealedData
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v2 = [a1 findUnsealedDataWithError:&v25];
  v3 = v25;
  v4 = v3;
  if (!v2 || v3)
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CRFDRUtils(ComponentState) *)v4 hasMesaUnsealedData:v11];
    }

    goto LABEL_15;
  }

  if (![v2 count])
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v11, OS_LOG_TYPE_DEFAULT, "No delta components found", buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [&unk_1F4BCD108 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v5)
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *v21;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(&unk_1F4BCD108);
      }

      v9 = [v2 objectForKey:*(*(&v20 + 1) + 8 * i)];

      if (v9)
      {
        v10 = 1;
        goto LABEL_17;
      }
    }

    v6 = [&unk_1F4BCD108 countByEnumeratingWithState:&v20 objects:v26 count:16];
    v10 = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

@end