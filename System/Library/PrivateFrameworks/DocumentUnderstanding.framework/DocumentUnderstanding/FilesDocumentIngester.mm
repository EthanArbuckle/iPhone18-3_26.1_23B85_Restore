@interface FilesDocumentIngester
+ (id)getEffectiveFileExtensionForURLWithFileURL:(id)a3;
+ (id)readTextFromImageOn:(id)a3;
@end

@implementation FilesDocumentIngester

+ (id)getEffectiveFileExtensionForURLWithFileURL:(id)a3
{
  v3 = sub_232CE8C00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE8BB0();
  sub_232C1EE24();
  (*(v4 + 8))(v7, v3);
  v8 = sub_232CE9D20();

  return v8;
}

+ (id)readTextFromImageOn:(id)a3
{
  sub_232CE9D50();
  static FilesDocumentIngester.readTextFromImage(on:)();
  v4 = v3;

  if (v4)
  {
    v5 = sub_232CE9D20();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end