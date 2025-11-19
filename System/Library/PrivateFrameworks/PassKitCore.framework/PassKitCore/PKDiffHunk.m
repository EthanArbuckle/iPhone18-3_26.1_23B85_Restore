@interface PKDiffHunk
+ (id)hunkWithKey:(id)a3 oldValue:(id)a4 newValue:(id)a5 message:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDiffHunk:(id)a3;
- (PKDiffHunk)initWithCoder:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDiffHunk

+ (id)hunkWithKey:(id)a3 oldValue:(id)a4 newValue:(id)a5 message:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(PKDiffHunk);
  [(PKDiffHunk *)v13 setKey:v12];

  [(PKDiffHunk *)v13 setValueOld:v11];
  [(PKDiffHunk *)v13 setValueNew:v10];

  [(PKDiffHunk *)v13 setMessage:v9];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDiffHunk *)self isEqualToDiffHunk:v5];
  }

  return v6;
}

- (BOOL)isEqualToDiffHunk:(id)a3
{
  v4 = a3;
  if (-[NSString isEqual:](self->_key, "isEqual:", v4[1]) && [self->_oldValue isEqual:v4[2]] && objc_msgSend(self->_newValue, "isEqual:", v4[3]))
  {
    v5 = [(NSString *)self->_message isEqual:v4[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)self->_key compare:v4[1]];
      if (v5 == NSOrderedSame)
      {
        v5 = [self->_oldValue compare:v4[2]];
        if (v5 == NSOrderedSame)
        {
          v5 = [self->_newValue compare:v4[3]];
          if (v5 == NSOrderedSame)
          {
            v5 = [(NSString *)self->_message compare:v4[4]];
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

- (PKDiffHunk)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKDiffHunk;
  v5 = [(PKDiffHunk *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    [(PKDiffHunk *)v5 setKey:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"oldValue"];
    [(PKDiffHunk *)v5 setValueOld:v12];

    v13 = [v4 decodeObjectOfClasses:v11 forKey:@"newValue"];
    [(PKDiffHunk *)v5 setValueNew:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(PKDiffHunk *)v5 setMessage:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKDiffHunk *)self key];
  [v4 encodeObject:v5 forKey:@"key"];

  v6 = [(PKDiffHunk *)self valueOld];
  [v4 encodeObject:v6 forKey:@"oldValue"];

  v7 = [(PKDiffHunk *)self valueNew];
  [v4 encodeObject:v7 forKey:@"newValue"];

  v8 = [(PKDiffHunk *)self message];
  [v4 encodeObject:v8 forKey:@"message"];
}

@end