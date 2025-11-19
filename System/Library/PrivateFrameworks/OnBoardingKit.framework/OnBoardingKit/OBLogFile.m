@interface OBLogFile
@end

@implementation OBLogFile

uint64_t ___OBLogFile_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _OBLogFile_dateFormatter;
  _OBLogFile_dateFormatter = v0;

  [_OBLogFile_dateFormatter setDateStyle:1];
  v2 = _OBLogFile_dateFormatter;

  return [v2 setTimeStyle:1];
}

@end