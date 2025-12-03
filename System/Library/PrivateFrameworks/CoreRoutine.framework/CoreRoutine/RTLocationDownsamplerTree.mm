@interface RTLocationDownsamplerTree
- (RTLocationDownsamplerTree)initWithLocations:(id)locations errorFunction:(id)function;
- (double)evaluateLocationsWithErrorFunction:(id)function;
- (id)allLocations;
- (id)description;
- (id)sampledLocations;
- (void)splitLocationsWithErrorFunction:(id)function;
@end

@implementation RTLocationDownsamplerTree

- (RTLocationDownsamplerTree)initWithLocations:(id)locations errorFunction:(id)function
{
  locationsCopy = locations;
  functionCopy = function;
  v13.receiver = self;
  v13.super_class = RTLocationDownsamplerTree;
  v9 = [(RTLocationDownsamplerTree *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locations, locations);
    [(RTLocationDownsamplerTree *)v10 evaluateLocationsWithErrorFunction:functionCopy];
    v10->_maximumError = v11;
  }

  return v10;
}

- (double)evaluateLocationsWithErrorFunction:(id)function
{
  functionCopy = function;
  locations = [(RTLocationDownsamplerTree *)self locations];
  v6 = [locations count] & 0xFFFFFFFFFFFFFFFELL;

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
      locations2 = [(RTLocationDownsamplerTree *)self locations];
      v11 = [locations2 objectAtIndex:v9];

      locations3 = [(RTLocationDownsamplerTree *)self locations];
      v13 = functionCopy[2](functionCopy, v11, locations3);

      if (v13 > v8)
      {
        v7 = v9;
        v8 = v13;
      }

      ++v9;
      locations4 = [(RTLocationDownsamplerTree *)self locations];
      v15 = [locations4 count] - 2;
    }

    while (v9 < v15);
  }

  [(RTLocationDownsamplerTree *)self setMaximumError:v8];
  [(RTLocationDownsamplerTree *)self setMaximumErrorIndex:v7];

  return v8;
}

- (void)splitLocationsWithErrorFunction:(id)function
{
  functionCopy = function;
  locations = [(RTLocationDownsamplerTree *)self locations];

  if (!locations)
  {
    left = [(RTLocationDownsamplerTree *)self left];
    if ([(RTLocationDownsamplerTree *)self maximumErrorIndex])
    {
      right = [(RTLocationDownsamplerTree *)self right];

      left = right;
    }

    [left splitLocationsWithErrorFunction:functionCopy];
    goto LABEL_7;
  }

  locations2 = [(RTLocationDownsamplerTree *)self locations];
  v6 = [locations2 count];

  if (v6 >= 3)
  {
    locations3 = [(RTLocationDownsamplerTree *)self locations];
    left = [locations3 subarrayWithRange:{0, -[RTLocationDownsamplerTree maximumErrorIndex](self, "maximumErrorIndex") + 1}];

    locations4 = [(RTLocationDownsamplerTree *)self locations];
    maximumErrorIndex = [(RTLocationDownsamplerTree *)self maximumErrorIndex];
    locations5 = [(RTLocationDownsamplerTree *)self locations];
    v12 = [locations4 subarrayWithRange:{maximumErrorIndex, objc_msgSend(locations5, "count") - -[RTLocationDownsamplerTree maximumErrorIndex](self, "maximumErrorIndex")}];

    v13 = [[RTLocationDownsamplerTree alloc] initWithLocations:left errorFunction:functionCopy];
    v14 = [[RTLocationDownsamplerTree alloc] initWithLocations:v12 errorFunction:functionCopy];
    [(RTLocationDownsamplerTree *)self setLeft:v13];
    [(RTLocationDownsamplerTree *)self setRight:v14];
    [(RTLocationDownsamplerTree *)self setLocations:0];

LABEL_7:
    left2 = [(RTLocationDownsamplerTree *)self left];
    [left2 maximumError];
    v18 = v17;

    right2 = [(RTLocationDownsamplerTree *)self right];
    [right2 maximumError];
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
    left3 = [(RTLocationDownsamplerTree *)self left];
    [left3 maximumError];
    v25 = v24;
    right3 = [(RTLocationDownsamplerTree *)self right];
    [right3 maximumError];
    [(RTLocationDownsamplerTree *)self setMaximumErrorIndex:v25 <= v27];
  }
}

- (id)allLocations
{
  left = [(RTLocationDownsamplerTree *)self left];
  if (left && (v4 = left, [(RTLocationDownsamplerTree *)self right], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    locations = objc_opt_new();
    left2 = [(RTLocationDownsamplerTree *)self left];
    allLocations = [left2 allLocations];

    right = [(RTLocationDownsamplerTree *)self right];
    allLocations2 = [right allLocations];

    v11 = [allLocations subarrayWithRange:{0, objc_msgSend(allLocations, "count") - 1}];
    [locations addObjectsFromArray:v11];

    [locations addObjectsFromArray:allLocations2];
  }

  else
  {
    locations = [(RTLocationDownsamplerTree *)self locations];
  }

  return locations;
}

- (id)sampledLocations
{
  v16[2] = *MEMORY[0x1E69E9840];
  left = [(RTLocationDownsamplerTree *)self left];
  if (left && (v4 = left, [(RTLocationDownsamplerTree *)self right], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_opt_new();
    left2 = [(RTLocationDownsamplerTree *)self left];
    sampledLocations = [left2 sampledLocations];

    right = [(RTLocationDownsamplerTree *)self right];
    sampledLocations2 = [right sampledLocations];

    v11 = [sampledLocations subarrayWithRange:{0, objc_msgSend(sampledLocations, "count") - 1}];
    [v6 addObjectsFromArray:v11];

    [v6 addObjectsFromArray:sampledLocations2];
  }

  else
  {
    sampledLocations = [(RTLocationDownsamplerTree *)self locations];
    sampledLocations2 = [sampledLocations firstObject];
    v16[0] = sampledLocations2;
    locations = [(RTLocationDownsamplerTree *)self locations];
    lastObject = [locations lastObject];
    v16[1] = lastObject;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  left = [(RTLocationDownsamplerTree *)self left];
  if (left && (v4 = left, [(RTLocationDownsamplerTree *)self right], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x1E696AEC0];
    [(RTLocationDownsamplerTree *)self maximumError];
    v8 = v7;
    maximumErrorIndex = [(RTLocationDownsamplerTree *)self maximumErrorIndex];
    left2 = [(RTLocationDownsamplerTree *)self left];
    v11 = [left2 description];
    right = [(RTLocationDownsamplerTree *)self right];
    v13 = [right description];
    v14 = [v6 stringWithFormat:@"{ME:%f, MI:%lu, left:[%@], right:[%@]}", v8, maximumErrorIndex, v11, v13];
  }

  else
  {
    locations = [(RTLocationDownsamplerTree *)self locations];
    v16 = [locations valueForKey:@"description"];
    left2 = [v16 componentsJoinedByString:{@", (")}];

    v17 = MEMORY[0x1E696AEC0];
    [(RTLocationDownsamplerTree *)self maximumError];
    v14 = [v17 stringWithFormat:@"{ME:%f, MI:%lu, locs:(%@)}", v18, -[RTLocationDownsamplerTree maximumErrorIndex](self, "maximumErrorIndex"), left2];
  }

  return v14;
}

@end