@interface CARSetupPrompts
+ (id)allowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler;
+ (id)assetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler;
+ (id)assetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
+ (id)bluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler;
+ (id)bluetoothContactsSyncPromptWithResponseHandler:(id)handler;
+ (id)bluetoothFailedPromptForVehicleName:(id)name isTimeout:(BOOL)timeout responseHandler:(id)handler;
+ (id)connectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler;
+ (id)enhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler;
+ (id)useWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
+ (id)waitingOnMessagingPrompt;
+ (id)waitingOnStartSessionPrompt;
@end

@implementation CARSetupPrompts

+ (id)bluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler
{
  v61[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = MEMORY[0x277D43330];
  codeCopy = code;
  nameCopy = name;
  v10 = objc_alloc_init(v7);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"BLUETOOTH_PAIRING_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable"];

  [v10 setTitle:v12];
  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"BLUETOOTH_PAIRING_CARD_MESSAGE_IPHONE_%@" value:&stru_2855A1F50 table:@"Localizable"];

  nameCopy = [v13 stringWithFormat:v15, nameCopy];

  [v10 setSubtitle:nameCopy];
  [v10 setDismissalType:2];
  v16 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:codeCopy];

  v17 = [v16 length];
  v54 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:36.0 weight:*MEMORY[0x277D74418]];
  [v16 addAttribute:*MEMORY[0x277D740A8] value:v54 range:{0, v17}];
  v52 = v16;
  [v16 addAttribute:*MEMORY[0x277D740D0] value:&unk_2855A45A8 range:{0, v17}];
  v53 = objc_alloc_init(MEMORY[0x277D74240]);
  [v53 setAlignment:1];
  [v16 addAttribute:*MEMORY[0x277D74118] value:v53 range:{0, v17}];
  v18 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v18 setAttributedText:v16];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = v10;
  contentView = [v10 contentView];
  [contentView addSubview:v18];

  contentView2 = [v10 contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  v45 = MEMORY[0x277CCAAD0];
  topAnchor = [v18 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v47 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v61[0] = v47;
  bottomAnchor = [mainContentGuide bottomAnchor];
  bottomAnchor2 = [v18 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v61[1] = v23;
  centerXAnchor = [v18 centerXAnchor];
  v51 = mainContentGuide;
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v61[2] = v26;
  widthAnchor = [v18 widthAnchor];
  widthAnchor2 = [mainContentGuide widthAnchor];
  v29 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v61[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
  [v45 activateConstraints:v30];

  v31 = MEMORY[0x277D432F0];
  v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"BLUETOOTH_PAIRING_CARD_PAIR" value:&stru_2855A1F50 table:@"Localizable"];

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __89__CARSetupPrompts_bluetoothConfirmationPromptForVehicleName_numericCode_responseHandler___block_invoke;
  v59[3] = &unk_278D8F580;
  v34 = handlerCopy;
  v60 = v34;
  v35 = [v31 actionWithTitle:v33 style:0 handler:v59];
  v36 = [v50 addAction:v35];

  v37 = MEMORY[0x277D432F0];
  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"BLUETOOTH_PAIRING_CARD_CANCEL" value:&stru_2855A1F50 table:@"Localizable"];

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __89__CARSetupPrompts_bluetoothConfirmationPromptForVehicleName_numericCode_responseHandler___block_invoke_2;
  v57[3] = &unk_278D8F580;
  v58 = v34;
  v40 = v34;
  v41 = [v37 actionWithTitle:v39 style:1 handler:v57];
  v42 = [v50 addAction:v41];

  v43 = *MEMORY[0x277D85DE8];

  return v50;
}

uint64_t __89__CARSetupPrompts_bluetoothConfirmationPromptForVehicleName_numericCode_responseHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __89__CARSetupPrompts_bluetoothConfirmationPromptForVehicleName_numericCode_responseHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (id)bluetoothContactsSyncPromptWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(MEMORY[0x277D43330]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BLUETOOTH_CONTACTS_SYNC_TITLE" value:&stru_2855A1F50 table:@"Localizable"];

  [v4 setTitle:v6];
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BLUETOOTH_CONTACTS_SYNC_MESSAGE" value:&stru_2855A1F50 table:@"Localizable"];

  v10 = [v7 stringWithFormat:v9];

  [v4 setSubtitle:v10];
  [v4 setDismissalType:2];
  v11 = MEMORY[0x277D432F0];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"BLUETOOTH_CONTACTS_SYNC_ALLOW" value:&stru_2855A1F50 table:@"Localizable"];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__CARSetupPrompts_bluetoothContactsSyncPromptWithResponseHandler___block_invoke;
  v29[3] = &unk_278D8F580;
  v14 = handlerCopy;
  v30 = v14;
  v15 = [v11 actionWithTitle:v13 style:0 handler:v29];
  v16 = [v4 addAction:v15];

  v17 = MEMORY[0x277D432F0];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"BLUETOOTH_CONTACTS_SYNC_DONT_ALLOW" value:&stru_2855A1F50 table:@"Localizable"];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __66__CARSetupPrompts_bluetoothContactsSyncPromptWithResponseHandler___block_invoke_2;
  v27 = &unk_278D8F580;
  v28 = v14;
  v20 = v14;
  v21 = [v17 actionWithTitle:v19 style:1 handler:&v24];
  v22 = [v4 addAction:{v21, v24, v25, v26, v27}];

  return v4;
}

uint64_t __66__CARSetupPrompts_bluetoothContactsSyncPromptWithResponseHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __66__CARSetupPrompts_bluetoothContactsSyncPromptWithResponseHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (id)bluetoothFailedPromptForVehicleName:(id)name isTimeout:(BOOL)timeout responseHandler:(id)handler
{
  timeoutCopy = timeout;
  nameCopy = name;
  handlerCopy = handler;
  v9 = objc_alloc_init(MEMORY[0x277D43330]);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"BLUETOOTH_FAILED_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable"];

  [v9 setTitle:v11];
  if (timeoutCopy)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = @"BLUETOOTH_FAILED_MESSAGE_TIMEOUT";
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = v13;
    if (nameCopy)
    {
      v16 = [v13 localizedStringForKey:@"BLUETOOTH_FAILED_MESSAGE_GENERIC_%@" value:&stru_2855A1F50 table:@"Localizable"];

      [v12 stringWithFormat:v16, nameCopy];
      goto LABEL_7;
    }

    v15 = @"BLUETOOTH_FAILED_MESSAGE_GENERIC";
  }

  v16 = [v13 localizedStringForKey:v15 value:&stru_2855A1F50 table:@"Localizable"];

  [v12 stringWithFormat:v16, v29];
  v17 = LABEL_7:;

  [v9 setSubtitle:v17];
  [v9 setDismissalType:2];
  v18 = MEMORY[0x277D755B8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v18 imageNamed:@"Connection_Failure" inBundle:v19 withConfiguration:0];

  v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v20];
  [v9 carSetup_addMainContentCenteredView:v21 size:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v22 = MEMORY[0x277D432F0];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"BLUETOOTH_FAILED_OK" value:&stru_2855A1F50 table:@"Localizable"];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __81__CARSetupPrompts_bluetoothFailedPromptForVehicleName_isTimeout_responseHandler___block_invoke;
  v30[3] = &unk_278D8F580;
  v31 = handlerCopy;
  v25 = handlerCopy;
  v26 = [v22 actionWithTitle:v24 style:0 handler:v30];
  v27 = [v9 addAction:v26];

  return v9;
}

uint64_t __81__CARSetupPrompts_bluetoothFailedPromptForVehicleName_isTimeout_responseHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)waitingOnMessagingPrompt
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D43330]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BLUETOOTH_PAIRING_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable"];

  [v2 setTitle:v4];
  [v2 setDismissalType:2];
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [v2 contentView];
  [contentView addSubview:v5];

  v19 = v2;
  contentView2 = [v2 contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  v20 = MEMORY[0x277CCAAD0];
  topAnchor = [v5 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v9 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v23[0] = v9;
  bottomAnchor = [mainContentGuide bottomAnchor];
  bottomAnchor2 = [v5 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v23[1] = v12;
  centerXAnchor = [v5 centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v23[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  [v20 activateConstraints:v16];

  [v5 startAnimating];
  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)allowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x277D43330]);
  if (nameCopy)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ALLOW_WHILE_LOCKED_CARD_TITLE_%@" value:&stru_2855A1F50 table:@"Localizable"];

    [v8 stringWithFormat:v10, nameCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v10 localizedStringForKey:@"ALLOW_WHILE_LOCKED_CARD_TITLE_GENERIC" value:&stru_2855A1F50 table:@"Localizable"];
  }
  v29 = ;

  [v7 setTitle:v29];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"ALLOW_WHILE_LOCKED_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable"];

  [v7 setSubtitle:v12];
  [v7 setDismissalType:3];
  [v7 carSetup_addCarPlayIconCenteredInMainContent];
  v13 = MEMORY[0x277D432F0];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"ALLOW_WHILE_LOCKED_CARD_ALLOW" value:&stru_2855A1F50 table:@"Localizable"];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __72__CARSetupPrompts_allowWhileLockedPromptForVehicleName_responseHandler___block_invoke;
  v34[3] = &unk_278D8F580;
  v16 = handlerCopy;
  v35 = v16;
  v17 = [v13 actionWithTitle:v15 style:0 handler:v34];
  v18 = [v7 addAction:v17];

  v19 = MEMORY[0x277D432F0];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"ALLOW_WHILE_LOCKED_CARD_DECLINE" value:&stru_2855A1F50 table:@"Localizable"];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __72__CARSetupPrompts_allowWhileLockedPromptForVehicleName_responseHandler___block_invoke_2;
  v32[3] = &unk_278D8F580;
  v22 = v16;
  v33 = v22;
  v23 = [v19 actionWithTitle:v21 style:1 handler:v32];
  v24 = [v7 addAction:v23];

  v25 = MEMORY[0x277D432F0];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __72__CARSetupPrompts_allowWhileLockedPromptForVehicleName_responseHandler___block_invoke_3;
  v30[3] = &unk_278D8F580;
  v31 = v22;
  v26 = v22;
  v27 = [v25 actionWithTitle:&stru_2855A1F50 style:0 handler:v30];
  [v7 setDismissButtonAction:v27];

  return v7;
}

uint64_t __72__CARSetupPrompts_allowWhileLockedPromptForVehicleName_responseHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __72__CARSetupPrompts_allowWhileLockedPromptForVehicleName_responseHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __72__CARSetupPrompts_allowWhileLockedPromptForVehicleName_responseHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (id)connectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler
{
  enablementCopy = enablement;
  optionCopy = option;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277D43330]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONNECT_TO_CARPLAY_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable"];

  [v8 setTitle:v10];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CONNECT_TO_CARPLAY_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable"];

  [v8 setSubtitle:v12];
  [v8 setDismissalType:3];
  [v8 carSetup_addCarPlayIconCenteredInMainContent];
  if ((enablementCopy & 2) != 0)
  {
    v13 = CRLocalizedWiFiVariantKeyForKey();
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v15 localizedStringForKey:v13 value:&stru_2855A1F50 table:@"Localizable"];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CONNECT_TO_CARPLAY_CARD_CONNECT" value:&stru_2855A1F50 table:@"Localizable"];
  }

  v16 = MEMORY[0x277D432F0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __91__CARSetupPrompts_connectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke;
  v33[3] = &unk_278D8F580;
  v17 = handlerCopy;
  v34 = v17;
  v18 = [v16 actionWithTitle:v14 style:0 handler:v33];
  v19 = [v8 addAction:v18];

  if (optionCopy)
  {
    v20 = MEMORY[0x277D432F0];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CONNECT_USE_BLUETOOTH_ONLY" value:&stru_2855A1F50 table:@"Localizable"];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __91__CARSetupPrompts_connectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_171;
    v31[3] = &unk_278D8F580;
    v32 = v17;
    v23 = [v20 actionWithTitle:v22 style:1 handler:v31];
    v24 = [v8 addAction:v23];
  }

  v25 = MEMORY[0x277D432F0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __91__CARSetupPrompts_connectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_172;
  v29[3] = &unk_278D8F580;
  v30 = v17;
  v26 = v17;
  v27 = [v25 actionWithTitle:&stru_2855A1F50 style:0 handler:v29];
  [v8 setDismissButtonAction:v27];

  return v8;
}

uint64_t __91__CARSetupPrompts_connectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received accept for connect prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __91__CARSetupPrompts_connectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_171(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received decline for connect prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __91__CARSetupPrompts_connectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_172(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received dismiss / decline for connect prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (id)useWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277D43330]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"USE_WIRELESS_CARPLAY_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable"];

  [v8 setTitle:v10];
  v11 = 0;
  if (enablement <= 1)
  {
    if (enablement)
    {
      if (enablement != 1)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"USE_WIRELESS_CARPLAY_CARD_MESSAGE_BT";
    }

    else
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"USE_WIRELESS_CARPLAY_CARD_MESSAGE";
    }

    v11 = [v12 localizedStringForKey:v14 value:&stru_2855A1F50 table:@"Localizable"];
    goto LABEL_11;
  }

  if (enablement == 2 || enablement == 3)
  {
    v13 = CRLocalizedWiFiVariantKeyForKey();
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v15 localizedStringForKey:v13 value:&stru_2855A1F50 table:@"Localizable"];

LABEL_11:
  }

LABEL_12:
  [v8 setSubtitle:v11];
  [v8 setDismissalType:0];
  v16 = [MEMORY[0x277D755D0] configurationWithPointSize:78.0];
  v17 = MEMORY[0x277D755D0];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v19 = [v17 configurationWithHierarchicalColor:systemBlueColor];
  v20 = [v16 configurationByApplyingConfiguration:v19];

  v21 = [MEMORY[0x277D755B8] _systemImageNamed:@"carplay.radiowaves.left.and.right" withConfiguration:v20];
  v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v21];
  [v8 carSetup_addMainContentCenteredView:v22 size:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v23 = MEMORY[0x277D432F0];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"USE_WIRELESS_CARPLAY_CARD_ENABLE" value:&stru_2855A1F50 table:@"Localizable"];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __90__CARSetupPrompts_useWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke;
  v39[3] = &unk_278D8F580;
  v26 = handlerCopy;
  v40 = v26;
  v27 = [v23 actionWithTitle:v25 style:0 handler:v39];
  v28 = [v8 addAction:v27];

  v29 = 0;
  if (variant <= 2)
  {
    v30 = off_278D8F5C0[variant];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v31 localizedStringForKey:v30 value:&stru_2855A1F50 table:@"Localizable"];
  }

  v32 = MEMORY[0x277D432F0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __90__CARSetupPrompts_useWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke_2;
  v37[3] = &unk_278D8F580;
  v38 = v26;
  v33 = v26;
  v34 = [v32 actionWithTitle:v29 style:1 handler:v37];
  v35 = [v8 addAction:v34];

  return v8;
}

uint64_t __90__CARSetupPrompts_useWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __90__CARSetupPrompts_useWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (id)waitingOnStartSessionPrompt
{
  v2 = objc_alloc_init(MEMORY[0x277D43330]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CONNECTING_TITLE" value:&stru_2855A1F50 table:@"Localizable"];

  [v2 setTitle:v4];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CONNECTING_MESSAGE" value:&stru_2855A1F50 table:@"Localizable"];

  [v2 setSubtitle:v6];
  [v2 setDismissalType:3];
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:@"Connecting" inBundle:v8 withConfiguration:0];

  v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
  [v2 carSetup_addMainContentCenteredView:v10 size:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v11 = [MEMORY[0x277D432F0] actionWithTitle:&stru_2855A1F50 style:0 handler:&__block_literal_global];
  [v2 setDismissButtonAction:v11];

  [v2 showActivityIndicatorWithStatus:&stru_2855A1F50];

  return v2;
}

void __46__CARSetupPrompts_waitingOnStartSessionPrompt__block_invoke()
{
  v0 = CarPairingLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_242FD5000, v0, OS_LOG_TYPE_INFO, "received dismiss / decline for waiting on vehicle prompt", v1, 2u);
  }
}

+ (id)enhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x277D43330];
  nameCopy = name;
  v8 = objc_alloc_init(v6);
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ENHANCED_INTEGRATION_CARD_TITLE_%@" value:&stru_2855A1F50 table:@"Localizable"];

  nameCopy = [v9 stringWithFormat:v11, nameCopy];

  [v8 setTitle:nameCopy];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ENHANCED_INTEGRATION_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable"];

  [v8 setSubtitle:v13];
  [v8 setDismissalType:0];
  v14 = MEMORY[0x277D432F0];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ENHANCED_INTEGRATION_CARD_ALLOW" value:&stru_2855A1F50 table:@"Localizable"];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __75__CARSetupPrompts_enhancedIntegrationPromptForVehicleName_responseHandler___block_invoke;
  v30[3] = &unk_278D8F580;
  v17 = handlerCopy;
  v31 = v17;
  v18 = [v14 actionWithTitle:v16 style:0 handler:v30];
  v19 = [v8 addAction:v18];

  v20 = MEMORY[0x277D432F0];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"ENHANCED_INTEGRATION_CARD_DECLINE" value:&stru_2855A1F50 table:@"Localizable"];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__CARSetupPrompts_enhancedIntegrationPromptForVehicleName_responseHandler___block_invoke_2;
  v28[3] = &unk_278D8F580;
  v29 = v17;
  v23 = v17;
  v24 = [v20 actionWithTitle:v22 style:1 handler:v28];
  v25 = [v8 addAction:v24];

  return v8;
}

uint64_t __75__CARSetupPrompts_enhancedIntegrationPromptForVehicleName_responseHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __75__CARSetupPrompts_enhancedIntegrationPromptForVehicleName_responseHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (id)assetSupportingConnectPromptWithBluetoothOnlyOption:(BOOL)option wirelessEnablement:(unint64_t)enablement responseHandler:(id)handler
{
  enablementCopy = enablement;
  optionCopy = option;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277D43330]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONNECT_TO_CARPLAY_ULTRA_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [v8 setTitle:v10];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CONNECT_TO_CARPLAY_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable"];

  [v8 setSubtitle:v12];
  [v8 setDismissalType:3];
  [v8 carSetup_addCarPlayIconCenteredInMainContent];
  if ((enablementCopy & 2) != 0)
  {
    v13 = CRLocalizedWiFiVariantKeyForKey();
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v15 localizedStringForKey:v13 value:&stru_2855A1F50 table:@"Localizable"];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CONNECT_TO_CARPLAY_CARD_CONNECT" value:&stru_2855A1F50 table:@"Localizable"];
  }

  v16 = MEMORY[0x277D432F0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __106__CARSetupPrompts_assetSupportingConnectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke;
  v33[3] = &unk_278D8F580;
  v17 = handlerCopy;
  v34 = v17;
  v18 = [v16 actionWithTitle:v14 style:0 handler:v33];
  v19 = [v8 addAction:v18];

  if (optionCopy)
  {
    v20 = MEMORY[0x277D432F0];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CONNECT_USE_BLUETOOTH_ONLY" value:&stru_2855A1F50 table:@"Localizable"];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __106__CARSetupPrompts_assetSupportingConnectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_229;
    v31[3] = &unk_278D8F580;
    v32 = v17;
    v23 = [v20 actionWithTitle:v22 style:1 handler:v31];
    v24 = [v8 addAction:v23];
  }

  v25 = MEMORY[0x277D432F0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __106__CARSetupPrompts_assetSupportingConnectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_230;
  v29[3] = &unk_278D8F580;
  v30 = v17;
  v26 = v17;
  v27 = [v25 actionWithTitle:&stru_2855A1F50 style:0 handler:v29];
  [v8 setDismissButtonAction:v27];

  return v8;
}

uint64_t __106__CARSetupPrompts_assetSupportingConnectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received accept for connect prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __106__CARSetupPrompts_assetSupportingConnectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_229(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received decline for connect prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __106__CARSetupPrompts_assetSupportingConnectPromptWithBluetoothOnlyOption_wirelessEnablement_responseHandler___block_invoke_230(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received dismiss / decline for connect prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (id)assetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277D43330]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONNECT_TO_CARPLAY_ULTRA_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [v8 setTitle:v10];
  v11 = 0;
  if (enablement <= 1)
  {
    if (enablement)
    {
      if (enablement != 1)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"CONNECT_CARPLAY_ULTRA_CARD_MESSAGE_BT";
    }

    else
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"CONNECT_CARPLAY_ULTRA_CARD_MESSAGE";
    }

    v11 = [v12 localizedStringForKey:v14 value:&stru_2855A1F50 table:@"Localizable-Themed"];
    goto LABEL_11;
  }

  if (enablement == 2 || enablement == 3)
  {
    v13 = CRLocalizedWiFiVariantKeyForKey();
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v15 localizedStringForKey:v13 value:&stru_2855A1F50 table:@"Localizable-Themed"];

LABEL_11:
  }

LABEL_12:
  [v8 setSubtitle:v11];
  [v8 setDismissalType:0];
  [v8 carSetup_addCarPlayIconCenteredInMainContent];
  v16 = MEMORY[0x277D432F0];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CONNECT_CARPLAY_ULTRA_CARD_ENABLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __105__CARSetupPrompts_assetSupportingUseWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke;
  v35[3] = &unk_278D8F580;
  v19 = handlerCopy;
  v36 = v19;
  v20 = [v16 actionWithTitle:v18 style:0 handler:v35];
  v21 = [v8 addAction:v20];

  v22 = 0;
  if (variant <= 2)
  {
    v23 = off_278D8F5D8[variant];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v24 localizedStringForKey:v23 value:&stru_2855A1F50 table:@"Localizable-Themed"];
  }

  v25 = MEMORY[0x277D432F0];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __105__CARSetupPrompts_assetSupportingUseWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke_252;
  v33 = &unk_278D8F580;
  v34 = v19;
  v26 = v19;
  v27 = [v25 actionWithTitle:v22 style:1 handler:&v30];
  v28 = [v8 addAction:{v27, v30, v31, v32, v33}];

  return v8;
}

uint64_t __105__CARSetupPrompts_assetSupportingUseWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received accept for use wireless prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __105__CARSetupPrompts_assetSupportingUseWirelessPromptWithWirelessEnablement_declineVariant_responseHandler___block_invoke_252(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v2, OS_LOG_TYPE_INFO, "received decline for use wireless prompt", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

@end