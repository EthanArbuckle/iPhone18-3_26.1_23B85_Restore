@interface BLAssetContainerFactory
+ (id)assetContainerForDownloadKind:(id)a3 isPermlink:(BOOL)a4;
+ (void)_overrideAssetContainersForTestingWithEbookAssetContainer:(id)a3 audiobookAssetContainer:(id)a4 pdfAssetContainer:(id)a5;
@end

@implementation BLAssetContainerFactory

+ (void)_overrideAssetContainersForTestingWithEbookAssetContainer:(id)a3 audiobookAssetContainer:(id)a4 pdfAssetContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 assetContainerForDownloadKind:&stru_100125DB0 isPermlink:0];
  v12 = qword_10013EBB0;
  qword_10013EBB0 = v8;
  v16 = v8;

  v13 = qword_10013EBC0;
  qword_10013EBC0 = v9;
  v14 = v9;

  v15 = qword_10013EBC8;
  qword_10013EBC8 = v10;
}

+ (id)assetContainerForDownloadKind:(id)a3 isPermlink:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (qword_10013EBD0 != -1)
  {
    sub_1000CB3B0();
  }

  if ([BLDownloadKindEBook isEqual:v5])
  {
    goto LABEL_4;
  }

  if ([BLDownloadKindAudiobook isEqual:v5])
  {
    v6 = qword_10013EBC0;
    goto LABEL_9;
  }

  if ([BLDownloadKindPDF isEqual:v5])
  {
    v6 = qword_10013EBC8;
    goto LABEL_9;
  }

  v9 = BLUtilitiesLog();
  v10 = v9;
  if (v4)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BLAssetContainerFactory] Permalink download, returning epub asset container.", &v11, 2u);
    }

LABEL_4:
    v6 = qword_10013EBB0;
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[BLAssetContainerFactory] unexpected download kind %@, returning nil asset container.", &v11, 0xCu);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

@end