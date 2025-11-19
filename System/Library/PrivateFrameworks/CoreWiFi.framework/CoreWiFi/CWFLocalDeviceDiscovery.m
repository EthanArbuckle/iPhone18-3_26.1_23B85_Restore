@interface CWFLocalDeviceDiscovery
- (BOOL)_filterName:(id)a3 forLexicon:(_LXLexicon *)a4;
- (CWFLocalDeviceDiscovery)init;
- (id)_combineDevicesWithDifferentSourceAddresses:(id)a3;
- (id)_tokenizeStringForSpecialCharacters:(id)a3;
- (void)_callHandlerWithValidResults:(id)a3 filtered:(id)a4;
- (void)_processMRCRecord:(id)a3;
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

    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [v5 localeIdentifier];

    v7 = [(__CFString *)v6 hasPrefix:@"en"];
    v8 = v7;
    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = @"en";
    }

    v10 = v9;
    v2->_lexiconEnglish = sub_1E0C5E87C(v10);
    if ((v8 & 1) == 0)
    {
      v2->_lexiconUserLocale = sub_1E0C5E87C(v6);
    }

    v11 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
    v12 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v11 formUnionWithCharacterSet:v12];

    v13 = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [v11 formUnionWithCharacterSet:v13];

    v14 = [v11 copy];
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
    v15 = [(CWFLocalDeviceDiscovery *)self mrcQueue];
    MEMORY[0x1E12EA050](v14, v15);

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

- (void)_callHandlerWithValidResults:(id)a3 filtered:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CWFLocalDeviceDiscovery *)self handler];

  v9 = CWFGetOSLog();
  v10 = v9;
  if (v8)
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
    v17 = v6;
    v18 = v7;
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

- (void)_processMRCRecord:(id)a3
{
  v114 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v91 = [MEMORY[0x1E695DFA8] set];
  v80 = [MEMORY[0x1E695DFA8] set];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v83 = v4;
  obj = [v4 allKeys];
  v90 = self;
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

            v20 = [(CWFLocalNetworkDevice *)v15 serviceName];
            v21 = [v20 length];

            if (v21)
            {
              v22 = [(CWFLocalNetworkDevice *)v15 serviceName];
              [v8 addObject:v22];
            }

            v23 = [(CWFLocalNetworkDevice *)v15 deviceName:v78];
            v24 = v23;
            if (v23 && [(CWFLocalNetworkDevice *)v23 length])
            {
              v25 = [(CWFLocalNetworkDevice *)v15 rawString];
              v26 = [v25 _stringContainsFilteredServiceName];

              if (v26)
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
                  v34 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v106 = 136315650;
                  v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v108 = 2112;
                  v109 = v24;
                  v110 = 2112;
                  v111 = v34;
                  LODWORD(v79) = 32;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                v35 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = v35;
                v37 = 1;
LABEL_48:
                v45 = [CWFLocalNetworkFilteredName filteredName:v36 reason:v37, v78, v79];
                [v91 addObject:v45];

                goto LABEL_49;
              }

              if ([(CWFLocalNetworkDevice *)v24 _stringContainsGeneratedName])
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
                  v42 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v106 = 136315650;
                  v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v108 = 2112;
                  v109 = v24;
                  v110 = 2112;
                  v111 = v42;
                  LODWORD(v79) = 32;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                v35 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = v35;
                v37 = 3;
                goto LABEL_48;
              }

              if ([(CWFLocalNetworkDevice *)v24 _stringContainsUnwantedCharactersAtStartOrEnd])
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
                  v44 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v106 = 136315650;
                  v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v108 = 2112;
                  v109 = v24;
                  v110 = 2112;
                  v111 = v44;
                  LODWORD(v79) = 32;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                v35 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = v35;
                v37 = 2;
                goto LABEL_48;
              }

              v38 = [(CWFLocalNetworkDevice *)v24 _stringByRemovingUnwantedCharacters];

              if ([(CWFLocalNetworkDevice *)v38 length])
              {
                if (!v90->_lexiconEnglish || ![(CWFLocalDeviceDiscovery *)v90 _filterName:v38 forLexicon:?]&& (!v90->_lexiconUserLocale || ![(CWFLocalDeviceDiscovery *)v90 _filterName:v38 forLexicon:?]))
                {
                  v24 = [(CWFLocalNetworkDevice *)v38 _stringByReplacingHyphensWithSpaces];

                  [v89 addObject:v24];
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
                  v109 = v38;
                  LODWORD(v79) = 22;
                  v78 = &v106;
                  _os_log_send_and_compose_impl();
                }

                v47 = [(CWFLocalNetworkDevice *)v15 rawString];
                v48 = [CWFLocalNetworkFilteredName filteredName:v47 reason:4];
                [v91 addObject:v48];
              }

              v24 = v38;
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
      self = v90;
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
          v53 = [v89 _prettyDescription];
          v106 = 136315394;
          v107 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
          v108 = 2112;
          v109 = v53;
          LODWORD(v79) = 22;
          v78 = &v106;
          _os_log_send_and_compose_impl();
        }

        if ([v89 count] == 1)
        {
          v54 = [v89 anyObject];
          [(CWFLocalNetworkDevice *)v86 setName:v54];
        }

        else
        {
          v55 = [v89 allObjects];
          v54 = [v55 sortedArrayUsingComparator:&unk_1F5B89B50];

          v56 = [v54 firstObject];
          [(CWFLocalNetworkDevice *)v86 setName:v56];
        }

        if ([v85 _isLocalAddress])
        {
          v57 = [(CWFLocalNetworkDevice *)v86 name];
          v58 = [CWFLocalNetworkFilteredName filteredName:v57 reason:5];
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

  [(CWFLocalDeviceDiscovery *)v90 _callHandlerWithValidResults:v67 filtered:v91];
  v77 = *MEMORY[0x1E69E9840];
}

- (id)_combineDevicesWithDifferentSourceAddresses:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v49 = v3;
    v5 = v3;
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
          v11 = [v10 name];

          if (v11)
          {
            v12 = [v10 sanitizedName];
            v13 = [v4 objectForKey:v12];
            if (v13)
            {
              [v4 objectForKey:v12];
            }

            else
            {
              [MEMORY[0x1E695DFA8] set];
            }
            v15 = ;

            [v15 addObject:v10];
            [v4 setObject:v15 forKey:v12];
          }

          else
          {
            v14 = CWFGetOSLog();
            if (v14)
            {
              v12 = CWFGetOSLog();
            }

            else
            {
              v12 = MEMORY[0x1E69E9C10];
              v16 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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
    obj = [v4 allKeys];
    v18 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v63;
      v51 = v17;
      v52 = v4;
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
          v23 = [v4 objectForKey:{v22, v47, v48}];
          if ([v23 count] == 1)
          {
            v24 = [v23 anyObject];
            [v17 addObject:v24];
          }

          else
          {
            v55 = v22;
            v57 = v21;
            v24 = [MEMORY[0x1E695DFA8] set];
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
                  v32 = [v31 serviceNames];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = [v31 serviceNames];
                    v35 = [v34 count];

                    if (v35)
                    {
                      v36 = [v31 serviceNames];
                      v37 = [v36 allObjects];
                      [v24 addObjectsFromArray:v37];
                    }
                  }

                  v38 = [v31 sourceAddresses];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = [v31 sourceAddresses];
                    v41 = [v40 count];

                    if (v41)
                    {
                      v42 = [v31 sourceAddresses];
                      v43 = [v42 allObjects];
                      [v25 addObjectsFromArray:v43];
                    }
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v58 objects:v70 count:16];
              }

              while (v28);
            }

            v44 = objc_alloc_init(CWFLocalNetworkDevice);
            [(CWFLocalNetworkDevice *)v44 setName:v55];
            [(CWFLocalNetworkDevice *)v44 setServiceNames:v24];
            [(CWFLocalNetworkDevice *)v44 setSourceAddresses:v25];
            v17 = v51;
            [v51 addObject:v44];

            v4 = v52;
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

    v3 = v49;
  }

  else
  {
    v17 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)_filterName:(id)a3 forLexicon:(_LXLexicon *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CWFLocalDeviceDiscovery *)self _tokenizeStringForSpecialCharacters:v6];
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
    v46 = v6;
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
    v32 = a4;
    v11 = v6;
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
      v46 = v6;
      _os_log_send_and_compose_impl();
    }

    v23 = 1;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)_tokenizeStringForSpecialCharacters:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = [MEMORY[0x1E695DFA8] set];
  if ([v3 length])
  {
    context = objc_autoreleasePoolPush();
    v19 = [v3 length];
    v4 = v19 - 2;
    if (v19 >= 2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v5 + 1;
        v8 = [v3 characterAtIndex:v5 + 1];
        v9 = [(CWFLocalDeviceDiscovery *)self tokenizationCharacterSet];
        LODWORD(v8) = [v9 characterIsMember:v8];

        if ((v4 == v5) | v8)
        {
          v10 = v19;
          if (v4 != v5)
          {
            v10 = v5 + 1;
          }

          v11 = [v3 substringWithRange:{v6, v10 - v6}];
          v12 = [(CWFLocalDeviceDiscovery *)self tokenizationCharacterSet];
          v13 = [v11 stringByTrimmingCharactersInSet:v12];
          v14 = [v13 lowercaseString];

          if ([v14 length] >= 2)
          {
            [v18 addObject:v14];
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