@interface MIOMultiArrayShapeConstraint
- (BOOL)isEqual:(id)a3;
- (MIOMultiArrayShapeConstraint)init;
- (MIOMultiArrayShapeConstraint)initWithEnumeratedShapes:(id)a3;
- (MIOMultiArrayShapeConstraint)initWithSizeRangeForDimension:(id)a3;
- (MIOMultiArrayShapeConstraint)initWithSpecification:(const void *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOMultiArrayShapeConstraint

- (MIOMultiArrayShapeConstraint)init
{
  v9.receiver = self;
  v9.super_class = MIOMultiArrayShapeConstraint;
  v2 = [(MIOMultiArrayShapeConstraint *)&v9 init];
  v3 = v2;
  if (v2)
  {
    sizeRangeForDimension = v2->_sizeRangeForDimension;
    v5 = MEMORY[0x1E695E0F0];
    v2->_type = 1;
    v2->_sizeRangeForDimension = v5;

    v6 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    shapeSet = v3->_shapeSet;
    v3->_shapeSet = v6;
  }

  return v3;
}

- (MIOMultiArrayShapeConstraint)initWithSizeRangeForDimension:(id)a3
{
  v4 = a3;
  v5 = [(MIOMultiArrayShapeConstraint *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 3;
    v7 = [v4 copy];
    sizeRangeForDimension = v6->_sizeRangeForDimension;
    v6->_sizeRangeForDimension = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    shapeSet = v6->_shapeSet;
    v6->_shapeSet = v9;
  }

  return v6;
}

- (MIOMultiArrayShapeConstraint)initWithEnumeratedShapes:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MIOMultiArrayShapeConstraint *)self init];
  v35 = v5;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      v7 = [v6 count];

      if (v7)
      {
        if (v5)
        {
          v5->_type = 2;
          v8 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v4];
          v34 = v4;
          shapeSet = v5->_shapeSet;
          v5->_shapeSet = v8;

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v10 = v5->_shapeSet;
          v11 = 0;
          v12 = [(NSOrderedSet *)v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v12)
          {
            v13 = *v42;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v42 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v41 + 1) + 8 * i);
                if (v11 <= [v15 count])
                {
                  v11 = [v15 count];
                }
              }

              v12 = [(NSOrderedSet *)v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v12);
          }

          v16 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
          v17 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
          v18 = v17;
          if (v11)
          {
            v19 = v16;
            v20 = v17;
            v21 = v11;
            do
            {
              *v19++ = -1;
              *v20++ = 0;
              --v21;
            }

            while (v21);
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v22 = v5->_shapeSet;
          v23 = [(NSOrderedSet *)v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v23)
          {
            v24 = *v38;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v38 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v37 + 1) + 8 * j);
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __57__MIOMultiArrayShapeConstraint_initWithEnumeratedShapes___block_invoke;
                v36[3] = &__block_descriptor_48_e25_v32__0__NSNumber_8Q16_B24l;
                v36[4] = v16;
                v36[5] = v18;
                [v26 enumerateObjectsUsingBlock:{v36, v34}];
              }

              v23 = [(NSOrderedSet *)v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v23);
          }

          v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          if (v11)
          {
            for (k = 0; k != v11; ++k)
            {
              v29 = v18[k] - v16[k];
              v30 = [MEMORY[0x1E696B098] valueWithRange:v34];
              [(NSArray *)v27 setObject:v30 atIndexedSubscript:k];
            }
          }

          sizeRangeForDimension = v35->_sizeRangeForDimension;
          v35->_sizeRangeForDimension = v27;

          free(v16);
          free(v18);
          v4 = v34;
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v35;
}

void __57__MIOMultiArrayShapeConstraint_initWithEnumeratedShapes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8 * a3);
  v12 = v5;
  if (v6 >= [v5 unsignedIntegerValue])
  {
    v8 = [v12 unsignedIntegerValue];
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8 * a3);
  }

  *(v7 + 8 * a3) = v8;
  v9 = *(*(a1 + 40) + 8 * a3);
  if (v9 <= [v12 unsignedIntegerValue])
  {
    v11 = [v12 unsignedIntegerValue];
    v10 = *(a1 + 40);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(v10 + 8 * a3);
  }

  *(v10 + 8 * a3) = v11;
}

- (MIOMultiArrayShapeConstraint)initWithSpecification:(const void *)a3
{
  v5 = *(a3 + 15);
  if (v5 == 31)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (*(a3 + 15) == 31)
    {
      v19 = *(a3 + 5);
    }

    else
    {
      v19 = &CoreML::Specification::_ArrayFeatureType_ShapeRange_default_instance_;
    }

    v20 = v19[4];
    if (v20)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v19 + 6);
    if (v22)
    {
      v23 = 8 * v22;
      do
      {
        if (*(*v21 + 3) <= 0)
        {
          v24 = -1;
        }

        else
        {
          v24 = *(*v21 + 3);
        }

        v25 = MIOMakeRange(*(*v21 + 2), v24);
        v27 = [MEMORY[0x1E696B098] valueWithMIORange:{v25, v26}];
        [v6 addObject:v27];

        ++v21;
        v23 -= 8;
      }

      while (v23);
    }

    v18 = [(MIOMultiArrayShapeConstraint *)self initWithSizeRangeForDimension:v6];
    goto LABEL_29;
  }

  if (v5 == 21)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (*(a3 + 15) == 21)
    {
      v7 = *(a3 + 5);
    }

    else
    {
      v7 = &CoreML::Specification::_ArrayFeatureType_EnumeratedShapes_default_instance_;
    }

    v8 = v7[4];
    if (v8)
    {
      v9 = (v8 + 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v7 + 6);
    if (v10)
    {
      v11 = &v9[v10];
      do
      {
        v12 = *v9;
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v14 = *(v12 + 16);
        if (v14)
        {
          v15 = *(v12 + 24);
          v16 = 8 * v14;
          do
          {
            v17 = [MEMORY[0x1E696AD98] numberWithLongLong:*v15];
            [v13 addObject:v17];

            ++v15;
            v16 -= 8;
          }

          while (v16);
        }

        [v6 addObject:v13];

        ++v9;
      }

      while (v9 != v11);
    }

    v18 = [(MIOMultiArrayShapeConstraint *)self initWithEnumeratedShapes:v6];
LABEL_29:
    v28 = v18;

    return v28;
  }

  return [(MIOMultiArrayShapeConstraint *)self init];
}

- (id)description
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(MIOMultiArrayShapeConstraint *)self type];
  v5 = @"unspecified";
  if (v4 == 3)
  {
    v5 = @"ranges";
  }

  if (v4 == 2)
  {
    v5 = @"enumerated";
  }

  v6 = [v3 initWithFormat:@"MIOMultiArrayShapeConstraint (%@) ", v5];
  if ([(MIOMultiArrayShapeConstraint *)self type]== 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [(MIOMultiArrayShapeConstraint *)self enumeratedShapes];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v23 + 1) + 8 * i) componentsJoinedByString:{@", "}];
          [v6 appendFormat:@"(%@) ", v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if ([(MIOMultiArrayShapeConstraint *)self type]!= 3)
    {
      goto LABEL_23;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(MIOMultiArrayShapeConstraint *)self sizeRangeForDimension];
    v12 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = [*(*(&v19 + 1) + 8 * j) MIORangeValue];
          [v6 appendFormat:@"[%zd, %zd] ", v15, v16];
        }

        v12 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v12);
    }
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];

  return v6;
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
      v6 = [(MIOMultiArrayShapeConstraint *)self type];
      if (v6 == [(MIOMultiArrayShapeConstraint *)v5 type])
      {
        if ([(MIOMultiArrayShapeConstraint *)self type]== 2)
        {
          v7 = [(MIOMultiArrayShapeConstraint *)self enumeratedShapes];
          v8 = [(MIOMultiArrayShapeConstraint *)v5 enumeratedShapes];
          v9 = [v7 isEqual:v8];
        }

        else
        {
          if ([(MIOMultiArrayShapeConstraint *)self type]!= 3)
          {
            v10 = 1;
            goto LABEL_13;
          }

          v7 = [(MIOMultiArrayShapeConstraint *)self sizeRangeForDimension];
          v8 = [(MIOMultiArrayShapeConstraint *)v5 sizeRangeForDimension];
          v9 = [v7 isEqual:v8];
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_13:

      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(MIOMultiArrayShapeConstraint *)self type];
  v4 = [(MIOMultiArrayShapeConstraint *)self enumeratedShapes];
  v5 = [v4 hash];
  v6 = [(MIOMultiArrayShapeConstraint *)self sizeRangeForDimension];
  v7 = [v6 hash];

  return v5 ^ v3 ^ v7;
}

@end