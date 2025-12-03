@interface PKPaginatedAccountWebServiceResponse
+ (id)responseWithData:(id)data account:(id)account request:(id)request;
@end

@implementation PKPaginatedAccountWebServiceResponse

+ (id)responseWithData:(id)data account:(id)account request:(id)request
{
  requestCopy = request;
  accountCopy = account;
  dataCopy = data;
  v10 = [objc_alloc(objc_opt_class()) initWithData:dataCopy account:accountCopy request:requestCopy];

  return v10;
}

@end