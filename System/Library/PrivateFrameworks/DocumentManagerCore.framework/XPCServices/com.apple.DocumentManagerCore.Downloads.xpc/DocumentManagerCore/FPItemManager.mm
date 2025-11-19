@interface FPItemManager
- (void)_doc_fetchFolderNamed:(id)a3 inDomain:(id)a4 completionHandler:(id)a5;
- (void)_doc_folderNamed:(id)a3 existsInDomain:(id)a4 completionHandler:(id)a5;
- (void)_doc_providerForDomainIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation FPItemManager

- (void)_doc_providerForDomainIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000038DC;
  v10[3] = &unk_100008500;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 fetchProvidersSuitableForDownloads:v10];
}

- (void)_doc_fetchFolderNamed:(id)a3 inDomain:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[FPItemManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003C88;
  v15[3] = &unk_1000085A0;
  v17 = v16 = v9;
  v18 = v8;
  v19 = v10;
  v11 = v8;
  v12 = v17;
  v13 = v10;
  v14 = v9;
  [(FPItemManager *)self _doc_providerForDomainIdentifier:v14 completionHandler:v15];
}

- (void)_doc_folderNamed:(id)a3 existsInDomain:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[FPItemManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004270;
  v15[3] = &unk_1000085A0;
  v17 = v16 = v9;
  v18 = v8;
  v19 = v10;
  v11 = v8;
  v12 = v17;
  v13 = v10;
  v14 = v9;
  [(FPItemManager *)self _doc_providerForDomainIdentifier:v14 completionHandler:v15];
}

@end