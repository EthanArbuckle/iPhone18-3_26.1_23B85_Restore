@interface ICTuple
- (BOOL)isEqual:(id)equal;
- (ICTuple)initWithFirstObject:(id)object secondObject:(id)secondObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICTuple

- (ICTuple)initWithFirstObject:(id)object secondObject:(id)secondObject
{
  objectCopy = object;
  secondObjectCopy = secondObject;
  v12.receiver = self;
  v12.super_class = ICTuple;
  v9 = [(ICTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstObject, object);
    objc_storeStrong(&v10->_secondObject, secondObject);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  firstObject = [(ICTuple *)self firstObject];
  secondObject = [(ICTuple *)self secondObject];
  v8 = [v3 stringWithFormat:@"<%@: %p, firstObject: %@, secondObject: %@>", v5, self, firstObject, secondObject];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = ICDynamicCast(v5, equalCopy);

    firstObject = [(ICTuple *)self firstObject];
    firstObject2 = [v6 firstObject];
    v9 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == firstObject)
    {
      v10 = 0;
    }

    else
    {
      v10 = firstObject;
    }

    secondObject = v10;
    if (v9 == firstObject2)
    {
      v12 = 0;
    }

    else
    {
      v12 = firstObject2;
    }

    v13 = v12;
    if (secondObject | v13)
    {
      secondObject2 = v13;
      if (secondObject)
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

      v17 = [secondObject isEqual:v13];

      if (!v17)
      {
        v16 = 0;
        goto LABEL_33;
      }
    }

    secondObject = [(ICTuple *)self secondObject];
    secondObject2 = [v6 secondObject];
    if (v9 == secondObject)
    {
      v18 = 0;
    }

    else
    {
      v18 = secondObject;
    }

    v19 = v18;
    if (v9 == secondObject2)
    {
      v20 = 0;
    }

    else
    {
      v20 = secondObject2;
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
    firstObject = [(ICTuple *)self firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_opt_class();
      null = ICCheckedDynamicCast(v5, firstObject);
      v7 = ICHashWithArray(null);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objc_opt_class();
        null = ICCheckedDynamicCast(v8, firstObject);
        v7 = ICHashWithDictionary(null);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = objc_opt_class();
          null = ICCheckedDynamicCast(v9, firstObject);
          v7 = ICHashWithSet(null);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = objc_opt_class();
            null = ICCheckedDynamicCast(v10, firstObject);
            v7 = ICHashWithOrderedSet(null);
          }

          else
          {
            v11 = [firstObject hash];
            if (v11)
            {
              goto LABEL_13;
            }

            null = [MEMORY[0x1E695DFB0] null];
            v7 = [null hash];
          }
        }
      }
    }

    v11 = v7;

LABEL_13:
    secondObject = [(ICTuple *)self secondObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_opt_class();
      null2 = ICCheckedDynamicCast(v13, secondObject);
      v15 = ICHashWithArray(null2);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_opt_class();
        null2 = ICCheckedDynamicCast(v16, secondObject);
        v15 = ICHashWithDictionary(null2);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_opt_class();
          null2 = ICCheckedDynamicCast(v17, secondObject);
          v15 = ICHashWithSet(null2);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = objc_opt_class();
            null2 = ICCheckedDynamicCast(v18, secondObject);
            v15 = ICHashWithOrderedSet(null2);
          }

          else
          {
            v19 = [secondObject hash];
            v20 = v19;
            if (v19)
            {
LABEL_24:

              self->_hash = ICHashWithHashKeys(v11, v21, v22, v23, v24, v25, v26, v27, v20);
              return self->_hash;
            }

            null2 = [MEMORY[0x1E695DFB0] null];
            v15 = [null2 hash];
          }
        }
      }
    }

    v20 = v15;

    goto LABEL_24;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICTuple allocWithZone:zone];
  firstObject = [(ICTuple *)self firstObject];
  secondObject = [(ICTuple *)self secondObject];
  v7 = [(ICTuple *)v4 initWithFirstObject:firstObject secondObject:secondObject];

  return v7;
}

@end