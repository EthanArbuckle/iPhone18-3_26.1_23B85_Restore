@interface RTPolygon
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPolygon:(id)polygon;
- (RTPolygon)initWithCentroid:(id)centroid vertices:(id)vertices;
- (RTPolygon)initWithCoder:(id)coder;
- (RTPolygon)initWithVertices:(id)vertices;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPolygon

- (RTPolygon)initWithVertices:(id)vertices
{
  v25 = *MEMORY[0x1E69E9840];
  verticesCopy = vertices;
  if ([verticesCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = verticesCopy;
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
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, &v15->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: vertices.count > 0", buf, 2u);
    }

    selfCopy = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (RTPolygon)initWithCentroid:(id)centroid vertices:(id)vertices
{
  centroidCopy = centroid;
  verticesCopy = vertices;
  if ([verticesCopy count])
  {
    v16.receiver = self;
    v16.super_class = RTPolygon;
    v9 = [(RTPolygon *)&v16 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_centroid, centroid);
      v11 = [verticesCopy copy];
      vertices = v10->_vertices;
      v10->_vertices = v11;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: vertices.count > 0", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  centroid = self->_centroid;
  coderCopy = coder;
  [coderCopy encodeObject:centroid forKey:@"centroid"];
  [coderCopy encodeObject:self->_vertices forKey:@"vertices"];
}

- (RTPolygon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"centroid"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"vertices"];

  v10 = [(RTPolygon *)self initWithCentroid:v5 vertices:v9];
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  centroid = self->_centroid;
  vertices = self->_vertices;

  return [v4 initWithCentroid:centroid vertices:vertices];
}

- (BOOL)isEqualToPolygon:(id)polygon
{
  polygonCopy = polygon;
  v5 = [(NSArray *)self->_vertices count];
  vertices = [polygonCopy vertices];
  v7 = [vertices count];

  if (v5 == v7 && (v8 = [(NSArray *)self->_vertices count]) != 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(NSArray *)self->_vertices objectAtIndexedSubscript:0];
      vertices2 = [polygonCopy vertices];
      v12 = [vertices2 objectAtIndexedSubscript:v9];
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
        vertices3 = [polygonCopy vertices];
        v19 = [vertices3 objectAtIndexedSubscript:(v9 + v16) % v8];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTPolygon *)self isEqualToPolygon:v5];
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