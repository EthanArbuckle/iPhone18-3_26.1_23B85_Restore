@interface MNRouteOverlapResult
- (GEOPolylineCoordinateRange)routeRange;
- (id).cxx_construct;
- (id)description;
@end

@implementation MNRouteOverlapResult

- (id).cxx_construct
{
  *(self + 4) = 0xBF80000000000000;
  *(self + 5) = 0xBF80000000000000;
  return self;
}

- (GEOPolylineCoordinateRange)routeRange
{
  end = self->_routeRange.end;
  start = self->_routeRange.start;
  result.end = end;
  result.start = start;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[GEOPolylineCoordinateRangeArray count](self->_overlapRanges, "count")}];
  for (i = 0; i < [(GEOPolylineCoordinateRangeArray *)self->_overlapRanges count]; ++i)
  {
    [(GEOPolylineCoordinateRangeArray *)self->_overlapRanges coordinateRangeAtIndex:i];
    v5 = MEMORY[0x1E696AEC0];
    v6 = GEOPolylineCoordinateRangeAsString();
    v7 = [v5 stringWithFormat:@"{%@}", v6];
    [v3 addObject:v7];
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[GEOPolylineCoordinateRangeArray count](self->_uniqueRanges, "count")}];
  for (j = 0; j < [(GEOPolylineCoordinateRangeArray *)self->_uniqueRanges count]; ++j)
  {
    [(GEOPolylineCoordinateRangeArray *)self->_uniqueRanges coordinateRangeAtIndex:j];
    v10 = MEMORY[0x1E696AEC0];
    v11 = GEOPolylineCoordinateRangeAsString();
    v12 = [v10 stringWithFormat:@"{%@}", v11];
    [v8 addObject:v12];
  }

  v13 = MEMORY[0x1E696AEC0];
  routeID = self->_routeID;
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v8 componentsJoinedByString:{@", "}];
  v17 = [v13 stringWithFormat:@"Route ID: %@\n    Overlap: %@\n    Unique: %@", routeID, v15, v16];

  return v17;
}

@end