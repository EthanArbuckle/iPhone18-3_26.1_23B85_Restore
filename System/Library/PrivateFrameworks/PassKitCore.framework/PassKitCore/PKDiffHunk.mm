@interface PKDiffHunk
+ (id)hunkWithKey:(id)key oldValue:(id)value newValue:(id)newValue message:(id)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDiffHunk:(id)hunk;
- (PKDiffHunk)initWithCoder:(id)coder;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDiffHunk

+ (id)hunkWithKey:(id)key oldValue:(id)value newValue:(id)newValue message:(id)message
{
  messageCopy = message;
  newValueCopy = newValue;
  valueCopy = value;
  keyCopy = key;
  v13 = objc_alloc_init(PKDiffHunk);
  [(PKDiffHunk *)v13 setKey:keyCopy];

  [(PKDiffHunk *)v13 setValueOld:valueCopy];
  [(PKDiffHunk *)v13 setValueNew:newValueCopy];

  [(PKDiffHunk *)v13 setMessage:messageCopy];

  return v13;
}

- (unint64_t)hash
{
  v8 = *MEMORY[0x1E69E9840];
  key = self->_key;
  v6 = *&self->_oldValue;
  message = self->_message;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&key count:4];
  v3 = PKCombinedHash(17, v2);

  return v3;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDiffHunk *)self isEqualToDiffHunk:v5];
  }

  return v6;
}

- (BOOL)isEqualToDiffHunk:(id)hunk
{
  hunkCopy = hunk;
  if (-[NSString isEqual:](self->_key, "isEqual:", hunkCopy[1]) && [self->_oldValue isEqual:hunkCopy[2]] && objc_msgSend(self->_newValue, "isEqual:", hunkCopy[3]))
  {
    v5 = [(NSString *)self->_message isEqual:hunkCopy[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (compareCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)self->_key compare:compareCopy[1]];
      if (v5 == NSOrderedSame)
      {
        v5 = [self->_oldValue compare:compareCopy[2]];
        if (v5 == NSOrderedSame)
        {
          v5 = [self->_newValue compare:compareCopy[3]];
          if (v5 == NSOrderedSame)
          {
            v5 = [(NSString *)self->_message compare:compareCopy[4]];
          }
        }
      }

      v6 = v5;
    }

    else
    {
      v7 = objc_opt_class();
      if (v7 < objc_opt_class())
      {
        v6 = -1;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (PKDiffHunk)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKDiffHunk;
  v5 = [(PKDiffHunk *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    [(PKDiffHunk *)v5 setKey:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"oldValue"];
    [(PKDiffHunk *)v5 setValueOld:v12];

    v13 = [coderCopy decodeObjectOfClasses:v11 forKey:@"newValue"];
    [(PKDiffHunk *)v5 setValueNew:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(PKDiffHunk *)v5 setMessage:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKDiffHunk *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  valueOld = [(PKDiffHunk *)self valueOld];
  [coderCopy encodeObject:valueOld forKey:@"oldValue"];

  valueNew = [(PKDiffHunk *)self valueNew];
  [coderCopy encodeObject:valueNew forKey:@"newValue"];

  message = [(PKDiffHunk *)self message];
  [coderCopy encodeObject:message forKey:@"message"];
}

@end