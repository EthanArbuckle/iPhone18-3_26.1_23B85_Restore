@interface DTCPRemoteCache
+ (id)kindToString:(int64_t)a3;
+ (id)sharedDTCPRemoteCache;
- (BOOL)accessFileKind:(int64_t)a3 device:(id)a4 fileType:(id)a5 block:(id)a6;
- (DTCPRemoteCache)init;
- (id)_directoryForDevice:(id)a3;
- (id)_filePathForKind:(int64_t)a3 fileType:(id)a4 directoryURL:(id)a5;
- (void)dealloc;
@end

@implementation DTCPRemoteCache

+ (id)sharedDTCPRemoteCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FD032C;
  block[3] = &unk_278EF2AE8;
  block[4] = a1;
  if (qword_27EE843F8 != -1)
  {
    dispatch_once(&qword_27EE843F8, block);
  }

  v2 = qword_27EE843F0;

  return v2;
}

+ (id)kindToString:(int64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"kpep";
  }

  if (a3)
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

- (id)_directoryForDevice:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 URLsForDirectory:13 inDomains:1];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [v7 URLByAppendingPathComponent:@"com.apple.dt.Instruments/device_cache"];
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/tmp/instruments_device_cache"];
  }

  v9 = [v8 URLByAppendingPathComponent:v4];

  return v9;
}

- (id)_filePathForKind:(int64_t)a3 fileType:(id)a4 directoryURL:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = [DTCPRemoteCache kindToString:a3];
  v11 = [v7 stringWithFormat:@"%@.%@", v10, v9];

  v12 = [v8 URLByAppendingPathComponent:v11];

  return v12;
}

- (BOOL)accessFileKind:(int64_t)a3 device:(id)a4 fileType:(id)a5 block:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22 = v10;
  v13 = [(DTCPRemoteCache *)self _directoryForDevice:v10];
  v14 = [(DTCPRemoteCache *)self _filePathForKind:a3 fileType:v11 directoryURL:v13];
  dispatch_semaphore_wait(self->_locks[a3], 0xFFFFFFFFFFFFFFFFLL);
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v13 path];
  v23 = 0;
  LODWORD(a6) = [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v23];
  v17 = v23;

  v18 = [v14 path];
  if (a6)
  {
    v19 = [v15 fileExistsAtPath:v18];

    v20 = v12[2](v12, v14, v19);
  }

  else
  {
    NSLog(&cfstr_FailedToCreate_2.isa, v18);

    v20 = 0;
  }

  dispatch_semaphore_signal(self->_locks[a3]);
  return v20;
}

@end