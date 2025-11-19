@interface _DPReportAuth
- (_DPReportAuth)initWithToken:(id)a3 withChallenge:(id)a4;
- (id)encodeWithError:(id *)a3;
@end

@implementation _DPReportAuth

- (_DPReportAuth)initWithToken:(id)a3 withChallenge:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 length] && objc_msgSend(v7, "length"))
  {
    v14.receiver = self;
    v14.super_class = _DPReportAuth;
    v9 = [(_DPReportAuth *)&v14 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_token, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v12 = +[_DPLog service];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFEC(v12);
    }

    v11 = 0;
  }

  return v11;
}

- (id)encodeWithError:(id *)a3
{
  v5 = objc_alloc_init(NSMutableData);
  v6 = [(_DPReportAuth *)self token];
  v7 = [v6 length];
  v8 = [(_DPReportAuth *)self challenge];
  v9 = &v7[[v8 length]];

  if (v9 < 0x10000)
  {
    v12 = [(_DPReportAuth *)self token];
    [v5 appendData:v12];

    v13 = [(_DPReportAuth *)self challenge];
    [v5 appendData:v13];

    v11 = v5;
  }

  else
  {
    if (a3)
    {
      *a3 = [_DPDediscoError errorWithCode:800 underlyingError:0 description:@"Cannot encode DAP extension - total length exceeds UINT16_MAX"];
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