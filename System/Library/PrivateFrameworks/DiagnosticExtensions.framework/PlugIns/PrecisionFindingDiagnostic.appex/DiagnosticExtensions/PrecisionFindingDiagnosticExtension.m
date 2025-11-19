@interface PrecisionFindingDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation PrecisionFindingDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = os_log_create("com.apple.CoreMotionAlgorithms", "DiagnosticExtension");
  v4 = [NSURL URLWithString:@"/private/var/mobile/Library/Caches/com.apple.CoreMotionAlgorithms/"];
  v5 = +[NSFileManager defaultManager];
  v16 = NSURLContentModificationDateKey;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  v15 = 0;
  v7 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v6 options:0 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = v3;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100000DE8(v8, v9);
    }

    v10 = &__NSArray0__struct;
  }

  else
  {
    v9 = [v7 sortedArrayUsingComparator:&stru_100004108];
    v10 = +[NSMutableArray array];
    if ([v9 count])
    {
      v11 = [v9 firstObject];
      v12 = [v11 path];
      v13 = [DEAttachmentItem attachmentWithPath:v12];
      [v10 addObject:v13];
    }
  }

  return v10;
}

@end