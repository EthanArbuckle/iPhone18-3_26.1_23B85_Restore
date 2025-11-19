@interface PKDiff
- (BOOL)getHunkForKey:(id)a3 oldValue:(id *)a4 newValue:(id *)a5 message:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDiff:(id)a3;
- (PKDiff)init;
- (PKDiff)initWithCoder:(id)a3;
- (id)anyKey;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)_hunkIndexForKey:(id)a3;
- (unint64_t)hash;
- (void)addHunkWithKey:(id)a3 oldValue:(id)a4 newValue:(id)a5 message:(id)a6;
- (void)addHunksFromDiff:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateHunks:(id)a3;
- (void)key:(id *)a3 oldValue:(id *)a4 newValue:(id *)a5 message:(id *)a6 forHunkAtIndex:(int64_t)a7;
- (void)removeHunkForKey:(id)a3;
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

- (void)addHunkWithKey:(id)a3 oldValue:(id)a4 newValue:(id)a5 message:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = 0;
  v14 = [(PKDiff *)self getHunkForKey:v10 oldValue:&v18 newValue:0 message:0];
  v15 = v18;
  if (v14)
  {
    [(PKDiff *)self removeHunkForKey:v10];
    if (([v15 isEqual:v12] & 1) == 0)
    {
      [(PKDiff *)self addHunkWithKey:v10 oldValue:v15 newValue:v12 message:v13];
    }
  }

  else if (v10)
  {
    hunks = self->_hunks;
    v17 = [PKDiffHunk hunkWithKey:v10 oldValue:v11 newValue:v12 message:v13];
    [(NSMutableArray *)hunks addObject:v17];
  }
}

- (void)key:(id *)a3 oldValue:(id *)a4 newValue:(id *)a5 message:(id *)a6 forHunkAtIndex:(int64_t)a7
{
  v11 = [(NSMutableArray *)self->_hunks objectAtIndex:a7];
  v12 = v11;
  if (a3)
  {
    *a3 = [v11 key];
    v11 = v12;
  }

  if (a4)
  {
    *a4 = [v12 valueOld];
    v11 = v12;
  }

  if (a5)
  {
    *a5 = [v12 valueNew];
    v11 = v12;
  }

  if (a6)
  {
    *a6 = [v12 message];
    v11 = v12;
  }
}

- (void)enumerateHunks:(id)a3
{
  v4 = a3;
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
      v10 = [v8 valueOld];
      v11 = [v8 valueNew];
      v12 = [v8 message];
      v4[2](v4, v9, v10, v11, v12, &v14);

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
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__PKDiff_description__block_invoke;
  v7[3] = &unk_1E79D5618;
  v8 = v3;
  v4 = v3;
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

- (BOOL)getHunkForKey:(id)a3 oldValue:(id *)a4 newValue:(id *)a5 message:(id *)a6
{
  v10 = [(PKDiff *)self _hunkIndexForKey:a3];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(NSMutableArray *)self->_hunks objectAtIndex:v10];
    v12 = v11;
    if (a4)
    {
      *a4 = [v11 valueOld];
    }

    if (a5)
    {
      *a5 = [v12 valueNew];
    }

    if (a6)
    {
      *a6 = [v12 message];
    }
  }

  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)removeHunkForKey:(id)a3
{
  v4 = [(PKDiff *)self _hunkIndexForKey:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    hunks = self->_hunks;

    [(NSMutableArray *)hunks removeObjectAtIndex:v5];
  }
}

- (void)addHunksFromDiff:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__PKDiff_addHunksFromDiff___block_invoke;
  v3[3] = &unk_1E79D5618;
  v3[4] = self;
  [a3 enumerateHunks:v3];
}

- (id)anyKey
{
  v2 = [(NSMutableArray *)self->_hunks lastObject];
  v3 = [v2 key];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(NSMutableArray *)self->_hunks arrayByAddingObject:self->_passUniqueID];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDiff *)self isEqualToDiff:v5];
  }

  return v6;
}

- (BOOL)isEqualToDiff:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_hunks isEqual:v4[1]])
  {
    v5 = [(NSString *)self->_passUniqueID isEqual:v4[2]];
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
  if (!v4)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_passUniqueID caseInsensitiveCompare:*(v4 + 2)];
    if (v5)
    {
      v6 = v5;
      goto LABEL_10;
    }

    v8 = [(NSMutableArray *)self->_hunks count];
    if (v8 > [*(v4 + 1) count])
    {
LABEL_9:
      v6 = 1;
      goto LABEL_10;
    }

    v10 = [(NSMutableArray *)self->_hunks count];
    if (v10 >= [*(v4 + 1) count])
    {
      if ([(NSMutableArray *)self->_hunks count])
      {
        v11 = 0;
        do
        {
          v12 = [(NSMutableArray *)self->_hunks objectAtIndexedSubscript:v11];
          v13 = [*(v4 + 1) objectAtIndexedSubscript:v11];
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

- (PKDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKDiff;
  v5 = [(PKDiff *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"hunks"];
    hunks = v5->_hunks;
    v5->_hunks = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hunks = self->_hunks;
  v5 = a3;
  [v5 encodeObject:hunks forKey:@"hunks"];
  [v5 encodeObject:self->_passUniqueID forKey:@"uniqueID"];
}

- (unint64_t)_hunkIndexForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_hunks count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_hunks objectAtIndex:v7];
      v9 = [v8 key];
      v10 = [v9 isEqualToString:v4];

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