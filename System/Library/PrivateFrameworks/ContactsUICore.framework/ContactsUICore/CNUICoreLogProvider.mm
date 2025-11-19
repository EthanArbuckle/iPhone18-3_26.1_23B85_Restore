@interface CNUICoreLogProvider
+ (OS_os_log)actions_os_log;
+ (OS_os_log)color_os_log;
+ (OS_os_log)contact_card_os_log;
+ (OS_os_log)corerecents_os_log;
+ (OS_os_log)likenesses_os_log;
+ (OS_os_log)memoji_os_log;
+ (OS_os_log)photos_os_log;
+ (OS_os_log)posters_os_log;
+ (OS_os_log)static_identity_os_log;
@end

@implementation CNUICoreLogProvider

+ (OS_os_log)likenesses_os_log
{
  if (likenesses_os_log_cn_once_token_2 != -1)
  {
    +[CNUICoreLogProvider likenesses_os_log];
  }

  v3 = likenesses_os_log_cn_once_object_2;

  return v3;
}

uint64_t __40__CNUICoreLogProvider_likenesses_os_log__block_invoke()
{
  likenesses_os_log_cn_once_object_2 = os_log_create("com.apple.contacts.ui", "likenesses");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)actions_os_log
{
  if (actions_os_log_cn_once_token_1 != -1)
  {
    +[CNUICoreLogProvider actions_os_log];
  }

  v3 = actions_os_log_cn_once_object_1;

  return v3;
}

uint64_t __37__CNUICoreLogProvider_actions_os_log__block_invoke()
{
  actions_os_log_cn_once_object_1 = os_log_create("com.apple.contacts.ui", "actions");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)corerecents_os_log
{
  if (corerecents_os_log_cn_once_token_3 != -1)
  {
    +[CNUICoreLogProvider corerecents_os_log];
  }

  v3 = corerecents_os_log_cn_once_object_3;

  return v3;
}

uint64_t __41__CNUICoreLogProvider_corerecents_os_log__block_invoke()
{
  corerecents_os_log_cn_once_object_3 = os_log_create("com.apple.contacts.ui", "core-recents");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)static_identity_os_log
{
  if (static_identity_os_log_cn_once_token_4 != -1)
  {
    +[CNUICoreLogProvider static_identity_os_log];
  }

  v3 = static_identity_os_log_cn_once_object_4;

  return v3;
}

uint64_t __45__CNUICoreLogProvider_static_identity_os_log__block_invoke()
{
  static_identity_os_log_cn_once_object_4 = os_log_create("com.apple.contacts.ui", "staticid");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)color_os_log
{
  if (color_os_log_cn_once_token_5 != -1)
  {
    +[CNUICoreLogProvider color_os_log];
  }

  v3 = color_os_log_cn_once_object_5;

  return v3;
}

uint64_t __35__CNUICoreLogProvider_color_os_log__block_invoke()
{
  color_os_log_cn_once_object_5 = os_log_create("com.apple.contacts.ui", "color");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)contact_card_os_log
{
  if (contact_card_os_log_cn_once_token_6 != -1)
  {
    +[CNUICoreLogProvider contact_card_os_log];
  }

  v3 = contact_card_os_log_cn_once_object_6;

  return v3;
}

uint64_t __42__CNUICoreLogProvider_contact_card_os_log__block_invoke()
{
  contact_card_os_log_cn_once_object_6 = os_log_create("com.apple.contacts.ui", "contact-card");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)posters_os_log
{
  if (posters_os_log_cn_once_token_7 != -1)
  {
    +[CNUICoreLogProvider posters_os_log];
  }

  v3 = posters_os_log_cn_once_object_7;

  return v3;
}

uint64_t __37__CNUICoreLogProvider_posters_os_log__block_invoke()
{
  posters_os_log_cn_once_object_7 = os_log_create("com.apple.contacts.ui", "posters");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)photos_os_log
{
  if (photos_os_log_cn_once_token_8 != -1)
  {
    +[CNUICoreLogProvider photos_os_log];
  }

  v3 = photos_os_log_cn_once_object_8;

  return v3;
}

uint64_t __36__CNUICoreLogProvider_photos_os_log__block_invoke()
{
  photos_os_log_cn_once_object_8 = os_log_create("com.apple.contacts.ui", "photos");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)memoji_os_log
{
  if (memoji_os_log_cn_once_token_9 != -1)
  {
    +[CNUICoreLogProvider memoji_os_log];
  }

  v3 = memoji_os_log_cn_once_object_9;

  return v3;
}

uint64_t __36__CNUICoreLogProvider_memoji_os_log__block_invoke()
{
  memoji_os_log_cn_once_object_9 = os_log_create("com.apple.contacts.ui", "memoji");

  return MEMORY[0x1EEE66BB8]();
}

@end