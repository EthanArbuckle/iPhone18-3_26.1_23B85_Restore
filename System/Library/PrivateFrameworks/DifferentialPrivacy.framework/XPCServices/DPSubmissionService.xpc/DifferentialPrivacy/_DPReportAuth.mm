@interface _DPReportAuth
- (_DPReportAuth)initWithToken:(id)token withChallenge:(id)challenge;
- (id)encodeWithError:(id *)error;
@end

@implementation _DPReportAuth

- (_DPReportAuth)initWithToken:(id)token withChallenge:(id)challenge
{
  tokenCopy = token;
  challengeCopy = challenge;
  if ([challengeCopy length] && objc_msgSend(tokenCopy, "length"))
  {
    v14.receiver = self;
    v14.super_class = _DPReportAuth;
    v9 = [(_DPReportAuth *)&v14 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_token, token);
      objc_storeStrong(p_isa + 2, challenge);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v12 = +[_DPLog service];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFEC(v12);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeWithError:(id *)error
{
  v5 = objc_alloc_init(NSMutableData);
  token = [(_DPReportAuth *)self token];
  v7 = [token length];
  challenge = [(_DPReportAuth *)self challenge];
  v9 = &v7[[challenge length]];

  if (v9 < 0x10000)
  {
    token2 = [(_DPReportAuth *)self token];
    [v5 appendData:token2];

    challenge2 = [(_DPReportAuth *)self challenge];
    [v5 appendData:challenge2];

    v11 = v5;
  }

  else
  {
    if (error)
    {
      *error = [_DPDediscoError errorWithCode:800 underlyingError:0 description:@"Cannot encode DAP extension - total length exceeds UINT16_MAX"];
    }

    v10 = +[_DPLog service];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E030(v10);
    }

    v11 = 0;
  }

  return v11;
}

@end