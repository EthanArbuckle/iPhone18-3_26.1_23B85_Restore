@interface ICLocalFileWrapper
- (BOOL)matchesContentsOfURL:(id)l;
- (BOOL)readFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)writeToURL:(id)l options:(unint64_t)options originalContentsURL:(id)rL error:(id *)error;
- (ICLocalFileWrapper)initWithCoder:(id)coder;
- (ICLocalFileWrapper)initWithLocalURL:(id)l;
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

@implementation ICLocalFileWrapper

- (ICLocalFileWrapper)initWithLocalURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ICLocalFileWrapper;
  v5 = [(ICLocalFileWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICLocalFileWrapper *)v5 setLocalURL:lCopy];
  }

  return v6;
}

- (ICLocalFileWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localURL"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICLocalFileWrapper *)self initWithLocalURL:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    localURL = [(ICLocalFileWrapper *)self localURL];
    [coderCopy encodeObject:localURL forKey:@"localURL"];
  }
}

- (id)filename
{
  localURL = [(ICLocalFileWrapper *)self localURL];
  lastPathComponent = [localURL lastPathComponent];

  return lastPathComponent;
}

- (BOOL)writeToURL:(id)l options:(unint64_t)options originalContentsURL:(id)rL error:(id *)error
{
  lCopy = l;
  v9 = [(ICLocalFileWrapper *)self dataWithError:error];
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
  v2 = [(ICLocalFileWrapper *)self dataWithError:&v6];
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
  cachedData = [(ICLocalFileWrapper *)self cachedData];

  if (!cachedData)
  {
    v6 = MEMORY[0x277CBEA90];
    localURL = [(ICLocalFileWrapper *)self localURL];
    v8 = [v6 dataWithContentsOfURL:localURL options:0 error:error];
    [(ICLocalFileWrapper *)self setCachedData:v8];
  }

  return [(ICLocalFileWrapper *)self cachedData];
}

- (id)serializedRepresentation
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 raise:v3 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper serializedRepresentation]", v5}];

  return 0;
}

- (BOOL)matchesContentsOfURL:(id)l
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper matchesContentsOfURL:]", v6}];

  return 0;
}

- (BOOL)readFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper readFromURL:options:error:]", v8}];

  return 0;
}

- (id)addFileWrapper:(id)wrapper
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper addFileWrapper:]", v6}];

  return 0;
}

- (void)removeFileWrapper:(id)wrapper
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper removeFileWrapper:]", v6}];
}

- (id)addRegularFileWithContents:(id)contents preferredFilename:(id)filename
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper addRegularFileWithContents:preferredFilename:]", v7}];

  return 0;
}

- (id)keyForFileWrapper:(id)wrapper
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper keyForFileWrapper:]", v6}];

  return 0;
}

- (id)symbolicLinkDestinationURL
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 raise:v3 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper symbolicLinkDestinationURL]", v5}];

  return 0;
}

@end