@interface CardDAViCloudGetAccountPropertiesTaskGroup
- (void)_setPropertiesFromParsedResponses:(id)a3;
@end

@implementation CardDAViCloudGetAccountPropertiesTaskGroup

- (void)_setPropertiesFromParsedResponses:(id)a3
{
  v4 = a3;
  v75.receiver = self;
  v75.super_class = CardDAViCloudGetAccountPropertiesTaskGroup;
  [(CardDAViCloudGetAccountPropertiesTaskGroup *)&v75 _setPropertiesFromParsedResponses:v4];
  v5 = *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__addressBookHomes];
  v40 = OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__addressBookHomes;
  *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__addressBookHomes] = 0;

  v6 = *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__directoryGatewayURLs];
  v60 = self;
  v39 = OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__directoryGatewayURLs;
  *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__directoryGatewayURLs] = 0;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v4;
  v41 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v41)
  {
    v38 = *v72;
    v45 = cdXMLCardDAVURI;
    v36 = cdXMLCardDAVDirectoryGateway;
    v37 = cdXMLCardDAVAddressBookHomeSet;
    do
    {
      v7 = 0;
      do
      {
        if (*v72 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v7;
        v46 = [*(*(&v71 + 1) + 8 * v7) successfulPropertiesToValues];
        v43 = [v46 CDVObjectForKeyWithNameSpace:v45 andName:v37];
        v8 = [v43 hrefsAsFullURLs];
        v51 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v48 = v8;
        v54 = [v48 countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v54)
        {
          v52 = *v68;
          do
          {
            for (i = 0; i != v54; i = i + 1)
            {
              if (*v68 != v52)
              {
                objc_enumerationMutation(v48);
              }

              v10 = *(*(&v67 + 1) + 8 * i);
              v58 = [NSURL alloc];
              v56 = [v10 scheme];
              WeakRetained = objc_loadWeakRetained(&v60->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CoreDAVTaskGroup__accountInfoProvider]);
              v11 = [WeakRetained user];
              v12 = [v10 password];
              v13 = [v10 host];
              v14 = [v10 port];
              v15 = [v10 CDVRawPath];
              v16 = [v10 query];
              v17 = [v10 fragment];
              v18 = [v58 initWithCDVScheme:v56 user:v11 password:v12 host:v13 port:v14 path:v15 query:v16 fragment:v17];

              if (v18)
              {
                v19 = v18;
              }

              else
              {
                v19 = v10;
              }

              [v51 addObject:v19];
            }

            v54 = [v48 countByEnumeratingWithState:&v67 objects:v77 count:16];
          }

          while (v54);
        }

        if ([v51 count])
        {
          v20 = v51;
        }

        else
        {
          v20 = 0;
        }

        objc_storeStrong(&v60->CardDAVGetAccountPropertiesTaskGroup_opaque[v40], v20);
        v42 = [v46 CDVObjectForKeyWithNameSpace:v45 andName:v36];
        v21 = [v42 hrefsAsFullURLs];
        v50 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v47 = v21;
        v53 = [v47 countByEnumeratingWithState:&v63 objects:v76 count:16];
        if (v53)
        {
          v49 = *v64;
          do
          {
            for (j = 0; j != v53; j = j + 1)
            {
              if (*v64 != v49)
              {
                objc_enumerationMutation(v47);
              }

              v23 = *(*(&v63 + 1) + 8 * j);
              v57 = [NSURL alloc];
              v62 = [v23 scheme];
              v59 = objc_loadWeakRetained(&v60->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CoreDAVTaskGroup__accountInfoProvider]);
              v55 = [v59 user];
              v24 = [v23 password];
              v25 = [v23 host];
              v26 = [v23 port];
              v27 = [v23 CDVRawPath];
              v28 = [v23 parameterString];
              v29 = [v23 query];
              v30 = [v23 fragment];
              v31 = v26;
              v32 = [v57 initWithCDVScheme:v62 user:v55 password:v24 host:v25 port:v26 path:v27 parameterString:v28 query:v29 fragment:v30];

              if (v32)
              {
                v33 = v32;
              }

              else
              {
                v33 = v23;
              }

              [v50 addObject:v33];
            }

            v53 = [v47 countByEnumeratingWithState:&v63 objects:v76 count:16];
          }

          while (v53);
        }

        if ([v50 count])
        {
          v34 = v50;
        }

        else
        {
          v34 = 0;
        }

        objc_storeStrong(&v60->CardDAVGetAccountPropertiesTaskGroup_opaque[v39], v34);

        v7 = v44 + 1;
      }

      while ((v44 + 1) != v41);
      v41 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v41);
  }
}

@end