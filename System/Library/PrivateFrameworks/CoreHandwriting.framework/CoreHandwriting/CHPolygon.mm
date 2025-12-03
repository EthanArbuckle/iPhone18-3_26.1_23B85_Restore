@interface CHPolygon
- (CHPolygon)initWithRect:(CGRect)rect;
- (CHPolygon)initWithVertices:(CGPoint *)vertices vertexCount:(int64_t)count;
- (double)area;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)polygonByIntersectingWithClipPolygon:(id)polygon;
- (id)polygonDrawing;
- (int64_t)edgeCountIntersectingLineSegment:(CHLineSegment)segment;
- (void)dealloc;
- (void)enumerateEdgesWithBlock:(id)block;
@end

@implementation CHPolygon

- (CHPolygon)initWithVertices:(CGPoint *)vertices vertexCount:(int64_t)count
{
  v10.receiver = self;
  v10.super_class = CHPolygon;
  v6 = [(CHPolygon *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_vertexCount = count;
    v6->_vertices = vertices;
    Mutable = CGPathCreateMutable();
    v7->_path = Mutable;
    CGPathAddLines(Mutable, 0, vertices, count);
    CGPathCloseSubpath(v7->_path);
  }

  return v7;
}

- (CHPolygon)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = malloc_type_calloc(4uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  *v8 = MinX;
  v8[1] = MinY;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxY = CGRectGetMaxY(v24);
  v8[2] = v11;
  v8[3] = MaxY;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v14 = CGRectGetMaxY(v26);
  v8[4] = MaxX;
  v8[5] = v14;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v16 = CGRectGetMinY(v28);
  v8[6] = v15;
  v8[7] = v16;
  return objc_msgSend_initWithVertices_vertexCount_(self, v17, v8, 4, v18, v19);
}

- (void)dealloc
{
  vertices = self->_vertices;
  if (vertices)
  {
    free(vertices);
    self->_vertices = 0;
  }

  path = self->_path;
  if (path)
  {
    CGPathRelease(path);
    self->_path = 0;
  }

  v5.receiver = self;
  v5.super_class = CHPolygon;
  [(CHPolygon *)&v5 dealloc];
}

- (id)description
{
  v11 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  if (self->_vertexCount >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"{%f, %f}", v8, v9, v10, *&self->_vertices[v12].x, *&self->_vertices[v12].y);
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%@, ", v16, v17, v18, v14);
      objc_msgSend_appendString_(v11, v20, v19, v21, v22, v23);

      ++v13;
      ++v12;
    }

    while (v13 < self->_vertexCount);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = malloc_type_calloc(self->_vertexCount, 0x10uLL, 0x1000040451B5BE8uLL);
  v5 = v4;
  if (self->_vertexCount)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *&v4[v6 * 16] = self->_vertices[v6];
      ++v7;
      ++v6;
    }

    while (v7 < self->_vertexCount);
  }

  v8 = [CHPolygon alloc];
  vertexCount = self->_vertexCount;

  return objc_msgSend_initWithVertices_vertexCount_(v8, v9, v5, vertexCount, v10, v11);
}

- (double)area
{
  vertexCount = self->_vertexCount;
  if (vertexCount < 1)
  {
    return fabs(0.0) * 0.5;
  }

  vertices = self->_vertices;
  v4 = vertexCount - 1;
  if (vertexCount == 1)
  {
    v5 = 0;
    v6 = 0uLL;
  }

  else
  {
    v8 = 0;
    v5 = vertexCount & 0x7FFFFFFFFFFFFFFELL;
    v9 = &vertices[1];
    v6 = 0uLL;
    do
    {
      if (v4 == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8 + 1;
      }

      v11 = v8 + 2;
      if (vertexCount - 2 == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 + 2;
      }

      v6 = vaddq_f64(vaddq_f64(v6, vmulq_f64(vextq_s8(vertices[v10], vertices[v10], 8uLL), v9[-1])), vmulq_f64(vextq_s8(vertices[v12], vertices[v12], 8uLL), *v9));
      v9 += 2;
      v8 = v11;
    }

    while (v5 != v11);
    if (vertexCount == v5)
    {
      return fabs(vsubq_f64(v6, vdupq_laneq_s64(v6, 1)).f64[0]) * 0.5;
    }
  }

  do
  {
    if (v4 == v5)
    {
      v13 = 0;
    }

    else
    {
      v13 = v5 + 1;
    }

    v6 = vmlaq_f64(v6, vertices[v5++], vextq_s8(vertices[v13], vertices[v13], 8uLL));
  }

  while (vertexCount != v5);
  return fabs(vsubq_f64(v6, vdupq_laneq_s64(v6, 1)).f64[0]) * 0.5;
}

- (id)polygonDrawing
{
  v8 = objc_alloc_init(CHDrawing);
  if (self->_vertexCount >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      objc_msgSend_addPoint_(v8, v3, v4, v5, v6, v7, self->_vertices[v9].x, self->_vertices[v9].y);
      ++v10;
      ++v9;
    }

    while (v10 < self->_vertexCount);
  }

  objc_msgSend_addPoint_(v8, v3, v4, v5, v6, v7, self->_vertices->x, self->_vertices->y);
  objc_msgSend_endStroke(v8, v11, v12, v13, v14, v15);

  return v8;
}

- (id)polygonByIntersectingWithClipPolygon:(id)polygon
{
  selfCopy = self;
  polygonCopy = polygon;
  objc_opt_self();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_18389F9E0;
  v18 = sub_18389F9F0;
  v6 = selfCopy;
  v19 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18389F9F8;
  v13[3] = &unk_1E6DDF640;
  v13[4] = &v14;
  objc_msgSend_enumerateEdgesWithBlock_(polygonCopy, v7, v13, v8, v9, v10);
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (int64_t)edgeCountIntersectingLineSegment:(CHLineSegment)segment
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18389F76C;
  v8[3] = &unk_1E6DDF618;
  segmentCopy = segment;
  v8[4] = &v10;
  objc_msgSend_enumerateEdgesWithBlock_(self, a2, v8, v3, v4, v5);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (void)enumerateEdgesWithBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  v11 = 0;
  do
  {
    if (v11 >= objc_msgSend_vertexCount(self, v4, v5, v6, v7, v8))
    {
      break;
    }

    v17 = objc_msgSend_vertexCount(self, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_vertices(self, v18, v19, v20, v21, v22);
    v24 = *(v23 + v10);
    v25 = *(v23 + v10 + 8);
    v31 = (objc_msgSend_vertices(self, v26, v27, v28, v29, v30) + 16 * ((v11 + 1) % v17));
    v32 = *v31;
    v33 = v31[1];
    v34 = 0;
    blockCopy[2](blockCopy, v11, &v34, v24, v25, v32, v33);
    v10 += 16;
    ++v11;
  }

  while ((v34 & 1) == 0);
}

@end