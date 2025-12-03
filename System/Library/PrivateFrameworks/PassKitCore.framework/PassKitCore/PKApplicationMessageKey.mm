@interface PKApplicationMessageKey
+ (id)createWithSource:(int64_t)source identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (PKApplicationMessageKey)initWithCoder:(id)coder;
- (void)_initWithSource:(void *)source identifier:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessageKey

+ (id)createWithSource:(int64_t)source identifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[PKApplicationMessageKey alloc] _initWithSource:source identifier:identifierCopy];

  return v6;
}

- (void)_initWithSource:(void *)source identifier:
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self && sourceCopy)
  {
    v13.receiver = self;
    v13.super_class = PKApplicationMessageKey;
    v7 = objc_msgSendSuper2(&v13, sel_init);
    v8 = v7;
    if (v7)
    {
      v7[1] = a2;
      v9 = [v6 copy];
      v10 = v8[2];
      v8[2] = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKApplicationMessageKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKApplicationMessageKey;
  v5 = [(PKApplicationMessageKey *)&v11 init];
  if (v5 && (v5->_source = [coderCopy decodeIntegerForKey:@"source"], objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"identifier"), v6 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v6, identifier, !v5->_identifier))
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageKey" code:0 userInfo:0];
    [coderCopy failWithError:v9];

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  coderCopy = coder;
  [coderCopy encodeInteger:source forKey:@"source"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self)
    {
      if (self->_source == v5[1])
      {
        identifier = self->_identifier;
        v8 = v6[2];
        if (identifier && v8)
        {
          LOBYTE(self) = [(NSString *)identifier isEqual:?];
        }

        else
        {
          LOBYTE(self) = identifier == v8;
        }
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end