@interface DTCPRemoteCache
+ (id)kindToString:(int64_t)string;
+ (id)sharedDTCPRemoteCache;
- (BOOL)accessFileKind:(int64_t)kind device:(id)device fileType:(id)type block:(id)block;
- (DTCPRemoteCache)init;
- (id)_directoryForDevice:(id)device;
- (id)_filePathForKind:(int64_t)kind fileType:(id)type directoryURL:(id)l;
- (void)dealloc;
@end

@implementation DTCPRemoteCache

+ (id)sharedDTCPRemoteCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FD032C;
  block[3] = &unk_278EF2AE8;
  block[4] = self;
  if (qword_27EE843F8 != -1)
  {
    dispatch_once(&qword_27EE843F8, block);
  }

  v2 = qword_27EE843F0;

  return v2;
}

+ (id)kindToString:(int64_t)string
{
  v3 = @"unknown";
  if (string == 1)
  {
    v3 = @"kpep";
  }

  if (string)
  {
    return v3;
  }

  else
  {
    return @"trace";
  }
}

- (DTCPRemoteCache)init
{
  v10.receiver = self;
  v10.super_class = DTCPRemoteCache;
  v2 = [(DTCPRemoteCache *)&v10 init];
  if (v2)
  {
    v2->_locks = malloc_type_calloc(2uLL, 8uLL, 0x80040B8603338uLL);
    v3 = dispatch_semaphore_create(1);
    locks = v2->_locks;
    v5 = *locks;
    *locks = v3;

    v6 = dispatch_semaphore_create(1);
    v7 = v2->_locks;
    v8 = v7[1];
    v7[1] = v6;
  }

  return v2;
}

- (void)dealloc
{
  locks = self->_locks;
  v4 = *locks;
  *locks = 0;

  v5 = self->_locks;
  v6 = v5[1];
  v5[1] = 0;

  v7 = self->_locks;
  if (v7)
  {
    free(v7);
    self->_locks = 0;
  }

  v8.receiver = self;
  v8.super_class = DTCPRemoteCache;
  [(DTCPRemoteCache *)&v8 dealloc];
}

- (id)_directoryForDevice:(id)device
{
  v3 = MEMORY[0x277CCAA00];
  deviceCopy = device;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager URLsForDirectory:13 inDomains:1];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [v7 URLByAppendingPathComponent:@"com.apple.dt.Instruments/device_cache"];
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/tmp/instruments_device_cache"];
  }

  v9 = [v8 URLByAppendingPathComponent:deviceCopy];

  return v9;
}

- (id)_filePathForKind:(int64_t)kind fileType:(id)type directoryURL:(id)l
{
  v7 = MEMORY[0x277CCACA8];
  lCopy = l;
  typeCopy = type;
  v10 = [DTCPRemoteCache kindToString:kind];
  typeCopy = [v7 stringWithFormat:@"%@.%@", v10, typeCopy];

  v12 = [lCopy URLByAppendingPathComponent:typeCopy];

  return v12;
}

- (BOOL)accessFileKind:(int64_t)kind device:(id)device fileType:(id)type block:(id)block
{
  deviceCopy = device;
  typeCopy = type;
  blockCopy = block;
  v22 = deviceCopy;
  v13 = [(DTCPRemoteCache *)self _directoryForDevice:deviceCopy];
  v14 = [(DTCPRemoteCache *)self _filePathForKind:kind fileType:typeCopy directoryURL:v13];
  dispatch_semaphore_wait(self->_locks[kind], 0xFFFFFFFFFFFFFFFFLL);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v13 path];
  v23 = 0;
  LODWORD(block) = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v23];
  v17 = v23;

  path2 = [v14 path];
  if (block)
  {
    v19 = [defaultManager fileExistsAtPath:path2];

    v20 = blockCopy[2](blockCopy, v14, v19);
  }

  else
  {
    NSLog(&cfstr_FailedToCreate_2.isa, path2);

    v20 = 0;
  }

  dispatch_semaphore_signal(self->_locks[kind]);
  return v20;
}

@end