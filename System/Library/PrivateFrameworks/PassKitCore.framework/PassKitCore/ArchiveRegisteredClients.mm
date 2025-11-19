@interface ArchiveRegisteredClients
@end

@implementation ArchiveRegisteredClients

intptr_t ___ArchiveRegisteredClients_block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _ArchiveFilePath();
  v2 = _RegisteredClients();
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      v4 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Archiving Scheduled Activities", v10, 2u);
      }

      v5 = MEMORY[0x1E696ACC8];
      v6 = _RegisteredClients();
      v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

      if (v7)
      {
        [v7 writeToFile:v1 atomically:1];
      }

      PKExcludePathFromBackup(v1);
    }

    else
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      v8 = _ArchiveFilePath();
      [v7 removeItemAtPath:v8 error:0];
    }
  }

  objc_autoreleasePoolPop(v0);
  return dispatch_semaphore_signal(qword_1ED6D1918);
}

void ___ArchiveRegisteredClients_block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = qword_1ED6D1918;
  qword_1ED6D1918 = v0;
}

@end