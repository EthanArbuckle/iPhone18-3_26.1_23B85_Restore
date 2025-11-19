@interface FAChildAccountCutOffAgeResponse
- (FAChildAccountCutOffAgeResponse)init;
- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)a3 data:(id)a4 bodyIsPlist:(BOOL)a5;
- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)a3 data:(id)a4 mediaType:(id)a5;
- (NSString)childCutOffAgeLocalized;
- (int64_t)childCutOffAge;
@end

@implementation FAChildAccountCutOffAgeResponse

- (NSString)childCutOffAgeLocalized
{
  v2 = self;
  sub_1B7104A6C();

  v3 = sub_1B715E070();

  return v3;
}

- (int64_t)childCutOffAge
{
  v2 = self;
  v3 = sub_1B7104BC4();

  return v3;
}

- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = v4;
    v4 = sub_1B715DB50();
    v9 = v8;
  }

  else
  {
    v10 = a3;
    v9 = 0xF000000000000000;
  }

  return FAChildAccountCutOffAgeResponse.init(httpResponse:data:)(a3, v4, v9);
}

- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)a3 data:(id)a4 bodyIsPlist:(BOOL)a5
{
  v6 = a4;
  if (a4)
  {
    v8 = a3;
    v9 = v6;
    v6 = sub_1B715DB50();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v11 = 0xF000000000000000;
  }

  return FAChildAccountCutOffAgeResponse.init(httpResponse:data:bodyIsPlist:)(a3, v6, v11, a5);
}

- (FAChildAccountCutOffAgeResponse)initWithHTTPResponse:(id)a3 data:(id)a4 mediaType:(id)a5
{
  v6 = a4;
  if (!a4)
  {
    v16 = a3;
    v17 = a5;
    v12 = 0xF000000000000000;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0;
    return FAChildAccountCutOffAgeResponse.init(httpResponse:data:mediaType:)(a3, v6, v12, v13, v15);
  }

  v8 = a3;
  v9 = a5;
  v10 = v6;
  v6 = sub_1B715DB50();
  v12 = v11;

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1B715E0A0();
  v15 = v14;

  return FAChildAccountCutOffAgeResponse.init(httpResponse:data:mediaType:)(a3, v6, v12, v13, v15);
}

- (FAChildAccountCutOffAgeResponse)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FAChildAccountCutOffAgeResponse();
  return [(FAChildAccountCutOffAgeResponse *)&v3 init];
}

@end