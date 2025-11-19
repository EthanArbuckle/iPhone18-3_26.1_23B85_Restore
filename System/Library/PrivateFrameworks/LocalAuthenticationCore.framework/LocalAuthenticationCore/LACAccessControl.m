@interface LACAccessControl
+ (BOOL)_checkConstraints:(id)a3 contain:(id)a4;
+ (BOOL)checkACL:(id)a3 hasConstraint:(id)a4 forOperation:(id)a5;
+ (BOOL)checkACLAllowsAll:(id)a3;
+ (__SecAccessControl)allowAllACL;
+ (__SecAccessControl)denyAllACL;
+ (__SecAccessControl)deserializeACL:(id)a3;
+ (id)constraintsFromACL:(__SecAccessControl *)a3;
+ (id)serializeACL:(__SecAccessControl *)a3;
@end

@implementation LACAccessControl

+ (id)constraintsFromACL:(__SecAccessControl *)a3
{
  Constraints = SecAccessControlGetConstraints();
  Copy = CFDictionaryCreateCopy(0, Constraints);

  return Copy;
}

+ (id)serializeACL:(__SecAccessControl *)a3
{
  v3 = SecAccessControlCopyData();

  return v3;
}

+ (__SecAccessControl)deserializeACL:(id)a3
{
  v3 = a3;
  v4 = SecAccessControlCreateFromData();
  if (!v4)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could note deserialize ACL (%@)", 0];
    v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  v5 = v4;

  return v5;
}

+ (__SecAccessControl)denyAllACL
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = SecAccessControlCreate();
  if (!v2)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not initialize trivial ACL (%@)", 0];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v3 = v2;
  v11 = @"dacl";
  v12[0] = MEMORY[0x1E695E110];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  SecAccessControlSetConstraints();

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (__SecAccessControl)allowAllACL
{
  error = 0;
  v2 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC28], 0, &error);
  if (!v2)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not initialize trivial ACL (%@)", error];
    v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v3 = v2;

  return v3;
}

+ (BOOL)checkACLAllowsAll:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = SecAccessControlCreateFromData();
  if (v4 && (SecAccessControlGetRequirePassword() & 1) == 0)
  {
    v6 = SecAccessControlGetConstraints();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 allValues];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      v11 = *MEMORY[0x1E695E4D0];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (!CFEqual(*(*(&v15 + 1) + 8 * i), v11))
          {
            v5 = 0;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_14:
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)checkACL:(id)a3 hasConstraint:(id)a4 forOperation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 deserializeACL:a3];
  v11 = [a1 constraintsFromACL:v10];
  if (v10)
  {
    CFRelease(v10);
  }

  v12 = [v8 keyOp];
  v13 = [v11 objectForKey:v12];

  v14 = [a1 _checkConstraints:v13 contain:v9];
  return v14;
}

+ (BOOL)_checkConstraints:(id)a3 contain:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = [v6 allValues];
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v14 = 0x1E695D000uLL;
      v28 = v10;
      v26 = *v34;
      while (2)
      {
        v15 = 0;
        v27 = v12;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([a1 _checkConstraints:v16 contain:v7])
          {
            v9 = 1;
            goto LABEL_26;
          }

          v17 = *(v14 + 3784);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v18 = v16;
            v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v30;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v30 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v29 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([a1 _checkConstraints:v23 contain:v7])
                  {

                    v9 = 1;
                    v10 = v28;
                    goto LABEL_26;
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v12 = v27;
            v10 = v28;
            v13 = v26;
            v14 = 0x1E695D000;
          }

          ++v15;
        }

        while (v15 != v12);
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
        v9 = 0;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_26:
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

@end