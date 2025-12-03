@interface CSVTop
+ (CGSize)_improveSize:(CGSize)result;
+ (void)fillHTMLArchiveForCSVData:(id)data fileName:(id)name archiver:(id)archiver;
+ (void)fillHTMLArchiveForCSVString:(id)string fileName:(id)name archiver:(id)archiver;
+ (void)fillHTMLArchiveForOfficeFile:(id)file orData:(id)data dataFileName:(id)name dataFormat:(unint64_t)format archiver:(id)archiver;
@end

@implementation CSVTop

+ (CGSize)_improveSize:(CGSize)result
{
  if (result.height / result.width <= 10.0)
  {
    if (result.height / result.width < 0.1)
    {
      result.width = result.height * 10.0;
    }
  }

  else
  {
    result.height = result.width * 10.0;
  }

  if (result.height > 2000.0)
  {
    result.height = 2000.0;
  }

  if (result.width > 2000.0)
  {
    result.width = 2000.0;
  }

  return result;
}

+ (void)fillHTMLArchiveForCSVString:(id)string fileName:(id)name archiver:(id)archiver
{
  nameCopy = name;
  archiverCopy = archiver;
  v10 = objc_autoreleasePoolPush();
  v22 = 0;
  v11 = [string copyCsvRows:&v22 rowLimit:10000];
  v12 = +[CMXmlUtils copyXhtmlDocument];
  v13 = objc_alloc_init(CMState);
  [(CMState *)v13 setSourceFormat:7];
  -[CMState setIsThumbnail:](v13, "setIsThumbnail:", [archiverCopy isThumbnail]);
  v14 = [CSVMapper alloc];
  v15 = [(CSVMapper *)v14 initWithRows:v11 fileName:nameCopy columnCount:v22 archiver:archiverCopy];
  rootElement = [v12 rootElement];
  [(CSVMapper *)v15 mapAt:rootElement withState:v13];

  [(CSVMapper *)v15 pageSize];
  [self _improveSize:?];
  v18 = v17;
  v20 = v19;
  xMLString = [v12 XMLString];
  [archiverCopy setHTMLWidth:v18];
  [archiverCopy setHTMLHeight:v20];
  [archiverCopy pushText:xMLString toPath:0];
  [archiverCopy commitDataAtPath:0];
  [archiverCopy closeResourceAtPath:0];

  objc_autoreleasePoolPop(v10);
}

+ (void)fillHTMLArchiveForOfficeFile:(id)file orData:(id)data dataFileName:(id)name dataFormat:(unint64_t)format archiver:(id)archiver
{
  fileCopy = file;
  dataCopy = data;
  nameCopy = name;
  archiverCopy = archiver;
  if (fileCopy && !dataCopy)
  {
    dataCopy = [MEMORY[0x277CBEA90] dataWithContentsOfFile:fileCopy options:1 error:0];
  }

  if (dataCopy)
  {
    v14 = fileCopy;
    if (!fileCopy)
    {
      v14 = nameCopy;
    }

    lastPathComponent = [v14 lastPathComponent];
    [self fillHTMLArchiveForCSVData:dataCopy fileName:lastPathComponent archiver:archiverCopy];
  }
}

+ (void)fillHTMLArchiveForCSVData:(id)data fileName:(id)name archiver:(id)archiver
{
  dataCopy = data;
  nameCopy = name;
  archiverCopy = archiver;
  if ([archiverCopy isThumbnail] && objc_msgSend(dataCopy, "length") > 0x4000)
  {
    v10 = [dataCopy subdataWithRange:{0, 0x4000}];

    dataCopy = v10;
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  if (!v11)
  {
    v12 = QLGuessEncodingForTextFileFromData();
    if (v12 == -1)
    {
      v13 = 513;
    }

    else
    {
      v13 = v12;
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:CFStringConvertEncodingToNSStringEncoding(v13)];
    v11 = v14;
    if (v13 != 513 && !v14)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:5];
    }

    if (!v11)
    {
      v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA040] reason:0 userInfo:0];
      objc_exception_throw(v15);
    }
  }

  [self fillHTMLArchiveForCSVString:v11 fileName:nameCopy archiver:archiverCopy];
}

@end