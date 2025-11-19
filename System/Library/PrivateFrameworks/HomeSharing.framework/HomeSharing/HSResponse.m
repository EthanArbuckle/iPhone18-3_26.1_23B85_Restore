@interface HSResponse
+ (id)responseWithCode:(unint64_t)a3 headerFields:(id)a4 data:(id)a5 MIMEType:(id)a6 error:(id)a7;
+ (id)responseWithResponse:(id)a3;
- (HSResponse)initWithCode:(unint64_t)a3 headerFields:(id)a4 data:(id)a5 MIMEType:(id)a6 error:(id)a7;
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

- (HSResponse)initWithCode:(unint64_t)a3 headerFields:(id)a4 data:(id)a5 MIMEType:(id)a6 error:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = HSResponse;
  v16 = [(HSResponse *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_error, a7);
    v18 = [v14 copy];
    MIMEType = v17->_MIMEType;
    v17->_MIMEType = v18;

    v17->_responseCode = a3;
    v20 = [v13 copy];
    responseData = v17->_responseData;
    v17->_responseData = v20;

    v22 = [v12 copy];
    responseHeaderFields = v17->_responseHeaderFields;
    v17->_responseHeaderFields = v22;
  }

  return v17;
}

+ (id)responseWithResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [v3 responseCode];
  v6 = [v3 responseHeaderFields];
  v7 = [v3 responseData];
  v8 = [v3 MIMEType];
  v9 = [v3 error];

  v10 = [v4 initWithCode:v5 headerFields:v6 data:v7 MIMEType:v8 error:v9];

  return v10;
}

+ (id)responseWithCode:(unint64_t)a3 headerFields:(id)a4 data:(id)a5 MIMEType:(id)a6 error:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [objc_alloc(objc_opt_class()) initWithCode:a3 headerFields:v14 data:v13 MIMEType:v12 error:v11];

  return v15;
}

@end