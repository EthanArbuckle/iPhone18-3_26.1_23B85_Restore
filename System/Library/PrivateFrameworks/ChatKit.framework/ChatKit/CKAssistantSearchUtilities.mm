@interface CKAssistantSearchUtilities
+ (__CFString)canonicalizeNumber:(__CFString *)number;
+ (id)getAddressesFromPeople:(id)people;
@end

@implementation CKAssistantSearchUtilities

+ (__CFString)canonicalizeNumber:(__CFString *)number
{
  if (!number)
  {
    return 0;
  }

  if (!CFStringHasPrefix(number, @"+"))
  {
    numberCopy = number;
    if ([(__CFString *)numberCopy _appearsToBePhoneNumber])
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
      [(__CFString *)numberCopy _appearsToBeEmail];
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

+ (id)getAddressesFromPeople:(id)people
{
  v88 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = peopleCopy;
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
        internalGUID = [v8 internalGUID];
        label = [v8 label];
        if ([label isAddressBookLabel])
        {
          label2 = [v8 label];
        }

        else
        {
          label2 = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v46;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = internalGUID;
            *&buf[22] = 2112;
            v81 = label2;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Trying to find address for person %@ with internalGUID %@ and desiredLabel %@", buf, 0x20u);
          }
        }

        if (internalGUID)
        {
          mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
          v13 = [mEMORY[0x1E69A7FD0] fetchCNContactWithIdentifier:internalGUID];

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

              *&buf[4] = internalGUID;
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
                phoneNumbers = [v57 phoneNumbers];
                if ([phoneNumbers count])
                {
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v16 = phoneNumbers;
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
                        value = [v20 value];
                        stringValue = [value stringValue];

                        label3 = [v20 label];
                        if (![label2 length] || objc_msgSend(label2, "isEqualToString:", label3))
                        {
                          if (IMOSLoggingEnabled())
                          {
                            v24 = OSLogHandleForIMFoundationCategory();
                            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                            {
                              *buf = 138412546;
                              *&buf[4] = stringValue;
                              *&buf[12] = 2112;
                              *&buf[14] = label3;
                              _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Found number %@ for label %@", buf, 0x16u);
                            }
                          }

                          if (stringValue)
                          {
                            v25 = [CKAssistantSearchUtilities canonicalizeNumber:stringValue];
                            if (v25)
                            {
                              [array2 addObject:v25];
                            }
                          }
                        }
                      }

                      v17 = [v16 countByEnumeratingWithState:&v64 objects:v85 count:16];
                    }

                    while (v17);
                  }
                }

                emailAddresses = [v57 emailAddresses];
                if ([emailAddresses count])
                {
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v26 = emailAddresses;
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
                        value2 = [v30 value];
                        label4 = [v30 label];
                        if (![label2 length] || objc_msgSend(label2, "isEqualToString:", label4))
                        {
                          if (IMOSLoggingEnabled())
                          {
                            v33 = OSLogHandleForIMFoundationCategory();
                            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                            {
                              *buf = 138412546;
                              *&buf[4] = value2;
                              *&buf[12] = 2112;
                              *&buf[14] = label4;
                              _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Found email %@ for label %@", buf, 0x16u);
                            }
                          }

                          if (value2)
                          {
                            v34 = [CKAssistantSearchUtilities canonicalizeNumber:value2];
                            if (v34)
                            {
                              [array2 addObject:v34];
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
          v35 = array2;
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

            [array addObject:*(*&buf[8] + 40)];
          }

          else if ([v35 count])
          {
            if (IMOSLoggingEnabled())
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v35, "count")}];
                firstObject = [v35 firstObject];
                *v76 = 138412546;
                v77 = v41;
                v78 = 2112;
                v79 = firstObject;
                _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Found %@ addresses for recipients, but no recent address, selecting first address %@", v76, 0x16u);
              }
            }

            firstObject2 = [v35 firstObject];
            [array addObject:firstObject2];
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
      *&buf[4] = array;
      _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "getAddressesFromPeople returning addresses: %@", buf, 0xCu);
    }
  }

  return array;
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