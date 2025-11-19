@interface CPLChangeSessionUpdate
- (CPLChangeSessionUpdate)initWithCoder:(id)a3;
- (CPLChangeSessionUpdate)initWithStore:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLChangeSessionUpdate

- (void)encodeWithCoder:(id)a3
{
  libraryVersion = self->_libraryVersion;
  v5 = a3;
  [v5 encodeObject:libraryVersion forKey:@"libraryVersion"];
  [v5 encodeObject:self->_queuedDate forKey:@"date"];
}

- (CPLChangeSessionUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CPLChangeSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v12 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryVersion"];
  libraryVersion = v5->_libraryVersion;
  v5->_libraryVersion = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  queuedDate = v5->_queuedDate;
  v5->_queuedDate = v8;

  if (!v5->_libraryVersion)
  {
    v10 = 0;
  }

  else
  {
LABEL_3:
    v10 = v5;
  }

  return v10;
}

- (CPLChangeSessionUpdate)initWithStore:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLChangeSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v11 init];
  if (v5)
  {
    v6 = [v4 createNewLibraryVersion];
    libraryVersion = v5->_libraryVersion;
    v5->_libraryVersion = v6;

    v8 = [MEMORY[0x1E695DF00] date];
    queuedDate = v5->_queuedDate;
    v5->_queuedDate = v8;
  }

  return v5;
}

@end