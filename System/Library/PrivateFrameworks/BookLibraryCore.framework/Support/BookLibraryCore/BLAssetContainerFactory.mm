@interface BLAssetContainerFactory
+ (id)assetContainerForDownloadKind:(id)kind isPermlink:(BOOL)permlink;
+ (void)_overrideAssetContainersForTestingWithEbookAssetContainer:(id)container audiobookAssetContainer:(id)assetContainer pdfAssetContainer:(id)pdfAssetContainer;
@end

@implementation BLAssetContainerFactory

+ (void)_overrideAssetContainersForTestingWithEbookAssetContainer:(id)container audiobookAssetContainer:(id)assetContainer pdfAssetContainer:(id)pdfAssetContainer
{
  containerCopy = container;
  assetContainerCopy = assetContainer;
  pdfAssetContainerCopy = pdfAssetContainer;
  v11 = [self assetContainerForDownloadKind:&stru_100125DB0 isPermlink:0];
  v12 = qword_10013EBB0;
  qword_10013EBB0 = containerCopy;
  v16 = containerCopy;

  v13 = qword_10013EBC0;
  qword_10013EBC0 = assetContainerCopy;
  v14 = assetContainerCopy;

  v15 = qword_10013EBC8;
  qword_10013EBC8 = pdfAssetContainerCopy;
}

+ (id)assetContainerForDownloadKind:(id)kind isPermlink:(BOOL)permlink
{
  permlinkCopy = permlink;
  kindCopy = kind;
  if (qword_10013EBD0 != -1)
  {
    sub_1000CB3B0();
  }

  if ([BLDownloadKindEBook isEqual:kindCopy])
  {
    goto LABEL_4;
  }

  if ([BLDownloadKindAudiobook isEqual:kindCopy])
  {
    v6 = qword_10013EBC0;
    goto LABEL_9;
  }

  if ([BLDownloadKindPDF isEqual:kindCopy])
  {
    v6 = qword_10013EBC8;
    goto LABEL_9;
  }

  v9 = BLUtilitiesLog();
  v10 = v9;
  if (permlinkCopy)
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
    v12 = kindCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[BLAssetContainerFactory] unexpected download kind %@, returning nil asset container.", &v11, 0xCu);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

@end