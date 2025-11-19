@interface IMDMessageFilterQueryResponse
- (IMDMessageFilterQueryResponse)initWithResponse:(id)a3;
@end

@implementation IMDMessageFilterQueryResponse

- (IMDMessageFilterQueryResponse)initWithResponse:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IMDMessageFilterQueryResponse;
  v5 = [(IMDMessageFilterQueryResponse *)&v11 init];
  if (v5)
  {
    v5->_action = [v4 action];
    v5->_subAction = [v4 subAction];
    v6 = [v4 version];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 error];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

@end