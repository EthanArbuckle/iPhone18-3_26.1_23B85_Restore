@interface MakeFileTransferAnchor
@end

@implementation MakeFileTransferAnchor

void ___MakeFileTransferAnchor_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MakeFileTransferAnchor___formatter;
  _MakeFileTransferAnchor___formatter = v0;

  [_MakeFileTransferAnchor___formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS"];
  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_MakeFileTransferAnchor___formatter setTimeZone:v2];
}

@end