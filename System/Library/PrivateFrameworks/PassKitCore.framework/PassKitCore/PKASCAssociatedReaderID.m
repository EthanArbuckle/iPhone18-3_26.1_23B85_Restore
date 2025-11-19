@interface PKASCAssociatedReaderID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToASCAssociatedReaderID:(id)a3;
- (PKASCAssociatedReaderID)initWithCoder:(id)a3;
- (PKASCAssociatedReaderID)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKASCAssociatedReaderID

- (PKASCAssociatedReaderID)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"readerID"];
  v6 = [v5 pk_decodeHexadecimal];

  if (v6)
  {
    v12.receiver = self;
    v12.super_class = PKASCAssociatedReaderID;
    v7 = [(PKASCAssociatedReaderID *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_readerID, v6);
      v9 = [v4 PKNumberForKey:@"priority"];
      v8->_priority = [v9 unsignedIntegerValue];
    }

    self = v8;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_readerID hexEncoding];
  [v3 setObject:v4 forKeyedSubscript:@"readerID"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_priority];
  [v3 setObject:v5 forKeyedSubscript:@"priority"];

  v6 = [v3 copy];

  return v6;
}

- (PKASCAssociatedReaderID)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKASCAssociatedReaderID;
  v5 = [(PKASCAssociatedReaderID *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerID"];
    readerID = v5->_readerID;
    v5->_readerID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    v5->_priority = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  readerID = self->_readerID;
  v5 = a3;
  [v5 encodeObject:readerID forKey:@"readerID"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_priority];
  [v5 encodeObject:v6 forKey:@"priority"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKASCAssociatedReaderID *)self isEqualToASCAssociatedReaderID:v5];
  }

  return v6;
}

- (BOOL)isEqualToASCAssociatedReaderID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    readerID = self->_readerID;
    v6 = v4[1];
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
        v8 = self->_priority == v4[2];
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