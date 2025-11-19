@interface RTPolygon
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPolygon:(id)a3;
- (RTPolygon)initWithCentroid:(id)a3 vertices:(id)a4;
- (RTPolygon)initWithCoder:(id)a3;
- (RTPolygon)initWithVertices:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPolygon

- (RTPolygon)initWithVertices:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = 0.0;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          [v12 latitude];
          v9 = v9 + v13;
          [v12 longitude];
          v10 = v10 + v14;
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
      v10 = 0.0;
    }

    v15 = -[RTCoordinate initWithLatitude:longitude:]([RTCoordinate alloc], "initWithLatitude:longitude:", v9 / [v5 count], v10 / objc_msgSend(v5, "count"));
    self = [(RTPolygon *)self initWithCentroid:v15 vertices:v5];
    v16 = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, &v15->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: vertices.count > 0", buf, 2u);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (RTPolygon)initWithCentroid:(id)a3 vertices:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 count])
  {
    v16.receiver = self;
    v16.super_class = RTPolygon;
    v9 = [(RTPolygon *)&v16 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_centroid, a3);
      v11 = [v8 copy];
      vertices = v10->_vertices;
      v10->_vertices = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: vertices.count > 0", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  centroid = self->_centroid;
  v5 = a3;
  [v5 encodeObject:centroid forKey:@"centroid"];
  [v5 encodeObject:self->_vertices forKey:@"vertices"];
}

- (RTPolygon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"centroid"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"vertices"];

  v10 = [(RTPolygon *)self initWithCentroid:v5 vertices:v9];
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  centroid = self->_centroid;
  vertices = self->_vertices;

  return [v4 initWithCentroid:centroid vertices:vertices];
}

- (BOOL)isEqualToPolygon:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_vertices count];
  v6 = [v4 vertices];
  v7 = [v6 count];

  if (v5 == v7 && (v8 = [(NSArray *)self->_vertices count]) != 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(NSArray *)self->_vertices objectAtIndexedSubscript:0];
      v11 = [v4 vertices];
      v12 = [v11 objectAtIndexedSubscript:v9];
      v13 = [v10 isEqual:v12];

      if (v13)
      {
        break;
      }

      if (++v9 >= [(NSArray *)self->_vertices count])
      {
        goto LABEL_6;
      }
    }

    if ([(NSArray *)self->_vertices count])
    {
      v16 = 0;
      do
      {
        v17 = [(NSArray *)self->_vertices objectAtIndexedSubscript:v16];
        v18 = [v4 vertices];
        v19 = [v18 objectAtIndexedSubscript:(v9 + v16) % v8];
        v14 = [v17 isEqual:v19];

        if ((v14 & 1) == 0)
        {
          break;
        }

        ++v16;
      }

      while (v16 < [(NSArray *)self->_vertices count]);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTPolygon *)self isEqualToPolygon:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_vertices objectAtIndexedSubscript:0];
  v4 = [v3 hash];

  if ([(NSArray *)self->_vertices count]>= 2)
  {
    v5 = 1;
    do
    {
      v6 = [(NSArray *)self->_vertices objectAtIndexedSubscript:v5];
      v4 ^= [v6 hash];

      ++v5;
    }

    while (v5 < [(NSArray *)self->_vertices count]);
  }

  return v4;
}

@end