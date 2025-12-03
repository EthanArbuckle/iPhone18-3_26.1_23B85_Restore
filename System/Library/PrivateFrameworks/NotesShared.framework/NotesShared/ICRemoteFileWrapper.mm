@interface ICRemoteFileWrapper
- (BOOL)matchesContentsOfURL:(id)l;
- (BOOL)readFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)writeToURL:(id)l options:(unint64_t)options originalContentsURL:(id)rL error:(id *)error;
- (ICRemoteFileWrapper)initWithCoder:(id)coder;
- (ICRemoteFileWrapper)initWithRemoteURL:(id)l;
- (id)addFileWrapper:(id)wrapper;
- (id)addRegularFileWithContents:(id)contents preferredFilename:(id)filename;
- (id)dataWithError:(id *)error;
- (id)filename;
- (id)keyForFileWrapper:(id)wrapper;
- (id)regularFileContents;
- (id)serializedRepresentation;
- (id)symbolicLinkDestinationURL;
- (void)encodeWithCoder:(id)coder;
- (void)removeFileWrapper:(id)wrapper;
@end

@implementation ICRemoteFileWrapper

- (ICRemoteFileWrapper)initWithRemoteURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ICRemoteFileWrapper;
  v5 = [(ICRemoteFileWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICRemoteFileWrapper *)v5 setRemoteURL:lCopy];
  }

  return v6;
}

- (ICRemoteFileWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteURL"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICRemoteFileWrapper *)self initWithRemoteURL:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    remoteURL = [(ICRemoteFileWrapper *)self remoteURL];
    [coderCopy encodeObject:remoteURL forKey:@"remoteURL"];
  }
}

- (id)filename
{
  remoteURL = [(ICRemoteFileWrapper *)self remoteURL];
  lastPathComponent = [remoteURL lastPathComponent];

  return lastPathComponent;
}

- (BOOL)writeToURL:(id)l options:(unint64_t)options originalContentsURL:(id)rL error:(id *)error
{
  lCopy = l;
  v9 = [(ICRemoteFileWrapper *)self dataWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 writeToURL:lCopy options:0 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)regularFileContents
{
  v6 = 0;
  v2 = [(ICRemoteFileWrapper *)self dataWithError:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_ErrorLoadingDa.isa, v3);
  }

  return v2;
}

- (id)dataWithError:(id *)error
{
  cachedData = [(ICRemoteFileWrapper *)self cachedData];

  if (!cachedData)
  {
    v6 = MEMORY[0x277CBEA90];
    remoteURL = [(ICRemoteFileWrapper *)self remoteURL];
    v8 = [v6 dataWithContentsOfURL:remoteURL options:0 error:error];
    [(ICRemoteFileWrapper *)self setCachedData:v8];
  }

  return [(ICRemoteFileWrapper *)self cachedData];
}

- (id)serializedRepresentation
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 raise:v3 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper serializedRepresentation]", v5}];

  return 0;
}

- (BOOL)matchesContentsOfURL:(id)l
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper matchesContentsOfURL:]", v6}];

  return 0;
}

- (BOOL)readFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper readFromURL:options:error:]", v8}];

  return 0;
}

- (id)addFileWrapper:(id)wrapper
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper addFileWrapper:]", v6}];

  return 0;
}

- (void)removeFileWrapper:(id)wrapper
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper removeFileWrapper:]", v6}];
}

- (id)addRegularFileWithContents:(id)contents preferredFilename:(id)filename
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper addRegularFileWithContents:preferredFilename:]", v7}];

  return 0;
}

- (id)keyForFileWrapper:(id)wrapper
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper keyForFileWrapper:]", v6}];

  return 0;
}

- (id)symbolicLinkDestinationURL
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 raise:v3 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper symbolicLinkDestinationURL]", v5}];

  return 0;
}

@end