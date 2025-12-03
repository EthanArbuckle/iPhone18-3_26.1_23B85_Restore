@interface NSUserActivity(ContactsUICore)
+ (id)_cnui_searchMailUserActivityForContact:()ContactsUICore;
+ (id)_cnui_sendMessageIntentWithHandle:()ContactsUICore contact:;
+ (id)_cnui_startAudioCallIntentWithHandle:()ContactsUICore contact:;
+ (id)_cnui_startVideoCallIntentWithHandle:()ContactsUICore contact:;
+ (id)_cnui_userActivityWithActivityType:()ContactsUICore handle:contact:intentWithPerson:;
@end

@implementation NSUserActivity(ContactsUICore)

+ (id)_cnui_startAudioCallIntentWithHandle:()ContactsUICore contact:
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [self _cnui_userActivityWithActivityType:v9 handle:v7 contact:v6 intentWithPerson:&__block_literal_global_36];

  return v10;
}

+ (id)_cnui_startVideoCallIntentWithHandle:()ContactsUICore contact:
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [self _cnui_userActivityWithActivityType:v9 handle:v7 contact:v6 intentWithPerson:&__block_literal_global_3_1];

  return v10;
}

+ (id)_cnui_sendMessageIntentWithHandle:()ContactsUICore contact:
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [self _cnui_userActivityWithActivityType:v9 handle:v7 contact:v6 intentWithPerson:&__block_literal_global_6_0];

  return v10;
}

+ (id)_cnui_userActivityWithActivityType:()ContactsUICore handle:contact:intentWithPerson:
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  if ([v10 hasBeenPersisted])
  {
    identifier = [v10 identifier];
  }

  else
  {
    identifier = 0;
  }

  v14 = objc_alloc(MEMORY[0x1E696E940]);
  v15 = [CNHandle inPersonHandleForHandle:v12];
  customIdentifier = [v12 customIdentifier];

  v17 = [v14 initWithPersonHandle:v15 nameComponents:0 displayName:0 image:0 contactIdentifier:identifier customIdentifier:customIdentifier];
  v18 = v11[2](v11, v17);

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v18 response:0];
    v20 = [objc_alloc(MEMORY[0x1E696B090]) initWithActivityType:v9];
    [v20 _setInteraction:v19 donate:0];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)_cnui_searchMailUserActivityForContact:()ContactsUICore
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695CD80] stringFromContact:a3 style:0];
  if ([v3 length])
  {
    v4 = objc_alloc(MEMORY[0x1E696B090]);
    v5 = [v4 initWithActivityType:*MEMORY[0x1E6963B78]];
    v8 = *MEMORY[0x1E6963B88];
    v9[0] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 setUserInfo:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end