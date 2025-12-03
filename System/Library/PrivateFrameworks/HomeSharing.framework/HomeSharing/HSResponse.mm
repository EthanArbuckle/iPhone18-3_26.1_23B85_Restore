@interface HSResponse
+ (id)responseWithCode:(unint64_t)code headerFields:(id)fields data:(id)data MIMEType:(id)type error:(id)error;
+ (id)responseWithResponse:(id)response;
- (HSResponse)initWithCode:(unint64_t)code headerFields:(id)fields data:(id)data MIMEType:(id)type error:(id)error;
- (id)description;
@end

@implementation HSResponse

- (id)description
{
  v6.receiver = self;
  v6.super_class = HSResponse;
  v3 = [(HSResponse *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" [%ld]: %ld bytes (%@)\n%@", self->_responseCode, -[NSData length](self->_responseData, "length"), self->_MIMEType, self->_responseHeaderFields];

  return v4;
}

- (HSResponse)initWithCode:(unint64_t)code headerFields:(id)fields data:(id)data MIMEType:(id)type error:(id)error
{
  fieldsCopy = fields;
  dataCopy = data;
  typeCopy = type;
  errorCopy = error;
  v25.receiver = self;
  v25.super_class = HSResponse;
  v16 = [(HSResponse *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_error, error);
    v18 = [typeCopy copy];
    MIMEType = v17->_MIMEType;
    v17->_MIMEType = v18;

    v17->_responseCode = code;
    v20 = [dataCopy copy];
    responseData = v17->_responseData;
    v17->_responseData = v20;

    v22 = [fieldsCopy copy];
    responseHeaderFields = v17->_responseHeaderFields;
    v17->_responseHeaderFields = v22;
  }

  return v17;
}

+ (id)responseWithResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc(objc_opt_class());
  responseCode = [responseCopy responseCode];
  responseHeaderFields = [responseCopy responseHeaderFields];
  responseData = [responseCopy responseData];
  mIMEType = [responseCopy MIMEType];
  error = [responseCopy error];

  v10 = [v4 initWithCode:responseCode headerFields:responseHeaderFields data:responseData MIMEType:mIMEType error:error];

  return v10;
}

+ (id)responseWithCode:(unint64_t)code headerFields:(id)fields data:(id)data MIMEType:(id)type error:(id)error
{
  errorCopy = error;
  typeCopy = type;
  dataCopy = data;
  fieldsCopy = fields;
  v15 = [objc_alloc(objc_opt_class()) initWithCode:code headerFields:fieldsCopy data:dataCopy MIMEType:typeCopy error:errorCopy];

  return v15;
}

@end