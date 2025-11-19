uint64_t CADEventAccessTypeFromAuthStatus(uint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 3);
  }
}

id CADEKPersistentEventDefaultPropertiesToLoad()
{
  v19[32] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CF7288];
  v19[0] = *MEMORY[0x277CF73C8];
  v19[1] = v0;
  v1 = *MEMORY[0x277CF7360];
  v19[2] = *MEMORY[0x277CF7318];
  v19[3] = v1;
  v2 = *MEMORY[0x277CF7230];
  v19[4] = *MEMORY[0x277CF72B0];
  v19[5] = v2;
  v3 = *MEMORY[0x277CF7280];
  v19[6] = *MEMORY[0x277CF7238];
  v19[7] = v3;
  v4 = *MEMORY[0x277CF7268];
  v19[8] = *MEMORY[0x277CF7278];
  v19[9] = v4;
  v5 = *MEMORY[0x277CF7290];
  v19[10] = *MEMORY[0x277CF7250];
  v19[11] = v5;
  v6 = *MEMORY[0x277CF72B8];
  v19[12] = *MEMORY[0x277CF7210];
  v19[13] = v6;
  v7 = *MEMORY[0x277CF7240];
  v19[14] = *MEMORY[0x277CF7248];
  v19[15] = v7;
  v8 = *MEMORY[0x277CF7200];
  v19[16] = *MEMORY[0x277CF72E8];
  v19[17] = v8;
  v9 = *MEMORY[0x277CF7370];
  v19[18] = *MEMORY[0x277CF7298];
  v19[19] = v9;
  v10 = *MEMORY[0x277CF7208];
  v19[20] = *MEMORY[0x277CF7348];
  v19[21] = v10;
  v11 = *MEMORY[0x277CF7330];
  v19[22] = *MEMORY[0x277CF7350];
  v19[23] = v11;
  v12 = *MEMORY[0x277CF72F0];
  v19[24] = *MEMORY[0x277CF72A8];
  v19[25] = v12;
  v13 = *MEMORY[0x277CF72F8];
  v19[26] = *MEMORY[0x277CF72A0];
  v19[27] = v13;
  v14 = *MEMORY[0x277CF7358];
  v19[28] = *MEMORY[0x277CF7270];
  v19[29] = v14;
  v15 = *MEMORY[0x277CF7338];
  v19[30] = *MEMORY[0x277CF7228];
  v19[31] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:32];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id CADEventPredicateDescriptionDateFormatter()
{
  if (CADEventPredicateDescriptionDateFormatter_onceToken != -1)
  {
    CADEventPredicateDescriptionDateFormatter_cold_1();
  }

  v1 = CADEventPredicateDescriptionDateFormatter_formatter;

  return v1;
}

void __GetSharedXPCInterfaceForCADInterface_block_invoke()
{
  v26[9] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2837DB770];
  v1 = GetSharedXPCInterfaceForCADInterface___remoteInterface;
  GetSharedXPCInterfaceForCADInterface___remoteInterface = v0;

  v25 = [GetSharedXPCInterfaceForCADInterface___remoteInterface classesForSelector:sel_CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply_ argumentIndex:1 ofReply:0];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v26[4] = objc_opt_class();
  v26[5] = objc_opt_class();
  v26[6] = objc_opt_class();
  v26[7] = objc_opt_class();
  v26[8] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:9];
  v2 = [v25 setByAddingObjectsFromArray:v24];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADObject_getRelatedObjectsWithRelationName_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADObjectsExist_reply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADObjectsExist_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseFetchObjectChangesForEntityTypes_insideObject_reply_ argumentIndex:3 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseExportICSDataForCalendarItems_options_reply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply_ argumentIndex:1 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADEventSetInvitationStatus_forEvents_error_ argumentIndex:1 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseImportEvents_fromICSData_intoCalendarsWithIDs_optionsMask_batchSize_reply_ argumentIndex:2 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseImportEvents_fromICSData_intoCalendarsWithIDs_optionsMask_batchSize_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseFetchCalendarItemsWithPredicate_entityType_fetchIdentifier_synchronous_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetCalendarItemsWithUniqueIdentifier_inCalendar_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetCalendarItemsWithRecurrenceSet_inCalendar_reply_ argumentIndex:1 ofReply:1];
  v3 = GetSharedXPCInterfaceForCADInterface___remoteInterface;
  v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:sel_CADDatabaseSetInitializationOptions_reply_ argumentIndex:0 ofReply:0];

  v5 = GetSharedXPCInterfaceForCADInterface___remoteInterface;
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  [v5 setClasses:v10 forSelector:sel_CADDatabaseConsumeAllChangesUpToToken_except_reply_ argumentIndex:1 ofReply:0];

  v11 = GetSharedXPCInterfaceForCADInterface___remoteInterface;
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
  [v11 setClasses:v16 forSelector:sel_CADDatabaseMarkIndividualChangesConsumed_reply_ argumentIndex:0 ofReply:0];

  v17 = GetSharedXPCInterfaceForCADInterface___remoteInterface;
  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
  [v17 setClasses:v22 forSelector:sel_CADDatabaseFetchChangedObjectIDs_ argumentIndex:3 ofReply:1];

  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply_ argumentIndex:1 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADRemoveCalendarItemsOlderThanDate_ofType_inSource_reply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADSourceGetGrantedDelegatesList_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetAllEventsWithUniqueID_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADObjects_getPropertiesWithNames_reply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADObjects_getPropertiesWithNames_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetSourcesWithFaultedProperties_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetCalendarsWithFaultedProperties_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADOccurrenceCacheGetOccurrenceCountsForCalendars_reply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADOccurrenceCacheGetOccurrencesForCalendars_onDay_reply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADOccurrenceCacheGetOccurrencesForCalendars_onDay_reply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADOccurrenceCacheDoEvents_haveOccurrencesAfterDate_reply_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADOccurrenceCacheSearchWithTerm_inCalendars_responseToken_reply_ argumentIndex:1 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADOccurrenceCacheSearchLocationsWithTerm_inCalendars_responseToken_reply_ argumentIndex:1 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetEventsWithErrorsPerSource_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetSharedCalendarInvitationsWithReply_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetResourceChanges_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetInviteReplyNotifications_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetEventNotificationItemsAfterDate_excludingUncheckedCalendars_filteredByShowsNotificationsFlag_reply_ argumentIndex:2 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetNotificationCountForSourceWithExternalIdentifier_excludingDelegateSources_filteredByShowsNotificationsFlag_expanded_reply_ argumentIndex:2 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetInboxRepliedSectionItems_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADOccurrenceCacheSearchLocationsWithTerm_inCalendars_responseToken_reply_ argumentIndex:1 ofReply:0];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetDeletableCalendars_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseGetDeletableSources_ argumentIndex:1 ofReply:1];
  [GetSharedXPCInterfaceForCADInterface___remoteInterface setClasses:v2 forSelector:sel_CADDatabaseLoadEventsInCalendar_reply_ argumentIndex:1 ofReply:1];

  v23 = *MEMORY[0x277D85DE8];
}

void __GetSharedXPCInterfaceForCADClientInterface_block_invoke()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2837DB858];
  v1 = GetSharedXPCInterfaceForCADClientInterface____clientInterface;
  GetSharedXPCInterfaceForCADClientInterface____clientInterface = v0;

  v2 = [GetSharedXPCInterfaceForCADClientInterface____clientInterface classesForSelector:sel_CADClientReceiveDiagnosticsCollectionResults_forToken_finished_ argumentIndex:0 ofReply:0];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setByAddingObjectsFromArray:v3];
  [GetSharedXPCInterfaceForCADClientInterface____clientInterface setClasses:v4 forSelector:sel_CADClientReceiveDiagnosticsCollectionResults_forToken_finished_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADClientInterface____clientInterface setClasses:v4 forSelector:sel_CADClientReceiveOccurrenceCacheSearchResults_forSearchToken_finished_ argumentIndex:0 ofReply:0];
  [GetSharedXPCInterfaceForCADClientInterface____clientInterface setClasses:v4 forSelector:sel_CADClientReceivePredicateResults_forToken_ argumentIndex:0 ofReply:0];

  v5 = *MEMORY[0x277D85DE8];
}

id GetSharedXPCInterfaceForCADInterface()
{
  if (GetSharedXPCInterfaceForCADInterface_onceToken != -1)
  {
    GetSharedXPCInterfaceForCADInterface_cold_1();
  }

  v1 = GetSharedXPCInterfaceForCADInterface___remoteInterface;

  return v1;
}

id GetSharedXPCInterfaceForCADClientInterface()
{
  if (GetSharedXPCInterfaceForCADClientInterface_onceToken != -1)
  {
    GetSharedXPCInterfaceForCADClientInterface_cold_1();
  }

  v1 = GetSharedXPCInterfaceForCADClientInterface____clientInterface;

  return v1;
}

uint64_t CalAuthorizationStatusFromTCCAuthRight(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result = 3;
      goto LABEL_15;
    }

    if (a2 == 4)
    {
      result = 4;
      goto LABEL_15;
    }
  }

  else
  {
    if (!a2)
    {
      if (TCCAccessRestricted())
      {
        result = 1;
      }

      else
      {
        result = 2;
      }

      goto LABEL_15;
    }

    if (a2 == 1)
    {
      result = TCCAccessRestricted() != 0;
      goto LABEL_15;
    }
  }

  v4 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, "Unexpected tcc_authorization_right_t (int value: %llu): we don't support this kind of authorization.", &v6, 0xCu);
  }

  result = 2;
LABEL_15:
  v5 = *MEMORY[0x277D85DE8];
  return result;
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

uint64_t CreateFilterFromRowIDs(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (([v4 containsObject:{v11, v16}] & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = CalFilterCreateWithDatabaseShowingCalendarsWithUIDsAndEntityType();
  }

  else
  {
    if ([v4 count])
    {
      [v4 allObjects];
      v13 = CalFilterCreateWithDatabaseFilteringCalendarsWithUIDs();
    }

    else
    {
      v13 = CalFilterCreateWithDatabaseShowingAll();
    }

    v12 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void CADAccountManagementFromSource(uint64_t a1)
{
  if (a1 >= 3)
  {
    v1 = MEMORY[0x277CBEAD8];
    v2 = *MEMORY[0x277CBE660];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
    [v1 raise:v2 format:{@"Invalid source account management value: [%@]", v3}];
  }
}

void CalRequestAuthorizationForServiceWithCompletion(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a2;
  v8 = a4;
  v9 = a5;
  if (_getTCCServer_onceToken != -1)
  {
    CalRequestAuthorizationForServiceWithCompletion_cold_1();
  }

  v10 = _getTCCServer_server;
  v11 = tcc_message_options_create();
  v12 = tcc_service_singleton_for_CF_name();
  v13 = v12;
  if (v7 && v10 && v11 && v12)
  {
    tcc_message_options_set_client_dict();
    tcc_message_options_set_reply_handler_policy();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __CalRequestAuthorizationForServiceWithCompletion_block_invoke;
    v16[3] = &unk_27851A3E0;
    v17 = v9;
    v14 = MEMORY[0x22AA4DCD0](v16);
    tcc_server_message_request_authorization_change();
  }

  else
  {
    v15 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_ERROR, "Failed to init at least one tcc parameter.", buf, 2u);
    }

    (*(v9 + 2))(v9, 1, 1015);
  }
}

void __CalRequestAuthorizationForServiceWithCompletion_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = a3;
      v8 = "Failed to request TCC server authorization change: %@";
      v9 = v7;
      v10 = 12;
LABEL_4:
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    }
  }

  else
  {
    if (v5)
    {
      authorization_right = tcc_authorization_record_get_authorization_right();
      goto LABEL_8;
    }

    v13 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v8 = "Received a null authorization record";
      v9 = v13;
      v10 = 2;
      goto LABEL_4;
    }
  }

  authorization_right = 1;
LABEL_8:
  (*(*(a1 + 32) + 16))(*(a1 + 32), authorization_right);

  v12 = *MEMORY[0x277D85DE8];
}

id CalEntityCopyPropertyValues(void *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  cf = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v7;
  v10 = v8;
  obj = v9;
  v11 = [v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    v38 = *MEMORY[0x277CF7570];
    v39 = *v46;
    v36 = a2;
    v37 = v6;
    v35 = v8;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = CalEntityCopyPropertyAllowingLimitedAccess(v6, a2, *(*(&v45 + 1) + 8 * i), &cf, 0);
        v16 = cf;
        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = cf == 0;
        }

        if (v17)
        {
          v18 = cf;
        }

        else
        {
          v19 = CFGetTypeID(cf);
          if (v19 == CPRecordGetTypeID())
          {
            Type = CalEntityGetType();
            ID = CalEntityGetID();
            AuxilliaryDatabaseID = v38;
            if (ID != 0x7FFFFFFF)
            {
              CalGetDatabaseForRecord();
              AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
              CFRelease(v16);
            }

            v18 = CalFetchedObjectDictionary(Type, ID, AuxilliaryDatabaseID, 0);
            cf = v18;
          }

          else
          {
            v23 = CFGetTypeID(v16);
            if (v23 != CFSetGetTypeID())
            {
              goto LABEL_27;
            }

            v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:CFSetGetCount(v16)];
            CalGetDatabaseForRecord();
            v24 = CalDatabaseGetAuxilliaryDatabaseID();
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v25 = v16;
            v26 = [v25 countByEnumeratingWithState:&v41 objects:v50 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v42;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v42 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = CalFetchedObjectDictionary([*(*(&v41 + 1) + 8 * j) entityType], objc_msgSend(*(*(&v41 + 1) + 8 * j), "entityID"), v24, 0);
                  [v18 addObject:v30];
                }

                v27 = [v25 countByEnumeratingWithState:&v41 objects:v50 count:16];
              }

              while (v27);
            }

            CFRelease(v25);
            cf = v18;
            a2 = v36;
            v6 = v37;
            v10 = v35;
          }

          v13 = v39;
        }

        v16 = v18;
        if (v18)
        {
LABEL_27:
          [v10 addObject:v16];
          CFRelease(v16);
          continue;
        }

        v31 = [MEMORY[0x277CBEB68] null];
        [v10 addObject:v31];
      }

      v12 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v12);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t CalEntityCopyPropertyAllowingLimitedAccess(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a1;
  *a4 = 0;
  Type = CalEntityGetType();
  if ([v9 eventAccessLevel] == 1)
  {
    v11 = a5;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0 && CalGetDatabaseForRecord())
  {
    if (Type == 6)
    {
      v12 = CalDatabaseCopyLimitedAccessVirtualStore();
    }

    else
    {
      if (Type != 1)
      {
        goto LABEL_11;
      }

      v12 = CalDatabaseCopyLimitedAccessVirtualCalendar();
    }

    a2 = v12;
  }

LABEL_11:
  if (CalEntityGetPropertyIDFromName(Type, a3) == -1)
  {
    v19 = v9;
    if (CalEntityGetType() == 6 && [a3 isEqualToString:*MEMORY[0x277CF74A0]])
    {
      Property = [v19 managedConfigurationAccountAccessForStore:a2];
      *a4 = CFNumberCreate(0, kCFNumberIntType, &Property);

      v18 = 0;
    }

    else
    {

      if (CalEntityIsDeleted())
      {
        v18 = 1010;
      }

      else
      {
        v18 = 1008;
      }
    }

    goto LABEL_34;
  }

  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  if (!PropertyDescriptor)
  {
    v18 = 1001;
    goto LABEL_34;
  }

  v14 = PropertyDescriptor;
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  IsDeleted = _CalEntityIsDeleted();
  v17 = MEMORY[0x277CF7110];
  if ((IsDeleted & 1) == 0)
  {
    v20 = *(v14 + 8);
    if (v20 > 7)
    {
      goto LABEL_43;
    }

    if (((1 << v20) & 0xCC) != 0)
    {
      if (*MEMORY[0x277CF7110] == 1)
      {
        if (a2)
        {
          if (CPRecordGetStore())
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      v22 = CPRecordCopyProperty();
      goto LABEL_30;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (*MEMORY[0x277CF7110] == 1)
        {
          if (a2)
          {
            if (CPRecordGetStore())
            {
              v25 = CPRecordStoreGetContext();
              if (v25)
              {
                os_unfair_lock_assert_owner(v25 + 20);
              }
            }
          }
        }

        Property = CPRecordGetProperty();
        v22 = CFNumberCreate(0, kCFNumberIntType, &Property);
        goto LABEL_30;
      }

LABEL_43:
      v26 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v27 = *(v14 + 8);
        Property = 67109378;
        *v46 = v27;
        *&v46[4] = 2112;
        *&v46[6] = a3;
        _os_log_impl(&dword_22430B000, v26, OS_LOG_TYPE_ERROR, "Unknown property type %d for name %@", &Property, 0x12u);
      }

      v18 = 1001;
      goto LABEL_31;
    }

    v28 = *(v14 + 16);
    if (v28 == MEMORY[0x277CF76C8])
    {
      v29 = 1;
    }

    else
    {
      v29 = *(v14 + 32);
      if ((v29 - 1) >= 4)
      {
        if (v28 == MEMORY[0x277CF76C0])
        {
          v29 = 2;
        }

        else if (v28 == MEMORY[0x277CF76D0])
        {
          v29 = 3;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    if (*MEMORY[0x277CF7110] == 1)
    {
      if (a2)
      {
        if (CPRecordGetStore())
        {
          v30 = CPRecordStoreGetContext();
          if (v30)
          {
            os_unfair_lock_assert_owner(v30 + 20);
          }
        }
      }
    }

    v31 = CPRecordGetProperty();
    if (v31)
    {
      v32 = v31;
      if (v29 == 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_62:
          v33 = v32;
LABEL_68:
          v22 = CFRetain(v33);
LABEL_30:
          v18 = 0;
          *a4 = v22;
          goto LABEL_31;
        }

        v36 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v37 = v36;
          Property = 138543618;
          *v46 = a3;
          *&v46[8] = 2114;
          *&v46[10] = objc_opt_class();
          v38 = *&v46[10];
          _os_log_impl(&dword_22430B000, v37, OS_LOG_TYPE_ERROR, "Wrong data type for attribute '%{public}@': %{public}@", &Property, 0x16u);
        }

LABEL_71:
        v18 = 1011;
        goto LABEL_31;
      }

      v34 = CFGetTypeID(v31);
      if (v34 == CalRelationGetTypeID())
      {
        RelatedObject = CalRelationGetRelatedObject();
        if ((v11 & 1) == 0)
        {
          RelatedObject = FilterCalendarAndSource(Type, RelatedObject, a3);
        }

        if (RelatedObject)
        {
          v33 = RelatedObject;
          goto LABEL_68;
        }
      }

      else
      {
        if (v34 != CalToManyRelationGetTypeID())
        {
          if (v34 == CFStringGetTypeID() || v34 == CFNumberGetTypeID() || v34 == CFBooleanGetTypeID())
          {
            goto LABEL_62;
          }

          v44 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            Property = 134218242;
            *v46 = v34;
            *&v46[8] = 2112;
            *&v46[10] = a3;
            _os_log_impl(&dword_22430B000, v44, OS_LOG_TYPE_ERROR, "Unknown property typeId %ld for name %@. Assume its a value type and proceed.", &Property, 0x16u);
          }

          goto LABEL_71;
        }

        v18 = CalToManyRelationCopyObjects();
        if (!v18)
        {
          goto LABEL_31;
        }

        v39 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:CFArrayGetCount(v18)];
        Count = CFArrayGetCount(v18);
        if (Count >= 1)
        {
          v41 = Count;
          for (i = 0; i != v41; ++i)
          {
            CFArrayGetValueAtIndex(v18, i);
            v43 = CADEntityCopyObjectIDUnlocked();
            if (v43)
            {
              [v39 addObject:v43];
            }
          }
        }

        *a4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v39];
        CFRelease(v18);
      }
    }

    v18 = 0;
    goto LABEL_31;
  }

  v18 = 1010;
LABEL_31:
  if (*v17 == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
LABEL_34:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

id CADEntityCopyObjectID()
{
  Type = CalEntityGetType();
  ID = CalEntityGetID();
  v2 = 0;
  if (Type >= 1 && ID >= 1)
  {
    if (ID == 0x7FFFFFFF)
    {
      v2 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:Type entityID:0x7FFFFFFFLL];
    }

    else
    {
      CalGetDatabaseForRecord();
      v2 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:Type entityID:ID databaseID:CalDatabaseGetAuxilliaryDatabaseID()];
    }
  }

  return v2;
}

BOOL CalendarCanContainAnAllowedEntityType(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventAccessLevel] && (CalCalendarCanContainEntityTypeAndStoreAllowsIt() & 1) != 0 || objc_msgSend(v2, "reminderAccessGranted") && (CalCalendarCanContainEntityTypeAndStoreAllowsIt() & 1) != 0;

  return v3;
}

uint64_t CalGetEntityIDFromFetchedObjectDictonary(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  v8 = [v7 objectForKeyedSubscript:@"entityType"];
  v9 = [v7 objectForKeyedSubscript:@"rowID"];
  v10 = [v7 objectForKeyedSubscript:@"dbID"];

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    if (a2)
    {
      *a2 = [v8 intValue];
    }

    if (a3)
    {
      *a3 = [v9 intValue];
    }

    if (a4)
    {
      *a4 = [v10 intValue];
    }
  }

  return v12;
}

uint64_t CalEntityGetPropertyIDFromName(int a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v14 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282147350](a2);
    case 2:
    case 3:
      v4 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282147568](a2);
    case 4:
      v16 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282146F88](a2);
    case 5:
      v18 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821486A8](a2);
    case 6:
      v17 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282148940](a2);
    case 7:
      v19 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821470F0](a2);
    case 8:
      v15 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821485D0](a2);
    case 9:
      v13 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282148018](a2);
    case 10:
      v9 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282148448](a2);
    case 11:
      v23 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282147068](a2);
    case 12:
    case 13:
    case 22:
    case 25:
    case 26:
    case 27:
      goto LABEL_9;
    case 14:
      v8 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282148530](a2);
    case 15:
      v7 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282148818](a2);
    case 16:
    case 17:
    case 19:
      goto LABEL_2;
    case 18:
      v22 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821487A0](a2);
    case 20:
      v12 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282148D50](a2);
    case 21:
      v24 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821478D0](a2);
    case 23:
      v10 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821478C0](a2);
    case 24:
      v20 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282147FE0](a2);
    case 28:
      v11 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821484E8](a2);
    case 29:
      v21 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2821478A8](a2);
    default:
      if (a1 == 102)
      {
LABEL_2:
        v3 = *MEMORY[0x277D85DE8];

        return MEMORY[0x282148590](a2);
      }

      else
      {
LABEL_9:
        v5 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v26[0] = 67109378;
          v26[1] = a1;
          v27 = 2080;
          v28 = "CalEntityGetPropertyIDFromName";
          _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, "Invalid entity type [%d] passed to [%s].", v26, 0x12u);
        }

        v6 = *MEMORY[0x277D85DE8];
        return 0xFFFFFFFFLL;
      }
  }
}

uint64_t __CADEventPredicateDescriptionDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = CADEventPredicateDescriptionDateFormatter_formatter;
  CADEventPredicateDescriptionDateFormatter_formatter = v0;

  [CADEventPredicateDescriptionDateFormatter_formatter setDateStyle:1];
  v2 = CADEventPredicateDescriptionDateFormatter_formatter;

  return [v2 setTimeStyle:1];
}

void sub_224313510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CalFetchedObjectDictionary(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    if (a3)
    {
      v26[0] = @"entityType";
      v8 = [MEMORY[0x277CCABB0] numberWithInt:a1];
      v27[0] = v8;
      v26[1] = @"rowID";
      v9 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v27[1] = v9;
      v26[2] = @"dbID";
      v10 = [MEMORY[0x277CCABB0] numberWithInt:a3];
      v26[3] = @"values";
      v27[2] = v10;
      v27[3] = v7;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v27;
      v13 = v26;
      v14 = 4;
LABEL_6:
      v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];

      goto LABEL_10;
    }

    v28[0] = @"entityType";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:a1];
    v29[0] = v8;
    v28[1] = @"rowID";
    v9 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v28[2] = @"values";
    v29[1] = v9;
    v29[2] = v7;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v29;
    v18 = v28;
    v19 = 3;
  }

  else
  {
    if (a3)
    {
      v22[0] = @"entityType";
      v8 = [MEMORY[0x277CCABB0] numberWithInt:a1];
      v23[0] = v8;
      v22[1] = @"rowID";
      v9 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v23[1] = v9;
      v22[2] = @"dbID";
      v10 = [MEMORY[0x277CCABB0] numberWithInt:a3];
      v23[2] = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v23;
      v13 = v22;
      v14 = 3;
      goto LABEL_6;
    }

    v24[0] = @"entityType";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:a1];
    v24[1] = @"rowID";
    v25[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v25[1] = v9;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v25;
    v18 = v24;
    v19 = 2;
  }

  v15 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t CADObjectPassedOrSkippedAccessCheck(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 eventAccessLevel];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 isVirtual];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

const void *CADCopyEntityInDatabase(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1 + 20);
  v4 = _CADGetEntity(a1, v3);

  if (v4)
  {
    CFRetain(v4);
  }

  if (*MEMORY[0x277CF7110] == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t _CADGetEntity(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  _CalDatabaseGetRecordStore();
  v3 = [v2 entityType];
  v4 = 0;
  switch(v3)
  {
    case -1:
      goto LABEL_4;
    case 0:
    case 13:
    case 22:
    case 26:
    case 27:
      goto LABEL_33;
    case 1:
      if ([v2 isVirtual])
      {
        LimitedAccessVirtualCalendar = _CalDatabaseGetLimitedAccessVirtualCalendar();
      }

      else
      {
        [v2 entityID];
        LimitedAccessVirtualCalendar = _CalGetCalendarWithUID();
      }

      goto LABEL_32;
    case 2:
    case 3:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalGetCalendarItemWithRowID();
      goto LABEL_32;
    case 4:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalAlarmGetWithUID();
      goto LABEL_32;
    case 5:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalRecurrenceGetWithUID();
      goto LABEL_32;
    case 6:
      if ([v2 isVirtual])
      {
        LimitedAccessVirtualCalendar = _CalDatabaseGetLimitedAccessVirtualStore();
      }

      else
      {
        [v2 entityID];
        LimitedAccessVirtualCalendar = _CalGetStoreWithUID();
      }

      goto LABEL_32;
    case 7:
    case 8:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalParticipantGetWithUID();
      goto LABEL_32;
    case 9:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalEventActionGetWithUID();
      goto LABEL_32;
    case 10:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalExceptionDateGetWithUID();
      goto LABEL_32;
    case 11:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalAttachmentGetWithUID();
      goto LABEL_32;
    case 12:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalCategoryGetWithUID();
      goto LABEL_32;
    case 14:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalLocationGetWithUID();
      goto LABEL_32;
    case 15:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalShareeGetWithUID();
      goto LABEL_32;
    case 16:
    case 17:
    case 19:
      goto LABEL_9;
    case 18:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalResourceChangeGetWithUID();
      goto LABEL_32;
    case 20:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalSuggestedEventInfoGetWithUID();
      goto LABEL_32;
    case 21:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalContactGetWithUID();
      goto LABEL_32;
    case 23:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalConferenceGetWithUID();
      goto LABEL_32;
    case 24:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalErrorGetWithUID();
      goto LABEL_32;
    case 25:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalAttachmentFileGetWithUID();
      goto LABEL_32;
    case 28:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalImageGetWithUID();
      goto LABEL_32;
    case 29:
      [v2 entityID];
      LimitedAccessVirtualCalendar = _CalColorGetWithUID();
      goto LABEL_32;
    default:
      if ((v3 - 100) >= 2)
      {
        if (v3 == 102)
        {
LABEL_9:
          [v2 entityID];
          LimitedAccessVirtualCalendar = _CalNotificationGetWithUID();
LABEL_32:
          v4 = LimitedAccessVirtualCalendar;
        }
      }

      else
      {
LABEL_4:
        v6 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v7 = v6;
          v10[0] = 67109120;
          v10[1] = [v2 entityType];
          _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "Unknown entity type in CADCopyEntity (type = %i)", v10, 8u);
        }

        v4 = 0;
      }

LABEL_33:

      v8 = *MEMORY[0x277D85DE8];
      return v4;
  }
}

uint64_t CADEntityIsInRestrictedStore(void *a1, const void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1;
  Type = CalEntityGetType();
  v13 = Type;
  v7 = owningEntity(a2, &v13);
  if (!v7 || (CalEntityIsVirtual() & 1) == 0)
  {
    if (v13 > 5)
    {
      if (v13 != 101)
      {
        if (v13 == 17)
        {
          v9 = [v5 isNotificationRestricted:v7 forAction:a3];
          goto LABEL_18;
        }

        if (v13 == 6)
        {
          v9 = [v5 isStoreRestricted:v7 forAction:a3];
          goto LABEL_18;
        }

LABEL_13:
        if (v7)
        {
          if ((CalEntityIsNew() & 1) == 0)
          {
            v10 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              v15 = v13;
              v16 = 1024;
              v17 = Type;
              _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Internal error: missed entity type in CADEntityAccessIsDenied: %i (from original entityType %i)", buf, 0xEu);
            }
          }
        }

        goto LABEL_3;
      }
    }

    else if ((v13 - 2) >= 2)
    {
      if (v13 == 1)
      {
        v9 = [v5 isCalendarRestricted:v7 forAction:a3];
LABEL_18:
        v8 = v9;
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v9 = [v5 isCalendarItemRestricted:v7 forAction:a3];
    goto LABEL_18;
  }

LABEL_3:
  v8 = 0;
LABEL_19:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

CFTypeRef owningEntity(CFTypeRef a1, int *a2)
{
  Type = CalEntityGetType();
  if (!a1)
  {
LABEL_27:
    if (a2)
    {
      goto LABEL_28;
    }

    return a1;
  }

  v5 = -1;
  while (2)
  {
    switch(Type)
    {
      case 4:
        v6 = CalAlarmCopyOwningEntity();
        goto LABEL_24;
      case 5:
        v6 = CalRecurrenceCopyOwner();
        goto LABEL_24;
      case 6:
      case 12:
      case 13:
      case 22:
      case 26:
      case 27:
        goto LABEL_27;
      case 7:
      case 8:
        goto LABEL_23;
      case 9:
        v6 = CalEventActionCopyOwningEvent();
        goto LABEL_24;
      case 10:
        v6 = CalExceptionDateCopyOwner();
        goto LABEL_24;
      case 11:
        v6 = CalAttachmentCopyOwner();
        goto LABEL_24;
      case 14:
        v6 = CalLocationCopyOwner();
        goto LABEL_24;
      case 15:
        v6 = CalShareeCopyOwner();
        goto LABEL_24;
      case 16:
      case 17:
      case 19:
        goto LABEL_7;
      case 18:
        v7 = CalResourceChangeCopyNotification();
        if (v7)
        {
          v8 = v7;
          v9 = CalNotificationCopyOwner();
          CFRelease(v8);
LABEL_25:
          if (!v9)
          {
            goto LABEL_27;
          }

          a1 = CFAutorelease(v9);
          Type = CalEntityGetType();
          if (++v5 >= 5)
          {
            goto LABEL_27;
          }

          continue;
        }

        Type = 18;
        if (!a2)
        {
          return a1;
        }

LABEL_28:
        *a2 = Type;
        return a1;
      case 20:
        v6 = CalSuggestedEventInfoCopyOwner();
        goto LABEL_24;
      case 21:
        v6 = CalContactCopyOwner();
        goto LABEL_24;
      case 23:
        v6 = CalConferenceCopyOwner();
        goto LABEL_24;
      case 24:
        v6 = CalErrorCopyOwner();
        goto LABEL_24;
      case 25:
        v6 = CalAttachmentFileCopyStore();
        goto LABEL_24;
      case 28:
        v6 = CalImageCopyStore();
        goto LABEL_24;
      case 29:
        v6 = CalColorCopyStore();
        goto LABEL_24;
      default:
        if (Type == 100)
        {
LABEL_23:
          v6 = CalParticipantCopyOwner();
        }

        else
        {
          if (Type != 102)
          {
            goto LABEL_27;
          }

LABEL_7:
          v6 = CalNotificationCopyOwner();
        }

LABEL_24:
        v9 = v6;
        goto LABEL_25;
    }
  }
}

uint64_t _minimumAuthStatus(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = 2;
      if (a1 != 2)
      {
        v4 = 4;
        v5 = a2 == 3 || a1 == 3;
        v6 = 3;
        if (!v5)
        {
          v6 = 0;
        }

        if (a2 == 4)
        {
          v6 = 4;
        }

        if (a1 != 4)
        {
          v4 = v6;
        }

        if (a2 == 1)
        {
          v4 = 1;
        }

        if (a1 == 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v4;
        }

        if (a2 != 2)
        {
          return v7;
        }
      }
    }
  }

  return result;
}

void sub_224319214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243195B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224319AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224319EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___auditTokenForCurrentProcess_block_invoke()
{
  task_info_outCnt = 8;
  v0 = task_info(*MEMORY[0x277D85F48], 0xFu, &_auditTokenForCurrentProcess_token, &task_info_outCnt);
  if (v0)
  {
    v1 = v0;
    v2 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_FAULT))
    {
      ___auditTokenForCurrentProcess_block_invoke_cold_1(v1, v2);
    }
  }
}

uint64_t ___processIdentifierForCurrentProcess_block_invoke()
{
  result = getpid();
  _processIdentifierForCurrentProcess_pid = result;
  return result;
}

void sub_22431B9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22431CE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22431D024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22431D39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431E124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431EC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431F028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22431F444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22431F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22431F94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_22431FF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224321094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243212D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t CADSourceFromAccountManagement(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CBEAD8];
    v3 = *MEMORY[0x277CBE660];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    [v2 raise:v3 format:{@"Invalid account management value: [%@]", v4}];
  }

  return v1;
}

unint64_t CADTargetFromAccountManagement(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CBEAD8];
    v3 = *MEMORY[0x277CBE660];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    [v2 raise:v3 format:{@"Invalid account management value: [%@]", v4}];
  }

  return v1;
}

void CADAccountManagementFromTarget(uint64_t a1)
{
  if (a1 >= 3)
  {
    v1 = MEMORY[0x277CBEAD8];
    v2 = *MEMORY[0x277CBE660];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
    [v1 raise:v2 format:{@"Invalid target account management value: [%@]", v3}];
  }
}

void sub_224326CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, char a50)
{
  objc_destroyWeak((v50 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void sub_224327D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void CADStatsRegisterCollectionCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  os_unfair_lock_lock(&statsCollectionCallbacksLock);
  v5 = statsCollectionCallbacks;
  if (!statsCollectionCallbacks)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = statsCollectionCallbacks;
    statsCollectionCallbacks = v6;

    v5 = statsCollectionCallbacks;
  }

  v8 = [CADStatsCallback alloc];
  v9 = [v3 copy];

  v10 = [(CADStatsCallback *)v8 initWithEventName:v4 callback:v9];
  [v5 addObject:v10];

  os_unfair_lock_unlock(&statsCollectionCallbacksLock);
}

void CADStatsCollectWithAllStatCollectorsAndContext(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = createStatsInstances(1);
  CADStatsCollectWithStatCollectorsAndContext(v5, v4, v3);
}

void CADStatsCollectWithStatCollectorsAndContext(void *a1, void *a2, void *a3)
{
  v170 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  mach_absolute_time();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v122 = objc_opt_new();
  v121 = objc_opt_new();
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v158 objects:v169 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v159;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v159 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v158 + 1) + 8 * i);
        [v16 prepareWithContext:v6];
        if ([v16 wantsStores])
        {
          [v8 addObject:v16];
        }

        if ([v16 wantsCalendars])
        {
          [v9 addObject:v16];
        }

        if ([v16 wantsOccurrences])
        {
          [v10 addObject:v16];
        }

        if ([v16 wantsEvents])
        {
          [v122 addObject:v16];
        }

        if ([v16 wantsReminders])
        {
          [v121 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v158 objects:v169 count:16];
    }

    while (v13);
  }

  [v6 database];
  v116 = v10;
  v117 = v8;
  v120 = v9;
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v17 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEBUG, "Collecting statistics about stores and calendars.", buf, 2u);
    }

    v18 = CalDatabaseCopyOfAllStores();
    if (v18)
    {
      v19 = v18;
      cf = v7;
      Count = CFArrayGetCount(v18);
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v20 = v8;
      v21 = [v20 countByEnumeratingWithState:&v154 objects:v168 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v155;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v155 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v154 + 1) + 8 * j) processStores:v19];
          }

          v22 = [v20 countByEnumeratingWithState:&v154 objects:v168 count:16];
        }

        while (v22);
      }

      if (Count >= 1)
      {
        for (k = 0; k != Count; ++k)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v19, k);
          v27 = CalStoreCopyCalendars();
          v150 = 0u;
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v28 = v9;
          v29 = [v28 countByEnumeratingWithState:&v150 objects:v167 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v151;
            do
            {
              for (m = 0; m != v30; ++m)
              {
                if (*v151 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                [*(*(&v150 + 1) + 8 * m) processCalendars:v27 inStore:ValueAtIndex];
              }

              v30 = [v28 countByEnumeratingWithState:&v150 objects:v167 count:16];
            }

            while (v30);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          v9 = v120;
        }
      }

      CFRelease(v19);
      v7 = cf;
      v10 = v116;
      v8 = v117;
    }
  }

  else
  {
    v106 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v106, OS_LOG_TYPE_DEBUG, "Skipping statistics for stores and calendars because nobody's interested.", buf, 2u);
    }
  }

  Mutable = CFArrayCreateMutable(0, 1, MEMORY[0x277CBF128]);
  v34 = CalDatabaseCopyBirthdayCalendar();
  if (v34)
  {
    v35 = v34;
    CFArrayAppendValue(Mutable, v34);
    CFRelease(v35);
  }

  v36 = CFArrayCreateMutable(0, 1, MEMORY[0x277CBF128]);
  v37 = CalDatabaseCopyStoreWithExternalID();
  if (v37)
  {
    v38 = v37;
    v39 = CalDatabaseCopyCalendarWithExternalIDInStore();
    if (v39)
    {
      v40 = v39;
      CFArrayAppendValue(v36, v39);
      CFArrayAppendValue(Mutable, v40);
      CFRelease(v40);
    }

    CFRelease(v38);
  }

  v119 = CalFilterCreateWithDatabaseFilteringCalendars();
  CFRelease(Mutable);
  cfa = CalFilterCreateWithDatabaseShowingCalendars();
  CFRelease(v36);
  v41 = [v10 count];
  v42 = CADLogHandle;
  v43 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
  if (v41)
  {
    if (v43)
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v42, OS_LOG_TYPE_DEBUG, "Collecting statistics about occurrences.", buf, 2u);
    }

    v112 = CalDatabaseCopyEventOccurrenceCache();
    v44 = CalEventOccurrenceCacheCopyTimeZone();
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v45 = v10;
    v46 = [v45 countByEnumeratingWithState:&v146 objects:v166 count:16];
    if (v46)
    {
      v47 = v46;
      v108 = v44;
      v48 = 0;
      v49 = *v147;
      do
      {
        for (n = 0; n != v47; ++n)
        {
          if (*v147 != v49)
          {
            objc_enumerationMutation(v45);
          }

          v51 = [*(*(&v146 + 1) + 8 * n) desiredOccurrenceRange];
          v52 = v51;
          if (v51)
          {
            if (v48)
            {
              v53 = [v48 unionRange:v51];

              v48 = v53;
            }

            else
            {
              v48 = v51;
            }
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v146 objects:v166 count:16];
      }

      while (v47);

      v44 = v108;
      if (v48)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }

    v55 = objc_alloc(MEMORY[0x277CF7860]);
    v56 = [MEMORY[0x277CBEAA8] date];
    v109 = [v55 initWithDate:v56 timeZone:v44];

    v107 = [v109 calendarDateByAddingDays:-1];
    v57 = [v109 calendarDateByAddingDays:365];
    v58 = v44;
    v59 = objc_alloc(MEMORY[0x277CF77A0]);
    v60 = [v107 date];
    v61 = [v57 date];
    v62 = v59;
    v44 = v58;
    v48 = [v62 initWithStartDate:v60 endDate:v61];

LABEL_69:
    v63 = [v48 startDate];
    v64 = [v48 endDate];
    v141 = MEMORY[0x277D85DD0];
    v142 = 3221225472;
    v143 = __CADStatsCollectWithStatCollectorsAndContext_block_invoke;
    v144 = &unk_27851A3B8;
    v145 = v45;
    v54 = v119;
    CalEventOccurrenceCacheProcessEventOccurrencesInDateRange();

    CalDatabaseReset();
    CFRelease(v112);

    v8 = v117;
    goto LABEL_70;
  }

  v54 = v119;
  if (v43)
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v42, OS_LOG_TYPE_DEBUG, "Skipping statistics about occurrences because nobody's interested.", buf, 2u);
  }

LABEL_70:
  v65 = [v122 count];
  v66 = CADLogHandle;
  v67 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
  if (v65)
  {
    if (v67)
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v66, OS_LOG_TYPE_DEBUG, "Collecting statistics about events.", buf, 2u);
    }

    v136 = MEMORY[0x277D85DD0];
    v137 = 3221225472;
    v138 = __CADStatsCollectWithStatCollectorsAndContext_block_invoke_62;
    v139 = &unk_27851A3B8;
    v140 = v122;
    CalDatabaseProcessEventsWithCalendarFilter();
  }

  else if (v67)
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v66, OS_LOG_TYPE_DEBUG, "Skipping statistics about events because nobody's interested.", buf, 2u);
  }

  v68 = [v121 count];
  v69 = CADLogHandle;
  v70 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
  if (v68)
  {
    if (v70)
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v69, OS_LOG_TYPE_DEBUG, "Collecting statistics about reminders.", buf, 2u);
    }

    v113 = CalDatabaseCopyEventOccurrenceCache();
    v71 = CalEventOccurrenceCacheCopyTimeZone();
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v72 = v121;
    v73 = [v72 countByEnumeratingWithState:&v132 objects:v165 count:16];
    if (v73)
    {
      v74 = v73;
      v110 = v71;
      v75 = 0;
      v76 = *v133;
      do
      {
        for (ii = 0; ii != v74; ++ii)
        {
          if (*v133 != v76)
          {
            objc_enumerationMutation(v72);
          }

          v78 = [*(*(&v132 + 1) + 8 * ii) desiredReminderRange];
          v79 = v78;
          if (v78)
          {
            if (v75)
            {
              v80 = [v75 unionRange:v78];

              v75 = v80;
            }

            else
            {
              v75 = v78;
            }
          }
        }

        v74 = [v72 countByEnumeratingWithState:&v132 objects:v165 count:16];
      }

      while (v74);

      v54 = v119;
      v71 = v110;
      if (v75)
      {
        goto LABEL_96;
      }
    }

    else
    {
    }

    v82 = objc_alloc(MEMORY[0x277CF7860]);
    v83 = [MEMORY[0x277CBEAA8] date];
    v111 = [v82 initWithDate:v83 timeZone:v71];

    v84 = [v111 calendarDateByAddingDays:-1];
    v85 = [v111 calendarDateByAddingDays:14];
    v86 = v71;
    v87 = objc_alloc(MEMORY[0x277CF77A0]);
    v88 = [v84 date];
    v89 = [v85 date];
    v90 = v87;
    v71 = v86;
    v75 = [v90 initWithStartDate:v88 endDate:v89];

    v54 = v119;
LABEL_96:
    v91 = [v75 startDate];
    v92 = [v75 endDate];
    v127 = MEMORY[0x277D85DD0];
    v128 = 3221225472;
    v129 = __CADStatsCollectWithStatCollectorsAndContext_block_invoke_63;
    v130 = &unk_27851A3B8;
    v131 = v72;
    v81 = cfa;
    CalEventOccurrenceCacheProcessEventOccurrencesInDateRange();

    CalDatabaseReset();
    CFRelease(v113);

    v8 = v117;
    goto LABEL_97;
  }

  v81 = cfa;
  if (v70)
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v69, OS_LOG_TYPE_DEBUG, "Skipping statistics about reminders because nobody's interested.", buf, 2u);
  }

LABEL_97:
  CFRelease(v81);
  CFRelease(v54);
  mach_absolute_time();
  CalAnalyticsTimeIntervalFromMachTimes();
  v94 = v93;
  v95 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v164 = v94;
    _os_log_impl(&dword_22430B000, v95, OS_LOG_TYPE_INFO, "Finished collecting stats in [%f] seconds", buf, 0xCu);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v96 = v11;
  v97 = [v96 countByEnumeratingWithState:&v123 objects:v162 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v124;
    do
    {
      for (jj = 0; jj != v98; ++jj)
      {
        if (*v124 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = *(*(&v123 + 1) + 8 * jj);
        v102 = [v101 eventDictionaries];
        v103 = [v101 eventName];
        if ([v102 count])
        {
          v104 = v103 == 0;
        }

        else
        {
          v104 = 1;
        }

        if (!v104)
        {
          [v7 setObject:v102 forKeyedSubscript:v103];
        }
      }

      v98 = [v96 countByEnumeratingWithState:&v123 objects:v162 count:16];
    }

    while (v98);
  }

  v105 = *MEMORY[0x277D85DE8];
}

id createStatsInstances(char a1)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  v29[4] = objc_opt_class();
  v29[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];
  v3 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ((a1 & 1) != 0 || [*(*(&v23 + 1) + 8 * i) enabled])
        {
          v10 = [objc_msgSend(v9 "alloc")];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  os_unfair_lock_lock(&statsCollectionCallbacksLock);
  v11 = [statsCollectionCallbacks copy];
  os_unfair_lock_unlock(&statsCollectionCallbacksLock);
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        if ((a1 & 1) != 0 || [*(*(&v19 + 1) + 8 * j) enabled])
        {
          [v3 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

void __CADStatsCollectWithStatCollectorsAndContext_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v7++) processOccurrences:{a2, v10}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "null array passed to processing block", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __CADStatsCollectWithStatCollectorsAndContext_block_invoke_62(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) processEvents:{a2, v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __CADStatsCollectWithStatCollectorsAndContext_block_invoke_63(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) processReminders:{a2, v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void CADStatsCollect()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = createStatsInstances(0);
  if ([v0 count])
  {
    v1 = objc_opt_new();
    v16 = objc_alloc_init(CADStatCollectionContext);
    CADStatsCollectWithStatCollectorsAndContext(v0, v16, v1);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      do
      {
        v6 = 0;
        do
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [v2 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v6)];
          v8 = v7;
          if (v7)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v9 = [v7 countByEnumeratingWithState:&v17 objects:v26 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v18;
              do
              {
                v12 = 0;
                do
                {
                  if (*v18 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v13 = *(*(&v17 + 1) + 8 * v12);
                  CalAnalyticsSendEvent();
                  ++v12;
                }

                while (v10 != v12);
                v10 = [v8 countByEnumeratingWithState:&v17 objects:v26 count:16];
              }

              while (v10);
            }
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v14 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_DEBUG, "Not running stats collection because all events are disabled", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t ___getTCCServer_block_invoke()
{
  _getTCCServer_server = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void sub_22432A370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22432A9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22432B01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 232), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_22432C130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22432C388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22432C818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22432D5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

BOOL _shouldSaveCallback(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _occurrenceIDForComponent(a1);
  v6 = [v4 objectForKey:v5];

  return v6 != 0;
}

id _copyExternalIDCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = _occurrenceIDForComponent(a1);
  v5 = [v3 objectForKey:v4];

  v6 = [MEMORY[0x277CBEB68] null];

  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

void sub_22432E550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22432E75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22432EB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22432EFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224330618(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose(&STACK[0x388], 8);
  _Unwind_Resume(a1);
}

void _recursivelyFindAndReplacePropertyFromRebasedObject(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v14 = [v11 objectForKeyedSubscript:v10];
  v15 = [v14 valueForKey:v12];

  if (!v15)
  {
    v16 = [v11 objectForKeyedSubscript:v10];
    v17 = *MEMORY[0x277CF73E0];
    v18 = [v16 valueForKey:*MEMORY[0x277CF73E0]];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    v38 = 0;
    if (v18)
    {
      do
      {
        v19 = [v11 objectForKeyedSubscript:v18];
        v20 = [v19 valueForKey:v12];
        v21 = v34[5];
        v34[5] = v20;

        if (v34[5])
        {
          break;
        }

        if (![v18 isTemporary])
        {
          if (!v34[5])
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = ___recursivelyFindAndReplacePropertyFromRebasedObject_block_invoke;
            v26[3] = &unk_27851A818;
            v18 = v18;
            v27 = v18;
            v31 = &v39;
            v28 = v9;
            v29 = v12;
            v32 = &v33;
            v30 = v10;
            [v28 withDatabaseForObject:v18 perform:v26];
          }

          break;
        }

        v22 = [v11 objectForKeyedSubscript:v18];
        v23 = [v22 valueForKey:v17];

        v18 = v23;
      }

      while (v23);
    }

    if (v34[5] && !*(v40 + 6))
    {
      v24 = [v13 objectForKeyedSubscript:v10];
      v25 = [v24 mutableCopy];

      [v13 setObject:v25 forKeyedSubscript:v10];
      [v25 setObject:v34[5] forKeyedSubscript:v12];
    }

    _Block_object_dispose(&v33, 8);
  }

  _Block_object_dispose(&v39, 8);
}

void sub_224330A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_224331A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _CADGetExistingOrInsertedEntity(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if ([v6 isTemporary])
  {
    v7 = [v5 objectForKeyedSubscript:v6];

    v6 = v7;
  }

  else
  {
    v7 = _CADGetEntity(a1, v6);
  }

  return v7;
}

void sub_224333364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id convertDefaultValueToNil(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v1 doubleValue], v2 == 0.0))
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

void sub_2243343D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_224334B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224334D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224334F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id _occurrenceIDForComponent(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 uid];
    v4 = [v2 recurrence_id];
    v5 = [v4 value];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 icsString];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v3, v7];
    }

    else
    {
      v8 = v3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void ___handleNewCreatedEvents_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AA4B950](a3, [*(a1 + 32) entityID]);
  if (v4)
  {
    v5 = v4;
    v6 = CalCalendarItemCopyCalendar();
    if (v6)
    {
      v7 = v6;
      v8 = CADEntityCopyObjectID();
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      CFRelease(v7);
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1008;
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1010;
  }
}

void ___recursivelyFindAndReplacePropertyFromRebasedObject_block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v14 = 0;
    if (CalEntityCopyPropertyAllowingLimitedAccess(*(a1 + 40), v4, *(a1 + 48), &v14, 1))
    {
      v6 = 1;
    }

    else
    {
      v6 = v14 == 0;
    }

    if (v6)
    {
      v7 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 48);
        v9 = *(a1 + 56);
        v10 = *(a1 + 32);
        *buf = 138412802;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "Error when retrieving %@ for rebased item %@ from %@", buf, 0x20u);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1008;
    }

    else
    {
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v14;
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1010;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2243376C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void CADLogInitIfNeeded()
{
  if (CADLogInitIfNeeded_onceToken != -1)
  {
    CADLogInitIfNeeded_cold_1();
  }
}

uint64_t __CADLogInitIfNeeded_block_invoke()
{
  v0 = os_log_create("com.apple.calendar.daemon", "Daemon");
  v1 = CADLogHandle;
  CADLogHandle = v0;

  v2 = os_log_create("com.apple.calendar.daemon", "ManagedConfiguration");
  v3 = CADMCLogHandle;
  CADMCLogHandle = v2;

  v4 = os_log_create("com.apple.calendar.daemon", "Notification");
  v5 = CADNotificationLogHandle;
  CADNotificationLogHandle = v4;

  v6 = os_log_create("com.apple.calendar.daemon", "Predicates");
  v7 = CADPredicateSignpostsHandle;
  CADPredicateSignpostsHandle = v6;

  v8 = os_log_create("com.apple.calendar.daemon", "Spotlight");
  v9 = CADSpotlightHandle;
  CADSpotlightHandle = v8;

  CADAppEntityHandle = os_log_create("com.apple.calendar.daemon", "AppEntity");

  return MEMORY[0x2821F96F8]();
}

void sub_22433813C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2243387E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224338C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243390A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22433944C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_224339A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22433AB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22433BB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22433C26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22433D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224340678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_224341D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224341FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22434225C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_224342458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224343140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCADXPCProxyHelperLogHandle()
{
  if (getCADXPCProxyHelperLogHandle_onceToken != -1)
  {
    getCADXPCProxyHelperLogHandle_cold_1();
  }

  v1 = getCADXPCProxyHelperLogHandle_loggingHandle;

  return v1;
}

void sub_22434363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __getCADXPCProxyHelperLogHandle_block_invoke()
{
  getCADXPCProxyHelperLogHandle_loggingHandle = os_log_create(CADCalendarLogSubsystem, "CADXPCProxyHelper");

  return MEMORY[0x2821F96F8]();
}

void sub_224344520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224344770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CADPackedArrayInsert(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = (*a1 & 1) == 0;
    *a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  if ((v6 & 0x100000000) != 0)
  {
    v9 = malloc_type_malloc(0x10uLL, 0x100004052888210uLL);
    *a1 = v9;
    *v9 = v6 >> 1;
    v9[1] = v6 >> 33;
    *(v9 + 1) = 0;
    v6 = v9;
LABEL_10:
    if (!*&v4 || (v10 = *(v6 + 4 * (*&v4 - 1)), v10 < 0))
    {
      v12 = v3 | 0x80000000;
      do
      {
        v11 = *(v6 + 4 * *&v4);
        *(v6 + 4 * (*&v4)++) = v12;
        v12 = v11;
      }

      while (v11 < 0);
    }

    else
    {
      v11 = v3 & 0x7FFFFFFF;
      *(v6 + 4 * (*&v4 - 1)) = v10 | 0x80000000;
    }

    if (*&v4 >= 4uLL)
    {
      v13 = vcnt_s8(v4);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] <= 1uLL)
      {
        v14 = malloc_type_realloc(v6, 8 * *&v4, 0x100004052888210uLL);
        v6 = v14;
        if (2 * *&v4)
        {
          v15 = &v14[4 * *&v4];
          if (2 * *&v4 <= (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) + 1)
          {
            v16 = (*&v4 & 0x7FFFFFFFFFFFFFFFLL) + 1;
          }

          else
          {
            v16 = 2 * *&v4;
          }

          bzero(v15, 4 * (v16 - *&v4));
        }

        *a1 = v6;
      }
    }

    *(v6 + 4 * *&v4) = v11;
    return;
  }

  if (!a2)
  {
    v8 = (2 * a3) | (v6 << 32) | 1;
    goto LABEL_25;
  }

  if (a2 == 1)
  {
    v8 = v6 | (a3 << 33) | 0x100000000;
LABEL_25:
    *a1 = v8;
    return;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Index (%lu) beyond bounds (%i)", a2, 1}];
}

void CADPackedArrayRemove(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((v3 & 1) == 0)
  {
    v4 = (v3 + 4 * a2);
    if ((*v4 & 0x80000000) != 0)
    {
      do
      {
        v5 = a2 + 1;
        v6 = (v3 + 4 * a2);
        v7 = v6[1];
        *v6 = v7;
        ++a2;
      }

      while (v7 < 0);
    }

    else
    {
      *(v4 - 1) &= ~0x80000000;
      v5 = a2;
    }

    if (v5 == 2)
    {
      *a1 = (2 * *v3) | (*(v3 + 4) << 33) | 0x100000001;

      free(v3);
    }

    else if ((v5 & (v5 - 1)) == 0)
    {
      *a1 = malloc_type_realloc(v3, 4 * v5, 0x100004052888210uLL);
    }

    return;
  }

  if (!a2)
  {
    v8 = HIDWORD(v3);
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v8 = v3;
LABEL_15:
    *a1 = v8;
    return;
  }

  v9 = 1;
  if ((v3 & 0x100000000) != 0)
  {
    v9 = 2;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Index %lu beyond bounds %lu", a2, v9}];
}

uint64_t CADPackedArrayCount(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1)
  {
    v1 = 1;
    if ((a1 & 0x100000000) != 0)
    {
      return 2;
    }
  }

  else
  {
    v1 = 0;
    do
    {
      v2 = *(a1 + 4 * v1++);
    }

    while (v2 < 0);
  }

  return v1;
}

unint64_t CADPackedArrayRead(unint64_t a1, uint64_t a2, BOOL *a3)
{
  if (a1)
  {
    if (a2 == 1)
    {
      if (a3)
      {
        *a3 = 1;
      }

      return a1 >> 33;
    }

    else
    {
      if (!a2 && a3)
      {
        *a3 = (a1 & 0x100000000) == 0;
      }

      return a1 >> 1;
    }
  }

  else
  {
    v3 = *(a1 + 4 * a2);
    if (a3)
    {
      *a3 = v3 >= 0;
    }

    return v3 & 0x7FFFFFFF;
  }
}

void CADPackedArrayRemoveAll(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (v2 & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(v2);
  }

  *a1 = 0;
}

void CADPackedArrayFree(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (v2 & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(v2);
    *a1 = 0;
  }
}

__CFString *CalRedactString(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = @"<private>";
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v6 = CalRedactURLString();
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_22;
      }

      v6 = ICSRedactString();
    }

    goto LABEL_18;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        goto LABEL_22;
      }

      v6 = v3;
LABEL_18:
      v5 = v6;
      goto LABEL_22;
    }

    v7 = [MEMORY[0x277D7F0B0] parseableDocumentFromICS:v3 options:257];
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_10:
    if (_sortICSDocuments)
    {
      v8 = 20;
    }

    else
    {
      v8 = 16;
    }

    v9 = [v7 ICSStringWithOptions:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Parse failure: Failed to generate redacted ICS original ICS had length %lu]", objc_msgSend(v4, "length")];;
    }

    v5 = v11;

    goto LABEL_21;
  }

  v13 = 0;
  v7 = [objc_alloc(MEMORY[0x277D7F108]) initWithICSString:v3 options:257 error:&v13];

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_16:
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Parse failure: Bad ICS. %lu characters]", objc_msgSend(v4, "length")];
LABEL_21:

LABEL_22:

  return v5;
}

uint64_t writeNextTaskHeader(FILE *a1, FILE *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __writeNextTaskHeader_block_invoke;
  v26[3] = &unk_27851AFD0;
  v26[4] = &v31;
  v26[5] = &v35;
  v26[6] = &v39;
  v26[7] = &v27;
  v4 = MEMORY[0x22AA4DCD0](v26);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __writeNextTaskHeader_block_invoke_2;
  v25[3] = &unk_27851AFF8;
  v25[5] = &v39;
  v25[6] = a1;
  v25[4] = &v35;
  v5 = MEMORY[0x22AA4DCD0](v25);
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v6 = *(v28 + 6);
          if (v6 <= 1)
          {
            break;
          }

          if (v6 == 2)
          {
            v11 = fgetc(a1);
            switch(v11)
            {
              case -1:
                goto LABEL_20;
              case 60:
                v12 = 2;
                v13 = "<<<< ";
                goto LABEL_22;
              case 62:
                v12 = 1;
                v13 = ">>>> ";
LABEL_22:
                *(v32 + 6) = v12;
                ++*(v40 + 6);
                if ((v5)[2](v5, v13, 1))
                {
                  v10 = 3;
                  goto LABEL_27;
                }

                break;
              default:
                ungetc(v11, a1);
LABEL_20:
                v4[2](v4);
                break;
            }
          }

          else if (v6 == 3)
          {
            v9 = fgetc(a1);
            ++*(v40 + 6);
            if (v9 == 10)
            {
              goto LABEL_29;
            }
          }
        }

        if (v6)
        {
          break;
        }

        if (((v5)[2](v5, "\nTask ", 0) & 1) == 0)
        {
          goto LABEL_29;
        }

        v10 = 1;
LABEL_27:
        *(v28 + 6) = v10;
      }
    }

    while (v6 != 1);
    v7 = fgetc(a1);
    ++*(v40 + 6);
    if (v7 == 10)
    {
      break;
    }

    if ((v7 - 58) <= 0xFFFFFFF5)
    {
      goto LABEL_20;
    }
  }

  v8 = fgetc(a1);
  if (v8 == 10)
  {
    ++*(v40 + 6);
    v10 = 2;
    goto LABEL_27;
  }

  if (v8 != 82)
  {
    ungetc(v8, a1);
    goto LABEL_20;
  }

  ungetc(82, a1);
  *(v32 + 6) = 3;
LABEL_29:
  if (*(v36 + 6) >= 1)
  {
    fprintf(a2, "[Parse failure: %i unparsed bytes prior to task header]\n", *(v36 + 6));
  }

  if (*(v32 + 6))
  {
    v14 = fseek(a1, -*(v40 + 6), 1);
    *(v40 + 6);
    MEMORY[0x28223BE20](v14);
    v16 = &v25[-1] - v15;
    v18 = v17;
    if (fread(&v25[-1] - v15, v17, 1uLL, a1) == 1)
    {
      fwrite(v16, v18, 1uLL, a2);
    }

    else
    {
      v20 = +[CalDAVTrafficLogScrubber log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        writeNextTaskHeader_cold_1(a1);
      }
    }

    v21 = *(v40 + 6);
    if (v18 < v21)
    {
      fprintf(a2, "<truncated %i bytes of task header>\n", v21 - v18);
    }

    v19 = *(v32 + 6);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_22434BEC4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 128), 8);
  _Block_object_dispose((v1 + 160), 8);
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void *__writeNextTaskHeader_block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = 0;
  *(*(result[5] + 8) + 24) += *(*(result[6] + 8) + 24);
  *(*(result[6] + 8) + 24) = 0;
  *(*(result[7] + 8) + 24) = 0;
  return result;
}

uint64_t __writeNextTaskHeader_block_invoke_2(uint64_t a1, _BYTE *a2, int a3)
{
  if (*a2)
  {
    v6 = 0;
    v7 = a2;
    while (1)
    {
      v8 = getc(*(a1 + 48));
      if (v8 == -1)
      {
        return 0;
      }

      if (v8 == *v7)
      {
        ++v6;
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) += *(*(*(a1 + 40) + 8) + 24) + v6;
        *(*(*(a1 + 40) + 8) + 24) = 0;
        if (a3)
        {
          ungetc(v8, *(a1 + 48));
          return 0;
        }

        if (v6)
        {
          ungetc(v8, *(a1 + 48));
          v6 = 0;
        }

        else
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }
      }

      v7 = &a2[v6];
      if (!*v7)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_13:
    *(*(*(a1 + 40) + 8) + 24) += v6;
    return 1;
  }
}

uint64_t __writeRequest_block_invoke()
{
  writeRequest_knownMethods = [MEMORY[0x277CBEB98] setWithObjects:{@"GET", @"HEAD", @"POST", @"PUT", @"DELETE", @"CONNECT", @"OPTIONS", @"TRACE", @"PATCH", @"PROPFIND", @"PROPPATCH", @"MKCOL", @"COPY", @"MOVE", @"LOCK", @"UNLOCK", @"MKCALENDAR", @"REPORT", @"VERSION-CONTROL", @"CHECKOUT", @"CHECKIN", @"UNCHECKOUT", @"MKWORKSPACE", @"UPDATE", @"LABEL", @"MERGE", @"BASELINE-CONTROL", @"MKACTIVITY", @"ORDERPATCH", @"ACL", 0}];

  return MEMORY[0x2821F96F8]();
}

void fputNSString(FILE *a1, void *a2)
{
  v4 = [a2 dataUsingEncoding:4];
  v3 = v4;
  fwrite([v4 bytes], objc_msgSend(v4, "length"), 1uLL, a1);
}

id readFromFileUntilStringAndReturnData(FILE *a1, _BYTE *a2, int a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x461EAC62uLL);
  if (*a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 2048;
    v10 = a2;
    do
    {
      v11 = getc(a1);
      if (v11 == -1)
      {
        break;
      }

      if (v11 == *v10)
      {
        ++v8;
      }

      else
      {
        v8 = v11 == *a2;
      }

      v6[v7] = v11;
      if (v9 <= v7 + 1)
      {
        v9 *= 2;
        v12 = reallocf(v6, v9);
        if (!v12)
        {
          v17 = +[CalDAVTrafficLogScrubber log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            readFromFileUntilStringAndReturnData_cold_1();
          }

          v16 = 0;
          goto LABEL_31;
        }

        v6 = v12;
      }

      v10 = &a2[v8];
      ++v7;
    }

    while (*v10);
    if (a3)
    {
      goto LABEL_20;
    }

    if (v7 >= 2)
    {
      v13 = 2415919360;
      v14 = *v6;
      if (!*v6)
      {
        goto LABEL_30;
      }

      if (v14 == 254)
      {
        v15 = v6[1];
        if (v15 == 255)
        {
          goto LABEL_30;
        }
      }

      else if (v14 == 255)
      {
        v15 = v6[1];
        if (v15 == 254)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v15 = v6[1];
      }

      if (!v15)
      {
LABEL_34:
        v13 = 2483028224;
        goto LABEL_30;
      }
    }

    v13 = 4;
    goto LABEL_30;
  }

  v8 = 0;
  if (!a3)
  {
    v13 = 4;
    LODWORD(v7) = 0;
LABEL_30:
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v6 length:v7 - v8 encoding:v13 freeWhenDone:1];
    goto LABEL_31;
  }

  LODWORD(v7) = 0;
LABEL_20:
  v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:v7 - v8];
LABEL_31:

  return v16;
}

uint64_t __writeHttpStatus_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" .0123456789"];
  v1 = [v0 invertedSet];
  v2 = writeHttpStatus_disallowedCharacters;
  writeHttpStatus_disallowedCharacters = v1;

  writeHttpStatus_expectedStatusDescriptions = [MEMORY[0x277CBEB98] setWithObjects:{@"Unrecognized Status Code", @"Continue", @"Switching Protocols", @"OK", @"Created", @"Accepted", @"Non Authoritative Information", @"No Content", @"Reset Content", @"Partial Content", @"Multiple Choices", @"Moved Permanently", @"Found", @"See Other", @"Not Modified", @"Use Proxy", @"Temporary Redirect", @"Bad Request", @"Unauthorized", @"Payment Required", @"Forbidden", @"Not Found", @"Method Not Allowed", @"Not Acceptable", @"Proxy Authentication Required", @"Request Timeout", @"Conflict", @"Gone", @"Length Required", @"Precondition Failed", @"Request Entity Too Large", @"Request URI Too Long", @"Unsupported Media Type", @"Requested Range Not Satisfiable", @"Expectation Failed", @"I'm a teapot", @"Internal Server Error", @"Not Implemented", @"Bad Gateway", @"Service Unavailable", @"Gateway Timeout", @"HTTP Version Not Supported", @"Multi-Status", @"Unprocessable Entity", @"Locked", @"Failed Dependency", @"Insufficient Storage", 0}];

  return MEMORY[0x2821F96F8]();
}

void __getHeaderRedactionBehaviors_block_invoke()
{
  v0 = getHeaderRedactionBehaviors_headerRedactionBehaviors;
  getHeaderRedactionBehaviors_headerRedactionBehaviors = &unk_2837C7570;
}

uint64_t checkForString(FILE *a1, _BYTE *a2, char a3)
{
  if (*a2)
  {
    v5 = 0;
    v6 = a2 + 1;
    while (1)
    {
      v7 = fgetc(a1);
      if (v7 == -1)
      {
        return 0;
      }

      if (v7 != *(v6 - 1))
      {
        break;
      }

      v8 = *v6++;
      --v5;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v9 = 0;
    --v5;
    goto LABEL_12;
  }

  v5 = 0;
LABEL_8:
  v9 = 1;
  if ((a3 & 1) == 0)
  {
LABEL_12:
    fseek(a1, v5, 1);
  }

  return v9;
}

CalXMLElementRedactionRule *___createRedactionRules_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 objectForKeyedSubscript:v7];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
  }

  v11 = objc_alloc_init(CalXMLElementRedactionRule);
  [(CalXMLElementRedactionRule *)v11 setElementName:5];
  [(CalXMLElementRedactionRule *)v11 setContent:a4];
  [(CalXMLElementRedactionRule *)v11 setCdata:a4];
  [v10 setObject:v11 forKeyedSubscript:v9];

  return v11;
}

CalXMLAttributeRedactionRule *___createRedactionRules_block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  v8 = [v6 attributes];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    [v6 setAttributes:v8];
  }

  v9 = objc_alloc_init(CalXMLAttributeRedactionRule);
  [(CalXMLAttributeRedactionRule *)v9 setAttributeName:5];
  [(CalXMLAttributeRedactionRule *)v9 setAttributeValue:a4];
  [v8 setObject:v9 forKeyedSubscript:v7];

  return v9;
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

char *urlStringRedactor(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:a2 length:*a3 encoding:4 freeWhenDone:0];
  v5 = CalRedactURLString();
  v6 = [v5 UTF8String];
  *a3 = strlen(v6);
  v7 = strdup(v6);

  return v7;
}

_BYTE *blobRedactor(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  if (a2)
  {
    v6 = malloc_type_malloc(0x15uLL, 0x8FC55E0uLL);
    if (v6)
    {
      v7 = *a3;
      ICSRedactBytes();
      v6[20] = 0;
      *a3 = 20;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_22434EACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22434EFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_22434F2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22435058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _resourceChangeDeletionQueue()
{
  if (_resourceChangeDeletionQueue_queueCreationGuard != -1)
  {
    _resourceChangeDeletionQueue_cold_1();
  }

  v1 = _resourceChangeDeletionQueue_queue;

  return v1;
}

void ___resourceChangeDeletionQueue_block_invoke()
{
  objc_opt_class();
  v0 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
  v1 = [v0 UTF8String];

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v2 = dispatch_queue_create(v1, v4);
  v3 = _resourceChangeDeletionQueue_queue;
  _resourceChangeDeletionQueue_queue = v2;
}

void sub_2243548AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22435677C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKCalendarVisibilityManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __EventKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27851B270;
    v6 = 0;
    EventKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary)
  {
    __getEKCalendarVisibilityManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("EKCalendarVisibilityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getEKCalendarVisibilityManagerClass_block_invoke_cold_1();
  }

  getEKCalendarVisibilityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22435AF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CalendarDiagnosticsLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CalendarDiagnosticsLibraryCore_frameworkLibrary)
  {
    CalendarDiagnosticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CalendarDiagnosticsLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CalendarDiagnosticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CalendarDiagnosticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCalDiagObfuscatorClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!CalendarDiagnosticsLibraryCore())
  {
    __getCalDiagObfuscatorClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("CalDiagObfuscator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalDiagObfuscatorClass_block_invoke_cold_1();
  }

  getCalDiagObfuscatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22435DD10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 152));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

__CFArray *createArrayOfRecordIDsFromXPCArray(void *a1)
{
  v1 = a1;
  count = xpc_array_get_count(v1);
  Mutable = CFArrayCreateMutable(0, count, MEMORY[0x277CBF128]);
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      xpc_array_get_uint64(v1, i);
      v5 = CalRecordIDCreate();
      CFArrayAppendValue(Mutable, v5);
      CFRelease(v5);
    }
  }

  return Mutable;
}

void sub_22435F268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

__CFString *_CADStringFromXPCActivityState(unint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 >= 6)
  {
    v3 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = v3;
      v6 = [v4 numberWithLong:a1];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, "WARNING: Cannot convert unrecognized state: [%@] to a string. Returning nil as a result.", &v8, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = off_27851B4C0[a1];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_224360B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _CADPropertySearchPredicateExtendWhereClause(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    switch(a2)
    {
      case 2:
        [v5 appendString:v6];
        break;
      case 1:
        [v5 appendFormat:@" OR %@", v6];
        break;
      case 0:
        [v5 appendFormat:@" AND %@", v6];
        break;
    }

    v8 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CCAB68] stringWithString:v6];
  }

  v9 = v8;

  return v9;
}

uint64_t _CADPropertySearchPredicateGetAllowedFilterTypes()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
}

__CFString **getSearchPropertyInfo(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_27851B4F0[a1];
  }
}

void sub_224363E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_224364320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224364454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243645D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CADEKPersistentEventMinimumDefaultPropertiesToLoad()
{
  v6[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CF7318];
  v6[0] = *MEMORY[0x277CF7288];
  v6[1] = v0;
  v1 = *MEMORY[0x277CF7290];
  v6[2] = *MEMORY[0x277CF7250];
  v6[3] = v1;
  v2 = *MEMORY[0x277CF7248];
  v6[4] = *MEMORY[0x277CF7270];
  v6[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_224364FB4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_224365420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_224365818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_224365A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224366D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224366F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22436723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2243673B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    NSLog(&cfstr_ExceptionRaise.isa);
    *(*(*(v9 + 48) + 8) + 24) = 1001;

    objc_end_catch();
    JUMPOUT(0x22436738CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_224367510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224367650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243677B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2243688BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22436A3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22436D724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 232), 8);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _CalEntitySetProperty(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  Type = _CalEntityGetType();
  v8 = a3;
  if (CalEntityGetPropertyIDFromName(Type, v8) != -1)
  {
    PropertyDescriptor = CPRecordGetPropertyDescriptor();
    if (PropertyDescriptor)
    {
      v10 = PropertyDescriptor;
      if (*(PropertyDescriptor + 8))
      {
        v11 = 0;
        goto LABEL_5;
      }

      v15 = *(PropertyDescriptor + 16);
      if (v15 != MEMORY[0x277CF76C8])
      {
        v11 = *(PropertyDescriptor + 32);
        if ((v11 - 1) >= 4)
        {
          v22 = 3;
          if (v15 != MEMORY[0x277CF76D0])
          {
            v22 = 0;
          }

          if (v15 == MEMORY[0x277CF76C0])
          {
            v11 = 2;
          }

          else
          {
            v11 = v22;
          }
        }

        else if (v11 == 1)
        {
          goto LABEL_25;
        }

LABEL_5:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ((*(v10 + 8) | 2) != 2)
          {
            v12 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (*(v10 + 8) != 3)
            {
              v12 = CADLogHandle;
              if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
              {
LABEL_50:
                v23 = v12;
                v32 = 138543618;
                v33 = v8;
                v34 = 2114;
                v35 = objc_opt_class();
                v24 = v35;
                _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_ERROR, "Wrong data type for attribute '%{public}@': %{public}@", &v32, 0x16u);
              }

LABEL_51:
              v13 = 1011;
              goto LABEL_52;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = *(v10 + 8);
              if (v20)
              {
                if (v20 == 1)
                {
                  [a4 intValue];
                  if (a2)
                  {
                    if (*MEMORY[0x277CF7110])
                    {
                      if (CPRecordGetStore())
                      {
                        Context = CPRecordStoreGetContext();
                        if (Context)
                        {
                          os_unfair_lock_assert_owner(Context + 20);
                        }
                      }
                    }
                  }

                  goto LABEL_20;
                }

                if (v20 != 6)
                {
                  v12 = CADLogHandle;
                  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_51;
                }
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (*(v10 + 8) != 7)
                {
                  v12 = CADLogHandle;
                  if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_50;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (v11 != 3)
                  {
                    v12 = CADLogHandle;
                    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_51;
                    }

                    goto LABEL_50;
                  }
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (a4)
                    {
                      v28 = CADLogHandle;
                      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        v29 = v28;
                        v32 = 138412290;
                        v33 = objc_opt_class();
                        v30 = v33;
                        _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_ERROR, "Value of class '%@' not handled.", &v32, 0xCu);
                      }

                      goto LABEL_21;
                    }

                    if (a2)
                    {
                      if (*MEMORY[0x277CF7110])
                      {
                        if (CPRecordGetStore())
                        {
                          v31 = CPRecordStoreGetContext();
                          if (v31)
                          {
                            os_unfair_lock_assert_owner(v31 + 20);
                          }
                        }
                      }
                    }

                    goto LABEL_20;
                  }

                  if (v11 != 4)
                  {
                    v12 = CADLogHandle;
                    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_51;
                    }

                    goto LABEL_50;
                  }
                }
              }
            }
          }
        }

        if (a2)
        {
          if (*MEMORY[0x277CF7110])
          {
            if (CPRecordGetStore())
            {
              v14 = CPRecordStoreGetContext();
              if (v14)
              {
                os_unfair_lock_assert_owner(v14 + 20);
              }
            }
          }
        }

LABEL_20:
        CPRecordSetProperty();
LABEL_21:
        v13 = 0;
        goto LABEL_52;
      }

LABEL_25:
      if (a2)
      {
        if (*MEMORY[0x277CF7110])
        {
          if (CPRecordGetStore())
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }
      }

      Property = CPRecordGetProperty();
      if (Property && (v18 = CFGetTypeID(Property), v18 == CalRelationGetTypeID()))
      {
        CalRelationSetRelatedObject();
      }

      else
      {
        v21 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v32 = 138412290;
          v33 = v8;
          _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_ERROR, "Expected relation for property %@", &v32, 0xCu);
        }
      }

      goto LABEL_21;
    }

LABEL_35:
    v13 = 1001;
    goto LABEL_52;
  }

  if (Type == 6 && ([v8 isEqualToString:*MEMORY[0x277CF74A8]] & 1) != 0)
  {
    goto LABEL_21;
  }

  if ((_CalEntityIsDeleted() & 1) == 0)
  {
    v19 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v32 = 138412546;
      v33 = v8;
      v34 = 1024;
      LODWORD(v35) = Type;
      _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Invalid attribute name '%@' passed for entity type %d", &v32, 0x12u);
    }

    goto LABEL_35;
  }

  v13 = 1010;
LABEL_52:

  v25 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t FilterCalendarAndSource(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (CalGetDatabaseForRecord())
  {
    if (a1 == 1)
    {
      if ([v5 isEqualToString:*MEMORY[0x277CF72C0]])
      {
        LimitedAccessVirtualStore = _CalDatabaseGetLimitedAccessVirtualStore();
        goto LABEL_8;
      }
    }

    else if (a1 == 2 && [v5 isEqualToString:*MEMORY[0x277CF7200]])
    {
      LimitedAccessVirtualStore = _CalDatabaseGetLimitedAccessVirtualCalendar();
LABEL_8:
      a2 = LimitedAccessVirtualStore;
    }
  }

  return a2;
}

__CFString *CADAccountActionDescription(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Write";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Read";
  }
}

void sub_224371580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224373EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

uint64_t CADEntityIsInManagedStore(void *a1, const void *a2)
{
  v3 = a1;
  Type = CalEntityGetType();
  v9 = Type;
  v5 = owningEntity(a2, &v9);
  if (v9 <= 5)
  {
    if (v9 - 2 >= 2)
    {
      if (v9 == 1)
      {
        v6 = [v3 isCalendarManaged:v5];
LABEL_9:
        v7 = v6;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_8:
    v6 = [v3 isCalendarItemManaged:v5];
    goto LABEL_9;
  }

  if (v9 == 101)
  {
    goto LABEL_8;
  }

  if (v9 == 6)
  {
    v6 = [v3 isStoreManaged:v5];
    goto LABEL_9;
  }

LABEL_11:
  if (v5)
  {
    NSLog(&cfstr_InternalErrorM.isa, v9, Type);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t CADEntityExistsInDatabaseAndIsAccessible(os_unfair_lock_s *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = CADCopyEntityInDatabase(a1, a3);
  if (v8)
  {
    v9 = v8;
    v10 = CADEntityIsInRestrictedStore(v7, v8, a4) ^ 1;
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void _CADDeleteEntity(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  Type = _CalEntityGetType();
  switch(Type)
  {
    case 1:
      v16 = *MEMORY[0x277D85DE8];

      _CalRemoveCalendar();
      return;
    case 2:
      v21 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149020](a1, 0, 0);
      return;
    case 3:
      DatabaseForRecord = CalGetDatabaseForRecord();
      v19 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149078](DatabaseForRecord, a1);
      return;
    case 4:
      v26 = *MEMORY[0x277D85DE8];

      MEMORY[0x282148FE0](a1);
      return;
    case 5:
      v22 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149050](a1);
      return;
    case 6:
      v17 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149068](a1);
      return;
    case 7:
      v14 = *MEMORY[0x277D85DE8];

      MEMORY[0x282148FF0](a1);
      return;
    case 8:
      v25 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149048](a1);
      return;
    case 9:
      v20 = *MEMORY[0x277D85DE8];

      MEMORY[0x282148F58](a1);
      return;
    case 10:
      if (_CalExceptionDateGetOwner())
      {
        _CalCalendarItemRemoveExceptionDate();
      }

      v15 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149028](a1);
      return;
    case 11:
      v12 = *MEMORY[0x277D85DE8];

      MEMORY[0x282148FE8](a1);
      return;
    case 12:
      v11 = *MEMORY[0x277D85DE8];

      MEMORY[0x282148E18](a1);
      return;
    case 13:
    case 22:
    case 25:
    case 26:
    case 27:
      goto LABEL_6;
    case 14:
      v13 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149038](a1);
      return;
    case 15:
      v7 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149060](a1);
      return;
    case 16:
    case 17:
    case 19:
      goto LABEL_2;
    case 18:
      v27 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149058](a1);
      return;
    case 20:
      v8 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149070](a1);
      return;
    case 21:
      v9 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149010](a1);
      return;
    case 23:
      v24 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149008](a1);
      return;
    case 24:
      v28 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149018](a1);
      return;
    case 28:
      v23 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149030](a1);
      return;
    case 29:
      v10 = *MEMORY[0x277D85DE8];

      MEMORY[0x282149000](a1);
      return;
    default:
      if (Type == 102)
      {
LABEL_2:
        v3 = *MEMORY[0x277D85DE8];

        MEMORY[0x282149040](a1);
      }

      else
      {
LABEL_6:
        v4 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v5 = v4;
          v29[0] = 67109120;
          v29[1] = _CalEntityGetType();
          _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, "Unknown entity type in _CADDeleteEntity (%i)", v29, 8u);
        }

        v6 = *MEMORY[0x277D85DE8];
      }

      return;
  }
}

id CADEntityCopyObjectIDUnlocked()
{
  Type = _CalEntityGetType();
  ID = CPRecordGetID();
  v2 = 0;
  if (Type >= 1 && ID >= 1)
  {
    CalGetDatabaseForRecord();
    v2 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:Type entityID:ID databaseID:CalDatabaseGetAuxilliaryDatabaseID()];
  }

  return v2;
}

void sub_224376B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437897C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224378D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_224378FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2243792D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224379594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2243797F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2243799C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224379B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224379DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22437A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437A24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22437A4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22437A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437AD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437B988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437C1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22437C3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437C568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22437C7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22437CA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void ___auditTokenForCurrentProcess_block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_22430B000, a2, OS_LOG_TYPE_FAULT, "Failed to get audit token for current process. Result = %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void writeNextTaskHeader_cold_1(FILE *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  ferror(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void readFromFileUntilStringAndReturnData_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0(&dword_22430B000, v0, v1, "Unable to realloc %i bytes", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __getEKCalendarVisibilityManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKCalendarVisibilityManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CADNotificationUtilities.m" lineNumber:35 description:{@"Unable to find class %s", "EKCalendarVisibilityManager"}];

  __break(1u);
}

void __getEKCalendarVisibilityManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *EventKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CADNotificationUtilities.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void __getCalDiagObfuscatorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCalDiagObfuscatorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CADDiagnosticsDiagnosticDatabaseCollector.m" lineNumber:19 description:{@"Unable to find class %s", "CalDiagObfuscator"}];

  __break(1u);
}

void __getCalDiagObfuscatorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CalendarDiagnosticsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CADDiagnosticsDiagnosticDatabaseCollector.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}