@interface FAChildAccountCutOffAgeResponse
- (FAChildAccountCutOffAgeResponse)init;
- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)response data:(id)data;
- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)response data:(id)data bodyIsPlist:(BOOL)plist;
- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)response data:(id)data mediaType:(id)type;
- (NSString)childCutOffAgeLocalized;
- (int64_t)childCutOffAge;
@end

@implementation FAChildAccountCutOffAgeResponse

- (NSString)childCutOffAgeLocalized
{
  selfCopy = self;
  sub_1B7104A6C();

  v3 = sub_1B715E070();

  return v3;
}

- (int64_t)childCutOffAge
{
  selfCopy = self;
  v3 = sub_1B7104BC4();

  return v3;
}

- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)response data:(id)data
{
  dataCopy = data;
  if (data)
  {
    responseCopy = response;
    v7 = dataCopy;
    dataCopy = sub_1B715DB50();
    v9 = v8;
  }

  else
  {
    responseCopy2 = response;
    v9 = 0xF000000000000000;
  }

  return FAChildAccountCutOffAgeResponse.init(httpResponse:data:)(response, dataCopy, v9);
}

- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)response data:(id)data bodyIsPlist:(BOOL)plist
{
  dataCopy = data;
  if (data)
  {
    responseCopy = response;
    v9 = dataCopy;
    dataCopy = sub_1B715DB50();
    v11 = v10;
  }

  else
  {
    responseCopy2 = response;
    v11 = 0xF000000000000000;
  }

  return FAChildAccountCutOffAgeResponse.init(httpResponse:data:bodyIsPlist:)(response, dataCopy, v11, plist);
}

- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)response data:(id)data mediaType:(id)type
{
  dataCopy = data;
  if (!data)
  {
    responseCopy = response;
    typeCopy = type;
    v12 = 0xF000000000000000;
    if (type)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0;
    return FAChildAccountCutOffAgeResponse.init(httpResponse:data:mediaType:)(response, dataCopy, v12, v13, v15);
  }

  responseCopy2 = response;
  typeCopy2 = type;
  v10 = dataCopy;
  dataCopy = sub_1B715DB50();
  v12 = v11;

  if (!type)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1B715E0A0();
  v15 = v14;

  return FAChildAccountCutOffAgeResponse.init(httpResponse:data:mediaType:)(response, dataCopy, v12, v13, v15);
}

- (FAChildAccountCutOffAgeResponse)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FAChildAccountCutOffAgeResponse();
  return [(FAChildAccountCutOffAgeResponse *)&v3 init];
}

@end