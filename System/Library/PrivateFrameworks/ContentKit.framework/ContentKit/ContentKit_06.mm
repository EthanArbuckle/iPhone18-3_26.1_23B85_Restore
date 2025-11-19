__CFString *WFHTTPFormEncodedString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v4 = [v3 mutableCopy];

    v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    [v4 formUnionWithCharacterSet:v5];

    [v4 addCharactersInString:@"-_.~"];
    v6 = [v2 stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];

    v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\r\n"];

    v8 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v4];

    v9 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v10 = [v8 componentsSeparatedByCharactersInSet:v9];
    v11 = [v10 componentsJoinedByString:@"+"];
  }

  else
  {
    v11 = &stru_282F53518;
  }

  return v11;
}

void WFExtractTypeIdentifiersReadableByItemClass(void *a1, void *a2, void *a3, void *a4)
{
  v24 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1 ownedTypes];
  v7 = [a1 ownedPasteboardTypes];
  v8 = [v6 orderedSetByAddingObjectsFromOrderedSet:v7];

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    v26 = v11;
    v27 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 string];
          [v10 addObject:v17];
LABEL_8:

          continue;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v16 objectClass];
          if ([v18 conformsToProtocol:&unk_282F94D58])
          {
            v17 = [v18 readableTypeIdentifiersForItemProvider];
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v29;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v29 != v21)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v23 = *(*(&v28 + 1) + 8 * j);
                  if (([v5 containsObject:{v23, v24}] & 1) == 0)
                  {
                    [v9 addObject:v23];
                  }
                }

                v20 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
              }

              while (v20);
              v11 = v26;
              v10 = v27;
            }

            goto LABEL_8;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  if (v24)
  {
    *v24 = [v9 copy];
  }

  if (a4)
  {
    *a4 = [v10 copy];
  }
}

uint64_t WFMethodReturnsObject(objc_method *a1)
{
  v1 = method_copyReturnType(a1);
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v1 length:strlen(v1) encoding:4 freeWhenDone:1];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"@"];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t WFURLIsWebPage(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL WFURLIsWebPage(NSURL * _Nonnull __strong)"];
    [v5 handleFailureInFunction:v6 file:@"WFUserInterfaceHost.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v2 = [v1 scheme];
  if ([v2 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"https"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"file"];
  }

  return v3;
}

BOOL WFURLIsUniversalLink(uint64_t a1)
{
  v4 = 0;
  v1 = [MEMORY[0x277CC1E48] appLinksWithURL:a1 limit:1 error:&v4];
  v2 = [v1 count] != 0;

  return v2;
}

void sub_21E28230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNPostalAddressFormatterClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_5704();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPostalAddressFormatter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPostalAddressFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNPostalAddressFormatterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFStreetAddress.m" lineNumber:23 description:{@"Unable to find class %s", "CNPostalAddressFormatter"}];

    __break(1u);
  }
}

void ContactsLibrary_5704()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_5714)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke_5715;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278345CF8;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary_5714 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_5714)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFStreetAddress.m" lineNumber:21 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContactsLibraryCore_block_invoke_5715()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_5714 = result;
  return result;
}

void sub_21E282980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNMutablePostalAddressClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_5704();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNMutablePostalAddress");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNMutablePostalAddressClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNMutablePostalAddressClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFStreetAddress.m" lineNumber:22 description:{@"Unable to find class %s", "CNMutablePostalAddress"}];

    __break(1u);
  }
}

Class __getCLPlacemarkClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_5735)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_5736;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278345D10;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_5735 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_5735)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFStreetAddress.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLPlacemark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFStreetAddress.m" lineNumber:19 description:{@"Unable to find class %s", "CLPlacemark"}];

LABEL_10:
    __break(1u);
  }

  getCLPlacemarkClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_5736()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_5735 = result;
  return result;
}

void WFCLLocationFromSerializedLocation(void *a1)
{
  v1 = a1;
  v2 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"latitude"];
  [v2 doubleValue];
  v4 = v3;

  v5 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"longitude"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"altitude"];
  [v8 doubleValue];

  v9 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"horizontalAccuracy"];
  [v9 doubleValue];

  v10 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"verticalAccuracy"];
  [v10 doubleValue];

  v11 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"course"];
  [v11 doubleValue];

  v12 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"speed"];
  [v12 doubleValue];

  v13 = [v1 wfObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v14 = getCLLocationClass_softClass_5810;
  v32 = getCLLocationClass_softClass_5810;
  if (!getCLLocationClass_softClass_5810)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getCLLocationClass_block_invoke_5811;
    v27 = &unk_27834A178;
    v28 = &v29;
    __getCLLocationClass_block_invoke_5811(&v24);
    v14 = v30[3];
  }

  v15 = v14;
  _Block_object_dispose(&v29, 8);
  v16 = [v14 alloc];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v17 = getCLLocationCoordinate2DMakeSymbolLoc_ptr_5812;
  v32 = getCLLocationCoordinate2DMakeSymbolLoc_ptr_5812;
  if (!getCLLocationCoordinate2DMakeSymbolLoc_ptr_5812)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getCLLocationCoordinate2DMakeSymbolLoc_block_invoke_5813;
    v27 = &unk_27834A178;
    v28 = &v29;
    v18 = CoreLocationLibrary_5814();
    v19 = dlsym(v18, "CLLocationCoordinate2DMake");
    *(v28[1] + 24) = v19;
    getCLLocationCoordinate2DMakeSymbolLoc_ptr_5812 = *(v28[1] + 24);
    v17 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (v17)
  {
    v17(v4, v7);
    v20 = [v16 initWithCoordinate:v13 altitude:? horizontalAccuracy:? verticalAccuracy:? course:? speed:? timestamp:?];

    v21 = v20;
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CLLocationCoordinate2D WFCLLocationCoordinate2DMake(CLLocationDegrees, CLLocationDegrees)"}];
    [v22 handleFailureInFunction:v23 file:@"CLLocation+WFSerialization.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E283CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCLLocationClass_block_invoke_5811(uint64_t a1)
{
  CoreLocationLibrary_5814();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationClass_softClass_5810 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CLLocation+WFSerialization.m" lineNumber:15 description:{@"Unable to find class %s", "CLLocation"}];

    __break(1u);
  }
}

void *__getCLLocationCoordinate2DMakeSymbolLoc_block_invoke_5813(uint64_t a1)
{
  v2 = CoreLocationLibrary_5814();
  result = dlsym(v2, "CLLocationCoordinate2DMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationCoordinate2DMakeSymbolLoc_ptr_5812 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreLocationLibrary_5814()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_5820)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_5821;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278345D28;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_5820 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_5820;
  if (!CoreLocationLibraryCore_frameworkLibrary_5820)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CLLocation+WFSerialization.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_5821()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_5820 = result;
  return result;
}

id WFSerializedLocationFromCLLocation(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_new();
    [v1 coordinate];
    v4 = v3;
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v2 setObject:v5 forKey:@"latitude"];

    v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    [v2 setObject:v6 forKey:@"longitude"];

    v7 = MEMORY[0x277CCABB0];
    [v1 altitude];
    v8 = [v7 numberWithDouble:?];
    [v2 setObject:v8 forKey:@"altitude"];

    v9 = MEMORY[0x277CCABB0];
    [v1 horizontalAccuracy];
    v10 = [v9 numberWithDouble:?];
    [v2 setObject:v10 forKey:@"horizontalAccuracy"];

    v11 = MEMORY[0x277CCABB0];
    [v1 verticalAccuracy];
    v12 = [v11 numberWithDouble:?];
    [v2 setObject:v12 forKey:@"verticalAccuracy"];

    v13 = MEMORY[0x277CCABB0];
    [v1 course];
    v14 = [v13 numberWithDouble:?];
    [v2 setObject:v14 forKey:@"course"];

    v15 = MEMORY[0x277CCABB0];
    [v1 speed];
    v16 = [v15 numberWithDouble:?];
    [v2 setObject:v16 forKey:@"speed"];

    v17 = [v1 timestamp];

    if (v17)
    {
      v18 = [v1 timestamp];
      [v2 setObject:v18 forKey:@"timestamp"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFReminderPredicateDescriptorFromContentPredicate(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = [v2 subpredicates];
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v33;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = WFReminderPredicateDescriptorFromContentPredicate(*(*(&v32 + 1) + 8 * i));
          if (!v9)
          {

            goto LABEL_18;
          }

          v10 = v9;
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = WFCompoundReminderPredicateDescriptorWithSubpredicates(v3, [v2 compoundPredicateType]);
    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_39;
  }

  v2 = v1;
  v3 = [v2 value];
  if (v3)
  {
    v12 = [v2 property];
    v13 = [v2 comparisonType];
    v14 = [v12 name];
    v15 = WFLocalizedContentPropertyNameMarker(@"Is Completed");
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      if (v13 == 5)
      {
        v17 = [v3 BOOLValue] ^ 1;
        goto LABEL_30;
      }

      if (v13 == 4)
      {
        v17 = [v3 BOOLValue];
LABEL_30:
        v30 = [getREMReminderPredicateDescriptorClass() predicateDescriptorForRemindersWithCompleted:v17];
        goto LABEL_31;
      }
    }

    else
    {
      v18 = [v12 name];
      v19 = WFLocalizedContentPropertyNameMarker(@"List");
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v21 = +[WFReminderContentItem allLists];
        v22 = [v21 if_objectsWithValue:v3 forKey:@"name"];
        v23 = [v22 firstObject];

        REMReminderPredicateDescriptorClass = getREMReminderPredicateDescriptorClass();
        v25 = [v23 objectID];
        v11 = [REMReminderPredicateDescriptorClass predicateDescriptorForRemindersWithListID:v25];

LABEL_37:
        goto LABEL_38;
      }

      v26 = [v12 name];
      v27 = WFLocalizedContentPropertyNameMarker(@"Due Date");
      v28 = [v26 isEqualToString:v27];

      if (v28)
      {
        v29 = v13 != 4 && v13 > 1;
        if (!v29 && v13 - 2 <= 2)
        {
          v30 = [getREMReminderPredicateDescriptorClass() predicateDescriptorForRemindersWithDisplayDateBetween:v3 and:v3];
LABEL_31:
          v11 = v30;
          goto LABEL_37;
        }

        if (v13 <= 4)
        {
          if (((1 << v13) & 0x13) != 0)
          {
            [getREMReminderPredicateDescriptorClass() predicateDescriptorForRemindersWithDisplayDateOnOrBefore:v3];
          }

          else
          {
            [getREMReminderPredicateDescriptorClass() predicateDescriptorForRemindersWithDisplayDateOnOrAfter:v3];
          }
          v30 = ;
          goto LABEL_31;
        }
      }
    }

    v11 = 0;
    goto LABEL_37;
  }

LABEL_18:
  v11 = 0;
LABEL_38:

LABEL_39:

  return v11;
}

id getREMReminderSortDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMReminderSortDescriptorClass_softClass;
  v7 = getREMReminderSortDescriptorClass_softClass;
  if (!getREMReminderSortDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getREMReminderSortDescriptorClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getREMReminderSortDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E285308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFCompoundReminderPredicateDescriptorWithSubpredicates(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 == 2)
  {
    v4 = [getREMReminderPredicateDescriptorClass() orPredicateDescriptorWithDescriptors:v3];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v4 = [getREMReminderPredicateDescriptorClass() andPredicateDescriptorWithDescriptors:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

void __getREMReminderClass_block_invoke_5870(uint64_t a1)
{
  ReminderKitLibrary_5873();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMReminder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMReminderClass_softClass_5869 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersLibraryFiltering.m" lineNumber:21 description:{@"Unable to find class %s", "REMReminder"}];

    __break(1u);
  }
}

void ReminderKitLibrary_5873()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_5884)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke_5885;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278345D68;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary_5884 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_5884)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFRemindersLibraryFiltering.m" lineNumber:20 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke_5885()
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_5884 = result;
  return result;
}

id getREMReminderPredicateDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMReminderPredicateDescriptorClass_softClass;
  v7 = getREMReminderPredicateDescriptorClass_softClass;
  if (!getREMReminderPredicateDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getREMReminderPredicateDescriptorClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getREMReminderPredicateDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E285700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMReminderPredicateDescriptorClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_5873();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMReminderPredicateDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMReminderPredicateDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMReminderPredicateDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersLibraryFiltering.m" lineNumber:22 description:{@"Unable to find class %s", "REMReminderPredicateDescriptor"}];

    __break(1u);
  }
}

void __getREMReminderSortDescriptorClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_5873();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMReminderSortDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMReminderSortDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMReminderSortDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersLibraryFiltering.m" lineNumber:23 description:{@"Unable to find class %s", "REMReminderSortDescriptor"}];

    __break(1u);
  }
}

uint64_t __getWFRemindersLibraryFilteringLogObject_block_invoke()
{
  getWFRemindersLibraryFilteringLogObject_log = os_log_create(*MEMORY[0x277D7A500], "RemindersLibraryFiltering");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__6285(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGImageSourceRef WFImageSourceCreateFromFile(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 representationType])
  {
    v5 = [v4 fileURL];

    v6 = CGImageSourceCreateWithURL(v5, v3);
  }

  else
  {
    v5 = [v4 data];

    v6 = CGImageSourceCreateWithData(v5, v3);
  }

  v7 = v6;

  return v7;
}

double WFImageSizeFromFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = WFImageSourceCreateFromFile(v3, 0);
  if (v5)
  {
    v6 = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __WFImageSizeFromFile_block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v5;
    v7 = _Block_copy(aBlock);
    v8 = WFImageSizeFromImageSource(v6);
    v7[2](v7);
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
  }

  return v8;
}

double WFImageSizeFromImageSource(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = [(__CFDictionary *)v1 objectForKey:*MEMORY[0x277CD3450]];
  [v2 doubleValue];
  v4 = v3;

  v5 = [(__CFDictionary *)v1 objectForKey:*MEMORY[0x277CD3448]];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(__CFDictionary *)v1 objectForKey:*MEMORY[0x277CD3410]];
  v9 = [v8 integerValue];

  if (v9 > 4)
  {
    v4 = v7;
  }

  return v4;
}

id WFImageAtIndexFromImageSource(CGImageSource *a1, size_t a2)
{
  v4 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  if (v4)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, 0);
    v6 = ImageAtIndex;
    if (ImageAtIndex)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __WFImageAtIndexFromImageSource_block_invoke;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = ImageAtIndex;
      v7 = _Block_copy(aBlock);
      v6 = [MEMORY[0x277D79FC8] imageWithCGImage:v6 scale:WFImageOrientationFromMetadata(v4) orientation:1.0];
      v7[2](v7);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

CGImageSource *WFResizedImageFromImageFile(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = WFImageSourceCreateFromFile(v5, 0);
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __WFResizedImageFromImageFile_block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v7;
    v9 = _Block_copy(aBlock);
    if (!v6)
    {
      v6 = [v5 wfType];
    }

    v10 = [v5 filename];
    v8 = WFResizedImageFromImageSource(v8, v6, v10, a3);

    v9[2](v9);
  }

  return v8;
}

CGImage *WFResizedImageFromImageSource(CGImageSource *a1, void *a2, void *a3, double a4)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *MEMORY[0x277CD3568];
  v23[0] = *MEMORY[0x277CD3578];
  v23[1] = v9;
  v24[0] = MEMORY[0x277CBEC38];
  v24[1] = MEMORY[0x277CBEC38];
  v23[2] = *MEMORY[0x277CD3660];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v24[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, 0, v11);
  v13 = ThumbnailAtIndex;
  if (ThumbnailAtIndex)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __WFResizedImageFromImageSource_block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = ThumbnailAtIndex;
    v14 = _Block_copy(aBlock);
    v15 = [WFTemporaryFileManager createTemporaryFileWithFilename:v8];
    v16 = [v7 utType];
    v17 = [v16 identifier];
    v18 = CGImageDestinationCreateWithURL(v15, v17, 1uLL, 0);

    if (v18)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __WFResizedImageFromImageSource_block_invoke_2;
      v21[3] = &__block_descriptor_40_e5_v8__0l;
      v21[4] = v18;
      v19 = _Block_copy(v21);
      CGImageDestinationAddImage(v18, v13, 0);
      CGImageDestinationFinalize(v18);
      v13 = [WFFileRepresentation fileWithURL:v15 options:1 ofType:v7];
      v19[2](v19);
    }

    else
    {
      v13 = 0;
    }

    v14[2](v14);
  }

  return v13;
}

id WFTransformedImageFromImage(void *a1, void *a2, void *a3, double a4, double a5)
{
  v63 = a1;
  v9 = a2;
  v10 = a3;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &__block_literal_global_6620;
  }

  if (!v9)
  {
    v9 = [v63 wfType];
  }

  if ([v9 isEqualToUTType:*MEMORY[0x277CE1DB0]])
  {
    v12 = [v63 filename];
    v13 = [v12 length];

    if (v13)
    {
      v14 = MEMORY[0x277D79F68];
      v15 = [v63 filename];
      v16 = [v14 typeFromFilename:v15];

      v9 = v16;
    }
  }

  v17 = WFImageSourceCreateFromFile(v63, 0);
  if (v17)
  {
    v18 = v17;
    Count = CGImageSourceGetCount(v17);
    v20 = [v63 filename];
    v21 = [WFTemporaryFileManager createTemporaryFileWithFilename:v20];

    v22 = [v9 utType];
    v23 = [v22 identifier];
    v24 = CGImageDestinationCreateWithURL(v21, v23, Count, 0);

    if (v24)
    {
      idst = v24;
      v52 = v21;
      v61 = v9;
      v57 = objc_opt_new();
      if (Count)
      {
        v25 = Count;
        v26 = 0;
        v27 = *MEMORY[0x277CD3490];
        v59 = *MEMORY[0x277CD34B8];
        v60 = *MEMORY[0x277CD3410];
        v55 = v18;
        v56 = v11;
        v54 = v25;
        v62 = *MEMORY[0x277CD3490];
        do
        {
          v28 = CGImageSourceCopyPropertiesAtIndex(v18, v26, 0);
          v29 = [MEMORY[0x277D79DF8] HDRCapableContextWithSize:a4 scale:{a5, 1.0}];
          if (v29)
          {
            v30 = WFImageAtIndexFromImageSource(v18, v26);
            v11[2](v11, v30, v29, 0.0, 0.0, a4, a5);

            image = CGBitmapContextCreateImage([v29 CGContext]);
            v31 = [(__CFDictionary *)v28 mutableCopy];
            v32 = [(__CFDictionary *)v28 objectForKey:v27];
            v33 = [v32 mutableCopy];

            v27 = v62;
            [v31 setObject:&unk_282F7A1F8 forKey:v60];
            [v33 setObject:&unk_282F7A1F8 forKey:v59];
            if (v33)
            {
              [v31 setObject:v33 forKey:v62];
            }

            if (v25 == 1)
            {
              v34 = image;
              CGImageDestinationAddImage(idst, image, v31);
            }

            else
            {
              v35 = [v63 filename];
              v36 = [WFTemporaryFileManager createTemporaryFileWithFilename:v35];

              v37 = [v61 utType];
              v38 = [v37 identifier];
              v39 = v36;
              v40 = CGImageDestinationCreateWithURL(v36, v38, 1uLL, 0);

              CGImageDestinationAddImage(v40, image, v31);
              CGImageDestinationFinalize(v40);
              CFRelease(v40);
              v41 = [MEMORY[0x277CCAD78] UUID];
              v42 = [v41 UUIDString];
              v43 = [WFFileRepresentation fileWithURL:v39 options:1 ofType:v61 proposedFilename:v42];
              [v57 addObject:v43];

              v34 = image;
              v18 = v55;

              v11 = v56;
              v25 = v54;
              v27 = v62;
            }

            CGImageRelease(v34);
          }

          ++v26;
        }

        while (v25 != v26);
      }

      if ([v57 count])
      {
        v44 = 0;
        do
        {
          v45 = [v57 objectAtIndex:v44];
          v46 = [v45 fileURL];
          v47 = CGImageSourceCreateWithURL(v46, 0);

          v48 = CGImageSourceCopyPropertiesAtIndex(v18, 0, 0);
          CGImageDestinationAddImageFromSource(idst, v47, 0, v48);
          if (v47)
          {
            CFRelease(v47);
          }

          ++v44;
        }

        while (v44 < [v57 count]);
      }

      CGImageDestinationFinalize(idst);

      CFRelease(v18);
      CFRelease(idst);
      v49 = [v63 filename];
      v21 = v53;
      v9 = v61;
      v50 = [WFFileRepresentation fileWithURL:v53 options:1 ofType:v61 proposedFilename:v49];
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

void WFAsyncTransformedImageFromImage(void *a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (v14)
  {
    v15 = dispatch_get_global_queue(0, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __WFAsyncTransformedImageFromImage_block_invoke;
    v16[3] = &unk_278345FF0;
    v17 = v11;
    v21 = a5;
    v22 = a6;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    dispatch_async(v15, v16);
  }
}

void __WFAsyncTransformedImageFromImage_block_invoke(uint64_t a1)
{
  v2 = WFTransformedImageFromImage(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 72));
  (*(*(a1 + 56) + 16))();
}

id WFMetadataRotateImage(void *a1, int a2, void *a3, long double a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a1;
  if (fmod(a4, 90.0) != 0.0 || (v38 = *MEMORY[0x277CD3630], v8 = MEMORY[0x277CBEC38], v39 = MEMORY[0x277CBEC38], [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1], v9 = objc_claimAutoreleasedReturnValue(), v10 = WFImageSourceCreateFromFile(v7, v9), v9, !v10))
  {
    v17 = 0;
    goto LABEL_26;
  }

  v36 = *MEMORY[0x277CD3648];
  v37 = v8;
  v33 = CGImageSourceCopyPropertiesAtIndex(v10, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1]);
  v11 = [v33 objectForKeyedSubscript:*MEMORY[0x277CD3410]];
  if (!v11)
  {
    v11 = &unk_282F7A1F8;
  }

  v32 = v11;
  v12 = [v11 integerValue];
  p_err = 0;
  if (v12 <= 8)
  {
    if (((1 << v12) & 0xB4) != 0)
    {
      LODWORD(err) = 2;
      v14 = 5;
      v15 = 4;
      v16 = 7;
      goto LABEL_11;
    }

    if (((1 << v12) & 0x14A) != 0)
    {
      LODWORD(err) = 1;
      v14 = 8;
      v15 = 3;
      v16 = 6;
LABEL_11:
      p_err = &err;
      HIDWORD(err) = v16;
      v41 = v15;
      v42 = v14;
    }
  }

  if (v12 - 3 > 5)
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v18 = qword_21E356940[v12 - 3];
  }

  v19 = *(p_err + ((v18 + (a4 / 90.0)) & 3));
  v34 = *MEMORY[0x277CD2D68];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
  v35 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  if (a2)
  {
    v22 = [v7 fileURL];
  }

  else
  {
    v23 = [v7 filename];
    v22 = [WFTemporaryFileManager createTemporaryFileWithFilename:v23];
  }

  v24 = [v7 wfType];
  v25 = [v24 utType];
  v26 = [v25 identifier];
  v27 = CGImageDestinationCreateWithURL(v22, v26, 1uLL, 0);

  err = 0;
  v28 = CGImageDestinationCopyImageSource(v27, v10, v21, &err);
  if (a3)
  {
    *a3 = err;
  }

  if (v28)
  {
    if (a2)
    {
      v17 = v7;
    }

    else
    {
      v29 = [v7 wfType];
      v30 = [v7 filename];
      v17 = [WFFileRepresentation fileWithURL:v22 options:1 ofType:v29 proposedFilename:v30];
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_26:

  return v17;
}

id WFJavaScriptRepresentationFromPropertyList(void *a1, uint64_t a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!a2)
    {
      v4 = [MEMORY[0x277CCA980] notANumber];
      v5 = [v3 isEqualToNumber:v4];

      if (v5)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_8:
    v7 = v3;
LABEL_9:
    v6 = v7;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = @"__type__";
    v19[1] = @"__value__";
    v20[0] = @"data";
    v9 = [v3 base64EncodedStringWithOptions:0];
    v20[1] = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v20;
    v12 = v19;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      goto LABEL_8;
    }

    if (a2)
    {
LABEL_20:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __WFJavaScriptRepresentationFromPropertyList_block_invoke;
        v16[3] = &__block_descriptor_40_e11__24__0_8Q16l;
        v16[4] = a2;
        v14 = v16;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_5:
          v6 = 0;
          goto LABEL_10;
        }

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __WFJavaScriptRepresentationFromPropertyList_block_invoke_2;
        v15[3] = &__block_descriptor_40_e19_v40__0_8_16__24__32l;
        v15[4] = a2;
        v14 = v15;
      }

      v7 = [v3 if_compactMap:v14];
      goto LABEL_9;
    }

    v18[0] = @"date";
    v17[0] = @"__type__";
    v17[1] = @"__value__";
    v13 = MEMORY[0x277CCABB0];
    [v3 timeIntervalSince1970];
    v9 = [v13 numberWithDouble:?];
    v18[1] = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v18;
    v12 = v17;
  }

  v6 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];

LABEL_10:

  return v6;
}

void __WFJavaScriptRepresentationFromPropertyList_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v9 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a4 = [v10 description];
  }

  *a5 = WFJavaScriptRepresentationFromPropertyList(v9, *(a1 + 32));
}

id WFPropertyListRepresentationFromJSON(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 if_compactMap:&__block_literal_global_6657];
LABEL_10:
    v3 = v2;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = v1;
    goto LABEL_10;
  }

  v4 = [v1 objectForKey:@"__type__"];
  v5 = [v1 objectForKey:@"__value__"];
  if ([v4 isEqual:@"data"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
  }

  else if ([v4 isEqual:@"date"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = MEMORY[0x277CBEAA8];
    [v5 doubleValue];
    v6 = [v7 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v6 = [v1 if_compactMap:&__block_literal_global_18_6658];
  }

  v3 = v6;

LABEL_16:

  return v3;
}

id __WFPropertyListRepresentationFromJSON_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  result = WFPropertyListRepresentationFromJSON(a3);
  *a5 = result;
  return result;
}

_DWORD *cdf_timestamp_to_timespec(void *a1, uint64_t a2)
{
  a1[1] = 100 * (a2 % 10000000);
  v31.tm_sec = (a2 / 10000000) % 60;
  v31.tm_min = (a2 / 600000000) % 60;
  v31.tm_hour = a2 / 1640261632 % 24;
  v3 = a2 / 864000000000;
  v4 = a2 / 2026291200;
  v5 = a2 / 2026291200 + 1601;
  if (a2 < 315360000000000)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1601;
    v8 = -1601;
    v9 = a2 / 2026291200;
    do
    {
      if ((v7 & 3) != 0)
      {
        v10 = 365;
      }

      else if (v8 + 100 * (v7 / 0x64))
      {
        v10 = 366;
      }

      else if (v8 + 400 * (v7 / 0x190))
      {
        v10 = 365;
      }

      else
      {
        v10 = 366;
      }

      v6 += v10;
      ++v7;
      --v8;
      --v9;
    }

    while (v9);
  }

  v11 = 0;
  v12 = v3 - v6 + 1;
  v13 = v5 & 3;
  v14 = -1030792151 * v5 + 85899344;
  HIDWORD(v16) = v14;
  LODWORD(v16) = v14;
  v15 = v16 >> 2;
  HIDWORD(v16) = v14;
  LODWORD(v16) = v14;
  v17 = v16 >> 4;
  v19 = v15 > 0x28F5C28 || v17 < 0xA3D70B;
  v20 = v12;
  do
  {
    if (v13)
    {
      v21 = 0;
    }

    else
    {
      v21 = v11 == 1;
    }

    v22 = v21 && v19;
    v23 = mdays[v11] + v22;
    v24 = __OFSUB__(v20, v23);
    v25 = v20 - v23;
    if (v25 < 0 != v24)
    {
      break;
    }

    ++v11;
    v20 = v25;
  }

  while (v11 != 12);
  v26 = 0;
  v31.tm_mday = v20;
  do
  {
    v27 = v12 - mdays[v26];
    if (v13)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26 == 1;
    }

    v29 = v28 && v19;
    v12 = v27 - v29;
    if (v12 < 1)
    {
      break;
    }

    ++v26;
  }

  while (v26 != 12);
  memset(&v31.tm_yday, 0, 20);
  v31.tm_zone = &cdf_timestamp_to_timespec_UTC;
  v31.tm_mon = v26;
  *&v31.tm_year = (v4 - 299);
  result = mktime(&v31);
  *a1 = result;
  if (result == -1)
  {
    result = __error();
    *result = 22;
  }

  return result;
}

id getPHPhotoLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHPhotoLibraryClass_softClass_6697;
  v7 = getPHPhotoLibraryClass_softClass_6697;
  if (!getPHPhotoLibraryClass_softClass_6697)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHPhotoLibraryClass_block_invoke_6698;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getPHPhotoLibraryClass_block_invoke_6698(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E28DAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHPhotoLibraryClass_block_invoke_6698(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary_6699)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PhotosLibraryCore_block_invoke_6700;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278346070;
    v8 = 0;
    PhotosLibraryCore_frameworkLibrary_6699 = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary_6699)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSharedPhotoLibrary.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHPhotoLibraryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSharedPhotoLibrary.m" lineNumber:19 description:{@"Unable to find class %s", "PHPhotoLibrary"}];

LABEL_10:
    __break(1u);
  }

  getPHPhotoLibraryClass_softClass_6697 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke_6700()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_6699 = result;
  return result;
}

WFPasteboardItem *__WFUIPasteboardParseItems_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v34 = objc_opt_new();
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v9 = *MEMORY[0x277CE1DB0];
    v33 = *MEMORY[0x277CE1E88];
    v31 = *MEMORY[0x277CE1E58];
    v28 = *MEMORY[0x277CE1DA0];
    v29 = *MEMORY[0x277CE1D78];
    v30 = *MEMORY[0x277CE1E20];
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [MEMORY[0x277D79F68] typeWithString:v11];
        v13 = [v12 conformsToUTType:v9];

        v14 = *(a1 + 32);
        if (v13)
        {
          [v14 dataForPasteboardType:v11 inItemSet:v5];
        }

        else
        {
          [v14 valuesForPasteboardType:v11 inItemSet:v5];
        }
        v15 = ;
        v16 = [v15 firstObject];

        if (v16)
        {
          v17 = v11;
          v18 = [v33 identifier];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v20 = v30;
            goto LABEL_16;
          }

          v21 = [v31 identifier];
          v22 = [v17 isEqualToString:v21];

          if (v22)
          {
            v20 = v29;
            goto LABEL_16;
          }

          if ([v17 isEqualToString:@"com.microsoft.HTML"])
          {
            v20 = v28;
LABEL_16:
            v23 = [v20 identifier];
          }

          else
          {
            v23 = v17;
          }

          v24 = v23;

          [v34 setObject:v16 forKey:v24];
        }

        ++v10;
      }

      while (v7 != v10);
      v25 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      v7 = v25;
    }

    while (v25);
  }

  v26 = [[WFPasteboardItem alloc] initWithItemsByType:v34 fileURLs:0];

  return v26;
}

id WFPasteboardRequiredAccessResources(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = @"com.apple.mobileslideshow.asset.localidentifier";
  v1 = MEMORY[0x277CBEA60];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v7 count:1];
  v4 = [v2 containsPasteboardTypes:{v3, v7, v8}];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:@"WFPhotoAccessResource"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_21E292D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getNSLinkAttributeName()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getNSLinkAttributeNameSymbolLoc_ptr;
  v9 = getNSLinkAttributeNameSymbolLoc_ptr;
  if (!getNSLinkAttributeNameSymbolLoc_ptr)
  {
    v1 = UIFoundationLibrary();
    v7[3] = dlsym(v1, "NSLinkAttributeName");
    getNSLinkAttributeNameSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringKey getNSLinkAttributeName(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRichTextContentItem.m" lineNumber:50 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E292EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSAttachmentAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSAttachmentAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSAttachmentAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIFoundationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary_8112)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIFoundationLibraryCore_block_invoke_8113;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783463B0;
    v6 = 0;
    UIFoundationLibraryCore_frameworkLibrary_8112 = _sl_dlopen();
  }

  v0 = UIFoundationLibraryCore_frameworkLibrary_8112;
  if (!UIFoundationLibraryCore_frameworkLibrary_8112)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFRichTextContentItem.m" lineNumber:46 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __UIFoundationLibraryCore_block_invoke_8113()
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary_8112 = result;
  return result;
}

void *__getNSLinkAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSLinkAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSLinkAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getNSDocumentTypeDocumentAttribute()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
  v9 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
  if (!getNSDocumentTypeDocumentAttributeSymbolLoc_ptr)
  {
    v1 = UIFoundationLibrary();
    v7[3] = dlsym(v1, "NSDocumentTypeDocumentAttribute");
    getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentAttributeKey getNSDocumentTypeDocumentAttribute(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRichTextContentItem.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E294098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getNSHTMLTextDocumentType()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getNSHTMLTextDocumentTypeSymbolLoc_ptr;
  v9 = getNSHTMLTextDocumentTypeSymbolLoc_ptr;
  if (!getNSHTMLTextDocumentTypeSymbolLoc_ptr)
  {
    v1 = UIFoundationLibrary();
    v7[3] = dlsym(v1, "NSHTMLTextDocumentType");
    getNSHTMLTextDocumentTypeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentType getNSHTMLTextDocumentType(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRichTextContentItem.m" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2941FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSHTMLTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSHTMLTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSHTMLTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSDocumentTypeDocumentAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSDocumentTypeDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initUISimpleTextPrintFormatter_8128()
{
  if (UIKitLibrary_sOnce_8129 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_8129, &__block_literal_global_8130);
  }

  result = objc_getClass("UISimpleTextPrintFormatter");
  classUISimpleTextPrintFormatter_8131 = result;
  getUISimpleTextPrintFormatterClass_8126 = UISimpleTextPrintFormatterFunction_8133;
  return result;
}

void *__UIKitLibrary_block_invoke_8136()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_8138 = result;
  return result;
}

Class __getWKWebViewConfigurationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __WebKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783463C8;
    v8 = 0;
    WebKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFRichTextContentItem.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WKWebViewConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewConfigurationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFRichTextContentItem.m" lineNumber:36 description:{@"Unable to find class %s", "WKWebViewConfiguration"}];

LABEL_10:
    __break(1u);
  }

  getWKWebViewConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21E296B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getNSPlainTextDocumentType()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getNSPlainTextDocumentTypeSymbolLoc_ptr;
  v9 = getNSPlainTextDocumentTypeSymbolLoc_ptr;
  if (!getNSPlainTextDocumentTypeSymbolLoc_ptr)
  {
    v1 = UIFoundationLibrary();
    v7[3] = dlsym(v1, "NSPlainTextDocumentType");
    getNSPlainTextDocumentTypeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentType getNSPlainTextDocumentType(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRichTextContentItem.m" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E296CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSCharacterEncodingDocumentAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSCharacterEncodingDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSPlainTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSPlainTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSPlainTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2970CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSRTFTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSRTFTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSRTFTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSRTFDTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSRTFDTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSRTFDTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WFDateFormatterStyleFromStyle(void *a1, uint64_t *a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Short"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Medium"])
  {
    v4 = 2;
  }

  else
  {
    if (![v3 isEqualToString:@"Long"])
    {
      v5 = 0;
      goto LABEL_10;
    }

    v4 = 3;
  }

  *a2 = v4;
  v5 = 1;
LABEL_10:

  return v5;
}

void sub_21E299278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__211(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E29A168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__8709(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_21E29A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFConvertObjectToContentItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 contentItemByMergingAttributionSet:v4];
LABEL_4:
      v6 = v5;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v3;
      v8 = [v7 wfType];
      v6 = [WFContentItem itemWithRepresentation:v7 forType:v8 attributionSet:v4 cachingIdentifier:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = [WFContentItem itemWithObject:v3 attributionSet:v4];
        goto LABEL_4;
      }

      v9 = [v3 localizedValue];
      v6 = [WFContentItem itemWithObject:v9 attributionSet:v4];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

id getWFFileRepresentationLogObject()
{
  if (getWFFileRepresentationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFFileRepresentationLogObject_onceToken, &__block_literal_global_8888);
  }

  v1 = getWFFileRepresentationLogObject_log;

  return v1;
}

uint64_t __getWFFileRepresentationLogObject_block_invoke()
{
  getWFFileRepresentationLogObject_log = os_log_create(*MEMORY[0x277D7A500], "FileRepresentation");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__8915(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFFaultIfLoadingMagicKitInDaemon()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = +[WFApplicationContext sharedContext];
  v1 = [v0 provider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v3 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = 136315138;
      v5 = "WFFaultIfLoadingMagicKitInDaemon";
      _os_log_impl(&dword_21E1BD000, v3, OS_LOG_TYPE_FAULT, "%s Creating a WFFileRepresentation without a type will load MagicKit (a ContentKit dependency), which in turn loads a 7MB database into memory. Please do not do this in low memory processes like our daemon, this will cause very severe memory regressions.", &v4, 0xCu);
    }
  }
}

uint64_t sread(int a1, char *a2, unint64_t a3)
{
  v14 = 0;
  if (!a1)
  {
LABEL_18:
    v9 = a3;
    while (1)
    {
      v10 = read(a1, a2, v9);
      if (v10 == -1)
      {
        if (*__error() != 4)
        {
          return -1;
        }
      }

      else
      {
        if (!v10)
        {
          a3 -= v9;
          return a3;
        }

        v9 -= v10;
        a2 += v10;
      }

      if (!v9)
      {
        return a3;
      }
    }
  }

  if (ioctl(a1, 0x4004667FuLL, &v14) != -1)
  {
    v6 = v14;
    if (v14)
    {
LABEL_15:
      if (v6 >= 1 && v6 < a3)
      {
        a3 = v6;
      }

      goto LABEL_18;
    }
  }

  for (i = 0; ; ++i)
  {
    v12 = xmmword_21E356690;
    memset(&v13, 0, sizeof(v13));
    if (__darwin_check_fd_set_overflow(a1, &v13, 0))
    {
      v13.fds_bits[a1 >> 5] |= 1 << a1;
    }

    v8 = select(a1 + 1, &v13, 0, 0, &v12);
    if (v8 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      __error();
    }
  }

  if (v8 || i <= 4)
  {
    ioctl(a1, 0x4004667FuLL, &v14);
    v6 = v14;
    goto LABEL_15;
  }

  return 0;
}

uint64_t file_pipe2file(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v30 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  v9 = umask(0);
  v10 = mkstemp(__buf);
  umask(v9);
  v11 = *__error();
  unlink(__buf);
  *__error() = v11;
  if (v10 == -1)
  {
    v13 = *__error();
    v19 = "cannot create temporary file for pipe copy";
    goto LABEL_10;
  }

  if (swrite(v10, v5, v3) != v3)
  {
    goto LABEL_8;
  }

  do
  {
    v12 = sread(v7, __buf, 0x1000uLL);
  }

  while (v12 >= 1 && swrite(v10, __buf, v12) == v12);
  if (v12)
  {
    if (v12 == -1)
    {
      v13 = *__error();
      v19 = "error copying from pipe to temp file";
LABEL_10:
      file_error(v8, v13, v19, v14, v15, v16, v17, v18, v28);
      return 0xFFFFFFFFLL;
    }

LABEL_8:
    v13 = *__error();
    v19 = "error while writing to temp file";
    goto LABEL_10;
  }

  v20 = dup2(v10, v7);
  if (v20 == -1)
  {
    v22 = __error();
    file_error(v8, *v22, "could not dup descriptor for temp file", v23, v24, v25, v26, v27, v28);
    return v20;
  }

  close(v10);
  if (lseek(v20, 0, 0) == -1)
  {
    v13 = *__error();
    v19 = "error seeking";
    goto LABEL_10;
  }

  return v20;
}

size_t swrite(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  v6 = __nbyte;
  while (1)
  {
    v7 = write(__fd, __buf, v6);
    if (v7 == -1)
    {
      break;
    }

    v6 -= v7;
    __buf += v7;
LABEL_5:
    if (!v6)
    {
      return v3;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_5;
  }

  return -1;
}

void sub_21E2A10C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKLaunchOptionsMapTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsMapTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsMapTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MapKitLibrary_9065()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_9097)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MapKitLibraryCore_block_invoke_9098;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278346948;
    v6 = 0;
    MapKitLibraryCore_frameworkLibrary_9097 = _sl_dlopen();
  }

  v0 = MapKitLibraryCore_frameworkLibrary_9097;
  if (!MapKitLibraryCore_frameworkLibrary_9097)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"DCMapsLink+MKDirections.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getMKLaunchOptionsShowsTrafficKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsShowsTrafficKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsShowsTrafficKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKLaunchOptionsDirectionsModeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsDirectionsModeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsDirectionsModeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCLLocationCoordinate2DIsValidSymbolLoc_block_invoke_9072(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_9088)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreLocationLibraryCore_block_invoke_9089;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278346960;
    v7 = 0;
    CoreLocationLibraryCore_frameworkLibrary_9088 = _sl_dlopen();
  }

  v2 = CoreLocationLibraryCore_frameworkLibrary_9088;
  if (!CoreLocationLibraryCore_frameworkLibrary_9088)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"DCMapsLink+MKDirections.m" lineNumber:36 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CLLocationCoordinate2DIsValid");
  *(*(a1[4] + 8) + 24) = result;
  getCLLocationCoordinate2DIsValidSymbolLoc_ptr_9071 = *(*(a1[4] + 8) + 24);
  return result;
}

void *__getMKLaunchOptionsMapCenterKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsMapCenterKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsMapCenterKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMKMapItemClass_9076()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKMapItemClass_softClass_9084;
  v7 = getMKMapItemClass_softClass_9084;
  if (!getMKMapItemClass_softClass_9084)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMKMapItemClass_block_invoke_9085;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getMKMapItemClass_block_invoke_9085(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2A1734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMKPlacemarkClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKPlacemarkClass_softClass_9077;
  v7 = getMKPlacemarkClass_softClass_9077;
  if (!getMKPlacemarkClass_softClass_9077)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMKPlacemarkClass_block_invoke_9078;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getMKPlacemarkClass_block_invoke_9078(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2A1814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKPlacemarkClass_block_invoke_9078(uint64_t a1)
{
  MapKitLibrary_9065();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKPlacemarkClass_softClass_9077 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+MKDirections.m" lineNumber:23 description:{@"Unable to find class %s", "MKPlacemark"}];

    __break(1u);
  }
}

void __getMKMapItemClass_block_invoke_9085(uint64_t a1)
{
  MapKitLibrary_9065();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKMapItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKMapItemClass_softClass_9084 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+MKDirections.m" lineNumber:22 description:{@"Unable to find class %s", "MKMapItem"}];

    __break(1u);
  }
}

uint64_t __CoreLocationLibraryCore_block_invoke_9089()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_9088 = result;
  return result;
}

uint64_t __MapKitLibraryCore_block_invoke_9098()
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_9097 = result;
  return result;
}

void sub_21E2A203C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKLaunchOptionsDirectionsModeWalkingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsDirectionsModeWalking");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsDirectionsModeWalkingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKLaunchOptionsDirectionsModeTransitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsDirectionsModeTransit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsDirectionsModeTransitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKLaunchOptionsDirectionsModeDrivingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsDirectionsModeDriving");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsDirectionsModeDrivingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKLaunchOptionsDirectionsModeCyclingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsDirectionsModeCycling");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsDirectionsModeCyclingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMKLaunchOptionsDirectionsModeDefaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_9065();
  result = dlsym(v2, "MKLaunchOptionsDirectionsModeDefault");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKLaunchOptionsDirectionsModeDefaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2A2560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKDirectionsRequestClass_block_invoke(uint64_t a1)
{
  MapKitLibrary_9065();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKDirectionsRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKDirectionsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKDirectionsRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+MKDirections.m" lineNumber:20 description:{@"Unable to find class %s", "MKDirectionsRequest"}];

    __break(1u);
  }
}

void __getMKDirectionsClass_block_invoke(uint64_t a1)
{
  MapKitLibrary_9065();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKDirections");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKDirectionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKDirectionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+MKDirections.m" lineNumber:21 description:{@"Unable to find class %s", "MKDirections"}];

    __break(1u);
  }
}

uint64_t WFUIImageOrientationFromCGImagePropertyOrientation(int a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_21E356A48[a1 - 2];
  }
}

uint64_t WFCGImagePropertyOrientationFromUIImageOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_21E356A80[a1 - 1];
  }
}

id getEKReminderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEKReminderClass_softClass;
  v7 = getEKReminderClass_softClass;
  if (!getEKReminderClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getEKReminderClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getEKReminderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2A5194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEKEventClass_block_invoke_9441(uint64_t a1)
{
  EventKitLibrary_9483();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKEvent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKEventClass_softClass_9440 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKEventClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFVCalendarFormatter.m" lineNumber:16 description:{@"Unable to find class %s", "EKEvent"}];

    __break(1u);
  }
}

void EventKitLibrary_9483()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary_9493)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __EventKitLibraryCore_block_invoke_9494;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783469E8;
    v5 = 0;
    EventKitLibraryCore_frameworkLibrary_9493 = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary_9493)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFVCalendarFormatter.m" lineNumber:14 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __EventKitLibraryCore_block_invoke_9494()
{
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary_9493 = result;
  return result;
}

void __getEKReminderClass_block_invoke(uint64_t a1)
{
  EventKitLibrary_9483();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKReminder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKReminderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKReminderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFVCalendarFormatter.m" lineNumber:15 description:{@"Unable to find class %s", "EKReminder"}];

    __break(1u);
  }
}

id getWFApplicationContextLogObject()
{
  if (getWFApplicationContextLogObject_onceToken != -1)
  {
    dispatch_once(&getWFApplicationContextLogObject_onceToken, &__block_literal_global_9685);
  }

  v1 = getWFApplicationContextLogObject_log;

  return v1;
}

uint64_t __getWFApplicationContextLogObject_block_invoke()
{
  getWFApplicationContextLogObject_log = os_log_create(*MEMORY[0x277D7A500], "ApplicationContext");

  return MEMORY[0x2821F96F8]();
}

uint64_t __WFHighRiskURLSchemes_block_invoke()
{
  WFHighRiskURLSchemes_schemes = [MEMORY[0x277CBEB98] setWithObjects:{@"fido", 0}];

  return MEMORY[0x2821F96F8]();
}

id getAVAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAssetClass_softClass_9801;
  v7 = getAVAssetClass_softClass_9801;
  if (!getAVAssetClass_softClass_9801)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVAssetClass_block_invoke_9802;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getAVAssetClass_block_invoke_9802(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2A6CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVMutableMovieClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVMutableMovieClass_softClass;
  v7 = getAVMutableMovieClass_softClass;
  if (!getAVMutableMovieClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVMutableMovieClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getAVMutableMovieClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2A6D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVMutableMovieClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_9786();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVMutableMovie");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVMutableMovieClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVMutableMovieClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAVAssetContentItem.m" lineNumber:38 description:{@"Unable to find class %s", "AVMutableMovie"}];

    __break(1u);
  }
}

void *AVFoundationLibrary_9786()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_9793)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_9794;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278346B60;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_9793 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_9793;
  if (!AVFoundationLibraryCore_frameworkLibrary_9793)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAVAssetContentItem.m" lineNumber:31 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke_9794()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_9793 = result;
  return result;
}

void __getAVAssetClass_block_invoke_9802(uint64_t a1)
{
  AVFoundationLibrary_9786();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetClass_softClass_9801 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAVAssetContentItem.m" lineNumber:32 description:{@"Unable to find class %s", "AVAsset"}];

    __break(1u);
  }
}

id getAVURLAssetClass_9810()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVURLAssetClass_softClass_9816;
  v7 = getAVURLAssetClass_softClass_9816;
  if (!getAVURLAssetClass_softClass_9816)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVURLAssetClass_block_invoke_9817;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getAVURLAssetClass_block_invoke_9817(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2A754C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVURLAssetClass_block_invoke_9817(uint64_t a1)
{
  AVFoundationLibrary_9786();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVURLAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVURLAssetClass_softClass_9816 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVURLAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAVAssetContentItem.m" lineNumber:33 description:{@"Unable to find class %s", "AVURLAsset"}];

    __break(1u);
  }
}

void sub_21E2A9730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVAssetExportPresetPassthroughSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVAssetExportPresetPassthrough");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAssetExportPresetPassthroughSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVAssetExportSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_9786();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetExportSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetExportSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetExportSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAVAssetContentItem.m" lineNumber:35 description:{@"Unable to find class %s", "AVAssetExportSession"}];

    __break(1u);
  }
}

void *__getAVAssetExportPresetAppleM4ASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVAssetExportPresetAppleM4A");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAssetExportPresetAppleM4ASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVFileTypeAppleM4ASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVFileTypeAppleM4A");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVFileTypeAppleM4ASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2A9E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVMetadataItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVMetadataItemClass_softClass;
  v7 = getAVMetadataItemClass_softClass;
  if (!getAVMetadataItemClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVMetadataItemClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getAVMetadataItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2A9F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMetadataCommonKeyLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVMetadataCommonKeyLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataCommonKeyLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getAVMetadataKeySpaceCommon()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVMetadataKeySpaceCommonSymbolLoc_ptr;
  v9 = getAVMetadataKeySpaceCommonSymbolLoc_ptr;
  if (!getAVMetadataKeySpaceCommonSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_9786();
    v7[3] = dlsym(v1, "AVMetadataKeySpaceCommon");
    getAVMetadataKeySpaceCommonSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKeySpace getAVMetadataKeySpaceCommon(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAVAssetContentItem.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2AA0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke_9840(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_9841)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_9842;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278346B90;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_9841 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_9841)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAVAssetContentItem.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAVAssetContentItem.m" lineNumber:29 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_9839 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_9842()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_9841 = result;
  return result;
}

void *__getAVMetadataKeySpaceCommonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVMetadataKeySpaceCommon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataKeySpaceCommonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVMetadataItemClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_9786();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVMetadataItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVMetadataItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVMetadataItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAVAssetContentItem.m" lineNumber:34 description:{@"Unable to find class %s", "AVMetadataItem"}];

    __break(1u);
  }
}

void sub_21E2AA6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCMTimeGetSecondsSymbolLoc_block_invoke_9849(uint64_t a1)
{
  v2 = CoreMediaLibrary_9850();
  result = dlsym(v2, "CMTimeGetSeconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeGetSecondsSymbolLoc_ptr_9848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreMediaLibrary_9850()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreMediaLibraryCore_frameworkLibrary_9856)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreMediaLibraryCore_block_invoke_9857;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278346B78;
    v6 = 0;
    CoreMediaLibraryCore_frameworkLibrary_9856 = _sl_dlopen();
  }

  v0 = CoreMediaLibraryCore_frameworkLibrary_9856;
  if (!CoreMediaLibraryCore_frameworkLibrary_9856)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreMediaLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAVAssetContentItem.m" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreMediaLibraryCore_block_invoke_9857()
{
  result = _sl_dlopen();
  CoreMediaLibraryCore_frameworkLibrary_9856 = result;
  return result;
}

void *__getkCMTimeZeroSymbolLoc_block_invoke_9862(uint64_t a1)
{
  v2 = CoreMediaLibrary_9850();
  result = dlsym(v2, "kCMTimeZero");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMTimeZeroSymbolLoc_ptr_9861 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMTimeRangeMakeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary_9850();
  result = dlsym(v2, "CMTimeRangeMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeRangeMakeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2AAEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke_9867(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr_9866 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataCommonKeyTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVMetadataCommonKeyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataCommonKeyTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataCommonKeyArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVMetadataCommonKeyArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataCommonKeyArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataCommonKeyAlbumNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVMetadataCommonKeyAlbumName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataCommonKeyAlbumNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2ABE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMetadataCommonKeyArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_9786();
  result = dlsym(v2, "AVMetadataCommonKeyArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataCommonKeyArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2AD450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMSaveRequestClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_10136)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __ReminderKitLibraryCore_block_invoke_10137;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278346BF8;
    v8 = 0;
    ReminderKitLibraryCore_frameworkLibrary_10136 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_10136)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFReminderContentItemChangeTransaction.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("REMSaveRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMSaveRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFReminderContentItemChangeTransaction.m" lineNumber:18 description:{@"Unable to find class %s", "REMSaveRequest"}];

LABEL_10:
    __break(1u);
  }

  getREMSaveRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_10137()
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_10136 = result;
  return result;
}

void WFRegisterClassesFromClassVendingMethodsIfNeeded(void *a1, void *a2, os_unfair_lock_s *a3, atomic_uchar *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_lock(a3);
  v14 = 1;
  atomic_compare_exchange_strong(a4, &v14, 0);
  if (v14 == 1)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __WFRegisterClassesFromClassVendingMethodsIfNeeded_block_invoke;
    v15[3] = &unk_278346C18;
    v16 = v12;
    v18 = a1;
    v17 = v13;
    [a1 wf_enumerateClassMethodsWithPrefix:v11 usingBlock:v15];
  }

  os_unfair_lock_unlock(a3);
}

void __WFRegisterClassesFromClassVendingMethodsIfNeeded_block_invoke(uint64_t a1, objc_method *a2, SEL aSelector)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = NSStringFromSelector(aSelector);
  if (([*(a1 + 32) containsObject:v6] & 1) == 0 && method_getNumberOfArguments(a2) <= 2 && WFMethodReturnsObject(a2))
  {
    [*(a1 + 32) addObject:v6];
    v7 = [*(a1 + 48) aSelector];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if (object_isClass(*(*(&v13 + 1) + 8 * v12)))
            {
              (*(*(a1 + 40) + 16))(*(a1 + 40));
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

void WFCallRegistrationMethodsIfNeeded(void *a1, void *a2, os_unfair_lock_s *a3, atomic_uchar *a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  os_unfair_lock_lock(a3);
  v11 = 1;
  atomic_compare_exchange_strong(a4, &v11, 0);
  if (v11 == 1)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __WFCallRegistrationMethodsIfNeeded_block_invoke;
    v12[3] = &unk_278346C40;
    v13 = v10;
    v14 = a1;
    [a1 wf_enumerateClassMethodsWithPrefix:v9 usingBlock:v12];
  }

  os_unfair_lock_unlock(a3);
}

void __WFCallRegistrationMethodsIfNeeded_block_invoke(uint64_t a1, objc_method *a2, SEL aSelector)
{
  v6 = NSStringFromSelector(aSelector);
  if (([*(a1 + 32) containsObject:?] & 1) == 0 && method_getNumberOfArguments(a2) <= 2)
  {
    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) aSelector];
  }
}

void getMPMediaItemPropertyArtwork()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyArtworkSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyArtworkSymbolLoc_ptr;
  if (!getMPMediaItemPropertyArtworkSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyArtwork");
    getMPMediaItemPropertyArtworkSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyArtwork(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMPMediaContentItem.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2AE660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getMPMediaItemPropertyAlbumTitle()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyAlbumTitle");
    getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyAlbumTitle(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMPMediaContentItem.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2AE7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVURLAssetClass_10395()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVURLAssetClass_softClass_10400;
  v7 = getAVURLAssetClass_softClass_10400;
  if (!getAVURLAssetClass_softClass_10400)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVURLAssetClass_block_invoke_10401;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getAVURLAssetClass_block_invoke_10401(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2AE8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVURLAssetClass_block_invoke_10401(uint64_t a1)
{
  AVFoundationLibrary_10402();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVURLAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVURLAssetClass_softClass_10400 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVURLAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMPMediaContentItem.m" lineNumber:28 description:{@"Unable to find class %s", "AVURLAsset"}];

    __break(1u);
  }
}

void *AVFoundationLibrary_10402()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_10410)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_10411;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278346DA8;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_10410 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_10410;
  if (!AVFoundationLibraryCore_frameworkLibrary_10410)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFMPMediaContentItem.m" lineNumber:27 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke_10411()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_10410 = result;
  return result;
}

void *__getMPMediaItemPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaPlayerLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_10434)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_10435;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278346D90;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_10434 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_10434;
  if (!MediaPlayerLibraryCore_frameworkLibrary_10434)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFMPMediaContentItem.m" lineNumber:32 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_10435()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_10434 = result;
  return result;
}

void *__getMPMediaItemPropertyArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVAssetExportSessionClass_block_invoke_10442(uint64_t a1)
{
  AVFoundationLibrary_10402();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAssetExportSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAssetExportSessionClass_softClass_10441 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAssetExportSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMPMediaContentItem.m" lineNumber:29 description:{@"Unable to find class %s", "AVAssetExportSession"}];

    __break(1u);
  }
}

void *__getAVAssetExportPresetAppleM4ASymbolLoc_block_invoke_10444(uint64_t a1)
{
  v2 = AVFoundationLibrary_10402();
  result = dlsym(v2, "AVAssetExportPresetAppleM4A");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAssetExportPresetAppleM4ASymbolLoc_ptr_10443 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCMTimeZeroSymbolLoc_block_invoke_10448(uint64_t a1)
{
  v2 = CoreMediaLibrary_10449();
  result = dlsym(v2, "kCMTimeZero");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMTimeZeroSymbolLoc_ptr_10447 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreMediaLibrary_10449()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreMediaLibraryCore_frameworkLibrary_10455)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreMediaLibraryCore_block_invoke_10456;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278346DC0;
    v6 = 0;
    CoreMediaLibraryCore_frameworkLibrary_10455 = _sl_dlopen();
  }

  v0 = CoreMediaLibraryCore_frameworkLibrary_10455;
  if (!CoreMediaLibraryCore_frameworkLibrary_10455)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreMediaLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFMPMediaContentItem.m" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCMTimeRangeMakeSymbolLoc_block_invoke_10452(uint64_t a1)
{
  v2 = CoreMediaLibrary_10449();
  result = dlsym(v2, "CMTimeRangeMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeRangeMakeSymbolLoc_ptr_10451 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreMediaLibraryCore_block_invoke_10456()
{
  result = _sl_dlopen();
  CoreMediaLibraryCore_frameworkLibrary_10455 = result;
  return result;
}

void sub_21E2AFB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaItemPropertyAssetURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAssetURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAssetURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2AFCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemClass_block_invoke_10469(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass_10468 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMPMediaContentItem.m" lineNumber:33 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void getMPMediaItemPropertyDiscNumber()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyDiscNumberSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyDiscNumberSymbolLoc_ptr;
  if (!getMPMediaItemPropertyDiscNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyDiscNumber");
    getMPMediaItemPropertyDiscNumberSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyDiscNumber(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMPMediaContentItem.m" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2B058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getMPMediaItemPropertyAlbumTrackNumber()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyAlbumTrackNumber");
    getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyAlbumTrackNumber(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMPMediaContentItem.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2B06F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFInsertSortDescriptorAroundDescriptorMatchingUserInfo(void *a1, void *a2, int a3, unsigned int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = [v9 sortDescriptors];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __WFInsertSortDescriptorAroundDescriptorMatchingUserInfo_block_invoke;
  v20[3] = &unk_278346DE0;
  v13 = v11;
  v21 = v13;
  v14 = [v12 indexOfObjectPassingTest:v20];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
    v16 = [v12 objectAtIndex:v14];
    v17 = [v12 mutableCopy];
    if (a3)
    {
      v18 = [v16 ascending];
    }

    else
    {
      v18 = 1;
    }

    v19 = [WFContentSortDescriptor sortDescriptorWithProperty:v10 ascending:v18 comparator:0];
    [v17 insertObject:v19 atIndex:v15 + a4];
    [v9 setSortDescriptors:v17];
  }
}

void sub_21E2B0A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMPMediaContentItem.m" lineNumber:34 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

uint64_t __WFInsertSortDescriptorAroundDescriptorMatchingUserInfo_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 userInfo];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

void *__getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyComposerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyComposerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyDateAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyDateAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyDateAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyMediaTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyMediaType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyMediaTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyPlaybackDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyPlaybackDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyPlayCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyPlayCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPlayCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyIsExplicitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyIsExplicit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsExplicitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyReleaseDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyReleaseDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyReleaseDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyCommentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyComments");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyCommentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyIsCloudItemSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyIsCloudItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsCloudItemSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertySkipCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertySkipCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertySkipCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyLastPlayedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyLastPlayedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyLastPlayedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyRatingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyRating");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyRatingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2B5714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBKSProcessAssertionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AssertionServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AssertionServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278346E30;
    v8 = 0;
    AssertionServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AssertionServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssertionServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFBKSBackgroundAssertion.m" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("BKSProcessAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBKSProcessAssertionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFBKSBackgroundAssertion.m" lineNumber:16 description:{@"Unable to find class %s", "BKSProcessAssertion"}];

LABEL_10:
    __break(1u);
  }

  getBKSProcessAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRBSProcessHandleClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __RunningBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278346E48;
    v8 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFBKSBackgroundAssertion.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RBSProcessHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRBSProcessHandleClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFBKSBackgroundAssertion.m" lineNumber:17 description:{@"Unable to find class %s", "RBSProcessHandle"}];

LABEL_10:
    __break(1u);
  }

  getRBSProcessHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __AssertionServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssertionServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__11243(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFBackgroundAssertionLogObject()
{
  if (getWFBackgroundAssertionLogObject_onceToken != -1)
  {
    dispatch_once(&getWFBackgroundAssertionLogObject_onceToken, &__block_literal_global_11289);
  }

  v1 = getWFBackgroundAssertionLogObject_log;

  return v1;
}

uint64_t __getWFBackgroundAssertionLogObject_block_invoke()
{
  getWFBackgroundAssertionLogObject_log = os_log_create(*MEMORY[0x277D7A500], "BackgroundAssertion");

  return MEMORY[0x2821F96F8]();
}

void sub_21E2B9028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11415(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFPhotoLibraryFilteringLogObject()
{
  if (getWFPhotoLibraryFilteringLogObject_onceToken != -1)
  {
    dispatch_once(&getWFPhotoLibraryFilteringLogObject_onceToken, &__block_literal_global_11437);
  }

  v1 = getWFPhotoLibraryFilteringLogObject_log;

  return v1;
}

id getPHAssetClass_11424()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetClass_softClass_11425;
  v7 = getPHAssetClass_softClass_11425;
  if (!getPHAssetClass_softClass_11425)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetClass_block_invoke_11426;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getPHAssetClass_block_invoke_11426(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2B940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHAssetClass_block_invoke_11426(uint64_t a1)
{
  PhotosLibrary_11427();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetClass_softClass_11425 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoLibraryFiltering.m" lineNumber:23 description:{@"Unable to find class %s", "PHAsset"}];

    __break(1u);
  }
}

void PhotosLibrary_11427()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary_11431)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PhotosLibraryCore_block_invoke_11432;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783470A8;
    v5 = 0;
    PhotosLibraryCore_frameworkLibrary_11431 = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary_11431)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFPhotoLibraryFiltering.m" lineNumber:21 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosLibraryCore_block_invoke_11432()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_11431 = result;
  return result;
}

uint64_t __getWFPhotoLibraryFilteringLogObject_block_invoke()
{
  getWFPhotoLibraryFilteringLogObject_log = os_log_create(*MEMORY[0x277D7A500], "PhotoLibraryFiltering");

  return MEMORY[0x2821F96F8]();
}

id WFPHAssetPredicateFromContentPredicate(void *a1, void *a2)
{
  v91[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_alloc(MEMORY[0x277CCA920]);
        v11 = [v19 initWithType:1 subpredicates:MEMORY[0x277CBEBF8]];
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_71;
    }

    v12 = v3;
    v13 = [v12 value];
    if (!v13)
    {
      v11 = 0;
LABEL_70:

      goto LABEL_71;
    }

    v14 = [v12 property];
    v15 = [v12 comparisonType];
    v16 = [v14 name];
    v17 = WFLocalizedContentPropertyNameMarkerWithContext(@"Album", @"Image Content Item");
    v18 = [v16 isEqualToString:v17];

    if (v18)
    {
      if ((v15 - 6) < 0xFFFFFFFFFFFFFFFELL)
      {
        v11 = 0;
LABEL_69:

        goto LABEL_70;
      }

      v32 = +[WFPhotoMediaContentItem photoAlbums];
      v25 = [v32 objectMatchingKey:@"wfName" value:v13];

      if (v25)
      {
        v33 = [[WFPHAssetCollectionPredicate alloc] initForAssetsInCollection:v25];
        v34 = v33;
        if (v15 == 5)
        {
          v35 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v33];
        }

        else
        {
          v35 = v33;
        }

        v11 = v35;

        goto LABEL_68;
      }

      v57 = WFLocalizedString(@"Photo Album Not Found");
      v58 = WFLocalizedString(@"The “Find Photos” action couldn’t find the album “%@”.");
      v59 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v58, v13];
      v60 = *MEMORY[0x277CCA450];
      *&v86 = *MEMORY[0x277CCA470];
      *(&v86 + 1) = v60;
      *buf = v57;
      *&buf[8] = v59;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v86 count:2];
      *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPhotoLibraryFilteringErrorDomain" code:0 userInfo:v61];

      v25 = 0;
      goto LABEL_67;
    }

    v20 = [v14 name];
    v21 = WFLocalizedContentPropertyNameMarker(@"Is a Screenshot");
    v22 = [v20 isEqualToString:v21];

    if (v22)
    {
      v23 = +[WFSharedPhotoLibrary sharedLibrary];
      v91[0] = 0;
      v24 = [v23 fetchOptionsWithError:v91];
      v25 = v91[0];

      if (v24)
      {
        [v24 setWantsIncrementalChangeDetails:0];
        *&v86 = 0;
        *(&v86 + 1) = &v86;
        *&v87 = 0x2050000000;
        v26 = getPHAssetCollectionClass_softClass_11473;
        *(&v87 + 1) = getPHAssetCollectionClass_softClass_11473;
        if (!getPHAssetCollectionClass_softClass_11473)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getPHAssetCollectionClass_block_invoke_11474;
          v84 = &unk_27834A178;
          v85 = &v86;
          __getPHAssetCollectionClass_block_invoke_11474(buf);
          v26 = *(*(&v86 + 1) + 24);
        }

        v27 = v26;
        _Block_object_dispose(&v86, 8);
        v28 = [v26 fetchAssetCollectionsWithType:2 subtype:211 options:v24];
        v29 = [v28 firstObject];

        if (v29)
        {
          v30 = [[WFPHAssetCollectionPredicate alloc] initForAssetsInCollection:v29];
          if (v15 == 5)
          {
            if (([v13 BOOLValue] & 1) == 0)
            {
LABEL_30:
              v31 = v30;
LABEL_54:
              v11 = v31;
LABEL_56:

              goto LABEL_57;
            }
          }

          else
          {
            if (v15 != 4)
            {
              v11 = 0;
              goto LABEL_56;
            }

            if ([v13 BOOLValue])
            {
              goto LABEL_30;
            }
          }

          v31 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v30];
          goto LABEL_54;
        }
      }

      else
      {
        v29 = getWFGeneralLogObject();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "WFPHAssetPredicateFromContentComparisonPredicate";
          *&buf[12] = 2112;
          *&buf[14] = v25;
          _os_log_impl(&dword_21E1BD000, v29, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for photo library: %@", buf, 0x16u);
        }
      }

      v11 = 0;
LABEL_57:

      goto LABEL_68;
    }

    v36 = [v14 name];
    v37 = WFLocalizedContentPropertyNameMarker(@"Photo Type");
    v38 = [v36 isEqualToString:v37];

    if (v38)
    {
      v39 = WFLocalizedContentPropertyPossibleValueMarker(@"HDR");
      v90[0] = v39;
      v91[0] = &unk_282F7A210;
      v40 = WFLocalizedContentPropertyPossibleValueMarker(@"Panorama");
      v90[1] = v40;
      v91[1] = &unk_282F7A228;
      v41 = WFLocalizedContentPropertyPossibleValueMarker(@"Live Photo");
      v90[2] = v41;
      v91[2] = &unk_282F7A240;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];

      v82 = [v25 objectForKey:v13];
      if (v82)
      {
        v81 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"mediaSubtype"];
        v42 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v82];
        v43 = MEMORY[0x277CCA918];
        v44 = MEMORY[0x277CCA9C0];
        *buf = v81;
        *&buf[8] = v42;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:2];
        v46 = [v44 expressionForFunction:@"bitwiseAnd:with:" arguments:v45];
        v11 = [v43 predicateWithLeftExpression:v46 rightExpression:v42 modifier:0 type:v15 options:0];

LABEL_51:
LABEL_68:

        goto LABEL_69;
      }

      v62 = WFLocalizedContentPropertyPossibleValueMarker(@"Burst");
      v63 = [v13 isEqual:v62];

      if (v63)
      {
        if (v15 == 4)
        {
          v64 = 5;
        }

        else
        {
          v64 = 4;
        }

        v65 = MEMORY[0x277CCA918];
        v81 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"burstIdentifier"];
        v42 = [MEMORY[0x277CCA9C0] expressionForConstantValue:0];
        v11 = [v65 predicateWithLeftExpression:v81 rightExpression:v42 modifier:0 type:v64 options:0];
        goto LABEL_51;
      }
    }

    else
    {
      v47 = [v14 name];
      v48 = WFLocalizedContentPropertyNameMarker(@"Is a Screen Recording");
      v49 = [v47 isEqualToString:v48];

      if (v49)
      {
        v25 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"mediaSubtype"];
        v50 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&unk_282F7A258];
        v51 = MEMORY[0x277CCA918];
        v52 = MEMORY[0x277CCA9C0];
        *buf = v25;
        *&buf[8] = v50;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:2];
        v54 = [v52 expressionForFunction:@"bitwiseAnd:with:" arguments:v53];
        v55 = [v51 predicateWithLeftExpression:v54 rightExpression:v50 modifier:0 type:v15 options:0];

        if ([v13 BOOLValue])
        {
          v56 = v55;
        }

        else
        {
          v56 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v55];
        }

        v11 = v56;

        goto LABEL_68;
      }
    }

    v25 = WFPHAssetKeyPathForContentProperty(v14);
    if (v25)
    {
      v66 = [v14 name];
      v67 = WFLocalizedContentPropertyNameMarker(@"Media Type");
      v68 = [v66 isEqualToString:v67];

      if (v68)
      {
        v69 = v13;
        v70 = WFLocalizedContentPropertyPossibleValueMarker(@"Image");
        *&v86 = v70;
        *buf = &unk_282F7A288;
        v71 = WFLocalizedContentPropertyPossibleValueMarker(@"Video");
        *(&v86 + 1) = v71;
        *&buf[8] = &unk_282F7A2A0;
        v72 = WFLocalizedContentPropertyPossibleValueMarker(@"Audio");
        *&v87 = v72;
        *&buf[16] = &unk_282F7A2B8;
        v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v86 count:3];

        v74 = [v73 objectForKey:v69];

        v75 = &unk_282F7A270;
        if (v74)
        {
          v75 = v74;
        }

        v13 = v75;
      }

      v76 = MEMORY[0x277CCA918];
      v77 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v25];
      v78 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v13];
      v79 = [v12 property];
      v11 = [v76 predicateWithLeftExpression:v77 rightExpression:v78 modifier:0 type:v15 options:{objc_msgSend(v79, "caseInsensitive")}];

      goto LABEL_68;
    }

LABEL_67:
    v11 = 0;
    goto LABEL_68;
  }

  v4 = v3;
  v5 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v6 = [v4 subpredicates];
  v7 = [v6 countByEnumeratingWithState:&v86 objects:buf count:16];
  if (v7)
  {
    v8 = *v87;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v87 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = WFPHAssetPredicateFromContentPredicate(*(*(&v86 + 1) + 8 * i), a2);
        if (!v10)
        {

          v11 = 0;
          goto LABEL_17;
        }

        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v86 objects:buf count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v4 subpredicates:{"compoundPredicateType"), v5}];
LABEL_17:

LABEL_71:

  return v11;
}

id WFPHAssetKeyPathForContentProperty(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 name];
  v3 = WFLocalizedContentPropertyNameMarker(@"Width");
  v15 = v3;
  v21 = @"pixelWidth";
  v4 = WFLocalizedContentPropertyNameMarker(@"Height");
  v16 = v4;
  v22 = @"pixelHeight";
  v5 = WFLocalizedContentPropertyNameMarker(@"Date Taken");
  v17 = v5;
  v23 = @"creationDate";
  v6 = WFLocalizedContentPropertyNameMarker(@"Time Taken");
  v18 = v6;
  v24 = @"creationDate";
  v7 = WFLocalizedContentPropertyNameMarker(@"Is Favorite");
  v19 = v7;
  v25 = @"isFavorite";
  v8 = WFLocalizedContentPropertyNameMarker(@"Media Type");
  v20 = v8;
  v26 = @"mediaType";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v15 count:6];

  v10 = [v9 objectForKey:v2];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v15 = @"WFFileModificationDate";
    v16 = @"WFFileCreationDate";
    v21 = @"modificationDate";
    v22 = @"creationDate";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v15 count:2];
    v13 = [v1 userInfo];
    v11 = [v12 objectForKey:v13];
  }

  return v11;
}

void __getPHAssetCollectionClass_block_invoke_11474(uint64_t a1)
{
  PhotosLibrary_11427();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetCollectionClass_softClass_11473 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPhotoLibraryFiltering.m" lineNumber:24 description:{@"Unable to find class %s", "PHAssetCollection"}];

    __break(1u);
  }
}

void *__getCNLabelContactRelationMotherSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationMother");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationMotherSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary_11559()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_11589)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_11590;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783472D8;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_11589 = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary_11589;
  if (!ContactsLibraryCore_frameworkLibrary_11589)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void * _Nonnull ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCNLabelContactRelationFatherSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationFather");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationFatherSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationParentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationParent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationParentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationBrotherSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationBrother");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationBrotherSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationSisterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationSister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationSisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationSonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationSon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationSonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationDaughterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationDaughter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationDaughterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationChildSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationChild");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationChildSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationFriendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationFriend");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationFriendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationSpouseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationSpouse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationSpouseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationPartnerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationPartner");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationPartnerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationAssistantSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationAssistant");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationAssistantSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelContactRelationManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNLabelContactRelationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNLabeledValueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLabeledValueClass_softClass_11579;
  v7 = getCNLabeledValueClass_softClass_11579;
  if (!getCNLabeledValueClass_softClass_11579)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNLabeledValueClass_block_invoke_11580;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNLabeledValueClass_block_invoke_11580(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2BCD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNLabeledValueClass_block_invoke_11580(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNLabeledValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLabeledValueClass_softClass_11579 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNLabeledValueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:28 description:{@"Unable to find class %s", "CNLabeledValue"}];

    __break(1u);
  }
}

uint64_t __ContactsLibraryCore_block_invoke_11590()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_11589 = result;
  return result;
}

void sub_21E2BD1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFCNContactAuthorizationStatus()
{
  v0 = [MEMORY[0x277D79F18] currentDevice];
  v1 = [v0 isChineseRegionDevice];

  if (!v1)
  {
    return 3;
  }

  if (VCIsInternalBuild() && (WFCNContactSystemShortcutsUserDefaults(), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 BOOLForKey:*MEMORY[0x277D7A438]], v2, v3))
  {
    v4 = WFCNContactSystemShortcutsUserDefaults();
    v5 = [v4 integerForKey:*MEMORY[0x277D7A430]];

    return v5;
  }

  else
  {
    CNContactStoreClass = getCNContactStoreClass();

    return [CNContactStoreClass authorizationStatusForEntityType:0];
  }
}

id getCNContactClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactClass_softClass;
  v7 = getCNContactClass_softClass;
  if (!getCNContactClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNContactClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNContactClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2BD398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactRelationsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactRelationsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactRelationsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactFormatterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactFormatterClass_softClass;
  v7 = getCNContactFormatterClass_softClass;
  if (!getCNContactFormatterClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNContactFormatterClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNContactFormatterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2BDB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNContactFormatterClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactFormatter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNContactFormatterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:23 description:{@"Unable to find class %s", "CNContactFormatter"}];

    __break(1u);
  }
}

void sub_21E2BDF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactStoreClass_softClass;
  v7 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNContactStoreClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNContactStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2BE074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNContainerClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContainer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContainerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNContainerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:30 description:{@"Unable to find class %s", "CNContainer"}];

    __break(1u);
  }
}

void __getCNAccountClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNAccount");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNAccountClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:29 description:{@"Unable to find class %s", "CNAccount"}];

    __break(1u);
  }
}

void __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNContactStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:24 description:{@"Unable to find class %s", "CNContactStore"}];

    __break(1u);
  }
}

void sub_21E2BFA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactBirthdayKeySymbolLoc_block_invoke_11693(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactBirthdayKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactBirthdayKeySymbolLoc_ptr_11692 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getCNContactEmailAddressesKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNContactEmailAddressesKeySymbolLoc_ptr_11708;
  v9 = getCNContactEmailAddressesKeySymbolLoc_ptr_11708;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_11708)
  {
    v1 = ContactsLibrary_11559();
    v7[3] = dlsym(v1, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_11708 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactEmailAddressesKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFCNContact.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C0400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNContactPhoneNumbersKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNContactPhoneNumbersKeySymbolLoc_ptr_11704;
  v9 = getCNContactPhoneNumbersKeySymbolLoc_ptr_11704;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_11704)
  {
    v1 = ContactsLibrary_11559();
    v7[3] = dlsym(v1, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_11704 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNContactPhoneNumbersKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFCNContact.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C0564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke_11705(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr_11704 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke_11709(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr_11708 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2C0B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactVCardSerializationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactVCardSerializationClass_softClass;
  v7 = getCNContactVCardSerializationClass_softClass;
  if (!getCNContactVCardSerializationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNContactVCardSerializationClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNContactVCardSerializationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2C0C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNVCardWritingOptionsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!vCardLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __vCardLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783472F0;
    v8 = 0;
    vCardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!vCardLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void * _Nonnull vCardLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFCNContact.m" lineNumber:62 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNVCardWritingOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNVCardWritingOptionsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFCNContact.m" lineNumber:63 description:{@"Unable to find class %s", "CNVCardWritingOptions"}];

LABEL_10:
    __break(1u);
  }

  getCNVCardWritingOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __vCardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  vCardLibraryCore_frameworkLibrary = result;
  return result;
}

void __getCNContactVCardSerializationClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactVCardSerialization");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactVCardSerializationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNContactVCardSerializationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:22 description:{@"Unable to find class %s", "CNContactVCardSerialization"}];

    __break(1u);
  }
}

void sub_21E2C1364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11717(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCNContactFetchRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactFetchRequestClass_softClass;
  v7 = getCNContactFetchRequestClass_softClass;
  if (!getCNContactFetchRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNContactFetchRequestClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNContactFetchRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2C1540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNContactFetchRequestClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactFetchRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNContactFetchRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:26 description:{@"Unable to find class %s", "CNContactFetchRequest"}];

    __break(1u);
  }
}

void getCNContactStoreDidChangeNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  v9 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  if (!getCNContactStoreDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = ContactsLibrary_11559();
    v7[3] = dlsym(v1, "CNContactStoreDidChangeNotification");
    getCNContactStoreDidChangeNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNotificationName  _Nonnull getCNContactStoreDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFCNContact.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C1F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactStoreDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactStoreDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactStoreDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2C2B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactImageDataAvailableKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactImageDataAvailableKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactImageDataAvailableKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactImageDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactImageDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactImageDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactThumbnailImageDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactThumbnailImageDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactThumbnailImageDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactModificationDateKeySymbolLoc_block_invoke_11758(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactModificationDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactModificationDateKeySymbolLoc_ptr_11757 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactCreationDateKeySymbolLoc_block_invoke_11761(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactCreationDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactCreationDateKeySymbolLoc_ptr_11760 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNicknameKeySymbolLoc_block_invoke_11764(uint64_t a1)
{
  v2 = ContactsLibrary_11559();
  result = dlsym(v2, "CNContactNicknameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNicknameKeySymbolLoc_ptr_11763 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCNContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNContactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:25 description:{@"Unable to find class %s", "CNContact"}];

    __break(1u);
  }
}

id WFCNContactSystemShortcutsUserDefaults()
{
  if (WFCNContactSystemShortcutsUserDefaults_onceToken != -1)
  {
    dispatch_once(&WFCNContactSystemShortcutsUserDefaults_onceToken, &__block_literal_global_11769);
  }

  v1 = WFCNContactSystemShortcutsUserDefaults_systemShortcutsUserDefaults;

  return v1;
}

uint64_t __WFCNContactSystemShortcutsUserDefaults_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  WFCNContactSystemShortcutsUserDefaults_systemShortcutsUserDefaults = [v0 initWithSuiteName:*MEMORY[0x277D7A348]];

  return MEMORY[0x2821F96F8]();
}

void sub_21E2C2FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNSaveRequestClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNSaveRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNSaveRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNSaveRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:27 description:{@"Unable to find class %s", "CNSaveRequest"}];

    __break(1u);
  }
}

void __getCNPhoneNumberClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11559();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPhoneNumberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNPhoneNumberClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCNContact.m" lineNumber:31 description:{@"Unable to find class %s", "CNPhoneNumber"}];

    __break(1u);
  }
}

void INPersonHandleLabelForContactLabel(void *a1)
{
  v1 = a1;
  v2 = getCNLabelHome();
  v3 = [v1 isEqualToString:v2];

  if (v3)
  {
    v4 = MEMORY[0x277CD3870];
    goto LABEL_12;
  }

  v5 = getCNLabelWork();
  v6 = [v1 isEqualToString:v5];

  if (v6)
  {
    v4 = MEMORY[0x277CD38A8];
    goto LABEL_12;
  }

  v7 = getCNLabelOther();
  if ([v1 isEqualToString:v7])
  {

LABEL_11:
    v4 = MEMORY[0x277CD3890];
    goto LABEL_12;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v8 = getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr_11833;
  v31 = getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr_11833;
  if (!getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr_11833)
  {
    v9 = ContactsLibrary_11835();
    v29[3] = dlsym(v9, "CNLabelPhoneNumberOtherFax");
    getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr_11833 = v29[3];
    v8 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v8)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberOtherFax(void)"];
    [v26 handleFailureInFunction:v27 file:@"WFContact+INPerson.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
    return;
  }

  v10 = [v1 isEqualToString:*v8];

  if (v10)
  {
    goto LABEL_11;
  }

  v14 = getCNLabelPhoneNumberiPhone();
  v15 = [v1 isEqualToString:v14];

  if (v15)
  {
    v4 = MEMORY[0x277CD38B8];
    goto LABEL_12;
  }

  v16 = getCNLabelPhoneNumberMobile();
  if ([v1 isEqualToString:v16])
  {

LABEL_21:
    v4 = MEMORY[0x277CD3888];
    goto LABEL_12;
  }

  v17 = [v1 localizedCaseInsensitiveContainsString:@"mobile"];

  if (v17)
  {
    goto LABEL_21;
  }

  v18 = getCNLabelPhoneNumberMain();
  v19 = [v1 isEqualToString:v18];

  if (v19)
  {
    v4 = MEMORY[0x277CD3880];
  }

  else
  {
    v20 = getCNLabelPhoneNumberHomeFax();
    v21 = [v1 isEqualToString:v20];

    if (v21)
    {
      v4 = MEMORY[0x277CD3878];
    }

    else
    {
      v22 = getCNLabelPhoneNumberWorkFax();
      v23 = [v1 isEqualToString:v22];

      if (v23)
      {
        v4 = MEMORY[0x277CD38B0];
      }

      else
      {
        v24 = getCNLabelPhoneNumberPager();
        v25 = [v1 isEqualToString:v24];

        if (!v25)
        {
          v11 = [WFContactLabeledValue localizedStringForLabel:v1];
          goto LABEL_13;
        }

        v4 = MEMORY[0x277CD3898];
      }
    }
  }

LABEL_12:
  v11 = *v4;
LABEL_13:
  v12 = v11;

  v13 = v12;
}

void sub_21E2C4EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelHome()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelHomeSymbolLoc_ptr_11884;
  v9 = getCNLabelHomeSymbolLoc_ptr_11884;
  if (!getCNLabelHomeSymbolLoc_ptr_11884)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelHome");
    getCNLabelHomeSymbolLoc_ptr_11884 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelHome(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C5048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelWork()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelWorkSymbolLoc_ptr_11880;
  v9 = getCNLabelWorkSymbolLoc_ptr_11880;
  if (!getCNLabelWorkSymbolLoc_ptr_11880)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelWork");
    getCNLabelWorkSymbolLoc_ptr_11880 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelWork(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C51AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelOther()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelOtherSymbolLoc_ptr_11876;
  v9 = getCNLabelOtherSymbolLoc_ptr_11876;
  if (!getCNLabelOtherSymbolLoc_ptr_11876)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelOther");
    getCNLabelOtherSymbolLoc_ptr_11876 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelOther(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C5310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelPhoneNumberOtherFaxSymbolLoc_block_invoke_11834(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelPhoneNumberOtherFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberOtherFaxSymbolLoc_ptr_11833 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary_11835()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_11871)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_11872;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278347308;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_11871 = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary_11871;
  if (!ContactsLibraryCore_frameworkLibrary_11871)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFContact+INPerson.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void getCNLabelPhoneNumberiPhone()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr_11863;
  v9 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr_11863;
  if (!getCNLabelPhoneNumberiPhoneSymbolLoc_ptr_11863)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelPhoneNumberiPhone");
    getCNLabelPhoneNumberiPhoneSymbolLoc_ptr_11863 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberiPhone(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C5618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelPhoneNumberMobile()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelPhoneNumberMobileSymbolLoc_ptr_11859;
  v9 = getCNLabelPhoneNumberMobileSymbolLoc_ptr_11859;
  if (!getCNLabelPhoneNumberMobileSymbolLoc_ptr_11859)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelPhoneNumberMobile");
    getCNLabelPhoneNumberMobileSymbolLoc_ptr_11859 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberMobile(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelPhoneNumberMain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelPhoneNumberMainSymbolLoc_ptr_11853;
  v9 = getCNLabelPhoneNumberMainSymbolLoc_ptr_11853;
  if (!getCNLabelPhoneNumberMainSymbolLoc_ptr_11853)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelPhoneNumberMain");
    getCNLabelPhoneNumberMainSymbolLoc_ptr_11853 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberMain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C58E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelPhoneNumberHomeFax()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr_11849;
  v9 = getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr_11849;
  if (!getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr_11849)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelPhoneNumberHomeFax");
    getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr_11849 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberHomeFax(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:28 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C5A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelPhoneNumberWorkFax()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr_11845;
  v9 = getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr_11845;
  if (!getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr_11845)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelPhoneNumberWorkFax");
    getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr_11845 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberWorkFax(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C5BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCNLabelPhoneNumberPager()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCNLabelPhoneNumberPagerSymbolLoc_ptr_11841;
  v9 = getCNLabelPhoneNumberPagerSymbolLoc_ptr_11841;
  if (!getCNLabelPhoneNumberPagerSymbolLoc_ptr_11841)
  {
    v1 = ContactsLibrary_11835();
    v7[3] = dlsym(v1, "CNLabelPhoneNumberPager");
    getCNLabelPhoneNumberPagerSymbolLoc_ptr_11841 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNLabelPhoneNumberPager(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContact+INPerson.m" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2C5D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelPhoneNumberPagerSymbolLoc_block_invoke_11842(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelPhoneNumberPager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberPagerSymbolLoc_ptr_11841 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberWorkFaxSymbolLoc_block_invoke_11846(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelPhoneNumberWorkFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr_11845 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberHomeFaxSymbolLoc_block_invoke_11850(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelPhoneNumberHomeFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr_11849 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberMainSymbolLoc_block_invoke_11854(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelPhoneNumberMain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMainSymbolLoc_ptr_11853 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberMobileSymbolLoc_block_invoke_11860(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelPhoneNumberMobile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMobileSymbolLoc_ptr_11859 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberiPhoneSymbolLoc_block_invoke_11864(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelPhoneNumberiPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberiPhoneSymbolLoc_ptr_11863 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_11872()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_11871 = result;
  return result;
}

void *__getCNLabelOtherSymbolLoc_block_invoke_11877(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelOther");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelOtherSymbolLoc_ptr_11876 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelWorkSymbolLoc_block_invoke_11881(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelWork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelWorkSymbolLoc_ptr_11880 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelHomeSymbolLoc_block_invoke_11885(uint64_t a1)
{
  v2 = ContactsLibrary_11835();
  result = dlsym(v2, "CNLabelHome");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelHomeSymbolLoc_ptr_11884 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2C67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNMutableContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_11835();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNMutableContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNMutableContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNMutableContactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContact+INPerson.m" lineNumber:18 description:{@"Unable to find class %s", "CNMutableContact"}];

    __break(1u);
  }
}

id getCNLabeledValueClass_11888()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLabeledValueClass_softClass_11897;
  v7 = getCNLabeledValueClass_softClass_11897;
  if (!getCNLabeledValueClass_softClass_11897)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNLabeledValueClass_block_invoke_11898;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNLabeledValueClass_block_invoke_11898(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2C6984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNPhoneNumberClass_block_invoke_11890(uint64_t a1)
{
  ContactsLibrary_11835();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPhoneNumberClass_softClass_11889 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNPhoneNumberClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContact+INPerson.m" lineNumber:19 description:{@"Unable to find class %s", "CNPhoneNumber"}];

    __break(1u);
  }
}

void __getCNLabeledValueClass_block_invoke_11898(uint64_t a1)
{
  ContactsLibrary_11835();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNLabeledValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLabeledValueClass_softClass_11897 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContact+INPerson.m" lineNumber:20 description:{@"Unable to find class %s", "CNLabeledValue"}];

    __break(1u);
  }
}

id getWFPageRendererClass()
{
  if (getWFPageRendererClass_onceToken != -1)
  {
    dispatch_once(&getWFPageRendererClass_onceToken, &__block_literal_global_77);
  }

  v1 = getWFPageRendererClass_dynamicSubclass;

  return v1;
}

void __getWFPageRendererClass_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  UIPrintPageRendererClass = getUIPrintPageRendererClass();
  getWFPageRendererClass_dynamicSubclass = objc_allocateClassPair(UIPrintPageRendererClass, "_WFPageRenderer", 0);
  class_addIvar(getWFPageRendererClass_dynamicSubclass, "_wf_inputSize", 8uLL, 3u, "@");
  class_addIvar(getWFPageRendererClass_dynamicSubclass, "_wf_margin", 8uLL, 3u, "@");
  snprintf(__str, 0x200uLL, "%s@:", "{CGRect={CGPoint=dd}{CGSize=dd}}");
  class_addMethod(getWFPageRendererClass_dynamicSubclass, sel_paperRect, WFGetPaperRect, __str);
  class_addMethod(getWFPageRendererClass_dynamicSubclass, sel_printableRect, WFGetPrintableRect, __str);
  objc_registerClassPair(getWFPageRendererClass_dynamicSubclass);
}

double WFGetPrintableRect(void *a1)
{
  v1 = a1;
  WFPageRendererClass = getWFPageRendererClass();
  InstanceVariable = class_getInstanceVariable(WFPageRendererClass, "_wf_margin");
  v4 = object_getIvar(v1, InstanceVariable);
  [v4 floatValue];
  v6 = v5;
  [v1 paperRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  *&v15 = CGRectInset(v17, v6, v6);

  return v15;
}

double WFGetPaperRect(void *a1)
{
  v1 = a1;
  WFPageRendererClass = getWFPageRendererClass();
  InstanceVariable = class_getInstanceVariable(WFPageRendererClass, "_wf_inputSize");
  v4 = object_getIvar(v1, InstanceVariable);

  [v4 CGSizeValue];
  return 0.0;
}

Class initUIPrintPageRenderer()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = objc_getClass("UIPrintPageRenderer");
  classUIPrintPageRenderer = result;
  getUIPrintPageRendererClass = UIPrintPageRendererFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_11966()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_11968 = result;
  return result;
}

uint64_t (*initUIGraphicsEndImageContext())()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsEndImageContext");
  softLinkUIGraphicsEndImageContext = result;
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t (*initUIGraphicsGetImageFromCurrentImageContext())()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  v0 = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsGetImageFromCurrentImageContext");
  softLinkUIGraphicsGetImageFromCurrentImageContext = v0;
  if (v0)
  {
    v0 = v0();
  }

  return v0;
}

uint64_t (*initUIGraphicsBeginImageContextWithOptions(uint64_t a1, double a2, double a3, double a4))()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsBeginImageContextWithOptions");
  softLinkUIGraphicsBeginImageContextWithOptions = result;
  if (result)
  {
    v9.n128_f64[0] = a2;
    v10.n128_f64[0] = a3;
    v11.n128_f64[0] = a4;

    return (result)(a1, v9, v10, v11);
  }

  return result;
}

Class __getWKWebViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary_11978)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __WebKitLibraryCore_block_invoke_11979;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278347408;
    v8 = 0;
    WebKitLibraryCore_frameworkLibrary_11978 = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary_11978)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFPageRenderer.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFPageRenderer.m" lineNumber:27 description:{@"Unable to find class %s", "WKWebView"}];

LABEL_10:
    __break(1u);
  }

  getWKWebViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t (*initUIGraphicsGetCurrentContext())()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsGetCurrentContext");
  softLinkUIGraphicsGetCurrentContext = result;
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t __WebKitLibraryCore_block_invoke_11979()
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary_11978 = result;
  return result;
}

Class initUIViewPrintFormatter()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = objc_getClass("UIViewPrintFormatter");
  classUIViewPrintFormatter = result;
  getUIViewPrintFormatterClass = UIViewPrintFormatterFunction;
  return result;
}

uint64_t (*initUIGraphicsPopContext())()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsPopContext");
  softLinkUIGraphicsPopContext = result;
  if (result)
  {

    return result();
  }

  return result;
}

Class initUITraitCollection()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = objc_getClass("UITraitCollection");
  classUITraitCollection = result;
  getUITraitCollectionClass = UITraitCollectionFunction;
  return result;
}

uint64_t (*initUIGraphicsPushContext(uint64_t a1))()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsPushContext");
  softLinkUIGraphicsPushContext = result;
  if (result)
  {

    return (result)(a1);
  }

  return result;
}

void initUIGraphicsBeginPDFPageWithInfo(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = a1;
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  v9 = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsBeginPDFPageWithInfo");
  softLinkUIGraphicsBeginPDFPageWithInfo = v9;
  v10 = v11;
  if (v9)
  {
    (v9)(v11, a2, a3, a4, a5);
    v10 = v11;
  }
}

uint64_t (*initUIGraphicsEndPDFContext())()
{
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  result = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsEndPDFContext");
  softLinkUIGraphicsEndPDFContext = result;
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t initUIGraphicsBeginPDFContextToFile(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  if (UIKitLibrary_sOnce_11961 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11961, &__block_literal_global_53_11962);
  }

  v13 = dlsym(UIKitLibrary_sLib_11968, "UIGraphicsBeginPDFContextToFile");
  softLinkUIGraphicsBeginPDFContextToFile = v13;
  if (v13)
  {
    v14 = (v13)(v11, v12, a3, a4, a5, a6);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id getWKWebViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWKWebViewClass_softClass_12239;
  v7 = getWKWebViewClass_softClass_12239;
  if (!getWKWebViewClass_softClass_12239)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getWKWebViewClass_block_invoke_12240;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getWKWebViewClass_block_invoke_12240(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2CA350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __WFGetPasteboardRepresentationFromWKWebView_block_invoke(uint64_t a1)
{
  v2 = [(objc_class *)getUIPasteboardClass() generalPasteboard];
  v3 = [v2 items];
  [v2 setItems:MEMORY[0x277CBEBF8]];
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __WFGetPasteboardRepresentationFromWKWebView_block_invoke_2;
  v7[3] = &unk_278347508;
  v8 = v4;
  v9 = v2;
  v10 = *(a1 + 40);
  v11 = v3;
  v12 = *(a1 + 48);
  v5 = v3;
  v6 = v2;
  [v8 _executeEditCommand:@"copy" argument:0 completion:v7];
}

void __WFGetPasteboardRepresentationFromWKWebView_block_invoke_2(uint64_t a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __WFGetPasteboardRepresentationFromWKWebView_block_invoke_3;
  v9[3] = &unk_2783474E0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 _doAfterNextPresentationUpdateWithoutWaitingForPainting:v9];
}

void __WFGetPasteboardRepresentationFromWKWebView_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) string];
  v6 = [v2 dataForPasteboardType:v3 inItemSet:0];

  [*(a1 + 32) setItems:*(a1 + 48)];
  v4 = *(a1 + 56);
  v5 = [v6 firstObject];
  (*(v4 + 16))(v4, v5);
}

Class initUIPasteboard()
{
  if (UIKitLibrary_sOnce_12226 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_12226, &__block_literal_global_12227);
  }

  result = objc_getClass("UIPasteboard");
  classUIPasteboard = result;
  getUIPasteboardClass = UIPasteboardFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_12231()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_12233 = result;
  return result;
}

Class __getWKWebViewClass_block_invoke_12240(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary_12241)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __WebKitLibraryCore_block_invoke_12242;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783474C0;
    v8 = 0;
    WebKitLibraryCore_frameworkLibrary_12241 = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary_12241)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWebResourceCapturer.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFWebResourceCapturer.m" lineNumber:24 description:{@"Unable to find class %s", "WKWebView"}];

LABEL_10:
    __break(1u);
  }

  getWKWebViewClass_softClass_12239 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebKitLibraryCore_block_invoke_12242()
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary_12241 = result;
  return result;
}

uint64_t file_checkfield(uint64_t result, const char *a2, unsigned __int8 **a3)
{
  v3 = *a3;
  v4 = **a3;
  if ((v4 - 48) > 9)
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = 10 * v5 + v4;
    v7 = *++v3;
    LOBYTE(v4) = v7;
    v5 = v6 - 48;
  }

  while ((v7 - 48) < 0xA);
  *a3 = v3;
  if (v5 < 1024)
  {
    return 1;
  }

  if (result)
  {
    snprintf(result, 0x400uLL, "field %s too large: %d", a2, v5);
    return 0;
  }

  return result;
}

uint64_t file_vprintf(uint64_t a1, char *a2, va_list a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72))
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  v6 = MEMORY[0x277D85DE0];
  for (i = a2; ; ++i)
  {
    v29 = i;
    if (*i != 37)
    {
      break;
    }

    v8 = i + 1;
    v29 = i + 1;
    v9 = *++i;
    if (v9 != 37)
    {
      while (memchr("0.'+- ", v9, 7uLL))
      {
        v10 = *++v8;
        LOBYTE(v9) = v10;
      }

      v29 = v8;
      if (v9 == 42)
      {
        strcpy(__str, "* not allowed in format");
        goto LABEL_25;
      }

      if (!file_checkfield(__str, "width", &v29))
      {
        goto LABEL_25;
      }

      i = v29;
      v11 = *v29;
      if (v11 == 46)
      {
        ++v29;
        if (!file_checkfield(__str, "precision", &v29))
        {
          goto LABEL_25;
        }

        i = v29;
        v11 = *v29;
      }

      if ((v11 & 0x80) != 0)
      {
        if (!__maskrune(v11, 0x100uLL))
        {
LABEL_24:
          snprintf(__str, 0x400uLL, "bad format char: %c", v11);
LABEL_25:
          free(*(a1 + 32));
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          v26 = a2;
LABEL_26:
          v21 = a1;
          v22 = 0;
LABEL_27:
          file_error(v21, v22, v20, v15, v16, v17, v18, v19, v26);
          return 0xFFFFFFFFLL;
        }
      }

      else if ((*(v6 + 4 * v11 + 60) & 0x100) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_18:
    ;
  }

  if (*i)
  {
    goto LABEL_18;
  }

  v13 = vasprintf(&v28, a2, a3);
  v14 = v13;
  if (v13 >= 0x401 || *(a1 + 40) + v13 > 0x100000)
  {
    free(v28);
    free(*(a1 + 32));
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v26 = v14;
    v20 = "Output buffer space exceeded %d+%zu";
    goto LABEL_26;
  }

  v23 = v28;
  if (*(a1 + 32))
  {
    v24 = asprintf(&v27, "%s%s", *(a1 + 32), v28);
    free(v23);
    free(*(a1 + 32));
    if ((v24 & 0x80000000) != 0)
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v22 = *__error();
      v20 = "vasprintf failed";
      v21 = a1;
      goto LABEL_27;
    }

    v23 = v27;
    v25 = v24;
  }

  else
  {
    v25 = v13;
  }

  result = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  return result;
}

uint64_t file_error_core(uint64_t result, int a2, char *a3, va_list a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(result + 72) & 1) == 0)
  {
    v8 = a5;
    v12 = result;
    if (a5)
    {
      free(*(result + 32));
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      file_printf(v12, "line %zu:", v13, v14, v15, v16, v17, v18, v8);
    }

    v19 = *(v12 + 32);
    if (v19 && *v19)
    {
      file_printf(v12, " ", a3, a4, a5, a6, a7, a8, v27);
    }

    result = file_vprintf(v12, a3, a4);
    if (a2 >= 1)
    {
      v20 = strerror(a2);
      result = file_printf(v12, " (%s)", v21, v22, v23, v24, v25, v26, v20);
    }

    *(v12 + 72) |= 1u;
    *(v12 + 64) = a2;
  }

  return result;
}

uint64_t file_badseek(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *__error();

  return file_error(a1, v10, "error seeking", v11, v12, v13, v14, v15, a9);
}

uint64_t file_badread(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *__error();

  return file_error(a1, v10, "error reading", v11, v12, v13, v14, v15, a9);
}

uint64_t file_buffer(uint64_t a1, int a2, __int128 *a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v356 = *MEMORY[0x277D85DE8];
  v336 = "binary";
  v337 = 0;
  v335 = 0;
  v333 = 0u;
  *v334 = 0u;
  memset(v332, 0, sizeof(v332));
  LODWORD(v332[0]) = a2;
  if (a3)
  {
    v12 = a3[4];
    *&v332[11] = a3[5];
    v13 = a3[7];
    *&v332[13] = a3[6];
    *&v332[15] = v13;
    *&v332[17] = a3[8];
    v14 = *a3;
    *&v332[3] = a3[1];
    v15 = a3[3];
    *&v332[5] = a3[2];
    *&v332[7] = v15;
    *&v332[9] = v12;
    *&v332[1] = v14;
  }

  else if (a2 == -1 || fstat(a2, &v332[1]) == -1)
  {
    memset(&v332[1], 0, 144);
  }

  v332[19] = a4;
  v333 = a5;
  v334[0] = 0;
  v334[1] = 0;
  *(a1 + 96) = WORD2(v332[1]);
  if (!a5)
  {
    v16 = 0;
    v17 = "empty";
    goto LABEL_10;
  }

  if (a5 == 1)
  {
    v16 = 0;
    v17 = "very short file (no magic)";
    goto LABEL_10;
  }

  v21 = *(a1 + 68);
  if ((v21 & 0x200000) != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = file_encoding(a1, a4, a5, 0, 0, &v337, &v336, &v335);
    v21 = *(a1 + 68);
  }

  if ((v21 & 0x2000) != 0)
  {
    v20 = 0;
    v31 = 0;
    if ((v21 & 0x400000) != 0)
    {
      goto LABEL_82;
    }

LABEL_73:
    *&v352[0] = v332[19];
    if ((v21 & 0x1000800) != 0 || (memset(__buf, 0, 48), !json_parse(v352, (v332[19] + v333), __buf, 0)))
    {
      v31 = 0;
    }

    else if ((v21 & 0x410) == 0x400)
    {
      v31 = 1;
    }

    else
    {
      if ((v21 & 0x410) != 0)
      {
        v59 = "application/json";
      }

      else
      {
        v59 = "JSON data";
      }

      if (file_printf(a1, v59, a3, a4, a5, a6, a7, a8, v287) == -1)
      {
        v31 = -1;
      }

      else
      {
        v31 = 1;
      }
    }

    v21 = *(a1 + 68);
    if (v21)
    {
      fprintf(*MEMORY[0x277D85DF8], "[try json %d]\n", v31);
      v21 = *(a1 + 68);
    }

    if (v31)
    {
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_140;
      }

      if (file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v287) == -1)
      {
        v20 = -1;
      }

      v21 = *(a1 + 68);
    }

    goto LABEL_82;
  }

  if ((v21 & 0x1000800) != 0 || v333 < 0x200)
  {
    goto LABEL_61;
  }

  v23 = v22;
  size = v21 & 0x410;
  v24 = v332[19];
  v25 = v332[19] + 148;
  v26 = 8;
  v27 = MEMORY[0x277D85DE0];
  v28 = (v332[19] + 148);
  while (1)
  {
    v29 = *v28;
    if ((v29 & 0x8000000000000000) == 0)
    {
      if ((*(v27 + 4 * v29 + 60) & 0x4000) == 0)
      {
        break;
      }

      goto LABEL_32;
    }

    if (!__maskrune(*v28, 0x4000uLL))
    {
      break;
    }

LABEL_32:
    ++v28;
    if (--v26 == -1)
    {
      goto LABEL_33;
    }
  }

  if (v26)
  {
    v33 = 0;
    v30 = 0;
    while (1)
    {
      v34 = v28[v33];
      if ((v34 & 0xF8) != 0x30)
      {
        break;
      }

      v30 = (v34 - 48) | (8 * v30);
      if (v26 == ++v33)
      {
        goto LABEL_54;
      }
    }

    if (v28[v33])
    {
      if (!((v34 & 0x80) != 0 ? __maskrune(v34, 0x4000uLL) : *(v27 + 4 * v34 + 60) & 0x4000))
      {
LABEL_33:
        v30 = -1;
      }
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_54:
  v36 = 0;
  v37 = 0uLL;
  v38 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  v22 = v23;
  do
  {
    v41 = *(v24 + v36);
    v42 = vmovl_u8(*v41.i8);
    v43 = vmovl_high_u8(v41);
    v40 = vaddw_high_u16(v40, v43);
    v39 = vaddw_u16(v39, *v43.i8);
    v38 = vaddw_high_u16(v38, v42);
    v37 = vaddw_u16(v37, *v42.i8);
    v36 += 16;
  }

  while (v36 != 512);
  v44 = 0;
  v45 = vaddvq_s32(vaddq_s32(vaddq_s32(v37, v39), vaddq_s32(v38, v40)));
  do
  {
    v45 -= *(v25 + v44++);
  }

  while (v44 != 8);
  if (v45 + 256 != v30)
  {
LABEL_61:
    v31 = 0;
    goto LABEL_62;
  }

  if (!strncmp((v24 + 257), "ustar  ", 8uLL))
  {
    v46 = 2;
  }

  else
  {
    v46 = strncmp((v24 + 257), "ustar", 8uLL) == 0;
  }

  if (size == 1024)
  {
    v31 = 1;
  }

  else
  {
    v88 = &tartype[32 * v46];
    if (size)
    {
      v88 = "application/x-tar";
    }

    if (file_printf(a1, "%s", a3, a4, a5, a6, a7, a8, v88) == -1)
    {
      v31 = -1;
    }

    else
    {
      v31 = 1;
    }
  }

LABEL_62:
  v21 = *(a1 + 68);
  if (v21)
  {
    fprintf(*MEMORY[0x277D85DF8], "[try tar %d]\n", v31);
    v21 = *(a1 + 68);
  }

  if (!v31)
  {
    v20 = 0;
    if ((v21 & 0x400000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_73;
  }

  if ((v21 & 0x20) == 0)
  {
    v20 = 0;
    goto LABEL_140;
  }

  if (file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v287) == -1)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 68);
  if ((v21 & 0x400000) == 0)
  {
    goto LABEL_73;
  }

LABEL_82:
  if ((v21 & 0x80000) != 0)
  {
    goto LABEL_133;
  }

  v31 = 0;
  if (!v22 || (v21 & 0x1000800) != 0 || v333 < 1)
  {
    goto LABEL_126;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = v332[19];
  v51 = (v332[19] + v333);
  while (2)
  {
    v53 = *v50++;
    v52 = v53;
    if (v53 != 10)
    {
      if (v52 == 44)
      {
        v57 = v49 + 1;
      }

      else
      {
        if (v52 == 34)
        {
          if (v50 < v51)
          {
            v54 = 0;
            v55 = v50;
            do
            {
              v56 = *v55++;
              if (v56 == 34)
              {
                v54 = !v54;
              }

              else if (v54)
              {
                goto LABEL_97;
              }

              v50 = v55;
            }

            while (v55 != v51);
          }

LABEL_106:
          v31 = 0;
          if (!v48 || v47 < 3)
          {
            goto LABEL_126;
          }

          goto LABEL_108;
        }

LABEL_97:
        v57 = v49;
      }

      goto LABEL_105;
    }

    if (++v47 != 10)
    {
      if (v48)
      {
        if (v48 != v49)
        {
LABEL_222:
          v31 = 0;
          goto LABEL_126;
        }

        v57 = 0;
      }

      else
      {
        if (!v49)
        {
          goto LABEL_222;
        }

        v57 = 0;
        v48 = v49;
      }

LABEL_105:
      v49 = v57;
      if (v50 >= v51)
      {
        goto LABEL_106;
      }

      continue;
    }

    break;
  }

  v31 = 0;
  if (!v48 || v48 != v49)
  {
    goto LABEL_126;
  }

LABEL_108:
  if ((v21 & 0x410) == 0x400)
  {
    v31 = 1;
  }

  else
  {
    if ((v21 & 0x410) != 0)
    {
      v58 = "application/csv";
    }

    else
    {
      v58 = "CSV text";
    }

    if (file_printf(a1, v58, a3, a4, a5, a6, a7, a8, v287) == -1)
    {
      v31 = -1;
    }

    else
    {
      v31 = 1;
    }

    v21 = *(a1 + 68);
  }

LABEL_126:
  if (v21)
  {
    fprintf(*MEMORY[0x277D85DF8], "[try csv %d]\n", v31);
    v21 = *(a1 + 68);
  }

  if (!v31)
  {
LABEL_133:
    if ((v21 & 0x40000) != 0)
    {
      goto LABEL_158;
    }

    v338 = "";
    v341 = 0;
    v351[1] = v332[19];
    v351[0] = LODWORD(v332[0]);
    v351[2] = v333;
    if ((v21 & 0x1000800) == 0)
    {
      memset(&v352[4] + 8, 0, 440);
      v349 = 0;
      v350 = 0;
      v347 = 0;
      v348 = 0;
      *v345 = 0u;
      v346 = 0u;
      v343 = 0;
      v344 = 0;
      v342 = 0;
      v339 = 0;
      v340 = 0;
      if (cdf_read(v351, 0, __buf, 0x200uLL) != -1)
      {
        v60 = *__buf;
        *&v352[0] = *__buf;
        *(v352 + 8) = *&__buf[8];
        v61 = *&__buf[30];
        *(&v352[1] + 1) = *&__buf[24];
        v62 = *&__buf[32];
        LOWORD(v352[2]) = *&__buf[32];
        *(&v352[2] + 2) = *&__buf[34];
        WORD5(v352[2]) = *&__buf[42];
        v63 = *&__buf[48];
        *(&v352[2] + 12) = *&__buf[44];
        v64 = *&__buf[60];
        v65 = 76;
        *(&v352[3] + 12) = *&__buf[60];
        do
        {
          *(v352 + v65) = *&__buf[v65];
          v65 += 4;
        }

        while (v65 != 512);
        if (v60 == 0xE11AB1A1E011CFD0)
        {
          v66 = v61;
          if (v61 <= 0x14u && v62 < 0x15)
          {
            v68 = 0;
            v69 = 1 << v61;
            v70 = (v69 >> 2) - 1;
            do
            {
              if (*(&v352[4] + v68 + 3) == -1)
              {
                break;
              }

              ++v68;
            }

            while (v68 != 109);
            v71 = v69 << 6;
            if (v69 >> 2 == 1)
            {
              v72 = 0xFFFFFFFF / v71;
            }

            else
            {
              v72 = 0xFFFFFFFF / v71;
              if (v72 / v70 < HIDWORD(v64))
              {
                goto LABEL_185;
              }
            }

            if (v68 > v72)
            {
LABEL_185:
              *__error() = 79;
LABEL_186:
              v338 = "Can't read SAT";
              goto LABEL_187;
            }

            *v302 = v64;
            v312 = v63;
            v91 = HIDWORD(v64);
            v294 = (v68 + v70 * HIDWORD(v64));
            sizea = 1 << v61;
            v349 = malloc_type_calloc(v294, v69, 0x95BCA707uLL);
            v318 = v349;
            if (!v349)
            {
              goto LABEL_186;
            }

            v289 = v70;
            v291 = v91;
            v313 = v66;
            v92 = 0;
            v93 = 0;
            v94 = 1 << v66;
            do
            {
              v95 = *(&v352[4] + v93 + 3);
              if (v95 < 0)
              {
                break;
              }

              sector = cdf_read_sector(v351, v318, v92, sizea, v66, v95);
              v94 = 1 << v66;
              if (sector != sizea)
              {
                goto LABEL_379;
              }

              ++v93;
              v92 += sizea;
            }

            while (v93 != 109);
            v97 = malloc_type_calloc(1uLL, v94, 0x95BCA707uLL);
            v98 = 1 << v66;
            v298 = v97;
            if (!v97)
            {
LABEL_379:
              free(v318);
              goto LABEL_186;
            }

            if (v291)
            {
              v99 = v302[1];
              if ((v302[1] & 0x80000000) == 0)
              {
                v100 = 0;
                v329 = v22;
                while (1)
                {
                  if (v100 == 10000)
                  {
LABEL_377:
                    *__error() = 79;
LABEL_378:
                    free(v298);
                    v22 = v329;
                    goto LABEL_379;
                  }

                  v101 = v100;
                  v102 = cdf_read_sector(v351, v298, 0, sizea, v313, v99);
                  v98 = sizea;
                  if (v102 != sizea)
                  {
                    goto LABEL_378;
                  }

                  v103 = v289;
                  if (v289)
                  {
                    break;
                  }

LABEL_215:
                  v100 = v101 + 1;
                  if (v101 + 1 >= v291)
                  {
                    goto LABEL_380;
                  }

                  v99 = *(v298 + v289);
                  v22 = v329;
                  if (v99 < 0)
                  {
                    goto LABEL_381;
                  }
                }

                v104 = v298;
                if (v294 >= v93)
                {
                  v105 = &v294[-v93];
                }

                else
                {
                  v105 = 0;
                }

                v106 = sizea * v93;
                while (1)
                {
                  v108 = *v104++;
                  v107 = v108;
                  if (v108 < 0)
                  {
                    break;
                  }

                  if (!v105)
                  {
                    goto LABEL_377;
                  }

                  v109 = cdf_read_sector(v351, v318, v106, sizea, v313, v107);
                  v98 = sizea;
                  if (v109 != sizea)
                  {
                    goto LABEL_378;
                  }

                  ++v93;
                  v106 += sizea;
                  --v105;
                  if (!--v103)
                  {
                    goto LABEL_215;
                  }
                }

LABEL_380:
                v22 = v329;
              }
            }

LABEL_381:
            v350 = v93;
            v178 = v98;
            free(v298);
            v347 = 0;
            v179 = v302[0];
            v180 = cdf_count_chain(&v349, v302[0], v178);
            v348 = v180;
            if (v180 == -1)
            {
              v305 = 0;
LABEL_411:
              *__error() = 79;
LABEL_413:
              free(v305);
              v338 = "Can't read SSAT";
              free(v349);
              goto LABEL_187;
            }

            v181 = v180;
            v347 = malloc_type_calloc(v180, v178, 0x95BCA707uLL);
            v305 = v347;
            if (!v347)
            {
              v305 = 0;
              goto LABEL_413;
            }

            v182 = sizea;
            v183 = v312;
            if ((v179 & 0x80000000) == 0)
            {
              v184 = 0;
              v185 = 10000;
              while (v185 && v181)
              {
                v186 = cdf_read_sector(v351, v305, v184, sizea, v313, v179);
                v182 = sizea;
                if (v186 != sizea)
                {
                  goto LABEL_413;
                }

                v179 = *(v318 + v179);
                --v181;
                v184 += sizea;
                --v185;
                v183 = v312;
                if ((v179 & 0x80000000) != 0)
                {
                  goto LABEL_389;
                }
              }

              goto LABEL_411;
            }

LABEL_389:
            v187 = v183;
            v188 = v182;
            v189 = cdf_count_chain(&v349, v183, v182);
            if (v189 != -1)
            {
              v190 = v189;
              v308 = v188 >> 7;
              v340 = (v188 >> 7) * v189;
              v301 = v340;
              v339 = malloc_type_calloc(v340, 0x88uLL, 0x95BCA707uLL);
              v297 = v339;
              if (v339)
              {
                v331 = v22;
                v191 = malloc_type_malloc(v188, 0x24338F3DuLL);
                if (v191)
                {
                  v192 = v191;
                  if (v190)
                  {
                    v193 = 0;
                    v194 = 0;
                    if (v308 <= 1)
                    {
                      v195 = 1;
                    }

                    else
                    {
                      v195 = v308;
                    }

                    v293 = v195;
                    v288 = v191 + 124;
                    v290 = v195 + 1;
                    v196 = v297 + 128;
                    v309 = 136 * v308;
                    do
                    {
                      if (v193 >> 4 > 0x270 || cdf_read_sector(v351, v192, 0, sizea, v313, v187) != sizea)
                      {
                        free(v297);
                        free(v192);
                        *__error() = 79;
                        goto LABEL_500;
                      }

                      if (v313 >= 7u)
                      {
                        v197 = v196;
                        v198 = v288;
                        v199 = v293;
                        do
                        {
                          v200 = *(v198 - 31);
                          v201 = *(v198 - 27);
                          v202 = *(v198 - 19);
                          *(v197 - 6) = *(v198 - 23);
                          *(v197 - 5) = v202;
                          *(v197 - 8) = v200;
                          *(v197 - 7) = v201;
                          *(v197 - 32) = *(v198 - 30);
                          *(v197 - 62) = *(v198 - 58);
                          *(v197 - 61) = *(v198 - 57);
                          *(v197 - 15) = *(v198 - 14);
                          *(v197 - 14) = *(v198 - 13);
                          *(v197 - 13) = *(v198 - 12);
                          *(v197 - 3) = *(v198 - 11);
                          *(v197 - 8) = *(v198 - 7);
                          *(v197 - 3) = *(v198 - 3);
                          *(v197 - 2) = *(v198 - 2);
                          *(v197 - 2) = *(v198 - 2);
                          *(v197 - 1) = *(v198 - 1);
                          v203 = *v198;
                          v198 += 32;
                          *v197 = v203;
                          v197 += 34;
                          --v199;
                        }

                        while (v199);
                        v193 = v290;
                      }

                      else
                      {
                        v193 = 1;
                      }

                      v187 = *(v318 + v187);
                      ++v194;
                      v196 = (v196 + v309);
                    }

                    while (v194 != v190);
                    free(v192);
                    v204 = v301;
                    if (v301)
                    {
                      v204 = 0;
                      v205 = v297 + 66;
                      while (1)
                      {
                        v206 = *v205;
                        v205 += 136;
                        if (v206 == 5)
                        {
                          break;
                        }

                        v204 = v204 + 1;
                        if (v301 == v204)
                        {
                          goto LABEL_539;
                        }
                      }
                    }
                  }

                  else
                  {
                    free(v191);
                    v204 = 0;
                  }

                  if (v204 == v301)
                  {
LABEL_539:
                    v274 = 0;
                  }

                  else
                  {
                    v274 = &v297[136 * v204];
                    v275 = *(v274 + 120);
                    if ((v275 & 0x80000000) == 0)
                    {
                      if (cdf_read_long_sector_chain(v351, v352, &v349, v275, *(v274 + 124), v345) == -1)
                      {
                        v338 = "Cannot read short stream";
                        v31 = -1;
LABEL_596:
                        free(v297);
                        v22 = v331;
LABEL_502:
                        free(v305);
                        free(v318);
                        if (v31 == -1)
                        {
LABEL_187:
                          v89 = *(a1 + 68);
                          if ((v89 & 0x410) != 0)
                          {
                            if ((v89 & 0x10) != 0)
                            {
                              v90 = "application/CDFV2";
                              goto LABEL_193;
                            }
                          }

                          else
                          {
                            if (file_printf(a1, "Composite Document File V2 Document", a3, a4, a5, a6, a7, a8, v287) == -1)
                            {
LABEL_218:
                              v31 = -1;
                              goto LABEL_136;
                            }

                            if (*v338)
                            {
                              v287 = v338;
                              v90 = ", %s";
LABEL_193:
                              if (file_printf(a1, v90, a3, a4, a5, a6, a7, a8, v287) != -1)
                              {
                                goto LABEL_194;
                              }

                              goto LABEL_218;
                            }
                          }

LABEL_194:
                          v31 = 1;
                        }

LABEL_136:
                        v21 = *(a1 + 68);
                        if (v21)
                        {
                          fprintf(*MEMORY[0x277D85DF8], "[try cdf %d]\n", v31);
                          v21 = *(a1 + 68);
                        }

                        if (v31)
                        {
                          if ((v21 & 0x20) == 0)
                          {
                            goto LABEL_140;
                          }

                          if (file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v287) == -1)
                          {
                            v20 = -1;
                          }

                          v21 = *(a1 + 68);
                        }

LABEL_158:
                        v16 = 0;
                        if (a2 == -1 || a5 < 6 || (v21 & 0x10000) != 0)
                        {
                          goto LABEL_238;
                        }

                        v73 = file_push_buffer(a1);
                        if (!v73)
                        {
                          return 0xFFFFFFFFLL;
                        }

                        v74 = v73;
                        v328 = v22;
                        v75 = LODWORD(v332[0]);
                        v76 = v332[19];
                        v77 = v333;
                        LODWORD(v352[0]) = 0;
                        if ((*(a1 + 68) & 0x1000800) != 0)
                        {
                          goto LABEL_233;
                        }

                        memset(__buf, 0, 144);
                        if (*v332[19] != 127)
                        {
                          goto LABEL_233;
                        }

                        v78 = *(v332[19] + 1);
                        if (v78 != 79 && v78 != 69)
                        {
                          goto LABEL_233;
                        }

                        if (__PAIR64__(*(v332[19] + 3), *(v332[19] + 2)) != 0x460000004CLL)
                        {
                          goto LABEL_233;
                        }

                        if (lseek(v332[0], 0, 0) == -1 && *__error() == 29)
                        {
                          v75 = file_pipe2file(a1);
                        }

                        if (v75 != -1)
                        {
                          if (v332[13])
                          {
                            v86 = &v332[1];
                            goto LABEL_224;
                          }

                          v86 = __buf;
                          if (fstat(v75, __buf) != -1)
                          {
LABEL_224:
                            if (*(v86 + 12))
                            {
                              v110 = 1;
                            }

                            else
                            {
                              v110 = (*(v86 + 2) & 0xF000) == 0x8000;
                            }

                            if (v110)
                            {
                              v111 = *(v86 + 12);
                            }

                            else
                            {
                              v111 = -1;
                            }

                            v112 = *(v76 + 4);
                            if (v112 != 2)
                            {
                              if (v112 != 1)
                              {
                                v176 = file_printf(a1, ", unknown class %d", v80, v81, v82, v83, v84, v85, *(v76 + 4));
                                v16 = file_pop_buffer(a1, v74);
                                v177 = v176 == -1;
                                if (v176 == -1)
                                {
                                  v20 = -1;
                                }

                                else
                                {
                                  v20 = 0;
                                }

                                v22 = v328;
                                if (!v177)
                                {
LABEL_236:
                                  v21 = *(a1 + 68);
                                  if (v21)
                                  {
                                    fprintf(*MEMORY[0x277D85DF8], "[try elf %d]\n", v31);
                                    v21 = *(a1 + 68);
                                  }

LABEL_238:
                                  if ((v21 & 0x4000) == 0)
                                  {
                                    v31 = file_softmagic(a1, v332, 0, 0, 0x20u, v22);
                                    if (*(a1 + 68))
                                    {
                                      fprintf(*MEMORY[0x277D85DF8], "[try softmagic %d]\n", v31);
                                    }

                                    if (v31 == 1 && v16)
                                    {
                                      if (file_printf(a1, "%s", a3, a4, a5, a6, a7, a8, v16) == -1)
                                      {
LABEL_42:
                                        v31 = 1;
                                        goto LABEL_269;
                                      }

                                      v113 = *(a1 + 68);
                                    }

                                    else
                                    {
                                      v113 = *(a1 + 68);
                                      if (!v31)
                                      {
                                        if ((v113 & 0x20000) != 0)
                                        {
LABEL_279:
                                          v17 = "data";
LABEL_10:
                                          v18 = *(a1 + 68);
                                          if ((v18 & 0x410) != 0)
                                          {
                                            if ((v18 & 0x10) != 0)
                                            {
                                              v19 = "octet-stream";
                                              if (!a5)
                                              {
                                                v19 = "x-empty";
                                              }

                                              if (file_printf(a1, "application/%s", a3, a4, a5, a6, a7, a8, v19) == -1)
                                              {
                                                v31 = 1;
                                                v20 = -1;
                                                goto LABEL_269;
                                              }
                                            }

                                            v20 = 1;
                                            goto LABEL_42;
                                          }

                                          if ((v18 & 0x800) != 0)
                                          {
                                            v32 = "UNKNUNKN";
                                          }

                                          else
                                          {
                                            if ((v18 & 0x1000000) == 0)
                                            {
                                              if (file_printf(a1, "%s", a3, a4, a5, a6, a7, a8, v17) == -1)
                                              {
                                                v20 = -1;
                                              }

                                              else
                                              {
                                                v20 = 0;
                                              }

                                              goto LABEL_42;
                                            }

                                            v32 = "???";
                                          }

                                          if (file_printf(a1, v32, a3, a4, a5, a6, a7, a8, v287) == -1)
                                          {
                                            v20 = -1;
                                          }

                                          else
                                          {
                                            v20 = 1;
                                          }

                                          goto LABEL_42;
                                        }

                                        goto LABEL_251;
                                      }
                                    }

                                    if ((v113 & 0x20) == 0)
                                    {
                                      goto LABEL_269;
                                    }

                                    if (file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v287) == -1)
                                    {
                                      v20 = -1;
                                    }

                                    v21 = *(a1 + 68);
                                  }

                                  if ((v21 & 0x20000) != 0)
                                  {
                                    goto LABEL_268;
                                  }

LABEL_251:
                                  v345[0] = 0;
                                  v341 = 0;
                                  v351[0] = 0;
                                  v349 = 0;
                                  v347 = 0;
                                  v114 = v332[0];
                                  v352[6] = *(&v332[12] + 4);
                                  v352[7] = *(&v332[14] + 4);
                                  v352[8] = *(&v332[16] + 4);
                                  LODWORD(v352[9]) = HIDWORD(v332[18]);
                                  v352[2] = *(&v332[4] + 4);
                                  v352[3] = *(&v332[6] + 4);
                                  v352[4] = *(&v332[8] + 4);
                                  v352[5] = *(&v332[10] + 4);
                                  v115 = v332[19] - 1;
                                  v116 = v333;
                                  v352[0] = *(v332 + 4);
                                  v352[1] = *(&v332[2] + 4);
                                  if (v333 >= 2)
                                  {
                                    v116 = v333;
                                    while (!*(v115 + v116))
                                    {
                                      if (--v116 <= 1)
                                      {
                                        v116 = 1;
                                        goto LABEL_257;
                                      }
                                    }
                                  }

                                  if (v116)
                                  {
LABEL_257:
                                    v116 += (v333 & 1) == 0;
                                  }

                                  if (!file_encoding(a1, v332[19], v116, v345, &v341, v351, &v349, &v347))
                                  {
                                    v31 = 0;
LABEL_266:
                                    free(v345[0]);
                                    if (*(a1 + 68))
                                    {
                                      fprintf(*MEMORY[0x277D85DF8], "[try ascmagic %d]\n", v31);
                                    }

LABEL_268:
                                    if (v31)
                                    {
                                      goto LABEL_269;
                                    }

                                    goto LABEL_279;
                                  }

                                  v117 = v341;
                                  v118 = v351[0];
                                  v119 = v347;
                                  *v355 = 0u;
                                  v354 = 0u;
                                  memset(__buf, 0, sizeof(__buf));
                                  if (v116 < 2)
                                  {
LABEL_263:
                                    v31 = 0;
                                    v122 = 0;
LABEL_264:
                                    free(v122);
                                    goto LABEL_266;
                                  }

                                  v120 = *(a1 + 68);
                                  v121 = v120 & 0x410;
                                  while (!*(v115 + v116))
                                  {
                                    if (--v116 <= 1)
                                    {
                                      goto LABEL_263;
                                    }
                                  }

                                  sizeb = v345[0];
                                  v124 = 0;
                                  v122 = 0;
                                  v31 = -1;
                                  v125 = *(a1 + 68);
                                  if (v341 && (v120 & 0x4000) == 0)
                                  {
                                    v306 = v114;
                                    v319 = v120 & 0x410;
                                    v314 = *(a1 + 68);
                                    v299 = v347;
                                    v303 = v351[0];
                                    v126 = 6 * v341;
                                    v127 = v341;
                                    v128 = malloc_type_malloc(6 * v341, 0x100004077774924uLL);
                                    v122 = v128;
                                    if (!v128)
                                    {
                                      v136 = __error();
                                      file_error(a1, *v136, "cannot allocate %zu bytes", v137, v138, v139, v140, v141, v126);
LABEL_309:
                                      v31 = -1;
                                      goto LABEL_264;
                                    }

                                    v129 = &v128[v126];
                                    v130 = sizeb;
                                    v131 = v127;
                                    v132 = v128;
                                    do
                                    {
                                      v133 = *v130;
                                      if (*v130 > 0x7F)
                                      {
                                        if (v133 > 0x7FF)
                                        {
                                          if (v133 >> 16)
                                          {
                                            if (v133 >> 21)
                                            {
                                              if (v133 >> 26)
                                              {
                                                v31 = -1;
                                                if (v133 >> 31 || v129 - v132 < 6)
                                                {
                                                  goto LABEL_264;
                                                }

                                                *v132 = (v133 >> 30) | 0xFC;
                                                v132[1] = *(v130 + 3) & 0x3F | 0x80;
                                                v132[2] = (*v130 >> 18) & 0x3F | 0x80;
                                                v132[3] = (*v130 >> 12) & 0x3F | 0x80;
                                                v132[4] = (*v130 >> 6) & 0x3F | 0x80;
                                                v132[5] = *v130 & 0x3F | 0x80;
                                                v132 += 6;
                                              }

                                              else
                                              {
                                                if (v129 - v132 < 5)
                                                {
                                                  goto LABEL_309;
                                                }

                                                *v132 = BYTE3(v133) | 0xF8;
                                                v132[1] = (*v130 >> 18) & 0x3F | 0x80;
                                                v132[2] = (*v130 >> 12) & 0x3F | 0x80;
                                                v132[3] = (*v130 >> 6) & 0x3F | 0x80;
                                                v132[4] = *v130 & 0x3F | 0x80;
                                                v132 += 5;
                                              }
                                            }

                                            else
                                            {
                                              if (v129 - v132 < 4)
                                              {
                                                goto LABEL_309;
                                              }

                                              *v132 = (v133 >> 18) | 0xF0;
                                              v132[1] = (*v130 >> 12) & 0x3F | 0x80;
                                              v132[2] = (*v130 >> 6) & 0x3F | 0x80;
                                              v132[3] = *v130 & 0x3F | 0x80;
                                              v132 += 4;
                                            }
                                          }

                                          else
                                          {
                                            if (v129 - v132 < 3)
                                            {
                                              goto LABEL_309;
                                            }

                                            *v132 = (v133 >> 12) | 0xE0;
                                            v132[1] = (*v130 >> 6) & 0x3F | 0x80;
                                            v132[2] = *v130 & 0x3F | 0x80;
                                            v132 += 3;
                                          }
                                        }

                                        else
                                        {
                                          if (v129 - v132 < 2)
                                          {
                                            goto LABEL_309;
                                          }

                                          *v132 = (v133 >> 6) | 0xC0;
                                          v132[1] = *v130 & 0x3F | 0x80;
                                          v132 += 2;
                                        }
                                      }

                                      else
                                      {
                                        if (v129 - v132 < 1)
                                        {
                                          goto LABEL_309;
                                        }

                                        *v132++ = v133;
                                      }

                                      ++v130;
                                      --v131;
                                    }

                                    while (v131);
                                    v295 = v127;
                                    *__buf = v306;
                                    *&__buf[88] = *(&v352[5] + 4);
                                    *&__buf[104] = *(&v352[6] + 4);
                                    *&__buf[120] = *(&v352[7] + 4);
                                    *&__buf[136] = *(&v352[8] + 4);
                                    *&__buf[24] = *(&v352[1] + 4);
                                    *&__buf[40] = *(&v352[2] + 4);
                                    *&__buf[56] = *(&v352[3] + 4);
                                    *&__buf[72] = *(&v352[4] + 4);
                                    *&__buf[8] = *(v352 + 4);
                                    *&__buf[152] = v128;
                                    v354 = (v132 - v128);
                                    v355[1] = 0;
                                    v355[0] = 0;
                                    v134 = file_softmagic(a1, __buf, 0, 0, 0x40u, v22);
                                    v135 = v134 != 0;
                                    if (v134)
                                    {
                                      v31 = v134;
                                    }

                                    else
                                    {
                                      v31 = -1;
                                    }

                                    free(v355[0]);
                                    v125 = *(a1 + 68);
                                    if ((v125 & 0x1000800) != 0)
                                    {
                                      v31 = v31 != -1;
                                      goto LABEL_264;
                                    }

                                    v119 = v299;
                                    v118 = v303;
                                    LOBYTE(v120) = v314;
                                    v121 = v319;
                                    v117 = v295;
                                    v124 = v135;
                                  }

                                  if ((v125 & 0x1000800) != 0)
                                  {
                                    v31 = 0;
                                    goto LABEL_264;
                                  }

                                  v300 = v124;
                                  v320 = v121;
                                  v315 = v120;
                                  v304 = v118;
                                  v330 = v122;
                                  v307 = v125;
                                  if (v117)
                                  {
                                    v142 = 0;
                                    v143 = 0;
                                    v144 = 0;
                                    v145 = 0;
                                    v146 = 0;
                                    v147 = 0;
                                    v148 = 0;
                                    v149 = 0;
                                    v150 = 0;
                                    v151 = -1;
                                    do
                                    {
                                      v152 = sizeb[v150];
                                      v153 = v144 + v147;
                                      v154 = v146 + v147;
                                      v155 = v145 + !v147;
                                      if (v152 == 10)
                                      {
                                        v146 = v154;
                                        v145 = v155;
                                        v151 = v150;
                                      }

                                      else
                                      {
                                        v144 = v153;
                                      }

                                      v156 = v152 == 133;
                                      if (v152 == 133)
                                      {
                                        ++v143;
                                      }

                                      v147 = v152 == 13;
                                      if (v152 == 13)
                                      {
                                        v156 = 1;
                                      }

                                      if (v156)
                                      {
                                        v151 = v150;
                                      }

                                      if (v150 > v151 + 300)
                                      {
                                        v142 = 1;
                                      }

                                      if (v152 == 27)
                                      {
                                        v149 = 1;
                                      }

                                      if (v152 == 8)
                                      {
                                        v148 = 1;
                                      }

                                      ++v150;
                                    }

                                    while (v117 != v150);
                                    sizec = v142 == 0;
                                    v296 = v149 == 0;
                                    v292 = v148 == 0;
                                    if (v152 == 13 && v116 < *(a1 + 280))
                                    {
                                      ++v144;
                                    }
                                  }

                                  else
                                  {
                                    v143 = 0;
                                    v145 = 0;
                                    v146 = 0;
                                    v144 = 0;
                                    sizec = 1;
                                    v292 = 1;
                                    v296 = 1;
                                  }

                                  v157 = v119;
                                  if (!strcmp(v119, "binary"))
                                  {
                                    v31 = 0;
                                    goto LABEL_347;
                                  }

                                  v164 = *(a1 + 40);
                                  if (v320)
                                  {
                                    v122 = v330;
                                    if ((v315 & 0x10) == 0)
                                    {
                                      goto LABEL_434;
                                    }

                                    if (v164)
                                    {
                                      if ((v307 & 0x20) == 0 || !v300)
                                      {
                                        goto LABEL_434;
                                      }

                                      v165 = "\n- ";
                                    }

                                    else
                                    {
                                      v165 = "text/plain";
                                    }

LABEL_433:
                                    if (file_printf(a1, v165, v158, v159, v160, v161, v162, v163, v287) == -1)
                                    {
                                      goto LABEL_264;
                                    }

LABEL_434:
                                    v31 = 1;
                                    goto LABEL_264;
                                  }

                                  if (v164)
                                  {
                                    v166 = file_replace(a1, " text$");
                                    if (v166 == -1)
                                    {
                                      goto LABEL_347;
                                    }

                                    if (!v166)
                                    {
                                      v167 = file_replace(a1, " text executable$");
                                      if (v167 == -1)
                                      {
                                        goto LABEL_347;
                                      }

                                      if (v167)
                                      {
                                        v321 = 0;
LABEL_355:
                                        if (file_printf(a1, "%s", v158, v159, v160, v161, v162, v163, v304) == -1 || file_printf(a1, " %s", v168, v169, v170, v171, v172, v173, v157) == -1 || (v321 & 1) == 0 && file_printf(a1, " executable", v158, v159, v160, v161, v162, v163, v287) == -1 || !sizec && file_printf(a1, ", with very long lines", v158, v159, v160, v161, v162, v163, v287) == -1)
                                        {
                                          goto LABEL_347;
                                        }

                                        v174 = v146 | v144 | v143 | v145;
                                        v175 = v174 == 0;
                                        if (v174 && !v146 && !v144 && !v143)
                                        {
LABEL_365:
                                          if (v296 || file_printf(a1, ", with escape sequences", v158, v159, v160, v161, v162, v163, v287) != -1)
                                          {
                                            v122 = v330;
                                            if (v292)
                                            {
                                              goto LABEL_434;
                                            }

                                            v165 = ", with overstriking";
                                            goto LABEL_433;
                                          }

LABEL_347:
                                          v122 = v330;
                                          goto LABEL_264;
                                        }

                                        if (file_printf(a1, ", with", v158, v159, v160, v161, v162, v163, v287) == -1)
                                        {
                                          goto LABEL_347;
                                        }

                                        if (v175)
                                        {
                                          v250 = " no";
                                        }

                                        else
                                        {
                                          if (v146)
                                          {
                                            if (file_printf(a1, " CRLF", v244, v245, v246, v247, v248, v249, v287) == -1)
                                            {
                                              goto LABEL_347;
                                            }

                                            if (!v144 && !v145 && !v143)
                                            {
                                              goto LABEL_590;
                                            }

                                            if (file_printf(a1, ",", v244, v245, v246, v247, v248, v249, v287) == -1)
                                            {
                                              goto LABEL_347;
                                            }
                                          }

                                          if (v144)
                                          {
                                            if (file_printf(a1, " CR", v244, v245, v246, v247, v248, v249, v287) == -1)
                                            {
                                              goto LABEL_347;
                                            }

                                            if (!(v145 | v143))
                                            {
                                              goto LABEL_590;
                                            }

                                            if (file_printf(a1, ",", v244, v245, v246, v247, v248, v249, v287) == -1)
                                            {
                                              goto LABEL_347;
                                            }
                                          }

                                          if (v145)
                                          {
                                            if (file_printf(a1, " LF", v244, v245, v246, v247, v248, v249, v287) == -1)
                                            {
                                              goto LABEL_347;
                                            }

                                            if (!v143)
                                            {
                                              goto LABEL_590;
                                            }

                                            if (file_printf(a1, ",", v244, v245, v246, v247, v248, v249, v287) == -1)
                                            {
                                              goto LABEL_347;
                                            }
                                          }

                                          else if (!v143)
                                          {
LABEL_590:
                                            if (file_printf(a1, " line terminators", v244, v245, v246, v247, v248, v249, v287) == -1)
                                            {
                                              goto LABEL_347;
                                            }

                                            goto LABEL_365;
                                          }

                                          v250 = " NEL";
                                        }

                                        if (file_printf(a1, v250, v244, v245, v246, v247, v248, v249, v287) == -1)
                                        {
                                          goto LABEL_347;
                                        }

                                        goto LABEL_590;
                                      }

                                      if (file_printf(a1, ", ", v158, v159, v160, v161, v162, v163, v287) == -1)
                                      {
                                        goto LABEL_347;
                                      }
                                    }
                                  }

                                  v321 = 1;
                                  goto LABEL_355;
                                }

LABEL_312:
                                free(v16);
                                v16 = 0;
                                goto LABEL_236;
                              }

                              if (v77 < 0x35)
                              {
LABEL_233:
                                v20 = 0;
LABEL_234:
                                v22 = v328;
LABEL_235:
                                v16 = file_pop_buffer(a1, v74);
                                goto LABEL_236;
                              }

                              v207 = *(v76 + 5);
                              v208 = *(v76 + 16);
                              v322 = *(v76 + 18);
                              v209 = *(v76 + 28);
                              v210 = *(v76 + 32);
                              v211 = *(v76 + 42);
                              v212 = *(v76 + 44);
                              v316 = *(v76 + 46);
                              v213 = *(v76 + 48);
                              v214 = *(v76 + 50);
                              v215 = bswap32(v208) >> 16;
                              if (v207 == 1)
                              {
                                LOWORD(v215) = v208;
                              }

                              v216 = *(a1 + 272);
                              LOWORD(v345[0]) = *(a1 + 272);
                              if (v215 - 2 >= 2)
                              {
                                if (v215 != 4)
                                {
                                  if (v215 != 1)
                                  {
                                    goto LABEL_534;
                                  }

                                  LODWORD(v217) = __rev16(v213);
                                  if (v207 == 1)
                                  {
                                    v217 = v213;
                                  }

                                  else
                                  {
                                    v217 = v217;
                                  }

                                  v310 = v217;
                                  goto LABEL_450;
                                }

                                v251 = __rev16(v212);
                                if (v207 == 1)
                                {
                                  v229 = v212;
                                }

                                else
                                {
                                  v229 = v251;
                                }

                                if (v229 <= *(a1 + 270))
                                {
                                  LODWORD(v352[0]) = 2048;
                                  v252 = bswap32(v209);
                                  if (v207 == 1)
                                  {
                                    v253 = v209;
                                  }

                                  else
                                  {
                                    v253 = v252;
                                  }

                                  v254 = __rev16(v211);
                                  if (v207 == 1)
                                  {
                                    v255 = v211;
                                  }

                                  else
                                  {
                                    v255 = v254;
                                  }

                                  v241 = dophn_core(a1, 1, v207 != 1, v75, v253, v229, v255, v111, v352, v345);
                                  goto LABEL_532;
                                }

                                goto LABEL_488;
                              }

                              v228 = __rev16(v212);
                              if (v207 == 1)
                              {
                                v229 = v212;
                              }

                              else
                              {
                                v229 = v228;
                              }

                              if (v229 <= *(a1 + 270))
                              {
                                LODWORD(v230) = __rev16(v213);
                                if (v207 == 1)
                                {
                                  v230 = v213;
                                }

                                else
                                {
                                  v230 = v230;
                                }

                                v310 = v230;
                                if (v230 <= *(a1 + 268))
                                {
                                  v231 = bswap32(v209);
                                  if (v207 == 1)
                                  {
                                    v232 = v209;
                                  }

                                  else
                                  {
                                    v232 = v231;
                                  }

                                  v233 = __rev16(v211);
                                  if (v207 == 1)
                                  {
                                    v234 = v211;
                                  }

                                  else
                                  {
                                    v234 = v233;
                                  }

                                  if (dophn_exec(a1, 1, v207 != 1, v75, v232, v229, v234, v111, v230, v352, v345) == -1)
                                  {
                                    goto LABEL_311;
                                  }

LABEL_450:
                                  if (v310 <= *(a1 + 268))
                                  {
                                    v235 = bswap32(v210);
                                    if (v207 == 1)
                                    {
                                      v236 = v210;
                                    }

                                    else
                                    {
                                      v236 = v235;
                                    }

                                    v237 = __rev16(v316);
                                    if (v207 == 1)
                                    {
                                      v238 = v316;
                                    }

                                    else
                                    {
                                      v238 = v237;
                                    }

                                    v239 = __rev16(v322);
                                    if (v207 == 1)
                                    {
                                      v239 = v322;
                                    }

                                    v240 = __rev16(v214);
                                    if (v207 == 1)
                                    {
                                      v240 = v214;
                                    }

                                    v241 = doshn(a1, 1, v207 != 1, v75, v236, v310, v238, v111, v239, v240, v352, v345);
                                    goto LABEL_532;
                                  }

LABEL_519:
                                  if ((*(a1 + 68) & 0x410) == 0)
                                  {
                                    v267 = "section headers";
LABEL_541:
                                    v258 = file_printf(a1, ", too many %s (%u)", v80, v81, v82, v83, v84, v85, v267);
LABEL_542:
                                    if (v258 != -1)
                                    {
                                      v20 = 1;
                                      goto LABEL_234;
                                    }

                                    goto LABEL_311;
                                  }

LABEL_536:
                                  v20 = 1;
                                  v22 = v328;
                                  goto LABEL_235;
                                }

                                goto LABEL_494;
                              }

LABEL_466:
                              if ((*(a1 + 68) & 0x410) != 0)
                              {
                                goto LABEL_536;
                              }

                              v243 = "program";
LABEL_496:
                              v258 = file_printf(a1, ", too many %s (%u)", v80, v81, v82, v229, v84, v85, v243);
                              goto LABEL_542;
                            }

                            if (v77 < 0x41)
                            {
                              v20 = 0;
                              goto LABEL_234;
                            }

                            v218 = *(v76 + 5);
                            v219 = *(v76 + 16);
                            v323 = *(v76 + 18);
                            v220 = *(v76 + 32);
                            v317 = *(v76 + 40);
                            v221 = *(v76 + 54);
                            v222 = *(v76 + 56);
                            v223 = *(v76 + 58);
                            v224 = *(v76 + 60);
                            v225 = *(v76 + 62);
                            v226 = bswap32(v219) >> 16;
                            if (v218 == 1)
                            {
                              LOWORD(v226) = v219;
                            }

                            v216 = *(a1 + 272);
                            LOWORD(v345[0]) = *(a1 + 272);
                            if (v226 - 2 < 2)
                            {
                              v242 = __rev16(v222);
                              if (v218 == 1)
                              {
                                v229 = v222;
                              }

                              else
                              {
                                v229 = v242;
                              }

                              if (v229 > *(a1 + 270))
                              {
                                goto LABEL_466;
                              }

                              LODWORD(v257) = __rev16(v224);
                              if (v218 == 1)
                              {
                                v257 = v224;
                              }

                              else
                              {
                                v257 = v257;
                              }

                              v311 = v257;
                              if (v257 > *(a1 + 268))
                              {
LABEL_494:
                                if ((*(a1 + 68) & 0x410) != 0)
                                {
                                  goto LABEL_536;
                                }

                                v243 = "section";
                                goto LABEL_496;
                              }

                              v263 = bswap64(v220);
                              if (v218 == 1)
                              {
                                v264 = v220;
                              }

                              else
                              {
                                v264 = v263;
                              }

                              v265 = __rev16(v221);
                              if (v218 == 1)
                              {
                                v266 = v221;
                              }

                              else
                              {
                                v266 = v265;
                              }

                              if (dophn_exec(a1, 2, v218 != 1, v75, v264, v229, v266, v111, v257, v352, v345) == -1)
                              {
                                goto LABEL_311;
                              }
                            }

                            else
                            {
                              if (v226 == 4)
                              {
                                v256 = __rev16(v222);
                                if (v218 == 1)
                                {
                                  v229 = v222;
                                }

                                else
                                {
                                  v229 = v256;
                                }

                                if (v229 <= *(a1 + 270))
                                {
                                  LODWORD(v352[0]) = 2048;
                                  v259 = bswap64(v220);
                                  if (v218 == 1)
                                  {
                                    v260 = v220;
                                  }

                                  else
                                  {
                                    v260 = v259;
                                  }

                                  v261 = __rev16(v221);
                                  if (v218 == 1)
                                  {
                                    v262 = v221;
                                  }

                                  else
                                  {
                                    v262 = v261;
                                  }

                                  v241 = dophn_core(a1, 2, v218 != 1, v75, v260, v229, v262, v111, v352, v345);
                                  goto LABEL_532;
                                }

LABEL_488:
                                if ((*(a1 + 68) & 0x410) != 0)
                                {
                                  goto LABEL_536;
                                }

                                v243 = "program headers";
                                goto LABEL_496;
                              }

                              if (v226 != 1)
                              {
                                goto LABEL_534;
                              }

                              LODWORD(v227) = __rev16(v224);
                              if (v218 == 1)
                              {
                                v227 = v224;
                              }

                              else
                              {
                                v227 = v227;
                              }

                              v311 = v227;
                            }

                            if (v311 <= *(a1 + 268))
                            {
                              v268 = bswap64(v317);
                              if (v218 == 1)
                              {
                                v269 = v317;
                              }

                              else
                              {
                                v269 = v268;
                              }

                              v270 = __rev16(v223);
                              if (v218 == 1)
                              {
                                v271 = v223;
                              }

                              else
                              {
                                v271 = v270;
                              }

                              v272 = __rev16(v323);
                              if (v218 == 1)
                              {
                                v272 = v323;
                              }

                              v273 = __rev16(v225);
                              if (v218 == 1)
                              {
                                v273 = v225;
                              }

                              v241 = doshn(a1, 2, v218 != 1, v75, v269, v311, v271, v111, v272, v273, v352, v345);
LABEL_532:
                              if (v241 != -1)
                              {
                                v216 = LOWORD(v345[0]);
LABEL_534:
                                if (v216 || (*(a1 + 68) & 0x410) != 0)
                                {
                                  goto LABEL_536;
                                }

                                v267 = "notes";
                                goto LABEL_541;
                              }

LABEL_311:
                              v16 = file_pop_buffer(a1, v74);
                              v20 = -1;
                              v22 = v328;
                              goto LABEL_312;
                            }

                            goto LABEL_519;
                          }
                        }

                        file_badread(a1, v79, v80, v81, v82, v83, v84, v85, v287);
                        goto LABEL_311;
                      }

LABEL_563:
                      if (cdf_read_user_stream(v351, v352, &v349, &v347, v345, &v339, "FileHeader", &v341) == -1)
                      {
                        goto LABEL_573;
                      }

                      if ((v344 * v342) < 0x11 || (*v341 == 0x75636F4420505748 ? (v282 = *(v341 + 1) == 0x6C694620746E656DLL) : (v282 = 0), v282 ? (v283 = *(v341 + 16) == 101) : (v283 = 0), !v283))
                      {
                        v342 = 0;
                        v343 = 0;
                        v344 = 0;
                        free(v341);
                        v341 = 0;
LABEL_573:
                        if (cdf_read_user_stream(v351, v352, &v349, &v347, v345, &v339, "\x05SummaryInformation", &v341) == -1)
                        {
                          if (*__error() != 3)
                          {
                            v338 = "Cannot read summary info";
                          }
                        }

                        else
                        {
                          v31 = cdf_check_summary_info(a1, v351, v352, &v349, &v347, v345, &v339, &v341, v274, &v338);
                          v343 = 0;
                          v344 = 0;
                          v342 = 0;
                          free(v341);
                          v341 = 0;
                          if (v31 > 0)
                          {
LABEL_595:
                            v342 = 0;
                            v343 = 0;
                            v344 = 0;
                            free(v341);
                            v341 = 0;
                            v346 = 0uLL;
                            v345[1] = 0;
                            free(v345[0]);
                            v345[0] = 0;
                            goto LABEL_596;
                          }
                        }

                        if (cdf_read_user_stream(v351, v352, &v349, &v347, v345, &v339, "\x05DocumentSummaryInformation", &v341) == -1)
                        {
                          if (*__error() != 3)
                          {
                            v338 = "Cannot read summary info";
                          }
                        }

                        else
                        {
                          v284 = cdf_check_summary_info(a1, v351, v352, &v349, &v347, v345, &v339, &v341, v274, &v338);
                          if (v284 > 0)
                          {
                            v31 = v284;
                            goto LABEL_595;
                          }
                        }

                        v31 = cdf_file_dir_info(a1, &v339);
                        if (v31 < 0)
                        {
                          v338 = "Cannot read section info";
                        }

                        goto LABEL_595;
                      }

                      v285 = *(a1 + 68);
                      if ((v285 & 0x410) != 0)
                      {
                        if ((v285 & 0x10) == 0)
                        {
LABEL_594:
                          v31 = 1;
                          goto LABEL_595;
                        }

                        v286 = "application/x-hwp";
                      }

                      else
                      {
                        v286 = "Hangul (Korean) Word Processor File 5.x";
                      }

                      if (file_printf(a1, v286, v276, v277, v278, v279, v280, v281, v287) == -1)
                      {
                        v31 = -1;
                        v22 = v331;
                        goto LABEL_136;
                      }

                      goto LABEL_594;
                    }
                  }

                  *v345 = 0u;
                  v346 = 0u;
                  goto LABEL_563;
                }

                free(v297);
LABEL_500:
                v22 = v331;
              }
            }

            v338 = "Can't read directory";
            v31 = -1;
            goto LABEL_502;
          }
        }

        *__error() = 79;
      }
    }

    v31 = 0;
    goto LABEL_136;
  }

  if ((v21 & 0x20) != 0)
  {
    if (file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v287) == -1)
    {
      v20 = -1;
    }

    v21 = *(a1 + 68);
    goto LABEL_133;
  }

LABEL_140:
  v16 = 0;
LABEL_269:
  v123 = *(a1 + 68);
  if ((v123 & 0x400) != 0)
  {
    if ((v123 & 0x10) != 0 && file_printf(a1, "; charset=", a3, a4, a5, a6, a7, a8, v287) == -1)
    {
      v20 = -1;
    }

    if (file_printf(a1, "%s", a3, a4, a5, a6, a7, a8, v336) == -1)
    {
      v20 = -1;
    }
  }

  free(v16);
  free(v334[0]);
  if (v20)
  {
    return v20;
  }

  else
  {
    return v31;
  }
}