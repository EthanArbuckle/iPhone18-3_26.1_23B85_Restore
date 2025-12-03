@interface GCDevicePhysicalInputGroupDescription
- (BOOL)validate:(id *)validate;
- (GCDevicePhysicalInputGroupDescription)initWithCoder:(id)coder;
@end

@implementation GCDevicePhysicalInputGroupDescription

- (GCDevicePhysicalInputGroupDescription)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = GCDevicePhysicalInputGroupDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputGroupDescription *)&v11 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v11.receiver, v11.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"physicalInputs"];

  physicalInputs = v4->_physicalInputs;
  v4->_physicalInputs = v8;

  return v4;
}

- (BOOL)validate:(id *)validate
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  physicalInputs = self->_physicalInputs;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __50__GCDevicePhysicalInputGroupDescription_validate___block_invoke;
  v31[3] = &unk_1E8413D78;
  v31[4] = &v32;
  [(NSArray *)physicalInputs enumerateObjectsUsingBlock:v31];
  v6 = v33[5];
  if (validate && v6)
  {
    v6 = v6;
    *validate = v6;
  }

  v7 = v6 == 0;
  _Block_object_dispose(&v32, 8);

  if (v7)
  {
    v9 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = self->_physicalInputs;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v42 count:16];
    if (v11)
    {
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          attributes = [*(*(&v27 + 1) + 8 * i) attributes];
          v15 = attributes;
          if (attributes)
          {
            v16 = attributes;
          }

          else
          {
            v16 = [MEMORY[0x1E695DFD8] set];
          }

          v17 = v16;

          v18 = [v9 member:v17];

          if (v18)
          {
            if (validate)
            {
              v22 = MEMORY[0x1E696ABC0];
              v40 = *MEMORY[0x1E696A588];
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiple physical inputs with attributes '%@'.", v17];
              v41 = v23;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
              *validate = [v22 errorWithDomain:@"GCDevicePhysicalInputError" code:0 userInfo:v24];
            }

            goto LABEL_21;
          }

          [v9 addObject:v17];
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v42 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = [MEMORY[0x1E695DFD8] set];
    v20 = [v9 member:v19];
    v8 = v20 != 0;

    if (validate != 0 && !v8)
    {
      v21 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing physical input with default attributes."];
      v39 = v10;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *validate = [v21 errorWithDomain:@"GCDevicePhysicalInputError" code:0 userInfo:v17];
LABEL_21:

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

void __50__GCDevicePhysicalInputGroupDescription_validate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 32) + 8);
  obj = 0;
  v8 = [a2 validate:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v22[0] = *MEMORY[0x1E696A588];
    v10 = [*(*(*(a1 + 32) + 8) + 40) localizedFailureReason];
    v22[1] = @"GCFailingKeyPathErrorKey";
    v23[0] = v10;
    v11 = [*(*(*(a1 + 32) + 8) + 40) gc_failingKeyPath];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v15 = [v13 arrayByAddingObject:v14];
    v23[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [v9 errorWithDomain:@"GCDevicePhysicalInputError" code:0 userInfo:v16];
    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end