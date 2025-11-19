@interface CPLOSLogSubsystem
@end

@implementation CPLOSLogSubsystem

void ___CPLOSLogSubsystem_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = os_log_create("com.apple.photos.cpl", "cpl");
  v1 = _CPLGenericLog;
  _CPLGenericLog = v0;

  v2 = MGCopyAnswer();
  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  v5 = _CPLGenericLog;
  if (os_log_type_enabled(_CPLGenericLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138413058;
    v8 = @"CloudPhotoLibrary-812.40.117";
    v9 = 2112;
    v10 = v2;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Running %@ on %@ (%@ %@)", &v7, 0x2Au);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end