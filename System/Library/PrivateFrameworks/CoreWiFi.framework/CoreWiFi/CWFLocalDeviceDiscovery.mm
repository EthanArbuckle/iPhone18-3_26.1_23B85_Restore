@interface CWFLocalDeviceDiscovery
- (BOOL)_filterName:(id)name forLexicon:(_LXLexicon *)lexicon;
- (CWFLocalDeviceDiscovery)init;
- (id)_combineDevicesWithDifferentSourceAddresses:(id)addresses;
- (id)_tokenizeStringForSpecialCharacters:(id)characters;
- (void)_callHandlerWithValidResults:(id)results filtered:(id)filtered;
- (void)_processMRCRecord:(id)record;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CWFLocalDeviceDiscovery

- (CWFLocalDeviceDiscovery)init
{
  v17.receiver = self;
  v17.super_class = CWFLocalDeviceDiscovery;
  v2 = [(CWFLocalDeviceDiscovery *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CWFLocalNetworkDeviceDiscoveryQueue", v3);
    [(CWFLocalDeviceDiscovery *)v2 setMrcQueue:v4];

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v7 = [(__CFString *)localeIdentifier hasPrefix:@"en"];
    v8 = v7;
    if (v7)
    {
      v9 = localeIdentifier;
    }

    else
    {
      v9 = @"en";
    }

    v10 = v9;
    v2->_lexiconEnglish = sub_1E0C5E87C(v10);
    if ((v8 & 1) == 0)
    {
      v2->_lexiconUserLocale = sub_1E0C5E87C(localeIdentifier);
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [whitespaceAndNewlineCharacterSet formUnionWithCharacterSet:punctuationCharacterSet];

    symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [whitespaceAndNewlineCharacterSet formUnionWithCharacterSet:symbolCharacterSet];

    v14 = [whitespaceAndNewlineCharacterSet copy];
    tokenizationCharacterSet = v2->_tokenizationCharacterSet;
    v2->_tokenizationCharacterSet = v14;
  }

  return v2;
}

- (void)dealloc
{
  lexiconEnglish = self->_lexiconEnglish;
  if (lexiconEnglish)
  {
    CFRelease(lexiconEnglish);
  }

  lexiconUserLocale = self->_lexiconUserLocale;
  if (lexiconUserLocale)
  {
    CFRelease(lexiconUserLocale);
  }

  v5.receiver = self;
  v5.super_class = CWFLocalDeviceDiscovery;
  [(CWFLocalDeviceDiscovery *)&v5 dealloc];
}

- (void)activate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    _os_log_send_and_compose_impl();
  }

  v6 = MEMORY[0x1EEE98818];
  v7 = CWFGetOSLog();
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v12 = mrc_cached_local_records_inquiry_create();
    mrcInquiry = self->_mrcInquiry;
    self->_mrcInquiry = v12;

    v14 = self->_mrcInquiry;
    mrcQueue = [(CWFLocalDeviceDiscovery *)self mrcQueue];
    MEMORY[0x1E12EA050](v14, mrcQueue);

    v16 = self->_mrcInquiry;
    mrc_cached_local_records_inquiry_set_result_handler();
    MEMORY[0x1E12EA020](self->_mrcInquiry);
  }

  else
  {
    if (v7)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    [(CWFLocalDeviceDiscovery *)self _callHandlerWithValidResults:0 filtered:0];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    _os_log_send_and_compose_impl();
  }

  [(CWFLocalDeviceDiscovery *)self setHandler:0];
  if (self->_mrcInquiry)
  {
    mrc_cached_local_records_inquiry_invalidate();
    mrcInquiry = self->_mrcInquiry;
    self->_mrcInquiry = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_callHandlerWithValidResults:(id)results filtered:(id)filtered
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  filteredCopy = filtered;
  handler = [(CWFLocalDeviceDiscovery *)self handler];

  v9 = CWFGetOSLog();
  v10 = v9;
  if (handler)
  {
    if (v9)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[CWFLocalDeviceDiscovery _callHandlerWithValidResults:filtered:]";
      _os_log_send_and_compose_impl();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C5F5C0;
    block[3] = &unk_1E86E6060;
    block[4] = self;
    v17 = resultsCopy;
    v18 = filteredCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v9)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[CWFLocalDeviceDiscovery _callHandlerWithValidResults:filtered:]";
      _os_log_send_and_compose_impl();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_processMRCRecord:(id)record
{
  v114 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v91 = [MEMORY[0x1E695DFA8] set];
  v80 = [MEMORY[0x1E695DFA8] set];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v83 = recordCopy;
  obj = [recordCopy allKeys];
  selfCopy = self;
  v84 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (!v84)
  {
    goto LABEL_77;
  }

  v82 = *v102;
  do
  {
    v5 = 0;
    do
    {
      if (*v102 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v88 = v5;
      v6 = *(*(&v101 + 1) + 8 * v5);
      context = objc_autoreleasePoolPush();
      v7 = [v83 objectForKey:v6];
      v89 = [MEMORY[0x1E695DFA8] set];
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = objc_alloc_init(CWFLocalNetworkDevice);
      v85 = v6;
      v10 = [MEMORY[0x1E695DFD8] setWithObject:v6];
      v86 = v9;
      [(CWFLocalNetworkDevice *)v9 setSourceAddresses:v10];

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v92 = v7;
      v11 = [v92 countByEnumeratingWithState:&v97 objects:v112 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v98;
        do
        {
          v14 = 0;
          do
          {
            if (*v98 != v13)
            {
              objc_enumerationMutation(v92);
            }

            v15 = *(*(&v97 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            v17 = CWFGetOSLog();
            if (v17)
            {
              v18 = CWFGetOSLog();
            }

            else
            {
              v18 = MEMORY[0x1E69E9C10];
              v19 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v106 = 136315394;
              v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
              v108 = 2112;
              v109 = v15;
              LODWORD(v79) = 22;
              v78 = &v106;
              _os_log_send_and_compose_impl();
            }

            serviceName = [(CWFLocalNetworkDevice *)v15 serviceName];
            v21 = [serviceName length];

            if (v21)
            {
              serviceName2 = [(CWFLocalNetworkDevice *)v15 serviceName];
              [v8 addObject:serviceName2];
            }

            v23 = [(CWFLocalNetworkDevice *)v15 deviceName:v78];
            _stringByReplacingHyphensWithSpaces = v23;
            if (v23 && [(CWFLocalNetworkDevice *)v23 length])
            {
              rawString = [(CWFLocalNetworkDevice *)v15 rawString];
              _stringContainsFilteredServiceName = [rawString _stringContainsFilteredServiceName];

              if (_stringContainsFilteredServiceName)
              {
                v27 = CWFGetOSLog();
                if (v27)
                {
                  v28 = CWFGetOSLog();
                }

                else
                {
                  v28 = MEMORY[0x1E69E9C10];
                  v33 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  rawString2 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v106 = 136315650;
                  v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v108 = 2112;
                  v109 = _stringByReplacingHyphensWithSpaces;
                  v110 = 2112;
                  v111 = rawString2;
                  LODWORD(v79) = 32;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                rawString3 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = rawString3;
                v37 = 1;
LABEL_48:
                v45 = [CWFLocalNetworkFilteredName filteredName:v36 reason:v37, v78, v79];
                [v91 addObject:v45];

                goto LABEL_49;
              }

              if ([(CWFLocalNetworkDevice *)_stringByReplacingHyphensWithSpaces _stringContainsGeneratedName])
              {
                v29 = CWFGetOSLog();
                if (v29)
                {
                  v30 = CWFGetOSLog();
                }

                else
                {
                  v30 = MEMORY[0x1E69E9C10];
                  v41 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  rawString4 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v106 = 136315650;
                  v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v108 = 2112;
                  v109 = _stringByReplacingHyphensWithSpaces;
                  v110 = 2112;
                  v111 = rawString4;
                  LODWORD(v79) = 32;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                rawString3 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = rawString3;
                v37 = 3;
                goto LABEL_48;
              }

              if ([(CWFLocalNetworkDevice *)_stringByReplacingHyphensWithSpaces _stringContainsUnwantedCharactersAtStartOrEnd])
              {
                v31 = CWFGetOSLog();
                if (v31)
                {
                  v32 = CWFGetOSLog();
                }

                else
                {
                  v32 = MEMORY[0x1E69E9C10];
                  v43 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  rawString5 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v106 = 136315650;
                  v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v108 = 2112;
                  v109 = _stringByReplacingHyphensWithSpaces;
                  v110 = 2112;
                  v111 = rawString5;
                  LODWORD(v79) = 32;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                rawString3 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = rawString3;
                v37 = 2;
                goto LABEL_48;
              }

              _stringByRemovingUnwantedCharacters = [(CWFLocalNetworkDevice *)_stringByReplacingHyphensWithSpaces _stringByRemovingUnwantedCharacters];

              if ([(CWFLocalNetworkDevice *)_stringByRemovingUnwantedCharacters length])
              {
                if (!selfCopy->_lexiconEnglish || ![(CWFLocalDeviceDiscovery *)selfCopy _filterName:_stringByRemovingUnwantedCharacters forLexicon:?]&& (!selfCopy->_lexiconUserLocale || ![(CWFLocalDeviceDiscovery *)selfCopy _filterName:_stringByRemovingUnwantedCharacters forLexicon:?]))
                {
                  _stringByReplacingHyphensWithSpaces = [(CWFLocalNetworkDevice *)_stringByRemovingUnwantedCharacters _stringByReplacingHyphensWithSpaces];

                  [v89 addObject:_stringByReplacingHyphensWithSpaces];
                  goto LABEL_49;
                }

                v39 = CWFGetOSLog();
                if (v39)
                {
                  v40 = CWFGetOSLog();
                }

                else
                {
                  v40 = MEMORY[0x1E69E9C10];
                  v46 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v106 = 136315394;
                  v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v108 = 2112;
                  v109 = _stringByRemovingUnwantedCharacters;
                  LODWORD(v79) = 22;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                rawString6 = [(CWFLocalNetworkDevice *)v15 rawString];
                v48 = [CWFLocalNetworkFilteredName filteredName:rawString6 reason:4];
                [v91 addObject:v48];
              }

              _stringByReplacingHyphensWithSpaces = _stringByRemovingUnwantedCharacters;
            }

LABEL_49:

            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v49 = [v92 countByEnumeratingWithState:&v97 objects:v112 count:16];
          v12 = v49;
        }

        while (v49);
      }

      [(CWFLocalNetworkDevice *)v86 setServiceNames:v8];
      self = selfCopy;
      if ([v89 count])
      {
        v50 = CWFGetOSLog();
        if (v50)
        {
          v51 = CWFGetOSLog();
        }

        else
        {
          v51 = MEMORY[0x1E69E9C10];
          v52 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          _prettyDescription = [v89 _prettyDescription];
          v106 = 136315394;
          v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
          v108 = 2112;
          v109 = _prettyDescription;
          LODWORD(v79) = 22;
          v78 = &v106;
          _os_log_send_and_compose_impl();
        }

        if ([v89 count] == 1)
        {
          anyObject = [v89 anyObject];
          [(CWFLocalNetworkDevice *)v86 setName:anyObject];
        }

        else
        {
          allObjects = [v89 allObjects];
          anyObject = [allObjects sortedArrayUsingComparator:&unk_1F5B89B50];

          firstObject = [anyObject firstObject];
          [(CWFLocalNetworkDevice *)v86 setName:firstObject];
        }

        if ([v85 _isLocalAddress])
        {
          name = [(CWFLocalNetworkDevice *)v86 name];
          v58 = [CWFLocalNetworkFilteredName filteredName:name reason:5];
          [v91 addObject:v58];

          v59 = CWFGetOSLog();
          if (v59)
          {
            v60 = CWFGetOSLog();
          }

          else
          {
            v60 = MEMORY[0x1E69E9C10];
            v61 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v106 = 136315394;
            v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
            v108 = 2112;
            v109 = v86;
            LODWORD(v79) = 22;
            v78 = &v106;
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          [v80 addObject:v86];
        }
      }

      objc_autoreleasePoolPop(context);
      v5 = v88 + 1;
    }

    while (v88 + 1 != v84);
    v84 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
  }

  while (v84);
LABEL_77:

  v62 = [(CWFLocalDeviceDiscovery *)self _combineDevicesWithDifferentSourceAddresses:v80];
  v63 = CWFGetOSLog();
  if (v63)
  {
    v64 = CWFGetOSLog();
  }

  else
  {
    v64 = MEMORY[0x1E69E9C10];
    v65 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v66 = [v62 count];
    v106 = 136315394;
    v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
    v108 = 2048;
    v109 = v66;
    _os_log_send_and_compose_impl();
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v67 = v62;
  v68 = [v67 countByEnumeratingWithState:&v93 objects:v105 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v94;
    v71 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v94 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v73 = *(*(&v93 + 1) + 8 * i);
        v74 = CWFGetOSLog();
        if (v74)
        {
          v75 = CWFGetOSLog();
        }

        else
        {
          v76 = v71;
          v75 = v71;
        }

        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          v106 = 138412290;
          v107 = v73;
          _os_log_send_and_compose_impl();
        }
      }

      v69 = [v67 countByEnumeratingWithState:&v93 objects:v105 count:16];
    }

    while (v69);
  }

  [(CWFLocalDeviceDiscovery *)selfCopy _callHandlerWithValidResults:v67 filtered:v91];
  v77 = *MEMORY[0x1E69E9840];
}

- (id)_combineDevicesWithDifferentSourceAddresses:(id)addresses
{
  v77 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  if (addressesCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v49 = addressesCopy;
    v5 = addressesCopy;
    v6 = [v5 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v67;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v67 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v66 + 1) + 8 * i);
          name = [v10 name];

          if (name)
          {
            sanitizedName = [v10 sanitizedName];
            v13 = [dictionary objectForKey:sanitizedName];
            if (v13)
            {
              [dictionary objectForKey:sanitizedName];
            }

            else
            {
              [MEMORY[0x1E695DFA8] set];
            }
            v15 = ;

            [v15 addObject:v10];
            [dictionary setObject:v15 forKey:sanitizedName];
          }

          else
          {
            v14 = CWFGetOSLog();
            if (v14)
            {
              sanitizedName = CWFGetOSLog();
            }

            else
            {
              sanitizedName = MEMORY[0x1E69E9C10];
              v16 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(sanitizedName, OS_LOG_TYPE_DEFAULT))
            {
              v72 = 136315394;
              v73 = "[CWFLocalDeviceDiscovery _combineDevicesWithDifferentSourceAddresses:]";
              v74 = 2112;
              v75 = v10;
              LODWORD(v48) = 22;
              v47 = &v72;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v7);
    }

    v17 = [MEMORY[0x1E695DFA8] set];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = [dictionary allKeys];
    v18 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v63;
      v51 = v17;
      v52 = dictionary;
      v50 = *v63;
      do
      {
        v21 = 0;
        v53 = v19;
        do
        {
          if (*v63 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v62 + 1) + 8 * v21);
          v23 = [dictionary objectForKey:{v22, v47, v48}];
          if ([v23 count] == 1)
          {
            anyObject = [v23 anyObject];
            [v17 addObject:anyObject];
          }

          else
          {
            v55 = v22;
            v57 = v21;
            anyObject = [MEMORY[0x1E695DFA8] set];
            v25 = [MEMORY[0x1E695DFA8] set];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v56 = v23;
            v26 = v23;
            v27 = [v26 countByEnumeratingWithState:&v58 objects:v70 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v59;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v59 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v58 + 1) + 8 * j);
                  serviceNames = [v31 serviceNames];
                  if (serviceNames)
                  {
                    v33 = serviceNames;
                    serviceNames2 = [v31 serviceNames];
                    v35 = [serviceNames2 count];

                    if (v35)
                    {
                      serviceNames3 = [v31 serviceNames];
                      allObjects = [serviceNames3 allObjects];
                      [anyObject addObjectsFromArray:allObjects];
                    }
                  }

                  sourceAddresses = [v31 sourceAddresses];
                  if (sourceAddresses)
                  {
                    v39 = sourceAddresses;
                    sourceAddresses2 = [v31 sourceAddresses];
                    v41 = [sourceAddresses2 count];

                    if (v41)
                    {
                      sourceAddresses3 = [v31 sourceAddresses];
                      allObjects2 = [sourceAddresses3 allObjects];
                      [v25 addObjectsFromArray:allObjects2];
                    }
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v58 objects:v70 count:16];
              }

              while (v28);
            }

            v44 = objc_alloc_init(CWFLocalNetworkDevice);
            [(CWFLocalNetworkDevice *)v44 setName:v55];
            [(CWFLocalNetworkDevice *)v44 setServiceNames:anyObject];
            [(CWFLocalNetworkDevice *)v44 setSourceAddresses:v25];
            v17 = v51;
            [v51 addObject:v44];

            dictionary = v52;
            v19 = v53;
            v20 = v50;
            v23 = v56;
            v21 = v57;
          }

          ++v21;
        }

        while (v21 != v19);
        v19 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v19);
    }

    addressesCopy = v49;
  }

  else
  {
    v17 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)_filterName:(id)name forLexicon:(_LXLexicon *)lexicon
{
  v57 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(CWFLocalDeviceDiscovery *)self _tokenizeStringForSpecialCharacters:nameCopy];
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 138412546;
    v46 = nameCopy;
    v47 = 2112;
    v48 = v7;
    _os_log_send_and_compose_impl();
  }

  if ([v7 count])
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1E0C60C34;
    v27[3] = &unk_1E86E7370;
    lexiconCopy = lexicon;
    v11 = nameCopy;
    v28 = v11;
    v29 = &v41;
    v30 = &v33;
    v31 = &v37;
    [v7 enumerateObjectsUsingBlock:v27];
    if ((v42[3] & 1) != 0 || (v12 = v38[3], v12 > 1) || v12 == [v7 count])
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        v14 = CWFGetOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v42 + 24);
        v19 = v34[3];
        v20 = v38[3];
        v21 = [v7 count];
        v22 = @"NO";
        v45 = 136316418;
        v46 = "[CWFLocalDeviceDiscovery _filterName:forLexicon:]";
        v47 = 2112;
        v48 = v11;
        if (v20 == v21)
        {
          v22 = @"YES";
        }

        v49 = 1024;
        v50 = v18;
        v51 = 2048;
        v52 = v19;
        v53 = 2048;
        v54 = v20;
        v55 = 2112;
        v56 = v22;
        _os_log_send_and_compose_impl();
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = nameCopy;
      _os_log_send_and_compose_impl();
    }

    v23 = 1;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)_tokenizeStringForSpecialCharacters:(id)characters
{
  v21 = *MEMORY[0x1E69E9840];
  charactersCopy = characters;
  v18 = [MEMORY[0x1E695DFA8] set];
  if ([charactersCopy length])
  {
    context = objc_autoreleasePoolPush();
    v19 = [charactersCopy length];
    v4 = v19 - 2;
    if (v19 >= 2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v5 + 1;
        v8 = [charactersCopy characterAtIndex:v5 + 1];
        tokenizationCharacterSet = [(CWFLocalDeviceDiscovery *)self tokenizationCharacterSet];
        LODWORD(v8) = [tokenizationCharacterSet characterIsMember:v8];

        if ((v4 == v5) | v8)
        {
          v10 = v19;
          if (v4 != v5)
          {
            v10 = v5 + 1;
          }

          v11 = [charactersCopy substringWithRange:{v6, v10 - v6}];
          tokenizationCharacterSet2 = [(CWFLocalDeviceDiscovery *)self tokenizationCharacterSet];
          v13 = [v11 stringByTrimmingCharactersInSet:tokenizationCharacterSet2];
          lowercaseString = [v13 lowercaseString];

          if ([lowercaseString length] >= 2)
          {
            [v18 addObject:lowercaseString];
          }
        }

        else
        {
          v7 = v6;
        }

        ++v5;
        v6 = v7;
      }

      while (v19 - 1 != v5);
    }

    objc_autoreleasePoolPop(context);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v18;
}

@end