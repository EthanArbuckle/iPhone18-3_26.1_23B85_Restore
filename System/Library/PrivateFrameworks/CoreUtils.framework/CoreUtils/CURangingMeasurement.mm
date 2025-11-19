@interface CURangingMeasurement
- (CURangingMeasurement)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CURangingMeasurement

- (id)description
{
  v34 = 0;
  NSAppendPrintF(&v34, "ID %@, D %.3f m, H %.3f, V %.3f", v2, v3, v4, v5, v6, v7, self->_identifier);
  v9 = v34;
  v16 = v9;
  v17 = *&self->_ptsScore;
  if (*&v17 != 0.0)
  {
    v33 = v9;
    NSAppendPrintF(&v33, ", PTS %.3f", v10, v11, v12, v13, v14, v15, v17);
    v18 = v33;

    v16 = v18;
  }

  flags = self->_flags;
  if (flags)
  {
    v32 = v16;
    NSAppendPrintF(&v32, ", %#{flags}", v10, v11, v12, v13, v14, v15, flags);
    v20 = v32;

    v16 = v20;
  }

  error = self->_error;
  if (error)
  {
    v31 = v16;
    v22 = error;
    NSAppendPrintF(&v31, ", %{error}", v23, v24, v25, v26, v27, v28, v22);
    v29 = v31;

    v16 = v29;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_distanceMeters != 0.0)
  {
    [v4 encodeDouble:@"dM" forKey:?];
    v4 = v9;
  }

  if (self->_distanceError != 0.0)
  {
    [v9 encodeDouble:@"dE" forKey:?];
    v4 = v9;
  }

  error = self->_error;
  if (error)
  {
    [v9 encodeObject:error forKey:@"e"];
    v4 = v9;
  }

  flags = self->_flags;
  if (flags)
  {
    [v9 encodeInt64:flags forKey:@"fl"];
    v4 = v9;
  }

  if (self->_horizontalAngle != 0.0)
  {
    [v9 encodeDouble:@"hA" forKey:?];
    v4 = v9;
  }

  if (self->_horizontalError != 0.0)
  {
    [v9 encodeDouble:@"hE" forKey:?];
    v4 = v9;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v9 encodeObject:identifier forKey:@"id"];
    v4 = v9;
  }

  if (self->_verticalAngle != 0.0)
  {
    [v9 encodeDouble:@"vA" forKey:?];
    v4 = v9;
  }

  if (self->_verticalError != 0.0)
  {
    [v9 encodeDouble:@"vE" forKey:?];
    v4 = v9;
  }

  if (self->_ptsScore != 0.0)
  {
    [v9 encodeDouble:@"pS" forKey:?];
    v4 = v9;
  }

  timestampTicks = self->_timestampTicks;
  if (timestampTicks)
  {
    [v9 encodeInt64:timestampTicks forKey:@"ts"];
    v4 = v9;
  }
}

- (CURangingMeasurement)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CURangingMeasurement;
  v5 = [(CURangingMeasurement *)&v27 init];
  if (v5)
  {
    v6 = v4;
    if ([v6 containsValueForKey:@"dM"])
    {
      [v6 decodeDoubleForKey:@"dM"];
      v5->_distanceMeters = v7;
    }

    v8 = v6;
    if ([v8 containsValueForKey:@"dE"])
    {
      [v8 decodeDoubleForKey:@"dE"];
      v5->_distanceError = v9;
    }

    v10 = v8;
    v11 = objc_opt_class();
    NSDecodeObjectIfPresent(v10, @"e", v11, &v5->_error);

    v28 = 0;
    if (NSDecodeSInt64RangedIfPresent(v10, @"fl", 0, 0xFFFFFFFFLL, &v28))
    {
      v5->_flags = v28;
    }

    v12 = v10;
    if ([v12 containsValueForKey:@"hA"])
    {
      [v12 decodeDoubleForKey:@"hA"];
      v5->_horizontalAngle = v13;
    }

    v14 = v12;
    if ([v14 containsValueForKey:@"hE"])
    {
      [v14 decodeDoubleForKey:@"hE"];
      v5->_horizontalError = v15;
    }

    v16 = v14;
    v17 = objc_opt_class();
    NSDecodeObjectIfPresent(v16, @"id", v17, &v5->_identifier);

    v18 = v16;
    if ([v18 containsValueForKey:@"vA"])
    {
      [v18 decodeDoubleForKey:@"vA"];
      v5->_verticalAngle = v19;
    }

    v20 = v18;
    if ([v20 containsValueForKey:@"vE"])
    {
      [v20 decodeDoubleForKey:@"vE"];
      v5->_verticalError = v21;
    }

    v22 = v20;
    if ([v22 containsValueForKey:@"pS"])
    {
      [v22 decodeDoubleForKey:@"pS"];
      v5->_ptsScore = v23;
    }

    v24 = v22;
    if ([v24 containsValueForKey:@"ts"])
    {
      v5->_timestampTicks = [v24 decodeInt64ForKey:@"ts"];
    }

    v25 = v5;
  }

  return v5;
}

@end