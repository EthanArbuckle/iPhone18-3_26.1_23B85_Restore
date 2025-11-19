@interface RTLocationDownsamplerTree
- (RTLocationDownsamplerTree)initWithLocations:(id)a3 errorFunction:(id)a4;
- (double)evaluateLocationsWithErrorFunction:(id)a3;
- (id)allLocations;
- (id)description;
- (id)sampledLocations;
- (void)splitLocationsWithErrorFunction:(id)a3;
@end

@implementation RTLocationDownsamplerTree

- (RTLocationDownsamplerTree)initWithLocations:(id)a3 errorFunction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = RTLocationDownsamplerTree;
  v9 = [(RTLocationDownsamplerTree *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locations, a3);
    [(RTLocationDownsamplerTree *)v10 evaluateLocationsWithErrorFunction:v8];
    v10->_maximumError = v11;
  }

  return v10;
}

- (double)evaluateLocationsWithErrorFunction:(id)a3
{
  v4 = a3;
  v5 = [(RTLocationDownsamplerTree *)self locations];
  v6 = [v5 count] & 0xFFFFFFFFFFFFFFFELL;

  if (v6 == 2)
  {
    v7 = 0;
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 1;
    do
    {
      v10 = [(RTLocationDownsamplerTree *)self locations];
      v11 = [v10 objectAtIndex:v9];

      v12 = [(RTLocationDownsamplerTree *)self locations];
      v13 = v4[2](v4, v11, v12);

      if (v13 > v8)
      {
        v7 = v9;
        v8 = v13;
      }

      ++v9;
      v14 = [(RTLocationDownsamplerTree *)self locations];
      v15 = [v14 count] - 2;
    }

    while (v9 < v15);
  }

  [(RTLocationDownsamplerTree *)self setMaximumError:v8];
  [(RTLocationDownsamplerTree *)self setMaximumErrorIndex:v7];

  return v8;
}

- (void)splitLocationsWithErrorFunction:(id)a3
{
  v28 = a3;
  v4 = [(RTLocationDownsamplerTree *)self locations];

  if (!v4)
  {
    v8 = [(RTLocationDownsamplerTree *)self left];
    if ([(RTLocationDownsamplerTree *)self maximumErrorIndex])
    {
      v15 = [(RTLocationDownsamplerTree *)self right];

      v8 = v15;
    }

    [v8 splitLocationsWithErrorFunction:v28];
    goto LABEL_7;
  }

  v5 = [(RTLocationDownsamplerTree *)self locations];
  v6 = [v5 count];

  if (v6 >= 3)
  {
    v7 = [(RTLocationDownsamplerTree *)self locations];
    v8 = [v7 subarrayWithRange:{0, -[RTLocationDownsamplerTree maximumErrorIndex](self, "maximumErrorIndex") + 1}];

    v9 = [(RTLocationDownsamplerTree *)self locations];
    v10 = [(RTLocationDownsamplerTree *)self maximumErrorIndex];
    v11 = [(RTLocationDownsamplerTree *)self locations];
    v12 = [v9 subarrayWithRange:{v10, objc_msgSend(v11, "count") - -[RTLocationDownsamplerTree maximumErrorIndex](self, "maximumErrorIndex")}];

    v13 = [[RTLocationDownsamplerTree alloc] initWithLocations:v8 errorFunction:v28];
    v14 = [[RTLocationDownsamplerTree alloc] initWithLocations:v12 errorFunction:v28];
    [(RTLocationDownsamplerTree *)self setLeft:v13];
    [(RTLocationDownsamplerTree *)self setRight:v14];
    [(RTLocationDownsamplerTree *)self setLocations:0];

LABEL_7:
    v16 = [(RTLocationDownsamplerTree *)self left];
    [v16 maximumError];
    v18 = v17;

    v19 = [(RTLocationDownsamplerTree *)self right];
    [v19 maximumError];
    v21 = v20;

    if (v18 >= v21)
    {
      v22 = v18;
    }

    else
    {
      v22 = v21;
    }

    [(RTLocationDownsamplerTree *)self setMaximumError:v22];
    v23 = [(RTLocationDownsamplerTree *)self left];
    [v23 maximumError];
    v25 = v24;
    v26 = [(RTLocationDownsamplerTree *)self right];
    [v26 maximumError];
    [(RTLocationDownsamplerTree *)self setMaximumErrorIndex:v25 <= v27];
  }
}

- (id)allLocations
{
  v3 = [(RTLocationDownsamplerTree *)self left];
  if (v3 && (v4 = v3, [(RTLocationDownsamplerTree *)self right], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_opt_new();
    v7 = [(RTLocationDownsamplerTree *)self left];
    v8 = [v7 allLocations];

    v9 = [(RTLocationDownsamplerTree *)self right];
    v10 = [v9 allLocations];

    v11 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "count") - 1}];
    [v6 addObjectsFromArray:v11];

    [v6 addObjectsFromArray:v10];
  }

  else
  {
    v6 = [(RTLocationDownsamplerTree *)self locations];
  }

  return v6;
}

- (id)sampledLocations
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [(RTLocationDownsamplerTree *)self left];
  if (v3 && (v4 = v3, [(RTLocationDownsamplerTree *)self right], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_opt_new();
    v7 = [(RTLocationDownsamplerTree *)self left];
    v8 = [v7 sampledLocations];

    v9 = [(RTLocationDownsamplerTree *)self right];
    v10 = [v9 sampledLocations];

    v11 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "count") - 1}];
    [v6 addObjectsFromArray:v11];

    [v6 addObjectsFromArray:v10];
  }

  else
  {
    v8 = [(RTLocationDownsamplerTree *)self locations];
    v10 = [v8 firstObject];
    v16[0] = v10;
    v12 = [(RTLocationDownsamplerTree *)self locations];
    v13 = [v12 lastObject];
    v16[1] = v13;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v3 = [(RTLocationDownsamplerTree *)self left];
  if (v3 && (v4 = v3, [(RTLocationDownsamplerTree *)self right], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x1E696AEC0];
    [(RTLocationDownsamplerTree *)self maximumError];
    v8 = v7;
    v9 = [(RTLocationDownsamplerTree *)self maximumErrorIndex];
    v10 = [(RTLocationDownsamplerTree *)self left];
    v11 = [v10 description];
    v12 = [(RTLocationDownsamplerTree *)self right];
    v13 = [v12 description];
    v14 = [v6 stringWithFormat:@"{ME:%f, MI:%lu, left:[%@], right:[%@]}", v8, v9, v11, v13];
  }

  else
  {
    v15 = [(RTLocationDownsamplerTree *)self locations];
    v16 = [v15 valueForKey:@"description"];
    v10 = [v16 componentsJoinedByString:{@", (")}];

    v17 = MEMORY[0x1E696AEC0];
    [(RTLocationDownsamplerTree *)self maximumError];
    v14 = [v17 stringWithFormat:@"{ME:%f, MI:%lu, locs:(%@)}", v18, -[RTLocationDownsamplerTree maximumErrorIndex](self, "maximumErrorIndex"), v10];
  }

  return v14;
}

@end