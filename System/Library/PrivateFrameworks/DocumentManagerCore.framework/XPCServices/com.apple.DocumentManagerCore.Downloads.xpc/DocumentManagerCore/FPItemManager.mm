@interface FPItemManager
- (void)_doc_fetchFolderNamed:(id)named inDomain:(id)domain completionHandler:(id)handler;
- (void)_doc_folderNamed:(id)named existsInDomain:(id)domain completionHandler:(id)handler;
- (void)_doc_providerForDomainIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation FPItemManager

- (void)_doc_providerForDomainIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = objc_opt_new();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000038DC;
  v10[3] = &unk_100008500;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = identifierCopy;
  [v7 fetchProvidersSuitableForDownloads:v10];
}

- (void)_doc_fetchFolderNamed:(id)named inDomain:(id)domain completionHandler:(id)handler
{
  namedCopy = named;
  domainCopy = domain;
  handlerCopy = handler;
  +[FPItemManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003C88;
  v15[3] = &unk_1000085A0;
  v17 = v16 = domainCopy;
  v18 = namedCopy;
  v19 = handlerCopy;
  v11 = namedCopy;
  v12 = v17;
  v13 = handlerCopy;
  v14 = domainCopy;
  [(FPItemManager *)self _doc_providerForDomainIdentifier:v14 completionHandler:v15];
}

- (void)_doc_folderNamed:(id)named existsInDomain:(id)domain completionHandler:(id)handler
{
  namedCopy = named;
  domainCopy = domain;
  handlerCopy = handler;
  +[FPItemManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004270;
  v15[3] = &unk_1000085A0;
  v17 = v16 = domainCopy;
  v18 = namedCopy;
  v19 = handlerCopy;
  v11 = namedCopy;
  v12 = v17;
  v13 = handlerCopy;
  v14 = domainCopy;
  [(FPItemManager *)self _doc_providerForDomainIdentifier:v14 completionHandler:v15];
}

@end