@interface HKClinicalDocumentIndexingUtilities
+ (id)contentStringFromDOCXData:(id)data error:(id *)error;
+ (id)contentStringFromHTMLData:(id)data error:(id *)error;
@end

@implementation HKClinicalDocumentIndexingUtilities

+ (id)contentStringFromHTMLData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  v7 = htmlParseDoc([v6 cStringUsingEncoding:4], "UTF-8");
  if (!v7)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = @"Failed to construct html document from the given data";
LABEL_13:
    [v19 hk_assignError:error code:100 format:v20];
    Content = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v9 = xmlXPathNewContext(v7);
  if (!v9)
  {
    xmlFreeDoc(v8);
    v19 = MEMORY[0x277CCA9B8];
    v20 = @"Failed to construct xpath context from the given doc";
    goto LABEL_13;
  }

  v10 = v9;
  v11 = MEMORY[0x2530908A0]("//script | //style", v9);
  if (!v11)
  {
    xmlXPathFreeContext(v10);
    xmlFreeDoc(v8);
    v19 = MEMORY[0x277CCA9B8];
    v20 = @"Failed to evaluation xpath expression with the given doc";
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *(v11 + 8);
  if (v13 && *v13 >= 1)
  {
    v14 = 8 * (*v13 - 1);
    do
    {
      v15 = *(v13 + 8);
      v16 = *(v15 + v14);
      *(v15 + v14) = 0;
      xmlUnlinkNode(v16);
      xmlFreeNode(v16);
      v14 -= 8;
    }

    while (v14 != -8);
  }

  RootElement = xmlDocGetRootElement(v8);
  Content = xmlNodeGetContent(RootElement);
  xmlXPathFreeObject(v12);
  xmlXPathFreeContext(v10);
  xmlFreeDoc(v8);
  if (Content)
  {
    Content = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:Content length:strlen(Content) encoding:4];
  }

LABEL_14:

  return Content;
}

+ (id)contentStringFromDOCXData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x277CCDE88]) initWithData:dataCopy];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  obj = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __71__HKClinicalDocumentIndexingUtilities_contentStringFromDOCXData_error___block_invoke;
  v28[3] = &unk_2796E2CC0;
  v8 = v7;
  v29 = v8;
  v30 = &v32;
  [v6 enumerateEntriesWithError:&obj block:v28];
  objc_storeStrong(&v37, obj);
  v9 = v33[5];
  if (v9)
  {
    v10 = v9;
    firstObject = v10;
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = firstObject;
      goto LABEL_29;
    }

    _HKLogDroppedError();
    goto LABEL_12;
  }

  firstObject = [v8 firstObject];
  if (!firstObject)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:@"Failed to extract xml data from docx file"];
LABEL_12:
    v13 = 0;
    goto LABEL_29;
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:firstObject encoding:4];
  v15 = xmlParseDoc([v14 cStringUsingEncoding:4]);
  v16 = v15;
  if (v15)
  {
    v17 = xmlXPathNewContext(v15);
    if (v17)
    {
@end