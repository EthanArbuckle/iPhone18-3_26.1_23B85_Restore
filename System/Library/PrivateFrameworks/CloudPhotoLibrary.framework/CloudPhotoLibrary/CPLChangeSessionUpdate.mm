@interface CPLChangeSessionUpdate
- (CPLChangeSessionUpdate)initWithCoder:(id)coder;
- (CPLChangeSessionUpdate)initWithStore:(id)store;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLChangeSessionUpdate

- (void)encodeWithCoder:(id)coder
{
  libraryVersion = self->_libraryVersion;
  coderCopy = coder;
  [coderCopy encodeObject:libraryVersion forKey:@"libraryVersion"];
  [coderCopy encodeObject:self->_queuedDate forKey:@"date"];
}

- (CPLChangeSessionUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CPLChangeSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v12 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryVersion"];
  libraryVersion = v5->_libraryVersion;
  v5->_libraryVersion = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
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

- (CPLChangeSessionUpdate)initWithStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = CPLChangeSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v11 init];
  if (v5)
  {
    createNewLibraryVersion = [storeCopy createNewLibraryVersion];
    libraryVersion = v5->_libraryVersion;
    v5->_libraryVersion = createNewLibraryVersion;

    date = [MEMORY[0x1E695DF00] date];
    queuedDate = v5->_queuedDate;
    v5->_queuedDate = date;
  }

  return v5;
}

@end