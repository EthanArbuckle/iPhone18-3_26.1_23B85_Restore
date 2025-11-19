@interface UIAlertController
@end

@implementation UIAlertController

void __89__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithType_andProceed___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAutocapitalizationType:1];
  [v2 setAutocorrectionType:0];
}

void __89__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithType_andProceed___block_invoke_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "+[UIAlertController(HUAdditions) alertControllerForAddingDestinationWithType:andProceed:]_block_invoke_2";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button from alert", &v1, 0xCu);
  }
}

void __89__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithType_andProceed___block_invoke_33(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "+[UIAlertController(HUAdditions) alertControllerForAddingDestinationWithType:andProceed:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped Add button from alert", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) textFields];
  v4 = [v3 firstObject];

  v5 = [v4 text];
  v6 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:v5];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void __95__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithTypeString_andProceed___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAutocapitalizationType:1];
  [v2 setAutocorrectionType:0];
}

void __95__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithTypeString_andProceed___block_invoke_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "+[UIAlertController(HUAdditions) alertControllerForAddingDestinationWithTypeString:andProceed:]_block_invoke_2";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'Cancel' from alert", &v1, 0xCu);
  }
}

void __95__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithTypeString_andProceed___block_invoke_55(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "+[UIAlertController(HUAdditions) alertControllerForAddingDestinationWithTypeString:andProceed:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'Add' button from alert", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) textFields];
  v4 = [v3 firstObject];

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [v4 text];
    (*(v5 + 16))(v5, v6);
  }
}

void __76__UIAlertController_HUAdditions__hu_alertControllerForUnimplementedFeature___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 title];
    v5 = 136315394;
    v6 = "+[UIAlertController(HUAdditions) hu_alertControllerForUnimplementedFeature:]_block_invoke";
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%{public}@' from alert", &v5, 0x16u);
  }
}

void __88__UIAlertController_HUAdditions__hu_alertControllerForAcknowledgementWithTitle_message___block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "+[UIAlertController(HUAdditions) hu_alertControllerForAcknowledgementWithTitle:message:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'OK' from alert", &v1, 0xCu);
  }
}

uint64_t __89__UIAlertController_HUAdditions__hu_alertControllerForAddingPersonWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[hu_alertControllerForAddingPersonWithCompletionHandler] User tapped confirm from alert", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, MEMORY[0x277CBEC38]);
  }

  return result;
}

uint64_t __89__UIAlertController_HUAdditions__hu_alertControllerForAddingPersonWithCompletionHandler___block_invoke_90(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[hu_alertControllerForAddingPersonWithCompletionHandler] User tapped ignore from alert", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, MEMORY[0x277CBEC28]);
  }

  return result;
}

void __102__UIAlertController_HUAdditions__hu_alertControllerForHH2RequiredToAddPeopleForHome_updateNowHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) uniqueIdentifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[alertForHH2RequiredToAddPeopleForHome:] User tapped 'update now' | home = %@ (uniqueIdentifier: %{public}@)", &v8, 0x16u);
  }
}

void __102__UIAlertController_HUAdditions__hu_alertControllerForHH2RequiredToAddPeopleForHome_updateNowHandler___block_invoke_98(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) uniqueIdentifier];
    v5 = 138412546;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HH2RequiredToAddPeople:] User tapped 'cancel' | home = %@ (uniqueIdentifier: %{public}@)", &v5, 0x16u);
  }
}

@end