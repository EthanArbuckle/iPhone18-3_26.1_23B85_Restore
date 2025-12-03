@interface PKIdentityDriversLicenseDescriptor
- (NSArray)elements;
- (NSString)description;
- (PKIdentityDriversLicenseDescriptor)init;
- (PKIdentityDriversLicenseDescriptor)initWithDIIdentityDriversLicenseDescriptor:(id)descriptor;
- (id)intentToStoreForElement:(id)element;
- (void)addElements:(id)elements withIntentToStore:(id)store;
@end

@implementation PKIdentityDriversLicenseDescriptor

- (PKIdentityDriversLicenseDescriptor)init
{
  v6.receiver = self;
  v6.super_class = PKIdentityDriversLicenseDescriptor;
  v2 = [(PKIdentityDriversLicenseDescriptor *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E6997DB0]);
  wrapped = v2->_wrapped;
  v2->_wrapped = v3;

  return v2;
}

- (PKIdentityDriversLicenseDescriptor)initWithDIIdentityDriversLicenseDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v8.receiver = self;
  v8.super_class = PKIdentityDriversLicenseDescriptor;
  v5 = [(PKIdentityDriversLicenseDescriptor *)&v8 init];
  wrapped = v5->_wrapped;
  v5->_wrapped = descriptorCopy;

  return v5;
}

- (NSString)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  elements = [(PKIdentityDriversLicenseDescriptor *)self elements];
  if ([elements count])
  {
    [v3 appendString:@"elements: ["];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = elements;
    obj = elements;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = &stru_1F227FD28;
      v8 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(PKIdentityDriversLicenseDescriptor *)self intentToStoreForElement:v10];
          [v3 appendString:v7];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v10, v11];
          [v3 appendString:v12];

          v7 = @", ";
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        v7 = @", ";
      }

      while (v6);
    }

    [v3 appendString:@"] "];
    elements = v15;
  }

  [v3 appendFormat:@">"];
  v13 = [v3 copy];

  return v13;
}

- (NSArray)elements
{
  v18 = *MEMORY[0x1E69E9840];
  elements = [(DIIdentityDriversLicenseDescriptor *)self->_wrapped elements];
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
  [(DIIdentityDriversLicenseDescriptor *)self->_wrapped addElements:v8 withIntentToStore:asDIIdentityIntentToStore];
}

- (id)intentToStoreForElement:(id)element
{
  asDIIdentityElement = [element asDIIdentityElement];
  v5 = [(DIIdentityDriversLicenseDescriptor *)self->_wrapped intentToStoreForElement:asDIIdentityElement];
  v6 = [[PKIdentityIntentToStore alloc] initWithDIIdentityIntentToStore:v5];

  return v6;
}

@end