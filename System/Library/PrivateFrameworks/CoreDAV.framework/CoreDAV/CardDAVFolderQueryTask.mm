@interface CardDAVFolderQueryTask
- (CardDAVFolderQueryTask)initWithSearchTerms:(id)a3 searchLimit:(unint64_t)a4 atURL:(id)a5 appSpecificDataItemClass:(Class)a6;
- (void)addFiltersToXMLData:(id)a3;
@end

@implementation CardDAVFolderQueryTask

- (CardDAVFolderQueryTask)initWithSearchTerms:(id)a3 searchLimit:(unint64_t)a4 atURL:(id)a5 appSpecificDataItemClass:(Class)a6
{
  v9.receiver = self;
  v9.super_class = CardDAVFolderQueryTask;
  v6 = [(CoreDAVContainerQueryTask *)&v9 _initWithSearchTerms:a3 searchLimit:a4 atURL:a5 appSpecificDataItemClass:a6];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 39, @"urn:ietf:params:xml:ns:carddav");
    objc_storeStrong(&v7->super._appSpecificQueryCommand, @"addressbook-query");
    objc_storeStrong(&v7->super._appSpecificDataProp, @"address-data");
  }

  return v7;
}

- (void)addFiltersToXMLData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = @"urn:ietf:params:xml:ns:carddav";
  [v4 startElement:@"anyof" inNamespace:0 withAttributeNamesAndValues:?];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [MEMORY[0x277CBEB98] setWithObjects:{@"NICKNAME", @"FN", @"EMAIL", @"ADR", @"IMPP", @"ORG", @"TEL", 0}];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v18 = *v27;
    v19 = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v16 = *(*(&v26 + 1) + 8 * v6);
        v7 = v4;
        v8 = v5;
        [v4 startElement:@"prop-filter" inNamespace:v5 withAttributeNamesAndValues:{@"name", v16, @"test", @"allof", 0}];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = self->super._searchTerms;
        v10 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v7 appendElement:@"text-match" inNamespace:v8 withStringContent:*(*(&v22 + 1) + 8 * i) withAttributeNamesAndValues:{@"collation", @"i;unicode-casemap", @"match-type", @"contains", 0}];
            }

            v11 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }

        v4 = v7;
        v5 = v8;
        [v7 endElement:@"prop-filter" inNamespace:v8];
        v6 = v21 + 1;
        self = v19;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  [v4 endElement:@"filter" inNamespace:v5];
  if (self->super._searchLimit)
  {
    [v4 startElement:@"limit" inNamespace:v5 withAttributeNamesAndValues:0];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->super._searchLimit];
    [v4 appendElement:@"nresults" inNamespace:v5 withStringContent:v14 withAttributeNamesAndValues:0];

    [v4 endElement:@"limit" inNamespace:v5];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end