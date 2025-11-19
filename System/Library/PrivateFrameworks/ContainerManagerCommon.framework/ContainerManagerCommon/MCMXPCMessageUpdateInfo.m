@interface MCMXPCMessageUpdateInfo
- (BOOL)fullReplace;
- (MCMXPCMessageUpdateInfo)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (NSDictionary)infoDict;
- (NSSet)deleteKeys;
@end

@implementation MCMXPCMessageUpdateInfo

- (BOOL)fullReplace
{
  result = self->_fullReplace;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)infoDict
{
  result = self->_infoDict;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)deleteKeys
{
  result = self->_deleteKeys;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageUpdateInfo)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v35 = 1;
  v34.receiver = self;
  v34.super_class = MCMXPCMessageUpdateInfo;
  v9 = [(MCMXPCMessageWithConcreteContainerBase *)&v34 initWithXPCObject:v8 context:a4 error:&v35];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsObjectFromXPCObject:v8 key:"Value" error:&v35];
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v35 == 1;
    }

    if (!v12)
    {
      goto LABEL_32;
    }

    uint64 = xpc_dictionary_get_uint64(v8, "PrivateFlags");
    v14 = ~uint64;
    v10->_fullReplace = uint64 & 1;
    deleteKeys = v10->_deleteKeys;
    v10->_deleteKeys = 0;

    infoDict = v10->_infoDict;
    v10->_infoDict = 0;

    if ((v14 & 6) != 0)
    {
      if (!v11 || ((objc_opt_class(), v29 = v11, (objc_opt_isKindOfClass() & 1) == 0) ? (v30 = 0) : (v30 = v29), v29, v30, v30))
      {
        objc_storeStrong(&v10->_infoDict, v11);
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      objc_opt_class();
      v17 = v11;
      if (objc_opt_isKindOfClass())
      {
        if (v11)
        {
          v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v17, "count")}];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          obj = v17;
          v19 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v38;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(obj);
                }

                v23 = *(*(&v37 + 1) + 8 * i);
                objc_opt_class();
                v24 = v23;
                if (objc_opt_isKindOfClass())
                {
                  v25 = v24;
                }

                else
                {
                  v25 = 0;
                }

                if (!v25)
                {
                  v35 = 38;
                  v26 = obj;

                  goto LABEL_31;
                }

                [v18 addObject:v24];
              }

              v20 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v26 = obj;

          v27 = [v18 copy];
          v28 = v10->_deleteKeys;
          v10->_deleteKeys = v27;

LABEL_31:
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    v35 = 38;
    goto LABEL_32;
  }

LABEL_33:
  if (v35 != 1)
  {
    if (a5)
    {
      *a5 = v35;
    }

    v10 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

@end