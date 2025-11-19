@interface MBPeerDoneRequest
- (MBPeerDoneRequest)initWithDictionary:(id)a3 error:(id *)a4;
- (MBPeerDoneRequest)initWithError:(id)a3;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerDoneRequest

- (id)dictionaryRepresentation
{
  v3 = [(MBPeerDoneRequest *)self error];

  if (v3)
  {
    v4 = [(MBPeerDoneRequest *)self error];
    v11 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v11];
    v6 = v11;

    if (v5)
    {
      v12 = @"MBErrorData";
      v13 = v5;
      v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    }

    else
    {
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = [(MBPeerDoneRequest *)self error];
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to archive error %@: %@", buf, 0x16u);

        v10 = [(MBPeerDoneRequest *)self error];
        _MBLog();
      }

      v7 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  return v7;
}

- (MBPeerDoneRequest)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MBPeerDoneRequest;
  v6 = [(MBPeerEmptyMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (MBPeerDoneRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = MBPeerDoneRequest;
  v7 = [(MBPeerEmptyMessage *)&v17 init];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"MBErrorData"];
    if (v8)
    {
      v16 = 0;
      v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v8 error:&v16];
      v10 = v16;
      if (v9)
      {
        v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        error = v7->_error;
        v7->_error = v11;
      }

      else
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to unarchive error data %@: %@", buf, 0x16u);
          _MBLog();
        }

        if (a4)
        {
          v14 = v10;
          *a4 = v10;
        }

        error = v7;
        v7 = 0;
      }
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = [(MBPeerDoneRequest *)self error];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  if (v3)
  {
    [NSString stringWithFormat:@"<%s: %p; error=%@>", Name, self, v3];
  }

  else
  {
    [NSString stringWithFormat:@"<%s: %p>", Name, self, v8];
  }
  v6 = ;

  return v6;
}

@end