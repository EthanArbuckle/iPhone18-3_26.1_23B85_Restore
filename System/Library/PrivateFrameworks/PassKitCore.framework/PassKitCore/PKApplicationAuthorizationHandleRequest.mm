@interface PKApplicationAuthorizationHandleRequest
+ (id)_classForType:(uint64_t)type;
+ (objc_class)_createForName:(void *)name context:(unint64_t)context withType:;
- (PKApplicationAuthorizationHandleRequest)initWithCoder:(id)coder;
- (void)_initForName:(void *)name context:(uint64_t)context withType:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationAuthorizationHandleRequest

+ (id)_classForType:(uint64_t)type
{
  objc_opt_self();
  if (a2 > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (objc_class)_createForName:(void *)name context:(unint64_t)context withType:
{
  v6 = a2;
  nameCopy = name;
  objc_opt_self();
  result = [PKApplicationAuthorizationHandleRequest _classForType:context];
  if (result)
  {
    v9 = [(PKApplicationAuthorizationHandleRequest *)[result alloc] _initForName:v6 context:nameCopy withType:context];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)_initForName:(void *)name context:(uint64_t)context withType:
{
  v7 = a2;
  result = name;
  v9 = result;
  if (!self)
  {
    goto LABEL_6;
  }

  if (v7 && result)
  {
    v15.receiver = self;
    v15.super_class = PKApplicationAuthorizationHandleRequest;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    self = v10;
    if (v10)
    {
      v10[1] = context;
      v11 = [v7 copy];
      v12 = self[2];
      self[2] = v11;

      v13 = [v9 copy];
      v14 = self[3];
      self[3] = v13;
    }

LABEL_6:

    return self;
  }

  __break(1u);
  return result;
}

- (PKApplicationAuthorizationHandleRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if ([PKApplicationAuthorizationHandleRequest _classForType:v5]&& (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v7)
      {
        self = [(PKApplicationAuthorizationHandleRequest *)self _initForName:v6 context:v7 withType:v5];
        selfCopy = self;
LABEL_10:

        goto LABEL_11;
      }

      v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationAuthorizationRequest" code:0 userInfo:0];
      [coderCopy failWithError:v9];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationAuthorizationRequest" code:0 userInfo:0];
      [coderCopy failWithError:v7];
    }

    selfCopy = 0;
    goto LABEL_10;
  }

  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationAuthorizationRequest" code:0 userInfo:0];
  [coderCopy failWithError:v6];
  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_externalizedContext forKey:@"context"];
}

@end