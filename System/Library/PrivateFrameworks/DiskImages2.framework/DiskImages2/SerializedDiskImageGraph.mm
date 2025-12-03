@interface SerializedDiskImageGraph
+ (id)getRelativeIfContainedWithChildURL:(id)l parentURL:(id)rL;
- (BOOL)savePstackWithError:(id *)error;
- (SerializedDiskImageGraph)initWithBaseImageURL:(id)l pstackURL:(id)rL tag:(id)tag error:(id *)error;
- (SerializedDiskImageGraph)initWithGraphDB:(id)b pstackURL:(id)l error:(id *)error;
- (SerializedDiskImageGraph)initWithPluginName:(id)name pluginParams:(id)params pstackURL:(id)l tag:(id)tag error:(id *)error;
- (SerializedDiskImageGraph)initWithPstackURL:(id)l error:(id *)error;
- (id)URLRelativeToPstackParentWithURL:(id)l;
- (id)cloneToURL:(id)l error:(id *)error;
@end

@implementation SerializedDiskImageGraph

+ (id)getRelativeIfContainedWithChildURL:(id)l parentURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if ([lCopy isFileURL])
  {
    uRLByStandardizingPath = [lCopy URLByStandardizingPath];
    path = [uRLByStandardizingPath path];

    uRLByStandardizingPath2 = [rLCopy URLByStandardizingPath];
    path2 = [uRLByStandardizingPath2 path];

    if (path2 && (v11 = [path length], v11 > objc_msgSend(path2, "length")) && objc_msgSend(path, "hasPrefix:", path2))
    {
      v12 = MEMORY[0x277CBEBC0];
      v13 = [path substringFromIndex:{objc_msgSend(path2, "length") + 1}];
      absoluteURL = [v12 fileURLWithPath:v13 relativeToURL:rLCopy];
    }

    else
    {
      absoluteURL = [lCopy absoluteURL];
    }
  }

  else
  {
    absoluteURL = lCopy;
  }

  return absoluteURL;
}

- (SerializedDiskImageGraph)initWithBaseImageURL:(id)l pstackURL:(id)rL tag:(id)tag error:(id *)error
{
  rLCopy = rL;
  tagCopy = tag;
  lCopy = l;
  v14 = objc_opt_class();
  uRLByDeletingLastPathComponent = [rLCopy URLByDeletingLastPathComponent];
  v16 = [v14 getRelativeIfContainedWithChildURL:lCopy parentURL:uRLByDeletingLastPathComponent];

  v19.receiver = self;
  v19.super_class = SerializedDiskImageGraph;
  v17 = [(DiskImageGraph *)&v19 initWithBaseImageURL:v16 tag:tagCopy error:error];

  if (v17)
  {
    objc_storeStrong(&v17->_pstackURL, rL);
  }

  return v17;
}

- (SerializedDiskImageGraph)initWithPluginName:(id)name pluginParams:(id)params pstackURL:(id)l tag:(id)tag error:(id *)error
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = SerializedDiskImageGraph;
  v14 = [(DiskImageGraph *)&v17 initWithPluginName:name pluginParams:params tag:tag error:error];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pstackURL, l);
  }

  return v15;
}

- (SerializedDiskImageGraph)initWithGraphDB:(id)b pstackURL:(id)l error:(id *)error
{
  lCopy = l;
  bCopy = b;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v14.receiver = self;
  v14.super_class = SerializedDiskImageGraph;
  v12 = [(DiskImageGraph *)&v14 initWithGraphDB:bCopy workDir:uRLByDeletingLastPathComponent error:error];

  if (v12)
  {
    objc_storeStrong(&v12->_pstackURL, l);
  }

  return v12;
}

- (id)cloneToURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = SerializedDiskImageGraph;
  v7 = [(DiskImageGraph *)&v13 cloneToURL:lCopy error:error];
  if (v7)
  {
    pstackURL = [(SerializedDiskImageGraph *)self pstackURL];
    lastPathComponent = [pstackURL lastPathComponent];
    v10 = [lCopy URLByAppendingPathComponent:lastPathComponent];

    if ([DiskImageGraph saveToPlistWithDictionary:v7 URL:v10 error:error])
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)savePstackWithError:(id *)error
{
  pstackURL = [(SerializedDiskImageGraph *)self pstackURL];
  LOBYTE(error) = [(DiskImageGraph *)self savePstackWithURL:pstackURL error:error];

  return error;
}

- (id)URLRelativeToPstackParentWithURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_class();
  pstackURL = [(SerializedDiskImageGraph *)self pstackURL];
  uRLByDeletingLastPathComponent = [pstackURL URLByDeletingLastPathComponent];
  v8 = [v5 getRelativeIfContainedWithChildURL:lCopy parentURL:uRLByDeletingLastPathComponent];

  return v8;
}

- (SerializedDiskImageGraph)initWithPstackURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:lCopy error:0];
  if (v7)
  {
    v12 = 0;
    v8 = [DiskImageGraph loadPlistDictFromFileHandle:v7 dict:&v12 error:error];
    v9 = v12;
    if (v8)
    {
      self = [(SerializedDiskImageGraph *)self initWithGraphDB:v9 pstackURL:lCopy error:error];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    [DiskImageGraph failWithNoPstackError:error];
    selfCopy = 0;
  }

  return selfCopy;
}

@end