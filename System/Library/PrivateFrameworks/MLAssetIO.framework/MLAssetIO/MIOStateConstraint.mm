@interface MIOStateConstraint
- (BOOL)isEqual:(id)a3;
- (MIOStateConstraint)initWithSpecification:(const void *)a3;
- (NSString)description;
- (int64_t)dataType;
- (unint64_t)hash;
@end

@implementation MIOStateConstraint

- (MIOStateConstraint)initWithSpecification:(const void *)a3
{
  v14.receiver = self;
  v14.super_class = MIOStateConstraint;
  v4 = [(MIOStateConstraint *)&v14 init];
  v5 = v4;
  if (v4)
  {
    CoreML::Specification::StateFeatureType::CopyFrom((v4 + 8), a3);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(a3 + 2);
    if (*(a3 + 7) != 1)
    {
      v7 = &CoreML::Specification::_ArrayFeatureType_default_instance_;
    }

    v8 = *(v7 + 4);
    if (v8)
    {
      v9 = v7[3];
      v10 = 8 * v8;
      do
      {
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*v9];
        [(NSArray *)v6 addObject:v11];

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }

    bufferShape = v5->_bufferShape;
    v5->_bufferShape = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MIOStateConstraint *)self bufferShape];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = MIOMultiArrayDataTypeToString([(MIOStateConstraint *)self dataType]);
  v7 = [v3 stringWithFormat:@"MIOStateConstraint { bufferShape: [%@] dataType: %@ }", v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOStateConstraint *)self bufferShape];
      v7 = [(MIOStateConstraint *)v5 bufferShape];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(MIOStateConstraint *)self dataType];
        v10 = v9 == [(MIOStateConstraint *)v5 dataType];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MIOStateConstraint *)self bufferShape];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v6 ^= [*(*(&v11 + 1) + 8 * i) hash];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  v8 = [(MIOStateConstraint *)self dataType];
  v9 = *MEMORY[0x1E69E9840];
  return v8 ^ v6;
}

- (int64_t)dataType
{
  if (self->_stateFeatureTypeParams._oneof_case_[0] == 1)
  {
    arraytype = self->_stateFeatureTypeParams.Type_.arraytype_;
  }

  else
  {
    arraytype = &CoreML::Specification::_ArrayFeatureType_default_instance_;
  }

  result = 65600;
  v4 = *(arraytype + 9);
  if (v4 > 65599)
  {
    if (v4 == 131104)
    {
      return 131104;
    }
  }

  else if (v4 == 65552)
  {
    return 65552;
  }

  else if (v4 == 65568)
  {
    return 65568;
  }

  return result;
}

@end