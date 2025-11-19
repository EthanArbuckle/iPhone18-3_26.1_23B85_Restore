@interface SerializedDiskImageGraph
+ (id)getRelativeIfContainedWithChildURL:(id)a3 parentURL:(id)a4;
- (BOOL)savePstackWithError:(id *)a3;
- (SerializedDiskImageGraph)initWithBaseImageURL:(id)a3 pstackURL:(id)a4 tag:(id)a5 error:(id *)a6;
- (SerializedDiskImageGraph)initWithGraphDB:(id)a3 pstackURL:(id)a4 error:(id *)a5;
- (SerializedDiskImageGraph)initWithPluginName:(id)a3 pluginParams:(id)a4 pstackURL:(id)a5 tag:(id)a6 error:(id *)a7;
- (SerializedDiskImageGraph)initWithPstackURL:(id)a3 error:(id *)a4;
- (id)URLRelativeToPstackParentWithURL:(id)a3;
- (id)cloneToURL:(id)a3 error:(id *)a4;
@end

@implementation SerializedDiskImageGraph

+ (id)getRelativeIfContainedWithChildURL:(id)a3 parentURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isFileURL])
  {
    v7 = [v5 URLByStandardizingPath];
    v8 = [v7 path];

    v9 = [v6 URLByStandardizingPath];
    v10 = [v9 path];

    if (v10 && (v11 = [v8 length], v11 > objc_msgSend(v10, "length")) && objc_msgSend(v8, "hasPrefix:", v10))
    {
      v12 = MEMORY[0x277CBEBC0];
      v13 = [v8 substringFromIndex:{objc_msgSend(v10, "length") + 1}];
      v14 = [v12 fileURLWithPath:v13 relativeToURL:v6];
    }

    else
    {
      v14 = [v5 absoluteURL];
    }
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

- (SerializedDiskImageGraph)initWithBaseImageURL:(id)a3 pstackURL:(id)a4 tag:(id)a5 error:(id *)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = objc_opt_class();
  v15 = [v11 URLByDeletingLastPathComponent];
  v16 = [v14 getRelativeIfContainedWithChildURL:v13 parentURL:v15];

  v19.receiver = self;
  v19.super_class = SerializedDiskImageGraph;
  v17 = [(DiskImageGraph *)&v19 initWithBaseImageURL:v16 tag:v12 error:a6];

  if (v17)
  {
    objc_storeStrong(&v17->_pstackURL, a4);
  }

  return v17;
}

- (SerializedDiskImageGraph)initWithPluginName:(id)a3 pluginParams:(id)a4 pstackURL:(id)a5 tag:(id)a6 error:(id *)a7
{
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SerializedDiskImageGraph;
  v14 = [(DiskImageGraph *)&v17 initWithPluginName:a3 pluginParams:a4 tag:a6 error:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pstackURL, a5);
  }

  return v15;
}

- (SerializedDiskImageGraph)initWithGraphDB:(id)a3 pstackURL:(id)a4 error:(id *)a5
{
  v9 = a4;
  v10 = a3;
  v11 = [v9 URLByDeletingLastPathComponent];
  v14.receiver = self;
  v14.super_class = SerializedDiskImageGraph;
  v12 = [(DiskImageGraph *)&v14 initWithGraphDB:v10 workDir:v11 error:a5];

  if (v12)
  {
    objc_storeStrong(&v12->_pstackURL, a4);
  }

  return v12;
}

- (id)cloneToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = SerializedDiskImageGraph;
  v7 = [(DiskImageGraph *)&v13 cloneToURL:v6 error:a4];
  if (v7)
  {
    v8 = [(SerializedDiskImageGraph *)self pstackURL];
    v9 = [v8 lastPathComponent];
    v10 = [v6 URLByAppendingPathComponent:v9];

    if ([DiskImageGraph saveToPlistWithDictionary:v7 URL:v10 error:a4])
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

- (BOOL)savePstackWithError:(id *)a3
{
  v5 = [(SerializedDiskImageGraph *)self pstackURL];
  LOBYTE(a3) = [(DiskImageGraph *)self savePstackWithURL:v5 error:a3];

  return a3;
}

- (id)URLRelativeToPstackParentWithURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(SerializedDiskImageGraph *)self pstackURL];
  v7 = [v6 URLByDeletingLastPathComponent];
  v8 = [v5 getRelativeIfContainedWithChildURL:v4 parentURL:v7];

  return v8;
}

- (SerializedDiskImageGraph)initWithPstackURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v6 error:0];
  if (v7)
  {
    v12 = 0;
    v8 = [DiskImageGraph loadPlistDictFromFileHandle:v7 dict:&v12 error:a4];
    v9 = v12;
    if (v8)
    {
      self = [(SerializedDiskImageGraph *)self initWithGraphDB:v9 pstackURL:v6 error:a4];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [DiskImageGraph failWithNoPstackError:a4];
    v10 = 0;
  }

  return v10;
}

@end