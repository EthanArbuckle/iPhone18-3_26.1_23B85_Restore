@interface CTCarrierSpaceUserConsentFlowInfo
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceUserConsentFlowInfo)init;
- (CTCarrierSpaceUserConsentFlowInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSpaceUserConsentFlowInfo

- (CTCarrierSpaceUserConsentFlowInfo)init
{
  v7.receiver = self;
  v7.super_class = CTCarrierSpaceUserConsentFlowInfo;
  v2 = [(CTCarrierSpaceUserConsentFlowInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    webURL = v2->_webURL;
    v2->_webURL = 0;

    postData = v3->_postData;
    v3->_postData = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  webURL = [(CTCarrierSpaceUserConsentFlowInfo *)self webURL];
  [v3 appendFormat:@" URL=%@", webURL];

  postData = [(CTCarrierSpaceUserConsentFlowInfo *)self postData];
  [v3 appendFormat:@" postData=%@", postData];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      webURL = [(CTCarrierSpaceUserConsentFlowInfo *)self webURL];
      webURL2 = [(CTCarrierSpaceUserConsentFlowInfo *)equalCopy webURL];
      if (webURL == webURL2 || (-[CTCarrierSpaceUserConsentFlowInfo webURL](self, "webURL"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceUserConsentFlowInfo webURL](equalCopy, "webURL"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        postData = [(CTCarrierSpaceUserConsentFlowInfo *)self postData];
        postData2 = [(CTCarrierSpaceUserConsentFlowInfo *)equalCopy postData];
        if (postData == postData2)
        {
          v9 = 1;
        }

        else
        {
          postData3 = [(CTCarrierSpaceUserConsentFlowInfo *)self postData];
          postData4 = [(CTCarrierSpaceUserConsentFlowInfo *)equalCopy postData];
          v9 = [postData3 isEqualToString:postData4];
        }

        if (webURL == webURL2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  webURL = self->_webURL;
  coderCopy = coder;
  [coderCopy encodeObject:webURL forKey:@"webURL"];
  [coderCopy encodeObject:self->_postData forKey:@"postData"];
}

- (CTCarrierSpaceUserConsentFlowInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTCarrierSpaceUserConsentFlowInfo;
  v5 = [(CTCarrierSpaceUserConsentFlowInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postData"];
    postData = v5->_postData;
    v5->_postData = v8;
  }

  return v5;
}

@end