@interface PKApplicationMessageRegistration
+ (id)_createLocalWithIdentifier:(void *)identifier createdDate:(void *)date priority:(char)priority badge:;
+ (id)createWithKey:(id)key createdDate:(id)date priority:(unint64_t)priority badge:(BOOL)badge;
- (BOOL)isEqual:(id)equal;
- (PKApplicationMessageRegistration)initWithCoder:(id)coder;
- (id)_initWithKey:(void *)key createdDate:(void *)date priority:(char)priority badge:;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessageRegistration

+ (id)_createLocalWithIdentifier:(void *)identifier createdDate:(void *)date priority:(char)priority badge:
{
  identifierCopy = identifier;
  v9 = a2;
  objc_opt_self();
  v10 = [[PKApplicationMessageKey alloc] _initWithSource:v9 identifier:?];

  v11 = [[PKApplicationMessageRegistration alloc] _initWithKey:v10 createdDate:identifierCopy priority:date badge:priority];
  return v11;
}

- (id)_initWithKey:(void *)key createdDate:(void *)date priority:(char)priority badge:
{
  v10 = a2;
  keyCopy = key;
  v12 = keyCopy;
  selfCopy = 0;
  if (self && v10 && keyCopy)
  {
    v17.receiver = self;
    v17.super_class = PKApplicationMessageRegistration;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 2, a2);
      objc_storeStrong(v15 + 3, key);
      v15[4] = date;
      *(v15 + 8) = priority;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)createWithKey:(id)key createdDate:(id)date priority:(unint64_t)priority badge:(BOOL)badge
{
  dateCopy = date;
  keyCopy = key;
  v11 = [[PKApplicationMessageRegistration alloc] _initWithKey:keyCopy createdDate:dateCopy priority:priority badge:badge];

  return v11;
}

- (PKApplicationMessageRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKApplicationMessageRegistration;
  v5 = [(PKApplicationMessageRegistration *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    if (!v5->_key)
    {
      v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageRegistration" code:0 userInfo:0];
      [coderCopy failWithError:v12];

      v11 = 0;
      goto LABEL_6;
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    v5->_priority = [v10 unsignedLongLongValue];

    v5->_badge = [coderCopy decodeBoolForKey:@"badge"];
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeObject:self->_createdDate forKey:@"createdDate"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_priority];
  [coderCopy encodeObject:v5 forKey:@"priority"];

  [coderCopy encodeBool:self->_badge forKey:@"badge"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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