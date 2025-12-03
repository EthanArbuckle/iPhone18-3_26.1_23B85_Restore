@interface BLSinfHelper
+ (id)writeSinfForDownloadID:(id)d epubRightsData:(id)data error:(id *)error;
@end

@implementation BLSinfHelper

+ (id)writeSinfForDownloadID:(id)d epubRightsData:(id)data error:(id *)error
{
  dCopy = d;
  dataCopy = data;
  v8 = [BLDownloadManager downloadDirectoryForDownloadID:dCopy];
  v9 = [v8 URLByAppendingPathComponent:@"sinf.xml"];
  v10 = BLServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = dCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Sinf-Helper]: Writing Sinf for download at targetURL: %@", &v13, 0x16u);
  }

  v11 = [dataCopy writeToURL:v9 atomically:1];
  if ((v11 & 1) == 0)
  {

    v9 = 0;
  }

  return v9;
}

@end