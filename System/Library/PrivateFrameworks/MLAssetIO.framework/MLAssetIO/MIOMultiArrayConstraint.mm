@interface MIOMultiArrayConstraint
- (BOOL)isEqual:(id)equal;
- (MIOMultiArrayConstraint)initWithSpecification:(const void *)specification;
- (NSString)description;
- (int64_t)dataType;
- (unint64_t)hash;
@end

@implementation MIOMultiArrayConstraint

- (MIOMultiArrayConstraint)initWithSpecification:(const void *)specification
{
  v34 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = MIOMultiArrayConstraint;
  v4 = [(MIOMultiArrayConstraint *)&v28 init];
  v5 = v4;
  if (v4)
  {
    CoreML::Specification::ArrayFeatureType::CopyFrom((v4 + 8), specification);
    v6 = [[MIOMultiArrayShapeConstraint alloc] initWithSpecification:specification];
    shapeConstraint = v5->_shapeConstraint;
    v5->_shapeConstraint = v6;

    v8 = v5->_shapeConstraint;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(specification + 4);
    if (v10)
    {
      v11 = *(specification + 3);
      v12 = 8 * v10;
      do
      {
        v13 = [MEMORY[0x1E696AD98] numberWithLongLong:*v11];
        [(NSArray *)v9 addObject:v13];

        ++v11;
        v12 -= 8;
      }

      while (v12);
    }

    if ([(MIOMultiArrayShapeConstraint *)v8 type]== 2)
    {
      if ([(NSArray *)v9 count])
      {
        goto LABEL_20;
      }

      enumeratedShapes = [(MIOMultiArrayShapeConstraint *)v8 enumeratedShapes];
      v15 = [enumeratedShapes count] == 0;

      if (v15)
      {
        goto LABEL_20;
      }

      enumeratedShapes2 = [(MIOMultiArrayShapeConstraint *)v8 enumeratedShapes];
      v17 = [enumeratedShapes2 objectAtIndexedSubscript:0];
      v18 = [v17 mutableCopy];

      v9 = v18;
    }

    else
    {
      if ([(MIOMultiArrayShapeConstraint *)v8 type]!= 3)
      {
        goto LABEL_20;
      }

      if ([(NSArray *)v9 count])
      {
        goto LABEL_20;
      }

      sizeRangeForDimension = [(MIOMultiArrayShapeConstraint *)v8 sizeRangeForDimension];
      v20 = [sizeRangeForDimension count] == 0;

      if (v20)
      {
        goto LABEL_20;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      enumeratedShapes2 = [(MIOMultiArrayShapeConstraint *)v8 sizeRangeForDimension];
      v21 = [enumeratedShapes2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v21)
      {
        v22 = *v30;
        do
        {
          v23 = 0;
          do
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(enumeratedShapes2);
            }

            v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v29 + 1) + 8 * v23), "MIORangeValue")}];
            [(NSArray *)v9 addObject:v24];

            ++v23;
          }

          while (v21 != v23);
          v21 = [enumeratedShapes2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v21);
      }
    }

LABEL_20:
    shape = v5->_shape;
    v5->_shape = v9;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  shape = [(MIOMultiArrayConstraint *)self shape];
  v5 = [shape componentsJoinedByString:{@", "}];
  dataType = [(MIOMultiArrayConstraint *)self dataType];
  v7 = @"unknown";
  v8 = @"Double";
  if (dataType != 65600)
  {
    v8 = @"unknown";
  }

  if (dataType == 131104)
  {
    v9 = @"Int32";
  }

  else
  {
    v9 = v8;
  }

  if (dataType == 65568)
  {
    v7 = @"Float32";
  }

  if (dataType == 65552)
  {
    v7 = @"Float16";
  }

  if (dataType <= 65599)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  shapeConstraint = [(MIOMultiArrayConstraint *)self shapeConstraint];
  v12 = [v3 stringWithFormat:@"MIOMultiArrayConstraint { shape: [%@] dataType: %@ shapeConstraint: %@ }", v5, v10, shapeConstraint];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      shape = [(MIOMultiArrayConstraint *)self shape];
      shape2 = [(MIOMultiArrayConstraint *)v5 shape];
      v8 = [shape isEqual:shape2];

      if (v8)
      {
        dataType = [(MIOMultiArrayConstraint *)self dataType];
        if (dataType == [(MIOMultiArrayConstraint *)v5 dataType])
        {
          shapeConstraint = [(MIOMultiArrayConstraint *)self shapeConstraint];
          if (shapeConstraint && ([(MIOMultiArrayConstraint *)v5 shapeConstraint], v11 = objc_claimAutoreleasedReturnValue(), v11, shapeConstraint, v11))
          {
            shapeConstraint2 = [(MIOMultiArrayConstraint *)self shapeConstraint];
            shapeConstraint3 = [(MIOMultiArrayConstraint *)v5 shapeConstraint];
            v14 = [shapeConstraint2 isEqual:shapeConstraint3];

            if (v14)
            {
              goto LABEL_17;
            }
          }

          else
          {
            shapeConstraint4 = [(MIOMultiArrayConstraint *)self shapeConstraint];
            if (shapeConstraint4)
            {
            }

            else
            {
              shapeConstraint5 = [(MIOMultiArrayConstraint *)v5 shapeConstraint];

              if (!shapeConstraint5)
              {
LABEL_17:
                v15 = 1;
                goto LABEL_15;
              }
            }
          }
        }
      }

      v15 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  shape = [(MIOMultiArrayConstraint *)self shape];
  v4 = [shape countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(shape);
        }

        v6 ^= [*(*(&v13 + 1) + 8 * i) hash];
      }

      v4 = [shape countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  dataType = [(MIOMultiArrayConstraint *)self dataType];
  shapeConstraint = [(MIOMultiArrayConstraint *)self shapeConstraint];
  v10 = [shapeConstraint hash];

  v11 = *MEMORY[0x1E69E9840];
  return dataType ^ v6 ^ v10;
}

- (int64_t)dataType
{
  result = 65600;
  datatype = self->_arrayFeatureTypeParams.datatype_;
  if (datatype > 65599)
  {
    if (datatype == 131104)
    {
      return 131104;
    }
  }

  else if (datatype == 65552)
  {
    return 65552;
  }

  else if (datatype == 65568)
  {
    return 65568;
  }

  return result;
}

@end