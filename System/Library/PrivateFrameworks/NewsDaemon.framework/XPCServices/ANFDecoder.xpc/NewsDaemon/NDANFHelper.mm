@interface NDANFHelper
- (id)_resourceIDFromURL:(id)l;
- (id)_resourceIDsFromURLs:(id)ls;
- (id)manifestFromANFDocumentData:(id)data;
@end

@implementation NDANFHelper

- (id)manifestFromANFDocumentData:(id)data
{
  dataCopy = data;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v3 = qword_1000087E0;
  v44 = qword_1000087E0;
  if (!qword_1000087E0)
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100001440;
    v40[3] = &unk_1000041A0;
    v40[4] = &v41;
    sub_100001440(v40);
    v3 = v42[3];
  }

  v4 = v3;
  _Block_object_dispose(&v41, 8);
  v5 = [v3 alloc];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  v39 = 0;
  v8 = [v5 initWithIdentifier:uUIDString shareURL:0 JSONData:dataCopy resourceDataSource:0 host:0 error:&v39];
  v31 = v39;

  if (v8)
  {
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    documentController = [v8 documentController];
    obj = [documentController orderedImageIdentifiers];

    v12 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v12)
    {
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          documentController2 = [v8 documentController];
          v17 = [documentController2 imageResourceForIdentifier:v15];

          v18 = [v17 URL];
          [v9 fc_safelyAddObject:v18];

          documentController3 = [v8 documentController];
          v20 = [documentController3 allResourcesForImageIdentifier:v15];

          firstObject = [v20 firstObject];
          v22 = [firstObject URL];
          [v10 fc_safelyAddObject:v22];
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v12);
    }

    documentController4 = [v8 documentController];
    requiredNonImageResourceURLs = [documentController4 requiredNonImageResourceURLs];

    v25 = [FCANFDocumentManifest alloc];
    v26 = [(NDANFHelper *)self _resourceIDsFromURLs:requiredNonImageResourceURLs];
    v27 = [(NDANFHelper *)self _resourceIDsFromURLs:v9];
    v28 = [(NDANFHelper *)self _resourceIDsFromURLs:v10];
    v29 = [v25 initWithNonImageResourceIDs:v26 optimalImageResourceIDs:v27 smallestImageResourceIDs:v28];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)_resourceIDsFromURLs:(id)ls
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000013B8;
  v5[3] = &unk_100004178;
  v5[4] = self;
  v3 = [ls fc_arrayByTransformingWithBlock:v5];

  return v3;
}

- (id)_resourceIDFromURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"asset"])
  {
    host = [lCopy host];
  }

  else
  {
    host = 0;
  }

  return host;
}

@end