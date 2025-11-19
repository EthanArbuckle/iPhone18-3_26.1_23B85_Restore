@interface BLSinfHelper
+ (id)writeSinfForDownloadID:(id)a3 epubRightsData:(id)a4 error:(id *)a5;
@end

@implementation BLSinfHelper

+ (id)writeSinfForDownloadID:(id)a3 epubRightsData:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [BLDownloadManager downloadDirectoryForDownloadID:v6];
  v9 = [v8 URLByAppendingPathComponent:@"sinf.xml"];
  v10 = BLServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Sinf-Helper]: Writing Sinf for download at targetURL: %@", &v13, 0x16u);
  }

  v11 = [v7 writeToURL:v9 atomically:1];
  if ((v11 & 1) == 0)
  {

    v9 = 0;
  }

  return v9;
}

@end