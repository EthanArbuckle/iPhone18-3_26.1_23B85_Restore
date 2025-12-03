@interface CalDAVPostStreamTask
- (id)additionalHeaderValues;
- (id)lossyAsciiFilename;
- (id)requestBodyStream;
- (id)responseData;
- (id)utf8PercentEscapedFilename;
@end

@implementation CalDAVPostStreamTask

- (id)lossyAsciiFilename
{
  filename = [(CalDAVPostStreamTask *)self filename];
  v3 = [filename dataUsingEncoding:1 allowLossyConversion:1];

  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:1];

  return v4;
}

- (id)utf8PercentEscapedFilename
{
  if (utf8PercentEscapedFilename_onceToken != -1)
  {
    [CalDAVPostStreamTask utf8PercentEscapedFilename];
  }

  filename = [(CalDAVPostStreamTask *)self filename];
  v4 = [filename stringByAddingPercentEncodingWithAllowedCharacters:utf8PercentEscapedFilename_legalCharacters];

  return v4;
}

void __50__CalDAVPostStreamTask_utf8PercentEscapedFilename__block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithRange:{97, 26}];
  [v0 addCharactersInRange:{65, 26}];
  [v0 addCharactersInRange:{48, 10}];
  v1 = utf8PercentEscapedFilename_legalCharacters;
  utf8PercentEscapedFilename_legalCharacters = v0;
}

- (id)additionalHeaderValues
{
  v15.receiver = self;
  v15.super_class = CalDAVPostStreamTask;
  additionalHeaderValues = [(CoreDAVPostOrPutTask *)&v15 additionalHeaderValues];
  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    previousScheduleTag = [(CalDAVPostStreamTask *)self previousScheduleTag];
    v5 = [CalDAVUtils headersFromHeaders:additionalHeaderValues replacingPreconditionsWithScheduleTag:previousScheduleTag];

    additionalHeaderValues = v5;
  }

  filename = [(CalDAVPostStreamTask *)self filename];

  if (filename)
  {
    v7 = [additionalHeaderValues mutableCopy];
    filename2 = [(CalDAVPostStreamTask *)self filename];
    v9 = [filename2 canBeConvertedToEncoding:1];

    v10 = MEMORY[0x277CCACA8];
    if (v9)
    {
      filename3 = [(CalDAVPostStreamTask *)self filename];
      v12 = [v10 stringWithFormat:@"attachment filename=%@", filename3];;
    }

    else
    {
      filename3 = [(CalDAVPostStreamTask *)self lossyAsciiFilename];
      utf8PercentEscapedFilename = [(CalDAVPostStreamTask *)self utf8PercentEscapedFilename];
      v12 = [v10 stringWithFormat:@"attachment filename=%@;filename*=utf-8''%@", filename3, utf8PercentEscapedFilename];;
    }

    [v7 setObject:v12 forKey:*MEMORY[0x277CFDB20]];
  }

  else
  {
    v7 = additionalHeaderValues;
  }

  return v7;
}

- (id)requestBodyStream
{
  v2 = MEMORY[0x277CBEAE0];
  requestDataPayload = [(CoreDAVPostOrPutTask *)self requestDataPayload];
  v4 = [v2 inputStreamWithData:requestDataPayload];

  return v4;
}

- (id)responseData
{
  responseBodyParser = [(CalDAVPostStreamTask *)self responseBodyParser];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    responseBodyParser2 = [(CalDAVPostStreamTask *)self responseBodyParser];
    octetStreamData = [responseBodyParser2 octetStreamData];
  }

  else
  {
    octetStreamData = 0;
  }

  return octetStreamData;
}

@end