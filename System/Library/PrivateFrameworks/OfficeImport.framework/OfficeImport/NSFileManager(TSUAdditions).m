@interface NSFileManager(TSUAdditions)
- (uint64_t)tsu_linkOrCopyItemAtURL:()TSUAdditions toURL:error:;
@end

@implementation NSFileManager(TSUAdditions)

- (uint64_t)tsu_linkOrCopyItemAtURL:()TSUAdditions toURL:error:
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(TSUAdditions) tsu_linkOrCopyItemAtURL:toURL:error:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSFileManager_TSUAdditions.m"];
    [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:16 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "srcURL"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(TSUAdditions) tsu_linkOrCopyItemAtURL:toURL:error:]"];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSFileManager_TSUAdditions.m"];
  [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:17 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "dstURL"];

  +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_3:
  if ([v8 tsu_isOnAPFSVolume] && (objc_msgSend(v8, "tsu_isOnSameVolumeAs:", v10) & 1) != 0 || (objc_msgSend(a1, "linkItemAtURL:toURL:error:", v8, v10, 0) & 1) == 0)
  {
    v18 = 0;
    v12 = [a1 copyItemAtURL:v8 toURL:v10 error:&v18];
    v11 = v18;
    if (a5 && (v12 & 1) == 0)
    {
      v11 = v11;
      v12 = 0;
      *a5 = v11;
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  return v12;
}

@end