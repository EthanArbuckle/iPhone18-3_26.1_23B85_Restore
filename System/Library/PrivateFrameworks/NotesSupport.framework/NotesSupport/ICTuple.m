@interface ICTuple
- (BOOL)isEqual:(id)a3;
- (ICTuple)initWithFirstObject:(id)a3 secondObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICTuple

- (ICTuple)initWithFirstObject:(id)a3 secondObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICTuple;
  v9 = [(ICTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstObject, a3);
    objc_storeStrong(&v10->_secondObject, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICTuple *)self firstObject];
  v7 = [(ICTuple *)self secondObject];
  v8 = [v3 stringWithFormat:@"<%@: %p, firstObject: %@, secondObject: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = ICDynamicCast(v5, v4);

    v7 = [(ICTuple *)self firstObject];
    v8 = [v6 firstObject];
    v9 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;
    if (v9 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;
    if (v11 | v13)
    {
      v14 = v13;
      if (v11)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 0;
LABEL_32:

LABEL_33:
        return v16;
      }

      v17 = [v11 isEqual:v13];

      if (!v17)
      {
        v16 = 0;
        goto LABEL_33;
      }
    }

    v11 = [(ICTuple *)self secondObject];
    v14 = [v6 secondObject];
    if (v9 == v11)
    {
      v18 = 0;
    }

    else
    {
      v18 = v11;
    }

    v19 = v18;
    if (v9 == v14)
    {
      v20 = 0;
    }

    else
    {
      v20 = v14;
    }

    v21 = v20;
    v22 = v21;
    if (v19 | v21)
    {
      if (v19)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        v16 = 0;
      }

      else
      {
        v16 = [v19 isEqual:v21];
      }
    }

    else
    {
      v16 = 1;
    }

    goto LABEL_32;
  }

  return 1;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICTuple *)self firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_opt_class();
      v6 = ICCheckedDynamicCast(v5, v4);
      v7 = ICHashWithArray(v6);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objc_opt_class();
        v6 = ICCheckedDynamicCast(v8, v4);
        v7 = ICHashWithDictionary(v6);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = objc_opt_class();
          v6 = ICCheckedDynamicCast(v9, v4);
          v7 = ICHashWithSet(v6);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = objc_opt_class();
            v6 = ICCheckedDynamicCast(v10, v4);
            v7 = ICHashWithOrderedSet(v6);
          }

          else
          {
            v11 = [v4 hash];
            if (v11)
            {
              goto LABEL_13;
            }

            v6 = [MEMORY[0x1E695DFB0] null];
            v7 = [v6 hash];
          }
        }
      }
    }

    v11 = v7;

LABEL_13:
    v12 = [(ICTuple *)self secondObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_opt_class();
      v14 = ICCheckedDynamicCast(v13, v12);
      v15 = ICHashWithArray(v14);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_opt_class();
        v14 = ICCheckedDynamicCast(v16, v12);
        v15 = ICHashWithDictionary(v14);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_opt_class();
          v14 = ICCheckedDynamicCast(v17, v12);
          v15 = ICHashWithSet(v14);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = objc_opt_class();
            v14 = ICCheckedDynamicCast(v18, v12);
            v15 = ICHashWithOrderedSet(v14);
          }

          else
          {
            v19 = [v12 hash];
            v20 = v19;
            if (v19)
            {
LABEL_24:

              self->_hash = ICHashWithHashKeys(v11, v21, v22, v23, v24, v25, v26, v27, v20);
              return self->_hash;
            }

            v14 = [MEMORY[0x1E695DFB0] null];
            v15 = [v14 hash];
          }
        }
      }
    }

    v20 = v15;

    goto LABEL_24;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICTuple allocWithZone:a3];
  v5 = [(ICTuple *)self firstObject];
  v6 = [(ICTuple *)self secondObject];
  v7 = [(ICTuple *)v4 initWithFirstObject:v5 secondObject:v6];

  return v7;
}

@end