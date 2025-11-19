@interface ICLocalFileWrapper
- (BOOL)matchesContentsOfURL:(id)a3;
- (BOOL)readFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 originalContentsURL:(id)a5 error:(id *)a6;
- (ICLocalFileWrapper)initWithCoder:(id)a3;
- (ICLocalFileWrapper)initWithLocalURL:(id)a3;
- (id)addFileWrapper:(id)a3;
- (id)addRegularFileWithContents:(id)a3 preferredFilename:(id)a4;
- (id)dataWithError:(id *)a3;
- (id)filename;
- (id)keyForFileWrapper:(id)a3;
- (id)regularFileContents;
- (id)serializedRepresentation;
- (id)symbolicLinkDestinationURL;
- (void)encodeWithCoder:(id)a3;
- (void)removeFileWrapper:(id)a3;
@end

@implementation ICLocalFileWrapper

- (ICLocalFileWrapper)initWithLocalURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICLocalFileWrapper;
  v5 = [(ICLocalFileWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICLocalFileWrapper *)v5 setLocalURL:v4];
  }

  return v6;
}

- (ICLocalFileWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localURL"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICLocalFileWrapper *)self initWithLocalURL:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    v4 = [(ICLocalFileWrapper *)self localURL];
    [v5 encodeObject:v4 forKey:@"localURL"];
  }
}

- (id)filename
{
  v2 = [(ICLocalFileWrapper *)self localURL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 originalContentsURL:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [(ICLocalFileWrapper *)self dataWithError:a6];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 writeToURL:v8 options:0 error:a6];
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

- (id)dataWithError:(id *)a3
{
  v5 = [(ICLocalFileWrapper *)self cachedData];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = [(ICLocalFileWrapper *)self localURL];
    v8 = [v6 dataWithContentsOfURL:v7 options:0 error:a3];
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

- (BOOL)matchesContentsOfURL:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper matchesContentsOfURL:]", v6}];

  return 0;
}

- (BOOL)readFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper readFromURL:options:error:]", v8}];

  return 0;
}

- (id)addFileWrapper:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper addFileWrapper:]", v6}];

  return 0;
}

- (void)removeFileWrapper:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper removeFileWrapper:]", v6}];
}

- (id)addRegularFileWithContents:(id)a3 preferredFilename:(id)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"Cannot call %s on %@", "-[ICLocalFileWrapper addRegularFileWithContents:preferredFilename:]", v7}];

  return 0;
}

- (id)keyForFileWrapper:(id)a3
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