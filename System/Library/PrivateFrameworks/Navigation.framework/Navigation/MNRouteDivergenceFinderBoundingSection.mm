@interface MNRouteDivergenceFinderBoundingSection
- ($A71F62C2B947990EEEAFC21D5CFDCAFE)boundingRect;
- (BOOL)containsCoordinate:(id)a3;
- (GEOPolylineCoordinateRange)range;
- (id).cxx_construct;
- (id)boundsDescription;
- (id)description;
- (id)leafSectionsIntersectingSection:(id)a3 paddingMapPoints:(double)a4;
- (id)treeDescription;
- (void)_appendDescription:(id)a3 indent:(unint64_t)a4;
- (void)traverseWithHandler:(id)a3;
@end

@implementation MNRouteDivergenceFinderBoundingSection

- (id).cxx_construct
{
  *(self + 5) = 0xBF80000000000000;
  *(self + 6) = 0xBF80000000000000;
  return self;
}

- ($A71F62C2B947990EEEAFC21D5CFDCAFE)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (GEOPolylineCoordinateRange)range
{
  end = self->_range.end;
  start = self->_range.start;
  result.end = end;
  result.start = start;
  return result;
}

- (void)_appendDescription:(id)a3 indent:(unint64_t)a4
{
  v7 = a3;
  v6 = [(MNRouteDivergenceFinderBoundingSection *)self description];
  [v7 appendFormat:@"%*s%@", (2 * a4), "", v6];

  [(MNRouteDivergenceFinderBoundingSection *)self->_left _appendDescription:v7 indent:a4 + 1];
  [(MNRouteDivergenceFinderBoundingSection *)self->_right _appendDescription:v7 indent:a4 + 1];
}

- (id)description
{
  v3 = self->_boundingRect.size.width + self->_boundingRect.origin.x;
  v4 = self->_boundingRect.size.height + self->_boundingRect.origin.y;
  GEOCoordinate2DForMapPoint();
  v6 = v5;
  v8 = v7;
  GEOCoordinate2DForMapPoint();
  v10 = v9;
  v12 = v11;
  if ([(MNRouteDivergenceFinderBoundingSection *)self isLeaf])
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@", leafIndex: %d", self->_leafIndex];
  }

  else
  {
    v13 = &stru_1F4EB6B70;
  }

  v14 = MEMORY[0x1E696AEC0];
  start = self->_range.start;
  end = self->_range.end;
  v17 = GEOPolylineCoordinateRangeAsString();
  v18 = [v14 stringWithFormat:@"[%@] (%f, %f) (%f, %f) %d meters%@\n", v17, v6, v8, v10, v12, self->_length, v13];

  return v18;
}

- (id)boundsDescription
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  GEOCoordinate2DForMapPoint();
  v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"%f, %f\n", v5, v6];
  v8 = self->_boundingRect.origin.y;
  v9 = self->_boundingRect.size.width + self->_boundingRect.origin.x;
  GEOCoordinate2DForMapPoint();
  [v7 appendFormat:@"%f, %f\n", v10, v11];
  v12 = self->_boundingRect.size.width + self->_boundingRect.origin.x;
  v13 = self->_boundingRect.size.height + self->_boundingRect.origin.y;
  GEOCoordinate2DForMapPoint();
  [v7 appendFormat:@"%f, %f\n", v14, v15];
  v16 = self->_boundingRect.origin.x;
  v17 = self->_boundingRect.size.height + self->_boundingRect.origin.y;
  GEOCoordinate2DForMapPoint();
  [v7 appendFormat:@"%f, %f", v18, v19];

  return v7;
}

- (id)treeDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(MNRouteDivergenceFinderBoundingSection *)self _appendDescription:v3 indent:0];

  return v3;
}

- (BOOL)containsCoordinate:(id)a3
{
  v4 = GEOMapPointForCoordinate();
  v5.n128_u64[0] = v7.n128_u64[0];
  v6.n128_u64[0] = v8.n128_u64[0];
  v7.n128_u64[0] = *&self->_boundingRect.origin.x;
  v8.n128_u64[0] = *&self->_boundingRect.origin.y;
  v9.n128_u64[0] = *&self->_boundingRect.size.width;
  v10.n128_u64[0] = *&self->_boundingRect.size.height;

  return MEMORY[0x1EEE0BB98](v4, v7, v8, v9, v10, v5, v6);
}

- (void)traverseWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = 1;
    (*(v4 + 2))(v4, self, &v6);
    if (v6 == 1)
    {
      [(MNRouteDivergenceFinderBoundingSection *)self->_left traverseWithHandler:v5];
      [(MNRouteDivergenceFinderBoundingSection *)self->_right traverseWithHandler:v5];
    }
  }
}

- (id)leafSectionsIntersectingSection:(id)a3 paddingMapPoints:(double)a4
{
  v6 = a3;
  [v6 boundingRect];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10786;
  v18 = __Block_byref_object_dispose__10787;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__MNRouteDivergenceFinderBoundingSection_leafSectionsIntersectingSection_paddingMapPoints___block_invoke;
  v13[3] = &unk_1E842EFF0;
  *&v13[5] = v7 - a4;
  *&v13[6] = v8 - a4;
  *&v13[7] = v9 + a4 + a4;
  *&v13[8] = v10 + a4 + a4;
  v13[4] = &v14;
  [(MNRouteDivergenceFinderBoundingSection *)self traverseWithHandler:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __91__MNRouteDivergenceFinderBoundingSection_leafSectionsIntersectingSection_paddingMapPoints___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  [v13 boundingRect];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  if (GEOMapRectIntersectsRect())
  {
    if ([v13 isLeaf])
    {
      v9 = *(*(a1[4] + 8) + 40);
      if (!v9)
      {
        v10 = [MEMORY[0x1E695DF70] array];
        v11 = *(a1[4] + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v9 = *(*(a1[4] + 8) + 40);
      }

      [v9 addObject:v13];
    }
  }

  else
  {
    *a3 = 0;
  }
}

@end