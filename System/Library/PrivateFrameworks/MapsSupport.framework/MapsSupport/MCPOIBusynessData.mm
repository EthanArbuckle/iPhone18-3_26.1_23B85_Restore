@interface MCPOIBusynessData
+ (id)cacheFileURL;
+ (id)readLastFromDisk:(id *)disk;
- ($F24F406B2B787EFB06265DBA3D28CBD5)leechedGEOCoordinate2D;
- (MCPOIBusynessData)initWithCoder:(id)coder;
- (MCPOIBusynessData)initWithLocation:(id)location visit:(id)visit;
- (id)description;
- (id)leechedGEOLocation;
- (void)encodeWithCoder:(id)coder;
- (void)writeToDisk;
@end

@implementation MCPOIBusynessData

+ (id)cacheFileURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];
  v4 = [firstObject stringByAppendingPathComponent:@"com.apple.geocorrectiond"];

  v14 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v14];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = +[NSFileManager defaultManager];
  v13 = 0;
  v8 = [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v13];
  v9 = v13;

  if (v8)
  {

LABEL_4:
    v9 = [v4 stringByAppendingPathComponent:@"poi-busyness.last"];
    v10 = [NSURL fileURLWithPath:v9];
    goto LABEL_8;
  }

  v11 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to create cache dir %@: %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (MCPOIBusynessData)initWithLocation:(id)location visit:(id)visit
{
  locationCopy = location;
  visitCopy = visit;
  v12.receiver = self;
  v12.super_class = MCPOIBusynessData;
  v9 = [(MCPOIBusynessData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_leechedLocation, location);
    objc_storeStrong(&v10->_visit, visit);
  }

  return v10;
}

- (MCPOIBusynessData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MCPOIBusynessData;
  v5 = [(MCPOIBusynessData *)&v12 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loc"];
  leechedLocation = v5->_leechedLocation;
  v5->_leechedLocation = v6;

  [coderCopy decodeDoubleForKey:@"ts"];
  v5->_uploadedTimestamp = v8;
  if (v5->_leechedLocation && v8 > 1.0)
  {
LABEL_7:
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  leechedLocation = self->_leechedLocation;
  coderCopy = coder;
  [coderCopy encodeObject:leechedLocation forKey:@"loc"];
  [coderCopy encodeDouble:@"ts" forKey:self->_uploadedTimestamp];
}

+ (id)readLastFromDisk:(id *)disk
{
  v4 = +[GEOKeyBagNotification sharedObject];
  v5 = [v4 canAccessFilesWithProtection:1];

  if (v5)
  {
    cacheFileURL = [objc_opt_class() cacheFileURL];
    v7 = +[NSFileManager defaultManager];
    path = [cacheFileURL path];
    v9 = [v7 fileExistsAtPath:path];

    if (v9)
    {
      v22 = 0;
      v10 = [[NSData alloc] initWithContentsOfURL:cacheFileURL options:0 error:&v22];
      v11 = v22;
      v12 = v11;
      if (!v10 || v11)
      {
        v18 = GEOGetPOIBusynessLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v24 = cacheFileURL;
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed read %@: %@", buf, 0x16u);
        }

        if (disk)
        {
          v19 = v12;
          v16 = 0;
          *disk = v12;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v21 = 0;
        v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v21];
        v12 = v21;
        v14 = GEOGetPOIBusynessLog();
        v15 = v14;
        if (!v13 || v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v24 = cacheFileURL;
            v25 = 2112;
            v26 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed unarchive %@: %@", buf, 0x16u);
          }

          v16 = 0;
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138477827;
            v24 = v13;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Successfuly read %{private}@", buf, 0xCu);
          }

          v13[8] = 1;
          v16 = v13;
        }
      }
    }

    else
    {
      v12 = GEOGetPOIBusynessLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = cacheFileURL;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Last location does not exist at %@", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    v17 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Refusing to read last location, device is not unlocked", buf, 2u);
    }

    if (disk)
    {
      [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
      *disk = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)writeToDisk
{
  if (self->_written)
  {
    v3 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Already wrote %{private}@", buf, 0xCu);
    }
  }

  else
  {
    self->_uploadedTimestamp = CFAbsoluteTimeGetCurrent();
    v12 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
    v5 = v12;
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      cacheFileURL = [objc_opt_class() cacheFileURL];
      v11 = 0;
      v8 = [v4 writeToURL:cacheFileURL options:0x20000000 error:&v11];
      v3 = v11;
      v9 = GEOGetPOIBusynessLog();
      v10 = v9;
      if (!v8 || v3)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138478339;
          selfCopy4 = self;
          v15 = 2112;
          v16 = cacheFileURL;
          v17 = 2112;
          v18 = v3;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to write %{private}@ to %@: %@", buf, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Successfuly wrote %{private}@", buf, 0xCu);
        }

        self->_written = 1;
      }
    }

    else
    {
      v3 = v5;
      cacheFileURL = GEOGetPOIBusynessLog();
      if (os_log_type_enabled(cacheFileURL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        selfCopy4 = self;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, cacheFileURL, OS_LOG_TYPE_ERROR, "Failed to archive %{private}@: %@", buf, 0x16u);
      }
    }
  }
}

- (id)leechedGEOLocation
{
  [(MCPOIBusynessData *)self leechedGEOCoordinate2D];
  v5 = [[GEOLocation alloc] initWithGEOCoordinate:{v3, v4}];
  [(CLLocation *)self->_leechedLocation altitude];
  [v5 setAltitude:v6];
  [(CLLocation *)self->_leechedLocation horizontalAccuracy];
  [v5 setHorizontalAccuracy:?];
  [(CLLocation *)self->_leechedLocation verticalAccuracy];
  [v5 setVerticalAccuracy:?];
  timestamp = [(CLLocation *)self->_leechedLocation timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  [v5 setTimestamp:?];

  referenceFrame = [(CLLocation *)self->_leechedLocation referenceFrame];
  if (referenceFrame == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (referenceFrame == 2);
  }

  [v5 setReferenceFrame:v9];

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)leechedGEOCoordinate2D
{
  [(CLLocation *)self->_leechedLocation coordinate];
  v4 = v3;
  [(CLLocation *)self->_leechedLocation coordinate];
  v6 = v4;
  result.var1 = v5;
  result.var0 = v6;
  return result;
}

- (id)description
{
  [(MCPOIBusynessData *)self leechedGEOCoordinate2D];
  v4 = v3;
  v6 = v5;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [NSString stringWithFormat:@"<%@ %p %f, %f at %.02f>", v8, self, v4, v6, *&self->_uploadedTimestamp];

  return v9;
}

@end