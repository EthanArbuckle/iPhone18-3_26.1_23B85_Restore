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
  v2 = [(CalDAVPostStreamTask *)self filename];
  v3 = [v2 dataUsingEncoding:1 allowLossyConversion:1];

  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:1];

  return v4;
}

- (id)utf8PercentEscapedFilename
{
  if (utf8PercentEscapedFilename_onceToken != -1)
  {
    [CalDAVPostStreamTask utf8PercentEscapedFilename];
  }

  v3 = [(CalDAVPostStreamTask *)self filename];
  v4 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:utf8PercentEscapedFilename_legalCharacters];

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
  v3 = [(CoreDAVPostOrPutTask *)&v15 additionalHeaderValues];
  if (![(CoreDAVPostOrPutTask *)self forceToServer])
  {
    v4 = [(CalDAVPostStreamTask *)self previousScheduleTag];
    v5 = [CalDAVUtils headersFromHeaders:v3 replacingPreconditionsWithScheduleTag:v4];

    v3 = v5;
  }

  v6 = [(CalDAVPostStreamTask *)self filename];

  if (v6)
  {
    v7 = [v3 mutableCopy];
    v8 = [(CalDAVPostStreamTask *)self filename];
    v9 = [v8 canBeConvertedToEncoding:1];

    v10 = MEMORY[0x277CCACA8];
    if (v9)
    {
      v11 = [(CalDAVPostStreamTask *)self filename];
      v12 = [v10 stringWithFormat:@"attachment filename=%@", v11];;
    }

    else
    {
      v11 = [(CalDAVPostStreamTask *)self lossyAsciiFilename];
      v13 = [(CalDAVPostStreamTask *)self utf8PercentEscapedFilename];
      v12 = [v10 stringWithFormat:@"attachment filename=%@;filename*=utf-8''%@", v11, v13];;
    }

    [v7 setObject:v12 forKey:*MEMORY[0x277CFDB20]];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (id)requestBodyStream
{
  v2 = MEMORY[0x277CBEAE0];
  v3 = [(CoreDAVPostOrPutTask *)self requestDataPayload];
  v4 = [v2 inputStreamWithData:v3];

  return v4;
}

- (id)responseData
{
  v3 = [(CalDAVPostStreamTask *)self responseBodyParser];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CalDAVPostStreamTask *)self responseBodyParser];
    v6 = [v5 octetStreamData];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end