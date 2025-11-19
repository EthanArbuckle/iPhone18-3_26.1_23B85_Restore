void sub_19763F7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id LNDaemonRegistryXPCInterface()
{
  if (LNDaemonRegistryXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNDaemonRegistryXPCInterface_onceToken, &__block_literal_global_1466);
  }

  v1 = LNDaemonRegistryXPCInterface_interface;

  return v1;
}

void __LNDaemonRegistryXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF4BC8];
  v1 = LNDaemonRegistryXPCInterface_interface;
  LNDaemonRegistryXPCInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v113 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v110 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v111 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v112 = [v17 setWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_fetchDatabaseURL_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_fetchDatabaseURL_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClasses:v8 forSelector:sel_actionsWithReply_ argumentIndex:0 ofReply:1];
  v21 = LNDaemonRegistryXPCInterface_interface;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v21 setClasses:v24 forSelector:sel_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_reply_ argumentIndex:0 ofReply:0];

  [LNDaemonRegistryXPCInterface_interface setClasses:v8 forSelector:sel_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  v25 = LNDaemonRegistryXPCInterface_interface;
  v26 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v25 setClasses:v28 forSelector:sel_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_reply_ argumentIndex:0 ofReply:0];

  v29 = LNDaemonRegistryXPCInterface_interface;
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
  [v29 setClasses:v33 forSelector:sel_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_reply_ argumentIndex:1 ofReply:0];

  [LNDaemonRegistryXPCInterface_interface setClasses:v8 forSelector:sel_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionsAndSystemProtocolDefaultsForBundleIdentifier_reply_ argumentIndex:0 ofReply:0];
  v34 = LNDaemonRegistryXPCInterface_interface;
  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = [v35 setWithObjects:{v36, v37, v38, v39, v40, objc_opt_class(), 0}];
  [v34 setClasses:v41 forSelector:sel_actionsAndSystemProtocolDefaultsForBundleIdentifier_reply_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionsAndSystemProtocolDefaultsForBundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  v42 = LNDaemonRegistryXPCInterface_interface;
  v43 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
  [v42 setClasses:v45 forSelector:sel_actionsWithFullyQualifiedIdentifiers_reply_ argumentIndex:0 ofReply:0];

  [LNDaemonRegistryXPCInterface_interface setClasses:v8 forSelector:sel_actionsWithFullyQualifiedIdentifiers_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClasses:v113 forSelector:sel_actionsForBundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClasses:v113 forSelector:sel_actionsForBundleIdentifier_andActionIdentifier_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionIdentifiersForBundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClasses:v113 forSelector:sel_openActionsForTypeIdentifier_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_openActionsForTypeIdentifier_bundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClasses:v113 forSelector:sel_openCollectionActionsForEntityTypeIdentifier_capabilities_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_openCollectionActionsForEntityTypeIdentifier_capabilities_bundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  v46 = LNDaemonRegistryXPCInterface_interface;
  v47 = MEMORY[0x1E695DFD8];
  v48 = objc_opt_class();
  v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
  [v46 setClasses:v49 forSelector:sel_bundleRegistrationsWithReply_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClasses:v112 forSelector:sel_queriesWithReply_ argumentIndex:0 ofReply:1];
  v50 = LNDaemonRegistryXPCInterface_interface;
  v51 = MEMORY[0x1E695DFD8];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  [v50 setClasses:v53 forSelector:sel_queriesForBundleIdentifier_ofType_reply_ argumentIndex:0 ofReply:1];

  v54 = LNDaemonRegistryXPCInterface_interface;
  v55 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v54 setClasses:v55 forSelector:sel_queriesWithCapabilities_inputValueType_resultValueType_reply_ argumentIndex:1 ofReply:0];

  v56 = LNDaemonRegistryXPCInterface_interface;
  v57 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v56 setClasses:v57 forSelector:sel_queriesWithCapabilities_inputValueType_resultValueType_reply_ argumentIndex:2 ofReply:0];

  v58 = LNDaemonRegistryXPCInterface_interface;
  v59 = MEMORY[0x1E695DFD8];
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = [v59 setWithObjects:{v60, v61, v62, objc_opt_class(), 0}];
  [v58 setClasses:v63 forSelector:sel_queriesWithCapabilities_inputValueType_resultValueType_reply_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClasses:v111 forSelector:sel_enumsWithReply_ argumentIndex:0 ofReply:1];
  v64 = LNDaemonRegistryXPCInterface_interface;
  v65 = MEMORY[0x1E695DFD8];
  v66 = objc_opt_class();
  v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
  [v64 setClasses:v67 forSelector:sel_enumsForBundleIdentifier_reply_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClasses:v110 forSelector:sel_entitiesWithReply_ argumentIndex:0 ofReply:1];
  v68 = LNDaemonRegistryXPCInterface_interface;
  v69 = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
  [v68 setClasses:v71 forSelector:sel_entitiesForBundleIdentifier_reply_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_entityIdentifiersForBundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  v72 = LNDaemonRegistryXPCInterface_interface;
  v73 = MEMORY[0x1E695DFD8];
  v74 = objc_opt_class();
  v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
  [v72 setClasses:v75 forSelector:sel_examplePhrasesForBundleIdentifier_reply_ argumentIndex:0 ofReply:1];

  v76 = LNDaemonRegistryXPCInterface_interface;
  v77 = MEMORY[0x1E695DFD8];
  v78 = objc_opt_class();
  v79 = [v77 setWithObjects:{v78, objc_opt_class(), 0}];
  [v76 setClasses:v79 forSelector:sel_suggestionPhrasesForQueries_reply_ argumentIndex:0 ofReply:1];

  v80 = LNDaemonRegistryXPCInterface_interface;
  v81 = MEMORY[0x1E695DFD8];
  v82 = objc_opt_class();
  v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
  [v80 setClasses:v83 forSelector:sel_autoShortcutsForBundleIdentifier_localeIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_autoShortcutsForBundleIdentifier_localeIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  v84 = LNDaemonRegistryXPCInterface_interface;
  v85 = MEMORY[0x1E695DFD8];
  v86 = objc_opt_class();
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = [v85 setWithObjects:{v86, v87, v88, objc_opt_class(), 0}];
  [v84 setClasses:v89 forSelector:sel_autoShortcutsForLocaleIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_autoShortcutsForLocaleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  v90 = LNDaemonRegistryXPCInterface_interface;
  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
  [v90 setClasses:v93 forSelector:sel_propertiesForIdentifiers_completionHandler_ argumentIndex:0 ofReply:0];

  v94 = LNDaemonRegistryXPCInterface_interface;
  v95 = MEMORY[0x1E695DFD8];
  v96 = objc_opt_class();
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  v99 = [v95 setWithObjects:{v96, v97, v98, objc_opt_class(), 0}];
  [v94 setClasses:v99 forSelector:sel_propertiesForIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_propertiesForIdentifiers_completionHandler_ argumentIndex:1 ofReply:1];
  v100 = LNDaemonRegistryXPCInterface_interface;
  v101 = MEMORY[0x1E695DFD8];
  v102 = objc_opt_class();
  v103 = [v101 setWithObjects:{v102, objc_opt_class(), 0}];
  [v100 setClasses:v103 forSelector:sel_relevantIntentsForBundleIdentifier_reply_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_relevantIntentsForBundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  v104 = LNDaemonRegistryXPCInterface_interface;
  v105 = MEMORY[0x1E695DFD8];
  v106 = objc_opt_class();
  v107 = objc_opt_class();
  v108 = objc_opt_class();
  v109 = [v105 setWithObjects:{v106, v107, v108, objc_opt_class(), 0}];
  [v104 setClasses:v109 forSelector:sel_relevantIntentsWithReply_ argumentIndex:0 ofReply:1];

  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_relevantIntentsWithReply_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_basePhraseTemplate_completionHandler_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_basePhraseTemplate_completionHandler_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_basePhraseTemplate_parameterIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_basePhraseTemplate_parameterIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_basePhraseTemplate_actionIdentifier_parameterIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_basePhraseTemplate_actionIdentifier_parameterIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_appShortcutIdentifier_parameterIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_actionForBundleIdentifier_appShortcutIdentifier_parameterIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_metadataVersionForBundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  [LNDaemonRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_diagnoseBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
}

id LNDaemonApplicationXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF5390];
  [v0 setClass:objc_opt_class() forSelector:sel_requestUpdateAppShortcutParametersWithReply_ argumentIndex:0 ofReply:1];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_refreshAutoShortcutSubstitution_spans_parameterPresentationSubstitutions_reply_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_refreshAutoShortcutSubstitution_spans_parameterPresentationSubstitutions_reply_ argumentIndex:1 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_refreshAutoShortcutSubstitution_spans_parameterPresentationSubstitutions_reply_ argumentIndex:2 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_refreshAutoShortcutSubstitution_spans_parameterPresentationSubstitutions_reply_ argumentIndex:0 ofReply:1];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_updateRelevantIntents_bundleIdentifier_reply_ argumentIndex:0 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_updateRelevantIntents_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_persistIntentEnablementForIntent_enablement_reply_ argumentIndex:1 ofReply:0];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  [v0 setClasses:v16 forSelector:sel_retrievePersistedIntentEnablementsWithReply_ argumentIndex:0 ofReply:1];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v0 setClasses:v19 forSelector:sel_sendAppNotificationEvents_bundleIdentifier_reply_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v20 forSelector:sel_sendAppNotificationEvents_bundleIdentifier_reply_ argumentIndex:1 ofReply:0];

  v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v21 forSelector:sel_sendAppNotificationEvents_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];

  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v22 forSelector:sel_getObservationStatusForBundleIdentifier_entityType_reply_ argumentIndex:0 ofReply:0];

  v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v23 forSelector:sel_getObservationStatusForBundleIdentifier_entityType_reply_ argumentIndex:1 ofReply:0];

  v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v24 forSelector:sel_getObservationStatusForBundleIdentifier_entityType_reply_ argumentIndex:1 ofReply:1];

  v25 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v25 forSelector:sel_registerOnObservationStatusChangedForBundleIdentifier_entityType_reply_ argumentIndex:0 ofReply:0];

  v26 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v26 forSelector:sel_registerOnObservationStatusChangedForBundleIdentifier_entityType_reply_ argumentIndex:1 ofReply:0];

  v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v27 forSelector:sel_registerOnObservationStatusChangedForBundleIdentifier_entityType_reply_ argumentIndex:0 ofReply:1];

  v28 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v28 forSelector:sel_registerOnObservationStatusChangedForBundleIdentifier_entityType_reply_ argumentIndex:1 ofReply:1];

  v29 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v29 forSelector:sel_unregisterOnObservationStatusChangedForBundleIdentifier_entityType_registrationUUID_reply_ argumentIndex:0 ofReply:0];

  v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v30 forSelector:sel_unregisterOnObservationStatusChangedForBundleIdentifier_entityType_registrationUUID_reply_ argumentIndex:1 ofReply:0];

  v31 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v31 forSelector:sel_unregisterOnObservationStatusChangedForBundleIdentifier_entityType_registrationUUID_reply_ argumentIndex:2 ofReply:0];

  v32 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v32 forSelector:sel_unregisterOnObservationStatusChangedForBundleIdentifier_entityType_registrationUUID_reply_ argumentIndex:0 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_fetchListenerEndpointForProcessInstanceIdentifier_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_actionWithIdentifier_bundleIdentifier_frameworkBundles_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_enumWithIdentifier_bundleIdentifier_frameworkBundles_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_queryWithIdentifier_bundleIdentifier_frameworkBundles_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_entityWithIdentifier_bundleIdentifier_frameworkBundles_completionHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

id LNTranscriptXPCPrivilegedInterface()
{
  if (LNTranscriptXPCPrivilegedInterface_onceToken != -1)
  {
    dispatch_once(&LNTranscriptXPCPrivilegedInterface_onceToken, &__block_literal_global_70);
  }

  v1 = LNTranscriptXPCPrivilegedInterface_interface;

  return v1;
}

id LNTranscriptXPCInterface()
{
  if (LNTranscriptXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNTranscriptXPCInterface_onceToken, &__block_literal_global_1652);
  }

  v1 = LNTranscriptXPCInterface_interface;

  return v1;
}

uint64_t __LNTranscriptXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BEF5B8];
  v1 = LNTranscriptXPCInterface_interface;
  LNTranscriptXPCInterface_interface = v0;

  [LNTranscriptXPCInterface_interface setClass:objc_opt_class() forSelector:sel_donateWithActionRecord_reply_ argumentIndex:0 ofReply:0];
  [LNTranscriptXPCInterface_interface setClass:objc_opt_class() forSelector:sel_donateWithActionRecord_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCInterface_interface setClass:objc_opt_class() forSelector:sel_donateActionRecordData_writeImmediately_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessWithReply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessWithReply_ argumentIndex:1 ofReply:1];
  [LNTranscriptXPCInterface_interface setClass:objc_opt_class() forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:0 ofReply:0];
  v2 = LNTranscriptXPCInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:0 ofReply:1];

  [LNTranscriptXPCInterface_interface setClass:objc_opt_class() forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:1 ofReply:1];
  v6 = LNTranscriptXPCInterface_interface;
  v7 = objc_opt_class();

  return [v6 setClass:v7 forSelector:sel_deleteAllRecordsWithReply_ argumentIndex:0 ofReply:1];
}

void LNXPCInterfaceByUpdatingWithXPCListenerEndpointVendingInterface(void *a1)
{
  v1 = a1;
  [v1 setClass:objc_opt_class() forSelector:sel_getListenerEndpointWithCompletionHandler_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getListenerEndpointWithCompletionHandler_ argumentIndex:1 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getListenerEndpointWithCompletionHandler_ argumentIndex:2 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getListenerEndpointForBundleIdentifier_action_completionHandler_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getListenerEndpointForBundleIdentifier_action_completionHandler_ argumentIndex:1 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getListenerEndpointForBundleIdentifier_action_completionHandler_ argumentIndex:2 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getListenerEndpointForBundleIdentifier_action_completionHandler_ argumentIndex:3 ofReply:1];
}

void sub_197642280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_197642750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LNConnectionHostXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF4F28];
  [v0 ln_updateWithEntityInterface];
  [v0 ln_updateWithEnumInterface];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_fetchDisplayRepresentationForActions_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_fetchDisplayRepresentationForActions_completionHandler_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_fetchDisplayRepresentationForActions_completionHandler_ argumentIndex:1 ofReply:1];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_fetchViewEntitiesWithInteractionIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_fetchViewEntitiesWithInteractionIDs_completionHandler_ argumentIndex:1 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v0 setClasses:v14 forSelector:sel_fetchViewActionsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_fetchViewActionsWithCompletionHandler_ argumentIndex:1 ofReply:1];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v0 setClasses:v17 forSelector:sel_fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler_ argumentIndex:1 ofReply:0];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
  [v0 setClasses:v21 forSelector:sel_fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v22 forSelector:sel_fetchStructuredDataWithTypeIdentifier_forEntityIdentifiers_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_performPropertyQuery_completionHandler_ argumentIndex:0 ofReply:1];
  v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v23 forSelector:sel_performPropertyQuery_completionHandler_ argumentIndex:1 ofReply:1];

  v24 = +[LNConfigurableQueryRequest xpcClasses];
  [v0 setClasses:v24 forSelector:sel_performConfigurableQuery_completionHandler_ argumentIndex:0 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_performConfigurableQuery_completionHandler_ argumentIndex:0 ofReply:1];
  v25 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v25 forSelector:sel_performConfigurableQuery_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_performSuggestedResultsQueryWithEntityType_completionHandler_ argumentIndex:0 ofReply:1];
  v26 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v26 forSelector:sel_performSuggestedResultsQueryWithEntityType_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler_ argumentIndex:0 ofReply:1];
  v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v27 forSelector:sel_performSuggestedEntitiesQueryWithEntityMangledTypeName_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_performAllEntitiesQueryWithEntityMangledTypeName_completionHandler_ argumentIndex:0 ofReply:1];
  v28 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v28 forSelector:sel_performAllEntitiesQueryWithEntityMangledTypeName_completionHandler_ argumentIndex:1 ofReply:1];

  v29 = LNConnectionClientXPCInterface();
  [v0 setInterface:v29 forSelector:sel_performAction_options_executor_completionHandler_ argumentIndex:2 ofReply:0];

  v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v30 forSelector:sel_performAction_options_executor_completionHandler_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = [v31 setWithObjects:{v32, v33, v34, v35, objc_opt_class(), 0}];
  [v0 setClasses:v36 forSelector:sel_performAction_options_executor_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchOptionsForAction_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v37 forSelector:sel_fetchActionOutputValueWithIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

  v38 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v38 forSelector:sel_fetchActionOutputValueWithIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_fetchOptionsDefaultValuesForAction_completionHandler_ argumentIndex:0 ofReply:1];
  v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v39 forSelector:sel_fetchOptionsDefaultValuesForAction_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  v40 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v40 forSelector:sel_fetchParameterOptionDefaultValueForAction_actionMetadata_parameterIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  [v0 setClasses:v43 forSelector:sel_fetchSuggestedActionsFromViewWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v44 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v44 forSelector:sel_fetchSuggestedActionsFromViewWithCompletionHandler_ argumentIndex:1 ofReply:1];

  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
  [v0 setClasses:v47 forSelector:sel_fetchSuggestedActionsWithSiriLanguageCode_completionHandler_ argumentIndex:0 ofReply:1];

  v48 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v48 forSelector:sel_fetchSuggestedActionsWithSiriLanguageCode_completionHandler_ argumentIndex:1 ofReply:1];

  v49 = MEMORY[0x1E695DFD8];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  [v0 setClasses:v51 forSelector:sel_fetchSuggestedActionsForStartWorkoutAction_completionHandler_ argumentIndex:0 ofReply:1];

  v52 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v52 forSelector:sel_fetchSuggestedActionsForStartWorkoutAction_completionHandler_ argumentIndex:1 ofReply:1];

  v53 = MEMORY[0x1E695DFD8];
  v54 = objc_opt_class();
  v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
  [v0 setClasses:v55 forSelector:sel_fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler_ argumentIndex:0 ofReply:1];

  v56 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v56 forSelector:sel_fetchSuggestedFocusActionsForActionMetadata_suggestionContext_completionHandler_ argumentIndex:1 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_fetchActionAppContextFromAction_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchActionAppContextFromAction_completionHandler_ argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchActionForAutoShortcutPhrase_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchActionForAutoShortcutPhrase_completionHandler_ argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchActionForAppShortcutIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchActionForAppShortcutIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchDestinationMDMAccountIdentifierForAction_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchDestinationMDMAccountIdentifierForAction_completionHandler_ argumentIndex:1 ofReply:1];
  v57 = MEMORY[0x1E695DFD8];
  v58 = objc_opt_class();
  v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
  [v0 setClasses:v59 forSelector:sel_fetchStateForAppIntentIdentifiers_completionHandler_ argumentIndex:0 ofReply:0];

  v60 = MEMORY[0x1E695DFD8];
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = [v60 setWithObjects:{v61, v62, objc_opt_class(), 0}];
  [v0 setClasses:v63 forSelector:sel_fetchStateForAppIntentIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

  v64 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v64 forSelector:sel_fetchStateForAppIntentIdentifiers_completionHandler_ argumentIndex:1 ofReply:1];

  v65 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v65 forSelector:sel_updateAppShortcutParametersWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v66 = MEMORY[0x1E695DFD8];
  v67 = objc_opt_class();
  v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
  [v0 setClasses:v68 forSelector:sel_fetchAppShortcutParametersForMangledName_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v69 = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
  [v0 setClasses:v71 forSelector:sel_fetchAppShortcutParametersForMangledName_withCompletionHandler_ argumentIndex:1 ofReply:1];

  v72 = MEMORY[0x1E695DFD8];
  v73 = objc_opt_class();
  v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
  [v0 setClasses:v74 forSelector:sel_fetchAppShortcutParametersForMangledName_withCompletionHandler_ argumentIndex:2 ofReply:1];

  v75 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v75 forSelector:sel_fetchAppShortcutParametersForMangledName_withCompletionHandler_ argumentIndex:3 ofReply:1];

  v76 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v76 forSelector:sel_updateConnectionContext_completionHandler_ argumentIndex:0 ofReply:0];

  v77 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v77 forSelector:sel_updateConnectionContext_completionHandler_ argumentIndex:0 ofReply:1];

  v78 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v78 forSelector:sel_createAsyncIteratorForSequence_options_completionHandler_ argumentIndex:0 ofReply:0];

  v79 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v79 forSelector:sel_createAsyncIteratorForSequence_options_completionHandler_ argumentIndex:1 ofReply:0];

  v80 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v80 forSelector:sel_createAsyncIteratorForSequence_options_completionHandler_ argumentIndex:0 ofReply:1];

  v81 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v81 forSelector:sel_createAsyncIteratorForSequence_options_completionHandler_ argumentIndex:1 ofReply:1];

  v82 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v82 forSelector:sel_nextAsyncIteratorResults_completionHandler_ argumentIndex:0 ofReply:0];

  v83 = MEMORY[0x1E695DFD8];
  v84 = objc_opt_class();
  v85 = [v83 setWithObjects:{v84, objc_opt_class(), 0}];
  [v0 setClasses:v85 forSelector:sel_nextAsyncIteratorResults_completionHandler_ argumentIndex:0 ofReply:1];

  v86 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v86 forSelector:sel_nextAsyncIteratorResults_completionHandler_ argumentIndex:1 ofReply:1];

  v87 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v87 forSelector:sel_releaseAsyncSequence_completionHandler_ argumentIndex:0 ofReply:0];

  v88 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v88 forSelector:sel_releaseAsyncSequence_completionHandler_ argumentIndex:0 ofReply:1];

  v89 = +[LNStageContextRequest xpcClasses];
  [v0 setClasses:v89 forSelector:sel_stageContextWithRequest_completionHandler_ argumentIndex:0 ofReply:0];

  v90 = +[LNStageContextResult xpcClasses];
  [v0 setClasses:v90 forSelector:sel_stageContextWithRequest_completionHandler_ argumentIndex:0 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_stageContextWithRequest_completionHandler_ argumentIndex:1 ofReply:1];
  v91 = +[LNStageContextRequest xpcClasses];
  [v0 setClasses:v91 forSelector:sel_stageContextWithRequest_completionHandler_ argumentIndex:0 ofReply:0];

  LNXPCInterfaceByUpdatingWithXPCListenerEndpointVendingInterface(v0);

  return v0;
}

id LNConnectionClientXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BE3B18];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_requestParameterDisambiguation_completionHandler_ argumentIndex:0 ofReply:1];

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_requestParameterDisambiguation_completionHandler_ argumentIndex:1 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_requestParameterConfirmation_completionHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_requestParameterConfirmation_completionHandler_ argumentIndex:1 ofReply:1];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_requestParameterNeedsValue_completionHandler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_requestParameterNeedsValue_completionHandler_ argumentIndex:1 ofReply:1];

  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v13 forSelector:sel_requestActionConfirmation_completionHandler_ argumentIndex:0 ofReply:1];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [v0 setClasses:v16 forSelector:sel_requestActionConfirmation_completionHandler_ argumentIndex:1 ofReply:1];

  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v17 forSelector:sel_requestViewSnippetEnvironmentWithCompletion_ argumentIndex:0 ofReply:1];

  v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v18 forSelector:sel_requestContinueInApp_completionHandler_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v0 setClasses:v21 forSelector:sel_requestContinueInApp_completionHandler_ argumentIndex:1 ofReply:1];

  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v22 forSelector:sel_requestOpenURL_completionHandler_ argumentIndex:0 ofReply:1];

  v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v23 forSelector:sel_requestOpenURL_completionHandler_ argumentIndex:1 ofReply:1];

  v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v24 forSelector:sel_requestChoice_completionHandler_ argumentIndex:0 ofReply:1];

  v25 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v25 forSelector:sel_requestChoice_completionHandler_ argumentIndex:1 ofReply:1];

  return v0;
}

void sub_197645268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _LNMetadataProviderDirect.init(connection:options:)(id a1, uint64_t a2)
{
  v54 = a2;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v51 - v7;
  v9 = sub_19774EAD0();
  v10 = OUTLINED_FUNCTION_0(v9);
  v57 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v53 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = v51 - v15;
  v16 = swift_allocBox();
  v18 = v17;
  v58 = v9;
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v9);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = (v19 + 16);
  v67 = sub_197694024;
  v68 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_19769402C;
  v66 = &block_descriptor_11;
  v21 = _Block_copy(&aBlock);

  v22 = [a1 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v21);
  sub_19774F460();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE8, &unk_19775DDF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_19774EF50();
    OUTLINED_FUNCTION_46_0();
    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = OUTLINED_FUNCTION_16_4();
    sub_1976A4DDC(v29, v30, 9003, 0);
    swift_willThrow();

LABEL_10:

    goto LABEL_11;
  }

  v52 = a1;
  v23 = v62;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v16;
  v67 = sub_1976452A4;
  v68 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_197645E24;
  v66 = &block_descriptor_6;
  v25 = _Block_copy(&aBlock);

  v51[2] = v23;
  [v23 fetchDatabaseURL_];
  _Block_release(v25);
  swift_beginAccess();
  OUTLINED_FUNCTION_34_0();
  sub_1976476C8();
  v26 = v58;
  if (__swift_getEnumTagSinglePayload(v8, 1, v58) == 1)
  {
    sub_197665DE0(v8, &qword_1EAF3FCE0, &unk_19775A220);
    swift_beginAccess();
    v18 = *v20;
    if (*v20)
    {
      v27 = *v20;
    }

    else
    {
      sub_19774EF50();
      OUTLINED_FUNCTION_46_0();
      v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v38 = OUTLINED_FUNCTION_16_4();
      sub_1976A4DDC(v38, v39, 9003, 0);
      v18 = 0;
    }

    a1 = v52;
    swift_willThrow();
    v40 = v18;

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v51[1] = v16;
  v31 = v56;
  v32 = v57;
  v51[0] = *(v57 + 32);
  (v51[0])(v56, v8, v26);
  sub_19774EAA0();
  sub_19774EA40();
  OUTLINED_FUNCTION_46_0();
  type metadata accessor for Connection();
  swift_allocObject();
  v33 = OUTLINED_FUNCTION_34_0();
  v34 = v55;
  v36 = sub_197646324(v33, v35, 1);
  if (!v34)
  {
    v42 = v36;

    sub_197646D0C(0.5);
    v43 = v53;
    (*(v32 + 16))(v53, v31, v26);
    v44 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v45 = swift_allocObject();
    v46 = v45 + v44;
    v47 = v58;
    (v51[0])(v46, v43, v58);
    swift_beginAccess();
    v48 = *(v42 + 24);
    v49 = *(v42 + 32);
    *(v42 + 24) = sub_19765532C;
    *(v42 + 32) = v45;
    sub_19764781C(v48);
    v50 = v60;
    *&v60[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection] = v42;
    v50[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion] = (v54 & 2) != 0;
    v61.receiver = v50;
    v61.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v61, sel_init);
    swift_unknownObjectRelease();

    (*(v32 + 8))(v31, v47);

    return v18;
  }

  sub_19774EA80();
  swift_willThrow();
  swift_unknownObjectRelease();

  (*(v32 + 8))(v31, v26);

LABEL_11:
  swift_deallocPartialClassInstance();
  return v18;
}

uint64_t sub_197645A3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197645A74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_56_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_197645AAC()
{
  v1 = sub_19774EAD0();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_4()
{
  result = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[3];
  v5 = *(v0[16] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_19774F7E0();
}

void OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{

  sub_197649968(a1, v48, v49, v46, a5, v47, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t OUTLINED_FUNCTION_4_9()
{
  sub_197645CF4(v0);
}

void OUTLINED_FUNCTION_4_10()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_4_11()
{
  result = *(v0 - 96);
  v2 = *(*(v0 - 88) - 8);
  return result;
}

uint64_t sub_197645CF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_197645E24(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_197645EB0(void *a1, void *a2, uint64_t a3)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v16[-v7];
  v9 = swift_projectBox();
  v10 = 1;
  swift_beginAccess();
  v11 = *(a3 + 16);
  *(a3 + 16) = a2;
  v12 = a2;

  if (a1)
  {
    v13 = [a1 url];
    sub_19774EA90();

    v10 = 0;
  }

  v14 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v8, v10, 1, v14);
  swift_beginAccess();
  return sub_197645FF0(v8, v9);
}

uint64_t sub_197645FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_53_4()
{

  sub_197649C34();
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

double OUTLINED_FUNCTION_22_5()
{
  *(v0 + 304) = 0;
  result = 0.0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_19774F420();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return sub_19764C774(&a9, &a13);
}

id OUTLINED_FUNCTION_45_1(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [v5 a2];
}

void OUTLINED_FUNCTION_45_3(uint64_t *a1@<X8>)
{

  sub_197649FEC(v1, a1);
}

uint64_t OUTLINED_FUNCTION_45_5()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_197646324(uint64_t a1, uint64_t a2, char a3)
{
  v24 = sub_19774F380();
  v4 = OUTLINED_FUNCTION_0(v24);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_0();
  v11 = v10 - v9;
  v12 = sub_19774EDA0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_8_0();
  v14 = sub_19774F350();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_0();
  *(v3 + 16) = 0u;
  v16 = (v3 + 16);
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 32) = 0u;
  v17 = MEMORY[0x1E69E7CC8];
  *(v3 + 80) = 0;
  *(v3 + 88) = v17;
  *(v3 + 96) = v17;
  sub_19764665C();
  sub_1976466A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC8, qword_19775E1E0);
  sub_1976466F8();
  sub_19774F470();
  sub_19774ED90();
  (*(v6 + 104))(v11, *MEMORY[0x1E69E8090], v24);
  *(v3 + 104) = sub_19774F3A0();
  *(v3 + 112) = 0;
  *(v3 + 120) = 1;
  OUTLINED_FUNCTION_14_8();
  if (a3)
  {
    v18 = 65537;
  }

  else
  {
    v18 = 65542;
  }

  v19 = sub_19774EFD0();

  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  v20 = sqlite3_open_v2((v19 + 32), v16, v18, 0);
  swift_endAccess();

  sub_1976469C4(v20, 0);
  if (v27)
  {
  }

  else
  {
    v21 = qword_1ED6972C0;
    v22 = *(v25 + 104);
    if (v21 != -1)
    {
      OUTLINED_FUNCTION_1_22();
    }

    sub_197646CE8();
    sub_19774F370();
  }

  return v25;
}

unint64_t sub_19764665C()
{
  result = qword_1ED6972D0;
  if (!qword_1ED6972D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6972D0);
  }

  return result;
}

unint64_t sub_1976466A0()
{
  result = qword_1ED6972D8;
  if (!qword_1ED6972D8)
  {
    sub_19774F350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6972D8);
  }

  return result;
}

unint64_t sub_1976466F8()
{
  result = qword_1ED6972E0;
  if (!qword_1ED6972E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF3FFC8, qword_19775E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6972E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_19774F400();
}

void OUTLINED_FUNCTION_14_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14_7(unint64_t a1@<X8>)
{

  sub_19764F434(a1 > 1, v2, 1, v1);
}

uint64_t *OUTLINED_FUNCTION_14_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;
  a1[4].n128_u64[0] = *(v3 + 8);
  v5 = &a1[2];

  return __swift_allocate_boxed_opaque_existential_1(v5);
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_dynamicCastObjCClass();
}

__n128 *OUTLINED_FUNCTION_11_5(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x4554414C4C4F43;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_19764B658(&a9, v9, v10, v11, a1);
}

const char *sub_1976469C4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED697128 != -1)
  {
    swift_once();
  }

  if (sub_197646C0C(a1, qword_1ED6971E8))
  {
    return a1;
  }

  v4 = sub_197646D50();
  result = sqlite3_errmsg(v4);
  if (result)
  {
    v6 = sub_19774F020();
    v8 = v7;
    sub_1976C6CF4();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_willThrow();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_197646AA0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40260, &unk_19775F690);
  result = sub_19774F590();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = a1 + 32;
  v8 = *(result + 40);
  v9 = ~(-1 << *(result + 32));
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v11 = *(v7 + 4 * v5++);
    for (result = MEMORY[0x19A8E5540](v8, v11, 4); ; result = v12 + 1)
    {
      v12 = result & v9;
      v13 = (result & v9) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v9);
      if ((v15 & v14) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v12) == v11)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 4 * v12) = v11;
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v10 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_197646BE4()
{
  result = sub_197646AA0(&unk_1F0BBA5C0);
  qword_1ED6971E8 = result;
  return result;
}

uint64_t sub_197646C0C(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x19A8E5540](*(a2 + 40), a1, 4);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

uint64_t sub_197646C9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40200, &qword_19775F058);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_19774ED80();
  qword_1ED6971E0 = result;
  return result;
}

uint64_t sub_197646CE8()
{
  result = v0;
  if (*(v0 + 120) != 1)
  {
    return *(v0 + 112);
  }

  *(v0 + 112) = v0;
  *(v0 + 120) = 0;
  return result;
}

uint64_t sub_197646D0C(double a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return sub_197646D80();
}

uint64_t sub_197646D50()
{
  OUTLINED_FUNCTION_12_8();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197646D80()
{
  v1 = sub_197646D50();
  result = swift_beginAccess();
  v3 = *(v0 + 40) * 1000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 2147483650.0)
  {
    return sqlite3_busy_timeout(v1, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x258], 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return sub_19774EA30();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{
  result = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[99];
  v10 = v0[98];
  v11 = v0[97];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return sub_19774EEA0();
}

uint64_t OUTLINED_FUNCTION_0_24(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v3 = *(a2 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a1;
}

void OUTLINED_FUNCTION_7()
{

  sub_19765272C();
}

void OUTLINED_FUNCTION_7_0()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_19774EED0();
}

uint64_t OUTLINED_FUNCTION_7_5()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_19768C90C;

  return swift_continuation_init();
}

double OUTLINED_FUNCTION_7_8()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{
  *(a1 + 8) = sub_197653F70;
  v2 = v1[17];
  result = v1[11];
  v4 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

id OUTLINED_FUNCTION_1_4()
{

  return sub_19766DD10(v5, v4, v2, v3, v0, 0, v1, v6);
}

id OUTLINED_FUNCTION_1_5()
{

  return sub_1976A4DDC(v0, v1, 9010, 0);
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_23()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t sub_197647660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1976476C8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_34_0();
  v7(v6);
  return v0;
}

void OUTLINED_FUNCTION_12(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v5;
  v4[8] = v5;
  v4[9] = a4;
  v4[4] = a4;
  v4[5] = result;
  v4[6] = a2;
  v4[7] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return sub_1976497AC(34, 0xE100000000000000);
}

uint64_t sub_19764781C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_5_2()
{

  JUMPOUT(0x19A8E4C40);
}

id OUTLINED_FUNCTION_5_4()
{

  return sub_1976772F8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_19774F7E0();
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t result)
{
  *(v1 + 520) = result;
  *(v1 + 464) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_5_10(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[5] = a2;
  v2[6] = a2;
  v2[7] = a2;
  v2[8].n128_u64[0] = 0;
  v2[8].n128_u64[1] = a1;
  v2[9].n128_u64[0] = 0;
  v2[9].n128_u64[1] = 0;
  v2[10].n128_u16[0] = 256;
  v2[10].n128_u64[1] = a1;
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_12()
{
}

uint64_t OUTLINED_FUNCTION_5_15()
{

  return sub_19774EE70();
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = *(v0[22] + 8);
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_19774F710();
}

void *OUTLINED_FUNCTION_2_9(void *a1)
{

  return memcpy(a1, v1, 0xB0uLL);
}

void OUTLINED_FUNCTION_2_10()
{
  v1 = v0[102];
  v2 = v0[97];
  v3 = *(v0[103] + 16);
}

id OUTLINED_FUNCTION_2_12()
{

  return sub_19764AA58();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_19774F710();
}

void *OUTLINED_FUNCTION_2_22@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = a2;
  a1[3] = a2;
  a1[4] = v3;
  v4 = v2[4];
  return __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return sub_19774F710();
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t result)
{
  *(result + 8) = sub_19768CB8C;
  v2 = *(v1 + 872);
  v3 = *(v1 + 744);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_11(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  *(v1 - 224) = v0;
  *(v1 - 112) = v0 + 32;
  *(v1 - 104) = v0 & 0xFFFFFFFFFFFFFF8;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 88);
  result = *(v0 + 24);
  v7 = *(v0 + 32);
  return result;
}

id OUTLINED_FUNCTION_6_4(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_19767726C(va, v2, v1);
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_19774F7E0();
}

void OUTLINED_FUNCTION_6_10()
{
  v2 = v0[2] + 1;

  sub_19764F434(0, v2, 1, v0);
}

void _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_19764A2F4();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_19774F7E0();
}

double OUTLINED_FUNCTION_71_1()
{
  result = 0.0;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  return result;
}

void OUTLINED_FUNCTION_71_2()
{

  JUMPOUT(0x19A8E4C40);
}

void OUTLINED_FUNCTION_71_3(uint64_t *a1@<X8>)
{

  sub_197649FEC(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return sub_197648238(0, v1, v0);
}

id OUTLINED_FUNCTION_27_1()
{

  return sub_19766D6F4();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 112) = result;
  *(v3 - 104) = a2;
  *(v3 - 96) = a3;
  return result;
}

void OUTLINED_FUNCTION_27_7()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t sub_197648238(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_197648278(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_19774EF20();

  sub_197648238(0, &qword_1ED696D38, 0x1E69C7550);
  sub_19774F110();
  OUTLINED_FUNCTION_33_3();

  v7 = [v3 initWithExplanation:v6 target:a3 attributes:a2];

  return v7;
}

uint64_t OUTLINED_FUNCTION_13_7()
{
}

uint64_t sub_1976483CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_197648648(a2, a3, *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection));
  if (v4)
  {

LABEL_3:
    v7 = sub_19774EC60();
    sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69AC0C8], v7);
    return swift_willThrow();
  }

  v10 = v6;
  if (!v6)
  {
    goto LABEL_3;
  }

  v31 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE80, &qword_19775DF68);
  result = sub_19774F740();
  v11 = 0;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = v10;
      v22 = (*(v10 + 48) + 16 * v20);
      v23 = v22[1];
      v34 = *v22;
      v24 = *(*(v10 + 56) + 8 * v20);

      v25 = sub_19765213C(1000, v24);

      result = v33;
      *(v32 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (v33[6] + 16 * v20);
      *v26 = v34;
      v26[1] = v23;
      *(v33[7] + 8 * v20) = v25;
      v27 = v33[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v33[2] = v29;
      v10 = v21;
      if (!v15)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        v30 = result;

        *v31 = v30;
        return result;
      }

      v19 = *(v12 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197648648(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v118 = sub_197649284();
  v124 = v3;
  if (qword_1ED696F00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF43B60, sizeof(__dst));
  if (qword_1ED696E60 != -1)
  {
    OUTLINED_FUNCTION_1_13();
  }

  memcpy(__src, &unk_1EAF3F240, sizeof(__src));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  v5 = sub_1976496B4(&qword_1ED696FF8, &qword_1EAF3F780, &unk_19775A8E0);
  sub_197649708(0xD000000000000010, 0x8000000197761460, v4, v5);
  memcpy(v175, __src, sizeof(v175));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F778, &qword_19775A8D8);
  OUTLINED_FUNCTION_4_5(v174[0], v7, v8, v9, v6, v10, v11, v12, v89, v94, v99, v103, v108, v113, v118, v124, a3, v135, v140, v147, v152, v156, v160, v164, v168, v169, v170, v171, v172, v173[0], v173[1], v173[2], v173[3], v173[4], v173[5], v173[6], v173[7], v173[8], v173[9], v173[10], v173[11], v173[12], v173[13], v173[14], v173[15], v173[16]);
  v104 = v13;
  v109 = v14;
  v114 = v15;

  memcpy(v178, &unk_1EAF3F240, sizeof(v178));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBE0, &qword_19775DBE0);
  v17 = sub_1976496B4(&unk_1EAF3EDF0, &qword_1EAF3FBE0, &qword_19775DBE0);
  sub_197649708(0x446465646F636E65, 0xEB00000000617461, v16, v17);
  memcpy(v175, v178, sizeof(v175));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBE8, &qword_19775DBE8);
  OUTLINED_FUNCTION_4_5(v174[0], v19, v20, v21, v18, v22, v23, v24, v90, v95, v100, v104, v109, v114, v119, v125, v131, v136, v141, v148, v153, v157, v161, v165, v168, v169, v170, v171, v172, v173[0], v173[1], v173[2], v173[3], v173[4], v173[5], v173[6], v173[7], v173[8], v173[9], v173[10], v173[11], v173[12], v173[13], v173[14], v173[15], v173[16]);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  memcpy(v179, &unk_1EAF43B60, sizeof(v179));
  if (qword_1ED696F08 != -1)
  {
    swift_once();
  }

  memcpy(v175, v179, sizeof(v175));
  sub_197649968(qword_1EAF43B48, unk_1EAF43B50, qword_1EAF43B58, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v31, v32, v91, v96, v101, v105, v110, v115, v120, v126, v132, v137, v142, v149, qword_1EAF43B58, unk_1EAF43B50, qword_1EAF43B48, v166, v168, v169, v170, v171, v172, v173[0], v173[1], v173[2], v173[3], v173[4], v173[5], v173[6], v173[7], v173[8], v173[9], v173[10], v173[11], v173[12], v173[13], v173[14], v173[15], v173[16]);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  memcpy(v175, __dst, sizeof(v175));
  v173[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v173[4] = &off_1F0BBB748;
  v97 = v34;
  v173[0] = v34;
  v173[1] = v36;
  v173[2] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_19775A780;
  *(v39 + 56) = v16;
  *(v39 + 64) = &off_1F0BBB748;
  *(v39 + 32) = v26;
  *(v39 + 40) = v28;
  *(v39 + 48) = v30;

  v184 = v28;

  sub_19764B838(v173, v39, &unk_1F0BBACF0, &off_1F0BBAAE8);
  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(v173);
  memcpy(v173, v174, sizeof(v173));
  OUTLINED_FUNCTION_2_9(v180);
  v171 = &unk_1F0BBACF0;
  v172 = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v168 = swift_allocObject();
  OUTLINED_FUNCTION_2_9((v168 + 16));
  OUTLINED_FUNCTION_2_9(v181);
  sub_19764DFC8(v180, v175);
  if (qword_1ED696E58 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  memcpy(v175, v181, sizeof(v175));
  sub_197649968(qword_1EAF3F228, unk_1EAF3F230, qword_1EAF3F238, &unk_1F0BBACF0, MEMORY[0x1E69E6158], &off_1F0BBAB00, v40, v41, v92, v97, v36, v106, v111, v116, v121, v127, v133, v138, v143, v26, v154, v158, v162, v30, v168, v169, v170, v171, v172, v173[0], v173[1], v173[2], v173[3], v173[4], v173[5], v173[6], v173[7], v173[8], v173[9], v173[10], v173[11], v173[12], v173[13], v173[14], v173[15], v173[16]);
  v93 = MEMORY[0x1E69E6180];
  v42 = sub_19764BCB8();
  v44 = v43;
  v46 = v45;

  v175[0] = v122;
  v175[1] = v128;
  v47 = v112;
  v48 = sub_19764FAF0();
  v50 = v49;
  v52 = v51;

  v53 = sub_19764C338(v42, v44, v46, v48, v50, v52);
  v55 = v54;
  v57 = v56;

  sub_19764C46C(2, &v168, v53, v55, v57, &unk_1F0BBACF0, &off_1F0BBAB00, v58, v93, v98, v102, v107, v112, v117, v122, v128, v134, v139, v144, v150, v155, v159, v163, v167, v168, v169, v170, v171, v172, v173[0], v173[1], v173[2], v173[3], v173[4], v173[5], v173[6], v173[7], v173[8], v173[9], v173[10], v173[11], v173[12], v173[13], v173[14], v173[15], v173[16]);

  memcpy(v182, v173, sizeof(v182));
  sub_19764BBBC(v182);
  __swift_destroy_boxed_opaque_existential_0(&v168);
  memcpy(v183, v175, sizeof(v183));
  v175[3] = &unk_1F0BBACF0;
  v175[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v175[0] = swift_allocObject();
  memcpy((v175[0] + 16), v183, 0xB0uLL);
  sub_19764C978(v175);
  if (v145)
  {

    __swift_destroy_boxed_opaque_existential_0(v175);
    return v47;
  }

  v60 = v59;
  __swift_destroy_boxed_opaque_existential_0(v175);
  v47 = MEMORY[0x1E69E7CC8];
  v61 = v184;
  for (i = v60; ; v60 = i)
  {
    sub_19764EA8C();
    v63 = v62;
    if (!v62)
    {

      return v47;
    }

    sub_19765272C();
    v64 = v175[0];
    v65 = v175[1];
    sub_19764B088(v151, v61, v60, v63, MEMORY[0x1E6969080], &off_1EE5A3138, v175);

    v66 = v175[1];
    if (v175[1] >> 60 == 15)
    {

      return 0;
    }

    v67 = v175[0];
    sub_197648238(0, &unk_1ED696ED0, 0x1E696ACD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBF0, &qword_19775DBF0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_19775A850;
    *(v68 + 32) = sub_197648238(0, &qword_1ED696E38, 0x1E695DEC8);
    *(v68 + 40) = sub_197648238(0, &qword_1ED696EF8, off_1E74AF338);
    sub_19774F340();

    if (!v175[3])
    {
      sub_19766A0E8(v175);
LABEL_21:
      v76 = sub_19764EA74(v64, v65);
      v78 = v77;

      if (v78)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v175[0] = v47;
        v79 = v47[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBF8, &qword_19775DBF8);
        sub_19774F6F0();
        v47 = v175[0];
        v80 = *(*(v175[0] + 48) + 16 * v76 + 8);

        v81 = *(v47[7] + 8 * v76);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FDF0, &qword_19775DF20);
        sub_19774F700();
      }

LABEL_23:
      sub_19764EEB4(v67, v66);
      goto LABEL_24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FDF0, &qword_19775DF20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v129 = v174[0];
    swift_isUniquelyReferenced_nonNull_native();
    v175[0] = v47;
    v69 = sub_19764EA74(v64, v65);
    v123 = v70;
    if (__OFADD__(v47[2], (v70 & 1) == 0))
    {
      break;
    }

    v71 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBF8, &qword_19775DBF8);
    if (sub_19774F6F0())
    {
      v72 = sub_19764EA74(v64, v65);
      v74 = v123;
      if ((v123 & 1) != (v73 & 1))
      {
        goto LABEL_35;
      }

      v75 = v72;
    }

    else
    {
      v75 = v71;
      v74 = v123;
    }

    if (v74)
    {

      v47 = v175[0];
      v82 = *(v175[0] + 56);
      v83 = *(v82 + 8 * v75);
      *(v82 + 8 * v75) = v129;

      goto LABEL_23;
    }

    v47 = v175[0];
    *(v175[0] + 8 * (v75 >> 6) + 64) |= 1 << v75;
    v84 = (v47[6] + 16 * v75);
    *v84 = v64;
    v84[1] = v65;
    *(v47[7] + 8 * v75) = v129;
    sub_19764EEB4(v67, v66);
    v85 = v47[2];
    v86 = __OFADD__(v85, 1);
    v87 = v85 + 1;
    if (v86)
    {
      goto LABEL_34;
    }

    v47[2] = v87;
LABEL_24:
    v61 = v184;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_1976491EC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_197649284()
{
  v0 = objc_opt_self();
  v1 = sub_19774EF20();

  v2 = [v0 componentsFromLocaleIdentifier_];

  sub_19774EE30();
  v3 = sub_19774EE20();

  v4 = [v0 localeIdentifierFromComponents_];

  v5 = sub_19774EF50();
  return v5;
}

void sub_197649390()
{
  OUTLINED_FUNCTION_17_7();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v6 = OUTLINED_FUNCTION_44_4();
  *(v6 + 16) = xmmword_19775A780;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_61_3(&off_1F0BBB748);
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 48) = MEMORY[0x1E69E7CC0];
  *(v6 + 56) = v8;
  *v5 = 0;
  *(v5 + 8) = v6;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = v1;
  *(v5 + 56) = v0;
  *(v5 + 64) = 1;
  *(v5 + 72) = v7;
  OUTLINED_FUNCTION_5_10(v7, 0);
}

uint64_t OUTLINED_FUNCTION_16_0(unint64_t a1)
{
  if (a1 < 3)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 192) = v2;
  return *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return sub_19774F330();
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{

  return sub_19764BD90(v7, v8, v9, 0, 0xE000000000000000, a6, a7);
}

uint64_t sub_1976495D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1976496B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197649708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1976497AC(34, 0xE100000000000000);
  v8 = v7;

  v9 = *(a4 + 40);
  v10 = MEMORY[0x1E69E7CC0];

  return v9(v6, v8, v10, a3, a4);
}

uint64_t sub_1976497AC(uint64_t a1, uint64_t a2)
{

  while (1)
  {
    v4 = sub_19774F040();
    if (!v5)
    {
      break;
    }

    v6 = v4 == a1 && v5 == a2;
    if (v6 || (sub_19774F7E0() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_22();
    }

    sub_19774EEA0();

    MEMORY[0x19A8E4C40](0, 0xE000000000000000);
  }

  OUTLINED_FUNCTION_0_22();
  MEMORY[0x19A8E4C40](0, 0xE000000000000000);

  OUTLINED_FUNCTION_0_22();
  return 0;
}

uint64_t sub_197649938@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_197649968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_70_3();
  a45 = v47;
  a46 = v48;
  OUTLINED_FUNCTION_35_5();
  v50 = v49;
  v52 = v51;
  v53 = type metadata accessor for Expression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  OUTLINED_FUNCTION_110_0();
  sub_197649C2C();
  OUTLINED_FUNCTION_53_4();
  *(inited + 96) = v53;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = v52;
  *(inited + 80) = v50;
  *(inited + 88) = v46;

  sub_197649FEC(inited, &a27);
  swift_setDeallocating();
  sub_19764F1B0();
  v55 = a30;
  v56 = a31;
  __swift_project_boxed_opaque_existential_0Tm(&a27, a30);
  OUTLINED_FUNCTION_34(v56);
  a10 = v57(v55, v56);
  a11 = v58;
  a12 = v59;
  v60 = OUTLINED_FUNCTION_22_1();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_7();
  v66 = sub_1976C22B8(v64, v65);
  sub_19764B658(&a10, v53, v62, WitnessTable, v66);
  __swift_destroy_boxed_opaque_existential_0(&a27);
  OUTLINED_FUNCTION_68_3();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return sub_19774EF50();
}

uint64_t OUTLINED_FUNCTION_69_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 176) = v2;
  *(v5 - 168) = v3;
  *(v5 - 160) = v4;
  *(v5 - 152) = result;
  *(v5 - 144) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1976B314C(va, (v8 + 232));
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_19764BD90(a1, a2, a3, a4, a5, v5, v6);
}

void sub_197649C34()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v1 + 16);
  v10 = OUTLINED_FUNCTION_50_4(v5, v3);
  v9(v10);
  v11 = v30;

  sub_19764AB24(v29);
  if (v11)
  {
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_19775A7E0;
      v13 = OUTLINED_FUNCTION_110_0();
      v9(v13);
      v28 = v8;
      v14 = v34;
      v15 = v35;

      sub_19764AB24(v33);
      v16 = OUTLINED_FUNCTION_110_0();
      v9(v16);
      sub_19764AB24(v36);
      sub_19764AB54(v14, v15, v36[64], v4, v2);

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      *(v12 + 104) = &off_1F0BBB748;
      *(v12 + 72) = 21313;
      *(v12 + 80) = 0xE200000000000000;
      v18 = MEMORY[0x1E69E7CC0];
      *(v12 + 88) = MEMORY[0x1E69E7CC0];
      *(v12 + 96) = v17;
      *(v12 + 136) = v17;
      *(v12 + 144) = &off_1F0BBB748;
      v19 = OUTLINED_FUNCTION_108();
      sub_1976497AC(v19, v20);
      OUTLINED_FUNCTION_21();

      *(v12 + 112) = v0;
      *(v12 + 120) = v2;
      *(v12 + 128) = v18;
      OUTLINED_FUNCTION_88_1(v12, v28);
      swift_setDeallocating();
      sub_19764F1B0();
      goto LABEL_8;
    }
  }

  v21 = OUTLINED_FUNCTION_110_0();
  v9(v21);
  v22 = v32;

  sub_19764AB24(v31);
  if (!v22)
  {
    v23 = OUTLINED_FUNCTION_110_0();
    v9(v23);

    sub_19764AB24(v33);
  }

  v24 = OUTLINED_FUNCTION_110_0();
  v9(v24);
  sub_19764AB24(v36);
  v25 = OUTLINED_FUNCTION_37_4();
  sub_19764AB54(v25, v26, v27, v4, v2);

LABEL_8:
  OUTLINED_FUNCTION_43();
}

void OUTLINED_FUNCTION_57_0()
{

  sub_19768F9F4(v1, v0, v2, 3);
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_19774EF50();
}

void OUTLINED_FUNCTION_38_2()
{

  JUMPOUT(0x19A8E67F0);
}

uint64_t get_enum_tag_for_layout_string_17AppIntents_SQLite10ExpressionVySbSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_Say17AppIntents_SQLite11Expressible_pG2by_AA10ExpressionVySbSgGSg6havingtSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_197649FEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = v3[3];
      v7 = v3[4];
      __swift_project_boxed_opaque_existential_0Tm(v3, v6);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_19764EF3C(0, *(v4 + 16) + 1, 1, v4);
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_19764EF3C(v13 > 1, v14 + 1, 1, v4);
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 16 * v14;
      *(v15 + 32) = v8;
      *(v15 + 40) = v10;
      v16 = *(v12 + 16);
      v17 = *(v5 + 16);
      if (__OFADD__(v17, v16))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v5 + 24) >> 1, v18 < v17 + v16))
      {
        sub_19764B44C();
        v5 = v19;
        v18 = *(v19 + 24) >> 1;
      }

      if (*(v12 + 16))
      {
        if (v18 - *(v5 + 16) < v16)
        {
          goto LABEL_23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = *(v5 + 16);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_24;
          }

          *(v5 + 16) = v22;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_22;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
    sub_19764B5C8(&qword_1ED6972C8, &unk_1EAF3FF30, &unk_19775A950);
    v23 = sub_19774EEB0();
    v25 = v24;

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    a2[4] = &off_1F0BBB748;
    *a2 = v23;
    a2[1] = v25;
    a2[2] = v5;
  }
}

uint64_t sub_19764A2A0()
{
  swift_getWitnessTable();

  return sub_19764EEC8();
}

void sub_19764A2F4()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_31_1();
  v8 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_40_2(OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion);
  if (!v27 || (v12 = [objc_opt_self() currentProcess], v13 = objc_msgSend(v12, sel_isApplication), v12, !v13))
  {
    v22 = OUTLINED_FUNCTION_62_0();
    v3(v22, v7, v5);
    if (v1)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v14 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v15 + 32) = OUTLINED_FUNCTION_2_12();
  v16 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v17 = OUTLINED_FUNCTION_14_4();
  v19 = sub_197648278(v17, v18, v14);
  v41 = 0;
  if ([v19 acquireWithError_])
  {
    v20 = v41;
    (v3)(v42, v0, v7, v5);
    OUTLINED_FUNCTION_45_2();
    if (v1)
    {
      [v19 (v21 + 3704)];
      goto LABEL_11;
    }

    [v19 (v21 + 3704)];

LABEL_9:
    OUTLINED_FUNCTION_86_1();
LABEL_26:
    v37 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_9();
    return;
  }

  v23 = v41;
  sub_19774E9F0();

  swift_willThrow();
LABEL_11:
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_17_4();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v39 = v19;
  v24 = [v40 domain];
  sub_19774EF50();
  OUTLINED_FUNCTION_78_0();

  v25 = *MEMORY[0x1E69C7688];
  sub_19774EF50();
  OUTLINED_FUNCTION_77_0();
  v27 = v27 && v1 == v26;
  if (v27)
  {
  }

  else
  {
    v28 = OUTLINED_FUNCTION_15_4();

    if ((v28 & 1) == 0)
    {

LABEL_24:
      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    OUTLINED_FUNCTION_90_0();
    v29 = v40;
    v30 = sub_19774ED40();
    v31 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_89_0())
    {
      OUTLINED_FUNCTION_46_1();
      v42[1] = OUTLINED_FUNCTION_44_2();
      *v7 = 136315138;
      v32 = [v29 localizedDescription];
      v38 = v31;
      sub_19774EF50();
      OUTLINED_FUNCTION_84_0();
      v33 = OUTLINED_FUNCTION_68_0();

      *(v7 + 4) = v33;
      OUTLINED_FUNCTION_25_4(&dword_19763D000, "Failed to acquire assertions: %s", v38);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_38_2();
    }

    v34 = OUTLINED_FUNCTION_58_1();
    v35(v34);
    sub_19774EF50();
    OUTLINED_FUNCTION_82_0();
    v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_49_1();

    goto LABEL_24;
  }

  __break(1u);
}

id OUTLINED_FUNCTION_10_3()
{

  return sub_1976A4DDC(v0, v1, 9006, 0);
}

double OUTLINED_FUNCTION_64()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_0()
{
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return swift_willThrow();
}

void OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_197649FEC(v7, va);
}

void *OUTLINED_FUNCTION_23@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t __dst)
{
  v56 = *a1;
  v57 = a1[1];
  v58 = a1[2];

  return memcpy(&__dst, &STACK[0x258], 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_23_0()
{
}

uint64_t OUTLINED_FUNCTION_23_1()
{
}

void OUTLINED_FUNCTION_23_2()
{
  v1 = v0[103];
  v5 = v0[102];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[97];
  v0[83] = 1;
}

uint64_t OUTLINED_FUNCTION_23_7()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

id sub_19764AA58()
{
  v0 = sub_19774EF20();

  v1 = sub_19774EF20();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_19764AB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_38_5();
  v9 = v8;
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_108();
    v6 = sub_1976497AC(v11, v12);
    v5 = v13;
  }

  else
  {
  }

  v14 = *(a5 + 16);
  v15 = OUTLINED_FUNCTION_37_4();
  v16(v15);
  v17 = v28;

  sub_19764AB24(v27);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 56) = v19;
    *(inited + 64) = &off_1F0BBB748;
    v20 = OUTLINED_FUNCTION_108();
    v22 = sub_1976497AC(v20, v21);
    v24 = v23;

    *(inited + 32) = v22;
    *(inited + 40) = v24;
    v25 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v19;
    *(inited + 104) = &off_1F0BBB748;
    *(inited + 72) = v6;
    *(inited + 80) = v5;
    *(inited + 88) = v25;
    sub_197649FEC(inited, v9);
    swift_setDeallocating();
    return sub_19764F1B0();
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    v9[4] = &off_1F0BBB748;
    *v9 = v6;
    v9[1] = v5;
    v9[2] = MEMORY[0x1E69E7CC0];
    v9[3] = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  *(v2 + 120) = v4;
  *(v2 + 96) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_2()
{
}

char *sub_19764AD60(char *a1, int64_t a2, char a3)
{
  result = sub_197651B34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

const char *sub_19764AD80@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v6 = sqlite3_step(*(a1 + 16));
  result = sub_1976469C4(v6, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

void sub_19764ADEC(uint64_t iCol@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (iCol > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  switch(sqlite3_column_type(a2, iCol))
  {
    case 1:
      v6 = sqlite3_column_int64(a2, iCol);
      v7 = MEMORY[0x1E69E7360];
      v8 = &off_1F0BBA840;
      goto LABEL_9;
    case 2:
      v11 = sqlite3_column_double(a2, iCol);
      *(a3 + 24) = MEMORY[0x1E69E63B0];
      *(a3 + 32) = &off_1F0BBA818;
      *a3 = v11;
      return;
    case 3:
      if (!sqlite3_column_text(a2, iCol))
      {
        goto LABEL_14;
      }

      v9 = sub_19774F030();
      *(a3 + 24) = MEMORY[0x1E69E6158];
      *(a3 + 32) = &off_1F0BBA858;
      *a3 = v9;
      *(a3 + 8) = v10;
      return;
    case 4:
      v6 = sub_197651E48(iCol, a2);
      v7 = &type metadata for Blob;
      v8 = &off_1F0BBA870;
LABEL_9:
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      *a3 = v6;
      return;
    case 5:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    default:
      break;
  }

LABEL_15:
  sub_19774F5B0();

  v12 = sub_19774F7C0();
  MEMORY[0x19A8E4C40](v12);

  OUTLINED_FUNCTION_2_17();
  __break(1u);
  JUMPOUT(0x19764AFC0);
}

void *sub_19764AFD4(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC98, qword_19775E620);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

uint64_t sub_19764B088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  swift_bridgeObjectRetain_n();
  v48 = a1;
  v14 = sub_19764ECD4(a1, a2, a3);
  if ((v15 & 1) == 0)
  {
    v28 = v14;
    swift_bridgeObjectRelease_n();
    v29 = a7;
    v30 = v28;
    v31 = a4;
    v32 = a5;
    return sub_1976529B8(v30, v31, v32, a6, v29);
  }

  v41 = a4;
  v42 = a7;
  v46 = a2;

  v43 = a3;
  result = sub_19764ED9C(v16);
  v18 = result;
  v19 = 0;
  v47 = *(result + 16);
  v20 = (result + 40);
  v21 = MEMORY[0x1E69E7CC0];
  v44 = a6;
  v45 = a5;
  while (v47 != v19)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = *(v20 - 1);
    v22 = *v20;
    v49[0] = v23;
    v49[1] = v22;

    if (sub_19764B340(v49, v48, v46))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v50 = v21;
      if ((result & 1) == 0)
      {
        result = sub_19764AD60(0, *(v21 + 2) + 1, 1);
        v21 = v50;
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_47_1(v24);
        result = sub_19764AD60(v27, v25 + 1, 1);
        v21 = v50;
      }

      *(v21 + 2) = v25 + 1;
      v26 = &v21[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      a6 = v44;
    }

    else
    {
    }

    v20 += 2;
    ++v19;
  }

  v33 = *(v21 + 2);

  if (!v33)
  {

    v21 = sub_1976C0CB0(v43);
    v39 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v40 = v48;
    *(v40 + 8) = v46;
    *(v40 + 16) = v21;
    *(v40 + 24) = v39;
    return swift_willThrow();
  }

  if (v33 != 1)
  {
    v39 = 2;
    goto LABEL_22;
  }

  if (!*(v21 + 2))
  {
    goto LABEL_24;
  }

  v34 = *(v21 + 4);
  v35 = *(v21 + 5);

  v36 = sub_19764ECD4(v34, v35, v43);
  v38 = v37;

  if ((v38 & 1) == 0)
  {

    v29 = v42;
    v30 = v36;
    v31 = v41;
    v32 = v45;
    return sub_1976529B8(v30, v31, v32, a6, v29);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_19764B340(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  MEMORY[0x19A8E4C40](a2, a3);
  LOBYTE(v3) = sub_19774F060();

  return v3 & 1;
}

uint64_t sub_19764B3B8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_19764CAE4(&a29, v29, v30);
}

void sub_19764B44C()
{
  OUTLINED_FUNCTION_126();
  if (v5)
  {
    OUTLINED_FUNCTION_14();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_107();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_178(v9);
    OUTLINED_FUNCTION_148(v10 / 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 40 * v2 <= (v3 + 32))
    {
      memmove((v3 + 32), (v0 + 32), 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_129_0(uint64_t a1, uint64_t a2, char a3)
{

  return sub_1976B5F64(a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_127_0()
{
}

char *sub_19764B5A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_0(a3, result);
  }

  return result;
}

uint64_t sub_19764B5C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19764B610(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_56_1();

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

uint64_t sub_19764B658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 24))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 32))(a3, a5);
  (*(a4 + 40))(v10, v12, v13, a2, a4);
  OUTLINED_FUNCTION_46(a3);
  v15 = *(v14 + 8);

  return v15(a1, a3);
}

uint64_t sub_19764B760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_35_5();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v10 = OUTLINED_FUNCTION_44_4();
  *(v10 + 16) = xmmword_19775A780;
  sub_19764F298(v9, v10 + 32);

  sub_19764B840(v11);
  sub_19764B990(a5, v10, v6, v6, *(v5 + 8), *(v5 + 8));
}

uint64_t sub_19764B868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_19774F420();
}

uint64_t OUTLINED_FUNCTION_121_0()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 + 160));
}

uint64_t sub_19764B990(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v23, a3, a5);
  v11 = v23[3];
  v19 = v23[2];

  sub_19764AB24(v23);
  v10(v24, a3, a5);
  v13 = v24[6];
  v12 = v24[7];

  sub_19764AB24(v24);
  (*(a6 + 40))(v19, v11, v13, v12, a4, a6);
  v10(v25, a3, a5);
  (*(a6 + 24))(v25, a4, a6);
  v14 = *(a6 + 32);

  v15 = v14(v22, a4, a6);
  *v16 = a1;
  v17 = *(v16 + 8);
  *(v16 + 8) = a2;

  return v15(v22, 0);
}

void *sub_19764BB6C(const void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  sub_19764BBBC(v4);
  return memcpy(v1, a1, 0xB0uLL);
}

uint64_t sub_19764BC30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_1976496B4(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

void OUTLINED_FUNCTION_33_6()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t sub_19764BD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v17 = &off_1F0BBB748;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;

  MEMORY[0x19A8E4C40](40, 0xE100000000000000);
  v11 = __swift_project_boxed_opaque_existential_0Tm(v15, v16);

  v12 = OUTLINED_FUNCTION_91();
  MEMORY[0x19A8E4C40](v12);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  v13 = v11[2];

  __swift_destroy_boxed_opaque_existential_0(v15);
  return a4;
}

uint64_t OUTLINED_FUNCTION_87_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return type metadata accessor for Expression();
}

uint64_t OUTLINED_FUNCTION_55_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_19774ED60();
}

uint64_t OUTLINED_FUNCTION_55_3()
{
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_73_0()
{
}

void OUTLINED_FUNCTION_65_1(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[13].n128_u64[1] = v2;
  v4[14].n128_u64[0] = v3;
  v4[12] = a2;
  v4[13].n128_u64[0] = a1;
}

void OUTLINED_FUNCTION_35_1()
{
  v1 = v0[105];
  v2 = v0[103];
  v3 = v0[102];
}

uint64_t *OUTLINED_FUNCTION_35_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a2 + 8);
  a13 = a1;
  a14 = v15;

  return __swift_allocate_boxed_opaque_existential_1(&a10);
}

uint64_t OUTLINED_FUNCTION_67_0()
{
}

void OUTLINED_FUNCTION_67_1(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[9].n128_u64[0] = 0;
  v2[9].n128_u64[1] = 0x4C4C554E20544F4ELL;
  v2[10].n128_u64[0] = 0xE800000000000000;
  v2[10].n128_u64[1] = a1;
  v2[12] = a2;
  v2[13] = a2;
  v2[14].n128_u64[0] = 0;
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1976B2DB8(va, v9 + 40, v8);
}

uint64_t OUTLINED_FUNCTION_96_0()
{

  return sub_19774F420();
}

uint64_t sub_19764C1E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19775A780;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = &off_1F0BBA858;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return 63;
}

uint64_t OUTLINED_FUNCTION_111()
{

  return sub_19764CAE4(v2 - 224, v0, v1);
}

void OUTLINED_FUNCTION_111_0()
{
  v2 = v0[4];
  *(v1 - 168) = v0[3];
  *(v1 - 160) = v2;
  *(v1 - 152) = v0[5];
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_1976CD1A4(v0, 19);
}

void sub_19764C46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_70_3();
  a45 = v46;
  a46 = v47;
  v72 = v48;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v57[3];
  v64 = v57[4];
  __swift_project_boxed_opaque_existential_0Tm(v57, v63);
  (*(v64 + 16))(&a12, v63, v64);
  v66 = a22;
  v65 = a23;
  v67 = a24;
  v68 = OUTLINED_FUNCTION_41_4();
  sub_19764C59C(v68, v69);
  sub_19764AB24(&a12);

  if (v65)
  {
    v56 = sub_1976B9F04(v56, v54, v52, v66, v65, v67);
    OUTLINED_FUNCTION_64_3();
    v70 = OUTLINED_FUNCTION_41_4();
    sub_1976C1A40(v70, v71);
  }

  sub_19764C5E0(v60, v58, v56, v54, v52, v50, v72, v62);

  OUTLINED_FUNCTION_68_3();
}

uint64_t sub_19764C59C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_19764C5E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_46(a6);
  (*(v15 + 16))(a8, v17, v16);
  sub_19764F298(a2, v34);
  if (a4)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
    v19 = &off_1F0BBB748;
    v20 = a5;
    v21 = a3;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
  }

  LOBYTE(__src[0]) = a1;
  sub_19764C774(v34, &__src[1]);
  __src[6] = v21;
  __src[7] = a4;
  __src[8] = v20;
  __src[9] = v18;
  __src[10] = v19;
  v22 = *(a7 + 32);
  OUTLINED_FUNCTION_47_3();
  sub_19764C59C(v23, v24);
  v25 = v22(v32, a6, a7);
  v27 = v26;
  sub_19764C808();
  v28 = *(*(v27 + 72) + 16);
  sub_19764E39C(v28);
  v29 = *(v27 + 72);
  *(v29 + 16) = v28 + 1;
  memcpy((v29 + 88 * v28 + 32), __src, 0x58uLL);
  return v25(v32, 0);
}

uint64_t sub_19764C774(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v2 = *(v0 + 872);

  return sub_19774EA60();
}

void *sub_19764C820(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40038, &qword_19775E608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40040, &unk_19775E610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double OUTLINED_FUNCTION_142()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[5] = 0u;
  return result;
}

uint64_t sub_19764C978(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  OUTLINED_FUNCTION_34(*(v2 + 8));
  v4(v3);
  v6 = v5;
  OUTLINED_FUNCTION_49_4();
  sub_1976505D8(v7, v8, v9);
  if (v1)
  {
  }

  else
  {
    v3 = sub_19764D694(v6);

    OUTLINED_FUNCTION_49_4();
    sub_19765081C(v10);
  }

  return v3;
}

void *sub_19764CAC4(void *a1, int64_t a2, char a3)
{
  result = sub_1976B4D00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19764CAE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_19764CB44(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_50_4(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_46(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_19764CBEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_19764C774(&v12, v10 + 40 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return __swift_destroy_boxed_opaque_existential_0(va);
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return sub_19774F5B0();
}

void OUTLINED_FUNCTION_25_4(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

void OUTLINED_FUNCTION_51(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_197649FEC(a1, a2);
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_19774F710();
}

void sub_19764CD78(uint64_t *a1@<X8>)
{
  v3 = v1[13];
  if (v3)
  {
    v4 = v1[14];
    v5 = v1[15];
    v6 = v1[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 64) = &off_1F0BBB748;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v8;

    sub_19764C59C(v4, v5);
    OUTLINED_FUNCTION_51(v3, (inited + 72));
    OUTLINED_FUNCTION_88_1(inited, v12);
    swift_setDeallocating();
    sub_19764F1B0();

    if (v5)
    {
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_19775A850;
      sub_19764F298(v12, v10 + 32);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_19775A850;
      *(v11 + 56) = v8;
      *(v11 + 64) = &off_1F0BBB748;
      *(v11 + 32) = 0x474E49564148;
      *(v11 + 40) = 0xE600000000000000;
      *(v11 + 48) = v9;
      *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
      *(v11 + 104) = &off_1F0BBB748;
      *(v11 + 72) = v4;
      *(v11 + 80) = v5;
      *(v11 + 88) = v6;
      OUTLINED_FUNCTION_88_1(v11, (v10 + 72));
      swift_setDeallocating();
      sub_19764F1B0();
      OUTLINED_FUNCTION_88_1(v10, a1);
      swift_setDeallocating();
      sub_19764F1B0();
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {
      sub_19764C774(v12, a1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_64();
  }
}

double sub_19764CF60@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  if (!v3)
  {
    return OUTLINED_FUNCTION_64();
  }

  v4 = v1[12];
  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x4552454857;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v7;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = v5;
  *(inited + 80) = v3;
  *(inited + 88) = v4;

  OUTLINED_FUNCTION_88_1(inited, a1);
  swift_setDeallocating();
  sub_19764F1B0();
  return result;
}

void sub_19764D068()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 168);
  v29 = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v21 = v1;
    v28 = MEMORY[0x1E69E7CC0];

    sub_19764CAC4(0, v3, 0);
    v4 = v28;
    v5 = v2 + 32;
    do
    {
      sub_19764F298(v5, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A850;
      *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      *(inited + 64) = &off_1F0BBB748;
      *(inited + 32) = 0x4E4F494E55;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      v8 = v23;
      v7 = v24;
      __swift_project_boxed_opaque_existential_0Tm(v22, v23);
      *(inited + 96) = v8;
      *(inited + 104) = *(v7 + 8);
      __swift_allocate_boxed_opaque_existential_1((inited + 72));
      OUTLINED_FUNCTION_46(v8);
      (*(v9 + 16))();
      OUTLINED_FUNCTION_88_1(inited, v25);
      swift_setDeallocating();
      sub_19764F1B0();
      __swift_destroy_boxed_opaque_existential_0(v22);
      v28 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_19764CAC4((v10 > 1), v11 + 1, 1);
      }

      v12 = v26;
      v13 = v27;
      __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_61();
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_66_3();
      (*(v17 + 16))(v4);
      v18 = OUTLINED_FUNCTION_29_5();
      sub_19764CBEC(v18, v19, v20, v12, v13);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v4 = v28;
      v5 += 40;
      --v3;
    }

    while (v3);
    sub_19764CB44(&v29, &unk_1EAF40198);
    OUTLINED_FUNCTION_88_1(v4, v21);
  }

  else
  {
    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  OUTLINED_FUNCTION_43();
}

double sub_19764D30C@<D0>(uint64_t *a1@<X8>)
{
  if (!*(*(v1 + 136) + 16))
  {
    return OUTLINED_FUNCTION_64();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x594220524544524FLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v4;

  OUTLINED_FUNCTION_51(v5, (inited + 72));

  OUTLINED_FUNCTION_45_3(a1);
  swift_setDeallocating();
  sub_19764F1B0();
  return result;
}

uint64_t OUTLINED_FUNCTION_128()
{

  return sub_19774F420();
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 112) = result;
  *(v3 - 104) = a2;
  *(v3 - 96) = a3;
  return result;
}

void OUTLINED_FUNCTION_31_3(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_197649FEC(v1, va);
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  *(v14 + 16) = v15;

  return sub_19764C774(&a14, v14 + v17 * v16 + 32);
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return sub_19774EEB0();
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_197662474(va);
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t *OUTLINED_FUNCTION_26_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 64) = a2;
  v3 = (a1 + 32);

  return __swift_allocate_boxed_opaque_existential_1(v3);
}

uint64_t sub_19764D558(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v2, 32, 7);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return sub_19774EE40();
}

void OUTLINED_FUNCTION_48_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_197649FEC(v32, &a32);
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return swift_slowAlloc();
}

uint64_t sub_19764D694(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
  }

  sub_19764D820(1);
  OUTLINED_FUNCTION_1_24();
  swift_beginAccess();
  if (v2 == sqlite3_bind_parameter_count(*(v1 + 16)))
  {
    v4 = a1 + 32;
    v5 = -v2;
    v6 = 1;
    do
    {
      sub_19764D870(v4, v6++);
      v4 += 40;
    }

    while (v5 + v6 != 1);
  }

  sub_19774F5B0();
  sqlite3_bind_parameter_count(*(v1 + 16));
  sub_19774F7C0();

  MEMORY[0x19A8E4C40](0xD000000000000012, 0x8000000197761FD0);
  v8 = sub_19774F7C0();
  MEMORY[0x19A8E4C40](v8);

  MEMORY[0x19A8E4C40](0x64657373617020, 0xE700000000000000);
  result = OUTLINED_FUNCTION_2_17();
  __break(1u);
  return result;
}

uint64_t sub_19764D820(char a1)
{
  swift_beginAccess();
  result = sqlite3_reset(*(v1 + 16));
  if (a1)
  {
    return sqlite3_clear_bindings(*(v1 + 16));
  }

  return result;
}

uint64_t sub_19764D870(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_19765079C(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      v3 = v13;
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v13 + 16);
          if (!(v4 >> 31))
          {
            v2 = v2[2];
            if (qword_1ED697060 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v2, a2, (v3 + 32), v4, qword_1ED697428);
            }

LABEL_49:
            swift_once();
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_19764CAE4(v15, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  sub_19765079C(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v13);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_19764CAE4(v15, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  sub_19765079C(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v13);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_19764CAE4(v15, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  sub_19765079C(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_1ED697060 == -1)
          {
LABEL_30:
            v8 = qword_1ED697428;
            v9 = sub_19774EFD0();

            sqlite3_bind_text(v2, a2, (v9 + 32), -1, v8);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_19764CAE4(v15, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  v10 = MEMORY[0x1E69E7360];
  sub_19765079C(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      v11 = v13;
LABEL_39:
      v16 = v10;
      v17 = &off_1F0BBA840;
      v15[0] = v11;
      sub_19764D870(v15, a2);
      v12 = v15;
      return sub_19764CAE4(v12, &unk_1EAF3FEB0, &unk_19775A8C0);
    }
  }

  else
  {
    sub_19764CAE4(v15, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  sub_19765079C(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      v11 = v13;
      goto LABEL_39;
    }
  }

  else
  {
    sub_19764CAE4(v15, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  sub_19765079C(a1, &v13);
  if (!v14)
  {
    v12 = &v13;
    return sub_19764CAE4(v12, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  sub_19764C774(&v13, v15);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_19774F5B0();
  MEMORY[0x19A8E4C40](0xD00000000000001FLL, 0x80000001977620C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
  sub_19774F6E0();
  result = sub_19774F710();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return sub_19768ED3C(v0, v1, (v2 - 96));
}

double OUTLINED_FUNCTION_68_1@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_68_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 16);
  v9 = *(a6 + 8);
  *(v6 - 80) = a5;
  *(v6 - 72) = v9;

  return __swift_allocate_boxed_opaque_existential_1((v6 - 104));
}

void sub_19764DEEC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v7 + v6, 1);
  v10 = *v4;
  if (!*(a1 + 16))
  {

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  OUTLINED_FUNCTION_67_2();
  if (v13 != v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_133_0();

  if (!v6)
  {
LABEL_8:
    *v4 = v10;
    return;
  }

  v15 = *(v10 + 16);
  v14 = __OFADD__(v15, v6);
  v16 = v15 + v6;
  if (!v14)
  {
    *(v10 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_19764EEB4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return swift_setDeallocating();
}

uint64_t sub_19764E1F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_19774F140();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_19774E9D0();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return sub_19774F7E0();
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return sub_197646324(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return type metadata accessor for SQLiteEncoder();
}

uint64_t sub_19764E3B4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  v6 = *(v2 + 8);
  if (*v2)
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (*v2)
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;

  OUTLINED_FUNCTION_51(v11, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  a1(1);
  OUTLINED_FUNCTION_88_1(inited, a2);
  swift_setDeallocating();
  return sub_19764F1B0();
}

uint64_t sub_19764E500@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v12 = *(v4 + 32);
  v11 = *(v4 + 40);
  v13 = *(v4 + 64);
  v14 = OUTLINED_FUNCTION_155();
  a2(v14);

  a3(v4);
  if (v11)
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A7E0;
      v16 = OUTLINED_FUNCTION_155();
      a2(v16);

      a3(v4);
      sub_19764E750(v10, v9, v13 & 1, (inited + 32));

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      *(inited + 104) = &off_1F0BBB748;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      v18 = MEMORY[0x1E69E7CC0];
      *(inited + 88) = MEMORY[0x1E69E7CC0];
      *(inited + 96) = v17;
      *(inited + 136) = v17;
      *(inited + 144) = &off_1F0BBB748;
      v19 = OUTLINED_FUNCTION_108();
      v21 = sub_1976497AC(v19, v20);
      v23 = v22;

      *(inited + 112) = v21;
      *(inited + 120) = v23;
      *(inited + 128) = v18;
      OUTLINED_FUNCTION_88_1(inited, a4);
      swift_setDeallocating();
      return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
    }

    v26 = OUTLINED_FUNCTION_155();
    a2(v26);

    a3(v4);
    v9 = v11;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_155();
    a2(v25);

    a3(v4);

    v12 = v10;
  }

  sub_19764E750(v12, v9, v13 & 1, a4);
}

uint64_t sub_19764E750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v8 = OUTLINED_FUNCTION_108();
    a1 = sub_1976497AC(v8, v9);
    a2 = v10;
  }

  else
  {
  }

  if (*(v4 + 56))
  {
    v11 = *(v4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 56) = v13;
    *(inited + 64) = &off_1F0BBB748;
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_127();
    *(inited + 32) = sub_1976497AC(v14, v15);
    *(inited + 40) = v16;
    v17 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v13;
    *(inited + 104) = &off_1F0BBB748;
    *(inited + 72) = a1;
    *(inited + 80) = a2;
    *(inited + 88) = v17;
    sub_197649FEC(inited, a4);
    swift_setDeallocating();
    return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    a4[4] = &off_1F0BBB748;
    *a4 = a1;
    a4[1] = a2;
    a4[2] = MEMORY[0x1E69E7CC0];
    a4[3] = result;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_2()
{
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_19774EFF0();
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  *(v3 - 128) = v2;
  *(v3 - 120) = v1;
  *(v3 - 112) = v0;
  *(v3 - 168) = 40;
  *(v3 - 160) = 0xE100000000000000;
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  return type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
}

void OUTLINED_FUNCTION_42_1()
{

  JUMPOUT(0x19A8E4C40);
}

void sub_19764EA8C()
{
  v2 = *(v0 + 24);

  v3 = sub_197651C3C(v2, v0);
  if (!v1 && v3)
  {
    v4 = sub_197651D9C();
    sub_19764EAE0(v4, v5);
  }
}

void sub_19764EAE0(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);

  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      sub_19764ADEC(v7, a1, v29);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = v18 + 40 * v20;
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      *(v9 + 32) = v30;
      *v9 = v23;
      *(v9 + 16) = v24;
      v9 += 40;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

uint64_t sub_19764ECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_19764EA74(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void *sub_19764ED2C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_0_21();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_19764ED9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_19764ED2C(*(a1 + 16), 0);
  v5 = OUTLINED_FUNCTION_52_4(v3, v4);
  sub_197651EE4();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_19764EE28()
{

  return sub_197652D20(v0);
}

unint64_t sub_19764EE50()
{
  result = qword_1ED696F30[0];
  if (!qword_1ED696F30[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF40240, &qword_19775F490);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED696F30);
  }

  return result;
}

uint64_t sub_19764EEB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_197652DCC(a1, a2);
  }

  return a1;
}

uint64_t sub_19764EEC8()
{
  OUTLINED_FUNCTION_65();
  v3 = (*(v2 + 24))();
  (*(v0 + 32))(v1, v0);
  return v3;
}

uint64_t sub_19764EF3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_19764B5A8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return sub_197649708(v2, v1, v3, a1);
}

id OUTLINED_FUNCTION_9_3(uint64_t *a1)
{

  return sub_19767726C(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_19774EED0();
}

void OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  __swift_destroy_boxed_opaque_existential_0(a13);

  JUMPOUT(0x19A8E67F0);
}

uint64_t OUTLINED_FUNCTION_9_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 152) = v2;
  *(v5 - 144) = v3;
  *(v5 - 136) = v4;
  *(v5 - 128) = result;
  *(v5 - 120) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0((v2 - 120));
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1976C977C(a12, a13, a14, 1, v14);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_19764F210()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_1976496B4(qword_1ED697130, &qword_1EAF3F740, &unk_19775A7F0);
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_19764F298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_46(v3);
  (*v4)(a2);
  return a2;
}

void sub_19764F2F8(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_14();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_107();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{

  sub_197649968(v46, v47, v48, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

id OUTLINED_FUNCTION_41_2()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_93_1()
{
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1976C2388(a1, a2, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_24_1()
{
}

BOOL OUTLINED_FUNCTION_24_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_24_7()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_19764C59C(v0, v1);
}

uint64_t sub_19764F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v75 = a8;
  v76 = a6;
  v77 = a2;
  v78 = a3;
  OUTLINED_FUNCTION_91_1();
  v14 = sub_19774F420();
  OUTLINED_FUNCTION_61();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_76_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  OUTLINED_FUNCTION_61();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v22, a4, v14);
  if (__swift_getEnumTagSinglePayload(v22, 1, a5) == 1)
  {
    (*(v16 + 8))(v22, v14);
    v30 = type metadata accessor for Expression();
    v89 = v30;
    v90 = &off_1F0BBB748;
    v86 = a1;
    v87 = v77;
    v88 = v78;
    OUTLINED_FUNCTION_119_0();
    v84 = v30;
    v85 = &off_1F0BBB748;

    OUTLINED_FUNCTION_49_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_48_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_92_1();
    sub_1976C7578(v31, v32, v33, v76, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    v36 = OUTLINED_FUNCTION_73_2(inited, xmmword_19775A850);
    sub_19764E1F4(v36, &inited[2]);
    sub_19764E1F4(v83, &inited[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v79 = v37;
    v80 = v38;
    MEMORY[0x19A8E4C40](a10, a11);
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_115_0();
    sub_197649FEC(inited, v39);

    v40 = v82;
    __swift_project_boxed_opaque_existential_0Tm(&v79, v81);
    OUTLINED_FUNCTION_34(v40);
    v41 = OUTLINED_FUNCTION_110();
    v42(v41);
    __swift_destroy_boxed_opaque_existential_0(&v79);
    OUTLINED_FUNCTION_33();
    v50 = sub_19764BD90(v43, v44, v45, v46, v47, v48, v49);

    swift_setDeallocating();
    sub_19764F1B0();
  }

  else
  {
    v74 = v24;
    (*(v24 + 32))(v29, v22, a5);
    v89 = type metadata accessor for Expression();
    v90 = &off_1F0BBB748;
    v86 = a1;
    v87 = v77;
    v88 = v78;
    v51 = *(v76 + 8);
    v84 = a5;
    v85 = v51;
    __swift_allocate_boxed_opaque_existential_1(v83);
    v52 = *(v24 + 16);
    OUTLINED_FUNCTION_77_2();
    v53();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v54 = swift_initStackObject();
    v55 = OUTLINED_FUNCTION_73_2(v54, xmmword_19775A850);
    sub_19764E1F4(v55, &v54[2]);
    sub_19764E1F4(v83, &v54[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v79 = v56;
    v80 = v57;

    MEMORY[0x19A8E4C40](v75, a9);
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_115_0();
    sub_197649FEC(v54, v58);

    v59 = v81;
    v60 = v82;
    __swift_project_boxed_opaque_existential_0Tm(&v79, v81);
    OUTLINED_FUNCTION_34(v60);
    v61(v59, v60);
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_33();
    v50 = sub_19764BD90(v62, v63, v64, v65, v66, v67, v68);

    swift_setDeallocating();
    sub_19764F1B0();
    v69 = *(v74 + 8);
    v70 = OUTLINED_FUNCTION_110_0();
    v71(v70);
  }

  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_destroy_boxed_opaque_existential_0(&v86);
  return v50;
}

uint64_t sub_19764FB14(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    v5 = *(v3 + 16);
    OUTLINED_FUNCTION_35_3();
    result = a1();
    *v1 = result;
  }

  return result;
}

uint64_t sub_19764FB6C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_19764FBB4()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775E760;
  sub_19764E3B4(v2, (inited + 32));
  sub_19764FDB0();
  sub_19764CF60((inited + 112));
  sub_19764CD78((inited + 152));
  sub_19764D068();
  sub_19764D30C((inited + 232));
  sub_1976503A0((inited + 272));
  v4 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 312; i += 40)
  {
    v6 = OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_9_8(v6, v7, v8, v9, v10, v11, v12, v13, v38, *(&v38 + 1), v39, v40, v41, v42, *(&v42 + 1), v43, v44, v45, v46[0], v46[1], v47);
    if (v22)
    {
      sub_19764C774(&v38, &v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_10();
        v4 = v35;
      }

      OUTLINED_FUNCTION_18_7();
      if (v32)
      {
        sub_19764F434(v31 > 1, v0, 1, v4);
        v4 = v23;
      }

      OUTLINED_FUNCTION_31_4(v23, v24, v25, v26, v27, v28, v29, v30, v38, *(&v38 + 1), v39, v40, v41, v42);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_27_6(v14, v15, v16, v17, v18, v19, v20, v21, v38);
      sub_19764CB44(v33, v34);
    }
  }

  swift_setDeallocating();
  sub_1976505C4();
  OUTLINED_FUNCTION_45_3(v46);

  v36 = OUTLINED_FUNCTION_0_24(v46);
  v37(v36);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v46);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_43();
}

BOOL OUTLINED_FUNCTION_88_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_88_1(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_197649FEC(a1, a2);
}

uint64_t *OUTLINED_FUNCTION_88_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v32 - 96) = a1;
  *(v32 - 88) = a2;
  *(v32 - 120) = v31;
  *(v32 - 112) = v29;
  *(v32 - 104) = v28;
  v34 = *(v27 + 8);
  a26 = v30;
  a27 = v34;

  return __swift_allocate_boxed_opaque_existential_1(&a23);
}

void sub_19764FDB0()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v0 + 72);
  v22 = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];

    sub_19764CAC4(0, v4, 0);
    v5 = v21;
    v6 = v3 + 32;
    do
    {
      sub_19764FF5C(v18);
      v21 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_19764CAC4((v7 > 1), v8 + 1, 1);
      }

      v9 = v19;
      v10 = v20;
      __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      OUTLINED_FUNCTION_61();
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v13);
      OUTLINED_FUNCTION_8_0();
      v16 = v15 - v14;
      (*(v17 + 16))(v15 - v14);
      sub_19764CBEC(v8, v16, &v21, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v5 = v21;
      v6 += 88;
      --v4;
    }

    while (v4);
    sub_19764CB44(&v22, &unk_1EAF401A0);
    OUTLINED_FUNCTION_88_1(v5, v2);
  }

  else
  {
    OUTLINED_FUNCTION_64();
  }

  OUTLINED_FUNCTION_43();
}

uint64_t sub_19764FF5C@<X0>(uint64_t *a1@<X8>)
{
  sub_197650334();
  v2 = v18;
  sub_19764C774(v19, v22);
  v20[0] = *&v19[5];
  v20[1] = *&v19[7];
  v21 = v19[9];
  sub_197650334();
  if (v17)
  {
    sub_19764C774(&v16, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A860;
    v4 = 0xE000000000000000;
    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    v5 = 0;
    switch(v2)
    {
      case 1:
        v4 = 0xE500000000000000;
        v5 = 0x52454E4E49;
        break;
      case 2:
        v5 = 0x54554F205446454CLL;
        v4 = 0xEA00000000005245;
        break;
      case 3:
        break;
      default:
        v4 = 0xE500000000000000;
        v5 = 0x53534F5243;
        break;
    }

    MEMORY[0x19A8E4C40](v5, v4);

    MEMORY[0x19A8E4C40](0x4E494F4A20, 0xE500000000000000);
    v9 = v16;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 64) = &off_1F0BBB748;
    *(inited + 32) = v9;
    v11 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v10;
    __swift_project_boxed_opaque_existential_0Tm(v22, v23);
    sub_197649C34();
    *(inited + 136) = v10;
    *(inited + 144) = &off_1F0BBB748;
    *(inited + 112) = 20047;
    *(inited + 120) = 0xE200000000000000;
    *(inited + 128) = v11;
    sub_19764F298(&v18, inited + 152);
    sub_197649FEC(inited, a1);
    swift_setDeallocating();
    sub_19764F1B0();
    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  else
  {
    sub_19764CB44(&v16, &unk_1EAF3FFE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_19775A850;
    v7 = 0xE000000000000000;
    v18 = 0;
    v19[0] = 0xE000000000000000;
    v8 = 0;
    switch(v2)
    {
      case 1:
        v7 = 0xE500000000000000;
        v8 = 0x52454E4E49;
        break;
      case 2:
        v8 = 0x54554F205446454CLL;
        v7 = 0xEA00000000005245;
        break;
      case 3:
        break;
      default:
        v7 = 0xE500000000000000;
        v8 = 0x53534F5243;
        break;
    }

    MEMORY[0x19A8E4C40](v8, v7);

    MEMORY[0x19A8E4C40](0x4E494F4A20, 0xE500000000000000);
    v12 = v18;
    v13 = v19[0];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(v6 + 64) = &off_1F0BBB748;
    *(v6 + 32) = v12;
    *(v6 + 40) = v13;
    *(v6 + 48) = MEMORY[0x1E69E7CC0];
    *(v6 + 56) = v14;
    __swift_project_boxed_opaque_existential_0Tm(v22, v23);
    sub_197649C34();
    sub_197649FEC(v6, a1);
    swift_setDeallocating();
    sub_19764F1B0();
  }

  sub_19764CB44(v20, &unk_1EAF3FFE0);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_197650334()
{
  OUTLINED_FUNCTION_31_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_46(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

void sub_1976503A0(uint64_t *a1@<X8>)
{
  if (*(v1 + 161))
  {
    OUTLINED_FUNCTION_64();
  }

  else
  {
    v3 = *(v1 + 160);
    v4 = *(v1 + 152);
    v11 = *(v1 + 144);
    v5 = sub_19774F7C0();
    MEMORY[0x19A8E4C40](v5);

    if (v3)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      a1[4] = &off_1F0BBB748;
      *a1 = 0x2054494D494CLL;
      a1[1] = 0xE600000000000000;
      a1[2] = MEMORY[0x1E69E7CC0];
      a1[3] = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A850;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      *(inited + 64) = &off_1F0BBB748;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = v8;
      v10 = sub_19774F7C0();
      MEMORY[0x19A8E4C40](v10);

      *(inited + 96) = v8;
      *(inited + 104) = &off_1F0BBB748;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      OUTLINED_FUNCTION_45_3(a1);
      swift_setDeallocating();
      sub_19764F1B0();
    }
  }
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t sub_1976505D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = OUTLINED_FUNCTION_23_6();
    result = sub_1976505D8(v5);
    if (!v3)
    {
      v7 = sub_19764D694(a3);

      return v7;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    return sub_1976506A0(v8);
  }

  return result;
}

uint64_t sub_1976506A0(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  v3 = sub_197646D50();
  v4 = sub_19774EFD0();

  swift_beginAccess();
  v5 = sqlite3_prepare_v2(v3, (v4 + 32), -1, (v1 + 16), 0);
  swift_endAccess();

  sub_1976469C4(v5, 0);
  OUTLINED_FUNCTION_5_12();
  if (v2)
  {
  }

  return v1;
}

uint64_t sub_19765079C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19765081C(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  v145 = swift_allocObject();
  v146 = v4;
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v131 = (v4 + 16);
  *(v145 + 16) = 0;
  v5 = a1[3];
  v6 = a1[4];
  v147 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 16))(v158, v5, v6);
  v7 = v158[1];

  sub_19764AB24(v158);
  v8 = *(v7 + 16);
  v130 = (v145 + 16);
  swift_beginAccess();
  v9 = 0;
  v135 = v7 + 32;
  v136 = v7;
  v10 = MEMORY[0x1E69E7CC0];
  v132 = v8;
  while (1)
  {
    while (1)
    {
      if (v9 == v8)
      {

        swift_beginAccess();
        v49 = *(v146 + 16);

        return v49;
      }

      if (v9 >= *(v136 + 16))
      {
        goto LABEL_101;
      }

      v139 = v9;
      sub_19764F298(v135 + 40 * v9, v155);
      v11 = v156;
      v12 = v157;
      __swift_project_boxed_opaque_existential_0Tm(v155, v156);
      v13 = (*(v12 + 8))(v11, v12);
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v141 = v2;
        v17 = v10;
        v18 = 4 * v16;
        v19 = 15;
LABEL_8:
        v137 = v17;
        for (i = v19; ; i = sub_19774F000())
        {
          v21 = i >> 14;
          v22 = v19 >> 14;
          if (i >> 14 == v18)
          {
            break;
          }

          if (sub_19774F090() == 46 && v23 == 0xE100000000000000)
          {

LABEL_17:
            if (v22 == v21)
            {
              v17 = v137;
            }

            else
            {
              if (v21 < v22)
              {
                goto LABEL_104;
              }

              v26 = sub_19774F0B0();
              v28 = v27;
              v133 = v30;
              v134 = v29;
              v17 = v137;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_197651638(0, *(v137 + 16) + 1, 1, v137);
                v17 = v34;
              }

              v32 = *(v17 + 16);
              v31 = *(v17 + 24);
              if (v32 >= v31 >> 1)
              {
                sub_197651638(v31 > 1, v32 + 1, 1, v17);
                v17 = v35;
              }

              *(v17 + 16) = v32 + 1;
              v33 = (v17 + 32 * v32);
              v33[4] = v26;
              v33[5] = v28;
              v33[6] = v134;
              v33[7] = v133;
            }

            v19 = sub_19774F000();
            goto LABEL_8;
          }

          v25 = sub_19774F7E0();

          if (v25)
          {
            goto LABEL_17;
          }
        }

        v36 = v137;
        if (v22 == v18)
        {

          v2 = v141;
          v10 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v2 = v141;
          if (v18 < v22)
          {
            goto LABEL_105;
          }

          v37 = sub_19774F0B0();
          v39 = v38;
          v41 = v40;
          v43 = v42;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_197651638(0, *(v137 + 16) + 1, 1, v137);
            v36 = v126;
          }

          v10 = MEMORY[0x1E69E7CC0];
          v45 = *(v36 + 16);
          v44 = *(v36 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_197651638(v44 > 1, v45 + 1, 1, v36);
            v36 = v127;
          }

          *(v36 + 16) = v45 + 1;
          v46 = (v36 + 32 * v45);
          v46[4] = v37;
          v46[5] = v39;
          v46[6] = v41;
          v46[7] = v43;
        }
      }

      else
      {

        v36 = v10;
      }

      v47 = *(v36 + 16);
      if (v47)
      {
        v142 = v2;
        __src[0] = v10;
        sub_19764AD60(0, v47, 0);
        v48 = 0;
        v49 = __src[0];
        v50 = (v36 + 56);
        while (v48 < *(v36 + 16))
        {
          v51 = v47;
          v52 = v36;
          v53 = v49;
          v55 = *(v50 - 3);
          v54 = *(v50 - 2);
          v56 = *(v50 - 1);
          v57 = *v50;

          v58 = v54;
          v49 = v53;
          v59 = MEMORY[0x19A8E4C10](v55, v58, v56, v57);
          v61 = v60;

          __src[0] = v53;
          v62 = *(v53 + 16);
          v63 = v49[3];
          if (v62 >= v63 >> 1)
          {
            sub_19764AD60((v63 > 1), v62 + 1, 1);
            v49 = __src[0];
          }

          ++v48;
          v49[2] = v62 + 1;
          v64 = &v49[2 * v62];
          v64[4] = v59;
          v64[5] = v61;
          v50 += 4;
          v47 = v51;
          v36 = v52;
          if (v51 == v48)
          {

            v2 = v142;
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_98:

        __swift_destroy_boxed_opaque_existential_0(__src);
LABEL_94:
        __swift_destroy_boxed_opaque_existential_0(v152);
        __swift_destroy_boxed_opaque_existential_0(v155);

        return v49;
      }

      v49 = v10;
LABEL_43:
      if (!v49[2])
      {
        goto LABEL_102;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1976C22A4(v49);
      }

      v65 = v49[2];
      if (!v65)
      {
        goto LABEL_103;
      }

      v66 = v65 - 1;
      v67 = &v49[2 * v66];
      v69 = v67[4];
      v68 = v67[5];
      v140 = v139 + 1;
      v49[2] = v66;
      __src[0] = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
      sub_1976C22B8(&qword_1ED6972C8, &unk_1EAF3FF30);
      v70 = sub_19774EEB0();
      v72 = v71;

      if (v69 == 42 && v68 == 0xE100000000000000)
      {
        break;
      }

      v74 = sub_19774F7E0();

      if (v74)
      {
        goto LABEL_59;
      }

      v75 = v156;
      v76 = v157;
      __swift_project_boxed_opaque_existential_0Tm(v155, v156);
      v77 = (*(v76 + 8))(v75, v76);
      v79 = v78;

      v80 = *v130;
      swift_beginAccess();
      v81 = *v131;
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = *v131;
      v82 = __dst[0];
      v83 = sub_19764EA74(v77, v79);
      if (__OFADD__(*(v82 + 16), (v84 & 1) == 0))
      {
        goto LABEL_106;
      }

      v85 = v83;
      v86 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401B0, &unk_19775EDB0);
      if (sub_19774F6F0())
      {
        v87 = sub_19764EA74(v77, v79);
        if ((v86 & 1) != (v88 & 1))
        {
          goto LABEL_109;
        }

        v85 = v87;
      }

      v89 = __dst[0];
      if (v86)
      {
        *(*(__dst[0] + 56) + 8 * v85) = v80;
      }

      else
      {
        *(__dst[0] + 8 * (v85 >> 6) + 64) |= 1 << v85;
        v122 = (v89[6] + 16 * v85);
        *v122 = v77;
        v122[1] = v79;
        *(v89[7] + 8 * v85) = v80;
        v123 = v89[2];
        v124 = __OFADD__(v123, 1);
        v125 = v123 + 1;
        if (v124)
        {
          goto LABEL_108;
        }

        v89[2] = v125;
      }

      *v131 = v89;
      swift_endAccess();
      v8 = v132;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_107;
      }

      *v130 = v80 + 1;
      __swift_destroy_boxed_opaque_existential_0(v155);
LABEL_91:
      v9 = v140;
      v10 = MEMORY[0x1E69E7CC0];
    }

LABEL_59:
    sub_19764F298(v147, v152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_19775A780;
    *(v90 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(v90 + 64) = &off_1F0BBB748;
    *(v90 + 32) = 42;
    *(v90 + 40) = 0xE100000000000000;
    *(v90 + 48) = MEMORY[0x1E69E7CC0];
    v91 = v153;
    v92 = v154;
    __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
    v93 = (*(v92 + 32))(__src, v91, v92);
    *v94 = 0;
    v95 = *(v94 + 8);
    *(v94 + 8) = v90;

    v93(__src, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40028, &qword_19775E5F0);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_19775A780;
    v138 = v96;
    sub_19764F298(v152, v96 + 32);
    v97 = v147[3];
    v98 = v147[4];
    __swift_project_boxed_opaque_existential_0Tm(v147, v97);
    (*(v98 + 16))(v159, v97, v98);
    v99 = v160;
    v164 = v160;

    sub_19764AB24(v159);
    v100 = *(v99 + 16);
    if (v100)
    {
      v151 = MEMORY[0x1E69E7CC0];
      sub_1976B4CC0(0, v100, 0);
      v101 = v151;
      v102 = v99 + 32;
      do
      {
        sub_197650334();
        memcpy(__dst, __src, sizeof(__dst));
        sub_19764C774(&__dst[1], v150);
        sub_19764CB44(&__dst[6], &unk_1EAF3FFE0);
        v151 = v101;
        v104 = *(v101 + 16);
        v103 = *(v101 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_1976B4CC0((v103 > 1), v104 + 1, 1);
          v101 = v151;
        }

        *(v101 + 16) = v104 + 1;
        sub_19764C774(v150, v101 + 40 * v104 + 32);
        v102 += 88;
        --v100;
      }

      while (v100);
      sub_19764CB44(&v164, &unk_1EAF401A0);
    }

    else
    {
      sub_19764CB44(&v164, &unk_1EAF401A0);

      v101 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = v138;
    v49 = __src;
    sub_1976B5F3C(v101);
    v105 = __src[0];
    v106 = (v72 >> 56) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v106 = v70 & 0xFFFFFFFFFFFFLL;
    }

    if (!v106)
    {
      break;
    }

    v143 = v2;
    v107 = 0;
    v108 = *(__src[0] + 16);
    for (j = __src[0] + 32; ; j += 40)
    {
      if (v108 == v107)
      {

        sub_1976C1B74();
        swift_allocError();
        *v128 = v70;
        *(v128 + 8) = v72;
        *(v128 + 16) = 0;
        *(v128 + 24) = 0;
        swift_willThrow();
        goto LABEL_94;
      }

      if (v107 >= *(v105 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_19764F298(j, __src);
      __swift_project_boxed_opaque_existential_0Tm(__src, __src[3]);
      sub_197649C2C();
      sub_197649C34();
      v110 = __dst[3];
      v111 = __dst[4];
      __swift_project_boxed_opaque_existential_0Tm(__dst, __dst[3]);
      v112 = (*(v111 + 8))(v110, v111);
      v49 = v113;

      if (v112 == v70 && v49 == v72)
      {
        break;
      }

      v115 = sub_19774F7E0();

      __swift_destroy_boxed_opaque_existential_0(__dst);
      if (v115)
      {
        goto LABEL_84;
      }

      __swift_destroy_boxed_opaque_existential_0(__src);
      ++v107;
    }

    __swift_destroy_boxed_opaque_existential_0(__dst);
LABEL_84:

    sub_1976BFB18(__src, v144, 1, v146, v145);
    v2 = v143;
    v8 = v132;
    v10 = MEMORY[0x1E69E7CC0];
    if (v143)
    {
      goto LABEL_98;
    }

    __swift_destroy_boxed_opaque_existential_0(__src);
    __swift_destroy_boxed_opaque_existential_0(v152);
    __swift_destroy_boxed_opaque_existential_0(v155);
    v9 = v140;
  }

  v116 = 0;
  v117 = *(v105 + 16);
  for (k = v105 + 32; ; k += 40)
  {
    if (v117 == v116)
    {

      __swift_destroy_boxed_opaque_existential_0(v152);
      __swift_destroy_boxed_opaque_existential_0(v155);
      v8 = v132;
      goto LABEL_91;
    }

    if (v116 >= *(v105 + 16))
    {
      break;
    }

    sub_19764F298(k, __src);
    v119 = v147[3];
    v120 = v147[4];
    __swift_project_boxed_opaque_existential_0Tm(v147, v119);
    (*(v120 + 16))(v161, v119, v120);
    v121 = v162;
    v163 = v162;

    sub_19764AB24(v161);
    v49 = *(v121 + 16);
    sub_19764CB44(&v163, &unk_1EAF401A0);
    sub_1976BFB18(__src, v144, v49 != 0, v146, v145);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_0(__src);

      goto LABEL_94;
    }

    ++v116;
    __swift_destroy_boxed_opaque_existential_0(__src);
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_1976515F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_197651638(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_12(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7B0, &qword_19775E600);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 32);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_11();
        sub_197651B14(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_13_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1976518D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_19764EE28();
  *a2 = result;
  a2[1] = v5;
  return result;
}

char *sub_197651B14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_0(a3, result);
  }

  return result;
}

char *sub_197651B34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_197651C3C(uint64_t a1, uint64_t a2)
{
  sub_19764665C();
  if (qword_1ED6972C0 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  sub_19774F360();
  v5 = sub_197646CE8();
  if ((v13 & 1) != 0 || v12 != v5)
  {
    v10 = *(a1 + 104);
    sub_19774F390();

    if (!v2)
    {
      return v14;
    }
  }

  else
  {
    v6 = *(a2 + 24);
    swift_beginAccess();
    v7 = sqlite3_step(*(a2 + 16));
    v8 = v7;
    sub_1976469C4(v7, 0);

    if (!v2)
    {
      return v8 == 100;
    }
  }

  return v9;
}

uint64_t sub_197651D9C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[8];
    return v1;
  }

  OUTLINED_FUNCTION_0_25();
  result = swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v4 = sub_197651DF8();
    v0[7] = v1;
    v0[8] = v4;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_197651DF8()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_197651E48(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  v4 = sqlite3_column_blob(a2, iCol);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a2, v2);

  return sub_19764AFD4(v5, v6);
}

uint64_t sub_197651EEC(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197652048@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_19774EAE0();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x19A8E4720]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x19A8E4730]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1976520C0()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_197652104()
{
  sub_1976520C0();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_19765213C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v5 = sub_197652138(a2);
  v6 = 0;
  v7 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return v4;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8E5210](v6, a2);
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v2 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v9 = [v8 orderedPhrases];
    sub_197652E44();
    v10 = sub_19774F120();

    if (v10 >> 62)
    {
      v11 = sub_19774F500();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = __OFADD__(v7, v11);
    v7 += v11;
    if (v13)
    {
      goto LABEL_35;
    }

    if (v7 > a1)
    {
      v14 = [v2 orderedPhrases];
      v15 = sub_19774F120();

      if (!__OFSUB__(v7, a1))
      {
        v16 = sub_19768FDDC(v7 - a1, v15);
        v18 = v17;
        v20 = v19;
        v22 = v21;
        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }

        sub_19774F7F0();
        swift_unknownObjectRetain_n();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = MEMORY[0x1E69E7CC0];
        }

        v25 = *(v24 + 16);

        if (__OFSUB__(v22 >> 1, v20))
        {
          __break(1u);
        }

        else if (v25 == (v22 >> 1) - v20)
        {
          v26 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v56 = v26;
          if (!v26)
          {
            v56 = MEMORY[0x1E69E7CC0];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        swift_unknownObjectRelease();
LABEL_19:
        sub_19769009C(v16, v18, v20, v22);
        v56 = v23;
LABEL_29:
        swift_unknownObjectRelease();
LABEL_30:
        v27 = [v2 bundleIdentifier];
        v28 = sub_19774EF50();
        v53 = v29;
        v54 = v28;

        v30 = [v2 localeIdentifier];
        v31 = sub_19774EF50();
        v51 = v32;
        v52 = v31;

        v33 = [v2 actionIdentifier];
        v50 = sub_19774EF50();
        v35 = v34;

        v36 = sub_19765B7CC(v2, &selRef_localizedShortTitle);
        v38 = v37;
        v39 = sub_19765B7CC(v2, &selRef_localizedAutoShortcutDescription);
        v41 = v40;
        v42 = [v2 systemImageName];
        v43 = sub_19774EF50();
        v45 = v44;

        v46 = [v2 shortcutTileColor];
        v47 = [v2 parameterPresentation];
        v48 = objc_allocWithZone(LNAutoShortcut);
        sub_19768FF0C(v54, v53, v52, v51, v50, v35, v56, v36, v38, v39, v41, v43, v45, v46, v47);
        MEMORY[0x19A8E4D30]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_31:
          sub_19774F170();
          v4 = v57;

          return v4;
        }

LABEL_37:
        sub_19774F140();
        goto LABEL_31;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v7 == a1)
    {
      break;
    }

    v2 = v2;
    MEMORY[0x19A8E4D30]();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19774F140();
    }

    sub_19774F170();

    v4 = v57;
    ++v6;
  }

  MEMORY[0x19A8E4D30](v12);
  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_19774F140();
  }

  sub_19774F170();
  return v57;
}

uint64_t sub_1976525E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_19774F930();
  sub_19774EFF0();
  v7 = sub_19774F950();

  return a3(a1, a2, v7);
}

unint64_t sub_19765266C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_19774F7E0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_19765272C()
{
  OUTLINED_FUNCTION_8();
  v32 = v1;
  v33 = v2;
  v4 = v3;
  v30 = v6;
  v31 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_19774F420();
  OUTLINED_FUNCTION_61();
  v29 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v20 = type metadata accessor for Expression();
  v34[0] = v12;
  v34[1] = v10;
  v34[2] = v8;
  v21 = type metadata accessor for Expression();

  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  sub_19764B658(v34, v20, v21, WitnessTable, v23);
  sub_19764B088(v34[3], v34[4], v31, v32, v4, v33, v19);

  if (!v0)
  {
    v25 = v29;
    v24 = v30;
    if (__swift_getEnumTagSinglePayload(v19, 1, v4) == 1)
    {
      (*(v25 + 8))(v19, v13);
      sub_1976C1B74();
      swift_allocError();
      *v26 = v12;
      *(v26 + 8) = v10;
      *(v26 + 16) = 0;
      *(v26 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_46(v4);
      (*(v27 + 32))(v24, v19, v4);
    }
  }

  OUTLINED_FUNCTION_9();
}

uint64_t sub_1976529B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v25 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_19774F420();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v22 = &v25 - v21;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_197650334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v11);
    (*(v18 + 32))(v22, v17, v11);
    (*(a4 + 48))(v22, a3, a4);
    (*(v18 + 8))(v22, v11);
    v23 = v27;
    v24 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v24 = 1;
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v11);
    (*(v13 + 8))(v17, v12);
    v23 = v27;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, a3);
}

uint64_t sub_197652CF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_197652CC0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_197652D20(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40240, &qword_19775F490);
  v8 = sub_19764EE50();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0Tm(v6, v7);
  sub_197652048(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_197652DCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_197652E44()
{
  result = qword_1ED696E40;
  if (!qword_1ED696E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696E40);
  }

  return result;
}

void *OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return __swift_project_boxed_opaque_existential_0Tm(va, v5);
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_44_5()
{
  __swift_destroy_boxed_opaque_existential_0((v0 - 144));

  return __swift_destroy_boxed_opaque_existential_0((v0 - 104));
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_19774F420();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64);
  v6[11] = OUTLINED_FUNCTION_3();
  v12 = *(a4 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_6_1();
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64);
  v6[17] = OUTLINED_FUNCTION_3();
  v17 = *(*(sub_19774F420() - 8) + 64);
  v6[18] = OUTLINED_FUNCTION_3();
  v18 = *(a3 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64);
  v6[20] = OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_6_1();
  v6[21] = v20;
  v21 = *(v20 - 8);
  v6[22] = v21;
  v22 = *(v21 + 64);
  v6[23] = OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6DFA0](sub_197653AE0, 0, 0);
}

uint64_t static UUID.withSalts(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_19774EDC0();
  v3 = OUTLINED_FUNCTION_0(v26);
  v24 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19774EDF0();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19774EDE0();
  v17 = *(a1 + 16);
  for (i = (a1 + 40); v17; --v17)
  {
    v19 = *(i - 1);
    v20 = *i;
    v21 = *(sub_19774EFD0() + 16);
    sub_197653840(&qword_1EAF3F3E0, MEMORY[0x1E6966620]);
    sub_19774EDB0();

    i += 2;
  }

  sub_19774EDD0();
  sub_197653888();
  (*(v24 + 8))(v8, v26);
  return (*(v12 + 8))(v16, v9);
}

uint64_t sub_197653840(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197653888()
{
  sub_19774EDC0();
  sub_197653840(&qword_1EAF3F3E8, MEMORY[0x1E69663E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FBD8, &unk_19775DA80);
  sub_19774E950();
  return sub_19774EBD0();
}

uint64_t sub_197653978@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 6) & 0xF | 0x50;
  v3 = *(result + 8) & 0x3F | 0x80;
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  *(a2 + 6) = v2;
  *(a2 + 7) = *(result + 7);
  *(a2 + 8) = v3;
  *(a2 + 9) = *(result + 9);
  *(a2 + 13) = *(result + 13);
  *(a2 + 15) = *(result + 15);
  return result;
}

uint64_t sub_197653AE0()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_19774EE10();
  (*(v3 + 16))(v2, v4, v7);
  sub_19774F0C0();
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[7];
  v13 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_19774F430();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v14 = OUTLINED_FUNCTION_2_0();
    v15(v14);
    v16 = v0[2];

    v17 = OUTLINED_FUNCTION_5_1();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_4();
    v20(v19);
    OUTLINED_FUNCTION_0_0();
    v21 = *(v8 + 4);
    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v17 = OUTLINED_FUNCTION_1_0(v22);
  }

  return v18(v17);
}

uint64_t sub_197653CD4()
{
  v1 = v0[11];
  v2 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    (*(v5 + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v11 + 32))(v9, v1, v2);
    (*(v11 + 16))(v10, v9, v2);
    sub_19774F190();
    sub_19774F180();
    (*(v11 + 8))(v9, v2);
    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[7];
  v17 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_19774F430();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v18 = OUTLINED_FUNCTION_2_0();
    v19(v18);
    v20 = v0[2];

    v21 = OUTLINED_FUNCTION_5_1();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_4();
    v24(v23);
    OUTLINED_FUNCTION_0_0();
    v25 = *(v12 + 4);
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v21 = OUTLINED_FUNCTION_1_0();
  }

  return v22(v21);
}

uint64_t sub_197653F70()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_19765BEFC;
  }

  else
  {
    v5 = sub_197653CD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_197654B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id LNDaemonExtensionXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF51C8];
  [v0 setClass:objc_opt_class() forSelector:sel_getConnectionHostInterfaceForBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_getConnectionHostInterfaceForBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_getConnectionHostInterfaceForBundleIdentifier_completionHandler_ argumentIndex:2 ofReply:1];

  return v0;
}

uint64_t sub_197655238()
{
  v1 = v0;
  v2 = sub_197646D50();
  sqlite3_close(v2);
  OUTLINED_FUNCTION_12_8();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 32);
    v5 = *(v1 + 32);

    v3(v6);
    sub_19764781C(v3);
    v7 = *(v1 + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 32);
  sub_19764781C(v7);
  _Block_release(*(v1 + 48));
  _Block_release(*(v1 + 56));
  _Block_release(*(v1 + 64));
  _Block_release(*(v1 + 72));
  _Block_release(*(v1 + 80));
  v9 = *(v1 + 88);

  v10 = *(v1 + 96);

  return v1;
}

uint64_t sub_1976552F8()
{
  sub_197655238();

  return MEMORY[0x1EEE6BDC0](v0, 121, 7);
}

uint64_t sub_19765532C()
{
  v1 = *(sub_19774EAD0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_19774EA80();
}

uint64_t sub_197655714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19765BE00();
  *a1 = result;
  return result;
}

uint64_t sub_197655740()
{
  OUTLINED_FUNCTION_1();
  result = sub_197655768();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_197655810()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197655848()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1976558E0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_19765597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_197655A10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_197655A9C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_197655B34()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_197655BD0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_197655C6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197655CA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197655CDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_197655D34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197655D80()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_197655E00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197655E38()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197655E70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_197655ECC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197655F0C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_197655FA8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_197656044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19774EBF0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1976560F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19774EBF0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1976561A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1976561D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197656210()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19765626C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_197656308()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197656340()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197656378()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1976563D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_197656434()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1976564D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_197656564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1976566F0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1976567B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1976567F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197656828()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1976568A4()
{
  OUTLINED_FUNCTION_2_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19765697C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1976569B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1976569EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_197658FA4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC10, &qword_19775DC60);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_197658FD4()
{
  v1 = sub_19774EB80();
  OUTLINED_FUNCTION_0_14(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_197659060()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1976590C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197659100()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

void sub_197659198(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_1976591F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19765922C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1976592C0()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_24_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_197659308()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_56_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_197659338()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1976593E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197659420()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197659458()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *sub_1976594E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_0(a3, result);
  }

  return result;
}

uint64_t sub_1976595D0()
{

  return OUTLINED_FUNCTION_41_4();
}

uint64_t sub_197659758(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_19765976C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_8_8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_197659804()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

char *sub_1976599A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_0(a3, result);
  }

  return result;
}

void static LNConnectionPolicy.resolve(_:allowedTargets:appBundleIdentifier:extensionBundleIdentifier:daemonBundleIdentifier:frameworkBundleIdentifier:signals:)(unint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_197659F20(v11, a1);

  v13 = &selRef_preflightManager;
  if (a3)
  {
    v14 = a6;
    v15 = sub_19765B49C(v12);
    for (i = 0; v15 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x19A8E5210](i, v12);
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v17 = *(v12 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }

      if (![v17 type])
      {
        goto LABEL_15;
      }
    }

    v18 = 0;
LABEL_15:
    v19 = v18;
    *a3 = v18;
    a6 = v14;
  }

  if (!a4)
  {
    goto LABEL_39;
  }

  v44 = a6;
  v20 = sub_19765B49C(v12);
  v21 = 0;
  v22 = v12 & 0xC000000000000001;
  v23 = v12 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v20 == v21)
    {
      v25 = 0;
      goto LABEL_38;
    }

    if (v22)
    {
      v24 = MEMORY[0x19A8E5210](v21, v12);
    }

    else
    {
      if (v21 >= *(v23 + 16))
      {
        goto LABEL_74;
      }

      v24 = *(v12 + 8 * v21 + 32);
    }

    v25 = v24;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_73;
    }

    if ([v24 v13[353]] != 1)
    {
      goto LABEL_32;
    }

    if (!a7)
    {
      goto LABEL_38;
    }

    sub_19765B7CC(a7, &selRef_preferredBundleIdentifier);
    if (!v26)
    {
      goto LABEL_38;
    }

    v22 = v20;

    v23 = a7;
    v27 = sub_19765B7CC(a7, &selRef_preferredBundleIdentifier);
    v13 = v28;
    v29 = [v25 bundleIdentifier];
    a7 = sub_19774EF50();
    v20 = v30;

    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_2();
LABEL_33:
    ++v21;
  }

  if (v27 != a7 || v13 != v20)
  {
    v32 = sub_19774F7E0();

    OUTLINED_FUNCTION_2();
    if (v32)
    {
      goto LABEL_38;
    }

LABEL_32:

    goto LABEL_33;
  }

  v13 = &selRef_preflightManager;
LABEL_38:
  v33 = v25;
  *a4 = v25;
  a6 = v44;
LABEL_39:
  if (a5)
  {
    v34 = sub_19765B49C(v12);
    for (j = 0; v34 != j; ++j)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x19A8E5210](j, v12);
      }

      else
      {
        if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v36 = *(v12 + 8 * j + 32);
      }

      v37 = v36;
      if (__OFADD__(j, 1))
      {
        goto LABEL_69;
      }

      if ([v36 v13[353]] == 2)
      {
        goto LABEL_50;
      }
    }

    v37 = 0;
LABEL_50:
    v38 = v37;
    *a5 = v37;
  }

  if (a6)
  {
    v39 = sub_19765B49C(v12);
    for (k = 0; ; ++k)
    {
      if (v39 == k)
      {

        v42 = 0;
        goto LABEL_66;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x19A8E5210](k, v12);
      }

      else
      {
        if (k >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v41 = *(v12 + 8 * k + 32);
      }

      v42 = v41;
      if (__OFADD__(k, 1))
      {
        goto LABEL_71;
      }

      if ([v41 v13[353]] == 3)
      {
        break;
      }
    }

LABEL_66:
    v43 = v42;
    *a6 = v42;
  }

  else
  {
  }
}

uint64_t sub_197659E00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_19765B4E4(a3);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  if (!sub_19765B49C(v5))
  {

LABEL_6:
    v10 = 1;
    return v10 & 1;
  }

  v7 = [objc_opt_self() foregroundCondition];
  v13 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v12[2] = &v13;
  v8 = sub_197689DCC(sub_19765B8EC, v12, v6);

  if (v8)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19765B554(a1, a2, 0, ObjCClassFromMetadata);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_197659F20(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = sub_19765A68C(a2);
  if (!v4)
  {

LABEL_15:
    v21 = sub_19765A83C(a1, v2);
    v22 = sub_19765A20C(v21, a1);

    return v22;
  }

  v5 = v4;
  v6 = sub_197652138(a1);
  if (!v6)
  {

    a1 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v7 = v6;
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_19774F680();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v23 = v2;
    v9 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8E5210](v9, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 type];
      v13 = sub_19765B7CC(v11, &selRef_bundleIdentifier);
      v15 = v13;
      if (v14)
      {
        v15 = sub_19765A7BC(v13, v14);
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      ++v9;
      v18 = sub_19765B4E4(v11);
      v19 = objc_allocWithZone(MEMORY[0x1E69ACA58]);
      sub_19765ABFC(v12, v15, v17, v18);

      sub_19774F650();
      v20 = *(v24 + 16);
      sub_19774F690();
      sub_19774F6A0();
      sub_19774F660();
    }

    while (v7 != v9);

    a1 = v24;
    v2 = v23;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_19765A20C(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_70;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_3:
    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v44 = v2 + 32;
    while (v4 != v5)
    {
      if (v6)
      {
        v7 = MEMORY[0x19A8E5210](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_66;
      }

      v9 = [v7 type];

      ++v5;
      if (!v9)
      {
        goto LABEL_60;
      }
    }

    v43 = v2 & 0xFFFFFFFFFFFFFF8;
    v38 = v2;
    v10 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = v4;
    v45 = a1 & 0xC000000000000001;
    v46 = MEMORY[0x1E69E7CC0];
    v42 = v2 & 0xC000000000000001;
    while (v10 != v4)
    {
      if (v6)
      {
        v11 = MEMORY[0x19A8E5210](v10, v38);
      }

      else
      {
        if (v10 >= *(v43 + 16))
        {
          goto LABEL_69;
        }

        v11 = *(v44 + 8 * v10);
      }

      v12 = v11;
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_68;
      }

      v14 = [v11 type];
      if (v14 == 2)
      {
        v41 = v10;
        v19 = sub_19765B49C(a1);
        for (i = 0; ; ++i)
        {
          if (v19 == i)
          {
            v18 = v12;
            v4 = v40;
            v10 = v41;
            goto LABEL_51;
          }

          if (v45)
          {
            v21 = MEMORY[0x19A8E5210](i, a1);
          }

          else
          {
            if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v21 = *(a1 + 8 * i + 32);
          }

          v22 = v21;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            v4 = sub_19774F500();
            if (!v4)
            {
              goto LABEL_60;
            }

            goto LABEL_3;
          }

          v2 = [v21 bundleIdentifier];
          v23 = sub_19774EF50();
          v25 = v24;

          v26 = sub_19765B7CC(v12, &selRef_bundleIdentifier);
          if (!v27)
          {

            goto LABEL_45;
          }

          v2 = v27;
          if (v23 == v26 && v27 == v25)
          {
          }

          else
          {
            v29 = sub_19774F7E0();

            if ((v29 & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          v30 = [v22 bundleIdentifier];
          v31 = sub_19774EF50();
          v2 = v32;

          LOBYTE(v30) = sub_197659E00(v31, v2, v12);

          if (v30)
          {

            v4 = v40;
            v10 = v41;
            goto LABEL_53;
          }

LABEL_45:
        }
      }

      if (v14 != 1)
      {
        v18 = v12;
        goto LABEL_51;
      }

      v2 = v10;
      v15 = sub_19765B49C(a1);
      for (j = 0; ; ++j)
      {
        if (v15 == j)
        {
          v18 = v12;
          v10 = v2;
          goto LABEL_51;
        }

        if (v45)
        {
          v17 = MEMORY[0x19A8E5210](j, a1);
        }

        else
        {
          if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v17 = *(a1 + 8 * j + 32);
        }

        v18 = v17;
        if (__OFADD__(j, 1))
        {
          goto LABEL_64;
        }

        if (![v17 type])
        {
          break;
        }
      }

      v33 = [v18 bundleIdentifier];
      v34 = sub_19774EF50();
      v36 = v35;

      LOBYTE(v33) = sub_197659E00(v34, v36, v12);

      v10 = v2;
      if (v33)
      {
LABEL_53:
        MEMORY[0x19A8E4D30]();
        v6 = v42;
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19774F140();
        }

        sub_19774F170();
        v39 = v46;
      }

      else
      {
LABEL_51:

        v6 = v42;
      }
    }

    if (!sub_19765B49C(v39))
    {

      goto LABEL_60;
    }

    return v39;
  }

  else
  {
LABEL_60:
  }

  return a1;
}

uint64_t sub_19765A68C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_19774F500();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 != 1)
  {
    return 0;
  }

  result = sub_19765B49C(a1);
  if (!result)
  {
    return 0;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8E5210](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = [v4 type];

  if (v6 != 3)
  {
    return 0;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x19A8E5210](0, a1);
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;
  v9 = [v7 bundleIdentifier];

  sub_19774EF50();
  sub_19774ECD0();
  v10 = sub_19774ECB0();

  return v10;
}

uint64_t sub_19765A7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_19774EC90();
  if (v4)
  {
    v5 = sub_197692E50(a1, a2, v4);
    v7 = v6;

    if (v7)
    {
      return v5;
    }
  }

  return a1;
}

uint64_t sub_19765A83C(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  if (a2 >> 62)
  {
    goto LABEL_43;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v8 == 1)
  {
    result = sub_19765B49C(a2);
    if (result)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8E5210](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v10 = *(a2 + 32);
      }

      v11 = v10;
      if ([v10 type] == 3)
      {
        v40 = sub_19765B49C(a1);
        if (v40)
        {
          v37 = v11;
          v35 = v7;
          v12 = 0;
          v33 = MEMORY[0x1E69E7CC0];
          v34 = a2;
          v41 = MEMORY[0x1E69E7CC0];
          v38 = a1 & 0xFFFFFFFFFFFFFF8;
          v39 = a1 & 0xC000000000000001;
          v36 = a1;
          while (1)
          {
            if (v40 == v12)
            {

              return v33;
            }

            if (v39)
            {
              v13 = MEMORY[0x19A8E5210](v12, a1);
            }

            else
            {
              if (v12 >= *(v38 + 16))
              {
                goto LABEL_42;
              }

              v13 = *(a1 + 8 * v12 + 32);
            }

            v14 = v13;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              v8 = sub_19774F500();
              goto LABEL_3;
            }

            v15 = sub_19765B7CC(v13, &selRef_bundleIdentifier);
            if (!v16)
            {
              break;
            }

            v17 = v15;
            v18 = v16;
            v19 = sub_19765A68C(a2);
            if (v19)
            {
              v20 = v19;
              v17 = sub_19765A7BC(v17, v18);
              v22 = v21;

              v18 = v22;
            }

            sub_197648238(0, &qword_1EAF3F5E0, 0x1E6963620);

            v23 = sub_197692D68(v17, v18, 0);
            v26 = v23;
            if (v23 && (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v25 = 1;
            }

            else
            {
              sub_19774EC80();
              v24 = sub_19774EC70();
              if (v24)
              {

                v25 = 2;
              }

              else
              {
                v25 = 0;
              }
            }

            v27 = [v37 url];
            if (v27)
            {
              v28 = v27;
              v7 = v35;
              sub_19774EA90();

              v29 = 0;
            }

            else
            {
              v29 = 1;
              v7 = v35;
            }

            v30 = sub_19774EAD0();
            __swift_storeEnumTagSinglePayload(v7, v29, 1, v30);
            v31 = objc_allocWithZone(MEMORY[0x1E69AC7B0]);
            v32 = sub_197663CC8(v25, v17, v18, v7);

            if (v32)
            {
              MEMORY[0x19A8E4D30]();
              if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_19774F140();
              }

              sub_19774F170();
              v33 = v41;
              ++v12;
              a1 = v36;
              a2 = v34;
            }

            else
            {
              a1 = v36;
              a2 = v34;
LABEL_32:
              ++v12;
            }
          }

          goto LABEL_32;
        }
      }
    }
  }

  return a2;
}

id sub_19765ABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_19774EF20();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_197648238(0, &unk_1EAF3F5D0, 0x1E69ACA60);
  v8 = sub_19774F110();

LABEL_6:
  v9 = [v4 initWithType:a1 bundleIdentifier:v7 conditions:v8];

  return v9;
}

uint64_t sub_19765ACC8()
{
  sub_19774EF50();
  sub_19774F930();
  sub_19774EFF0();
  v0 = sub_19774F950();

  return v0;
}

uint64_t sub_19765AD3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_19768FA74();
}

uint64_t sub_19765AD54(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F640, type metadata accessor for LNURLLaunchRequestError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_19765ADC0(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F640, type metadata accessor for LNURLLaunchRequestError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_19765AE30(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F678, type metadata accessor for LNURLLaunchRequestError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_19765AEAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19774EF20();

  *a2 = v5;
  return result;
}

uint64_t sub_19765AF04(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F678, type metadata accessor for LNURLLaunchRequestError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_19765AF70(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F678, type metadata accessor for LNURLLaunchRequestError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_19765AFDC(void *a1, uint64_t a2)
{
  v4 = sub_19765B664(&qword_1EAF3F678, type metadata accessor for LNURLLaunchRequestError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_19765B098(uint64_t a1, uint64_t a2)
{
  v4 = sub_19765B664(&qword_1EAF3F678, type metadata accessor for LNURLLaunchRequestError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_19765B114()
{
  v2 = *v0;
  sub_19774F930();
  sub_19774EE90();
  return sub_19774F950();
}

void sub_19765B174(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_19765B1A8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_19765B1B0()
{
  v1 = OUTLINED_FUNCTION_1();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_19765B1D8(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F680, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v3 = sub_19765B664(&qword_1EAF3F688, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19765B294(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F550, type metadata accessor for ProgressKind);
  v3 = sub_19765B664(&qword_1EAF3F558, type metadata accessor for ProgressKind);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19765B350(uint64_t a1)
{
  v2 = sub_19765B664(&qword_1EAF3F540, type metadata accessor for FileOperationKind);
  v3 = sub_19765B664(&qword_1EAF3F548, type metadata accessor for FileOperationKind);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19765B40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19765B664(&qword_1EAF3F678, type metadata accessor for LNURLLaunchRequestError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_19765B49C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_19774F500();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_19765B4C0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19765B4E4(void *a1)
{
  v1 = [a1 conditions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_197648238(0, &unk_1EAF3F5D0, 0x1E69ACA60);
  v3 = sub_19774F120();

  return v3;
}