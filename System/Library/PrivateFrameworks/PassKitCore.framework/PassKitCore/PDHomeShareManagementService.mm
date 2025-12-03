@interface PDHomeShareManagementService
- (PDHomeShareManagementService)init;
- (void)createShareInvitationFromShare:(id)share forPass:(id)pass authorization:(id)authorization completion:(id)completion;
@end

@implementation PDHomeShareManagementService

- (PDHomeShareManagementService)init
{
  v3.receiver = self;
  v3.super_class = PDHomeShareManagementService;
  return [(PDHomeShareManagementService *)&v3 init];
}

- (void)createShareInvitationFromShare:(id)share forPass:(id)pass authorization:(id)authorization completion:(id)completion
{
  shareCopy = share;
  passCopy = pass;
  authorizationCopy = authorization;
  completionCopy = completion;
  homeInvite = [shareCopy homeInvite];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100005990;
  v50 = sub_10000B0D4;
  v51 = 0;
  off_10091E238();
  v14 = objc_opt_class();
  v15 = v47;
  v45 = v47[5];
  v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:v14 fromData:homeInvite error:&v45];
  objc_storeStrong(v15 + 5, v45);
  if (!v16 || v47[5])
  {
    v17 = PDBasicError();
    (*(completionCopy + 2))(completionCopy, 0, 0, v17);
  }

  else
  {
    v17 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = sub_100005990;
    v43[4] = sub_10000B0D4;
    v44 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10004C6D8;
    v40[3] = &unk_10083EC68;
    v18 = objc_alloc_init(PKHMHomeManager);
    v41 = v18;
    v42 = v43;
    [v17 addOperation:v40];
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = sub_100005990;
    v38[4] = sub_10000B0D4;
    v39 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10004C810;
    v33[3] = &unk_10083ECB8;
    v35 = v43;
    v34 = v16;
    v36 = v38;
    v37 = &v46;
    [v17 addOperation:v33];
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_100005990;
    v31[4] = sub_10000B0D4;
    v32 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10004CA08;
    v27[3] = &unk_10083ECE0;
    v29 = v31;
    v28 = shareCopy;
    v30 = v38;
    [v17 addOperation:v27];
    v19 = +[NSNull null];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004CAFC;
    v22[3] = &unk_10083ED08;
    v25 = &v46;
    v26 = v31;
    v24 = completionCopy;
    v20 = v18;
    v23 = v20;
    v21 = [v17 evaluateWithInput:v19 completion:v22];

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v38, 8);

    _Block_object_dispose(v43, 8);
  }

  _Block_object_dispose(&v46, 8);
}

@end