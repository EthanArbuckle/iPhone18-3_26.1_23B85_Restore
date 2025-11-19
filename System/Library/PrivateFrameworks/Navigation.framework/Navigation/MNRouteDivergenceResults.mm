@interface MNRouteDivergenceResults
- (id)description;
@end

@implementation MNRouteDivergenceResults

- (id)description
{
  v31 = *MEMORY[0x1E69E9840];
  p_results = &self->_results;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_results, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *p_results;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        [v7 routeCoordinate];
        v9 = GEOPolylineCoordinateAsString();
        [v7 locationCoordinate];
        v11 = v10;
        [v7 locationCoordinate];
        v13 = v12;
        v14 = [v7 resultType];
        v15 = @"None";
        if (v14 == 1)
        {
          v15 = @"Divergence";
        }

        if (v14 == 2)
        {
          v15 = @"Convergence";
        }

        v16 = v15;
        v17 = [v8 stringWithFormat:@"%@ (%f, %f) - %@", v9, v11, v13, v16];
        [v3 addObject:v17];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  v18 = MEMORY[0x1E696AEC0];
  routeID = self->_routeID;
  v20 = [v3 componentsJoinedByString:@"\n    "];
  v21 = [v18 stringWithFormat:@"Route ID: %@\n    %@", routeID, v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

@end