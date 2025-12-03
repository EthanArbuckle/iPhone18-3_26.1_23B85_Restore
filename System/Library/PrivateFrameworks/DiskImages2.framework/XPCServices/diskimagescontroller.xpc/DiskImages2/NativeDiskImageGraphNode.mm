@interface NativeDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)deleteImage;
- (NativeDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)setFilePath:(id)path;
@end

@implementation NativeDiskImageGraphNode

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v5 = [(DIShadowNode *)v3 initWithURL:filePath isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v6 = [NSMutableDictionary dictionaryWithDictionary:dictionary];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___NativeDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, "validateWithDictionary:error:", v6, error) && [v6 validateAndPopObjectForKey:@"FilePath" className:objc_opt_class() isOptional:0 error:error])
  {
    if ([v6 count])
    {
      v7 = [NSString stringWithFormat:@"Validation failed, input contains unexpected data."];
      v8 = [DIError failWithPOSIXCode:22 verboseInfo:v7 error:error];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NativeDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dictionaryCopy = dictionary;
  dirCopy = dir;
  if ([NativeDiskImageGraphNode validateWithDictionary:dictionaryCopy error:error])
  {
    v17.receiver = self;
    v17.super_class = NativeDiskImageGraphNode;
    self = [(DiskImageGraphNode *)&v17 initWithDictionary:dictionaryCopy workDir:dirCopy error:error];
    if (!self)
    {
      goto LABEL_4;
    }

    v10 = [dictionaryCopy objectForKey:@"FilePath"];
    v11 = [NSURL fileURLWithPath:v10 relativeToURL:dirCopy];
    filePath = self->_filePath;
    self->_filePath = v11;

    filePath = [(NativeDiskImageGraphNode *)self filePath];
    LOBYTE(v10) = [filePath checkResourceIsReachableAndReturnError:error];

    if ((v10 & 1) == 0)
    {
      selfCopy = [DIError nilWithPOSIXCode:2 verboseInfo:@"Image referenced in the pstack is unreachable." error:error];
    }

    else
    {
LABEL_4:
      selfCopy = self;
      self = selfCopy;
    }

    v15 = selfCopy;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setFilePath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_filePath, path);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    relativeString = [pathCopy relativeString];
    [pstackDict2 setObject:relativeString forKey:@"FilePath"];
  }
}

- (BOOL)deleteImage
{
  v3 = +[NSFileManager defaultManager];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v16 = 0;
  v5 = [v3 removeItemAtURL:filePath error:&v16];
  v6 = v16;

  if ((v5 & 1) == 0)
  {
    v7 = *__error();
    if (sub_1000E044C())
    {
      v8 = sub_1000E03D8();
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      filePath2 = [(NativeDiskImageGraphNode *)self filePath];
      v10 = [v6 description];
      *buf = 68158466;
      v18 = 39;
      v19 = 2080;
      v20 = "[NativeDiskImageGraphNode deleteImage]";
      v21 = 2112;
      v22 = filePath2;
      v23 = 2112;
      v24 = v10;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E03D8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        filePath3 = [(NativeDiskImageGraphNode *)self filePath];
        v14 = [v6 description];
        *buf = 68158466;
        v18 = 39;
        v19 = 2080;
        v20 = "[NativeDiskImageGraphNode deleteImage]";
        v21 = 2112;
        v22 = filePath3;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%.*s: Failed to delete %@: %@", buf, 0x26u);
      }
    }

    *__error() = v7;
  }

  return v5;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = NativeDiskImageGraphNode;
  toDictionary = [(DiskImageGraphNode *)&v8 toDictionary];
  v4 = [toDictionary mutableCopy];

  filePath = [(NativeDiskImageGraphNode *)self filePath];
  relativePath = [filePath relativePath];
  [v4 setObject:relativePath forKeyedSubscript:@"FilePath"];

  return v4;
}

@end