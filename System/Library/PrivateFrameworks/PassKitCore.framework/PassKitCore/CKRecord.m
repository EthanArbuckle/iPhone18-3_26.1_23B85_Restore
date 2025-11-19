@interface CKRecord
@end

@implementation CKRecord

uint64_t __59__CKRecord_PKAdditions__pk_encryptedArrayOfClasses_forKey___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        if (objc_opt_isKindOfClass())
        {
          v14 = 1;
          goto LABEL_13;
        }

        v8 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v11 = *(a1 + 32);
          v10 = *(a1 + 40);
          v12 = v9;
          v13 = [v11 description];
          *buf = 138412802;
          v22 = v9;
          v23 = 2112;
          v24 = v10;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Wrong class in encrypted array: %@, for key %@, expected classes: %@", buf, 0x20u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

void __32__CKRecord_PKAdditions__pk_hash__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 coordinate];
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v5 safelyAddObject:v6];

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    [v7 safelyAddObject:v8];
  }

  else
  {
    [*(a1 + 32) safelyAddObject:v9];
  }
}

@end