@interface IDSKTOptInOutRequest
- (IDSKTOptInOutRequest)initWithCoder:(id)coder;
@end

@implementation IDSKTOptInOutRequest

- (IDSKTOptInOutRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = IDSKTOptInOutRequest;
  v5 = [(IDSKTOptInOutRequest *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"ReqAppToOptInStatusDataKey"];
    applicationsToOptInStatusData = v5->_applicationsToOptInStatusData;
    v5->_applicationsToOptInStatusData = v7;
  }

  return v5;
}

@end