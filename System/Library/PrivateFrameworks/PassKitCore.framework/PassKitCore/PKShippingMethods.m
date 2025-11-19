@interface PKShippingMethods
+ (PKShippingMethods)shippingMethodsWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShippingMethods:(id)a3;
- (NSArray)legacyShippingMethods;
- (PKShippingMethods)initWithCoder:(id)a3;
- (PKShippingMethods)initWithMethods:(id)a3 defaultMethod:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKShippingMethods

+ (PKShippingMethods)shippingMethodsWithProtobuf:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 methods];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [PKShippingMethod shippingMethodWithProtobuf:*(*(&v15 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v3 defaultMethod];
  v12 = [PKShippingMethod shippingMethodWithProtobuf:v11];

  v13 = [[PKShippingMethods alloc] initWithMethods:v4 defaultMethod:v12];

  return v13;
}

- (id)protobuf
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKProtobufShippingMethods);
  v4 = [(PKShippingMethods *)self methods];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(PKShippingMethods *)self methods];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) shippingMethodProtobuf];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [(PKProtobufShippingMethods *)v3 setMethods:v6];
  }

  v13 = [(PKShippingMethods *)self defaultMethod];
  v14 = [v13 shippingMethodProtobuf];
  [(PKProtobufShippingMethods *)v3 setDefaultMethod:v14];

  return v3;
}

- (PKShippingMethods)initWithMethods:(id)a3 defaultMethod:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PKShippingMethods;
  v8 = [(PKShippingMethods *)&v18 init];
  v9 = v8;
  if (v8)
  {
    legacyShippingMethods = v8->_legacyShippingMethods;
    v8->_legacyShippingMethods = 0;

    if (v6)
    {
      [MEMORY[0x1E695DFB8] orderedSetWithArray:v6];
    }

    else
    {
      [MEMORY[0x1E695DFB8] orderedSet];
    }
    v11 = ;
    methodsSet = v9->_methodsSet;
    v9->_methodsSet = v11;

    if ([(NSOrderedSet *)v9->_methodsSet containsObject:v7])
    {
      v13 = [v7 copy];
    }

    else
    {
      if (v7)
      {
        v14 = PKLogFacilityTypeGetObject(8uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKShippingMethods: Default shipping method provided, but doesn't exist in set. Defaulting to first item instead.", v17, 2u);
        }
      }

      v13 = [(NSOrderedSet *)v9->_methodsSet firstObject];
    }

    defaultMethod = v9->_defaultMethod;
    v9->_defaultMethod = v13;
  }

  return v9;
}

- (NSArray)legacyShippingMethods
{
  legacyShippingMethods = self->_legacyShippingMethods;
  if (!legacyShippingMethods)
  {
    v4 = [(NSOrderedSet *)self->_methodsSet indexOfObject:self->_defaultMethod];
    methodsSet = self->_methodsSet;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSOrderedSet *)methodsSet array];
      v7 = self->_legacyShippingMethods;
      self->_legacyShippingMethods = v6;
    }

    else
    {
      v7 = [(NSOrderedSet *)methodsSet mutableCopy];
      v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v4];
      [(NSArray *)v7 moveObjectsAtIndexes:v8 toIndex:0];

      v9 = [(NSArray *)v7 array];
      v10 = self->_legacyShippingMethods;
      self->_legacyShippingMethods = v9;
    }

    legacyShippingMethods = self->_legacyShippingMethods;
  }

  v11 = legacyShippingMethods;

  return v11;
}

- (PKShippingMethods)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"methods"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"defaultMethod"];

  v10 = [(PKShippingMethods *)self initWithMethods:v8 defaultMethod:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKShippingMethods *)self methods];
  [v4 encodeObject:v5 forKey:@"methods"];

  v6 = [(PKShippingMethods *)self defaultMethod];
  [v4 encodeObject:v6 forKey:@"defaultMethod"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSOrderedSet *)self->_methodsSet copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PKShippingMethod *)self->_defaultMethod copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_methodsSet];
  [v3 safelyAddObject:self->_defaultMethod];
  v7.receiver = self;
  v7.super_class = PKShippingMethods;
  v4 = [(PKShippingMethods *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShippingMethods *)self isEqualToShippingMethods:v5];
  }

  return v6;
}

- (BOOL)isEqualToShippingMethods:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  methodsSet = self->_methodsSet;
  v6 = v4[2];
  if (methodsSet)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSOrderedSet *)methodsSet isEqual:?]& 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (methodsSet != v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  defaultMethod = self->_defaultMethod;
  v11 = v4[3];
  if (defaultMethod && v11)
  {
    v8 = [(PKShippingMethod *)defaultMethod isEqual:?];
  }

  else
  {
    v8 = defaultMethod == v11;
  }

LABEL_9:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"methods: %d, ", -[NSOrderedSet count](self->_methodsSet, "count")];
  v4 = [(PKShippingMethod *)self->_defaultMethod identifier];
  [v3 appendFormat:@"defaultMethod identifier: %@", v4];

  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end