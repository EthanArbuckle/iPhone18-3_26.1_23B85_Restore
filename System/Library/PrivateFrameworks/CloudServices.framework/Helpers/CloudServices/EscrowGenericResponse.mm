@interface EscrowGenericResponse
- (EscrowGenericResponse)initWithURLResponse:(id)response data:(id)data;
- (NSString)message;
- (id)errorMessage;
- (int64_t)errorCode;
- (int64_t)status;
- (int64_t)version;
@end

@implementation EscrowGenericResponse

- (EscrowGenericResponse)initWithURLResponse:(id)response data:(id)data
{
  responseCopy = response;
  v33.receiver = self;
  v33.super_class = EscrowGenericResponse;
  v7 = [(LakituResponse *)&v33 initWithURLResponse:responseCopy data:data];
  v8 = v7;
  if (v7)
  {
    requestUUID = [(LakituResponse *)v7 requestUUID];
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [responseCopy URL];
      host = [v11 host];
      v13 = [responseCopy URL];
      path = [v13 path];
      *buf = 138412802;
      v35 = host;
      v36 = 2112;
      v37 = path;
      v38 = 2112;
      v39 = requestUUID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "got response from host %@ path %@ uuid %@", buf, 0x20u);
    }

    error = [(LakituResponse *)v8 error];
    if (error || [(EscrowGenericResponse *)v8 status])
    {
    }

    else if (![(EscrowGenericResponse *)v8 errorCode])
    {
LABEL_24:

      goto LABEL_25;
    }

    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100048060(v8);
    }

    v17 = CloudServicesLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000480E8(v8);
    }

    error2 = [(LakituResponse *)v8 error];
    code = [error2 code];

    error3 = [(LakituResponse *)v8 error];
    localizedDescription = [error3 localizedDescription];

    message = [(EscrowGenericResponse *)v8 message];

    if (message)
    {
      message2 = [(EscrowGenericResponse *)v8 message];
    }

    else
    {
      errorMessage = [(EscrowGenericResponse *)v8 errorMessage];

      if (!errorMessage)
      {
        goto LABEL_16;
      }

      message2 = [(EscrowGenericResponse *)v8 errorMessage];
    }

    v25 = message2;

    localizedDescription = v25;
LABEL_16:
    if ([(EscrowGenericResponse *)v8 status])
    {
      status = [(EscrowGenericResponse *)v8 status];
    }

    else
    {
      if (![(EscrowGenericResponse *)v8 errorCode])
      {
LABEL_21:
        error4 = [(LakituResponse *)v8 error];
        userInfo = [error4 userInfo];
        v29 = [userInfo mutableCopy];

        if (!v29)
        {
          v29 = objc_alloc_init(NSMutableDictionary);
        }

        error5 = [(LakituResponse *)v8 error];
        [v29 setObject:error5 forKeyedSubscript:NSUnderlyingErrorKey];

        [v29 setObject:localizedDescription forKeyedSubscript:NSLocalizedDescriptionKey];
        [v29 setObject:requestUUID forKeyedSubscript:@"uuid"];
        v31 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:code userInfo:v29];
        [(LakituResponse *)v8 setError:v31];

        goto LABEL_24;
      }

      status = [(EscrowGenericResponse *)v8 errorCode];
    }

    code = status;
    goto LABEL_21;
  }

LABEL_25:

  return v8;
}

- (int64_t)version
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"version"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)status
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"status"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)message
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"message"];

  return v3;
}

- (id)errorMessage
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"errorMessage"];

  return v3;
}

- (int64_t)errorCode
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"errorCode"];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end