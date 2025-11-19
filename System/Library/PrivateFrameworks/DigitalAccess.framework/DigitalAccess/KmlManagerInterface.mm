@interface KmlManagerInterface
+ (id)interface;
@end

@implementation KmlManagerInterface

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285BA3928];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v68 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v67 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9E500];
  [v67 setClasses:v68 forSelector:sel_handleKeyPairingCompletionResult_keyInformation_trackingRequest_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v67 forSelector:sel_queueOwnerPairingSession_callback_ argumentIndex:0 ofReply:0];
  v66 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285BA3988];
  v69 = v2;
  [v2 setInterface:v66 forSelector:sel_queueOwnerPairingSession_callback_ argumentIndex:0 ofReply:1];
  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9E3A0];
  [v2 setInterface:v11 forSelector:? argumentIndex:? ofReply:?];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285BA39E8];
  v63 = MEMORY[0x277CBEB98];
  v61 = objc_opt_class();
  v60 = objc_opt_class();
  v59 = objc_opt_class();
  v58 = objc_opt_class();
  v56 = objc_opt_class();
  v54 = objc_opt_class();
  v52 = objc_opt_class();
  v50 = objc_opt_class();
  v48 = objc_opt_class();
  v46 = objc_opt_class();
  v44 = objc_opt_class();
  v42 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v63 setWithObjects:{v61, v60, v59, v58, v56, v54, v52, v50, v48, v46, v44, v42, v13, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  [v12 setClasses:v22 forSelector:sel_sendSharingInviteForKeyIdentifier_toIdsIdentifier_auth_config_completionHandler_ argumentIndex:3 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_sendSharingInviteForKeyIdentifier_toIdsIdentifier_auth_config_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_sendSilentSharingInviteForKeyIdentifier_config_groupIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_sendSilentSharingInviteForKeyIdentifier_config_groupIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_acceptSharingInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler_ argumentIndex:2 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_acceptSharingInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_requestInviteWithConfig_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:? argumentIndex:? ofReply:?];
  [v12 setClasses:v22 forSelector:sel_getPreTrackRequestForInvitationWithIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:? argumentIndex:? ofReply:?];
  [v12 setClasses:v22 forSelector:? argumentIndex:? ofReply:?];
  [v12 setClasses:v22 forSelector:? argumentIndex:? ofReply:?];
  [v12 setClasses:v22 forSelector:sel_getSecondFactorRequestForConfigs_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_getSecondFactorRequestForConfigs_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_createSharingInvitationsForKeyIdentifier_friendIdentifier_auth_ourBindingAttestation_config_completionHandler_ argumentIndex:4 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_createSharingInvitationsForKeyIdentifier_friendIdentifier_auth_ourBindingAttestation_config_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_createSilentSharingInvitationWithGroupIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_createSilentSharingInvitationWithGroupIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_acceptSharingInvitation_withIdentifier_fromMailboxIdentifier_passcode_productPlanIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_acceptSharingInvitation_withIdentifier_fromMailboxIdentifier_passcode_productPlanIdentifier_completionHandler_ argumentIndex:4 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_acceptSharingInvitation_withIdentifier_fromMailboxIdentifier_passcode_productPlanIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_startShareAcceptanceFlowWithInvitation_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_handleRecipientMessage_forInvitationIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_handleRecipientMessage_forInvitationIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_handleInitiatorMessage_forInvitationIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
  [v12 setClasses:v22 forSelector:sel_handleInitiatorMessage_forInvitationIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_retryPasscode_forInvitationIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_cancelSharingInvitation_completionHandler_ argumentIndex:0 ofReply:1];
  [v12 setClasses:v22 forSelector:sel_updateSharingAnalyticsWithConfig_completionHandler_ argumentIndex:0 ofReply:0];
  [v69 setInterface:v12 forSelector:sel_queueSharingSession_callback_ argumentIndex:0 ofReply:1];
  v23 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B9E3A0];
  [v69 setInterface:v23 forSelector:? argumentIndex:? ofReply:?];

  v24 = +[KmlKeyManagementInterface interface];
  v57 = MEMORY[0x277CBEB98];
  v55 = objc_opt_class();
  v53 = objc_opt_class();
  v51 = objc_opt_class();
  v49 = objc_opt_class();
  v47 = objc_opt_class();
  v45 = objc_opt_class();
  v43 = objc_opt_class();
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = [v57 setWithObjects:{v55, v53, v51, v49, v47, v45, v43, v41, v40, v25, v26, v27, v28, v29, v30, v31, objc_opt_class(), 0}];
  [v24 setClasses:v32 forSelector:sel_listSharingInvitationsForKeyIdentifier_callback_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_listReceivedSharingInvitationsWithCallback_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_cancelInvitationWithIdentifier_reason_callback_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_requestBindingAttestationDataForKeyWithIdentifier_callback_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_getPreTrackRequestForKeyWithIdentifier_callback_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_setProductPlanIdentifier_forInvitationIdentifier_completion_ argumentIndex:0 ofReply:0];
  [v24 setClasses:v32 forSelector:sel_getSecondFactorRequestForConfigs_completionHandler_ argumentIndex:0 ofReply:0];
  [v24 setClasses:v32 forSelector:sel_getSecondFactorRequestForConfigs_completionHandler_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_remoteTerminateKeys_nodeGroupIdentifiers_treeGroupIdentifiers_adminKey_callback_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler_ argumentIndex:2 ofReply:0];
  [v24 setClasses:v32 forSelector:sel_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v32 forSelector:sel_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler_ argumentIndex:2 ofReply:0];
  [v69 setInterface:v24 forSelector:sel_queueManagementSession_callback_ argumentIndex:0 ofReply:1];
  v65 = MEMORY[0x277CBEB98];
  v64 = objc_opt_class();
  v62 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v65 setWithObjects:{v64, v62, v33, v34, v35, v36, v37, objc_opt_class(), 0}];
  [v69 setClasses:v38 forSelector:sel_registerFriendSideSharingTestCompletion_ argumentIndex:0 ofReply:1];

  return v69;
}

@end