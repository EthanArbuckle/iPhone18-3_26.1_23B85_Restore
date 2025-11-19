uint64_t getkCHCallStatusConnectedOutgoing()
{
  v0 = getkCHCallStatusConnectedOutgoingSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
  return get_CDContextualKeyPathClass(CNContactBirthdayKey_cold_1);
}

id get_CDContextualKeyPathClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_CDContextualKeyPathClass_softClass;
  v6 = get_CDContextualKeyPathClass_softClass;
  if (!get_CDContextualKeyPathClass_softClass)
  {
    CoreDuetContextLibraryCore();
    v4[3] = objc_getClass("_CDContextualKeyPath");
    get_CDContextualKeyPathClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191751AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSpotlightReceiverConnectionUIDKey()
{
  SpotlightReceiverConnectionUIDKeySymbolLoc = getSpotlightReceiverConnectionUIDKeySymbolLoc();
  if (SpotlightReceiverConnectionUIDKeySymbolLoc)
  {
    return *SpotlightReceiverConnectionUIDKeySymbolLoc;
  }

  getCNContactBirthdayKey_cold_1();
  return getSTManagementStateClass();
}

id getSTManagementStateClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getSTManagementStateClass_softClass;
  v6 = getSTManagementStateClass_softClass;
  if (!getSTManagementStateClass_softClass)
  {
    ScreenTimeCoreLibraryCore();
    v4[3] = objc_getClass("STManagementState");
    getSTManagementStateClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191751C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRTRoutineManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass;
  v6 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    CoreRoutineLibraryCore();
    v4[3] = objc_getClass("RTRoutineManager");
    getRTRoutineManagerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191751D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHPersonClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getPHPersonClass_softClass;
  v6 = getPHPersonClass_softClass;
  if (!getPHPersonClass_softClass)
  {
    PhotosLibraryCore();
    v4[3] = objc_getClass("PHPerson");
    getPHPersonClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191751E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHFetchOptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getPHFetchOptionsClass_softClass;
  v6 = getPHFetchOptionsClass_softClass;
  if (!getPHFetchOptionsClass_softClass)
  {
    PhotosLibraryCore();
    v4[3] = objc_getClass("PHFetchOptions");
    getPHFetchOptionsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191751F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPETEventTracker2Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getPETEventTracker2Class_softClass;
  v6 = getPETEventTracker2Class_softClass;
  if (!getPETEventTracker2Class_softClass)
  {
    ProactiveEventTrackerLibraryCore();
    v4[3] = objc_getClass("PETEventTracker2");
    getPETEventTracker2Class_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHMHomeManagerConfigurationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getHMHomeManagerConfigurationClass_softClass;
  v6 = getHMHomeManagerConfigurationClass_softClass;
  if (!getHMHomeManagerConfigurationClass_softClass)
  {
    HomeKitLibraryCore();
    v4[3] = objc_getClass("HMHomeManagerConfiguration");
    getHMHomeManagerConfigurationClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHMHomeManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getHMHomeManagerClass_softClass;
  v6 = getHMHomeManagerClass_softClass;
  if (!getHMHomeManagerClass_softClass)
  {
    HomeKitLibraryCore();
    v4[3] = objc_getClass("HMHomeManager");
    getHMHomeManagerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKHealthStoreClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getHKHealthStoreClass_softClass;
  v6 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    HealthKitLibraryCore();
    v4[3] = objc_getClass("HKHealthStore");
    getHKHealthStoreClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFAFetchFamilyCircleRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getFAFetchFamilyCircleRequestClass_softClass;
  v6 = getFAFetchFamilyCircleRequestClass_softClass;
  if (!getFAFetchFamilyCircleRequestClass_softClass)
  {
    FamilyCircleLibraryCore();
    v4[3] = objc_getClass("FAFetchFamilyCircleRequest");
    getFAFetchFamilyCircleRequestClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCSMailboxSent()
{
  CSMailboxSentSymbolLoc = getCSMailboxSentSymbolLoc();
  if (CSMailboxSentSymbolLoc)
  {
    v1 = *CSMailboxSentSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCSMailboxInbox(CNContactBirthdayKey_cold_1);
  }
}

id getCSMailboxInbox()
{
  CSMailboxInboxSymbolLoc = getCSMailboxInboxSymbolLoc();
  if (CSMailboxInboxSymbolLoc)
  {
    v1 = *CSMailboxInboxSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCSMailboxArchive(CNContactBirthdayKey_cold_1);
  }
}

id getCSMailboxArchive()
{
  CSMailboxArchiveSymbolLoc = getCSMailboxArchiveSymbolLoc();
  if (CSMailboxArchiveSymbolLoc)
  {
    v1 = *CSMailboxArchiveSymbolLoc;

    return v1;
  }

  else
  {
    getCNContactBirthdayKey_cold_1();
    return getCNPhoneNumberClass();
  }
}

id getCNPhoneNumberClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCNPhoneNumberClass_softClass;
  v6 = getCNPhoneNumberClass_softClass;
  if (!getCNPhoneNumberClass_softClass)
  {
    ContactsLibraryCore();
    v4[3] = objc_getClass("CNPhoneNumber");
    getCNPhoneNumberClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917525F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNLabelContactRelationTeacher()
{
  CNLabelContactRelationTeacherSymbolLoc = getCNLabelContactRelationTeacherSymbolLoc();
  if (CNLabelContactRelationTeacherSymbolLoc)
  {
    v1 = *CNLabelContactRelationTeacherSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNLabelContactRelationManager(CNContactBirthdayKey_cold_1);
  }
}

id getCNLabelContactRelationManager()
{
  CNLabelContactRelationManagerSymbolLoc = getCNLabelContactRelationManagerSymbolLoc();
  if (CNLabelContactRelationManagerSymbolLoc)
  {
    v1 = *CNLabelContactRelationManagerSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNLabelContactRelationMaleFriend(CNContactBirthdayKey_cold_1);
  }
}

id getCNLabelContactRelationMaleFriend()
{
  CNLabelContactRelationMaleFriendSymbolLoc = getCNLabelContactRelationMaleFriendSymbolLoc();
  if (CNLabelContactRelationMaleFriendSymbolLoc)
  {
    v1 = *CNLabelContactRelationMaleFriendSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNLabelContactRelationFriend(CNContactBirthdayKey_cold_1);
  }
}

id getCNLabelContactRelationFriend()
{
  CNLabelContactRelationFriendSymbolLoc = getCNLabelContactRelationFriendSymbolLoc();
  if (CNLabelContactRelationFriendSymbolLoc)
  {
    v1 = *CNLabelContactRelationFriendSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNLabelContactRelationFemaleFriend(CNContactBirthdayKey_cold_1);
  }
}

id getCNLabelContactRelationFemaleFriend()
{
  CNLabelContactRelationFemaleFriendSymbolLoc = getCNLabelContactRelationFemaleFriendSymbolLoc();
  if (CNLabelContactRelationFemaleFriendSymbolLoc)
  {
    v1 = *CNLabelContactRelationFemaleFriendSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNLabelContactRelationColleague(CNContactBirthdayKey_cold_1);
  }
}

id getCNLabelContactRelationColleague()
{
  CNLabelContactRelationColleagueSymbolLoc = getCNLabelContactRelationColleagueSymbolLoc();
  if (CNLabelContactRelationColleagueSymbolLoc)
  {
    v1 = *CNLabelContactRelationColleagueSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNLabelContactRelationAssistant(CNContactBirthdayKey_cold_1);
  }
}

id getCNLabelContactRelationAssistant()
{
  CNLabelContactRelationAssistantSymbolLoc = getCNLabelContactRelationAssistantSymbolLoc();
  if (CNLabelContactRelationAssistantSymbolLoc)
  {
    v1 = *CNLabelContactRelationAssistantSymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNFavoritesClass(CNContactBirthdayKey_cold_1);
  }
}

id getCNFavoritesClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCNFavoritesClass_softClass;
  v6 = getCNFavoritesClass_softClass;
  if (!getCNFavoritesClass_softClass)
  {
    ContactsLibraryCore();
    v4[3] = objc_getClass("CNFavorites");
    getCNFavoritesClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactUrlAddressesKey()
{
  CNContactUrlAddressesKeySymbolLoc = getCNContactUrlAddressesKeySymbolLoc();
  if (CNContactUrlAddressesKeySymbolLoc)
  {
    v1 = *CNContactUrlAddressesKeySymbolLoc;

    return v1;
  }

  else
  {
    getCNContactBirthdayKey_cold_1();
    return getCNContactTypeKey();
  }
}

id getCNContactTypeKey()
{
  CNContactTypeKeySymbolLoc = getCNContactTypeKeySymbolLoc();
  if (CNContactTypeKeySymbolLoc)
  {
    v1 = *CNContactTypeKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactStoreClass(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactStoreClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCNContactStoreClass_softClass;
  v6 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    ContactsLibraryCore();
    v4[3] = objc_getClass("CNContactStore");
    getCNContactStoreClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917529D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactSocialProfilesKey()
{
  CNContactSocialProfilesKeySymbolLoc = getCNContactSocialProfilesKeySymbolLoc();
  if (CNContactSocialProfilesKeySymbolLoc)
  {
    v1 = *CNContactSocialProfilesKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactRelationsKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactRelationsKey()
{
  CNContactRelationsKeySymbolLoc = getCNContactRelationsKeySymbolLoc();
  if (CNContactRelationsKeySymbolLoc)
  {
    v1 = *CNContactRelationsKeySymbolLoc;

    return v1;
  }

  else
  {
    getCNContactBirthdayKey_cold_1();
    return getCNContactPreviousFamilyNameKey();
  }
}

id getCNContactPreviousFamilyNameKey()
{
  CNContactPreviousFamilyNameKeySymbolLoc = getCNContactPreviousFamilyNameKeySymbolLoc();
  if (CNContactPreviousFamilyNameKeySymbolLoc)
  {
    v1 = *CNContactPreviousFamilyNameKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactPostalAddressesKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactPostalAddressesKey()
{
  CNContactPostalAddressesKeySymbolLoc = getCNContactPostalAddressesKeySymbolLoc();
  if (CNContactPostalAddressesKeySymbolLoc)
  {
    v1 = *CNContactPostalAddressesKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactPhoneNumbersKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactPhoneNumbersKey()
{
  CNContactPhoneNumbersKeySymbolLoc = getCNContactPhoneNumbersKeySymbolLoc();
  if (CNContactPhoneNumbersKeySymbolLoc)
  {
    v1 = *CNContactPhoneNumbersKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactOrganizationNameKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactOrganizationNameKey()
{
  CNContactOrganizationNameKeySymbolLoc = getCNContactOrganizationNameKeySymbolLoc();
  if (CNContactOrganizationNameKeySymbolLoc)
  {
    v1 = *CNContactOrganizationNameKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactNicknameKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactNicknameKey()
{
  CNContactNicknameKeySymbolLoc = getCNContactNicknameKeySymbolLoc();
  if (CNContactNicknameKeySymbolLoc)
  {
    v1 = *CNContactNicknameKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactNameSuffixKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactNameSuffixKey()
{
  CNContactNameSuffixKeySymbolLoc = getCNContactNameSuffixKeySymbolLoc();
  if (CNContactNameSuffixKeySymbolLoc)
  {
    v1 = *CNContactNameSuffixKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactNamePrefixKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactNamePrefixKey()
{
  CNContactNamePrefixKeySymbolLoc = getCNContactNamePrefixKeySymbolLoc();
  if (CNContactNamePrefixKeySymbolLoc)
  {
    v1 = *CNContactNamePrefixKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactMiddleNameKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactMiddleNameKey()
{
  CNContactMiddleNameKeySymbolLoc = getCNContactMiddleNameKeySymbolLoc();
  if (CNContactMiddleNameKeySymbolLoc)
  {
    v1 = *CNContactMiddleNameKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactInstantMessageAddressesKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactInstantMessageAddressesKey()
{
  CNContactInstantMessageAddressesKeySymbolLoc = getCNContactInstantMessageAddressesKeySymbolLoc();
  if (CNContactInstantMessageAddressesKeySymbolLoc)
  {
    v1 = *CNContactInstantMessageAddressesKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactImageDataAvailableKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactImageDataAvailableKey()
{
  CNContactImageDataAvailableKeySymbolLoc = getCNContactImageDataAvailableKeySymbolLoc();
  if (CNContactImageDataAvailableKeySymbolLoc)
  {
    v1 = *CNContactImageDataAvailableKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactIdentifierKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactIdentifierKey()
{
  CNContactIdentifierKeySymbolLoc = getCNContactIdentifierKeySymbolLoc();
  if (CNContactIdentifierKeySymbolLoc)
  {
    v1 = *CNContactIdentifierKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactGivenNameKey(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactGivenNameKey()
{
  CNContactGivenNameKeySymbolLoc = getCNContactGivenNameKeySymbolLoc();
  if (CNContactGivenNameKeySymbolLoc)
  {
    v1 = *CNContactGivenNameKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactFormatterClass(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactFormatterClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCNContactFormatterClass_softClass;
  v6 = getCNContactFormatterClass_softClass;
  if (!getCNContactFormatterClass_softClass)
  {
    ContactsLibraryCore();
    v4[3] = objc_getClass("CNContactFormatter");
    getCNContactFormatterClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactFetchRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCNContactFetchRequestClass_softClass;
  v6 = getCNContactFetchRequestClass_softClass;
  if (!getCNContactFetchRequestClass_softClass)
  {
    ContactsLibraryCore();
    v4[3] = objc_getClass("CNContactFetchRequest");
    getCNContactFetchRequestClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactFamilyNameKey()
{
  CNContactFamilyNameKeySymbolLoc = getCNContactFamilyNameKeySymbolLoc();
  if (CNContactFamilyNameKeySymbolLoc)
  {
    v1 = *CNContactFamilyNameKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCNContactClass(CNContactBirthdayKey_cold_1);
  }
}

id getCNContactClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCNContactClass_softClass;
  v6 = getCNContactClass_softClass;
  if (!getCNContactClass_softClass)
  {
    ContactsLibraryCore();
    v4[3] = objc_getClass("CNContact");
    getCNContactClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191752FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactBirthdayKey()
{
  CNContactBirthdayKeySymbolLoc = getCNContactBirthdayKeySymbolLoc();
  if (CNContactBirthdayKeySymbolLoc)
  {
    v1 = *CNContactBirthdayKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getCHRecentCallClass(CNContactBirthdayKey_cold_1);
  }
}

id getCHRecentCallClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCHRecentCallClass_softClass;
  v6 = getCHRecentCallClass_softClass;
  if (!getCHRecentCallClass_softClass)
  {
    CallHistoryLibraryCore();
    v4[3] = objc_getClass("CHRecentCall");
    getCHRecentCallClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCHManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCHManagerClass_softClass;
  v6 = getCHManagerClass_softClass;
  if (!getCHManagerClass_softClass)
  {
    CallHistoryLibraryCore();
    v4[3] = objc_getClass("CHManager");
    getCHManagerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactEmailAddressesKey()
{
  CNContactEmailAddressesKeySymbolLoc = getCNContactEmailAddressesKeySymbolLoc();
  if (CNContactEmailAddressesKeySymbolLoc)
  {
    v1 = *CNContactEmailAddressesKeySymbolLoc;

    return v1;
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return getBMDKEventClass(CNContactBirthdayKey_cold_1);
  }
}

id getBMDKEventClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMDKEventClass_softClass;
  v6 = getBMDKEventClass_softClass;
  if (!getBMDKEventClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMDKEvent");
    getBMDKEventClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_19175337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_CDContextQueriesClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_CDContextQueriesClass_softClass;
  v6 = get_CDContextQueriesClass_softClass;
  if (!get_CDContextQueriesClass_softClass)
  {
    CoreDuetContextLibraryCore();
    v4[3] = objc_getClass("_CDContextQueries");
    get_CDContextQueriesClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_CDClientContextClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_CDClientContextClass_softClass;
  v6 = get_CDClientContextClass_softClass;
  if (!get_CDClientContextClass_softClass)
  {
    CoreDuetContextLibraryCore();
    v4[3] = objc_getClass("_CDClientContext");
    get_CDClientContextClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_19175358C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRESiriActionsDonationsWhitelistClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getRESiriActionsDonationsWhitelistClass_softClass;
  v6 = getRESiriActionsDonationsWhitelistClass_softClass;
  if (!getRESiriActionsDonationsWhitelistClass_softClass)
  {
    RelevanceEngineLibraryCore();
    v4[3] = objc_getClass("RESiriActionsDonationsWhitelist");
    getRESiriActionsDonationsWhitelistClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMDKEventStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMDKEventStreamClass_softClass;
  v6 = getBMDKEventStreamClass_softClass;
  if (!getBMDKEventStreamClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMDKEventStream");
    getBMDKEventStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_19175379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkUTTypeMessage()
{
  v0 = getkUTTypeMessageSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
  return getkUTTypeEmailMessage(CNContactBirthdayKey_cold_1);
}

uint64_t getkUTTypeEmailMessage()
{
  v0 = getkUTTypeEmailMessageSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
  return getkUTTypeCalendarEvent(CNContactBirthdayKey_cold_1);
}

uint64_t getkUTTypeCalendarEvent()
{
  v0 = getkUTTypeCalendarEventSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  getCNContactBirthdayKey_cold_1();
  return getkAFCloudSyncPreferenceDidChangeDarwinNotification();
}

uint64_t getkAFCloudSyncPreferenceDidChangeDarwinNotification()
{
  v0 = getkAFCloudSyncPreferenceDidChangeDarwinNotificationSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
  return getkAFCloudStorageDeletedByUserDarwinNotification(CNContactBirthdayKey_cold_1);
}

uint64_t getkAFCloudStorageDeletedByUserDarwinNotification()
{
  v0 = getkAFCloudStorageDeletedByUserDarwinNotificationSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
  return getCSSearchableIndexClass(CNContactBirthdayKey_cold_1);
}

id getCSSearchableIndexClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCSSearchableIndexClass_softClass;
  v6 = getCSSearchableIndexClass_softClass;
  if (!getCSSearchableIndexClass_softClass)
  {
    CoreSpotlightLibraryCore();
    v4[3] = objc_getClass("CSSearchableIndex");
    getCSSearchableIndexClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFPreferencesClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v6 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    AssistantServicesLibraryCore();
    v4[3] = objc_getClass("AFPreferences");
    getAFPreferencesClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPETScalarEventTrackerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getPETScalarEventTrackerClass_softClass;
  v6 = getPETScalarEventTrackerClass_softClass;
  if (!getPETScalarEventTrackerClass_softClass)
  {
    ProactiveEventTrackerLibraryCore();
    v4[3] = objc_getClass("PETScalarEventTracker");
    getPETScalarEventTrackerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPETEventPropertyClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getPETEventPropertyClass_softClass;
  v6 = getPETEventPropertyClass_softClass;
  if (!getPETEventPropertyClass_softClass)
  {
    ProactiveEventTrackerLibraryCore();
    v4[3] = objc_getClass("PETEventProperty");
    getPETEventPropertyClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPETDistributionEventTrackerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getPETDistributionEventTrackerClass_softClass;
  v6 = getPETDistributionEventTrackerClass_softClass;
  if (!getPETDistributionEventTrackerClass_softClass)
  {
    ProactiveEventTrackerLibraryCore();
    v4[3] = objc_getClass("PETDistributionEventTracker");
    getPETDistributionEventTrackerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSCNAutocompleteFeedbackClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSCNAutocompleteFeedbackClass_softClass;
  v6 = get_PSCNAutocompleteFeedbackClass_softClass;
  if (!get_PSCNAutocompleteFeedbackClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSCNAutocompleteFeedback");
    get_PSCNAutocompleteFeedbackClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSSuggestionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSSuggestionClass_softClass;
  v6 = get_PSSuggestionClass_softClass;
  if (!get_PSSuggestionClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSSuggestion");
    get_PSSuggestionClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191753F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSSuggesterConfigurationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSSuggesterConfigurationClass_softClass;
  v6 = get_PSSuggesterConfigurationClass_softClass;
  if (!get_PSSuggesterConfigurationClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSSuggesterConfiguration");
    get_PSSuggesterConfigurationClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191754090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSSuggesterClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSSuggesterClass_softClass;
  v6 = get_PSSuggesterClass_softClass;
  if (!get_PSSuggesterClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSSuggester");
    get_PSSuggesterClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191754198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSSiriHandleRankerPredictionContextClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSSiriHandleRankerPredictionContextClass_softClass;
  v6 = get_PSSiriHandleRankerPredictionContextClass_softClass;
  if (!get_PSSiriHandleRankerPredictionContextClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSSiriHandleRankerPredictionContext");
    get_PSSiriHandleRankerPredictionContextClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917542A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSRecipientClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSRecipientClass_softClass;
  v6 = get_PSRecipientClass_softClass;
  if (!get_PSRecipientClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSRecipient");
    get_PSRecipientClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917543A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSPredictionContextClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSPredictionContextClass_softClass;
  v6 = get_PSPredictionContextClass_softClass;
  if (!get_PSPredictionContextClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSPredictionContext");
    get_PSPredictionContextClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917544B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSMessagesPinningFeedbackClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSMessagesPinningFeedbackClass_softClass;
  v6 = get_PSMessagesPinningFeedbackClass_softClass;
  if (!get_PSMessagesPinningFeedbackClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSMessagesPinningFeedback");
    get_PSMessagesPinningFeedbackClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917545B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSMapsPredictionContextClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSMapsPredictionContextClass_softClass;
  v6 = get_PSMapsPredictionContextClass_softClass;
  if (!get_PSMapsPredictionContextClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSMapsPredictionContext");
    get_PSMapsPredictionContextClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917546C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSFeedbackClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSFeedbackClass_softClass;
  v6 = get_PSFeedbackClass_softClass;
  if (!get_PSFeedbackClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSFeedback");
    get_PSFeedbackClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917547C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSContactSuggestionHandleAndAppClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSContactSuggestionHandleAndAppClass_softClass;
  v6 = get_PSContactSuggestionHandleAndAppClass_softClass;
  if (!get_PSContactSuggestionHandleAndAppClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSContactSuggestionHandleAndApp");
    get_PSContactSuggestionHandleAndAppClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917548D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSContactSuggestionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSContactSuggestionClass_softClass;
  v6 = get_PSContactSuggestionClass_softClass;
  if (!get_PSContactSuggestionClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSContactSuggestion");
    get_PSContactSuggestionClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1917549D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSContactSuggesterClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSContactSuggesterClass_softClass;
  v6 = get_PSContactSuggesterClass_softClass;
  if (!get_PSContactSuggesterClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSContactSuggester");
    get_PSContactSuggesterClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191754AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSAutocompleteSuggestionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSAutocompleteSuggestionClass_softClass;
  v6 = get_PSAutocompleteSuggestionClass_softClass;
  if (!get_PSAutocompleteSuggestionClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSAutocompleteSuggestion");
    get_PSAutocompleteSuggestionClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191754BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSAttachmentClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSAttachmentClass_softClass;
  v6 = get_PSAttachmentClass_softClass;
  if (!get_PSAttachmentClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSAttachment");
    get_PSAttachmentClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_191754CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void cd_dispatch_async_xpc(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];

  if (v5)
  {
    [MEMORY[0x1E696B0B8] _handoffCurrentReplyToQueue:v3 block:v4];
  }

  else
  {
    v6 = v4;
    v7 = v3;
    v8 = os_transaction_create();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __cd_dispatch_async_capture_tx_block_invoke_10;
    v11[3] = &unk_1E7367818;
    v12 = v8;
    v13 = v6;
    v9 = v6;
    v10 = v8;
    dispatch_async(v7, v11);
  }
}

void sub_1917558C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void sub_1917568D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_23(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_80(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void _cdknowledge_signpost_save_begin(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = +[_CDLogging knowledgeSignpost];
  v6 = os_signpost_enabled(v5);
  if (has_internal_diagnostics)
  {
    if (v6)
    {
      v7 = _CDCurrentOrXPCProcessName();
      v9 = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = v3;
      v13 = 2050;
      v14 = a1;
      _os_signpost_emit_with_name_impl(&dword_191750000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SaveObjects", " Process=%{signpost.telemetry:string1,public}@  Stream=%{signpost.telemetry:string2,public}@  SaveCount=%{signpost.telemetry:number1,public}lu  enableTelemetry=YES ", &v9, 0x20u);
    }
  }

  else if (v6)
  {
    v9 = 134349056;
    v10 = a1;
    _os_signpost_emit_with_name_impl(&dword_191750000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SaveObjects", " SaveCount=%{signpost.telemetry:number1,public}lu  enableTelemetry=YES ", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t get_memory_usage(void *a1, void *a2, void *a3, char a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  result = getpid();
  if (a1 || a2 || a3)
  {
    result = proc_pid_rusage(result, 4, v11);
    if (a1)
    {
      *a1 = *(&v12 + 1);
    }

    if (a2)
    {
      v9 = *(&v25 + 1);
      if (!*(&v25 + 1))
      {
        v9 = *(&v12 + 1);
      }

      *a2 = v9;
    }

    if (a3)
    {
      *a3 = v23;
    }
  }

  if (a4)
  {
    result = proc_reset_footprint_interval();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void legacy_log_signpost(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = 96;
    if (a2)
    {
      v5 = 16;
    }

    v6 = 24;
    if (a2)
    {
      v6 = 8;
    }

    v7 = *&v3[v6] * 0.0009765625 * 0.0009765625;
    v8 = *&v3[v5] * 0.0009765625 * 0.0009765625;
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
  }

  v9 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v9))
  {
    v10 = [v4 name];
    v11 = v10;
    if (a2)
    {
      v12 = @"Begin";
    }

    else
    {
      v12 = @"End";
    }

    v13 = [v10 stringByAppendingString:v12];
    v15 = 138543874;
    v16 = v13;
    v17 = 2050;
    v18 = v7;
    v19 = 2050;
    v20 = v8;
    _os_signpost_emit_with_name_impl(&dword_191750000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Footprint", "Name=%{signpost.telemetry:string1,public}@ Footprint=%{signpost.telemetry:number1,public}.2fMB MaxFootprint=%{signpost.telemetry:number2,public}.2fMB  enableTelemetry=YES ", &v15, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_0_4(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id OUTLINED_FUNCTION_0_7(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_0_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_16(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 addObject:a1];
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_0_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25)
{
  result = a25;
  *(v25 - 144) = a25.n128_u32[0];
  return result;
}

void _cdknowledge_signpost_save_end(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v2))
  {
    v4 = 134349056;
    v5 = a1;
    _os_signpost_emit_with_name_impl(&dword_191750000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SaveObjects", " ErrorCode=%{signpost.telemetry:number2,public}ld ", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_5_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

BOOL OUTLINED_FUNCTION_44(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{

  return [a26 me];
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void OUTLINED_FUNCTION_5_8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char block, uint64_t a24, uint64_t (*a25)(uint64_t a1), uint64_t a26, uint64_t a27, uint64_t a28)
{
  a25 = __cd_dispatch_async_capture_tx_block_invoke_5;
  a26 = v28;
  a27 = v30;
  a28 = a1;

  dispatch_async(v29, &block);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_5_15(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void sub_1917585A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t slMKBDeviceFormattedForContentProtection()
{
  MKBDeviceFormattedForContentProtectionSymbolLoc = getMKBDeviceFormattedForContentProtectionSymbolLoc();
  if (MKBDeviceFormattedForContentProtectionSymbolLoc)
  {

    return MKBDeviceFormattedForContentProtectionSymbolLoc();
  }

  else
  {
    getCNContactBirthdayKey_cold_1();
    return getMKBDeviceFormattedForContentProtectionSymbolLoc();
  }
}

uint64_t getMKBDeviceFormattedForContentProtectionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBDeviceFormattedForContentProtectionSymbolLoc_ptr;
  v6 = getMKBDeviceFormattedForContentProtectionSymbolLoc_ptr;
  if (!getMKBDeviceFormattedForContentProtectionSymbolLoc_ptr)
  {
    v1 = MobileKeyBagLibrary();
    v4[3] = dlsym(v1, "MKBDeviceFormattedForContentProtection");
    getMKBDeviceFormattedForContentProtectionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917586F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MobileKeyBagLibrary()
{
  v0 = MobileKeyBagLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t MobileKeyBagLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = MobileKeyBagLibraryCore_frameworkLibrary;
  v6 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369668;
    v8 = *off_1E7369678;
    v9 = 0;
    v4[3] = _sl_dlopen();
    MobileKeyBagLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_191758880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t slMGCopyAnswer(uint64_t a1, uint64_t a2)
{
  MGCopyAnswerSymbolLoc = getMGCopyAnswerSymbolLoc();
  if (MGCopyAnswerSymbolLoc)
  {

    return MGCopyAnswerSymbolLoc(a1, a2);
  }

  else
  {
    CNContactBirthdayKey_cold_1 = getCNContactBirthdayKey_cold_1();
    return [(_DKDataProtectionMonitor *)CNContactBirthdayKey_cold_1 deviceIsLocked];
  }
}

uint64_t getMGCopyAnswerSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMGCopyAnswerSymbolLoc_ptr;
  v6 = getMGCopyAnswerSymbolLoc_ptr;
  if (!getMGCopyAnswerSymbolLoc_ptr)
  {
    v1 = libMobileGestaltLibrary();
    v4[3] = dlsym(v1, "MGCopyAnswer");
    getMGCopyAnswerSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_191758A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t libMobileGestaltLibrary()
{
  v0 = libMobileGestaltLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t slMKBDeviceUnlockedSinceBoot()
{
  MKBDeviceUnlockedSinceBootSymbolLoc = getMKBDeviceUnlockedSinceBootSymbolLoc();
  if (MKBDeviceUnlockedSinceBootSymbolLoc)
  {

    return MKBDeviceUnlockedSinceBootSymbolLoc();
  }

  else
  {
    getCNContactBirthdayKey_cold_1();
    return getMKBDeviceUnlockedSinceBootSymbolLoc();
  }
}

uint64_t getMKBDeviceUnlockedSinceBootSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v6 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v1 = MobileKeyBagLibrary();
    v4[3] = dlsym(v1, "MKBDeviceUnlockedSinceBoot");
    getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_191758B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191758F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _DKDaemonInterface()
{
  if (_DKDaemonInterface_onceToken != -1)
  {
    _DKDaemonInterface_cold_1();
  }

  v1 = _DKDaemonInterface_interface;

  return v1;
}

uint64_t libMobileGestaltLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = libMobileGestaltLibraryCore_frameworkLibrary;
  v6 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369650;
    v8 = 0;
    v4[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_191759230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_CDProcessNameForXPCConnection(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [a1 processIdentifier];
    bzero(buffer, 0x400uLL);
    v2 = proc_pidpath(v1, buffer, 0x400u);
    if ((v2 & 0x80000000) == 0)
    {
      buffer[v2] = 0;
    }

    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x8000100u);
    if ([(__CFString *)v3 length])
    {
      v4 = v3;
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pid:%d", v1];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t PeopleSuggesterLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = PeopleSuggesterLibraryCore_frameworkLibrary;
  v6 = PeopleSuggesterLibraryCore_frameworkLibrary;
  if (!PeopleSuggesterLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369690;
    v8 = *off_1E73696A0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    PeopleSuggesterLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_19175959C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CDInteractionNSXPCInterface()
{
  if (_CDInteractionNSXPCInterface_onceToken != -1)
  {
    _CDInteractionNSXPCInterface_cold_1();
  }

  v1 = _CDInteractionNSXPCInterface_interface;

  return v1;
}

void setClassesForCDInteractionXPCInterface(void *a1)
{
  v61 = a1;
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  v58 = MEMORY[0x1E695DFD8];
  v60 = v3;
  v56 = objc_opt_class();
  v54 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v58 setWithObjects:{v56, v54, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v59 = MEMORY[0x1E695DFD8];
  v57 = objc_opt_class();
  v55 = objc_opt_class();
  v53 = objc_opt_class();
  v52 = objc_opt_class();
  v51 = objc_opt_class();
  v50 = objc_opt_class();
  v49 = objc_opt_class();
  v48 = objc_opt_class();
  v47 = objc_opt_class();
  v46 = objc_opt_class();
  get_PSSuggestionClass();
  v45 = objc_opt_class();
  get_PSPredictionContextClass();
  v44 = objc_opt_class();
  get_PSAttachmentClass();
  v43 = objc_opt_class();
  get_PSSuggesterClass();
  v42 = objc_opt_class();
  get_PSFeedbackClass();
  v41 = objc_opt_class();
  get_PSRecipientClass();
  v40 = objc_opt_class();
  get_PSSuggesterConfigurationClass();
  v39 = objc_opt_class();
  get_PSMapsPredictionContextClass();
  v15 = objc_opt_class();
  get_PSAutocompleteSuggestionClass();
  v16 = objc_opt_class();
  get_PSSiriHandleRankerPredictionContextClass();
  v17 = objc_opt_class();
  get_PSMessagesPinningFeedbackClass();
  v18 = objc_opt_class();
  get_PSContactSuggestionHandleAndAppClass();
  v19 = objc_opt_class();
  get_PSContactSuggestionClass();
  v20 = objc_opt_class();
  get_PSContactSuggesterClass();
  v21 = objc_opt_class();
  get_PSCNAutocompleteFeedbackClass();
  v22 = objc_opt_class();
  get_PSCandidateClass();
  v23 = objc_opt_class();
  get_PSContactHandleFeatureProviderClass();
  v24 = [v59 setWithObjects:{v57, v55, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v15, v16, v17, v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
  [v61 setClasses:v14 forSelector:sel_recordInteractions_enforceDataLimits_enforcePrivacy_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_updateInteractions_enforceDataLimits_enforcePrivacy_reply_ argumentIndex:0 ofReply:0];
  v25 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v61 setClasses:v25 forSelector:sel_queryInteractionsUsingPredicate_sortDescriptors_limit_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v60 forSelector:sel_queryInteractionsUsingPredicate_sortDescriptors_limit_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_queryInteractionsUsingPredicate_sortDescriptors_limit_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v25 forSelector:sel_queryContactsUsingPredicate_sortDescriptors_limit_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v60 forSelector:sel_queryContactsUsingPredicate_sortDescriptors_limit_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_queryContactsUsingPredicate_sortDescriptors_limit_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v25 forSelector:sel_deleteInteractionsMatchingPredicate_sortDescriptors_limit_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v60 forSelector:sel_deleteInteractionsMatchingPredicate_sortDescriptors_limit_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_rankCandidateContacts_usingSettings_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_rankCandidateContacts_usingSettings_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_rankCandidateContacts_usingSettings_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v14 forSelector:sel_adviseInteractionsUsingSettings_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_adviseInteractionsForDate_usingSettings_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_adviseInteractionsForKeywordsInString_usingSettings_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_adviseSocialInteractionsForDate_andSeedContacts_usingSettings_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_adviseSocialInteractionsForDate_andSeedContacts_usingSettings_reply_ argumentIndex:2 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_adviseSocialInteractionsForDate_andSeedContacts_usingSettings_reply_ argumentIndex:3 ofReply:0];
  [v61 setClasses:v14 forSelector:sel_adviseInteractionsUsingSettings_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v14 forSelector:sel_adviseInteractionsForDate_usingSettings_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v14 forSelector:sel_adviseInteractionsForKeywordsInString_usingSettings_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v14 forSelector:sel_adviseSocialInteractionsForDate_andSeedContacts_usingSettings_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_suggestInteractionsFromContext_maxSuggestions_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_suggestInteractionsFromContext_maxSuggestions_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_suggestInteractionsFromContext_maxSuggestions_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_shareExtensionSuggestionsFromContext_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_shareExtensionSuggestionsFromContext_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_mapsSuggestionsFromContext_maxSuggestions_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_mapsSuggestionsFromContext_maxSuggestions_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_mapsSuggestionsFromContext_maxSuggestions_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_zkwSuggestionsFromContext_maxSuggestions_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_zkwSuggestionsFromContext_maxSuggestions_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_zkwSuggestionsFromContext_maxSuggestions_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_provideFeedbackForContactsAutocompleteSuggestions_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedGlobalSuggestionsFromContext_contactsOnly_maxSuggestions_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedGlobalSuggestionsFromContext_contactsOnly_maxSuggestions_reply_ argumentIndex:2 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedGlobalSuggestionsFromContext_contactsOnly_maxSuggestions_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_rankedGlobalSuggestionsFromContext_contactsOnly_maxSuggestions_excludeBackfillSuggestions_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedGlobalSuggestionsFromContext_contactsOnly_maxSuggestions_excludeBackfillSuggestions_reply_ argumentIndex:2 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedGlobalSuggestionsFromContext_contactsOnly_maxSuggestions_excludeBackfillSuggestions_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_rankedSiriNLContactSuggestionsFromContext_maxSuggestions_interactionId_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedSiriNLContactSuggestionsFromContext_maxSuggestions_interactionId_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedSiriNLContactSuggestionsFromContext_maxSuggestions_interactionId_reply_ argumentIndex:2 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedSiriNLContactSuggestionsFromContext_maxSuggestions_interactionId_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_rankedNameSuggestionsFromContext_name_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedNameSuggestionsFromContext_name_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedNameSuggestionsFromContext_name_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_rankedAutocompleteSuggestionsFromContext_candidates_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedAutocompleteSuggestionsFromContext_candidates_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedAutocompleteSuggestionsFromContext_candidates_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_rankedMessagesPinsWithMaxSuggestions_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedMessagesPinsWithMaxSuggestions_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_provideMessagesPinningFeedback_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedFamilySuggestionsWithReply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_familyRecommendedSuggestionsWithPredictionContext_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_photosContactInferencesSuggestionsWithPredictionContext_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_photosRelationshipSuggestionsWithPredictionContext_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_rankedSiriMLCRHandlesFromContext_handles_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedSiriMLCRHandlesFromContext_handles_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedSiriMLCRHandlesFromContext_handles_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_rankedHandlesFromCandidateHandles_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_rankedHandlesFromCandidateHandles_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_relativeAppUsageProbabilitiesForCandidateBundleIds_daysAgo_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_relativeAppUsageProbabilitiesForCandidateBundleIds_daysAgo_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_relativeAppUsageProbabilitiesForCandidateBundleIds_daysAgo_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v24 forSelector:sel_contactSuggestionsWithMaxSuggestions_excludedContactIds_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_contactSuggestionsWithMaxSuggestions_excludedContactIds_reply_ argumentIndex:1 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_contactSuggestionsWithMaxSuggestions_excludedContactIds_reply_ argumentIndex:0 ofReply:1];
  v26 = objc_autoreleasePoolPush();
  v27 = objc_alloc(MEMORY[0x1E695DFD8]);
  v28 = objc_opt_class();
  v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v26);
  [v61 setClasses:v29 forSelector:sel_contactSuggestionsWithMaxSuggestions_interactionDomains_referenceDate_appleUsersOnly_includeGroups_excludeContactsByIdentifiers_reply_ argumentIndex:1 ofReply:0];

  v30 = objc_autoreleasePoolPush();
  v31 = objc_alloc(MEMORY[0x1E695DFD8]);
  v32 = objc_opt_class();
  v33 = [v31 initWithObjects:{v32, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v30);
  [v61 setClasses:v33 forSelector:sel_contactSuggestionsWithMaxSuggestions_interactionDomains_referenceDate_appleUsersOnly_includeGroups_excludeContactsByIdentifiers_reply_ argumentIndex:5 ofReply:0];

  v34 = objc_autoreleasePoolPush();
  v35 = objc_alloc(MEMORY[0x1E695DFD8]);
  v36 = objc_opt_class();
  get_PSContactSuggestionClass();
  v37 = [v35 initWithObjects:{v36, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v34);
  [v61 setClasses:v37 forSelector:sel_contactSuggestionsWithMaxSuggestions_interactionDomains_referenceDate_appleUsersOnly_includeGroups_excludeContactsByIdentifiers_reply_ argumentIndex:0 ofReply:1];

  [v61 setClasses:v24 forSelector:sel_autocompleteSearchResultsWithPredictionContext_reply_ argumentIndex:0 ofReply:0];
  [v61 setClasses:v24 forSelector:sel_autocompleteSearchResultsWithPredictionContext_reply_ argumentIndex:0 ofReply:1];
  [v61 setClasses:v14 forSelector:sel_tuneSocialAdvisorUsingSettings_heartBeatHandler_reply_ argumentIndex:0 ofReply:0];
  v38 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06247C8];
  [v61 setInterface:v38 forSelector:sel_tuneSocialAdvisorUsingSettings_heartBeatHandler_reply_ argumentIndex:1 ofReply:0];
}

id get_PSCandidateClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSCandidateClass_softClass;
  v6 = get_PSCandidateClass_softClass;
  if (!get_PSCandidateClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSCandidate");
    get_PSCandidateClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_19175A818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_PSContactHandleFeatureProviderClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = get_PSContactHandleFeatureProviderClass_softClass;
  v6 = get_PSContactHandleFeatureProviderClass_softClass;
  if (!get_PSContactHandleFeatureProviderClass_softClass)
  {
    PeopleSuggesterLibraryCore();
    v4[3] = objc_getClass("_PSContactHandleFeatureProvider");
    get_PSContactHandleFeatureProviderClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_19175A920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CDTargetBundleIdForBundleId(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[_CDConstants mobileMessagesBundleId];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = +[_CDConstants shareSheetTargetBundleIdMessages];
LABEL_5:
    v7 = v4;

    goto LABEL_19;
  }

  v5 = +[_CDConstants mobileMailBundleId];
  v6 = [v1 isEqual:v5];

  if (v6)
  {
    v4 = +[_CDConstants shareSheetTargetBundleIdMail];
    goto LABEL_5;
  }

  v8 = [objc_alloc(MEMORY[0x1E6963668]) initWithIdentifier:@"com.apple.share-services" platform:dyld_get_active_platform() error:0];
  v7 = v1;
  if (v8)
  {
    [MEMORY[0x1E69635D0] enumeratorWithExtensionPointRecord:v8 options:0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v7 = v1;
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [v14 containingBundleRecord];
          v17 = [v16 bundleIdentifier];

          if ([v17 isEqualToString:v1])
          {
            v7 = [v14 bundleIdentifier];

            objc_autoreleasePoolPop(v15);
            goto LABEL_17;
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v7 = v1;
    }

LABEL_17:
  }

LABEL_19:
  v18 = [v7 copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

id _CDCurrentProcessName()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  return v1;
}

id _CDCurrentOrXPCProcessName()
{
  v0 = [MEMORY[0x1E696B0B8] currentConnection];
  v1 = v0;
  if (v0)
  {
    _CDProcessNameForXPCConnection(v0);
  }

  else
  {
    _CDCurrentProcessName();
  }
  v2 = ;

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _cdknowledge_signpost_delete_begin(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = +[_CDLogging knowledgeSignpost];
  v4 = os_signpost_enabled(v3);
  if (has_internal_diagnostics)
  {
    if (v4)
    {
      v5 = _CDCurrentOrXPCProcessName();
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v1;
      _os_signpost_emit_with_name_impl(&dword_191750000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DeleteObjects", " Process=%{signpost.telemetry:string1,public}@  Entity=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v7, 0x16u);
    }
  }

  else if (v4)
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_191750000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DeleteObjects", &unk_19191A712, &v7, 2u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void _cdknowledge_signpost_delete_end(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v4))
  {
    v6 = 134349312;
    v7 = a1;
    v8 = 2050;
    v9 = a2;
    _os_signpost_emit_with_name_impl(&dword_191750000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DeleteObjects", " DeleteCount=%{signpost.telemetry:number1,public}lu  ErrorCode=%{signpost.telemetry:number2,public}ld ", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

id OUTLINED_FUNCTION_9_2(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 48, 1);
}

uint64_t OUTLINED_FUNCTION_9_4(void *a1)
{
  result = a1[4];
  v3 = a1[5];
  v4 = *(*(a1[7] + 8) + 40);
  return result;
}

uint64_t _DKStringContainsPrivacySensitiveMetadataKey(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_DKStringContainsPrivacySensitiveMetadataKey_onceToken != -1)
  {
    _DKStringContainsPrivacySensitiveMetadataKey_cold_1();
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = _DKStringContainsPrivacySensitiveMetadataKey_sensitiveKeyPathStrings;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([v1 containsString:{*(*(&v8 + 1) + 8 * i), v8}])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

__CFString *_streamNameFromStreams(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count] && (objc_msgSend(v2, "firstObject"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "name"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if ([v2 count] == 1)
    {
      v5 = [v2 firstObject];
      v6 = [v5 name];
    }

    else
    {
      v6 = @"multiple";
    }
  }

  else
  {
    v6 = @"unknown";
  }

  return v6;
}

void _cdknowledge_signpost_query_begin(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = +[_CDLogging knowledgeSignpost];
  v4 = os_signpost_enabled(v3);
  if (has_internal_diagnostics)
  {
    if (v4)
    {
      v5 = _CDCurrentOrXPCProcessName();
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v1;
      _os_signpost_emit_with_name_impl(&dword_191750000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExecuteQuery", " Process=%{signpost.telemetry:string1,public}@  Stream=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v7, 0x16u);
    }
  }

  else if (v4)
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_191750000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExecuteQuery", &unk_19191A712, &v7, 2u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t _DKQueryLoggingEnabled()
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics && _DKQueryLoggingEnabled_onceToken != -1)
  {
    _DKQueryLoggingEnabled_cold_1();
  }

  return has_internal_diagnostics & (_DKQueryLoggingEnabled_disableQueryLogging ^ 1u);
}

void sub_19175C45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _cdknowledge_signpost_query_end(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v4))
  {
    v6 = 134349312;
    v7 = a1;
    v8 = 2050;
    v9 = a2;
    _os_signpost_emit_with_name_impl(&dword_191750000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExecuteQuery", " ResultCount=%{signpost.telemetry:number1,public}lu  ErrorCode=%{signpost.telemetry:number2,public}ld  enableTelemetry=YES ", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19175CB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_51(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1)
{

  return [v2 setObject:a1 forKey:v1];
}

void OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  [(_CDFileUtility *)a1 writeJSON:v2 withFileHandle:v1];
}

uint64_t OUTLINED_FUNCTION_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void OUTLINED_FUNCTION_1_22(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_23(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_28()
{
  v19 = STACK[0x2E0];
  v20 = STACK[0x2D8];
  v17 = STACK[0x308];
  v18 = STACK[0x2F0];
  v15 = STACK[0x328];
  v16 = STACK[0x318];
  v13 = STACK[0x340];
  v14 = STACK[0x330];
  v12 = STACK[0x350];
  v8 = STACK[0x380];
  v9 = STACK[0x370];
  v6 = STACK[0x398];
  v7 = STACK[0x388];
  v4 = STACK[0x3B0];
  v5 = STACK[0x3A0];
  v2 = STACK[0x3C8];
  v3 = STACK[0x3C0];
  v10 = STACK[0x360];
  v11 = STACK[0x640];
  v0 = STACK[0x678];
  v1 = STACK[0x7C0];
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void OUTLINED_FUNCTION_3_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_activity_scope_state_s a9)
{
  a9.opaque[0] = 0;
  a9.opaque[1] = 0;

  os_activity_scope_enter(a1, &a9);
}

void OUTLINED_FUNCTION_3_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_3_10()
{

  return v0;
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id OUTLINED_FUNCTION_3_19(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 8, 1);
}

BOOL OUTLINED_FUNCTION_60(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x2Au);
}

id OUTLINED_FUNCTION_8_3(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 40, 1);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return objc_opt_isKindOfClass();
}

BOOL OUTLINED_FUNCTION_8_11(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

uint64_t OUTLINED_FUNCTION_52(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

id OUTLINED_FUNCTION_7_1(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 32, 1);
}

id OUTLINED_FUNCTION_7_3(id a1)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{

  return [a13 setObject:a1 atIndexedSubscript:v13];
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t result)
{
  *(v1 + 74) = v2;
  *(v1 + 84) = result;
  *(v1 + 94) = v3;
  return result;
}

id OUTLINED_FUNCTION_2_19(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 16, 1);
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1)
{

  return [v1 isEqualToString:a1];
}

void OUTLINED_FUNCTION_6_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x34u);
}

void OUTLINED_FUNCTION_32(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_6_8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf)
{

  _os_log_error_impl(a1, v31, OS_LOG_TYPE_ERROR, a4, &buf, 0x52u);
}

void OUTLINED_FUNCTION_6_10(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void OUTLINED_FUNCTION_15_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x3Eu);
}

void _cdcontextstore_signpost_set_object_begin(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v2 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v2))
    {
      v3 = _CDCurrentOrXPCProcessName();
      v5 = 138543618;
      v6 = v3;
      v7 = 2114;
      v8 = v1;
      _os_signpost_emit_with_name_impl(&dword_191750000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetKeyPath", " Process=%{signpost.telemetry:string1,public}@  KeyPath=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void _cdcontextstore_signpost_set_object_end()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v0))
    {
      *v1 = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetKeyPath", &unk_19191A712, v1, 2u);
    }
  }
}

uint64_t getSpotlightReceiverConnectionUIDKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSpotlightReceiverConnectionUIDKeySymbolLoc_ptr;
  v6 = getSpotlightReceiverConnectionUIDKeySymbolLoc_ptr;
  if (!getSpotlightReceiverConnectionUIDKeySymbolLoc_ptr)
  {
    v1 = SpotlightReceiverLibrary();
    v4[3] = dlsym(v1, "SpotlightReceiverConnectionUIDKey");
    getSpotlightReceiverConnectionUIDKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19175E338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = v14;

  return [v15 addObserver:v14 name:v16 sender:0 queue:v17 usingBlock:&a10];
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{

  return [v22 countByEnumeratingWithState:&a9 objects:&a22 count:16];
}

BOOL OUTLINED_FUNCTION_18(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_18_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x2Au);
}

id OUTLINED_FUNCTION_18_3(uint64_t a1, void *a2)
{

  return a2;
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return objc_opt_isKindOfClass();
}

BOOL OUTLINED_FUNCTION_19_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t result)
{
  v2 = *(*(v1 + 64) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_5(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

void OUTLINED_FUNCTION_10_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10_8()
{
  v3 = *(v1 + 8);

  return [(_DKEventStatsCounterInternal *)v3 incrementCountByNumber:v0 typeValue:0 success:?];
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return [v2 trackEventWithPropertyValues:a1 value:v1];
}

void OUTLINED_FUNCTION_11_10(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void _cdcontextstore_signpost_evaluateCallback_begin(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v5))
    {
      v7 = 138543618;
      v8 = v3;
      v9 = 2114;
      v10 = v4;
      _os_signpost_emit_with_name_impl(&dword_191750000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EvaluateCallback", " RegistrationID=%{signpost.telemetry:string1,public}@  KeyPath=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void _cdcontextstore_signpost_evaluateCallback_end()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v0))
    {
      *v1 = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EvaluateCallback", &unk_19191A712, v1, 2u);
    }
  }
}

uint64_t OUTLINED_FUNCTION_16_1()
{
  v3 = *(v0 + 3480);

  return [v1 count];
}

void sub_191761DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CDPerfMetricStartTiming(void *a1)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceReferenceDate];
    *a1 = v2;
  }
}

void CDPerfMetricEndTimingAndSetResultCountMaybeIncrementErrorCount(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2)
  {
    v7 = MEMORY[0x1E695DF00];
    v8 = a1;
    v10 = [v7 date];
    [v10 timeIntervalSinceReferenceDate];
    *(a2 + 8) = v9;
    [v8 endTimingWithEvent:a2 resultCount:a3 incrementErrorCount:a4];
  }
}

void _cdcontextstore_signpost_deprecated_api(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (_cdcontextstore_signpost_deprecated_api_onceToken != -1)
    {
      _cdcontextstore_signpost_deprecated_api_cold_1();
    }

    v2 = +[_CDLogging contextChannel];
    if (os_signpost_enabled(v2))
    {
      v4 = 136446466;
      v5 = a1;
      v6 = 2082;
      v7 = [_cdcontextstore_signpost_deprecated_api_client UTF8String];
      _os_signpost_emit_with_name_impl(&dword_191750000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeprecatedAPI", "api=%{signpost.telemetry:string1,public}s client=%{signpost.telemetry:string2,public}s  enableTelemetry=YES ", &v4, 0x16u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t CloudFamilyAnalysisPETCloudFamilyAnalysisEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 4)
      {
        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27[0] & 0x7F) << v16;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_42;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_42:
          *(a1 + 8) = v22;
          goto LABEL_43;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v24 = objc_alloc_init(CloudFamilyAnalysisPETContactEvents);
      objc_storeStrong((a1 + 24), v24);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !CloudFamilyAnalysisPETContactEventsReadFrom(v24, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 16;
      goto LABEL_35;
    }

    if (v13 == 2)
    {
      v14 = PBReaderReadString();
      v15 = 32;
LABEL_35:
      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

      goto LABEL_43;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CDStartDateCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];
  if (!v7)
  {
    v8 = [v3 endDate];
    v9 = [v4 endDate];
    v7 = [v8 compare:v9];
    if (!v7)
    {
      v10 = [v3 uuid];
      v11 = [v4 uuid];
      v7 = [v10 compare:v11];
    }
  }

  return v7;
}

void sub_191764DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1917653D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CDNormalizedStringFromQueryString(void *a1)
{
  v1 = a1;
  v2 = [v1 dataUsingEncoding:4];
  v3 = [v2 length];
  v4 = objc_opt_new();
  if (!v3)
  {
    goto LABEL_190;
  }

  v93 = v1;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = MEMORY[0x1E69E9830];
  do
  {
    v9 = v2;
    v10 = v9;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v95 = 0;
        if ((v5 & 0x80000000) != 0)
        {

          v30 = v10;
        }

        else
        {
          if ([v9 length] > v5)
          {
            [v10 getBytes:&v95 range:{v5, 1}];
            v22 = v95;

            if (v22 != 34)
            {
              goto LABEL_50;
            }

LABEL_26:
            if (v3 > v5 + 1)
            {
              ++v5;
            }

            else
            {
              v5 = v3;
            }

            goto LABEL_146;
          }

LABEL_50:
          v32 = v10;
          v95 = 0;
          if ([v10 length] > v5)
          {
            [v10 getBytes:&v95 range:{v5, 1}];
            v33 = v95;

            if (v33 == 92)
            {
              if (v3 <= v5 + 2)
              {
                v5 = v3;
              }

              else
              {
                v5 += 2;
              }

              goto LABEL_60;
            }

            goto LABEL_56;
          }
        }

LABEL_56:
        v34 = v3 > (v5 + 1);
LABEL_57:
        if (v34)
        {
          ++v5;
        }

        else
        {
          v5 = v3;
        }

LABEL_60:
        v7 = 3;
        continue;
      }

      v95 = 0;
      if ((v5 & 0x80000000) != 0 || [v9 length] <= v5)
      {

        if ((*(v8 + 61) & 4) != 0)
        {
          goto LABEL_63;
        }

        v27 = v10;
        v95 = 0;
        if ((v5 & 0x80000000) != 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v24 = v5;
        [v10 getBytes:&v95 range:{v5, 1}];
        v25 = v95;

        if (v25 < 0)
        {
          if (__maskrune(v25, 0x400uLL))
          {
            goto LABEL_63;
          }

          v60 = v10;
          v95 = 0;
LABEL_43:
          if ([v10 length] > v24)
          {
            [v10 getBytes:&v95 range:{v24, 1}];
            v28 = v95;

            if (v28 != 46)
            {
              v7 = 1;
              continue;
            }

LABEL_63:
            if (v3 > (v5 + 1))
            {
              ++v5;
            }

            else
            {
              v5 = v3;
            }

            goto LABEL_66;
          }

LABEL_61:

          goto LABEL_146;
        }

        if ((*(v8 + 4 * v25 + 60) & 0x400) != 0)
        {
          goto LABEL_63;
        }

        v26 = v10;
        v95 = 0;
      }

      v24 = v5;
      goto LABEL_43;
    }

    if (v7 != 1)
    {
      v95 = 0;
      if ((v5 & 0x80000000) != 0 || [v9 length] <= v5)
      {

        v7 = 2;
      }

      else
      {
        [v10 getBytes:&v95 range:{v5, 1}];
        v23 = v95;

        if (v23 == 41)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      goto LABEL_157;
    }

    v95 = 0;
    if ((v5 & 0x80000000) != 0)
    {

      v29 = v10;
      goto LABEL_120;
    }

    if ([v9 length] <= v5)
    {

      v31 = v10;
      goto LABEL_69;
    }

    [v10 getBytes:&v95 range:{v5, 1}];
    v11 = v95;

    if (v11 != 67)
    {
      goto LABEL_68;
    }

    v12 = v10;
    v95 = 0;
    if ([v12 length] <= (v5 + 1))
    {
      goto LABEL_67;
    }

    [v12 getBytes:&v95 range:{v5 + 1, 1}];
    v13 = v95;

    if (v13 != 65)
    {
      goto LABEL_68;
    }

    v14 = v12;
    v95 = 0;
    if ([v14 length] <= (v5 + 2))
    {
      goto LABEL_67;
    }

    [v14 getBytes:&v95 range:{v5 + 2, 1}];
    v15 = v95;

    if (v15 != 83)
    {
      goto LABEL_68;
    }

    v16 = v14;
    v95 = 0;
    if ([v16 length] <= (v5 + 3))
    {
      goto LABEL_67;
    }

    [v16 getBytes:&v95 range:{v5 + 3, 1}];
    v17 = v95;

    if (v17 != 84)
    {
      goto LABEL_68;
    }

    v18 = v16;
    v19 = v5 + 4;
    v20 = v18;
    v95 = 0;
    if ([v18 length] <= v19)
    {
LABEL_67:

LABEL_68:
      v35 = v10;
      v8 = MEMORY[0x1E69E9830];
LABEL_69:
      v95 = 0;
      if ([v10 length] <= v5)
      {
      }

      else
      {
        [v10 getBytes:&v95 range:{v5, 1}];
        v36 = v95;

        if (v36 == 34)
        {
          if (!v6)
          {
            v95 = 63;
            [v4 appendBytes:&v95 length:1];
          }

          ++v6;
          v34 = v3 > v5 + 1;
          goto LABEL_57;
        }
      }

      v37 = v10;
      v95 = 0;
      if ([v10 length] <= v5)
      {

        goto LABEL_84;
      }

      [v10 getBytes:&v95 range:{v5, 1}];
      v38 = v95;

      if (v38 != 32)
      {
        goto LABEL_84;
      }

      v39 = v10;
      v95 = 0;
      if ([v39 length] <= (v5 + 1))
      {

        goto LABEL_84;
      }

      [v39 getBytes:&v95 range:{v5 + 1, 1}];
      v40 = v95;

      if (v40 != 45)
      {
        goto LABEL_84;
      }

      v41 = v39;
      v95 = 0;
      if ([v41 length] <= (v5 + 2))
      {

        v43 = 0;
      }

      else
      {
        [v41 getBytes:&v95 range:{v5 + 2, 1}];
        v42 = v95;

        v43 = v42;
        if (v42 < 0)
        {
          if (__maskrune(v42, 0x400uLL))
          {
            goto LABEL_165;
          }

          goto LABEL_84;
        }
      }

      if ((*(v8 + 4 * v43 + 60) & 0x400) != 0)
      {
        goto LABEL_165;
      }

LABEL_84:
      v44 = v10;
      v95 = 0;
      if ([v10 length] <= v5)
      {

        goto LABEL_91;
      }

      [v10 getBytes:&v95 range:{v5, 1}];
      v45 = v95;

      if (v45 != 32)
      {
        goto LABEL_91;
      }

      v46 = v10;
      v95 = 0;
      if ([v46 length] <= (v5 + 1))
      {

        v48 = 0;
      }

      else
      {
        [v46 getBytes:&v95 range:{v5 + 1, 1}];
        v47 = v95;

        v48 = v47;
        if (v47 < 0)
        {
          if (__maskrune(v47, 0x400uLL))
          {
            goto LABEL_104;
          }

LABEL_91:
          v49 = v10;
          v95 = 0;
          if ([v10 length] <= v5)
          {

            goto LABEL_113;
          }

          [v10 getBytes:&v95 range:{v5, 1}];
          v50 = v95;

          if (v50 != 32)
          {
            goto LABEL_113;
          }

          v51 = v10;
          v95 = 0;
          if ([v51 length] > (v5 + 1))
          {
            [v51 getBytes:&v95 range:{v5 + 1, 1}];
            v52 = v95;

            if (v52 != 45)
            {
              goto LABEL_113;
            }

            v53 = v51;
            v95 = 0;
            if ([v53 length] > (v5 + 2))
            {
              [v53 getBytes:&v95 range:{v5 + 2, 1}];
              v54 = v95;

              v8 = MEMORY[0x1E69E9830];
              if (v54 != 46)
              {
                goto LABEL_113;
              }

              v55 = v53;
              v95 = 0;
              if ([v55 length] <= (v5 + 3))
              {

                v57 = 0;
              }

              else
              {
                [v55 getBytes:&v95 range:{v5 + 3, 1}];
                v56 = v95;

                v57 = v56;
                if (v56 < 0)
                {
                  v58 = __maskrune(v56, 0x400uLL);
                  v8 = MEMORY[0x1E69E9830];
LABEL_173:
                  if (v58)
                  {
                    v95 = 32;
                    [v4 appendBytes:&v95 length:1];
                    if (!v6)
                    {
                      v95 = 63;
                      [v4 appendBytes:&v95 length:1];
                    }

                    ++v6;
                    v59 = v5 + 4;
                    goto LABEL_168;
                  }

LABEL_113:
                  v61 = v10;
                  v95 = 0;
                  if ([v10 length] <= v5)
                  {
                    goto LABEL_120;
                  }

                  [v10 getBytes:&v95 range:{v5, 1}];
                  v62 = v95;

                  if (v62 != 32)
                  {
                    goto LABEL_121;
                  }

                  v63 = v10;
                  v95 = 0;
                  if ([v63 length] <= (v5 + 1))
                  {
LABEL_120:

                    goto LABEL_121;
                  }

                  [v63 getBytes:&v95 range:{v5 + 1, 1}];
                  v64 = v95;

                  if (v64 != 46)
                  {
                    goto LABEL_121;
                  }

                  v65 = v63;
                  v95 = 0;
                  if ([v65 length] <= (v5 + 2))
                  {

                    v67 = 0;
                  }

                  else
                  {
                    [v65 getBytes:&v95 range:{v5 + 2, 1}];
                    v66 = v95;

                    v67 = v66;
                    if (v66 < 0)
                    {
                      v68 = __maskrune(v66, 0x400uLL);
LABEL_164:
                      if (v68)
                      {
LABEL_165:
                        v95 = 32;
                        [v4 appendBytes:&v95 length:1];
                        if (!v6)
                        {
                          v95 = 63;
                          [v4 appendBytes:&v95 length:1];
                        }

                        ++v6;
                        v59 = v5 + 3;
                        goto LABEL_168;
                      }

LABEL_121:
                      if (v6 < 1)
                      {
                        v73 = v10;
                        v95 = 0;
                        if ((v5 & 0x80000000) == 0)
                        {
                          v71 = v5;
                          goto LABEL_153;
                        }

                        goto LABEL_155;
                      }

                      v69 = v10;
                      v70 = v69;
                      v95 = 0;
                      if ((v5 & 0x80000000) == 0)
                      {
                        v71 = v5;
                        if ([v69 length] <= v5)
                        {
                        }

                        else
                        {
                          [v70 getBytes:&v95 range:{v5, 1}];
                          v72 = v95;

                          if (v72 == 32)
                          {
                            goto LABEL_132;
                          }
                        }

                        v75 = v70;
                        v95 = 0;
                        if ([v70 length] <= v5)
                        {
                          goto LABEL_135;
                        }

                        [v70 getBytes:&v95 range:{v5, 1}];
                        v76 = v95;

                        if (v76 != 44)
                        {
                          goto LABEL_136;
                        }

LABEL_132:
                        v77 = v70;
                        v95 = 0;
                        if ([v77 length] <= v5)
                        {
                        }

                        else
                        {
                          [v77 getBytes:&v95 range:{v5, 1}];
                          v78 = v95;

                          if (v78 == 32)
                          {
                            goto LABEL_26;
                          }
                        }

                        v81 = v77;
                        v95 = 0;
                        if ([v81 length] <= v5)
                        {
                        }

                        else
                        {
                          [v81 getBytes:&v95 range:{v5, 1}];
                          v82 = v95;

                          if (v82 == 44)
                          {
                            goto LABEL_26;
                          }
                        }

                        v83 = v81;
                        v95 = 0;
LABEL_153:
                        if ([v10 length] > v71)
                        {
                          [v10 getBytes:&v95 range:{v71, 1}];
                          v84 = v95;
LABEL_156:

                          v94 = v84;
                          v7 = 1;
                          [v4 appendBytes:&v94 length:1];
LABEL_157:
                          if (v3 > (v5 + 1))
                          {
                            ++v5;
                          }

                          else
                          {
                            v5 = v3;
                          }

                          continue;
                        }

LABEL_155:
                        v84 = 0;
                        goto LABEL_156;
                      }

                      v74 = v70;
LABEL_135:

LABEL_136:
                      if (v6 != 1)
                      {
                        v79 = @"N";
                        if (v6 >= 0xA)
                        {
                          v79 = @"NN";
                          if (v6 >= 0x64)
                          {
                            v79 = @"NNN";
                            if (v6 >= 0x3E8)
                            {
                              v79 = @"NNNN";
                              if (v6 >> 4 >= 0x271)
                              {
                                if (v6 >> 5 >= 0xC35)
                                {
                                  v79 = @"NNNNNN+";
                                }

                                else
                                {
                                  v79 = @"NNNNN";
                                }
                              }
                            }
                          }
                        }

                        v80 = [(__CFString *)v79 dataUsingEncoding:4, v93];
                        [v4 appendData:v80];
                      }

                      v6 = 0;
LABEL_146:
                      v7 = 1;
                      continue;
                    }
                  }

                  v68 = *(v8 + 4 * v67 + 60) & 0x400;
                  goto LABEL_164;
                }
              }

              v8 = MEMORY[0x1E69E9830];
              v58 = *(MEMORY[0x1E69E9830] + 4 * v57 + 60) & 0x400;
              goto LABEL_173;
            }

            v8 = MEMORY[0x1E69E9830];
          }

          goto LABEL_113;
        }
      }

      if ((*(v8 + 4 * v48 + 60) & 0x400) == 0)
      {
        goto LABEL_91;
      }

LABEL_104:
      v95 = 32;
      [v4 appendBytes:&v95 length:1];
      if (!v6)
      {
        v95 = 63;
        [v4 appendBytes:&v95 length:1];
      }

      ++v6;
      v59 = v5 + 2;
LABEL_168:
      if (v3 <= v59)
      {
        v5 = v3;
      }

      else
      {
        v5 = v59;
      }

LABEL_66:
      v7 = 4;
      continue;
    }

    [v20 getBytes:&v95 range:{v5 + 4, 1}];
    v21 = v95;

    if (v21 != 40)
    {
      goto LABEL_68;
    }

    if (!v6)
    {
      v95 = 63;
      [v4 appendBytes:&v95 length:1];
    }

    ++v6;
    if (v3 <= v19)
    {
      v5 = v3;
    }

    else
    {
      v5 += 4;
    }

    v7 = 2;
    v8 = MEMORY[0x1E69E9830];
  }

  while (v3 > v5);
  v1 = v93;
  if (v6 >= 2)
  {
    v85 = @"NN";
    v86 = @"NNN";
    v87 = @"NNNN";
    v88 = @"NNNNNN+";
    if (v6 >> 5 < 0xC35)
    {
      v88 = @"NNNNN";
    }

    if (v6 >> 4 >= 0x271)
    {
      v87 = v88;
    }

    if (v6 >= 0x3E8)
    {
      v86 = v87;
    }

    if (v6 >= 0x64)
    {
      v85 = v86;
    }

    if (v6 >= 0xA)
    {
      v89 = v85;
    }

    else
    {
      v89 = @"N";
    }

    v90 = [(__CFString *)v89 dataUsingEncoding:4, v93];
    [v4 appendData:v90];
  }

LABEL_190:
  v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];

  return v91;
}

void *_isTimeRestrictionOverwritten()
{
  if (!+[_CDDeviceInfo isRunningOnInternalBuild])
  {
    return 0;
  }

  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"AutoSUTimeRestrictionOverwrite"];

    if (v2)
    {
      v2 = [v1 BOOLForKey:@"AutoSUTimeRestrictionOverwrite"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t findAutoSuPlanByProbability(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, void *a7)
{
  v67 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = 0;
  v15 = 1.0;
  do
  {
    v16 = *(a1 + v14);
    v17 = v16 >= 0.0 && v16 <= 1.0;
    if (!v17)
    {
      v20 = +[_CDLogging autoSUChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        findAutoSuPlanByProbability_cold_3();
      }

      goto LABEL_30;
    }

    v14 += 8;
  }

  while (v14 != 768);
  v18 = 0;
  *a3 = -1;
  *a4 = -1;
  *a6 = -1;
  while (1)
  {
    v19 = *(a1 + 8 * v18);
    [v13 startThreshold];
    if (v19 > v15)
    {
      break;
    }

    if (++v18 == 96)
    {
      goto LABEL_15;
    }
  }

  *a3 = v18;
LABEL_15:
  v22 = 95;
  while (1)
  {
    v23 = *(a1 + 8 * v22);
    if (*a6 == -1 && v23 > 0.0)
    {
      *a6 = v22;
    }

    [v13 endThreshold];
    if (v23 > v24)
    {
      break;
    }

    if (--v22 == -1)
    {
      goto LABEL_23;
    }
  }

  *a4 = v22;
LABEL_23:
  v25 = *a3;
  if (v25 == -1 || *a4 == -1)
  {
    v20 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      findAutoSuPlanByProbability_cold_2();
    }

    goto LABEL_30;
  }

  v26 = v25 + 1;
  *a3 = v25 + 1;
  if (*a4 - (v25 + 1) < 4)
  {
    v20 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      findAutoSuPlanByProbability_cold_1(a3, a4, v20);
    }

LABEL_30:
    v27 = 0xFFFFFFFFLL;
LABEL_31:

    goto LABEL_32;
  }

  if (v25 < -1)
  {
LABEL_38:
    v20 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v57) = 0;
      _os_log_impl(&dword_191750000, v20, OS_LOG_TYPE_INFO, "Unable to propose last unlock time. Returning default times.", &v57, 2u);
    }

    goto LABEL_30;
  }

  v30 = (a1 + 8 * v26);
  while (1)
  {
    v31 = 1.0 - *v30;
    [v13 unlockThreshold];
    if (v31 >= v32)
    {
      break;
    }

    --v30;
    v17 = v26 <= 0;
    LODWORD(v26) = v26 - 1;
    if (v17)
    {
      goto LABEL_38;
    }
  }

  v33 = [v13 unlockMarginInSlot];
  *a2 = (v26 - v33) & ~((v26 - v33) >> 31);
  *a5 = *a4;
  v34 = +[_CDLogging autoSUChannel];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = *a2;
    v36 = *a3;
    v37 = *a4;
    v38 = *a5;
    v39 = *a6;
    v57 = 67110144;
    v58 = v35;
    v59 = 1024;
    v60 = v36;
    v61 = 1024;
    v62 = v37;
    v63 = 1024;
    v64 = v38;
    v65 = 1024;
    v66 = v39;
    _os_log_impl(&dword_191750000, v34, OS_LOG_TYPE_INFO, "(Before intersection): bestLastUnlock:%d, bestSuStart:%d, bestSuEnd:%d, expiration:%d, unrestrictedSleepEnd:%d\n", &v57, 0x20u);
  }

  if (_isTimeRestrictionOverwritten())
  {
    if (*a4 - *a3 >= 4)
    {
      v20 = +[_CDLogging autoSUChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v40 = *a2;
        v41 = *a3;
        v42 = *a4;
        v43 = *a5;
        v57 = 67109888;
        v58 = v40;
        v59 = 1024;
        v60 = v41;
        v61 = 1024;
        v62 = v42;
        v63 = 1024;
        v64 = v43;
        v44 = "Internal testing build - AutoSU Time Restriction check disabled\n(Without restriction) bestLastUnlock:%d, bestSuStart:%d, bestSuEnd:%d, expiration:%d\n";
        v45 = v20;
        v46 = 26;
LABEL_55:
        _os_log_impl(&dword_191750000, v45, OS_LOG_TYPE_INFO, v44, &v57, v46);
        goto LABEL_56;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v47 = *a3;
    v48 = [v13 restrictionStartInSlot];
    if (v47 <= v48)
    {
      v47 = v48;
    }

    v49 = *a4;
    v50 = [v13 restrictionEndInSlot];
    if (v49 >= v50)
    {
      v51 = v50;
    }

    else
    {
      v51 = v49;
    }

    if (v51 - v47 >= 4)
    {
      *a3 = v47;
      *a4 = v51;
      *a5 = v51;
      v20 = +[_CDLogging autoSUChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v52 = *a2;
        v53 = *a3;
        v54 = *a4;
        v55 = *a5;
        v56 = *a6;
        v57 = 67110144;
        v58 = v52;
        v59 = 1024;
        v60 = v53;
        v61 = 1024;
        v62 = v54;
        v63 = 1024;
        v64 = v55;
        v65 = 1024;
        v66 = v56;
        v44 = "(After intersection): bestLastUnlock:%d, bestSuStart:%d, bestSuEnd:%d, expiration:%d unrestrictedSleepEnd:%d\n";
        v45 = v20;
        v46 = 32;
        goto LABEL_55;
      }

LABEL_56:
      v27 = 0;
      goto LABEL_31;
    }
  }

  v27 = 0xFFFFFFFFLL;
LABEL_32:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t active_memory_limit()
{
  if (active_memory_limit_onceToken != -1)
  {
    active_memory_limit_cold_1();
  }

  return active_memory_limit_limit;
}

void __active_memory_limit_block_invoke()
{
  v1[0] = 0;
  v1[1] = 0;
  getpid();
  if (memorystatus_control())
  {
    v0 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __active_memory_limit_block_invoke_cold_1(v0);
    }
  }

  else
  {
    active_memory_limit_limit = LODWORD(v1[0]) << 20;
    v0 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      __active_memory_limit_block_invoke_cold_2(v1, v0);
    }
  }
}

void sub_19176F718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_unfair_lock_s *a16)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(a16 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19176FC4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

__CFString *_DKSyncTransportName(uint64_t a1)
{
  v1 = @"CloudDown";
  v2 = &stru_1F05B9908;
  if (a1 == 8)
  {
    v2 = @"CloudUp";
  }

  if (a1 != 4)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    v3 = @"Rapport";
  }

  else
  {
    v3 = v1;
  }

  if ([(__CFString *)v3 hasPrefix:@"Cloud"])
  {
    return @"Cloud";
  }

  else
  {
    return v3;
  }
}

void sub_1917719D4(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_17(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x34u);
}

uint64_t _CDPerfMetricInitialize()
{
  v0 = objc_opt_new();
  v1 = _CDPerfMetricFamilies;
  _CDPerfMetricFamilies = v0;

  v2 = dispatch_queue_create("com.apple.coreduet.perfmetric", 0);
  v3 = _CDPerfMetricQueue;
  _CDPerfMetricQueue = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void sub_191774B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_191774FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1917751F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191775350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191777760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191778654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 40));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v44 - 144));
  _Unwind_Resume(a1);
}

void sub_191778D44(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_191778FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _siriSyncEnabledDidChangeCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___siriSyncEnabledDidChangeCallback_block_invoke;
  v4[3] = &unk_1E7367440;
  v5 = v2;
  v3 = v2;
  [_DKSyncSerializer performAsyncBlock:v4];
}

void sub_191779B04(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_191779CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return [v0 code];
}

void OUTLINED_FUNCTION_30_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_31(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, id *a14)
{
  a14 = v14;

  [(_DKSync2Coordinator *)v14 _performSyncWithSyncType:v15 completion:&a10];
}

void OUTLINED_FUNCTION_33(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  v4 = *(a1 + 32);

  return objc_opt_class();
}

uint64_t sleepPredictionWithParams2(double *a1, uint64_t a2, unsigned int a3, double a4, double a5, double a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v11 = validatePastDetection(a2, a3);
  if (v11 == -1)
  {
    v45 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      sleepPredictionWithParams2_cold_3(v45);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
    v13 = v11 / 96;
    v14 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sleepPredictionWithParams2_cold_1(v13, v14);
    }

    v53[1] = v53;
    v15 = (384 * v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    (MEMORY[0x1EEE9AC00])();
    v16 = v12 / 0x60;
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 95;
      v19 = v53 - v15;
      do
      {
        v20 = v18;
        v21 = v19;
        v22 = 384;
        do
        {
          *v21++ = *(a2 + 4 * v20--);
          v22 -= 4;
        }

        while (v22);
        ++v17;
        v19 += 384;
        v18 += 96;
      }

      while (v17 < v16);
    }

    v23 = (MEMORY[0x1EEE9AC00])();
    v25 = (v53 - ((v24 + 15) & 0x7FFFFFFF0));
    v26 = MEMORY[0x1EEE9AC00](v23);
    v28 = v53 - v27;
    earlyAggregate(v26, v25, v53 - v27, v13);
    v30 = MEMORY[0x1EEE9AC00](v29);
    MEMORY[0x1EEE9AC00](v30);
    v31 = cumulateSleepWakeProbability(v25, v28, v53 - v15, v53 - v15, v13);
    v32 = 96 * v13;
    v33 = MEMORY[0x1EEE9AC00](v31);
    v35 = v53 - ((v34 + 15) & 0x7FFFFFFF0);
    MEMORY[0x1EEE9AC00](v33);
    v37 = v53 - v36;
    convert2dArrayTo1dReversedBitPattern(v53 - v15, v12, v35);
    v38 = convert2dArrayTo1dReversedBitPattern(v53 - v15, v12, v37);
    v39 = MEMORY[0x1EEE9AC00](v38);
    v41 = (v53 - ((v40 + 15) & 0xFFFFFFFF0));
    MEMORY[0x1EEE9AC00](v39);
    v43 = (v53 - v42);
    if (sleepPredictionWithParams1(v41, v35, v32, a4, a5, a6) || sleepPredictionWithParams1(v43, v37, v32, a4, a5, a6))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      v47 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        sleepPredictionWithParams2_cold_2(96, v47);
      }

      v48 = 0;
      do
      {
        *a1 = 1.0 - fmin(*v41, *v43);
        v49 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v50 = *a1;
          v51 = *v41;
          v52 = *v43;
          *buf = 67109888;
          v55 = v48;
          v56 = 2048;
          v57 = v50;
          v58 = 2048;
          v59 = v51;
          v60 = 2048;
          v61 = v52;
          _os_log_debug_impl(&dword_191750000, v49, OS_LOG_TYPE_DEBUG, "Sleep Prediction: prediction[%d] = %f, agg_sleep = %f, agg_wake = %f", buf, 0x26u);
        }

        ++v48;
        ++a1;
        ++v43;
        ++v41;
      }

      while (v48 != 96);
      result = 0;
    }
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t convert1dReversedBitPatternTo2dArray(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v3 = a2 / 0x60;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 95;
    do
    {
      v6 = 96;
      v7 = a3;
      v8 = v5;
      do
      {
        *v7++ = *(result + 4 * v8--);
        --v6;
      }

      while (v6);
      ++v4;
      v5 += 96;
      a3 += 96;
    }

    while (v4 < v3);
  }

  return result;
}

void earlyAggregate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4 >= 1)
  {
    v7 = 0;
    v8 = a4;
    while (1)
    {
      MaxInterval = getMaxInterval();
      v10 = +[_CDLogging knowledgeChannel];
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (MaxInterval != -1)
      {
        break;
      }

      if (v11)
      {
        *buf = 67109120;
        v16 = v7;
        v12 = v10;
        v13 = "Sleep Prediction: Day %d: could not find desired inactive period of any length\n";
LABEL_13:
        _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 8u);
      }

LABEL_10:

      *(a2 + 4 * v7) = -1;
      *(a3 + 4 * v7++) = -1;
      a1 += 384;
      if (v8 == v7)
      {
        goto LABEL_14;
      }
    }

    if (v11)
    {
      *buf = 67109632;
      v16 = v7;
      v17 = 1024;
      v18 = 0;
      v19 = 1024;
      v20 = 0;
      _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "Sleep Prediction: Day %d: longest interval (start, duration) = (%d, %d)\n", buf, 0x14u);
    }

    v10 = +[_CDLogging knowledgeChannel];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 67109120;
    v16 = v7;
    v12 = v10;
    v13 = "Sleep Prediction: Day %d: could not find long enough inactive period to be considered as valid sleep period\n";
    goto LABEL_13;
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

int *cumulateSleepWakeProbability(int *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = a5;
    v10 = a3;
    v9 = a4;
    do
    {
      v11 = 384 * v7;
      v12 = (a2 + 4 * v7);
      if (v6[v7] == -1)
      {
        result = memset((a3 + v11), 255, 0x180uLL);
        if (*v12 != -1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        for (i = 0; i != 96; ++i)
        {
          *(v10 + 4 * i) = i >= v6[v7];
        }

        if (*v12 != -1)
        {
LABEL_10:
          for (j = 0; j != 96; ++j)
          {
            *(v9 + 4 * j) = j <= *v12;
          }

          goto LABEL_14;
        }
      }

      result = memset((a4 + v11), 255, 0x180uLL);
LABEL_14:
      ++v7;
      v10 += 384;
      v9 += 384;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t convert2dArrayTo1dReversedBitPattern(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a2 / 0x60;
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = (result + 384 * v4++);
      v6 = 96 * v4 - 1;
      v7 = 96;
      do
      {
        v8 = *v5++;
        *(a3 + 4 * v6--) = v8;
        --v7;
      }

      while (v7);
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t getMaxInterval()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1EEE9AC00]();
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFF0);
  if (v2 < 1)
  {
    goto LABEL_32;
  }

  v5 = 0;
  v6 = -4;
  while (*(v0 + 4 * v5) != 1)
  {
    ++v5;
    v6 -= 4;
    if (v2 == v5)
    {
      goto LABEL_32;
    }
  }

  v7 = v5 + 1;
  if (v5 + 1 >= v2)
  {
    goto LABEL_32;
  }

  v8 = ~v5 + v2;
  v9 = (v0 - v6);
  v10 = v9;
  while (*v10)
  {
    ++v7;
    ++v10;
    if (v2 == v7)
    {
      goto LABEL_32;
    }
  }

  if (v2 <= v7)
  {
    goto LABEL_32;
  }

  result = 0xFFFFFFFFLL;
  do
  {
    v12 = *v10++;
    if (v12 == 1)
    {
      break;
    }

    LODWORD(v7) = v7 + 1;
  }

  while (v2 > v7);
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(v9 - 1);
    if (v15 == 1 && !*v9)
    {
      v13 = v5;
    }

    if (!v15 && *v9 == 1)
    {
      v16 = &v4[8 * v14++];
      *v16 = v13 + 1;
      *(v16 + 1) = v5 - v13;
    }

    ++v9;
    LODWORD(v5) = v5 + 1;
    --v8;
  }

  while (v8);
  if (v14 < 1)
  {
LABEL_32:
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = v14;
    v18 = v4 + 4;
    v19 = -1;
    v20 = -1;
    v21 = v18;
    do
    {
      v23 = *v21;
      v21 += 2;
      v22 = v23;
      if (v23 > v19)
      {
        v20 = *(v18 - 1);
        v19 = v22;
      }

      v18 = v21;
      --v17;
    }

    while (v17);
    result = 0xFFFFFFFFLL;
    if (v19 != -1 && v20 != -1)
    {
      result = 0;
      *v1 = v20;
      v1[1] = v19;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19177C394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id obj, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  objc_sync_exit(obj);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_19177D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19177D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19177D744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19177D9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19177DC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id reasonToString(uint64_t a1)
{
  v10[11] = *MEMORY[0x1E69E9840];
  v2 = reasonToString_map;
  if (!reasonToString_map)
  {
    v9[0] = &unk_1F05EE4C0;
    v9[1] = &unk_1F05EE4D8;
    v10[0] = @"Frequent";
    v10[1] = @"Recent";
    v9[2] = &unk_1F05EE4F0;
    v9[3] = &unk_1F05EE508;
    v10[2] = @"TimeOfDay";
    v10[3] = @"Location";
    v9[4] = &unk_1F05EE520;
    v9[5] = &unk_1F05EE538;
    v10[4] = @"Calendar";
    v10[5] = @"RelatedContacts";
    v9[6] = &unk_1F05EE550;
    v9[7] = &unk_1F05EE568;
    v10[6] = @"ObservedInterest";
    v10[7] = @"WaitingForResponse";
    v9[8] = &unk_1F05EE580;
    v9[9] = &unk_1F05EE598;
    v10[8] = @"Keywords";
    v10[9] = @"Active";
    v9[10] = &unk_1F05EE5B0;
    v10[10] = @"Nearby";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:11];
    v4 = reasonToString_map;
    reasonToString_map = v3;

    v2 = reasonToString_map;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v6 = [v2 objectForKeyedSubscript:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_191780914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FTCPPETParticipantReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          v30 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v30 & 0x7F) << v20;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_44;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_40;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_40:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id resolve(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (resolve_onceToken != -1)
  {
    resolve_cold_1();
  }

  v10 = 0;
  v5 = [v4 unifiedContactsMatchingPredicate:v3 keysToFetch:resolve_contactKeysToFetch error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      resolve_cold_2(v6, v7);
    }

    goto LABEL_7;
  }

  if (![v5 count])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = [v5 firstObject];
LABEL_10:

  return v8;
}

void __resolve_block_invoke()
{
  v19[16] = *MEMORY[0x1E69E9840];
  v0 = [getCNContactFormatterClass() descriptorForRequiredKeysForStyle:0];
  v18 = getCNContactIdentifierKey();
  v19[0] = v18;
  v17 = getCNContactNamePrefixKey();
  v19[1] = v17;
  v16 = getCNContactGivenNameKey();
  v19[2] = v16;
  v15 = getCNContactMiddleNameKey();
  v19[3] = v15;
  v14 = getCNContactFamilyNameKey();
  v19[4] = v14;
  v13 = getCNContactPreviousFamilyNameKey();
  v19[5] = v13;
  v1 = getCNContactNameSuffixKey();
  v19[6] = v1;
  v2 = getCNContactNicknameKey();
  v19[7] = v2;
  v3 = getCNContactOrganizationNameKey();
  v19[8] = v3;
  v4 = getCNContactImageDataAvailableKey();
  v19[9] = v4;
  v5 = getCNContactTypeKey();
  v19[10] = v5;
  v6 = getCNContactPhoneNumbersKey();
  v19[11] = v6;
  v7 = getCNContactEmailAddressesKey();
  v19[12] = v7;
  v8 = getCNContactPostalAddressesKey();
  v19[13] = v8;
  v9 = getCNContactInstantMessageAddressesKey();
  v19[14] = v9;
  v19[15] = v0;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:16];
  v11 = resolve_contactKeysToFetch;
  resolve_contactKeysToFetch = v10;

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1917858D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, __CFString *a17, __CFString *a18, uint64_t a19)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v24 = objc_begin_catch(a1);
  v25 = [*(v20 + 648) syncChannel];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    [(_DKCloudUtilities *)v24 _fetchAccountInfoWithCompletionHandler:v25];
  }

  if (!v19)
  {
LABEL_14:

    objc_end_catch();
    JUMPOUT(0x191785898);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v24;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = +[_DKSyncErrors domain];
      a16 = *MEMORY[0x1E696A578];
      v29 = [v24 reason];
      v30 = v29;
      v31 = @"Exception Caught";
      if (v29)
      {
        v31 = v29;
      }

      a17 = @"NSUnderlyingException";
      a18 = v31;
      a19 = v24;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a18 forKeys:&a16 count:2];
      v33 = [v27 errorWithDomain:v28 code:1 userInfo:v32];

      goto LABEL_13;
    }

    v26 = +[_DKSyncErrors internalFailure];
  }

  v33 = v26;
LABEL_13:
  (*(v19 + 16))(v19, v33);

  goto LABEL_14;
}

void sub_191786E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191787094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191787C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191787FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191788320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_1917884C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v1 + 72));
  _Unwind_Resume(a1);
}

void sub_191789280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 200));
  objc_destroyWeak((v4 - 192));
  _Unwind_Resume(a1);
}

void sub_191789968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v1 + 80));
  _Unwind_Resume(a1);
}

void sub_19178B014(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 248));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_19178B378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 104));
  objc_destroyWeak((v1 + 96));
  _Unwind_Resume(a1);
}

void sub_19178BF40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 152));
  _Unwind_Resume(a1);
}

void sub_19178D71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 80));
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_19178D8C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v1 + 80));
  _Unwind_Resume(a1);
}

void sub_19178DD24(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

__n128 OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v11 - 128) = a11.n128_u32[0];
  *(v11 - 124) = a1;
  *(v11 - 116) = 2112;
  return result;
}

id OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t OUTLINED_FUNCTION_36_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [a1 fetchEventsFromPeer:a10 windows:v13 streamNames:v14 limit:v12 fetchOrder:v11 highPriority:v10 completion:?];
}

id OUTLINED_FUNCTION_42(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + 16);

  return a3;
}

void OUTLINED_FUNCTION_43(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t OUTLINED_FUNCTION_48(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [a1 fetchDeletedEventIDsFromPeer:a10 sinceDate:v12 streamNames:v13 limit:v11 highPriority:v10 completion:v14];
}

void OUTLINED_FUNCTION_49(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x34u);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{
  v2 = *(a1 + 32);

  return objc_opt_class();
}

void OUTLINED_FUNCTION_57(void *a1, const char *a2)
{
  v4 = *(v2 + 16);

  objc_setProperty_atomic(a1, a2, v4, 160);
}

void OUTLINED_FUNCTION_58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_59(void *a1, const char *a2)
{
  v4 = *(v2 + 16);

  objc_setProperty_atomic(a1, a2, v4, 160);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1)
{
  v2 = *(a1 + 40);

  return objc_opt_class();
}

BOOL OUTLINED_FUNCTION_63(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t OUTLINED_FUNCTION_77(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [a1 updateStorageWithAddedEvents:a10 deletedEventIDs:v11 highPriority:v10 completion:v12];
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1)
{
  v2 = *(a1 + 32);

  return objc_opt_class();
}

BOOL OUTLINED_FUNCTION_79(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t OUTLINED_FUNCTION_81()
{
  v2 = *v0;

  return [v2 code];
}

void sub_191790918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *mechanismToString(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73681B0[a1];
  }
}

__CFString *directionToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Incoming";
  }

  else
  {
    return off_1E7368258[a1 - 1];
  }
}

uint64_t __initPercentEscapes_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v1 = [v0 mutableCopy];

  [v1 addCharactersInRange:{37, 1}];
  v2 = [v1 copy];

  v3 = percentEscapes;
  percentEscapes = v2;

  v4 = [percentEscapes invertedSet];
  v5 = inversePercentEscapes;
  inversePercentEscapes = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

uint64_t _DKPRStreamReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_DKPRValueType);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !_DKPRValueTypeReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _DKPRValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 3)
        {
          v26 = PBReaderReadString();
          v27 = 40;
LABEL_46:
          v28 = *(a1 + v27);
          *(a1 + v27) = v26;

          goto LABEL_56;
        }

        if (v13 == 4)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35[0] & 0x7F) << v14;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          *(a1 + 24) = v20;
          goto LABEL_56;
        }

LABEL_42:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_56;
      }

      v23 = objc_alloc_init(_DKPRValueType);
      objc_storeStrong((a1 + 48), v23);
      v35[0] = 0;
      v35[1] = 0;
      if (!PBReaderPlaceMark() || !_DKPRValueTypeReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 5:
        *(a1 + 56) |= 2u;
        v35[0] = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35[0];
        v31 = 16;
        goto LABEL_55;
      case 6:
        v26 = PBReaderReadData();
        v27 = 32;
        goto LABEL_46;
      case 7:
        *(a1 + 56) |= 1u;
        v35[0] = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35[0];
        v31 = 8;
LABEL_55:
        *(a1 + v31) = v30;
        goto LABEL_56;
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

id _CDDomainAvailabilityDescription(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"system"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"user"];
  }

  v4 = [v3 componentsJoinedByString:@"|"];

  return v4;
}

void __dataCollectionIsEnabled_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v37 = 0;
  v1 = [v0 getUserDefaultVoiceSubscriptionContext:&v37];
  v2 = v37;
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v36 = 0;
    v12 = [v0 copyMobileSubscriberCountryCode:v1 error:&v36];
    v13 = v36;
    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v35 = 0;
      v22 = [v0 copyMobileSubscriberIsoCountryCode:v12 error:&v35];
      v4 = v35;
      v23 = dataCollectionIsEnabled_countryCode;
      dataCollectionIsEnabled_countryCode = v22;

      if (!dataCollectionIsEnabled_countryCode || v4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          __dataCollectionIsEnabled_block_invoke_cold_1(v4, v26, v27, v28, v29, v30, v31, v32);
        }

        v33 = dataCollectionIsEnabled_countryCode;
        dataCollectionIsEnabled_countryCode = 0;
      }

      else
      {
        if ([dataCollectionIsEnabled_countryCode length])
        {
          v24 = [dataCollectionIsEnabled_countryCode lowercaseString];
          v25 = dataCollectionIsEnabled_countryCode;
          dataCollectionIsEnabled_countryCode = v24;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v34 = 0;
            _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Country code not set", v34, 2u);
          }

          v25 = dataCollectionIsEnabled_countryCode;
          dataCollectionIsEnabled_countryCode = 0;
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = v13;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        __dataCollectionIsEnabled_block_invoke_cold_2(v4, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else
  {
    v4 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __dataCollectionIsEnabled_block_invoke_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void OUTLINED_FUNCTION_4_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_debug_impl(a1, v13, OS_LOG_TYPE_DEBUG, a4, &buf, 0x3Eu);
}

uint64_t PersonLinkingPersonPairReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v16 = objc_alloc_init(PersonLinkingPerson);
        v17 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_41;
        }

        v16 = objc_alloc_init(PersonLinkingPerson);
        v17 = 32;
      }

      objc_storeStrong((a1 + v17), v16);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !PersonLinkingPersonReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_47:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v30[0]) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v30[0] & 0x7F) << v18;
          if ((v30[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_44;
          }
        }

        v24 = (v20 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 40) = v24;
        goto LABEL_47;
      case 4:
        *(a1 + 44) |= 1u;
        LODWORD(v30[0]) = 0;
        v25 = [a2 position] + 4;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v30[0];
        goto LABEL_47;
      case 5:
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;

        goto LABEL_47;
    }

LABEL_41:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_47;
  }

  return [a2 hasError] ^ 1;
}

void sub_19179EEA4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 688), 8);
  _Block_object_dispose((v1 + 736), 8);
  _Unwind_Resume(a1);
}

void __DKOBSERVER_IS_CALLING_ASYNC_INVOCATION__(void *a1)
{
  v2 = a1;
  v1 = objc_autoreleasePoolPush();
  [v2 invoke];
  objc_autoreleasePoolPop(v1);
}

void __DKOBSERVER_IS_CALLING_ASYNC_OUT_TO_A_BLOCK__(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v6[2](v6, v8, v5);
  objc_autoreleasePoolPop(v7);
}

id _DKPrivacySensitiveMetadataKeys()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = +[_DKAppMediaUsageMetadataKey mediaURL];
  v7[0] = v0;
  v1 = +[_DKAppMediaUsageMetadataKey URL];
  v7[1] = v1;
  v2 = +[_DKDigitalHealthMetadataKey webDomain];
  v7[2] = v2;
  v3 = +[_DKDigitalHealthMetadataKey webpageURL];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t InteractionAnalysisPETInteractionEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          case 6:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          default:
LABEL_30:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v22;
            goto LABEL_35;
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          default:
            goto LABEL_30;
        }
      }

      v19 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_35:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MAPIntervalToCDPeriod(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9CC8];
  if (3 * *MEMORY[0x1E69E9CC8] >= a1)
  {
    return 1;
  }

  if (5 * v1 >= a1)
  {
    return 2;
  }

  if (11 * v1 >= a1)
  {
    return 3;
  }

  if (17 * v1 >= a1)
  {
    return 4;
  }

  if (23 * v1 >= a1)
  {
    return 5;
  }

  if (*MEMORY[0x1E69E9CC0] >= a1)
  {
    return 6;
  }

  return 7;
}

void sub_1917A3A18(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1917A449C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1917A4344);
  }

  _Unwind_Resume(exception_object);
}

void sub_1917A6218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1917A68D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t FTCPPETInteractionLogEventReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(FTCPPETInteraction);
        [a1 addInteractions:v21];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !FTCPPETInteractionReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v28 = 16;
LABEL_51:
          *&a1[v28] = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_46;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v24;
    }

LABEL_46:
    v28 = 8;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

void sub_1917AC08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917AE438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1917AE94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t _DKPRCompressedChangeSetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *meetingStatusToString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Pending";
  }

  else
  {
    return off_1E7368730[a1];
  }
}

__CFString *contactIdTypeToString(uint64_t a1)
{
  v1 = @"Person";
  if (a1 == 1)
  {
    v1 = @"Organization";
  }

  if (a1 == 2)
  {
    return @"None";
  }

  else
  {
    return v1;
  }
}

void sub_1917B780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917BB63C(void *a1)
{
  objc_begin_catch(a1);
  dispatch_group_leave(*(v1 + 56));
  objc_exception_rethrow();
}

void sub_1917BB918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1917BBF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1917BC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1917BD24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917BD880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917BDDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917BE410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917BEE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1917C3E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1917C481C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1917C4FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917C56E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917C77E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917C7D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917C80A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917C8B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void __DKSYNCBLOCKOPERATION_IS_CALLING_EXECUTION_BLOCKS__(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        __DKSYNCBLOCKOPERATION_IS_CALLING_OUT_TO_A_BLOCK__(*(*(&v7 + 1) + 8 * v5++));
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __DKSYNCBLOCKOPERATION_IS_CALLING_OUT_TO_A_BLOCK__(void *a1)
{
  v2 = a1;
  v1 = objc_autoreleasePoolPush();
  v2[2]();
  objc_autoreleasePoolPop(v1);
}

void _DKSync3PolicyDuplicateNSStringPropertyValue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = [v6 objectForKeyedSubscript:v5];
  v11 = v10;
  if (isKindOfClass)
  {
    [v7 setObject:v10 forKeyedSubscript:v5];
LABEL_6:

    goto LABEL_7;
  }

  if (v11)
  {
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      _DKSync3PolicyDuplicateNSStringPropertyValue_cold_1();
    }

    goto LABEL_6;
  }

LABEL_7:
}

uint64_t _DKSync3PolicyDoesContainRequiredProperties(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v11), v17}];
        if (!v12)
        {
          v14 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            _DKSync3PolicyDoesContainRequiredProperties_cold_1();
          }

          v13 = 0;
          goto LABEL_13;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v6 objectForKeyedSubscript:{v5, 0}];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue_cold_2();
            }

            goto LABEL_17;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v10 = [v6 objectForKeyedSubscript:v5];
    [v7 setObject:v10 forKeyedSubscript:v5];
    goto LABEL_17;
  }

  v16 = [v6 objectForKeyedSubscript:v5];

  if (v16)
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue_cold_1();
    }

LABEL_17:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1917CD480(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void _DKSync3PolicyDuplicateNSNumberPropertyValue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = [v6 objectForKeyedSubscript:v5];
  v11 = v10;
  if (isKindOfClass)
  {
    [v7 setObject:v10 forKeyedSubscript:v5];
LABEL_6:

    goto LABEL_7;
  }

  if (v11)
  {
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      _DKSync3PolicyDuplicateNSNumberPropertyValue_cold_1();
    }

    goto LABEL_6;
  }

LABEL_7:
}

uint64_t OUTLINED_FUNCTION_28_1(void *a1)
{

  return _DKSync3PolicyDoesContainRequiredProperties(v1, v2, a1);
}

void sub_1917D5F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MailIntelligencePETMailIntelligenceAnalysisEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34[0] & 0x7F) << v23;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_52:
        *(a1 + 16) = v29;
        goto LABEL_57;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34[0] & 0x7F) << v14;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_56;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_56:
          *(a1 + 8) = v20;
          goto LABEL_57;
        }

LABEL_47:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_57;
      }

      v30 = objc_alloc_init(MailIntelligencePETContactEvents);
      objc_storeStrong((a1 + 32), v30);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !MailIntelligencePETContactEventsReadFrom(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_57:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadString();
      v22 = 24;
      goto LABEL_46;
    }

    if (v13 == 2)
    {
      v21 = PBReaderReadString();
      v22 = 40;
LABEL_46:
      v31 = *(a1 + v22);
      *(a1 + v22) = v21;

      goto LABEL_57;
    }

    goto LABEL_47;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return objc_opt_class();
}

id OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return a4;
}

uint64_t CloudFamilyAnalysisPETContactEventsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(CloudFamilyAnalysisPETContactEvent);
        [a1 addContactEvent:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !CloudFamilyAnalysisPETContactEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _DKPREventDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_44;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_44:
        *(a1 + 8) = v29;
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadData();
        v22 = *(a1 + 16);
        *(a1 + 16) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_48:
        *(a1 + 24) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1917E0808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1917EBAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1917ED3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

void sub_1917EE164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1917EE3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1917EF2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917EFEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917F034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_1917F05F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917F0738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917F16DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1917F263C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1917F39AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __51___DKKnowledgeStorage_saveChangeSetsForSync_error___block_invoke_2_cold_1();
    }

    v5 = [(_DKKnowledgeStorage *)*(v2 + 48) errorForException:v3];
    v6 = *(*(v2 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_end_catch();
    JUMPOUT(0x1917F3974);
  }

  _Unwind_Resume(exception_object);
}

void sub_1917F3D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1917F410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917F4758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1917F4E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1917F53B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  a14 = a1;
  a15 = *(v15 + 48);

  return [v16 performWithOptions:4 andBlock:&a9];
}

void OUTLINED_FUNCTION_17_4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t result, float a2)
{
  *(v2 - 144) = a2;
  *(v2 - 140) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_1(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 64);
  a15 = a1;
  a17 = v19;

  return [a1 performBlockAndWait:&a9];
}

void OUTLINED_FUNCTION_26_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_27_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 144), 0x16u);
}

uint64_t ContactsLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = ContactsLibraryCore_frameworkLibrary;
  v6 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7369420;
    v8 = *off_1E7369430;
    v9 = 0;
    v4[3] = _sl_dlopen();
    ContactsLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1917F6BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ContactsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ContactsLibrary()
{
  v0 = ContactsLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getCNContactBirthdayKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactBirthdayKeySymbolLoc_ptr;
  v6 = getCNContactBirthdayKeySymbolLoc_ptr;
  if (!getCNContactBirthdayKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactBirthdayKey");
    getCNContactBirthdayKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F6DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactBirthdayKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactBirthdayKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactBirthdayKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactEmailAddressesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  v6 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F6EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactFamilyNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactFamilyNameKeySymbolLoc_ptr;
  v6 = getCNContactFamilyNameKeySymbolLoc_ptr;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F702C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactGivenNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactGivenNameKeySymbolLoc_ptr;
  v6 = getCNContactGivenNameKeySymbolLoc_ptr;
  if (!getCNContactGivenNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactIdentifierKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactIdentifierKeySymbolLoc_ptr;
  v6 = getCNContactIdentifierKeySymbolLoc_ptr;
  if (!getCNContactIdentifierKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F72A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactImageDataAvailableKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactImageDataAvailableKeySymbolLoc_ptr;
  v6 = getCNContactImageDataAvailableKeySymbolLoc_ptr;
  if (!getCNContactImageDataAvailableKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactImageDataAvailableKey");
    getCNContactImageDataAvailableKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F73E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactImageDataAvailableKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactImageDataAvailableKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactImageDataAvailableKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactInstantMessageAddressesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
  v6 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
  if (!getCNContactInstantMessageAddressesKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactInstantMessageAddressesKey");
    getCNContactInstantMessageAddressesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactInstantMessageAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactInstantMessageAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactInstantMessageAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactMiddleNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactMiddleNameKeySymbolLoc_ptr;
  v6 = getCNContactMiddleNameKeySymbolLoc_ptr;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactNamePrefixKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactNamePrefixKeySymbolLoc_ptr;
  v6 = getCNContactNamePrefixKeySymbolLoc_ptr;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactNamePrefixKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactNamePrefixKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNamePrefixKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactNameSuffixKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactNameSuffixKeySymbolLoc_ptr;
  v6 = getCNContactNameSuffixKeySymbolLoc_ptr;
  if (!getCNContactNameSuffixKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactNameSuffixKey");
    getCNContactNameSuffixKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F78D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactNameSuffixKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactNameSuffixKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNameSuffixKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactNicknameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactNicknameKeySymbolLoc_ptr;
  v6 = getCNContactNicknameKeySymbolLoc_ptr;
  if (!getCNContactNicknameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactNicknameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactNicknameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNicknameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactOrganizationNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactOrganizationNameKeySymbolLoc_ptr;
  v6 = getCNContactOrganizationNameKeySymbolLoc_ptr;
  if (!getCNContactOrganizationNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactOrganizationNameKey");
    getCNContactOrganizationNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactOrganizationNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactOrganizationNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactOrganizationNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactPhoneNumbersKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  v6 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactPostalAddressesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactPostalAddressesKeySymbolLoc_ptr;
  v6 = getCNContactPostalAddressesKeySymbolLoc_ptr;
  if (!getCNContactPostalAddressesKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactPostalAddressesKey");
    getCNContactPostalAddressesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPostalAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPostalAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPostalAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactPreviousFamilyNameKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr;
  v6 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr;
  if (!getCNContactPreviousFamilyNameKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactPreviousFamilyNameKey");
    getCNContactPreviousFamilyNameKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F7EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPreviousFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPreviousFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPreviousFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactRelationsKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactRelationsKeySymbolLoc_ptr;
  v6 = getCNContactRelationsKeySymbolLoc_ptr;
  if (!getCNContactRelationsKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactRelationsKey");
    getCNContactRelationsKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F8038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactRelationsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactRelationsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactRelationsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactSocialProfilesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactSocialProfilesKeySymbolLoc_ptr;
  v6 = getCNContactSocialProfilesKeySymbolLoc_ptr;
  if (!getCNContactSocialProfilesKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactSocialProfilesKey");
    getCNContactSocialProfilesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F8174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactSocialProfilesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactSocialProfilesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactSocialProfilesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactTypeKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactTypeKeySymbolLoc_ptr;
  v6 = getCNContactTypeKeySymbolLoc_ptr;
  if (!getCNContactTypeKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F82B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactUrlAddressesKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactUrlAddressesKeySymbolLoc_ptr;
  v6 = getCNContactUrlAddressesKeySymbolLoc_ptr;
  if (!getCNContactUrlAddressesKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactUrlAddressesKey");
    getCNContactUrlAddressesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F83EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactUrlAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactUrlAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactUrlAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNLabelContactRelationAssistantSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNLabelContactRelationAssistantSymbolLoc_ptr;
  v6 = getCNLabelContactRelationAssistantSymbolLoc_ptr;
  if (!getCNLabelContactRelationAssistantSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNLabelContactRelationAssistant");
    getCNLabelContactRelationAssistantSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F8528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelContactRelationAssistantSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelContactRelationAssistant");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationAssistantSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNLabelContactRelationColleagueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNLabelContactRelationColleagueSymbolLoc_ptr;
  v6 = getCNLabelContactRelationColleagueSymbolLoc_ptr;
  if (!getCNLabelContactRelationColleagueSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNLabelContactRelationColleague");
    getCNLabelContactRelationColleagueSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F8664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelContactRelationColleagueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelContactRelationColleague");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationColleagueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNLabelContactRelationFemaleFriendSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNLabelContactRelationFemaleFriendSymbolLoc_ptr;
  v6 = getCNLabelContactRelationFemaleFriendSymbolLoc_ptr;
  if (!getCNLabelContactRelationFemaleFriendSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNLabelContactRelationFemaleFriend");
    getCNLabelContactRelationFemaleFriendSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelContactRelationFemaleFriendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelContactRelationFemaleFriend");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationFemaleFriendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNLabelContactRelationFriendSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNLabelContactRelationFriendSymbolLoc_ptr;
  v6 = getCNLabelContactRelationFriendSymbolLoc_ptr;
  if (!getCNLabelContactRelationFriendSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNLabelContactRelationFriend");
    getCNLabelContactRelationFriendSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F88DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelContactRelationFriendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelContactRelationFriend");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationFriendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNLabelContactRelationMaleFriendSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNLabelContactRelationMaleFriendSymbolLoc_ptr;
  v6 = getCNLabelContactRelationMaleFriendSymbolLoc_ptr;
  if (!getCNLabelContactRelationMaleFriendSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNLabelContactRelationMaleFriend");
    getCNLabelContactRelationMaleFriendSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F8A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelContactRelationMaleFriendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelContactRelationMaleFriend");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationMaleFriendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNLabelContactRelationManagerSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNLabelContactRelationManagerSymbolLoc_ptr;
  v6 = getCNLabelContactRelationManagerSymbolLoc_ptr;
  if (!getCNLabelContactRelationManagerSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNLabelContactRelationManager");
    getCNLabelContactRelationManagerSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F8B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelContactRelationManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelContactRelationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNLabelContactRelationTeacherSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNLabelContactRelationTeacherSymbolLoc_ptr;
  v6 = getCNLabelContactRelationTeacherSymbolLoc_ptr;
  if (!getCNLabelContactRelationTeacherSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNLabelContactRelationTeacher");
    getCNLabelContactRelationTeacherSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1917F8C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelContactRelationTeacherSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelContactRelationTeacher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelContactRelationTeacherSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCNContactStoreDidChangeNotificationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  v6 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  if (!getCNContactStoreDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v4[3] = dlsym(v1, "CNContactStoreDidChangeNotification");
    getCNContactStoreDidChangeNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}