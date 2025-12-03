@interface CardDAViCloudGetAccountPropertiesTaskGroup
- (void)_setPropertiesFromParsedResponses:(id)responses;
@end

@implementation CardDAViCloudGetAccountPropertiesTaskGroup

- (void)_setPropertiesFromParsedResponses:(id)responses
{
  responsesCopy = responses;
  v75.receiver = self;
  v75.super_class = CardDAViCloudGetAccountPropertiesTaskGroup;
  [(CardDAViCloudGetAccountPropertiesTaskGroup *)&v75 _setPropertiesFromParsedResponses:responsesCopy];
  v5 = *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__addressBookHomes];
  v40 = OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__addressBookHomes;
  *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__addressBookHomes] = 0;

  v6 = *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__directoryGatewayURLs];
  selfCopy = self;
  v39 = OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__directoryGatewayURLs;
  *&self->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CardDAVGetAccountPropertiesTaskGroup__directoryGatewayURLs] = 0;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = responsesCopy;
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
        successfulPropertiesToValues = [*(*(&v71 + 1) + 8 * v7) successfulPropertiesToValues];
        v43 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v45 andName:v37];
        hrefsAsFullURLs = [v43 hrefsAsFullURLs];
        v51 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(hrefsAsFullURLs, "count")}];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v48 = hrefsAsFullURLs;
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
              scheme = [v10 scheme];
              WeakRetained = objc_loadWeakRetained(&selfCopy->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CoreDAVTaskGroup__accountInfoProvider]);
              user = [WeakRetained user];
              password = [v10 password];
              host = [v10 host];
              port = [v10 port];
              cDVRawPath = [v10 CDVRawPath];
              query = [v10 query];
              fragment = [v10 fragment];
              v18 = [v58 initWithCDVScheme:scheme user:user password:password host:host port:port path:cDVRawPath query:query fragment:fragment];

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

        objc_storeStrong(&selfCopy->CardDAVGetAccountPropertiesTaskGroup_opaque[v40], v20);
        v42 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v45 andName:v36];
        hrefsAsFullURLs2 = [v42 hrefsAsFullURLs];
        v50 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(hrefsAsFullURLs2, "count")}];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v47 = hrefsAsFullURLs2;
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
              scheme2 = [v23 scheme];
              v59 = objc_loadWeakRetained(&selfCopy->CardDAVGetAccountPropertiesTaskGroup_opaque[OBJC_IVAR___CoreDAVTaskGroup__accountInfoProvider]);
              user2 = [v59 user];
              password2 = [v23 password];
              host2 = [v23 host];
              port2 = [v23 port];
              cDVRawPath2 = [v23 CDVRawPath];
              parameterString = [v23 parameterString];
              query2 = [v23 query];
              fragment2 = [v23 fragment];
              v31 = port2;
              v32 = [v57 initWithCDVScheme:scheme2 user:user2 password:password2 host:host2 port:port2 path:cDVRawPath2 parameterString:parameterString query:query2 fragment:fragment2];

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

        objc_storeStrong(&selfCopy->CardDAVGetAccountPropertiesTaskGroup_opaque[v39], v34);

        v7 = v44 + 1;
      }

      while ((v44 + 1) != v41);
      v41 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v41);
  }
}

@end