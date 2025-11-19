@interface PKGetConstantStringNF
@end

@implementation PKGetConstantStringNF

void __PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_NAME_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_NAME_constant = *dlsym(PKLoadNearField_frameworkLibrary, "NF_SECURE_XPC_EVENT_KEY_EVENT_NAME");
  }
}

void __PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_STRING_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    qword_1ED6D21D0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_STRING");
  }
}

void __PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_NUMBER_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    qword_1ED6D21E0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_NUMBER");
  }
}

void __PKGetConstantStringNF_DCK_EVENT_KEY_APPLET_IDENTIFIER_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_DCK_EVENT_KEY_APPLET_IDENTIFIER");

    objc_storeStrong(&PKGetConstantStringNF_DCK_EVENT_KEY_APPLET_IDENTIFIER_constant, v0);
  }
}

void __PKGetConstantStringNF_DCK_EVENT_KEY_NAME_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_DCK_EVENT_KEY_NAME");

    objc_storeStrong(&qword_1ED6D21F0, v0);
  }
}

void __PKGetConstantStringNF_DCK_EVENT_KEY_KEY_IDENTIFIER_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_DCK_EVENT_KEY_KEY_IDENTIFIER");

    objc_storeStrong(&PKGetConstantStringNF_DCK_EVENT_KEY_KEY_IDENTIFIER_constant, v0);
  }
}

void __PKGetConstantStringNF_DCK_EVENT_KEY_ERROR_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_DCK_EVENT_KEY_ERROR");

    objc_storeStrong(&qword_1ED6D2200, v0);
  }
}

void __PKGetConstantStringNF_DCK_EVENT_KEY_RKE_ACTIONS_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_DCK_EVENT_KEY_RKE_ACTIONS");

    objc_storeStrong(&qword_1ED6D2210, v0);
  }
}

void __PKGetConstantStringNF_DCK_EVENT_KEY_RANGING_SUSPENSION_REASONS_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  if (PKLoadNearField_frameworkLibrary)
  {
    v0 = *dlsym(PKLoadNearField_frameworkLibrary, "NF_DCK_EVENT_KEY_RANGING_SUSPENSION_REASONS");

    objc_storeStrong(&qword_1ED6D2220, v0);
  }
}

@end