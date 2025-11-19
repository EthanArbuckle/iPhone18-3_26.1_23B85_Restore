@interface IMContactUtilities
+ (id)getContactFullNameAndOrganizationNameForHandleID:(id)a3;
+ (id)getContactGivenNameAndBirthdayForHandleID:(id)a3;
+ (id)getContactPropertiesForHandleID:(id)a3 withKeys:(id)a4;
@end

@implementation IMContactUtilities

+ (id)getContactGivenNameAndBirthdayForHandleID:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [IMContactStore validateAndCleanupID:v4];
    v7 = +[IMContactStore sharedInstance];
    v8 = *MEMORY[0x1E695C1D0];
    v9 = *MEMORY[0x1E695C240];
    v28[0] = *MEMORY[0x1E695C1D0];
    v28[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v11 = [v7 fetchCNContactForHandleID:v6 withKeys:v10];

    v27 = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    LODWORD(v10) = [v11 areKeysAvailable:v12];

    if (v10)
    {
      v13 = [v11 givenName];

      if (v13)
      {
        v14 = [v11 givenName];
        [v5 setObject:v14 forKey:v9];
      }
    }

    v26 = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [v11 areKeysAvailable:v15];

    if (v16)
    {
      v17 = [v11 birthday];

      if (v17)
      {
        v18 = [MEMORY[0x1E695DEE8] currentCalendar];
        v19 = [MEMORY[0x1E695DFE8] systemTimeZone];
        [v18 setTimeZone:v19];

        v20 = objc_alloc_init(MEMORY[0x1E695DF10]);
        v21 = [v11 birthday];
        [v20 setDay:{objc_msgSend(v21, "day")}];

        v22 = [v11 birthday];
        [v20 setMonth:{objc_msgSend(v22, "month")}];

        v23 = [v11 birthday];
        [v20 setYear:{objc_msgSend(v23, "year")}];

        v24 = [v18 dateFromComponents:v20];
        [v5 setObject:v24 forKey:v8];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)getContactFullNameAndOrganizationNameForHandleID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C230];
  v9 = *MEMORY[0x1E695C240];
  v10 = v3;
  v11 = *MEMORY[0x1E695C328];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:3];
  v7 = [IMContactUtilities getContactPropertiesForHandleID:v5 withKeys:v6, v9, v10, v11, v12];

  return v7;
}

+ (id)getContactPropertiesForHandleID:(id)a3 withKeys:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 length])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [IMContactStore validateAndCleanupID:v5];
    v9 = +[IMContactStore sharedInstance];
    v19 = v8;
    v10 = [v9 fetchCNContactForHandleID:v8 withKeys:v6];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v10 isKeyAvailable:v16])
          {
            v17 = [v10 valueForKey:v16];
            if (v17)
            {
              [v7 setObject:v17 forKey:v16];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end