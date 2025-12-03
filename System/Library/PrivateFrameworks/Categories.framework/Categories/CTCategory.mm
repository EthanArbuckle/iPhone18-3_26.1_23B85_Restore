@interface CTCategory
+ (CKContextClient)client;
+ (id)_DHIDtoCategoryDisplayNameMap;
+ (id)_DHToAppStoreCategoriesMap;
+ (id)_bundleIdentifierForContextResponse:(id)response;
+ (id)_equivalentBundleIDsMapping;
+ (id)_equivalentBundleIDsMappingForWatchOSBundleID:(id)d;
+ (id)_equivalentBundleIDsWithSchemesRemovedMapping;
+ (id)_getAssociatedDomainsForHostNames:(id)names;
+ (id)_getEquivalentBundleIdentifiers:(id)identifiers;
+ (id)_identifierForContextResponse:(id)response;
+ (id)_newXpcConnection;
+ (id)_overrideEquivalentIdentifiers:(id)identifiers forBundleID:(id)d;
+ (id)_relatedItemsForContextResponse:(id)response;
+ (id)_urlComponentsForHostName:(id)name;
+ (id)_urlStringsForHostNames:(id)names;
+ (id)_xpcConnection;
+ (id)bundleIDForPlatform:(id)platform fromBundleID:(id)d platform:(id)a5;
+ (id)equivalentIdentifiersForBundleID:(id)d;
+ (id)itemWith:(id)with platform:(id)platform array:(id)array;
+ (id)localizedNameForIdentifier:(id)identifier;
+ (id)parentAppBundleIdentifierForAppRecord:(id)record;
+ (id)schemeStringForPlatform:(id)platform;
+ (id)shortLocalizedNameForIdentifier:(id)identifier;
+ (id)systemAppCategoryIdentifierForBundleIdentifier:(id)identifier;
+ (id)systemCategoryIDWithPatternMatching:(id)matching;
+ (void)_getCategoryTypeForDomainName:(id)name withCompletionHandler:(id)handler;
+ (void)_lookupAppStoreUsing:(id)using platform:(id)platform withCompletionHandler:(id)handler;
+ (void)categoryForBundleID:(id)d platform:(id)platform withCompletionHandler:(id)handler;
+ (void)categoryForBundleID:(id)d withCompletionHandler:(id)handler;
+ (void)categoryForBundleIdentifiers:(id)identifiers platform:(id)platform withCompletionHandler:(id)handler;
+ (void)categoryForDomainName:(id)name withCompletionHandler:(id)handler;
+ (void)categoryForDomainNames:(id)names withCompletionHandler:(id)handler;
+ (void)categoryForDomainURL:(id)l withCompletionHandler:(id)handler;
+ (void)categoryForDomainURLs:(id)ls withCompletionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCategory:(id)category;
- (BOOL)isSystemBundleIdentifier;
- (CTCategory)initWithCoder:(id)coder;
- (CTCategory)initWithIdentifier:(id)identifier equivalentBundleIdentifiers:(id)identifiers webDomains:(id)domains bundleIdentifier:(id)bundleIdentifier primaryWebDomain:(id)domain canonicalBundleIdentifier:(id)canonicalBundleIdentifier;
- (NSString)localizedName;
- (id)description;
- (unint64_t)hash;
- (void)_ctCategoryCommonInitWithIdentifier:(id)identifier equivalentBundleIdentifiers:(id)identifiers webDomains:(id)domains bundleIdentifier:(id)bundleIdentifier primaryWebDomain:(id)domain canonicalBundleIdentifier:(id)canonicalBundleIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCategory

+ (id)_equivalentBundleIDsMapping
{
  if (_equivalentBundleIDsMapping_onceToken != -1)
  {
    +[CTCategory _equivalentBundleIDsMapping];
  }

  v3 = _equivalentBundleIDsMapping__mapping;

  return v3;
}

+ (CKContextClient)client
{
  if (client_onceToken != -1)
  {
    +[CTCategory client];
  }

  v3 = client_client;

  return v3;
}

uint64_t __20__CTCategory_client__block_invoke()
{
  client_client = [MEMORY[0x277CFC738] clientWithDefaultRequestType:6];

  return MEMORY[0x2821F96F8]();
}

+ (id)_xpcConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _newXpcConnection = _connection;
  if (!_newXpcConnection)
  {
    _newXpcConnection = [selfCopy _newXpcConnection];
    objc_storeStrong(&_connection, _newXpcConnection);
  }

  objc_sync_exit(selfCopy);

  return _newXpcConnection;
}

+ (id)_newXpcConnection
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "CTCategory::_newXpcConnection", v5, 2u);
  }

  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.ctcategories.service"];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285613188];
  [v2 setRemoteObjectInterface:v3];
  [v2 resume];

  return v2;
}

- (CTCategory)initWithIdentifier:(id)identifier equivalentBundleIdentifiers:(id)identifiers webDomains:(id)domains bundleIdentifier:(id)bundleIdentifier primaryWebDomain:(id)domain canonicalBundleIdentifier:(id)canonicalBundleIdentifier
{
  v21.receiver = self;
  v21.super_class = CTCategory;
  canonicalBundleIdentifierCopy = canonicalBundleIdentifier;
  domainCopy = domain;
  bundleIdentifierCopy = bundleIdentifier;
  domainsCopy = domains;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v19 = [(CTCategory *)&v21 init];
  [(CTCategory *)v19 _ctCategoryCommonInitWithIdentifier:identifierCopy equivalentBundleIdentifiers:identifiersCopy webDomains:domainsCopy bundleIdentifier:bundleIdentifierCopy primaryWebDomain:domainCopy canonicalBundleIdentifier:canonicalBundleIdentifierCopy, v21.receiver, v21.super_class];

  return v19;
}

- (void)_ctCategoryCommonInitWithIdentifier:(id)identifier equivalentBundleIdentifiers:(id)identifiers webDomains:(id)domains bundleIdentifier:(id)bundleIdentifier primaryWebDomain:(id)domain canonicalBundleIdentifier:(id)canonicalBundleIdentifier
{
  canonicalBundleIdentifierCopy = canonicalBundleIdentifier;
  domainCopy = domain;
  bundleIdentifierCopy = bundleIdentifier;
  domainsCopy = domains;
  identifiersCopy = identifiers;
  v19 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v19;

  v21 = [bundleIdentifierCopy copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v21;

  v23 = [identifiersCopy copy];
  equivalentBundleIdentifiers = self->_equivalentBundleIdentifiers;
  self->_equivalentBundleIdentifiers = v23;

  v25 = [domainsCopy copy];
  webDomains = self->_webDomains;
  self->_webDomains = v25;

  v27 = [domainCopy copy];
  primaryWebDomain = self->_primaryWebDomain;
  self->_primaryWebDomain = v27;

  v29 = [canonicalBundleIdentifierCopy copy];
  canonicalBundleIdentifier = self->_canonicalBundleIdentifier;
  self->_canonicalBundleIdentifier = v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"CTPrimaryIdenfier"];
  [coderCopy encodeObject:self->_equivalentBundleIdentifiers forKey:@"CTEquivalentBundleIdentifiers"];
  [coderCopy encodeObject:self->_webDomains forKey:@"CTWebdomains"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"CTBundleIdentifier"];
  [coderCopy encodeObject:self->_primaryWebDomain forKey:@"CTPrimayWebDomain"];
  equivalentBundleIdentifiers = self->_equivalentBundleIdentifiers;
  if (equivalentBundleIdentifiers)
  {
    firstObject = [(NSArray *)equivalentBundleIdentifiers firstObject];
    [coderCopy encodeObject:firstObject forKey:@"CTCanonicalBundleIdentifier"];
  }

  else
  {
    [coderCopy encodeObject:self->_bundleIdentifier forKey:@"CTCanonicalBundleIdentifier"];
  }
}

- (CTCategory)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CTPrimaryIdenfier"];
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CTWebdomains"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CTBundleIdentifier"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CTPrimayWebDomain"];
  v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CTEquivalentBundleIdentifiers"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CTCanonicalBundleIdentifier"];

  if (v9)
  {
    v18.receiver = self;
    v18.super_class = CTCategory;
    v15 = [(CTCategory *)&v18 init];
    [(CTCategory *)v15 _ctCategoryCommonInitWithIdentifier:v9 equivalentBundleIdentifiers:v13 webDomains:v10 bundleIdentifier:v11 primaryWebDomain:v12 canonicalBundleIdentifier:v14];
    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)localizedNameForIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCA8D8];
  identifierCopy = identifier;
  v6 = [v4 bundleForClass:self];
  _DHIDtoCategoryDisplayNameMap = [self _DHIDtoCategoryDisplayNameMap];
  v8 = [_DHIDtoCategoryDisplayNameMap objectForKeyedSubscript:identifierCopy];

  v9 = [v6 localizedStringForKey:v8 value:&stru_28560DC18 table:0];

  return v9;
}

+ (id)shortLocalizedNameForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _DHIDtoCategoryDisplayNameMap = [self _DHIDtoCategoryDisplayNameMap];
  v6 = [_DHIDtoCategoryDisplayNameMap objectForKeyedSubscript:identifierCopy];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v8 = [v6 stringByAppendingString:@"_Short"];
  v9 = [v7 localizedStringForKey:v8 value:&stru_28560DC18 table:0];

  return v9;
}

- (NSString)localizedName
{
  v3 = objc_opt_class();
  identifier = [(CTCategory *)self identifier];
  v5 = [v3 localizedNameForIdentifier:identifier];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(CTCategory *)self identifier];
  bundleIdentifier = [(CTCategory *)self bundleIdentifier];
  canonicalBundleIdentifier = [(CTCategory *)self canonicalBundleIdentifier];
  equivalentBundleIdentifiers = [(CTCategory *)self equivalentBundleIdentifiers];
  primaryWebDomain = [(CTCategory *)self primaryWebDomain];
  webDomains = [(CTCategory *)self webDomains];
  v10 = [v3 stringWithFormat:@"%@ - { bundle identifier: %@, canonicalBundleIdentifier: %@, equivalent bundle IDs: %@ } domain info:{ primaryWebDomain: %@ <-> webDomains: %@ }", identifier, bundleIdentifier, canonicalBundleIdentifier, equivalentBundleIdentifiers, primaryWebDomain, webDomains];

  return v10;
}

- (BOOL)isEqualToCategory:(id)category
{
  categoryCopy = category;
  identifier = [(CTCategory *)self identifier];
  identifier2 = [categoryCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    equivalentBundleIdentifiers = [(CTCategory *)self equivalentBundleIdentifiers];
    equivalentBundleIdentifiers2 = [categoryCopy equivalentBundleIdentifiers];
    if (equivalentBundleIdentifiers == equivalentBundleIdentifiers2 || [equivalentBundleIdentifiers isEqual:equivalentBundleIdentifiers2])
    {
      webDomains = [(CTCategory *)self webDomains];
      webDomains2 = [categoryCopy webDomains];
      if (webDomains == webDomains2 || [webDomains isEqual:webDomains2])
      {
        primaryWebDomain = [(CTCategory *)self primaryWebDomain];
        primaryWebDomain2 = [categoryCopy primaryWebDomain];
        if (primaryWebDomain == primaryWebDomain2 || [primaryWebDomain isEqual:primaryWebDomain2])
        {
          bundleIdentifier = [(CTCategory *)self bundleIdentifier];
          bundleIdentifier2 = [categoryCopy bundleIdentifier];
          if (bundleIdentifier == bundleIdentifier2 || [bundleIdentifier isEqual:bundleIdentifier2])
          {
            v16 = [(CTCategory *)self canonicalBundleIdentifier:bundleIdentifier];
            canonicalBundleIdentifier = [categoryCopy canonicalBundleIdentifier];
            v18 = v16 == canonicalBundleIdentifier || [v16 isEqual:canonicalBundleIdentifier];

            bundleIdentifier = v20;
            primaryWebDomain = v21;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTCategory *)self isEqualToCategory:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = CTCategory;
  v3 = [(CTCategory *)&v17 hash];
  identifier = [(CTCategory *)self identifier];
  v5 = [identifier hash];
  bundleIdentifier = [(CTCategory *)self bundleIdentifier];
  v7 = v5 ^ [bundleIdentifier hash];
  equivalentBundleIdentifiers = [(CTCategory *)self equivalentBundleIdentifiers];
  v9 = v7 ^ [equivalentBundleIdentifiers hash];
  canonicalBundleIdentifier = [(CTCategory *)self canonicalBundleIdentifier];
  v11 = v9 ^ [canonicalBundleIdentifier hash];
  webDomains = [(CTCategory *)self webDomains];
  v13 = v11 ^ [webDomains hash] ^ v3;
  primaryWebDomain = [(CTCategory *)self primaryWebDomain];
  v15 = [primaryWebDomain hash];

  return v13 ^ v15;
}

- (BOOL)isSystemBundleIdentifier
{
  identifier = [(CTCategory *)self identifier];
  v3 = [identifier hasPrefix:@"DH00"];

  return v3;
}

+ (void)categoryForBundleID:(id)d platform:(id)platform withCompletionHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v19[0] = dCopy;
  v10 = MEMORY[0x277CBEA60];
  platformCopy = platform;
  v12 = [v10 arrayWithObjects:v19 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__CTCategory_categoryForBundleID_platform_withCompletionHandler___block_invoke;
  v16[3] = &unk_278DAAED8;
  v17 = dCopy;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  [self categoryForBundleIdentifiers:v12 platform:platformCopy withCompletionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __65__CTCategory_categoryForBundleID_platform_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 objectForKey:v5];
  (*(*(a1 + 40) + 16))();
}

+ (void)categoryForBundleIdentifiers:(id)identifiers platform:(id)platform withCompletionHandler:(id)handler
{
  identifiersCopy = identifiers;
  platformCopy = platform;
  handlerCopy = handler;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke;
  v35[3] = &unk_278DAAF78;
  v11 = handlerCopy;
  v36 = v11;
  selfCopy = self;
  v12 = MEMORY[0x245D2FDE0](v35);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__0;
  v33[4] = __Block_byref_object_dispose__0;
  array = [MEMORY[0x277CBEB18] array];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__0;
  v31[4] = __Block_byref_object_dispose__0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__0;
  v29[4] = __Block_byref_object_dispose__0;
  v30 = 0;
  v13 = +[CTCategory _xpcConnection];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_206;
  v27[3] = &unk_278DAAFA0;
  v14 = v11;
  v28 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v27];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_208;
  v19[3] = &unk_278DAB018;
  v16 = platformCopy;
  v20 = v16;
  v23 = v31;
  v24 = v29;
  v25 = v33;
  v17 = identifiersCopy;
  v21 = v17;
  v18 = v12;
  v22 = v18;
  selfCopy2 = self;
  [v15 genreIDsAndCounterpartIdentifiersForInstalledBundleIDs:v17 replyHandler:v19];

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v33, 8);
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__0;
  v33[4] = __Block_byref_object_dispose__0;
  v34 = [MEMORY[0x277CBEB38] dictionary];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_202;
    v26[3] = &unk_278DAAF00;
    v14 = *(a1 + 40);
    v26[4] = &v27;
    v26[5] = v14;
    [v5 enumerateKeysAndObjectsUsingBlock:v26];
    v15 = [*(a1 + 40) client];
    v16 = [v15 newRequest];

    v17 = [v28[5] copy];
    [v16 setUrls:v17];

    [v16 setIncludeHigherLevelTopics:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_2;
    v21[3] = &unk_278DAAF50;
    v18 = v5;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = v18;
    v24 = v33;
    v25 = v20;
    v23 = v19;
    [v16 executeCategorizationRequestWithReply:v21];

    _Block_object_dispose(&v27, 8);
  }

  _Block_object_dispose(v33, 8);
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_202(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 firstObject];
  v7 = v6;
  v8 = @"DH1009";
  if (v6)
  {
    v8 = v6;
  }

  v10 = v8;

  v9 = [*(a1 + 40) _appBundleIdentifierStringFor:v5 categoryIdentifier:v10];

  if ([v9 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v9];
  }
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_3;
  v17[3] = &unk_278DAAF28;
  v8 = v5;
  v18 = v8;
  v19 = *(a1 + 48);
  [v7 enumerateKeysAndObjectsUsingBlock:v17];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_2_cold_1(v6, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v16 = *(*(*(a1 + 48) + 8) + 40);
  }

  (*(*(a1 + 40) + 16))();
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v44 = a2;
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = v6;
  v8 = @"DH1009";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v42 = [objc_opt_class() _appBundleIdentifierStringFor:v44 categoryIdentifier:v9];
  v10 = [*(a1 + 32) objectForKeyedSubscript:?];
  v11 = [objc_opt_class() _relatedItemsForContextResponse:v10];
  v41 = v10;
  v12 = [objc_opt_class() _identifierForContextResponse:v10];
  v40 = v9;
  if ([(__CFString *)v12 length])
  {
    v38 = v12;
  }

  else
  {
    v13 = v9;

    v38 = v13;
  }

  v14 = [MEMORY[0x277CBEB40] orderedSet];
  if ([v11 count])
  {
    v15 = *(a1 + 48);
    v16 = [v11 array];
    v37 = [v15 _getAssociatedDomainsForHostNames:v16];

    v17 = *(a1 + 48);
    v18 = [v11 array];
    v19 = [v17 _getEquivalentBundleIdentifiers:v18];

    if ([v19 count])
    {
      [v14 unionOrderedSet:v19];
    }
  }

  else
  {
    v37 = 0;
  }

  v20 = [*(a1 + 48) equivalentIdentifiersForBundleID:v44];
  if (v20)
  {
    [v14 unionOrderedSet:v20];
  }

  v21 = [v5 count];
  v22 = MEMORY[0x277CBEB40];
  if (v21 > 1)
  {
    v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, objc_msgSend(v5, "count") - 1}];
    v25 = [v5 objectsAtIndexes:v24];
    v23 = [v22 orderedSetWithArray:v25];
  }

  else
  {
    v23 = [MEMORY[0x277CBEB40] orderedSet];
  }

  if ([v23 count])
  {
    [v14 unionOrderedSet:v23];
  }

  v43 = v5;
  v39 = v11;
  if ([v14 count])
  {
    v26 = [v14 firstObject];
    v27 = v44;
  }

  else
  {
    v28 = v44;
    v27 = v44;
    v26 = v28;
  }

  [v14 addObject:v27];
  v29 = [CTCategory systemAppCategoryIdentifierForBundleIdentifier:v44];
  v30 = [v14 array];
  v31 = [CTCategory _overrideEquivalentIdentifiers:v30 forBundleID:v44];

  v32 = [CTCategory alloc];
  if (v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = v38;
  }

  v34 = [v37 array];
  v35 = [(CTCategory *)v32 initWithIdentifier:v33 equivalentBundleIdentifiers:v31 webDomains:v34 bundleIdentifier:v44];

  [(CTCategory *)v35 setCanonicalBundleIdentifier:v26];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v35 forKeyedSubscript:v44];
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_206(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_206_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 138412803;
    v51 = v7;
    v52 = 2113;
    v53 = v5;
    v54 = 2112;
    v55 = v6;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "genreIDsAndCounterpartIdentifiersForInstalledBundleIDs:completionHandler: platform: %@, %{private}@ error:%@", buf, 0x20u);
  }

  if (!v6)
  {
    v8 = [v5 mutableCopy];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v11 = [*(a1 + 40) mutableCopy];
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 72) + 8) + 40);
  v15 = [*(*(*(a1 + 56) + 8) + 40) allKeys];
  [v14 removeObjectsInArray:v15];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138477827;
    v51 = v16;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "notInstalledBundleIdentifiers: %{private}@", buf, 0xCu);
  }

  v17 = @"CTOSPlatformiOS";
  v18 = [(__CFString *)v17 isEqualToString:@"CTOSPlatformwatchOS"];

  if (v18)
  {
    v35 = v5;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = *(*(*(a1 + 72) + 8) + 40);
    v20 = [v19 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          v48 = @"DH1009";
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:{1, v35}];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v25 forKeyedSubscript:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v21);
    }

    v26 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
    v5 = v35;
  }

  else if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_209;
    v41[3] = &unk_278DAAFC8;
    v43 = *(a1 + 56);
    v42 = *(a1 + 40);
    v27 = MEMORY[0x245D2FDE0](v41);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138477827;
      v51 = v28;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "NotInstalledBundleIdentifiers: %{private}@ ", buf, 0xCu);
    }

    v29 = *(a1 + 80);
    v30 = *(*(*(a1 + 72) + 8) + 40);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_211;
    v37[3] = &unk_278DAAFF0;
    v39 = v27;
    v36 = *(a1 + 48);
    v31 = v36;
    v40 = v36;
    v38 = *(a1 + 32);
    v32 = v27;
    [v29 _lookupAppStoreUsing:v30 platform:@"CTOSPlatformAll" withCompletionHandler:v37];
  }

  else
  {
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v33 = 0;
    }

    else
    {
      v33 = *(*(*(a1 + 56) + 8) + 40);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v33);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_209(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(*(*(a1 + 40) + 8) + 40) count];
  if (v2 != [*(a1 + 32) count])
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [*(*(*(a1 + 40) + 8) + 40) allKeys];
    v5 = [v3 setWithArray:v4];

    v6 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 32)];
    v7 = MEMORY[0x277CBEB98];
    v8 = [*(*(*(a1 + 40) + 8) + 40) allKeys];
    v9 = [v7 setWithArray:v8];

    [v6 minusSet:v9];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          v24 = @"DH1009";
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:{1, v18}];
          [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKeyedSubscript:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v12);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v23 = v10;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "fallbackToDefaultValueHandler - notInstalledBundleIdentifiers: %{private}@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_211(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(*(*(a1 + 56) + 8) + 40) addEntriesFromDictionary:a3];
  if ([v5 code] == -3001)
  {
    (*(*(a1 + 40) + 16))();
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    if ([*(a1 + 32) isEqualToString:@"CTOSPlatformAll"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = *(*(*(a1 + 56) + 8) + 40);
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ERROR %@ categoryForBundleIdentifiers: %@", &v11, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }

    if (!v5)
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
    }

    v7 = *(*(a1 + 48) + 16);
  }

  v7();

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)categoryForBundleID:(id)d withCompletionHandler:(id)handler
{
  v9 = @"CTOSPlatformiOS";
  handlerCopy = handler;
  dCopy = d;
  [self categoryForBundleID:dCopy platform:v9 withCompletionHandler:handlerCopy];
}

+ (void)categoryForDomainURL:(id)l withCompletionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  absoluteString = [l absoluteString];
  v13[0] = absoluteString;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__CTCategory_categoryForDomainURL_withCompletionHandler___block_invoke;
  v11[3] = &unk_278DAACD8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  [self categoryForDomainNames:v8 withCompletionHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __57__CTCategory_categoryForDomainURL_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 allValues];
  v6 = [v7 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)categoryForDomainURLs:(id)ls withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "+[CTCategory categoryForDomainURLs:withCompletionHandler:]";
    *&buf[12] = 2048;
    *&buf[14] = [lsCopy count];
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "START %s :%lu", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = lsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        host = [*(*(&v21 + 1) + 8 * v12) host];
        [v8 addObject:host];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__CTCategory_categoryForDomainURLs_withCompletionHandler___block_invoke;
  v17[3] = &unk_278DAB068;
  v14 = v9;
  v18 = v14;
  v20 = buf;
  v15 = handlerCopy;
  v19 = v15;
  [self categoryForDomainNames:v8 withCompletionHandler:v17];

  _Block_object_dispose(buf, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __58__CTCategory_categoryForDomainURLs_withCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__CTCategory_categoryForDomainURLs_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_278DAB040;
  v7 = a1[6];
  v13 = v5;
  v14 = v7;
  v8 = v5;
  v9 = a3;
  [v6 enumerateObjectsUsingBlock:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "+[CTCategory categoryForDomainURLs:withCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DONE %s", buf, 0xCu);
  }

  (*(a1[5] + 16))(a1[5], *(*(a1[6] + 8) + 40), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void __58__CTCategory_categoryForDomainURLs_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 host];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

+ (void)categoryForDomainName:(id)name withCompletionHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v14[0] = name;
  v7 = MEMORY[0x277CBEA60];
  nameCopy = name;
  v9 = [v7 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__CTCategory_categoryForDomainName_withCompletionHandler___block_invoke;
  v12[3] = &unk_278DAACD8;
  v13 = handlerCopy;
  v10 = handlerCopy;
  [self categoryForDomainNames:v9 withCompletionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __58__CTCategory_categoryForDomainName_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 allValues];
  v6 = [v7 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)categoryForDomainNames:(id)names withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  handlerCopy = handler;
  if ([namesCopy count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "+[CTCategory categoryForDomainNames:withCompletionHandler:]";
      v19 = 2048;
      v20 = [namesCopy count];
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "START %s :%lu", buf, 0x16u);
    }

    v8 = [self _urlStringsForHostNames:namesCopy];
    client = [self client];
    newRequest = [client newRequest];

    v11 = [v8 copy];
    [newRequest setUrls:v11];

    [newRequest setIncludeHigherLevelTopics:1];
    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__CTCategory_categoryForDomainNames_withCompletionHandler___block_invoke;
    v13[3] = &unk_278DAB0E0;
    objc_copyWeak(&v16, buf);
    v15 = handlerCopy;
    v14 = namesCopy;
    [newRequest executeCategorizationRequestWithReply:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __59__CTCategory_categoryForDomainNames_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v35 = v5;
  if (!WeakRetained)
  {
    v6 = *(a1 + 40);
    goto LABEL_5;
  }

  v34 = a1;
  if (v5)
  {
    v6 = *(a1 + 40);
LABEL_5:
    (*(v6 + 16))(v6, 0, v5);
    goto LABEL_31;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__0;
  v63 = __Block_byref_object_dispose__0;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = [MEMORY[0x277CBEB38] dictionary];
  v36 = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v49 objects:v68 count:16];
  v8 = WeakRetained;
  if (v7)
  {
    v40 = *v50;
    do
    {
      v42 = v7;
      for (i = 0; i != v42; ++i)
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [v8 _urlComponentsForHostName:{v10, v34, v35}];
        v12 = [v11 string];
        v13 = [v41 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 error];
          v16 = v15 == 0;

          if (v16)
          {
            v17 = [WeakRetained _identifierForContextResponse:v14];
            v18 = [WeakRetained _bundleIdentifierForContextResponse:v14];
            v19 = v18;
            v20 = @"DH1009";
            if (v17)
            {
              v20 = v17;
            }

            v39 = v20;
            if ([v18 length])
            {
              [v36 setObject:v19 forKeyedSubscript:v10];
            }

            if (![v19 length])
            {
              v21 = [v11 host];
              v22 = v21;
              if (v21)
              {
                v23 = v21;
              }

              else
              {
                v23 = v10;
              }

              v37 = v23;

              v67 = v37;
              v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
              v25 = [WeakRetained _getAssociatedDomainsForHostNames:v24];

              v26 = [CTCategory alloc];
              v27 = [v25 array];
              v28 = [v25 firstObject];
              v29 = [(CTCategory *)v26 initWithIdentifier:v39 webDomains:v27 bundleIdentifier:0 primaryWebDomain:v28];

              [v54[5] setObject:v29 forKeyedSubscript:v10];
            }
          }
        }

        v8 = WeakRetained;
      }

      v7 = [obj countByEnumeratingWithState:&v49 objects:v68 count:16];
    }

    while (v7);
  }

  if ([v36 count])
  {
    v30 = [v36 allValues];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __59__CTCategory_categoryForDomainNames_withCompletionHandler___block_invoke_214;
    v44[3] = &unk_278DAB0B8;
    v45 = v36;
    v47 = &v53;
    v48 = &v59;
    v46 = *(v34 + 40);
    [WeakRetained categoryForBundleIdentifiers:v30 platform:@"CTOSPlatformAll" withCompletionHandler:v44];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v66 = "+[CTCategory categoryForDomainNames:withCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DONE %s", buf, 0xCu);
    }

    v31 = v54[5];
    v32 = v60[5];
    (*(*(v34 + 40) + 16))();
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

LABEL_31:
  v33 = *MEMORY[0x277D85DE8];
}

void __59__CTCategory_categoryForDomainNames_withCompletionHandler___block_invoke_214(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CTCategory_categoryForDomainNames_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_278DAB090;
  v15 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "+[CTCategory categoryForDomainNames:withCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DONE %s", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), v10);

  v11 = *MEMORY[0x277D85DE8];
}

void __59__CTCategory_categoryForDomainNames_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  if (v5)
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:v5 forKeyedSubscript:v6];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
}

+ (id)systemAppCategoryIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self systemCategoryIDWithPatternMatching:identifierCopy];
  if (!v5)
  {
    v6 = [CTCategories systemHiddenBundleIdentifiersForDeviceFamily:102];
    v7 = [v6 containsObject:identifierCopy];

    if (v7)
    {
      v5 = @"DH0011";
    }

    else
    {
      v8 = [CTCategories systemBlockableBundleIdentifiersForDeviceFamily:102];
      v9 = [v8 containsObject:identifierCopy];

      if (v9)
      {
        v5 = @"DH0012";
      }

      else
      {
        v10 = [CTCategories systemUnblockableBundleIdentifiersForDeviceFamily:102];
        v11 = [v10 containsObject:identifierCopy];

        if (v11)
        {
          v5 = @"DH0013";
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

+ (id)_overrideEquivalentIdentifiers:(id)identifiers forBundleID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  v7 = identifiersCopy;
  if (_overrideEquivalentIdentifiers_forBundleID__onceToken != -1)
  {
    +[CTCategory _overrideEquivalentIdentifiers:forBundleID:];
  }

  v8 = [_overrideEquivalentIdentifiers_forBundleID___equivalentBundleIDsOverrides objectForKey:dCopy];
  v9 = v7;
  if (v8)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectsInArray:v8];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 136315651;
      v13 = "+[CTCategory _overrideEquivalentIdentifiers:forBundleID:]";
      v14 = 2113;
      v15 = v7;
      v16 = 2113;
      v17 = v9;
      _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s %{private}@ -> %{private}@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __57__CTCategory__overrideEquivalentIdentifiers_forBundleID___block_invoke()
{
  v0 = _overrideEquivalentIdentifiers_forBundleID___equivalentBundleIDsOverrides;
  _overrideEquivalentIdentifiers_forBundleID___equivalentBundleIDsOverrides = &unk_2856108D8;
}

+ (id)systemCategoryIDWithPatternMatching:(id)matching
{
  v3 = MEMORY[0x277CCAC68];
  matchingCopy = matching;
  v5 = [v3 regularExpressionWithPattern:@"com.apple.InstallAssistant.*" options:1 error:0];
  v6 = [v5 numberOfMatchesInString:matchingCopy options:0 range:{0, objc_msgSend(matchingCopy, "length")}];

  if (v6)
  {
    v7 = @"DH0011";
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_getCategoryTypeForDomainName:(id)name withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "+[CTCategory _getCategoryTypeForDomainName:withCompletionHandler:]";
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v8 = [objc_opt_class() _urlComponentsForHostName:nameCopy];
  string = [v8 string];
  if ([string length])
  {
    client = [self client];
    newRequest = [client newRequest];

    [newRequest setIncludeHigherLevelTopics:1];
    [newRequest setUrl:string];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__CTCategory__getCategoryTypeForDomainName_withCompletionHandler___block_invoke;
    v13[3] = &unk_278DAAED8;
    v14 = string;
    v15 = handlerCopy;
    [newRequest executeCategorizationRequestWithReply:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 5001, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__CTCategory__getCategoryTypeForDomainName_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v6 = v5;
  if (v9 || !v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [objc_opt_class() _identifierForContextResponse:v5];
    if ([v7 length])
    {
      v8 = 5000;
    }

    else
    {
      v8 = 5001;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v8, 0);
  }
}

+ (id)_DHIDtoCategoryDisplayNameMap
{
  if (_DHIDtoCategoryDisplayNameMap_onceToken != -1)
  {
    +[CTCategory _DHIDtoCategoryDisplayNameMap];
  }

  v3 = _DHIDtoCategoryDisplayNameMap_DHCategories;

  return v3;
}

void __43__CTCategory__DHIDtoCategoryDisplayNameMap__block_invoke()
{
  v4[15] = *MEMORY[0x277D85DE8];
  v3[0] = @"DH1001";
  v3[1] = @"DH1002";
  v4[0] = @"Games";
  v4[1] = @"Social Networking";
  v3[2] = @"DH1003";
  v3[3] = @"DH1004";
  v4[2] = @"Entertainment";
  v4[3] = @"Creativity";
  v3[4] = @"DH1005";
  v3[5] = @"DH1006";
  v4[4] = @"Productivity";
  v4[5] = @"Education";
  v3[6] = @"DH1007";
  v3[7] = @"DH1008";
  v4[6] = @"Reading & Reference";
  v4[7] = @"Health & Fitness";
  v3[8] = @"DH1009";
  v3[9] = @"DH1011";
  v4[8] = @"Other";
  v4[9] = @"Utilities";
  v3[10] = @"DH1012";
  v3[11] = @"DH1013";
  v4[10] = @"Shopping & Food";
  v4[11] = @"Travel";
  v3[12] = @"DH0013";
  v3[13] = @"DH0012";
  v4[12] = @"System Unblockable Applications";
  v4[13] = @"System Blockable Applications";
  v3[14] = @"DH0011";
  v4[14] = @"System Hidden Applications";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:15];
  v1 = _DHIDtoCategoryDisplayNameMap_DHCategories;
  _DHIDtoCategoryDisplayNameMap_DHCategories = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)schemeStringForPlatform:(id)platform
{
  platformCopy = platform;
  if ([platformCopy isEqualToString:@"CTOSPlatformiOS"])
  {
    v5 = @"ios";
  }

  else if ([platformCopy isEqualToString:@"CTOSPlatformmacOS"])
  {
    v5 = @"macos";
  }

  else if ([platformCopy isEqualToString:@"CTOSPlatformwatchOS"])
  {
    v5 = @"watchos";
  }

  else if ([platformCopy isEqualToString:@"CTOSPlatformtvOS"])
  {
    v5 = @"tvos";
  }

  else if ([platformCopy isEqualToString:@"CTOSPlatformvisionOS"])
  {
    v5 = @"visionos";
  }

  else if ([platformCopy isEqualToString:@"CTOSPlatformAll"])
  {
    v5 = @"all";
  }

  else if ([platformCopy isEqualToString:@"CTOSPlatformCurrent"])
  {
    v6 = @"CTOSPlatformiOS";
    v5 = [self schemeStringForPlatform:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)bundleIDForPlatform:(id)platform fromBundleID:(id)d platform:(id)a5
{
  platformCopy = platform;
  dCopy = d;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v12 = [self schemeStringForPlatform:v10];
  [v11 setScheme:v12];

  [v11 setHost:dCopy];
  v13 = [v11 URL];
  absoluteString = [v13 absoluteString];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v15 = +[CTCategory _equivalentBundleIDsMapping];
  v16 = [v15 objectForKey:absoluteString];

  if (v16)
  {
    v17 = [self schemeStringForPlatform:platformCopy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__CTCategory_bundleIDForPlatform_fromBundleID_platform___block_invoke;
    v21[3] = &unk_278DAB108;
    v18 = v17;
    v22 = v18;
    v23 = &v24;
    [v16 enumerateObjectsUsingBlock:v21];
  }

  v19 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v19;
}

void __56__CTCategory_bundleIDForPlatform_fromBundleID_platform___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  v6 = [v11 scheme];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 host];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

+ (id)_DHToAppStoreCategoriesMap
{
  if (_DHToAppStoreCategoriesMap_onceToken != -1)
  {
    +[CTCategory _DHToAppStoreCategoriesMap];
  }

  v3 = _DHToAppStoreCategoriesMap_DHToAppStoreCategoriesMap;

  return v3;
}

void __40__CTCategory__DHToAppStoreCategoriesMap__block_invoke()
{
  v28[12] = *MEMORY[0x277D85DE8];
  v26[0] = @"Games";
  v26[1] = @"Stickers";
  v27[0] = @"Games";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v28[0] = v14;
  v27[1] = @"Social Networking";
  v25 = @"Social Networking";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v28[1] = v13;
  v27[2] = @"Entertainment";
  v24[0] = @"Entertainment";
  v24[1] = @"Music";
  v24[2] = @"Sports";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v28[2] = v0;
  v27[3] = @"Creativity";
  v23[0] = @"Photo & Video";
  v23[1] = @"Graphics & Design";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v28[3] = v1;
  v27[4] = @"Productivity";
  v22[0] = @"Productivity";
  v22[1] = @"Business";
  v22[2] = @"Finance";
  v22[3] = @"Developer Tools";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v28[4] = v2;
  v27[5] = @"Education";
  v21[0] = @"Education";
  v21[1] = @"Kids";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v28[5] = v3;
  v27[6] = @"Reading & Reference";
  v20[0] = @"Book";
  v20[1] = @"Reference";
  v20[2] = @"News";
  v20[3] = @"Weather";
  v20[4] = @"Magazines & Newspapers";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
  v28[6] = v4;
  v27[7] = @"Health & Fitness";
  v19[0] = @"Health & Fitness";
  v19[1] = @"Medical";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v28[7] = v5;
  v27[8] = @"Other";
  v18 = @"Miscellaneous";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v28[8] = v6;
  v27[9] = @"Utilities";
  v17 = @"Utilities";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v28[9] = v7;
  v27[10] = @"Shopping & Food";
  v16[0] = @"Food & Drink";
  v16[1] = @"Shopping";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v28[10] = v8;
  v27[11] = @"Travel";
  v15[0] = @"Travel";
  v15[1] = @"Navigation";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v28[11] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:12];
  v11 = _DHToAppStoreCategoriesMap_DHToAppStoreCategoriesMap;
  _DHToAppStoreCategoriesMap_DHToAppStoreCategoriesMap = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_lookupAppStoreUsing:(id)using platform:(id)platform withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  usingCopy = using;
  platformCopy = platform;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = platformCopy;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "_lookupAppStoreUsing %@", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __66__CTCategory__lookupAppStoreUsing_platform_withCompletionHandler___block_invoke;
  activity_block[3] = &unk_278DAB130;
  v16 = platformCopy;
  v17 = handlerCopy;
  v15 = usingCopy;
  v10 = platformCopy;
  v11 = usingCopy;
  v12 = handlerCopy;
  _os_activity_initiate(&dword_24331E000, "CTCategory _lookupAppStoreUsing:withCompletionHandler:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v13 = *MEMORY[0x277D85DE8];
}

void __66__CTCategory__lookupAppStoreUsing_platform_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = +[CTCategory _xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CTCategory__lookupAppStoreUsing_platform_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_278DAAFA0;
  v10 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CTCategory__lookupAppStoreUsing_platform_withCompletionHandler___block_invoke_266;
  v6[3] = &unk_278DAAED8;
  v7 = v4;
  v8 = *(a1 + 48);
  [v3 lookupAppStoreForBundleIDs:v5 platform:v7 replyHandler:v6];
}

void __66__CTCategory__lookupAppStoreUsing_platform_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "lookupAppStoreForBundleID:completionHandler: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

void __66__CTCategory__lookupAppStoreUsing_platform_withCompletionHandler___block_invoke_266(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v10 = 138412547;
    v11 = v7;
    v12 = 2113;
    v13 = v5;
    _os_log_impl(&dword_24331E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "lookupAppStoreForBundleID:completionHandler: platform: %@, %{private}@", &v10, 0x16u);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v8);

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_getEquivalentBundleIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x277CBEB40];
  identifiersCopy = identifiers;
  orderedSet = [v3 orderedSet];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__CTCategory__getEquivalentBundleIdentifiers___block_invoke;
  v8[3] = &unk_278DAB158;
  v6 = orderedSet;
  v9 = v6;
  [identifiersCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

uint64_t __46__CTCategory__getEquivalentBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 hasPrefix:@"app://"])
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    v4 = [v3 host];

    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return MEMORY[0x2821F9730]();
}

+ (id)equivalentIdentifiersForBundleID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = +[CTCategory _equivalentBundleIDsWithSchemesRemovedMapping];
  v5 = [v4 objectForKey:dCopy];
  if (v5)
  {
    v19 = v4;
    v6 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = *v22;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [MEMORY[0x277CBEBC0] URLWithString:*(*(&v21 + 1) + 8 * i)];
        host = [v11 host];
        if (([host isEqualToString:dCopy] & 1) == 0)
        {

LABEL_11:
          host2 = [v11 host];
          [v6 addObject:host2];

          goto LABEL_12;
        }

        scheme = [v11 scheme];
        v14 = [scheme isEqualToString:@"ios"];

        if (v14)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v8)
      {
LABEL_14:

        v5 = v18;
        v4 = v19;
        goto LABEL_16;
      }
    }
  }

  v6 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)itemWith:(id)with platform:(id)platform array:(id)array
{
  withCopy = with;
  platformCopy = platform;
  arrayCopy = array;
  v11 = arrayCopy;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  if (@"CTOSPlatformAll" == platformCopy)
  {
    v14 = MEMORY[0x277CBEBC0];
    firstObject = [arrayCopy firstObject];
    v16 = [v14 URLWithString:firstObject];

    host = [v16 host];
    v18 = v29[5];
    v29[5] = host;

    goto LABEL_16;
  }

  if (@"CTOSPlatformCurrent" == platformCopy)
  {
    v19 = @"CTOSPlatformiOS";

    platformCopy = v19;
    goto LABEL_11;
  }

  if (@"CTOSPlatformiOS" == platformCopy)
  {
LABEL_11:
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __38__CTCategory_itemWith_platform_array___block_invoke;
    v27[3] = &unk_278DAB180;
    v27[4] = &v28;
    [v11 enumerateObjectsUsingBlock:v27];
    goto LABEL_16;
  }

  if (@"CTOSPlatformmacOS" == platformCopy)
  {
    v12 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v13 = __38__CTCategory_itemWith_platform_array___block_invoke_2;
  }

  else if (@"CTOSPlatformtvOS" == platformCopy)
  {
    v12 = v25;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v13 = __38__CTCategory_itemWith_platform_array___block_invoke_3;
  }

  else if (@"CTOSPlatformwatchOS" == platformCopy)
  {
    v12 = v24;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v13 = __38__CTCategory_itemWith_platform_array___block_invoke_4;
  }

  else
  {
    if (@"CTOSPlatformvisionOS" != platformCopy)
    {
      goto LABEL_16;
    }

    v12 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v13 = __38__CTCategory_itemWith_platform_array___block_invoke_5;
  }

  v12[2] = v13;
  v12[3] = &unk_278DAB180;
  v12[4] = &v28;
  [arrayCopy enumerateObjectsUsingBlock:?];
LABEL_16:
  v20 = v29[5];
  if (!v20)
  {
    objc_storeStrong(v29 + 5, with);
    v20 = v29[5];
  }

  v21 = v20;
  _Block_object_dispose(&v28, 8);

  return v21;
}

void __38__CTCategory_itemWith_platform_array___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  v6 = [v11 scheme];
  v7 = [v6 isEqualToString:@"ios://"];

  if (v7)
  {
    v8 = [v11 host];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __38__CTCategory_itemWith_platform_array___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v12 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  v6 = [v12 scheme];
  if ([v6 isEqualToString:@"macos://"])
  {
  }

  else
  {
    v7 = [v12 scheme];
    v8 = [v7 isEqualToString:@"iosmac://"];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v9 = [v12 host];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a4 = 1;
LABEL_5:
}

void __38__CTCategory_itemWith_platform_array___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  v6 = [v11 scheme];
  v7 = [v6 isEqualToString:@"tvos://"];

  if (v7)
  {
    v8 = [v11 host];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __38__CTCategory_itemWith_platform_array___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  v6 = [v11 scheme];
  v7 = [v6 isEqualToString:@"watchos://"];

  if (v7)
  {
    v8 = [v11 host];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __38__CTCategory_itemWith_platform_array___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  v6 = [v11 scheme];
  v7 = [v6 isEqualToString:@"visionos://"];

  if (v7)
  {
    v8 = [v11 host];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

+ (id)_equivalentBundleIDsMappingForWatchOSBundleID:(id)d
{
  dCopy = d;
  if (_equivalentBundleIDsMappingForWatchOSBundleID__onceToken != -1)
  {
    +[CTCategory _equivalentBundleIDsMappingForWatchOSBundleID:];
  }

  v4 = [_equivalentBundleIDsMappingForWatchOSBundleID___equivalentBundleIDsMappingForWatchOS objectForKey:dCopy];
  if ([v4 count])
  {
    v5 = MEMORY[0x277CBEB70];
    v6 = [_equivalentBundleIDsMappingForWatchOSBundleID___equivalentBundleIDsMappingForWatchOS objectForKey:dCopy];
    v7 = [v5 orderedSetWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __60__CTCategory__equivalentBundleIDsMappingForWatchOSBundleID___block_invoke()
{
  v0 = _equivalentBundleIDsMappingForWatchOSBundleID___equivalentBundleIDsMappingForWatchOS;
  _equivalentBundleIDsMappingForWatchOSBundleID___equivalentBundleIDsMappingForWatchOS = &unk_285610900;
}

void __41__CTCategory__equivalentBundleIDsMapping__block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [&unk_2856108C0 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v18;
    do
    {
      v4 = 0;
      do
      {
        if (*v18 != v3)
        {
          objc_enumerationMutation(&unk_2856108C0);
        }

        v5 = *(*(&v17 + 1) + 8 * v4);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v14;
          do
          {
            v10 = 0;
            do
            {
              if (*v14 != v9)
              {
                objc_enumerationMutation(v6);
              }

              [v0 setObject:v6 forKeyedSubscript:*(*(&v13 + 1) + 8 * v10++)];
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v8);
        }

        ++v4;
      }

      while (v4 != v2);
      v2 = [&unk_2856108C0 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v2);
  }

  v11 = _equivalentBundleIDsMapping__mapping;
  _equivalentBundleIDsMapping__mapping = v0;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_equivalentBundleIDsWithSchemesRemovedMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CTCategory__equivalentBundleIDsWithSchemesRemovedMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_equivalentBundleIDsWithSchemesRemovedMapping_onceToken != -1)
  {
    dispatch_once(&_equivalentBundleIDsWithSchemesRemovedMapping_onceToken, block);
  }

  v2 = _equivalentBundleIDsWithSchemesRemovedMapping__mapping;

  return v2;
}

void __59__CTCategory__equivalentBundleIDsWithSchemesRemovedMapping__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) _equivalentBundleIDsMapping];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CTCategory__equivalentBundleIDsWithSchemesRemovedMapping__block_invoke_2;
  v7[3] = &unk_278DAB1A8;
  v4 = v2;
  v8 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = _equivalentBundleIDsWithSchemesRemovedMapping__mapping;
  _equivalentBundleIDsWithSchemesRemovedMapping__mapping = v4;
  v6 = v4;
}

void __59__CTCategory__equivalentBundleIDsWithSchemesRemovedMapping__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a3;
  v7 = [v5 URLWithString:a2];
  v8 = [v7 host];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
}

+ (id)_getAssociatedDomainsForHostNames:(id)names
{
  v3 = MEMORY[0x277CBEB40];
  namesCopy = names;
  orderedSet = [v3 orderedSet];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__CTCategory__getAssociatedDomainsForHostNames___block_invoke;
  v8[3] = &unk_278DAB1D0;
  v6 = orderedSet;
  v9 = v6;
  [namesCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

uint64_t __48__CTCategory__getAssociatedDomainsForHostNames___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = a2;
  if (([v28 hasPrefix:@"app://"] & 1) == 0)
  {
    v6 = v28;
    v7 = [v6 rangeOfString:@"." options:2 range:{0, objc_msgSend(v6, "length")}];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v10 = [v6 substringToIndex:v7];
      v9 = v10;
      if (v10)
      {
        v8 = [v6 substringFromIndex:{objc_msgSend(v10, "length") + 1}];
        v11 = 0;
LABEL_8:
        v12 = [v8 length];
        if (!v9 || !v12)
        {
          *a4 = 1;
LABEL_20:

          goto LABEL_21;
        }

        if ([v9 caseInsensitiveCompare:@"www"])
        {
          if (v11)
          {
LABEL_14:
            [*(a1 + 32) addObject:v6];
            v13 = *(a1 + 32);
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"www.%@", v6];
            [v13 addObject:v14];

            v15 = *(a1 + 32);
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"m.%@", v6];
            [v15 addObject:v16];

            v17 = *(a1 + 32);
            [MEMORY[0x277CCACA8] stringWithFormat:@"mobile.%@", v6];
            v22 = LABEL_19:;
            [v17 addObject:v22];

            goto LABEL_20;
          }

          if ([v9 caseInsensitiveCompare:@"m"])
          {
            if (![v9 caseInsensitiveCompare:@"mobile"])
            {
              [*(a1 + 32) addObject:v8];
              v23 = *(a1 + 32);
              v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"www.%@", v8];
              [v23 addObject:v24];

              v25 = *(a1 + 32);
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"m.%@", v8];
              [v25 addObject:v26];

              [*(a1 + 32) addObject:v6];
              goto LABEL_20;
            }

            goto LABEL_14;
          }

          [*(a1 + 32) addObject:v8];
          v20 = *(a1 + 32);
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"www.%@", v8];
          [v20 addObject:v21];

          [*(a1 + 32) addObject:v6];
        }

        else
        {
          [*(a1 + 32) addObject:v8];
          [*(a1 + 32) addObject:v6];
          v18 = *(a1 + 32);
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"m.%@", v8];
          [v18 addObject:v19];
        }

        v17 = *(a1 + 32);
        [MEMORY[0x277CCACA8] stringWithFormat:@"mobile.%@", v8];
        goto LABEL_19;
      }

      v8 = 0;
    }

    v11 = 1;
    goto LABEL_8;
  }

LABEL_21:

  return MEMORY[0x2821F96F8]();
}

+ (id)parentAppBundleIdentifierForAppRecord:(id)record
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    v15 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  entitlements = [recordCopy entitlements];
  v6 = objc_opt_class();
  v7 = [entitlements objectForKey:@"com.apple.developer.on-demand-install-capable" ofClass:v6 valuesOfClass:objc_opt_class()];
  bOOLValue = [v7 BOOLValue];

  v9 = objc_opt_class();
  v10 = [entitlements objectForKey:@"com.apple.developer.parent-application-identifiers" ofClass:v9 valuesOfClass:objc_opt_class()];
  v11 = v10;
  if (!bOOLValue || ![v10 count])
  {
    goto LABEL_9;
  }

  firstObject = [v11 firstObject];
  v13 = [firstObject hasPrefix:@"com."];

  firstObject2 = [v11 firstObject];
  v15 = firstObject2;
  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [v4 bundleIdentifier];
      v23 = 138478083;
      v24 = bundleIdentifier;
      v25 = 2113;
      v26 = v11;
      v17 = MEMORY[0x277D86220];
      v18 = "APPSHACK CLIP app %{private}@ parentAppIDs: %{private}@";
LABEL_16:
      _os_log_impl(&dword_24331E000, v17, OS_LOG_TYPE_DEFAULT, v18, &v23, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v19 = [firstObject2 rangeOfString:@"."];

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  firstObject3 = [v11 firstObject];
  v15 = [firstObject3 substringFromIndex:v19 + 1];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [v4 bundleIdentifier];
    v23 = 138478083;
    v24 = bundleIdentifier;
    v25 = 2113;
    v26 = v11;
    v17 = MEMORY[0x277D86220];
    v18 = "CLIP app %{private}@ parentAppIDs: %{private}@";
    goto LABEL_16;
  }

LABEL_10:

LABEL_11:
  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_identifierForContextResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = responseCopy;
  if (responseCopy && ([responseCopy error], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    level1Topics = [v4 level1Topics];
    v8 = [level1Topics countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(level1Topics);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          topicId = [v12 topicId];
          v14 = [topicId hasPrefix:@"DH"];

          if (v14)
          {
            topicId2 = [v12 topicId];
            goto LABEL_14;
          }
        }

        v9 = [level1Topics countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    topicId2 = 0;
LABEL_14:
  }

  else
  {
    topicId2 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return topicId2;
}

+ (id)_bundleIdentifierForContextResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (responseCopy && ([responseCopy error], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v8 = [self _relatedItemsForContextResponse:v5];
    if ([v8 count])
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy__0;
      v15 = __Block_byref_object_dispose__0;
      v16 = 0;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__CTCategory__bundleIdentifierForContextResponse___block_invoke;
      v10[3] = &unk_278DAB1F8;
      v10[4] = &v11;
      [v8 enumerateObjectsUsingBlock:v10];
      v7 = v12[5];
      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __50__CTCategory__bundleIdentifierForContextResponse___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 hasPrefix:@"app://"])
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v7 = [v6 host];

    if ([v7 length])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
      *a4 = 1;
    }
  }

  return MEMORY[0x2821F9730]();
}

+ (id)_relatedItemsForContextResponse:(id)response
{
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = responseCopy;
  if (responseCopy && ([responseCopy error], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    level2Topics = [v4 level2Topics];
    relatedItems2 = [level2Topics countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (relatedItems2)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != relatedItems2; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(level2Topics);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          relatedItems = [v10 relatedItems];
          v12 = [relatedItems count];

          if (v12)
          {
            relatedItems2 = [v10 relatedItems];
            goto LABEL_14;
          }
        }

        relatedItems2 = [level2Topics countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (relatedItems2)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    relatedItems2 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return relatedItems2;
}

+ (id)_urlStringsForHostNames:(id)names
{
  v20 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _urlComponentsForHostName:{*(*(&v15 + 1) + 8 * i), v15}];
        string = [v11 string];
        if ([string length])
        {
          [v5 addObject:string];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_urlComponentsForHostName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v4 setHost:nameCopy];
    [v4 setScheme:@"http"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24331E000, MEMORY[0x277D86220], a3, "Failed to get category for bundle identifiers: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24331E000, MEMORY[0x277D86220], a3, "Error querying ContextKit: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __74__CTCategory_categoryForBundleIdentifiers_platform_withCompletionHandler___block_invoke_206_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24331E000, MEMORY[0x277D86220], a3, "remoteObjectProxyWithErrorHandler: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end