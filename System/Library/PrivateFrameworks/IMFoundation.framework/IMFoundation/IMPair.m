@interface IMPair
+ (id)pairWithFirst:(id)a3 second:(id)a4;
- (BOOL)isEqual:(id)a3;
- (IMPair)initWithFirst:(id)a3 second:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation IMPair

- (void)dealloc
{
  first = self->_first;
  self->_first = 0;

  second = self->_second;
  self->_second = 0;

  v5.receiver = self;
  v5.super_class = IMPair;
  [(IMPair *)&v5 dealloc];
}

- (IMPair)initWithFirst:(id)a3 second:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = IMPair;
  v8 = [(IMPair *)&v13 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setFirst_(v8, v9, v6);
    objc_msgSend_setSecond_(v10, v11, v7);
  }

  return v10;
}

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  second = objc_msgSend_initWithFirst_second_(v8, v9, v7, v6);

  return second;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_first(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_second(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v9 = objc_msgSend_first(self, v6, v7);
    v12 = objc_msgSend_first(v4, v10, v11);
    if (objc_msgSend_isEqual_(v9, v13, v12))
    {
      v16 = objc_msgSend_second(self, v14, v15);
      v19 = objc_msgSend_second(v4, v17, v18);
      isEqual = objc_msgSend_isEqual_(v16, v20, v19);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v7 = objc_msgSend_first(self, v5, v6);
  v10 = objc_msgSend_second(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@: %p first: %@, second: %@>", v4, self, v7, v10);

  return v12;
}

@end