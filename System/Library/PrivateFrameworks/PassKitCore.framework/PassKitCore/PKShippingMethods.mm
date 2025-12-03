@interface PKShippingMethods
+ (PKShippingMethods)shippingMethodsWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShippingMethods:(id)methods;
- (NSArray)legacyShippingMethods;
- (PKShippingMethods)initWithCoder:(id)coder;
- (PKShippingMethods)initWithMethods:(id)methods defaultMethod:(id)method;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKShippingMethods

+ (PKShippingMethods)shippingMethodsWithProtobuf:(id)protobuf
{
  v20 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  methods = [protobufCopy methods];
  v6 = [methods countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(methods);
        }

        v10 = [PKShippingMethod shippingMethodWithProtobuf:*(*(&v15 + 1) + 8 * i)];
        [array addObject:v10];
      }

      v7 = [methods countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  defaultMethod = [protobufCopy defaultMethod];
  v12 = [PKShippingMethod shippingMethodWithProtobuf:defaultMethod];

  v13 = [[PKShippingMethods alloc] initWithMethods:array defaultMethod:v12];

  return v13;
}

- (id)protobuf
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKProtobufShippingMethods);
  methods = [(PKShippingMethods *)self methods];
  v5 = [methods count];

  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    methods2 = [(PKShippingMethods *)self methods];
    v8 = [methods2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(methods2);
          }

          shippingMethodProtobuf = [*(*(&v16 + 1) + 8 * i) shippingMethodProtobuf];
          [array addObject:shippingMethodProtobuf];
        }

        v9 = [methods2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [(PKProtobufShippingMethods *)v3 setMethods:array];
  }

  defaultMethod = [(PKShippingMethods *)self defaultMethod];
  shippingMethodProtobuf2 = [defaultMethod shippingMethodProtobuf];
  [(PKProtobufShippingMethods *)v3 setDefaultMethod:shippingMethodProtobuf2];

  return v3;
}

- (PKShippingMethods)initWithMethods:(id)methods defaultMethod:(id)method
{
  methodsCopy = methods;
  methodCopy = method;
  v18.receiver = self;
  v18.super_class = PKShippingMethods;
  v8 = [(PKShippingMethods *)&v18 init];
  v9 = v8;
  if (v8)
  {
    legacyShippingMethods = v8->_legacyShippingMethods;
    v8->_legacyShippingMethods = 0;

    if (methodsCopy)
    {
      [MEMORY[0x1E695DFB8] orderedSetWithArray:methodsCopy];
    }

    else
    {
      [MEMORY[0x1E695DFB8] orderedSet];
    }
    v11 = ;
    methodsSet = v9->_methodsSet;
    v9->_methodsSet = v11;

    if ([(NSOrderedSet *)v9->_methodsSet containsObject:methodCopy])
    {
      firstObject = [methodCopy copy];
    }

    else
    {
      if (methodCopy)
      {
        v14 = PKLogFacilityTypeGetObject(8uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKShippingMethods: Default shipping method provided, but doesn't exist in set. Defaulting to first item instead.", v17, 2u);
        }
      }

      firstObject = [(NSOrderedSet *)v9->_methodsSet firstObject];
    }

    defaultMethod = v9->_defaultMethod;
    v9->_defaultMethod = firstObject;
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
      array = [(NSOrderedSet *)methodsSet array];
      v7 = self->_legacyShippingMethods;
      self->_legacyShippingMethods = array;
    }

    else
    {
      v7 = [(NSOrderedSet *)methodsSet mutableCopy];
      v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v4];
      [(NSArray *)v7 moveObjectsAtIndexes:v8 toIndex:0];

      array2 = [(NSArray *)v7 array];
      v10 = self->_legacyShippingMethods;
      self->_legacyShippingMethods = array2;
    }

    legacyShippingMethods = self->_legacyShippingMethods;
  }

  v11 = legacyShippingMethods;

  return v11;
}

- (PKShippingMethods)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"methods"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultMethod"];

  v10 = [(PKShippingMethods *)self initWithMethods:v8 defaultMethod:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  methods = [(PKShippingMethods *)self methods];
  [coderCopy encodeObject:methods forKey:@"methods"];

  defaultMethod = [(PKShippingMethods *)self defaultMethod];
  [coderCopy encodeObject:defaultMethod forKey:@"defaultMethod"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSOrderedSet *)self->_methodsSet copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PKShippingMethod *)self->_defaultMethod copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_methodsSet];
  [array safelyAddObject:self->_defaultMethod];
  v7.receiver = self;
  v7.super_class = PKShippingMethods;
  v4 = [(PKShippingMethods *)&v7 hash];
  v5 = PKCombinedHash(v4, array);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShippingMethods *)self isEqualToShippingMethods:v5];
  }

  return v6;
}

- (BOOL)isEqualToShippingMethods:(id)methods
{
  methodsCopy = methods;
  if (!methodsCopy)
  {
    goto LABEL_8;
  }

  methodsSet = self->_methodsSet;
  v6 = methodsCopy[2];
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
  v11 = methodsCopy[3];
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
  identifier = [(PKShippingMethod *)self->_defaultMethod identifier];
  [v3 appendFormat:@"defaultMethod identifier: %@", identifier];

  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end