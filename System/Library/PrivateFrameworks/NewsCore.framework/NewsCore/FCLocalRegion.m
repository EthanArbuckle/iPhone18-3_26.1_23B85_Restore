@interface FCLocalRegion
- (BOOL)isEqual:(id)a3;
- (CGRect)rect;
- (CGRect)rectForEntireRegion;
- (CLLocationCoordinate2D)centerLocationCoordinateForEntireRegion;
- (FCLocalRegion)init;
- (FCLocalRegion)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)addLocalArea:(id)a3;
@end

@implementation FCLocalRegion

- (FCLocalRegion)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FCLocalRegion;
  v5 = [(FCLocalRegion *)&v23 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"id", 0);
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = FCAppConfigurationStringValue(v4, @"name", 0);
    name = v5->_name;
    v5->_name = v8;

    v10 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"tagIds", 0);
    autoFavoriteTagIDs = v5->_autoFavoriteTagIDs;
    v5->_autoFavoriteTagIDs = v10;

    v12 = +[FCRestrictions sharedInstance];
    v13 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"localVersionedTags", 0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __36__FCLocalRegion_initWithDictionary___block_invoke;
    v21[3] = &unk_1E7C37328;
    v22 = v12;
    v14 = v12;
    v15 = [v13 fc_arrayByTransformingWithBlock:v21];
    localVersionedTagIDs = v5->_localVersionedTagIDs;
    v5->_localVersionedTagIDs = v15;

    v17 = [MEMORY[0x1E695DFA8] set];
    areas = v5->_areas;
    v5->_areas = v17;

    v19 = *(MEMORY[0x1E695F058] + 16);
    v5->_rect.origin = *MEMORY[0x1E695F058];
    v5->_rect.size = v19;
  }

  return v5;
}

id __36__FCLocalRegion_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FCLocalVersionedTag alloc] initWithDictionary:v3];

  if ([*(a1 + 32) isNewsVersionAllowedWithMinNewsVersion:-[FCLocalVersionedTag minVersion](v4 maxNewsVersion:{"minVersion"), -[FCLocalVersionedTag maxVersion](v4, "maxVersion")}])
  {
    v5 = [(FCLocalVersionedTag *)v4 identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FCLocalRegion)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCLocalRegion init]";
    v10 = 2080;
    v11 = "FCLocalRegion.m";
    v12 = 1024;
    v13 = 57;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCLocalRegion init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  autoFavoriteTagIDs = self->_autoFavoriteTagIDs;
  return [v3 stringWithFormat:@"%@: id: %@, name: %@, autoFavoriteTagIDs: %@, localVersionTagIDs: %@", v4, identifier, self->_name, autoFavoriteTagIDs, self->_localVersionedTagIDs];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(FCLocalRegion *)self identifier];
    v8 = [v6 identifier];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCLocalRegion *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)addLocalArea:(id)a3
{
  v4 = a3;
  v5 = [(FCLocalRegion *)self areas];
  [v5 addObject:v4];
}

- (CGRect)rectForEntireRegion
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(FCLocalRegion *)self areas];
  if (![v3 count])
  {

    goto LABEL_21;
  }

  [(FCLocalRegion *)self rect];
  IsEmpty = CGRectIsEmpty(v39);

  if (!IsEmpty)
  {
LABEL_21:
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __36__FCLocalRegion_rectForEntireRegion__block_invoke;
    v35 = &unk_1E7C37350;
    v36 = self;
    goto LABEL_24;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(FCLocalRegion *)self areas];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = 90.0;
    v10 = -90.0;
    v11 = 180.0;
    v12 = -180.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v14 isBboxValid])
        {
          [v14 minLat];
          if (v15 < v9)
          {
            [v14 minLat];
            v9 = v16;
          }

          [v14 maxLat];
          if (v17 > v10)
          {
            [v14 maxLat];
            v10 = v18;
          }

          [v14 minLon];
          if (v19 < v11)
          {
            [v14 minLon];
            v11 = v20;
          }

          [v14 maxLon];
          if (v21 > v12)
          {
            [v14 maxLon];
            v12 = v22;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 90.0;
    v10 = -90.0;
    v11 = 180.0;
    v12 = -180.0;
  }

  [(FCLocalRegion *)self setRect:v11, v9, v12 - v11, v10 - v9];
LABEL_24:
  [(FCLocalRegion *)self rect];
  v27 = *MEMORY[0x1E69E9840];
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CLLocationCoordinate2D)centerLocationCoordinateForEntireRegion
{
  [(FCLocalRegion *)self rectForEntireRegion];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidY = CGRectGetMidY(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidX = CGRectGetMidX(v14);

  v10 = CLLocationCoordinate2DMake(MidY, MidX);
  longitude = v10.longitude;
  latitude = v10.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end