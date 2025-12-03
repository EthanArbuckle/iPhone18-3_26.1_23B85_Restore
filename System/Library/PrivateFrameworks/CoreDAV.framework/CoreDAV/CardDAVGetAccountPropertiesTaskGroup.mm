@interface CardDAVGetAccountPropertiesTaskGroup
- (id)_copyAccountPropertiesPropFindElements;
- (id)description;
- (void)_setPropertiesFromParsedResponses:(id)responses;
@end

@implementation CardDAVGetAccountPropertiesTaskGroup

- (id)description
{
  v6.receiver = self;
  v6.super_class = CardDAVGetAccountPropertiesTaskGroup;
  v3 = [(CoreDAVGetAccountPropertiesTaskGroup *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"\tAddressBook home urls: %@\n", self->_addressBookHomes];
  [v4 appendFormat:@"\tDirectory Gateway urls: %@\n", self->_directoryGatewayURLs];

  return v4;
}

- (id)_copyAccountPropertiesPropFindElements
{
  v5.receiver = self;
  v5.super_class = CardDAVGetAccountPropertiesTaskGroup;
  _copyAccountPropertiesPropFindElements = [(CoreDAVGetAccountPropertiesTaskGroup *)&v5 _copyAccountPropertiesPropFindElements];
  v3 = [_copyAccountPropertiesPropFindElements mutableCopy];
  [v3 CDVAddItemParserMappingWithNameSpace:@"urn:ietf:params:xml:ns:carddav" name:@"addressbook-home-set" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:@"urn:ietf:params:xml:ns:carddav" name:@"directory-gateway" parseClass:objc_opt_class()];

  return v3;
}

- (void)_setPropertiesFromParsedResponses:(id)responses
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = responses;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v16 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(obj);
        }

        successfulPropertiesToValues = [*(*(&v18 + 1) + 8 * i) successfulPropertiesToValues];
        v8 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:@"addressbook-home-set"];
        hrefsAsFullURLs = [v8 hrefsAsFullURLs];
        if ([hrefsAsFullURLs count])
        {
          v10 = hrefsAsFullURLs;
        }

        else
        {
          v10 = 0;
        }

        objc_storeStrong(&self->_addressBookHomes, v10);
        v11 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:@"directory-gateway"];
        hrefsAsFullURLs2 = [v11 hrefsAsFullURLs];
        if ([hrefsAsFullURLs2 count])
        {
          v13 = hrefsAsFullURLs2;
        }

        else
        {
          v13 = 0;
        }

        objc_storeStrong(&self->_directoryGatewayURLs, v13);
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v17.receiver = self;
  v17.super_class = CardDAVGetAccountPropertiesTaskGroup;
  [(CoreDAVGetAccountPropertiesTaskGroup *)&v17 _setPropertiesFromParsedResponses:obj];

  v14 = *MEMORY[0x277D85DE8];
}

@end