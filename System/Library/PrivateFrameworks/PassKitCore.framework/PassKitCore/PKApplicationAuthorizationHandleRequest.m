@interface PKApplicationAuthorizationHandleRequest
+ (id)_classForType:(uint64_t)a1;
+ (objc_class)_createForName:(void *)a3 context:(unint64_t)a4 withType:;
- (PKApplicationAuthorizationHandleRequest)initWithCoder:(id)a3;
- (void)_initForName:(void *)a3 context:(uint64_t)a4 withType:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationAuthorizationHandleRequest

+ (id)_classForType:(uint64_t)a1
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

+ (objc_class)_createForName:(void *)a3 context:(unint64_t)a4 withType:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  result = [PKApplicationAuthorizationHandleRequest _classForType:a4];
  if (result)
  {
    v9 = [(PKApplicationAuthorizationHandleRequest *)[result alloc] _initForName:v6 context:v7 withType:a4];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)_initForName:(void *)a3 context:(uint64_t)a4 withType:
{
  v7 = a2;
  result = a3;
  v9 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (v7 && result)
  {
    v15.receiver = a1;
    v15.super_class = PKApplicationAuthorizationHandleRequest;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v10;
    if (v10)
    {
      v10[1] = a4;
      v11 = [v7 copy];
      v12 = a1[2];
      a1[2] = v11;

      v13 = [v9 copy];
      v14 = a1[3];
      a1[3] = v13;
    }

LABEL_6:

    return a1;
  }

  __break(1u);
  return result;
}

- (PKApplicationAuthorizationHandleRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  if ([PKApplicationAuthorizationHandleRequest _classForType:v5]&& (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v7)
      {
        self = [(PKApplicationAuthorizationHandleRequest *)self _initForName:v6 context:v7 withType:v5];
        v8 = self;
LABEL_10:

        goto LABEL_11;
      }

      v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationAuthorizationRequest" code:0 userInfo:0];
      [v4 failWithError:v9];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationAuthorizationRequest" code:0 userInfo:0];
      [v4 failWithError:v7];
    }

    v8 = 0;
    goto LABEL_10;
  }

  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationAuthorizationRequest" code:0 userInfo:0];
  [v4 failWithError:v6];
  v8 = 0;
LABEL_11:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_externalizedContext forKey:@"context"];
}

@end