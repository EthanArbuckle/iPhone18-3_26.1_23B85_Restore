@interface KGErrorMarker
- (BOOL)markerExists;
- (KGErrorMarker)initWithDatabaseURL:(id)l;
- (id)readComment;
- (void)createWithComment:(id)comment;
- (void)removeMarker;
@end

@implementation KGErrorMarker

- (void)removeMarker
{
  fileSystemRepresentation = [(NSURL *)self->_fileURL fileSystemRepresentation];

  unlink(fileSystemRepresentation);
}

- (void)createWithComment:(id)comment
{
  v10 = *MEMORY[0x277D85DE8];
  commentCopy = comment;
  v5 = open([(NSURL *)self->_fileURL fileSystemRepresentation], 514, 384);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    [commentCopy getCString:__s maxLength:128 encoding:4];
    v7 = strlen(__s);
    write(v6, __s, v7 + 1);
    close(v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)readComment
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = open([(NSURL *)self->_fileURL fileSystemRepresentation], 0);
  if (v2 < 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = read(v2, v10, 0x80uLL);
    if (v4 < 1)
    {
      v5 = 0;
    }

    else
    {
      v10[v4] = 0;
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 length:v4 encoding:4];
    }

    close(v3);
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_2867AAB68;
  }

  v7 = v6;

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)markerExists
{
  v2 = open([(NSURL *)self->_fileURL fileSystemRepresentation], 0);
  v3 = v2;
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3 >= 0;
}

- (KGErrorMarker)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = KGErrorMarker;
  v5 = [(KGErrorMarker *)&v9 init];
  if (v5)
  {
    v6 = [lCopy URLByAppendingPathExtension:@"errormarker"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

@end