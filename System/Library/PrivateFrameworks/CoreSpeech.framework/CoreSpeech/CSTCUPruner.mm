@interface CSTCUPruner
- (CSTCUIntendedInfoProviding)tcuIntendedInfoProvider;
- (CSTCUPruner)init;
- (id)processTCUPackage:(id)a3 requestId:(id)a4;
- (void)processTRPCandidateInfo:(id)a3 requestId:(id)a4 withCompletion:(id)a5;
@end

@implementation CSTCUPruner

- (CSTCUIntendedInfoProviding)tcuIntendedInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tcuIntendedInfoProvider);

  return WeakRetained;
}

- (id)processTCUPackage:(id)a3 requestId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_tcuIntendedInfoProvider);
    *buf = 136315650;
    v20 = "[CSTCUPruner processTCUPackage:requestId:]";
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s tcuPackage:%@ _tcuIntendedInfoProvider:%@", buf, 0x20u);
  }

  v11 = objc_loadWeakRetained(&self->_tcuIntendedInfoProvider);
  v12 = [v6 speechPackage];
  v13 = [v11 constructTCUIntendedInfoForRequestId:v7 withResultCandidate:v12];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100018B10;
  v17[3] = &unk_10024E638;
  v18 = v13;
  v14 = v13;
  v15 = [v6 mutatedCopyWithMutator:v17];

  return v15;
}

- (void)processTRPCandidateInfo:(id)a3 requestId:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v25 = a5;
  v10 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = v8;
  obj = [v8 tcuList];
  v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          WeakRetained = objc_loadWeakRetained(&self->_tcuIntendedInfoProvider);
          *buf = 136315650;
          v37 = "[CSTCUPruner processTRPCandidateInfo:requestId:withCompletion:]";
          v38 = 2112;
          v39 = v15;
          v40 = 2112;
          v41 = WeakRetained;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s tcuPackage:%@ _tcuIntendedInfoProvider:%@", buf, 0x20u);
        }

        v19 = objc_loadWeakRetained(&self->_tcuIntendedInfoProvider);
        v20 = [v15 speechPackage];
        v21 = [v19 constructTCUIntendedInfoForRequestId:v9 withResultCandidate:v20];

        if (v21)
        {
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100018E74;
          v30[3] = &unk_10024E638;
          v31 = v21;
          v22 = [v15 mutatedCopyWithMutator:v30];
          [v10 addObject:v22];
        }

        else
        {
          [v10 addObject:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v12);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100018E80;
  v28[3] = &unk_10024E660;
  v29 = v10;
  v23 = v10;
  v24 = [v26 mutatedCopyWithMutator:v28];
  if (v25)
  {
    v25[2](v25, v24);
  }
}

- (CSTCUPruner)init
{
  v3.receiver = self;
  v3.super_class = CSTCUPruner;
  return [(CSTCUPruner *)&v3 init];
}

@end