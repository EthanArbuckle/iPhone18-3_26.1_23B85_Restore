@interface PKApplicationMessageRegistration
+ (id)_createLocalWithIdentifier:(void *)a3 createdDate:(void *)a4 priority:(char)a5 badge:;
+ (id)createWithKey:(id)a3 createdDate:(id)a4 priority:(unint64_t)a5 badge:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (PKApplicationMessageRegistration)initWithCoder:(id)a3;
- (id)_initWithKey:(void *)a3 createdDate:(void *)a4 priority:(char)a5 badge:;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationMessageRegistration

+ (id)_createLocalWithIdentifier:(void *)a3 createdDate:(void *)a4 priority:(char)a5 badge:
{
  v8 = a3;
  v9 = a2;
  objc_opt_self();
  v10 = [[PKApplicationMessageKey alloc] _initWithSource:v9 identifier:?];

  v11 = [[PKApplicationMessageRegistration alloc] _initWithKey:v10 createdDate:v8 priority:a4 badge:a5];
  return v11;
}

- (id)_initWithKey:(void *)a3 createdDate:(void *)a4 priority:(char)a5 badge:
{
  v10 = a2;
  v11 = a3;
  v12 = v11;
  v13 = 0;
  if (a1 && v10 && v11)
  {
    v17.receiver = a1;
    v17.super_class = PKApplicationMessageRegistration;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 2, a2);
      objc_storeStrong(v15 + 3, a3);
      v15[4] = a4;
      *(v15 + 8) = a5;
    }

    a1 = v15;
    v13 = a1;
  }

  return v13;
}

+ (id)createWithKey:(id)a3 createdDate:(id)a4 priority:(unint64_t)a5 badge:(BOOL)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[PKApplicationMessageRegistration alloc] _initWithKey:v10 createdDate:v9 priority:a5 badge:a6];

  return v11;
}

- (PKApplicationMessageRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKApplicationMessageRegistration;
  v5 = [(PKApplicationMessageRegistration *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    if (!v5->_key)
    {
      v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageRegistration" code:0 userInfo:0];
      [v4 failWithError:v12];

      v11 = 0;
      goto LABEL_6;
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    v5->_priority = [v10 unsignedLongLongValue];

    v5->_badge = [v4 decodeBoolForKey:@"badge"];
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v6 = a3;
  [v6 encodeObject:key forKey:@"key"];
  [v6 encodeObject:self->_createdDate forKey:@"createdDate"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_priority];
  [v6 encodeObject:v5 forKey:@"priority"];

  [v6 encodeBool:self->_badge forKey:@"badge"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (!self)
    {
LABEL_15:

      goto LABEL_16;
    }

    key = self->_key;
    v7 = *(v5 + 2);
    if (key && v7)
    {
      if (![(PKApplicationMessageKey *)key isEqual:?])
      {
        goto LABEL_14;
      }
    }

    else if (key != v7)
    {
LABEL_14:
      LOBYTE(self) = 0;
      goto LABEL_15;
    }

    if (self->_priority == *(v5 + 4) && self->_badge == v5[8])
    {
      createdDate = self->_createdDate;
      v9 = *(v5 + 3);
      if (createdDate && v9)
      {
        LOBYTE(self) = [(NSDate *)createdDate isEqual:?];
      }

      else
      {
        LOBYTE(self) = createdDate == v9;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  LOBYTE(self) = 0;
LABEL_16:

  return self;
}

- (unint64_t)hash
{
  v3 = [(PKApplicationMessageKey *)self->_key hash];
  LOBYTE(v5) = self->_badge;
  [(NSDate *)self->_createdDate hash:v3];
  return SipHash();
}

@end