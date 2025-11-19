@interface ICRemoteFileWrapper
- (BOOL)matchesContentsOfURL:(id)a3;
- (BOOL)readFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 originalContentsURL:(id)a5 error:(id *)a6;
- (ICRemoteFileWrapper)initWithCoder:(id)a3;
- (ICRemoteFileWrapper)initWithRemoteURL:(id)a3;
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

@implementation ICRemoteFileWrapper

- (ICRemoteFileWrapper)initWithRemoteURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICRemoteFileWrapper;
  v5 = [(ICRemoteFileWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICRemoteFileWrapper *)v5 setRemoteURL:v4];
  }

  return v6;
}

- (ICRemoteFileWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteURL"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICRemoteFileWrapper *)self initWithRemoteURL:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    v4 = [(ICRemoteFileWrapper *)self remoteURL];
    [v5 encodeObject:v4 forKey:@"remoteURL"];
  }
}

- (id)filename
{
  v2 = [(ICRemoteFileWrapper *)self remoteURL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 originalContentsURL:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [(ICRemoteFileWrapper *)self dataWithError:a6];
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
  v2 = [(ICRemoteFileWrapper *)self dataWithError:&v6];
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
  v5 = [(ICRemoteFileWrapper *)self cachedData];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = [(ICRemoteFileWrapper *)self remoteURL];
    v8 = [v6 dataWithContentsOfURL:v7 options:0 error:a3];
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

- (BOOL)matchesContentsOfURL:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper matchesContentsOfURL:]", v6}];

  return 0;
}

- (BOOL)readFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper readFromURL:options:error:]", v8}];

  return 0;
}

- (id)addFileWrapper:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper addFileWrapper:]", v6}];

  return 0;
}

- (void)removeFileWrapper:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper removeFileWrapper:]", v6}];
}

- (id)addRegularFileWithContents:(id)a3 preferredFilename:(id)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"Cannot call %s on %@", "-[ICRemoteFileWrapper addRegularFileWithContents:preferredFilename:]", v7}];

  return 0;
}

- (id)keyForFileWrapper:(id)a3
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