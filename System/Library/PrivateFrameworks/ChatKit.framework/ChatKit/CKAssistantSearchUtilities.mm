@interface CKAssistantSearchUtilities
+ (__CFString)canonicalizeNumber:(__CFString *)a3;
+ (id)getAddressesFromPeople:(id)a3;
@end

@implementation CKAssistantSearchUtilities

+ (__CFString)canonicalizeNumber:(__CFString *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (!CFStringHasPrefix(a3, @"+"))
  {
    v6 = a3;
    if ([(__CFString *)v6 _appearsToBePhoneNumber])
    {
      v7 = IMPhoneNumberRefCopyForPhoneNumber();
      v5 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
      if (v7)
      {
        CFRelease(v7);
      }

      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [(__CFString *)v6 _appearsToBeEmail];
      v5 = IMNormalizeFormattedString();
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    CFRetain(v5);
LABEL_11:

    return v5;
  }

  v4 = IMCanonicalizeFormattedString();
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  return v5;
}

+ (id)getAddressesFromPeople:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v47 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v3;
  v51 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v51)
  {
    v48 = *v73;
    *&v5 = 138412802;
    v46 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v73 != v48)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v50 = v6;
        v8 = *(*(&v72 + 1) + 8 * v6);
        v52 = [v8 internalGUID];
        v9 = [v8 label];
        if ([v9 isAddressBookLabel])
        {
          v10 = [v8 label];
        }

        else
        {
          v10 = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v46;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v52;
            *&buf[22] = 2112;
            v81 = v10;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Trying to find address for person %@ with internalGUID %@ and desiredLabel %@", buf, 0x20u);
          }
        }

        if (v52)
        {
          v12 = [MEMORY[0x1E69A7FD0] sharedInstance];
          v13 = [v12 fetchCNContactWithIdentifier:v52];

          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v15 = @"YES";
              if (!v13)
              {
                v15 = @"NO";
              }

              *&buf[4] = v52;
              *&buf[12] = 2112;
              *&buf[14] = v15;
              _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Found record for internalGUID %@: %@", buf, 0x16u);
            }
          }

          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v53 = v13;
          v55 = [v53 countByEnumeratingWithState:&v68 objects:v86 count:16];
          if (v55)
          {
            v54 = *v69;
            do
            {
              for (i = 0; i != v55; ++i)
              {
                if (*v69 != v54)
                {
                  objc_enumerationMutation(v53);
                }

                v57 = *(*(&v68 + 1) + 8 * i);
                v59 = [v57 phoneNumbers];
                if ([v59 count])
                {
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v16 = v59;
                  v17 = [v16 countByEnumeratingWithState:&v64 objects:v85 count:16];
                  if (v17)
                  {
                    v18 = *v65;
                    do
                    {
                      for (j = 0; j != v17; ++j)
                      {
                        if (*v65 != v18)
                        {
                          objc_enumerationMutation(v16);
                        }

                        v20 = *(*(&v64 + 1) + 8 * j);
                        v21 = [v20 value];
                        v22 = [v21 stringValue];

                        v23 = [v20 label];
                        if (![v10 length] || objc_msgSend(v10, "isEqualToString:", v23))
                        {
                          if (IMOSLoggingEnabled())
                          {
                            v24 = OSLogHandleForIMFoundationCategory();
                            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                            {
                              *buf = 138412546;
                              *&buf[4] = v22;
                              *&buf[12] = 2112;
                              *&buf[14] = v23;
                              _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Found number %@ for label %@", buf, 0x16u);
                            }
                          }

                          if (v22)
                          {
                            v25 = [CKAssistantSearchUtilities canonicalizeNumber:v22];
                            if (v25)
                            {
                              [v4 addObject:v25];
                            }
                          }
                        }
                      }

                      v17 = [v16 countByEnumeratingWithState:&v64 objects:v85 count:16];
                    }

                    while (v17);
                  }
                }

                v58 = [v57 emailAddresses];
                if ([v58 count])
                {
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v26 = v58;
                  v27 = [v26 countByEnumeratingWithState:&v60 objects:v84 count:16];
                  if (v27)
                  {
                    v28 = *v61;
                    do
                    {
                      for (k = 0; k != v27; ++k)
                      {
                        if (*v61 != v28)
                        {
                          objc_enumerationMutation(v26);
                        }

                        v30 = *(*(&v60 + 1) + 8 * k);
                        v31 = [v30 value];
                        v32 = [v30 label];
                        if (![v10 length] || objc_msgSend(v10, "isEqualToString:", v32))
                        {
                          if (IMOSLoggingEnabled())
                          {
                            v33 = OSLogHandleForIMFoundationCategory();
                            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                            {
                              *buf = 138412546;
                              *&buf[4] = v31;
                              *&buf[12] = 2112;
                              *&buf[14] = v32;
                              _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Found email %@ for label %@", buf, 0x16u);
                            }
                          }

                          if (v31)
                          {
                            v34 = [CKAssistantSearchUtilities canonicalizeNumber:v31];
                            if (v34)
                            {
                              [v4 addObject:v34];
                            }
                          }
                        }
                      }

                      v27 = [v26 countByEnumeratingWithState:&v60 objects:v84 count:16];
                    }

                    while (v27);
                  }
                }
              }

              v55 = [v53 countByEnumeratingWithState:&v68 objects:v86 count:16];
            }

            while (v55);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v81 = __Block_byref_object_copy__39;
          v82 = __Block_byref_object_dispose__39;
          v83 = 0;
          v35 = v4;
          IMDPersistencePerformBlock();
          if (*(*&buf[8] + 40))
          {
            if (IMOSLoggingEnabled())
            {
              v36 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v35, "count")}];
                v38 = *(*&buf[8] + 40);
                *v76 = 138412546;
                v77 = v37;
                v78 = 2112;
                v79 = v38;
                _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Found %@ addresses for recipients, selecting most recent address %@", v76, 0x16u);
              }
            }

            [v47 addObject:*(*&buf[8] + 40)];
          }

          else if ([v35 count])
          {
            if (IMOSLoggingEnabled())
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v35, "count")}];
                v42 = [v35 firstObject];
                *v76 = 138412546;
                v77 = v41;
                v78 = 2112;
                v79 = v42;
                _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Found %@ addresses for recipients, but no recent address, selecting first address %@", v76, 0x16u);
              }
            }

            v43 = [v35 firstObject];
            [v47 addObject:v43];
          }

          [v35 removeAllObjects];

          _Block_object_dispose(buf, 8);
        }

        else if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Internal guid of person was nil, could not find address for that person.", buf, 2u);
          }
        }

        v6 = v50 + 1;
      }

      while (v50 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v51);
  }

  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v47;
      _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "getAddressesFromPeople returning addresses: %@", buf, 0xCu);
    }
  }

  return v47;
}

void __53__CKAssistantSearchUtilities_getAddressesFromPeople___block_invoke(uint64_t a1)
{
  v5 = IMDMessageRecordCopyMostRecentUseageOfAddresses();
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end