@interface DBThemeAssetDocument
- (DBThemeAssetDocument)init;
- (DBThemeAssetDocument)initWithDocumentURL:(id)a3;
- (NSDictionary)documentInfo;
- (NSURL)documentURL;
@end

@implementation DBThemeAssetDocument

- (NSDictionary)documentInfo
{
  if (*(self + OBJC_IVAR___DBThemeAssetDocument_documentInfo))
  {

    v2 = sub_248383880();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (DBThemeAssetDocument)initWithDocumentURL:(id)a3
{
  v3 = sub_248381170();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381120();
  return DBThemeAssetDocument.init(documentURL:)(v5);
}

- (NSURL)documentURL
{
  v2 = sub_248381170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381120();
  v6 = sub_2483810F0();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (DBThemeAssetDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end