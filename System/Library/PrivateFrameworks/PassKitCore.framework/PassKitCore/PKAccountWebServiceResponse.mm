@interface PKAccountWebServiceResponse
+ (id)responseWithData:(id)a3 account:(id)a4 request:(id)a5;
@end

@implementation PKAccountWebServiceResponse

+ (id)responseWithData:(id)a3 account:(id)a4 request:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithData:v9 account:v8 request:v7];

  return v10;
}

@end