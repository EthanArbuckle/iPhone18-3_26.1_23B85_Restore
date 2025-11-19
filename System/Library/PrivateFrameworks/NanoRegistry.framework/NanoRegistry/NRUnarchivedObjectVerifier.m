@interface NRUnarchivedObjectVerifier
+ (void)unarchivingVerifyObjectClasses:(id)a3 name:(id)a4 classes:(id)a5 owner:(id)a6;
+ (void)unarchivingVerifyObjectIsNotNil:(id)a3 name:(id)a4 owner:(id)a5;
@end

@implementation NRUnarchivedObjectVerifier

+ (void)unarchivingVerifyObjectIsNotNil:(id)a3 name:(id)a4 owner:(id)a5
{
  if (!a3)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"failure unarchiving %@", v9];

    [MEMORY[0x1E695DF30] raise:v10 format:{@"%@ is nil", v7}];
  }
}

+ (void)unarchivingVerifyObjectClasses:(id)a3 name:(id)a4 classes:(id)a5 owner:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        if (objc_opt_isKindOfClass())
        {
          v22 = v13;
          goto LABEL_11;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = MEMORY[0x1E696AEC0];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [v19 stringWithFormat:@"failure unarchiving %@", v21];

  v23 = MEMORY[0x1E695DF30];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [v23 raise:v22 format:{@"%@ is class %@ expected one of %@", v10, v25, v13}];

LABEL_11:
  v26 = *MEMORY[0x1E69E9840];
}

@end