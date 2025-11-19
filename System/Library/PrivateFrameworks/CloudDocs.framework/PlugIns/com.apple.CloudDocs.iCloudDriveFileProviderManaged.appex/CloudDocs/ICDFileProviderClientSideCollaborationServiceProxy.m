@interface ICDFileProviderClientSideCollaborationServiceProxy
- (ICDFileProviderClientSideCollaborationServiceProxy)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5 clientPrivilegesDescriptor:(id)a6;
- (id)uploadContents:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 reply:(id)a6;
- (void)calculateCollaborationVersionForContents:(id)a3 reply:(id)a4;
- (void)extractEtagsFromBaseVersion:(id)a3 withReply:(id)a4;
- (void)fetchLatestRevisionIntoURL:(id)a3 reply:(id)a4;
- (void)fetchLatestRevisionWithReply:(id)a3;
@end

@implementation ICDFileProviderClientSideCollaborationServiceProxy

- (ICDFileProviderClientSideCollaborationServiceProxy)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5 clientPrivilegesDescriptor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICDFileProviderClientSideCollaborationServiceProxy;
  v15 = [(ICDFileProviderClientSideCollaborationServiceProxy *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, a3);
    objc_storeStrong(&v16->_domainIdentifier, a4);
    objc_storeStrong(&v16->_operationQueue, a5);
    objc_storeStrong(&v16->_clientPrivilegesDescriptor, a6);
  }

  return v16;
}

- (void)extractEtagsFromBaseVersion:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    memset(v18, 0, sizeof(v18));
    sub_10001A20C(1, "[ICDFileProviderClientSideCollaborationServiceProxy extractEtagsFromBaseVersion:withReply:]", 54, 0, v18);
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v20 = v18[0];
      v21 = 2080;
      v22 = "[ICDFileProviderClientSideCollaborationServiceProxy extractEtagsFromBaseVersion:withReply:]";
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s extractEtagsFromBaseVersion %@%@", buf, 0x2Au);
    }

    if (v5)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v5 br_structureEtag];
        v12 = [v5 br_contentEtag];
        *buf = 136316162;
        v20 = "[ICDFileProviderClientSideCollaborationServiceProxy extractEtagsFromBaseVersion:withReply:]";
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = 0;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
      }

      v13 = [v5 br_structureEtag];
      v14 = [v5 br_contentEtag];
      v6[2](v6, v13, v14, 0);
    }

    else
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [NSError br_errorWithPOSIXCode:22];
        *buf = 136316162;
        v20 = "[ICDFileProviderClientSideCollaborationServiceProxy extractEtagsFromBaseVersion:withReply:]";
        v21 = 2112;
        v22 = 0;
        v23 = 2112;
        v24 = 0;
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
      }

      v13 = [NSError br_errorWithPOSIXCode:22];
      (v6)[2](v6, 0, 0, v13);
    }

    sub_10001A3DC(v18);
  }
}

- (void)calculateCollaborationVersionForContents:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    memset(v24, 0, sizeof(v24));
    sub_10001A20C(1, "[ICDFileProviderClientSideCollaborationServiceProxy calculateCollaborationVersionForContents:reply:]", 70, 0, v24);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v26 = v24[0];
      v27 = 2080;
      v28 = "[ICDFileProviderClientSideCollaborationServiceProxy calculateCollaborationVersionForContents:reply:]";
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s calculating collaboration version for %@%@", buf, 0x2Au);
    }

    v10 = [v6 _scope];
    v11 = v10 == 0;

    if (v11)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [NSError br_errorWithPOSIXCode:22];
        *buf = 136315906;
        v26 = "[ICDFileProviderClientSideCollaborationServiceProxy calculateCollaborationVersionForContents:reply:]";
        v27 = 2112;
        v28 = 0;
        v29 = 2112;
        v30 = v19;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
      }

      v16 = [NSError br_errorWithPOSIXCode:22];
      v7[2](v7, 0, v16);
    }

    else
    {
      v12 = +[BRDaemonConnection defaultConnection];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100002488;
      v22[3] = &unk_100044598;
      v13 = v7;
      v23 = v13;
      v14 = [v12 remoteObjectProxyWithErrorHandler:v22];

      itemIdentifier = self->_itemIdentifier;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000025A4;
      v20[3] = &unk_1000445C0;
      v21 = v13;
      [v14 calculateSignatureForItemIdentifier:itemIdentifier forURL:v6 reply:v20];

      v16 = v23;
    }

    sub_10001A3DC(v24);
  }
}

- (void)fetchLatestRevisionWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    memset(v16, 0, sizeof(v16));
    sub_10001A20C(1, "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionWithReply:]", 95, 0, v16);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      itemIdentifier = self->_itemIdentifier;
      *buf = 134218754;
      v18 = v16[0];
      v19 = 2080;
      v20 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionWithReply:]";
      v21 = 2112;
      v22 = itemIdentifier;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s fetchLatestRevisionWithReply for item with identifier %@%@", buf, 0x2Au);
    }

    v8 = +[BRDaemonConnection defaultConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000295C;
    v14[3] = &unk_100044598;
    v9 = v4;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];

    v11 = self->_itemIdentifier;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002A84;
    v12[3] = &unk_1000445E8;
    v13 = v9;
    [v10 fetchLatestContentRevisionForItemIdentifier:v11 reply:v12];

    sub_10001A3DC(v16);
  }
}

- (void)fetchLatestRevisionIntoURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    memset(v39, 0, sizeof(v39));
    sub_10001A20C(1, "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]", 113, 0, v39);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      itemIdentifier = self->_itemIdentifier;
      *buf = 134219010;
      v41 = v39[0];
      v42 = 2080;
      v43 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]";
      v44 = 2112;
      v45 = v6;
      v46 = 2112;
      v47 = itemIdentifier;
      v48 = 2112;
      v49 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s fetchLatestRevisionIntoURL %@ for item with identifier %@%@", buf, 0x34u);
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = -1;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100003160;
    v32[3] = &unk_100044610;
    v34 = &v35;
    v33 = v7;
    v11 = objc_retainBlock(v32);
    v12 = [v6 _scope];
    v13 = v12 == 0;

    if (v13)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [NSError br_errorWithPOSIXCode:22];
        *buf = 136316162;
        v41 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]";
        v42 = 2112;
        v43 = 0;
        v44 = 2112;
        v45 = 0;
        v46 = 2112;
        v47 = v23;
        v48 = 2112;
        v49 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
      }

      v16 = [NSError br_errorWithPOSIXCode:22];
      (v11[2])(v11, 0, 0, v16);
    }

    else
    {
      v14 = [v6 _scope];
      v31 = 0;
      v15 = [BRPosixOperationsWrapper consumeSandboxExtension:v14 error:&v31];
      v16 = v31;
      v36[3] = v15;

      if (v36[3] < 0)
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136316162;
          v41 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]";
          v42 = 2112;
          v43 = 0;
          v44 = 2112;
          v45 = 0;
          v46 = 2112;
          v47 = v16;
          v48 = 2112;
          v49 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
        }

        (v11[2])(v11, 0, 0, v16);
      }

      else
      {
        v17 = +[BRDaemonConnection defaultConnection];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100003204;
        v29[3] = &unk_100044598;
        v18 = v11;
        v30 = v18;
        v19 = [v17 remoteObjectProxyWithErrorHandler:v29];

        v20 = self->_itemIdentifier;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10000332C;
        v26[3] = &unk_100044638;
        v28 = v18;
        v27 = v6;
        [v19 cloneLatestContentRevisionForItemIdentifier:v20 reply:v26];
      }
    }

    _Block_object_dispose(&v35, 8);
    sub_10001A3DC(v39);
  }
}

- (id)uploadContents:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    memset(v39, 0, sizeof(v39));
    sub_10001A20C(1, "[ICDFileProviderClientSideCollaborationServiceProxy uploadContents:baseVersion:options:reply:]", 169, 0, v39);
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134219010;
      v41 = v39[0];
      v42 = 2080;
      v43 = "[ICDFileProviderClientSideCollaborationServiceProxy uploadContents:baseVersion:options:reply:]";
      v44 = 2112;
      v45 = v10;
      v46 = 2112;
      v47 = v11;
      v48 = 2112;
      v49 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s uploadContents URL: %@ base version: %@%@", buf, 0x34u);
    }

    v15 = [v10 _scope];
    v16 = v15 == 0;

    if (v16)
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [NSError br_errorWithPOSIXCode:22];
        *buf = 136315906;
        v41 = "[ICDFileProviderClientSideCollaborationServiceProxy uploadContents:baseVersion:options:reply:]";
        v42 = 2112;
        v43 = 0;
        v44 = 2112;
        v45 = v29;
        v46 = 2112;
        v47 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
      }

      v25 = [NSError br_errorWithPOSIXCode:22];
      v12[2](v12, 0, v25);
      v26 = 0;
    }

    else
    {
      v17 = objc_opt_new();
      [v17 setKind:NSProgressKindFile];
      [v17 setFileOperationKind:NSProgressFileOperationKindUploading];
      v18 = self->_itemIdentifier;
      v19 = self->_domainIdentifier;
      v20 = [v10 url];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100003A9C;
      v31[3] = &unk_100044688;
      v37 = v12;
      v21 = v18;
      v32 = v21;
      v22 = v19;
      v33 = v22;
      v34 = v10;
      v35 = v11;
      v38 = a5;
      v23 = v17;
      v36 = v23;
      [NSFileProviderManager getIdentifierForUserVisibleFileAtURL:v20 completionHandler:v31];

      v24 = v36;
      v25 = v23;

      v26 = v25;
    }

    sub_10001A3DC(v39);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end