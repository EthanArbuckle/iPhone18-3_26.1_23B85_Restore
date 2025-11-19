@interface EscrowGenericResponse
- (EscrowGenericResponse)initWithURLResponse:(id)a3 data:(id)a4;
- (NSString)message;
- (id)errorMessage;
- (int64_t)errorCode;
- (int64_t)status;
- (int64_t)version;
@end

@implementation EscrowGenericResponse

- (EscrowGenericResponse)initWithURLResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v33.receiver = self;
  v33.super_class = EscrowGenericResponse;
  v7 = [(LakituResponse *)&v33 initWithURLResponse:v6 data:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(LakituResponse *)v7 requestUUID];
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 URL];
      v12 = [v11 host];
      v13 = [v6 URL];
      v14 = [v13 path];
      *buf = 138412802;
      v35 = v12;
      v36 = 2112;
      v37 = v14;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "got response from host %@ path %@ uuid %@", buf, 0x20u);
    }

    v15 = [(LakituResponse *)v8 error];
    if (v15 || [(EscrowGenericResponse *)v8 status])
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

    v18 = [(LakituResponse *)v8 error];
    v19 = [v18 code];

    v20 = [(LakituResponse *)v8 error];
    v21 = [v20 localizedDescription];

    v22 = [(EscrowGenericResponse *)v8 message];

    if (v22)
    {
      v23 = [(EscrowGenericResponse *)v8 message];
    }

    else
    {
      v24 = [(EscrowGenericResponse *)v8 errorMessage];

      if (!v24)
      {
        goto LABEL_16;
      }

      v23 = [(EscrowGenericResponse *)v8 errorMessage];
    }

    v25 = v23;

    v21 = v25;
LABEL_16:
    if ([(EscrowGenericResponse *)v8 status])
    {
      v26 = [(EscrowGenericResponse *)v8 status];
    }

    else
    {
      if (![(EscrowGenericResponse *)v8 errorCode])
      {
LABEL_21:
        v27 = [(LakituResponse *)v8 error];
        v28 = [v27 userInfo];
        v29 = [v28 mutableCopy];

        if (!v29)
        {
          v29 = objc_alloc_init(NSMutableDictionary);
        }

        v30 = [(LakituResponse *)v8 error];
        [v29 setObject:v30 forKeyedSubscript:NSUnderlyingErrorKey];

        [v29 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];
        [v29 setObject:v9 forKeyedSubscript:@"uuid"];
        v31 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:v19 userInfo:v29];
        [(LakituResponse *)v8 setError:v31];

        goto LABEL_24;
      }

      v26 = [(EscrowGenericResponse *)v8 errorCode];
    }

    v19 = v26;
    goto LABEL_21;
  }

LABEL_25:

  return v8;
}

- (int64_t)version
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"version"];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)status
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"status"];
  v4 = [v3 integerValue];

  return v4;
}

- (NSString)message
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"message"];

  return v3;
}

- (id)errorMessage
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"errorMessage"];

  return v3;
}

- (int64_t)errorCode
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"errorCode"];
  v4 = [v3 integerValue];

  return v4;
}

@end