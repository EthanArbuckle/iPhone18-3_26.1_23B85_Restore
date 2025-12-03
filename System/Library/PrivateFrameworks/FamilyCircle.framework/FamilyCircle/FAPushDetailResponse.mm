@interface FAPushDetailResponse
- (BOOL)_BOOLeanValueOfObject:(id)object;
- (BOOL)isSuccess;
- (BOOL)showDetailsOption;
- (BOOL)showMessage;
- (FAPushDetailResponse)initWithDictionary:(id)dictionary;
- (FAPushDetailResponse)initWithHTTPResponse:(id)response data:(id)data;
- (NSURL)launchURLFromServer;
- (id)description;
@end

@implementation FAPushDetailResponse

- (FAPushDetailResponse)initWithHTTPResponse:(id)response data:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = FAPushDetailResponse;
  v8 = [(FAPushDetailResponse *)&v16 initWithHTTPResponse:response data:dataCopy bodyIsPlist:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, data);
    if (dataCopy)
    {
      v15 = 0;
      v10 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v15];
      v11 = v15;
      p_super = &v9->_response->super;
      v9->_response = v10;
    }

    else
    {
      v11 = [NSError fa_familyErrorWithCode:-1016];
      p_super = _FALogSystem();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_100079748(p_super);
      }
    }

    if (v11)
    {
      v13 = _FALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10007978C(v11, v13);
      }
    }
  }

  return v9;
}

- (BOOL)isSuccess
{
  v2 = [(NSDictionary *)self->_response objectForKeyedSubscript:@"status"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)showMessage
{
  selfCopy = self;
  v3 = [(NSDictionary *)self->_response objectForKeyedSubscript:@"show-message"];
  LOBYTE(selfCopy) = [(FAPushDetailResponse *)selfCopy _BOOLeanValueOfObject:v3];

  return selfCopy;
}

- (BOOL)showDetailsOption
{
  selfCopy = self;
  v3 = [(NSDictionary *)self->_response objectForKeyedSubscript:@"show-details-option"];
  LOBYTE(selfCopy) = [(FAPushDetailResponse *)selfCopy _BOOLeanValueOfObject:v3];

  return selfCopy;
}

- (NSURL)launchURLFromServer
{
  v2 = [(NSDictionary *)self->_response objectForKeyedSubscript:@"launchURL"];
  if (v2)
  {
    v3 = [NSURLComponents componentsWithString:v2];
    scheme = [v3 scheme];
    v5 = [&off_1000AB270 containsObject:scheme];

    if (v5)
    {
      v6 = [v3 URL];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [[NSString alloc] initWithData:self->_data encoding:4];
  v4 = [NSString stringWithFormat:@"FAPushDetailResponse - status: (%lu), body: (%@)", [(FAPushDetailResponse *)self statusCode], v3];

  return v4;
}

- (BOOL)_BOOLeanValueOfObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    bOOLValue = [objectCopy BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (FAPushDetailResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FAPushDetailResponse;
  v6 = [(FAPushDetailResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, dictionary);
  }

  return v7;
}

@end