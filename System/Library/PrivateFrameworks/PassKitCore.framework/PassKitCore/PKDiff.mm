@interface PKDiff
- (BOOL)getHunkForKey:(id)key oldValue:(id *)value newValue:(id *)newValue message:(id *)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDiff:(id)diff;
- (PKDiff)init;
- (PKDiff)initWithCoder:(id)coder;
- (id)anyKey;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)_hunkIndexForKey:(id)key;
- (unint64_t)hash;
- (void)addHunkWithKey:(id)key oldValue:(id)value newValue:(id)newValue message:(id)message;
- (void)addHunksFromDiff:(id)diff;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateHunks:(id)hunks;
- (void)key:(id *)key oldValue:(id *)value newValue:(id *)newValue message:(id *)message forHunkAtIndex:(int64_t)index;
- (void)removeHunkForKey:(id)key;
@end

@implementation PKDiff

- (PKDiff)init
{
  v6.receiver = self;
  v6.super_class = PKDiff;
  v2 = [(PKDiff *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hunks = v2->_hunks;
    v2->_hunks = v3;
  }

  return v2;
}

- (void)addHunkWithKey:(id)key oldValue:(id)value newValue:(id)newValue message:(id)message
{
  keyCopy = key;
  valueCopy = value;
  newValueCopy = newValue;
  messageCopy = message;
  v18 = 0;
  v14 = [(PKDiff *)self getHunkForKey:keyCopy oldValue:&v18 newValue:0 message:0];
  v15 = v18;
  if (v14)
  {
    [(PKDiff *)self removeHunkForKey:keyCopy];
    if (([v15 isEqual:newValueCopy] & 1) == 0)
    {
      [(PKDiff *)self addHunkWithKey:keyCopy oldValue:v15 newValue:newValueCopy message:messageCopy];
    }
  }

  else if (keyCopy)
  {
    hunks = self->_hunks;
    v17 = [PKDiffHunk hunkWithKey:keyCopy oldValue:valueCopy newValue:newValueCopy message:messageCopy];
    [(NSMutableArray *)hunks addObject:v17];
  }
}

- (void)key:(id *)key oldValue:(id *)value newValue:(id *)newValue message:(id *)message forHunkAtIndex:(int64_t)index
{
  v11 = [(NSMutableArray *)self->_hunks objectAtIndex:index];
  v12 = v11;
  if (key)
  {
    *key = [v11 key];
    v11 = v12;
  }

  if (value)
  {
    *value = [v12 valueOld];
    v11 = v12;
  }

  if (newValue)
  {
    *newValue = [v12 valueNew];
    v11 = v12;
  }

  if (message)
  {
    *message = [v12 message];
    v11 = v12;
  }
}

- (void)enumerateHunks:(id)hunks
{
  hunksCopy = hunks;
  v5 = [(NSMutableArray *)self->_hunks count];
  if (v5)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      v8 = [(NSMutableArray *)self->_hunks objectAtIndex:v6];
      v14 = 0;
      v9 = [v8 key];
      valueOld = [v8 valueOld];
      valueNew = [v8 valueNew];
      message = [v8 message];
      hunksCopy[2](hunksCopy, v9, valueOld, valueNew, message, &v14);

      LOBYTE(v9) = v14;
      if (v9)
      {
        break;
      }
    }

    while (v7 != v6++);
  }
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__PKDiff_description__block_invoke;
  v7[3] = &unk_1E79D5618;
  v8 = array;
  v4 = array;
  [(PKDiff *)self enumerateHunks:v7];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p card:%@ %@>", objc_opt_class(), self, self->_passUniqueID, v4];

  return v5;
}

void __21__PKDiff_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ -> %@ (%@)", a2, a3, a4, a5];
  [v5 addObject:v6];
}

- (BOOL)getHunkForKey:(id)key oldValue:(id *)value newValue:(id *)newValue message:(id *)message
{
  v10 = [(PKDiff *)self _hunkIndexForKey:key];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(NSMutableArray *)self->_hunks objectAtIndex:v10];
    v12 = v11;
    if (value)
    {
      *value = [v11 valueOld];
    }

    if (newValue)
    {
      *newValue = [v12 valueNew];
    }

    if (message)
    {
      *message = [v12 message];
    }
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)removeHunkForKey:(id)key
{
  v4 = [(PKDiff *)self _hunkIndexForKey:key];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    hunks = self->_hunks;

    [(NSMutableArray *)hunks removeObjectAtIndex:v5];
  }
}

- (void)addHunksFromDiff:(id)diff
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__PKDiff_addHunksFromDiff___block_invoke;
  v3[3] = &unk_1E79D5618;
  v3[4] = self;
  [diff enumerateHunks:v3];
}

- (id)anyKey
{
  lastObject = [(NSMutableArray *)self->_hunks lastObject];
  v3 = [lastObject key];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(NSMutableArray *)self->_hunks arrayByAddingObject:self->_passUniqueID];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDiff *)self isEqualToDiff:v5];
  }

  return v6;
}

- (BOOL)isEqualToDiff:(id)diff
{
  diffCopy = diff;
  if ([(NSMutableArray *)self->_hunks isEqual:diffCopy[1]])
  {
    v5 = [(NSString *)self->_passUniqueID isEqual:diffCopy[2]];
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
  if (!compareCopy)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_passUniqueID caseInsensitiveCompare:*(compareCopy + 2)];
    if (v5)
    {
      v6 = v5;
      goto LABEL_10;
    }

    v8 = [(NSMutableArray *)self->_hunks count];
    if (v8 > [*(compareCopy + 1) count])
    {
LABEL_9:
      v6 = 1;
      goto LABEL_10;
    }

    v10 = [(NSMutableArray *)self->_hunks count];
    if (v10 >= [*(compareCopy + 1) count])
    {
      if ([(NSMutableArray *)self->_hunks count])
      {
        v11 = 0;
        do
        {
          v12 = [(NSMutableArray *)self->_hunks objectAtIndexedSubscript:v11];
          v13 = [*(compareCopy + 1) objectAtIndexedSubscript:v11];
          v6 = [v12 compare:v13];

          if (v6)
          {
            break;
          }

          ++v11;
        }

        while (v11 < [(NSMutableArray *)self->_hunks count]);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = -1;
    }
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

LABEL_10:

  return v6;
}

- (PKDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKDiff;
  v5 = [(PKDiff *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"hunks"];
    hunks = v5->_hunks;
    v5->_hunks = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hunks = self->_hunks;
  coderCopy = coder;
  [coderCopy encodeObject:hunks forKey:@"hunks"];
  [coderCopy encodeObject:self->_passUniqueID forKey:@"uniqueID"];
}

- (unint64_t)_hunkIndexForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableArray *)self->_hunks count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_hunks objectAtIndex:v7];
      v9 = [v8 key];
      v10 = [v9 isEqualToString:keyCopy];

      if (v10)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

@end