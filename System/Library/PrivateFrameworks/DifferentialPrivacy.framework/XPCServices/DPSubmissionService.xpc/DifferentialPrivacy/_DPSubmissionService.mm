@interface _DPSubmissionService
+ (id)sharedInstance;
- (_DPSubmissionService)init;
- (void)fetchTokenWithReply:(id)a3;
- (void)submitDonation:(id)a3 toDediscoWithReply:(id)a4;
@end

@implementation _DPSubmissionService

+ (id)sharedInstance
{
  if (qword_10007E780[0] != -1)
  {
    sub_10004FBA0();
  }

  v3 = qword_10007E778;

  return v3;
}

- (_DPSubmissionService)init
{
  v8.receiver = self;
  v8.super_class = _DPSubmissionService;
  v2 = [(_DPSubmissionService *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dediscoManagerV1 = v2->_dediscoManagerV1;
    v2->_dediscoManagerV1 = v3;

    v5 = objc_opt_new();
    dediscoManagerV2 = v2->_dediscoManagerV2;
    v2->_dediscoManagerV2 = v5;
  }

  return v2;
}

- (void)submitDonation:(id)a3 toDediscoWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_DPDediscoUtils dediscoVersionForDonation:v6];
  if (v8 - 2 >= 3)
  {
    if (v8 != 1)
    {
      v14 = +[_DPLog service];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10004FBB4(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v12 = [_DPDediscoError errorWithCode:400 description:@"Malformed Dedisco server configuration in recipe."];
      goto LABEL_10;
    }

    v9 = [(_DPSubmissionService *)self dediscoManagerV1];
    v30 = 0;
    v10 = [v9 handleDediscoDonation:v6 error:&v30];
    v11 = v30;
  }

  else
  {
    v9 = [(_DPSubmissionService *)self dediscoManagerV2];
    v29 = 0;
    v10 = [v9 handleDediscoDonation:v6 error:&v29];
    v11 = v29;
  }

  v12 = v11;

  if (v10)
  {
    v13 = 1;
    goto LABEL_13;
  }

LABEL_10:
  v22 = +[_DPLog service];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10004FC2C(v12, v22, v23, v24, v25, v26, v27, v28);
  }

  v13 = 0;
LABEL_13:
  v7[2](v7, v13, v12);
}

- (void)fetchTokenWithReply:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  if (v5)
  {
    v3[2](v3, 1, 0);
    [v5 fetchTokens];
  }

  else
  {
    v6 = [_DPDediscoError errorWithCode:105 description:@"Failed to create token fetcher service"];
    v7 = +[_DPLog service];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004FC98(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    (v3)[2](v3, 0, v6);
  }

  objc_autoreleasePoolPop(v4);
}

@end