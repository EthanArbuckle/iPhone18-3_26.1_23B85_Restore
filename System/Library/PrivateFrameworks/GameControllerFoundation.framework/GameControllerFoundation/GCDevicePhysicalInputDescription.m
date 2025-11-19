@interface GCDevicePhysicalInputDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (GCDevicePhysicalInputDescription)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDevicePhysicalInputDescription

- (GCDevicePhysicalInputDescription)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = GCDevicePhysicalInputDescription;
  v3 = a3;
  v4 = [(GCDevicePhysicalInputDescription *)&v16 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v16.receiver, v16.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"elements"];
  elements = v4->_elements;
  v4->_elements = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"attributes"];

  attributes = v4->_attributes;
  v4->_attributes = v13;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  elements = self->_elements;
  v5 = a3;
  [v5 encodeObject:elements forKey:@"elements"];
  [v5 encodeObject:self->_attributes forKey:@"attributes"];
}

- (BOOL)validate:(id *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  elements = self->_elements;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__GCDevicePhysicalInputDescription_validate___block_invoke;
  v25[3] = &unk_1E8413D50;
  v25[4] = &v26;
  [(NSArray *)elements enumerateObjectsUsingBlock:v25];
  v6 = v27[5];
  if (a3 && v6)
  {
    v6 = v6;
    *a3 = v6;
  }

  v7 = v6 != 0;
  _Block_object_dispose(&v26, 8);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = self->_elements;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v34 count:16];
    if (v11)
    {
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) identifier];
          v15 = [v9 member:v14];

          if (v15)
          {
            if (a3)
            {
              v16 = MEMORY[0x1E696ABC0];
              v32 = *MEMORY[0x1E696A588];
              v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiple elements with identifier '%@'.", v14];
              v33 = v17;
              v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
              *a3 = [v16 errorWithDomain:@"GCDevicePhysicalInputError" code:0 userInfo:v18];
            }

            v8 = 0;
            goto LABEL_18;
          }

          [v9 addObject:v14];
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_18:
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

void __45__GCDevicePhysicalInputDescription_validate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((attributes = self->_attributes, attributes == v4[2]) || [(NSSet *)attributes isEqual:?]))
  {
    elements = self->_elements;
    if (elements == v4[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSArray *)elements isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(NSSet *)self->_attributes allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"Physical Input [%@] {", v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_elements;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) description];
        [v6 appendFormat:@"\n\t%@", v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([(NSArray *)self->_elements count])
  {
    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"}"];
  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

@end