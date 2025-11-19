@interface CAROEMPunchThrough
- (CAROEMPunchThrough)initWithDictionary:(id)a3;
- (CGSize)size;
@end

@implementation CAROEMPunchThrough

- (CAROEMPunchThrough)initWithDictionary:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = CAROEMPunchThrough;
  v5 = [(CAROEMPunchThrough *)&v36 init];
  if (!v5)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v6 = [v4 objectForKey:@"inputStreamUID"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAROEMPunchThrough *)v4 initWithDictionary:v7, v14, v15, v16, v17, v18, v19];
    }

    goto LABEL_28;
  }

  v8 = [v7 copy];
  identifier = v5->_identifier;
  v5->_identifier = v8;

  objc_opt_class();
  v10 = [v4 objectForKey:@"viewArea"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CAROEMPunchThrough *)v4 initWithDictionary:v11, v22, v23, v24, v25, v26, v27];
    }

    goto LABEL_27;
  }

  CRSizeFromAirPlayDictionary(v11, &v5->_size.width);
  objc_opt_class();
  v12 = [v4 objectForKey:@"inputStreamType"];
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v20 = [v13 unsignedIntValue];
  if (!v13 || v20 >= 4)
  {
    v28 = CarGeneralLogging();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(CAROEMPunchThrough *)v4 initWithDictionary:v28, v29, v30, v31, v32, v33, v34];
    }

LABEL_27:
LABEL_28:

    v21 = 0;
    goto LABEL_29;
  }

  v5->_type = v20;

LABEL_21:
  v21 = v5;
LABEL_29:

  return v21;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end