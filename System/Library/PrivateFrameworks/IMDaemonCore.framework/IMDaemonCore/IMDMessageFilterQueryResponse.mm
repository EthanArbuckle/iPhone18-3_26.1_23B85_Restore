@interface IMDMessageFilterQueryResponse
- (IMDMessageFilterQueryResponse)initWithResponse:(id)response;
@end

@implementation IMDMessageFilterQueryResponse

- (IMDMessageFilterQueryResponse)initWithResponse:(id)response
{
  responseCopy = response;
  v11.receiver = self;
  v11.super_class = IMDMessageFilterQueryResponse;
  v5 = [(IMDMessageFilterQueryResponse *)&v11 init];
  if (v5)
  {
    v5->_action = [responseCopy action];
    v5->_subAction = [responseCopy subAction];
    version = [responseCopy version];
    version = v5->_version;
    v5->_version = version;

    error = [responseCopy error];
    error = v5->_error;
    v5->_error = error;
  }

  return v5;
}

@end