@interface PKIdentityAnyOfDescriptor
- (NSString)description;
- (PKIdentityAnyOfDescriptor)initWithDescriptors:(id)a3;
- (void)addElements:(id)a3 withIntentToStore:(id)a4;
@end

@implementation PKIdentityAnyOfDescriptor

- (PKIdentityAnyOfDescriptor)initWithDescriptors:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PKIdentityAnyOfDescriptor;
  v5 = [(PKIdentityAnyOfDescriptor *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v22 = v5;
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      v13 = *MEMORY[0x1E695D940];
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          if (v15)
          {
            if ([v15 isMemberOfClass:objc_opt_class()])
            {
              [MEMORY[0x1E695DF30] raise:v13 format:@"Nested types not supported on a composite document descriptor."];
            }

            v16 = DIIdentityDocumentDescriptorFromPKIdentityDocumentDescriptor(v15);
            [v7 addObject:v16];

            [v8 addObject:v15];
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v17 = [objc_alloc(MEMORY[0x1E6997DA0]) initWithDescriptors:v7];
    v6 = v22;
    wrapped = v22->_wrapped;
    v22->_wrapped = v17;

    v19 = [v8 copy];
    descriptors = v22->_descriptors;
    v22->_descriptors = v19;

    v4 = v23;
  }

  return v6;
}

- (NSString)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = [(PKIdentityAnyOfDescriptor *)self descriptors];
  v5 = [v4 count];

  if (v5)
  {
    [v3 appendString:@"descriptors: ["];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_descriptors;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = &stru_1F227FD28;
      v10 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          [v3 appendString:v9];
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
          [v3 appendString:v13];

          v9 = @", ";
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v9 = @", ";
      }

      while (v8);
    }

    [v3 appendString:@"] "];
  }

  [v3 appendFormat:@">"];
  v14 = [v3 copy];

  return v14;
}

- (void)addElements:(id)a3 withIntentToStore:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) asDIIdentityElement];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = [v7 asDIIdentityIntentToStore];
  [(DIIdentityAnyOfDescriptor *)self->_wrapped addElements:v8 withIntentToStore:v15];
}

@end