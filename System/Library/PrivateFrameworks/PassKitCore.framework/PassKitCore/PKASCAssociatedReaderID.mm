@interface PKASCAssociatedReaderID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToASCAssociatedReaderID:(id)d;
- (PKASCAssociatedReaderID)initWithCoder:(id)coder;
- (PKASCAssociatedReaderID)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKASCAssociatedReaderID

- (PKASCAssociatedReaderID)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"readerID"];
  pk_decodeHexadecimal = [v5 pk_decodeHexadecimal];

  if (pk_decodeHexadecimal)
  {
    v12.receiver = self;
    v12.super_class = PKASCAssociatedReaderID;
    v7 = [(PKASCAssociatedReaderID *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_readerID, pk_decodeHexadecimal);
      v9 = [dictionaryCopy PKNumberForKey:@"priority"];
      v8->_priority = [v9 unsignedIntegerValue];
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

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  hexEncoding = [(NSData *)self->_readerID hexEncoding];
  [v3 setObject:hexEncoding forKeyedSubscript:@"readerID"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_priority];
  [v3 setObject:v5 forKeyedSubscript:@"priority"];

  v6 = [v3 copy];

  return v6;
}

- (PKASCAssociatedReaderID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKASCAssociatedReaderID;
  v5 = [(PKASCAssociatedReaderID *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerID"];
    readerID = v5->_readerID;
    v5->_readerID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    v5->_priority = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  readerID = self->_readerID;
  coderCopy = coder;
  [coderCopy encodeObject:readerID forKey:@"readerID"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_priority];
  [coderCopy encodeObject:v6 forKey:@"priority"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"readerID: '%@'; ", self->_readerID];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_priority];
  [v6 appendFormat:@"priority: '%@'; ", v7];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"readerID: '<private>'; "];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_priority];
  [v6 appendFormat:@"priority: '%@'; ", v7];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKASCAssociatedReaderID *)self isEqualToASCAssociatedReaderID:v5];
  }

  return v6;
}

- (BOOL)isEqualToASCAssociatedReaderID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    readerID = self->_readerID;
    v6 = dCopy[1];
    if (readerID)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (readerID == v6)
      {
LABEL_10:
        v8 = self->_priority == dCopy[2];
        goto LABEL_11;
      }
    }

    else if (([(NSData *)readerID isEqual:?]& 1) != 0)
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end