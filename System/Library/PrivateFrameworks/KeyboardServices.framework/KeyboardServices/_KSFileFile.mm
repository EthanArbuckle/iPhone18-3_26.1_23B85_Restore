@interface _KSFileFile
+ (int)protectionFromURL:(id)l;
- (_KSFileFile)initWithCoder:(id)coder;
- (_KSFileFile)initWithURL:(id)l;
- (id)URL;
- (id)contents;
- (id)description;
- (void)consistencyCheck;
- (void)encodeWithCoder:(id)coder;
- (void)loadAttributesFromURL:(id)l;
- (void)restoreToPath:(id)path;
- (void)saveAttributesToURL:(id)l;
- (void)saveTo:(id)to;
@end

@implementation _KSFileFile

+ (int)protectionFromURL:(id)l
{
  v3 = open_dprotected_np([l fileSystemRepresentation], 256, 0, 1);
  if (v3 < 0)
  {
    return -1;
  }

  v4 = v3;
  v5 = fcntl(v3, 63);
  close(v4);
  return v5;
}

- (_KSFileFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _KSFileFile;
  v5 = [(_KSFileEntry *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_offset = [coderCopy decodeIntForKey:@"offset"];
    v5->_size = [coderCopy decodeIntForKey:@"size"];
    v5->_protectionClass = [coderCopy decodeIntForKey:@"class"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastmodified"];
    lastModified = v5->_lastModified;
    v5->_lastModified = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _KSFileFile;
  coderCopy = coder;
  [(_KSFileEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:-[_KSFileEntry addBlobToFile:](self forKey:{"addBlobToFile:", self, v5.receiver, v5.super_class), @"offset"}];
  [coderCopy encodeInt:LODWORD(self->_size) forKey:@"size"];
  [coderCopy encodeInt:self->_protectionClass forKey:@"class"];
  [coderCopy encodeObject:self->_lastModified forKey:@"lastmodified"];
}

- (_KSFileFile)initWithURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v10.receiver = self;
  v10.super_class = _KSFileFile;
  v7 = [(_KSFileEntry *)&v10 initWithName:lastPathComponent];

  if (v7)
  {
    objc_storeStrong(&v7->_url, l);
    memset(&v9, 0, sizeof(v9));
    if (stat([(NSURL *)v7->_url fileSystemRepresentation], &v9) == -1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA138] format:{@"Can't stat %@", v7->_url}];
    }

    v7->_size = v9.st_size;
    [(_KSFileFile *)v7 loadAttributesFromURL:v7->_url];
  }

  return v7;
}

- (void)loadAttributesFromURL:(id)l
{
  v9.receiver = self;
  v9.super_class = _KSFileFile;
  lCopy = l;
  [(_KSFileEntry *)&v9 loadAttributesFromURL:lCopy];
  self->_protectionClass = [objc_opt_class() protectionFromURL:self->_url];
  v8 = 0;
  v5 = [lCopy getResourceValue:&v8 forKey:*MEMORY[0x277CBE7B0] error:0];

  v6 = v8;
  v7 = v8;
  if (v5)
  {
    objc_storeStrong(&self->_lastModified, v6);
  }
}

- (void)saveAttributesToURL:(id)l
{
  v5.receiver = self;
  v5.super_class = _KSFileFile;
  lCopy = l;
  [(_KSFileEntry *)&v5 saveAttributesToURL:lCopy];
  [lCopy setResourceValue:self->_lastModified forKey:*MEMORY[0x277CBE7B0] error:{0, v5.receiver, v5.super_class}];
}

- (void)saveTo:(id)to
{
  toCopy = to;
  contents = [(_KSFileFile *)self contents];
  if (contents)
  {
    v6 = open_dprotected_np([toCopy fileSystemRepresentation], 1573, self->_protectionClass, 0, 384);
    if (v6 < 0)
    {
      v9 = KSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_KSFileFile saveTo:];
      }
    }

    else
    {
      v7 = v6;
      write(v6, [contents bytes], objc_msgSend(contents, "length"));
      close(v7);
      [(_KSFileFile *)self saveAttributesToURL:toCopy];
    }
  }

  else
  {
    v8 = KSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_KSFileFile saveTo:];
    }
  }
}

- (id)contents
{
  url = self->_url;
  if (url)
  {
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:url options:1 error:0];
  }

  else if (self->super._fileBlob)
  {
    v3 = [(NSData *)self->super._fileBlob subdataWithRange:self->_offset, self->_size];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@: Don't have URL or Data", self}];
    v3 = 0;
  }

  return v3;
}

- (id)URL
{
  url = self->_url;
  if (url)
  {
    v3 = url;
    goto LABEL_7;
  }

  if (self->super._fileBlob)
  {
    v3 = [(_KSFileEntry *)self temporaryFileNameForType:@"UserWordStore"];
    v5 = [(NSData *)self->super._fileBlob subdataWithRange:self->_offset, self->_size];
    v6 = [v5 writeToURL:v3 atomically:1];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = _KSFileFile;
  v4 = [(_KSFileEntry *)&v11 description];
  v5 = [(_KSFileFile *)self size];
  v6 = v5;
  url = self->_url;
  if (url)
  {
    v8 = [v3 stringWithFormat:@"<%@ %i bytes; %@>", v4, v5, url];;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"serialised (offset %i)", self->_offset];
    v8 = [v3 stringWithFormat:@"<%@ %i bytes; %@>", v4, v6, v9];;
  }

  return v8;
}

- (void)consistencyCheck
{
  v14.receiver = self;
  v14.super_class = _KSFileFile;
  [(_KSFileEntry *)&v14 consistencyCheck];
  url = self->_url;
  if (url)
  {
    if (![(NSURL *)url checkResourceIsReachableAndReturnError:0])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ refers to URL %@ but it is inaccessible", self, self->_url}];
    }
  }

  else
  {
    fileBlob = self->super._fileBlob;
    if (fileBlob)
    {
      v5 = [(NSData *)fileBlob length];
      offset = self->_offset;
      size = self->_size;
      if (v5 < size + offset)
      {
        v8 = MEMORY[0x277CBEAD8];
        v9 = *MEMORY[0x277CBE658];
        v10 = self->super._fileBlob;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        [v8 raise:v9 format:{@"%@ contains invalid offset %lu size %lu into <%@; %lu bytes>", self, offset, size, v12, -[NSData length](self->super._fileBlob, "length")}];
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ contains no content provider", self, v13}];
    }
  }
}

- (void)restoreToPath:(id)path
{
  pathCopy = path;
  name = [(_KSFileEntry *)self name];
  v5 = [pathCopy URLByAppendingPathComponent:name];

  [(_KSFileFile *)self saveTo:v5];
}

- (void)saveTo:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_2557E2000, v0, v1, "%s  Unable to create file at %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveTo:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_2557E2000, v0, v1, "%s  Unable to find contents of %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end