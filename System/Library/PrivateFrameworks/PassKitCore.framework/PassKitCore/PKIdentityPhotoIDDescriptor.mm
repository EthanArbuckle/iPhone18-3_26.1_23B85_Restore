@interface PKIdentityPhotoIDDescriptor
- (NSArray)elements;
- (NSString)description;
- (PKIdentityPhotoIDDescriptor)init;
- (PKIdentityPhotoIDDescriptor)initWithDIIdentityPhotoIDDescriptor:(id)descriptor;
- (id)intentToStoreForElement:(id)element;
- (void)addElements:(id)elements withIntentToStore:(id)store;
@end

@implementation PKIdentityPhotoIDDescriptor

- (PKIdentityPhotoIDDescriptor)init
{
  v3 = objc_alloc_init(MEMORY[0x1E6997DD0]);
  v4 = [(PKIdentityPhotoIDDescriptor *)self initWithDIIdentityPhotoIDDescriptor:v3];

  return v4;
}

- (PKIdentityPhotoIDDescriptor)initWithDIIdentityPhotoIDDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = PKIdentityPhotoIDDescriptor;
  v6 = [(PKIdentityPhotoIDDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapped, descriptor);
  }

  return v7;
}

- (NSString)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  elements = [(PKIdentityPhotoIDDescriptor *)self elements];
  if ([elements count])
  {
    [v3 appendString:@"elements: ["];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = elements;
    obj = elements;
    v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = &stru_1F227FD28;
      v8 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(PKIdentityPhotoIDDescriptor *)self intentToStoreForElement:v10];
          [v3 appendString:v7];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v10, v11];
          [v3 appendString:v12];

          v7 = @", ";
        }

        v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        v7 = @", ";
      }

      while (v6);
    }

    [v3 appendString:@"] "];
    elements = v14;
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (NSArray)elements
{
  v18 = *MEMORY[0x1E69E9840];
  elements = [(DIIdentityPhotoIDDescriptor *)self->_wrapped elements];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(elements, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = elements;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [PKIdentityElement alloc];
        v11 = [(PKIdentityElement *)v10 initWithDIIdentityElement:v9, v13];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addElements:(id)elements withIntentToStore:(id)store
{
  v21 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  storeCopy = store;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(elementsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = elementsCopy;
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

        asDIIdentityElement = [*(*(&v16 + 1) + 8 * v13) asDIIdentityElement];
        [v8 addObject:asDIIdentityElement];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  asDIIdentityIntentToStore = [storeCopy asDIIdentityIntentToStore];
  [(DIIdentityPhotoIDDescriptor *)self->_wrapped addElements:v8 withIntentToStore:asDIIdentityIntentToStore];
}

- (id)intentToStoreForElement:(id)element
{
  asDIIdentityElement = [element asDIIdentityElement];
  v5 = [(DIIdentityPhotoIDDescriptor *)self->_wrapped intentToStoreForElement:asDIIdentityElement];
  v6 = [[PKIdentityIntentToStore alloc] initWithDIIdentityIntentToStore:v5];

  return v6;
}

@end