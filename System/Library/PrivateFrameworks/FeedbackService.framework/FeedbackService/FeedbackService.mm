uint64_t sub_1B00C595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B014CADC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B00C5A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_1B014CADC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B00C5AA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5B80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5BBC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C3B88;
}

uint64_t sub_1B00C5C3C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B00C5CC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5D00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B00C5DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C5E2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B00C5F04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B00C6054()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C608C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C60CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C6104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FBKSEvaluation.Subject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B00C61D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FBKSEvaluation.Subject(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B00C6764()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C6874@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C4178;
}

uint64_t sub_1B00C68DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B00C69F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void *sub_1B00C6C00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B00C6C20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C6F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FBKSInteraction.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B00C704C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FBKSInteraction.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B00C7108@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B00C7164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B00C71C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B00C721C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B00C72B8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B00C72F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B00C7364()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C739C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B00C7430()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C7470()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C74A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5220, &qword_1B015AFE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B00C7568@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15FeedbackService15FBKSInteractionC13FeatureDomainO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t FBKSIsInternalInstall()
{
  if (FBKSIsInternalInstall_onceToken != -1)
  {
    FBKSIsInternalInstall_cold_1();
  }

  return FBKSIsInternalInstall__isInternal;
}

void __FBKSIsInternalInstall_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  [v0 cStringUsingEncoding:4];
  FBKSIsInternalInstall__isInternal = os_variant_has_internal_ui();
}

uint64_t FBKSEnvironmentFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"stagingDev"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"staging"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"development"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"demo"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FBKSStringFromEnvironment(__int16 a1)
{
  if ((a1 - 1) > 3u)
  {
    return @"production";
  }

  else
  {
    return off_1E7A8FFA8[(a1 - 1)];
  }
}

void *_FBKSNilIfNSNull(void *a1)
{
  v1 = MEMORY[0x1E695DFB0];
  v2 = a1;
  v3 = [v1 null];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

id Log()
{
  if (Log_onceToken1 != -1)
  {
    Log_cold_1();
  }

  v1 = Log_handle;

  return v1;
}

void sub_1B00CB41C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    v3 = Log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [FBKSHTTPClient logHTTPErrorWithResponse:withData:fromRequest:];
    }

    objc_end_catch();
    JUMPOUT(0x1B00CB3BCLL);
  }

  _Unwind_Resume(a1);
}

void __Log_block_invoke()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "http");
  v2 = Log_handle;
  Log_handle = v1;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id Log_0()
{
  if (Log_onceToken1_0 != -1)
  {
    Log_cold_1_0();
  }

  v1 = Log_handle_0;

  return v1;
}

void __Log_block_invoke_0()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "2p-spi");
  v2 = Log_handle_0;
  Log_handle_0 = v1;
}

uint64_t FBKSIsValidErrorResponse(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 objectForKey:@"errors"];
    v3 = _FBKSNilIfNSNull(v2);

    if (v3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

id FBKSErrorForDict(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 objectForKeyedSubscript:@"code"];
    v3 = _FBKSNilIfNSNull(v2);

    v4 = [v1 objectForKeyedSubscript:@"message"];
    v5 = _FBKSNilIfNSNull(v4);

    v6 = 0;
    if (v3 && v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 integerValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v5;
        }

        else
        {
          v8 = &stru_1F25DB460;
        }

        v9 = MEMORY[0x1E696ABC0];
        v13 = @"message";
        v14[0] = v8;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
        v6 = [v9 errorWithDomain:@"com.apple.FeedbackService" code:v7 userInfo:v10];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t FBKSErrorContainsSP2ErrorCode(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"FBKSSeedPortalErrorsKey"];

  v6 = [v3 userInfo];
  v7 = [v6 objectForKey:@"FBKSAggregatedErrorsKey"];

  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v24 + 1) + 8 * v12) code] == a2)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

LABEL_21:
      v17 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_23;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v13 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v8);
        }

        if (FBKSErrorContainsSP2ErrorCode(*(*(&v20 + 1) + 8 * v16), a2))
        {
          goto LABEL_21;
        }

        if (v14 == ++v16)
        {
          v14 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v14)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

LABEL_20:
  v17 = 0;
LABEL_22:

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

id FBKSError(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBKSError() with stringError == nil"];
    v12 = [v10 exceptionWithName:@"InvalidParameterException" reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  v4 = v3;
  v5 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A278];
  v15[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.FeedbackService" code:a1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id FBKSLog()
{
  if (FBKSLog_onceToken != -1)
  {
    FBKSLog_cold_1();
  }

  v1 = FBKSLog_handle;

  return v1;
}

void __FBKSLog_block_invoke()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "shared");
  v2 = FBKSLog_handle;
  FBKSLog_handle = v1;
}

id FBKSSP2Log()
{
  if (FBKSSP2Log_onceToken != -1)
  {
    FBKSSP2Log_cold_1();
  }

  v1 = FBKSSP2Log_handle;

  return v1;
}

void __FBKSSP2Log_block_invoke()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "sp2");
  v2 = FBKSSP2Log_handle;
  FBKSSP2Log_handle = v1;
}

uint64_t FBKSHasInternalDiagnostics()
{
  if (FBKSHasInternalDiagnostics_onceToken != -1)
  {
    FBKSHasInternalDiagnostics_cold_1();
  }

  return FBKSHasInternalDiagnostics__isInternal;
}

void __FBKSHasInternalDiagnostics_block_invoke()
{
  v1 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v1;
  [v1 UTF8String];
  FBKSHasInternalDiagnostics__isInternal = os_variant_has_internal_diagnostics();
}

uint64_t FBKSHasInternalUI()
{
  if (FBKSHasInternalUI_onceToken != -1)
  {
    FBKSHasInternalUI_cold_1();
  }

  return FBKSHasInternalUI__isInternal;
}

void __FBKSHasInternalUI_block_invoke()
{
  v1 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v1;
  [v1 UTF8String];
  FBKSHasInternalUI__isInternal = os_variant_has_internal_ui();
}

id Log_1()
{
  if (Log_onceToken[0] != -1)
  {
    Log_cold_1_1();
  }

  v1 = Log_handle_1;

  return v1;
}

void __Log_block_invoke_1()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "device-token");
  v2 = Log_handle_1;
  Log_handle_1 = v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

Swift::String __swiftcall FBKSLocalizedString(key:)(Swift::String key)
{
  type metadata accessor for AClassInFBKS();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1B014C9AC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

BOOL sub_1B00CED20(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void sub_1B00CED8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t User.loggedInDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for User() + 24);
  v4 = sub_1B014CADC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for User()
{
  result = qword_1EB6C3AC0;
  if (!qword_1EB6C3AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t User.sessionExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for User() + 28);
  v4 = sub_1B014CADC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL User.hasExpiredSession.getter()
{
  v0 = sub_1B014CADC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B014CACC();
  v5 = *(type metadata accessor for User() + 28);
  sub_1B00CF030();
  v6 = sub_1B014CBFC();
  (*(v1 + 8))(v4, v0);
  return (v6 & 1) == 0;
}

unint64_t sub_1B00CF030()
{
  result = qword_1EB6C3AB8;
  if (!qword_1EB6C3AB8)
  {
    sub_1B014CADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3AB8);
  }

  return result;
}

uint64_t User.description.getter()
{
  sub_1B014D01C();

  v5 = *v0;
  v1 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v1);

  MEMORY[0x1B271E7F0](0xD000000000000013, 0x80000001B015BE50);
  if (*(v0 + 8))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B271E7F0](v2, v3);

  return 0x69202D2072657355;
}

uint64_t sub_1B00CF1B4()
{
  result = sub_1B014CADC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B00CF238()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3AD0);
  __swift_project_value_buffer(v0, qword_1EB6C3AD0);
  return sub_1B014CB4C();
}

id sub_1B00CF2B8()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonAdminConnection()) init];
  qword_1EB6C5240 = result;
  return result;
}

id sub_1B00CF334()
{
  v1 = OBJC_IVAR____TtC15FeedbackService21DaemonAdminConnection____lazy_storage___connectionForAdmin;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService21DaemonAdminConnection____lazy_storage___connectionForAdmin);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService21DaemonAdminConnection____lazy_storage___connectionForAdmin);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_1B00CF3A4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B00CF3A4(uint64_t a1)
{
  if (qword_1EB6C3A50 != -1)
  {
    swift_once();
  }

  v2 = sub_1B014CB5C();
  __swift_project_value_buffer(v2, qword_1EB6C3AD0);
  v3 = sub_1B014CB3C();
  v4 = sub_1B014CF6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = sub_1B00CF694();
    v9 = sub_1B00E6C2C(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B00C4000, v3, v4, "%s: Setting up connection admin daemon connection", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B271F750](v6, -1, -1);
    MEMORY[0x1B271F750](v5, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v11 = sub_1B014CC0C();
  v12 = [v10 initWithMachServiceName:v11 options:0];

  v13 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonAdminInterface()) init];
  [v12 setRemoteObjectInterface_];

  [v12 setExportedObject_];
  v21 = sub_1B00CF718;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1B00EDC7C;
  v20 = &block_descriptor;
  v14 = _Block_copy(&v17);
  [v12 setInterruptionHandler_];
  _Block_release(v14);
  v21 = sub_1B00CF874;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1B00EDC7C;
  v20 = &block_descriptor_7;
  v15 = _Block_copy(&v17);
  [v12 setInvalidationHandler_];
  _Block_release(v15);
  [v12 resume];
  return v12;
}

uint64_t sub_1B00CF694()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_1B014CC1C();

  return v2;
}

id FeedbackDaemonAdminInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B00CF718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = 0x80000001B015BF70;
  sub_1B014D2EC();

  if (qword_1EB6C3A50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3AD0);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon interrupted from admin service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

void sub_1B00CF874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = 0x80000001B015BF30;
  sub_1B014D2EC();

  if (qword_1EB6C3A50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3AD0);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon invalidated from admin service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

uint64_t sub_1B00CFA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = sub_1B00CF334();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00FA1A0;
  aBlock[3] = a5;
  v13 = _Block_copy(aBlock);

  v14 = [v11 *a6];
  _Block_release(v13);

  sub_1B014CFFC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B30, &qword_1B014F288);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void sub_1B00CFB7C(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B014F1E0;
  sub_1B014D01C();

  swift_getErrorValue();
  v4 = sub_1B014D29C();
  MEMORY[0x1B271E7F0](v4);

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = 0xD00000000000001DLL;
  *(v3 + 40) = 0x80000001B015BFF0;
  sub_1B014D2EC();

  v5 = sub_1B014C9BC();
  a2();
}

uint64_t FeedbackDaemonAdminInterface.init()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FeedbackDaemonAdminInterface();
  [objc_msgSendSuper2(&v6 init)];
  sub_1B00D0014(0, &qword_1EB6C3AE8, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B014F1F0;
  v2 = sub_1B00D0014(0, &qword_1EB6C3AF8, 0x1E696ABC0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B00, &qword_1B014F208);
  *(v1 + 32) = v2;
  v3 = sub_1B00D0014(0, &qword_1EB6C3B08, 0x1E695DF20);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B10, &qword_1B014F210);
  *(v1 + 64) = v3;
  v4 = sub_1B00D0014(0, &qword_1EB6C3B18, 0x1E696AEC0);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B20, qword_1B014F218);
  *(v1 + 96) = v4;
  MEMORY[0x1B271EA70](v1);
  result = sub_1B014CECC();
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B00D0014(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_1B00D0098(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t Failure.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B00D0280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B00D02C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FBKSForm.asJSON.getter()
{
  v0 = sub_1B014C88C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C87C();
  type metadata accessor for FBKSForm();
  sub_1B00D207C(&qword_1EB6C3B38);
  v3 = sub_1B014C86C();

  return v3;
}

uint64_t FBKSForm.asFBAURLScheme(isSurvey:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v92 = sub_1B014C8CC();
  v6 = *(v92 - 8);
  v96 = v6;
  v5 = v6;
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x1EEE9AC00])();
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v79 - v10;
  v11 = sub_1B014C8AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B014C93C();
  v79 = *(v80 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B014C92C();
  if (a1)
  {
    v19 = 0x755368636E75616CLL;
  }

  else
  {
    v19 = 0x654668636E75616CLL;
  }

  if (a1)
  {
    v20 = 0xEC00000079657672;
  }

  else
  {
    v20 = 0xEE006B6361626465;
  }

  MEMORY[0x1B271E400](v19, v20);
  sub_1B014C91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B48, &qword_1B014F320);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v91 = *(v5 + 72);
  *(swift_allocObject() + 16) = xmmword_1B014F1E0;
  v22 = (v3 + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  v23 = v22[1];
  v98 = *v22;
  v99 = v23;

  sub_1B014C89C();
  sub_1B00D1FA8();
  sub_1B014CFEC();
  (*(v12 + 8))(v15, v11);

  v90 = v21;
  sub_1B014C8BC();

  v94 = v18;
  sub_1B014C8EC();
  v24 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  swift_beginAccess();
  v25 = *(v3 + v24);
  v26 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v87 = v28 & *(v25 + 64);
  v29 = (v27 + 63) >> 6;
  v88 = 0x80000001B015C080;
  v89 = (v96 + 32);
  v85 = v25;

  v31 = 0;
  v83 = v26;
  v84 = v29;
  v32 = v87;
  if (v87)
  {
    goto LABEL_14;
  }

  do
  {
LABEL_10:
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_84;
    }

    if (v33 >= v29)
    {

      v78 = v94;
      sub_1B014C8FC();
      return (*(v79 + 8))(v78, v80);
    }

    v32 = *(v26 + 8 * v33);
    ++v31;
  }

  while (!v32);
  v31 = v33;
LABEL_14:
  v87 = (v32 - 1) & v32;
  v86 = v31;
  v34 = __clz(__rbit64(v32)) | (v31 << 6);
  v35 = (*(v85 + 48) + 16 * v34);
  v36 = v35[1];
  v37 = *(*(v85 + 56) + 8 * v34);
  v38 = *(v37 + 16);
  v96 = *v35;
  sub_1B00D1FFC(v96, v36);

  v39 = 0;
  v40 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v41 = (v37 + 40 + 16 * v39);
  while (1)
  {
    if (v38 == v39)
    {

      v48 = v40[2];
      if (v48 >= 2)
      {
        v49 = 0;
        v50 = v40 + 5;
        v93 = v40[2];
        while (1)
        {
          if (v49 >= v40[2])
          {
            goto LABEL_83;
          }

          v51 = v40;
          v52 = *(v50 - 1);
          v53 = *v50;
          v97 = v49;
          v98 = 0x6E6F697473657571;
          v99 = 0xEA00000000005B73;

          v54 = sub_1B014D22C();
          MEMORY[0x1B271E7F0](v54);

          MEMORY[0x1B271E7F0](23389, 0xE200000000000000);
          if (v36 > 2)
          {
            switch(v36)
            {
              case 3:
                v55 = 0x657275746165663ALL;
                v57 = 0xEF6E69616D6F645FLL;
                break;
              case 4:
                v55 = 0x6165665F6275733ALL;
                v56 = 1701999988;
                goto LABEL_45;
              case 5:
                v55 = 0xD000000000000012;
                v57 = v88;
                break;
              default:
                goto LABEL_42;
            }
          }

          else
          {
            if (v36)
            {
              if (v36 == 1)
              {
                v57 = 0xE500000000000000;
                v55 = 0x616572613ALL;
                goto LABEL_46;
              }

              if (v36 == 2)
              {
                v55 = 0x706972637365643ALL;
                v56 = 1852795252;
LABEL_45:
                v57 = v56 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                goto LABEL_46;
              }

LABEL_42:
              v55 = v96;
              v57 = v36;
              goto LABEL_46;
            }

            v57 = 0xE600000000000000;
            v55 = 0x656C7469743ALL;
          }

LABEL_46:
          sub_1B00D1FFC(v96, v36);
          MEMORY[0x1B271E7F0](v55, v57);

          MEMORY[0x1B271E7F0](93, 0xE100000000000000);
          v59 = sub_1B014C8DC();
          if (*v58)
          {
            v60 = v58;
            sub_1B014C8BC();

            v61 = *v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v60 = v61;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v61 = sub_1B00D151C(0, v61[2] + 1, 1, v61, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
              *v60 = v61;
            }

            v64 = v61[2];
            v63 = v61[3];
            if (v64 >= v63 >> 1)
            {
              v61 = sub_1B00D151C(v63 > 1, v64 + 1, 1, v61, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
              *v60 = v61;
            }

            v61[2] = v64 + 1;
            (*v89)(v61 + v90 + v64 * v91, v95, v92);
          }

          else
          {
          }

          result = v59(&v98, 0);
          ++v49;
          v50 += 2;
          v40 = v51;
          if (v93 == v49)
          {

            result = sub_1B00D2010(v96, v36);
            v26 = v83;
            v29 = v84;
            goto LABEL_79;
          }
        }
      }

      v29 = v84;
      if (!v48)
      {
        sub_1B00D2010(v96, v36);

LABEL_78:
        v26 = v83;
LABEL_79:
        v31 = v86;
        v32 = v87;
        if (!v87)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      v66 = v40[4];
      v65 = v40[5];

      v98 = 0x6E6F697473657571;
      v99 = 0xE90000000000005BLL;
      if (v36 > 2)
      {
        switch(v36)
        {
          case 3:
            v67 = 0x657275746165663ALL;
            v69 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v67 = 0x6165665F6275733ALL;
            v68 = 1701999988;
            goto LABEL_69;
          case 5:
            v67 = 0xD000000000000012;
            v69 = v88;
            break;
          default:
LABEL_66:
            v67 = v96;
            v69 = v36;
            break;
        }
      }

      else
      {
        if (v36)
        {
          if (v36 == 1)
          {
            v69 = 0xE500000000000000;
            v67 = 0x616572613ALL;
            goto LABEL_70;
          }

          if (v36 == 2)
          {
            v67 = 0x706972637365643ALL;
            v68 = 1852795252;
LABEL_69:
            v69 = v68 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_70;
          }

          goto LABEL_66;
        }

        v69 = 0xE600000000000000;
        v67 = 0x656C7469743ALL;
      }

LABEL_70:
      v70 = v96;
      sub_1B00D1FFC(v96, v36);
      MEMORY[0x1B271E7F0](v67, v69);

      sub_1B00D2010(v70, v36);
      MEMORY[0x1B271E7F0](93, 0xE100000000000000);
      v72 = sub_1B014C8DC();
      if (*v71)
      {
        v73 = v71;
        sub_1B014C8BC();

        v74 = *v73;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *v73 = v74;
        if ((v75 & 1) == 0)
        {
          v74 = sub_1B00D151C(0, v74[2] + 1, 1, v74, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
          *v73 = v74;
        }

        v77 = v74[2];
        v76 = v74[3];
        if (v77 >= v76 >> 1)
        {
          v74 = sub_1B00D151C(v76 > 1, v77 + 1, 1, v74, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
          *v73 = v74;
        }

        v31 = v86;
        v74[2] = v77 + 1;
        (*v89)(v74 + v90 + v77 * v91, v82, v92);
        result = v72(&v98, 0);
        v26 = v83;
        v29 = v84;
        v32 = v87;
        if (!v87)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      result = v72(&v98, 0);
      goto LABEL_78;
    }

    if (v39 >= *(v37 + 16))
    {
      break;
    }

    ++v39;
    v43 = *(v41 - 1);
    v42 = *v41;
    v41 += 2;
    v44 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v44 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v98 = v40;
      if ((result & 1) == 0)
      {
        result = sub_1B00D16F8(0, v40[2] + 1, 1);
        v40 = v98;
      }

      v46 = v40[2];
      v45 = v40[3];
      if (v46 >= v45 >> 1)
      {
        result = sub_1B00D16F8((v45 > 1), v46 + 1, 1);
        v40 = v98;
      }

      v40[2] = v46 + 1;
      v47 = &v40[2 * v46];
      v47[4] = v43;
      v47[5] = v42;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

char *sub_1B00D12DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B00D13E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B70, &qword_1B014F350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B00D151C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B00D16F8(char *a1, int64_t a2, char a3)
{
  result = sub_1B00D1758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B00D1718(char *a1, int64_t a2, char a3)
{
  result = sub_1B00D1864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B00D1738(char *a1, int64_t a2, char a3)
{
  result = sub_1B00D1980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B00D1758(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B00D1864(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B60, &qword_1B014F340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B00D1980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s15FeedbackService8FBKSFormC12setQuestions13nsMutableDictySo19NSMutableDictionaryC_tF_0()
{
  sub_1B014CF0C();
  sub_1B014CF1C();
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  if (!*(&v26 + 1))
  {
LABEL_19:
  }

  v0 = MEMORY[0x1E69E7CC8];
  v1 = MEMORY[0x1E69E6158];
  v2 = &unk_1EB6C3B80;
  while (1)
  {
    sub_1B00D20C0(&v31, &v25);
    sub_1B00D20C0(&v29, v24);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(&v25);
LABEL_4:
    sub_1B014CF1C();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    if (!*(&v26 + 1))
    {
      goto LABEL_19;
    }
  }

  sub_1B00D20D0(&v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, qword_1B0151250);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(&v25);

    goto LABEL_4;
  }

  v3 = v1;
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v24[0] = v0;
  v6 = sub_1B013E0D0(v22, v23);
  v8 = v0[2];
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (!v10)
  {
    v12 = v7;
    if (v0[3] >= v11)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

      v17 = v6;
      sub_1B013F190();
      v6 = v17;
      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      v14 = v6;

      v0 = *&v24[0];
      v15 = *(*&v24[0] + 56);
      v16 = *(v15 + 8 * v14);
      *(v15 + 8 * v14) = v22;

      __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    else
    {
      sub_1B013E598(v11, isUniquelyReferenced_nonNull_native);
      v6 = sub_1B013E0D0(v22, v23);
      if ((v12 & 1) != (v13 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_16:
      v0 = *&v24[0];
      *(*&v24[0] + 8 * (v6 >> 6) + 64) |= 1 << v6;
      v18 = (v0[6] + 16 * v6);
      *v18 = v22;
      v18[1] = v23;
      *(v0[7] + 8 * v6) = v22;
      __swift_destroy_boxed_opaque_existential_0(&v25);
      v19 = v0[2];
      v10 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v10)
      {
        goto LABEL_21;
      }

      v0[2] = v20;
    }

    v2 = v4;
    v1 = v3;
    goto LABEL_4;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1B014D28C();
  __break(1u);
  return result;
}

uint64_t _s15FeedbackService8FBKSFormC8fromJSON4dataACSg10Foundation4DataV_tFZ_0()
{
  v0 = sub_1B014C82C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C81C();
  type metadata accessor for FBKSForm();
  sub_1B00D207C(&qword_1EB6C3B78);
  sub_1B014C80C();

  return v4;
}

unint64_t sub_1B00D1FA8()
{
  result = qword_1EDAE6EF0;
  if (!qword_1EDAE6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6EF0);
  }

  return result;
}

uint64_t sub_1B00D1FFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1B00D2010(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1B00D2024(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B00D207C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSForm();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1B00D20C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B00D20D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B00D2194()
{
  sub_1B014D01C();

  v1 = *(v0 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xE400000000000000;
      v3 = 1885956947;
    }

    else if (v1 == 4)
    {
      v2 = 0xEC00000061746164;
      v3 = 0x2064696C61766E49;
    }

    else
    {
      v2 = 0xEF646574656C6564;
      v3 = 0x20746E65746E6F43;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action))
  {
    if (v1 == 1)
    {
      v2 = 0xEB000000006E776FLL;
      v3 = 0x642073626D756854;
    }

    else
    {
      v2 = 0xEE006E7265636E6FLL;
      v3 = 0x632074726F706552;
    }
  }

  else
  {
    v2 = 0xE900000000000070;
    v3 = 0x752073626D756854;
  }

  MEMORY[0x1B271E7F0](v3, v2);

  return 0xD000000000000010;
}

uint64_t FBKSEvaluation.EvaluationError.hashValue.getter()
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t static FBKSEvaluation.Subject.ID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B014CB1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for FBKSEvaluation.Subject(0);

  return swift_storeEnumTagMultiPayload();
}

id static FBKSEvaluation.Subject.evaluatedFeature(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for FBKSEvaluation.Subject(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t FBKSEvaluation.Subject.description.getter()
{
  v1 = v0;
  v2 = sub_1B014CB1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FBKSEvaluation.Subject(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B00D52E0(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    strcpy(v19, "interaction: ");
    HIWORD(v19[1]) = -4864;
    v12 = [v11 description];
    v13 = sub_1B014CC1C();
    v15 = v14;

    MEMORY[0x1B271E7F0](v13, v15);

    return v19[0];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v19[0] = 540697705;
    v19[1] = 0xE400000000000000;
    sub_1B00DC264(&qword_1EB6C3B90, MEMORY[0x1E69695A8]);
    v17 = sub_1B014D22C();
    MEMORY[0x1B271E7F0](v17);

    v16 = v19[0];
    (*(v3 + 8))(v6, v2);
  }

  return v16;
}

void FBKSEvaluation.Subject.evaluationID.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B00D52E0(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
    swift_beginAccess();
    sub_1B00DE660(v8 + v9, a1, &qword_1EB6C3B98, &qword_1B014F360);
  }

  else
  {
    v10 = sub_1B014CB1C();
    v11 = *(v10 - 8);
    (*(v11 + 32))(a1, v7, v10);
    (*(v11 + 56))(a1, 0, 1, v10);
  }
}

void FBKSEvaluation.Subject.presented(_:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B014CB1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FBKSEvaluation.Subject(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B00D52E0(v3, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    sub_1B0101878(a1, a2);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    _s15FeedbackService12FBKSDonationC9presented12evaluationID10completiony10Foundation4UUIDV_ys5Error_pSgctFZ_0(v10, a1, a2);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t FBKSEvaluation.Subject.presented()()
{
  v1[2] = v0;
  v2 = sub_1B014CB1C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for FBKSEvaluation.Subject(0);
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B00D2AA8, 0, 0);
}

uint64_t sub_1B00D2AA8()
{
  v1 = v0[6];
  sub_1B00D52E0(v0[2], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v0[10] = *v3;
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1B00D2D94;

    return sub_1B0101EB0();
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v3, v0[3]);
    type metadata accessor for FBKSDonation();
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1B00D2BF8;
    v7 = v0[5];

    return static FBKSDonation.presented(evaluationID:)(v7);
  }
}

uint64_t sub_1B00D2BF8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B00D2F20;
  }

  else
  {
    v3 = sub_1B00D2D0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B00D2D0C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B00D2D94()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1B00D2FA8;
  }

  else
  {
    v3 = sub_1B00D2EA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B00D2EA8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B00D2F20()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B00D2FA8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

void FBKSEvaluation.Subject.evaluate(action:formResponse:completion:)(char *a1, uint64_t *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FBKSEvaluation.Subject(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  sub_1B00D52E0(v5, v13);
  v18 = type metadata accessor for FBKSEvaluation(0);
  v19 = objc_allocWithZone(v18);
  sub_1B00D52E0(v13, &v19[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v19[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v14;
  v20 = &v19[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v20 = v15;
  v20[1] = v16;
  v20[2] = v17;
  sub_1B00DB7AC(v15, v16);
  v23.receiver = v19;
  v23.super_class = v18;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_1B00DB7F0(v13);

  v22 = v21;
  sub_1B00DB84C(v22, a3, a4, v22);
}

id FBKSEvaluation.__allocating_init(subject:action:formResponse:)(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  v7 = objc_allocWithZone(v3);
  LOBYTE(a2) = *a2;
  v12 = *a3;
  v8 = *(a3 + 2);
  sub_1B00D52E0(a1, &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = a2;
  v9 = &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v9 = v12;
  *(v9 + 2) = v8;
  v13.receiver = v7;
  v13.super_class = v3;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_1B00DB7F0(a1);
  return v10;
}

void sub_1B00D3234(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  sub_1B00DE660(a1, &v13 - v9, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *v10;
    a2(v11, 1);
  }

  else
  {
    sub_1B00DE9C0(v10, &qword_1EB6C3C30, &qword_1B014F3F0);
    a2(a4, 0);
  }
}

uint64_t FBKSEvaluation.Subject.evaluate(action:formResponse:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 32) = v2;
  v6 = sub_1B014CB1C();
  *(v3 + 40) = v6;
  v7 = *(v6 - 8);
  *(v3 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v9 = *(*(type metadata accessor for FBKSEvaluation.Subject(0) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 120) = *a1;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B00D346C, 0, 0);
}

uint64_t sub_1B00D346C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 120);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_1B00D52E0(*(v0 + 32), v5);
  v6 = type metadata accessor for FBKSEvaluation(0);
  v7 = objc_allocWithZone(v6);
  sub_1B00D52E0(v5, &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v3;
  v8 = &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v8 = v4;
  v8[1] = v1;
  v8[2] = v2;
  sub_1B00DB7AC(v4, v1);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 96) = objc_msgSendSuper2((v0 + 16), sel_init);
  sub_1B00DB7F0(v5);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1B00D35B0;
  v10 = *(v0 + 56);

  return sub_1B00DA454(v10);
}

uint64_t sub_1B00D35B0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1B00D3750;
  }

  else
  {
    v3 = sub_1B00D36C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B00D36C4()
{
  v1 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_1B00D3750()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);
  v4 = *(v0 + 112);

  return v3();
}

uint64_t FBKSEvaluation.Subject.represents(_:)(uint64_t a1)
{
  v38 = type metadata accessor for FBKSEvaluation.Subject(0);
  v2 = *(*(v38 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v38);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v33 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = sub_1B014CB1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v22 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  v36 = a1;
  sub_1B00DE660(a1 + v22, v13, &qword_1EB6C3B98, &qword_1B014F360);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) != 1)
  {
    v26 = *(v15 + 32);
    v34 = v21;
    v26(v21, v13, v14);
    sub_1B00D52E0(v37, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *v7;
      v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
      swift_beginAccess();
      v29 = v35;
      sub_1B00DE660(v27 + v28, v35, &qword_1EB6C3B98, &qword_1B014F360);
      if (v23(v29, 1, v14) == 1)
      {
        sub_1B00DE9C0(v29, &qword_1EB6C3B98, &qword_1B014F360);
        sub_1B00DC12C();
        v25 = sub_1B014CF9C();

        (*(v15 + 8))(v34, v14);
        return v25 & 1;
      }
    }

    else
    {
      v29 = v7;
    }

    v30 = v34;
    v26(v19, v29, v14);
    v25 = sub_1B014CAFC();
    v31 = *(v15 + 8);
    v31(v19, v14);
    v31(v30, v14);
    return v25 & 1;
  }

  sub_1B00DE9C0(v13, &qword_1EB6C3B98, &qword_1B014F360);
  sub_1B00D52E0(v37, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v5;
    sub_1B00DC12C();
    v25 = sub_1B014CF9C();
  }

  else
  {
    sub_1B00DB7F0(v5);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1B00D3BC4()
{
  if (*v0)
  {
    result = 0x7463617265746E69;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1B00D3BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B00D3CE0(uint64_t a1)
{
  v2 = sub_1B00DC1BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D3D1C(uint64_t a1)
{
  v2 = sub_1B00DC1BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00D3D64(uint64_t a1)
{
  v2 = sub_1B00DC2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D3DA0(uint64_t a1)
{
  v2 = sub_1B00DC2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00D3DDC()
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t sub_1B00D3E20()
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t sub_1B00D3E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B00D3EE0(uint64_t a1)
{
  v2 = sub_1B00DC210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D3F1C(uint64_t a1)
{
  v2 = sub_1B00DC210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FBKSEvaluation.Subject.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BA0, &qword_1B014F380);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v29 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BA8, &qword_1B014F388);
  v32 = *(v34 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v29 - v6;
  v8 = sub_1B014CB1C();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FBKSEvaluation.Subject(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BB0, &qword_1B014F390);
  v16 = *(v38 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v19 = &v29 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DC1BC();
  sub_1B014D35C();
  sub_1B00D52E0(v37, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v15;
    v41 = 1;
    sub_1B00DC210();
    v22 = v33;
    v23 = v38;
    sub_1B014D19C();
    v39 = v21;
    type metadata accessor for FBKSInteraction(0);
    sub_1B00DC264(&qword_1EDAE6B20, type metadata accessor for FBKSInteraction);
    v24 = v36;
    sub_1B014D21C();
    (*(v35 + 8))(v22, v24);
    (*(v16 + 8))(v19, v23);
  }

  else
  {
    v26 = v30;
    v25 = v31;
    (*(v30 + 32))(v11, v15, v31);
    v40 = 0;
    sub_1B00DC2AC();
    v27 = v38;
    sub_1B014D19C();
    sub_1B00DC264(&qword_1EDAE7200, MEMORY[0x1E69695A8]);
    v28 = v34;
    sub_1B014D21C();
    (*(v32 + 8))(v7, v28);
    (*(v26 + 8))(v11, v25);
    (*(v16 + 8))(v19, v27);
  }
}

uint64_t FBKSEvaluation.Subject.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BD0, &qword_1B014F398);
  v51 = *(v48 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v54 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BD8, &qword_1B014F3A0);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE0, &qword_1B014F3A8);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for FBKSEvaluation.Subject(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B00DC1BC();
  v24 = v56;
  sub_1B014D34C();
  if (!v24)
  {
    v56 = v19;
    v46 = v16;
    v47 = v21;
    v25 = v53;
    v26 = v54;
    v27 = v52;
    v28 = v55;
    v29 = sub_1B014D18C();
    if (*(v29 + 16) == 1)
    {
      v45 = v29;
      if (*(v29 + 32))
      {
        v44 = v12;
        v60 = 1;
        sub_1B00DC210();
        sub_1B014D0EC();
        type metadata accessor for FBKSInteraction(0);
        sub_1B00DC264(&qword_1EB6C3BF0, type metadata accessor for FBKSInteraction);
        v30 = v48;
        sub_1B014D17C();
        (*(v51 + 8))(v26, v30);
        (*(v27 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v31 = v46;
        *v46 = v58;
        swift_storeEnumTagMultiPayload();
        v32 = v31;
        v33 = v47;
        sub_1B00DC300(v32, v47);
        v34 = v55;
      }

      else
      {
        v59 = 0;
        sub_1B00DC2AC();
        sub_1B014D0EC();
        v34 = v28;
        v44 = v12;
        sub_1B014CB1C();
        sub_1B00DC264(&qword_1EDAE6EA8, MEMORY[0x1E69695A8]);
        v41 = v56;
        v42 = v50;
        sub_1B014D17C();
        (*(v49 + 8))(v25, v42);
        (*(v27 + 8))(v11, v8);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v47;
        sub_1B00DC300(v41, v47);
      }

      sub_1B00DC300(v33, v34);
    }

    else
    {
      v35 = sub_1B014D05C();
      swift_allocError();
      v36 = v11;
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0) + 48);
      *v38 = v12;
      sub_1B014D0FC();
      sub_1B014D04C();
      (*(*(v35 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v27 + 8))(v36, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v57);
}

BOOL sub_1B00D4A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1B00D4A68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 37;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4A9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4AD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4B04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4B38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 39;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4B6C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4BA0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FBKSEvaluation.Action.description.getter()
{
  v1 = *v0;
  v2 = 0x752073626D756854;
  v3 = 1885956947;
  v4 = 0x2064696C61766E49;
  if (v1 != 4)
  {
    v4 = 0x20746E65746E6F43;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x642073626D756854;
  if (v1 != 1)
  {
    v5 = 0x632074726F706552;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static FBKSEvaluation.Action.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EB6C3B88 = a1;
}

uint64_t sub_1B00D4DEC(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EB6C3B88 = v1;
}

FeedbackService::FBKSEvaluation::Action_optional __swiftcall FBKSEvaluation.Action.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B014D0DC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B00D4EA8()
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00D4FD4()
{
  *v0;
  *v0;
  *v0;
  sub_1B014CCAC();
}

void sub_1B00D50FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000070;
  v4 = 0x752073626D756854;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0xEC00000061746164;
  v8 = 0x2064696C61766E49;
  if (v2 != 4)
  {
    v8 = 0x20746E65746E6F43;
    v7 = 0xEF646574656C6564;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E776FLL;
  v10 = 0x642073626D756854;
  if (v2 != 1)
  {
    v10 = 0x632074726F706552;
    v9 = 0xEE006E7265636E6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B00D51E0()
{
  v1 = *v0;
  v2 = 0x752073626D756854;
  v3 = 1885956947;
  v4 = 0x2064696C61766E49;
  if (v1 != 4)
  {
    v4 = 0x20746E65746E6F43;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x642073626D756854;
  if (v1 != 1)
  {
    v5 = 0x632074726F706552;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B00D52E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00D53F4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C3B88;
}

uint64_t FBKSEvaluation.FormResponse.feedbackID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FBKSEvaluation.FormResponse.feedbackID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FBKSEvaluation.FormResponse.answers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

FeedbackService::FBKSEvaluation::FormResponse __swiftcall FBKSEvaluation.FormResponse.init(feedbackID:answers:)(Swift::String feedbackID, Swift::OpaquePointer answers)
{
  *v2 = feedbackID;
  *(v2 + 16) = answers;
  result.feedbackID = feedbackID;
  result.answers = answers;
  return result;
}

uint64_t static FBKSEvaluation.FormResponse.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B014D25C() & 1) == 0)
  {
    return 0;
  }

  return sub_1B00D80AC(v2, v3);
}

uint64_t sub_1B00D55B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1B013E0D0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1B014D25C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B00D5754(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a2;
  v6 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (*&v11 == 0.0)
        {
          v14 = v7;
          do
          {
            v7 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_295:
              v238 = a1;
              v239 = v11;
              sub_1B00DE580(v3, v11, v2);
              sub_1B00DE5AC(v238, v5, 0);
              sub_1B00DE5AC(v3, v239, v2);
              v28 = v4;
              v4 = v388;
              goto LABEL_361;
            }

            if (v7 >= v12)
            {
              return 1;
            }

            v15 = *(v8 + 8 * v7);
            ++v14;
          }

          while (!v15);
          v13 = __clz(__rbit64(v15));
          v386 = (v15 - 1) & v15;
        }

        else
        {
          v13 = __clz(__rbit64(v11));
          v386 = (v11 - 1) & v11;
        }

        v16 = v13 | (v7 << 6);
        v17 = (*(v6 + 48) + 16 * v16);
        v18 = *v17;
        v4 = v17[1];
        v19 = *(v6 + 56) + 24 * v16;
        v20 = *v19;
        v21 = *(v19 + 8);
        v3 = *(v19 + 16);

        v387 = v21;
        sub_1B00DE580(v20, v21, v3);
        v2 = v4 == 0;
        if (*&v4 == 0.0)
        {
          return v2;
        }

        v388 = v20;
        v22 = sub_1B013E0D0(v18, v4);
        v23 = v5;
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          v226 = v388;
          goto LABEL_292;
        }

        v26 = *(v23 + 56) + 24 * v22;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 16);
        v5 = v23;
        if (v29 > 2)
        {
          break;
        }

        if (*(v26 + 16))
        {
          v30 = v388;
          if (v29 == 1)
          {
            sub_1B00DE5AC(*v26, v27, 1);
            if (v3 != 1)
            {
              goto LABEL_287;
            }

            *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v388, v387, 1));
            v31 = v28 == v388;
            goto LABEL_38;
          }

          if (v3 != 2)
          {
            sub_1B00DE5AC(*v26, v27, 2);
LABEL_287:
            v226 = v30;
LABEL_292:
            v234 = v387;
            v235 = v3;
LABEL_363:
            sub_1B00DE5AC(v226, v234, v235);
            return 0;
          }

          sub_1B00DE5AC(*v26, v27, 2);
          *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v388, v387, 2));
          v31 = *&v28 == *&v388;
LABEL_38:
          v11 = v386;
          if (!v31)
          {
            return v2;
          }
        }

        else
        {
          sub_1B00DE5AC(*v26, v27, 0);
          v30 = v388;
          if (v3)
          {
            goto LABEL_287;
          }

          *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v388, v387, 0));
          v11 = v386;
          if ((v28 ^ v388))
          {
            return v2;
          }
        }
      }

      if (v29 == 3)
      {
        v4 = v388;
        if (v3 != 3)
        {
          v233 = *(v26 + 8);

          v229 = v28;
          v230 = v233;
          v231 = 3;
          goto LABEL_291;
        }

        v3 = v387;
        if (v28 == v388 && v27 == v387)
        {
          v383 = 3;

          v41 = v388;
          v42 = v387;
          v43 = 3;
LABEL_45:
          sub_1B00DE5AC(v41, v42, v43);
          goto LABEL_48;
        }

        v37 = *v26;
        v3 = *(v26 + 8);
        *&v4 = COERCE_DOUBLE(sub_1B014D25C());

        sub_1B00DE5AC(v28, v3, 3);
        v38 = v388;
        v39 = v387;
        v40 = 3;
        goto LABEL_42;
      }

      v4 = v388;
      if (v29 == 4)
      {
        break;
      }

      if (v3 != 5)
      {
        v232 = *(v26 + 8);

        v230 = v232;
        v231 = 5;
        goto LABEL_291;
      }

      v3 = *(v26 + 8);
      sub_1B00DE580(*v26, v27, 5);
      sub_1B00DE580(v28, v3, 5);
      sub_1B00DE580(v388, v387, 5);
      *&v4 = COERCE_DOUBLE(sub_1B00D5754(v28, v388));
      sub_1B00DE5AC(v388, v387, 5);
      sub_1B00DE5AC(v28, v3, 5);
      sub_1B00DE5AC(v28, v3, 5);
      v38 = v388;
      v39 = v387;
      v40 = 5;
LABEL_42:
      *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v38, v39, v40));
      v11 = v386;
      if ((v4 & 1) == 0)
      {
        return v2;
      }
    }

    if (v3 != 4)
    {
      v227 = *v26;
      v228 = *(v26 + 8);

      v230 = v228;
      v231 = 4;
LABEL_291:
      sub_1B00DE5AC(v229, v230, v231);
      v226 = v4;
      goto LABEL_292;
    }

    v32 = *(v28 + 16);
    if (v32 != *(v388 + 16))
    {
      v236 = *(v26 + 8);

      sub_1B00DE5AC(v237, v236, 4);
      v226 = v388;
      v234 = v387;
LABEL_362:
      v235 = 4;
      goto LABEL_363;
    }

    v383 = 4;
    if (!v32)
    {
      v2 = *(v26 + 8);

      v35 = v2;
      goto LABEL_47;
    }

    if (v28 != v388)
    {
      break;
    }

    v33 = *(v26 + 8);

    v34 = v388;
    v35 = v33;
LABEL_47:
    sub_1B00DE5AC(v34, v35, 4);
    v3 = v387;
LABEL_48:
    *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v4, v3, v383));
    v11 = v386;
  }

  v382 = v28 + 32;
  v44 = *(v26 + 8);
  sub_1B00DE580(v28, v27, 4);
  v371 = v44;
  sub_1B00DE580(v28, v44, 4);
  sub_1B00DE580(v388, v387, 4);
  v47 = 0;
  v377 = v28;
  v378 = v32;
  while (1)
  {
    if (v47 >= *(v28 + 16))
    {
      __break(1u);
LABEL_322:
      __break(1u);
      goto LABEL_323;
    }

    if (v47 >= *(v4 + 16))
    {
      goto LABEL_322;
    }

    v55 = v382 + 24 * v47;
    a1 = *v55;
    v56 = *(v55 + 8);
    v57 = *(v55 + 16);
    v58 = v388 + 32 + 24 * v47;
    v23 = *v58;
    v11 = *(v58 + 8);
    LODWORD(v2) = *(v58 + 16);
    v385 = v47;
    if (v57 > 2)
    {
      break;
    }

    if (!v57)
    {
      v3 = *v58;
      v23 = v5;
      v5 = v56;
      v4 = v28;
      if (*(v58 + 16))
      {
        goto LABEL_295;
      }

      v64 = a1;
      v44 = *(v58 + 8);
      sub_1B00DE5AC(a1, v56, 0);
      sub_1B00DE5AC(v3, v44, 0);
      v65 = v3 ^ v64;
      v28 = v4;
      v5 = v23;
      v4 = v388;
      v32 = v378;
      if (v65)
      {
        goto LABEL_361;
      }

      goto LABEL_85;
    }

    if (v57 != 1)
    {
      if (v2 == 2)
      {
        v72 = *&a1;
        v44 = *(v58 + 8);
        sub_1B00DE5AC(a1, v56, 2);
        sub_1B00DE5AC(v23, v44, 2);
        if (v72 != *&v23)
        {
          goto LABEL_361;
        }

        goto LABEL_85;
      }

      v248 = v56;
      v241 = *v58;
      v249 = v28;
      v250 = a1;
      v244 = *(v58 + 8);
      sub_1B00DE580(*v58, v11, v2);
      v245 = v250;
      v28 = v249;
      v246 = v248;
      v247 = 2;
LABEL_301:
      sub_1B00DE5AC(v245, v246, v247);
      v258 = v241;
      v259 = v244;
      v260 = v2;
      goto LABEL_360;
    }

    if (v2 != 1)
    {
      v240 = v56;
      v241 = *v58;
      v242 = v28;
      v243 = a1;
      v244 = *(v58 + 8);
      sub_1B00DE580(*v58, v11, v2);
      v245 = v243;
      v28 = v242;
      v246 = v240;
      v247 = 1;
      goto LABEL_301;
    }

    v44 = a1;
    v59 = *(v58 + 8);
    sub_1B00DE5AC(a1, v56, 1);
    v60 = v59;
    v28 = v377;
    sub_1B00DE5AC(v23, v60, 1);
    if (v44 != v23)
    {
      goto LABEL_361;
    }

LABEL_85:
    v47 = v385 + 1;
    if (v385 + 1 == v32)
    {
      v3 = v387;
      sub_1B00DE5AC(v4, v387, 4);
      LOBYTE(v2) = v371;
      sub_1B00DE5AC(v28, v371, 4);
      v41 = v28;
      v42 = v371;
      v43 = 4;
      goto LABEL_45;
    }
  }

  if (v57 == 3)
  {
    if (v2 != 3)
    {
      v252 = v56;
      v241 = *v58;
      v253 = v28;
      v254 = a1;
      v244 = *(v58 + 8);
      sub_1B00DE580(*v58, v11, v2);
      sub_1B00DE580(v254, v252, 3);
      v245 = v254;
      v28 = v253;
      v246 = v252;
      v247 = 3;
      goto LABEL_301;
    }

    if (a1 != v23 || v56 != v11)
    {
      v48 = *v58;
      v23 = v5;
      v49 = v56;
      v50 = a1;
      v51 = *(v58 + 8);
      *&v44 = COERCE_DOUBLE(sub_1B014D25C());
      sub_1B00DE580(v48, v51, 3);
      sub_1B00DE580(v50, v49, 3);
      v52 = v50;
      v53 = v49;
      v5 = v23;
      v4 = v388;
      sub_1B00DE5AC(v52, v53, 3);
      v54 = v51;
      v28 = v377;
      sub_1B00DE5AC(v48, v54, 3);
      v32 = v378;
      if ((v44 & 1) == 0)
      {
        goto LABEL_361;
      }

      goto LABEL_85;
    }

    v44 = v28;
    v67 = a1;
    v68 = v56;
    sub_1B00DE580(a1, v56, 3);
    sub_1B00DE580(v67, v68, 3);
    sub_1B00DE5AC(v67, v68, 3);
    v69 = v67;
    v28 = v44;
    v70 = v68;
    v71 = 3;
    goto LABEL_84;
  }

  v380 = a1;
  if (v57 != 4)
  {
    v73 = *v58;
    v23 = v5;
    v74 = v56;
    if (v2 != 5)
    {
      v251 = *(v58 + 8);
      sub_1B00DE580(v73, v11, v2);
      sub_1B00DE580(v380, v74, 5);
      sub_1B00DE5AC(v380, v74, 5);
      sub_1B00DE5AC(v73, v251, v2);
      v4 = v388;
      goto LABEL_361;
    }

    v75 = *(v58 + 8);
    sub_1B00DE580(v73, v11, 5);
    sub_1B00DE580(v380, v74, 5);
    sub_1B00DE580(v73, v75, 5);
    sub_1B00DE580(v380, v74, 5);
    *&v44 = COERCE_DOUBLE(sub_1B00D5754(v380, v73));
    sub_1B00DE5AC(v380, v74, 5);
    sub_1B00DE5AC(v73, v75, 5);
    v76 = v75;
    v28 = v377;
    sub_1B00DE5AC(v73, v76, 5);
    sub_1B00DE5AC(v380, v74, 5);
    v5 = v23;
    v4 = v388;
    v32 = v378;
    if ((v44 & 1) == 0)
    {
LABEL_361:
      sub_1B00DE5AC(v28, v371, 4);
      sub_1B00DE5AC(v4, v387, 4);
      sub_1B00DE5AC(v4, v387, 4);
      v226 = v28;
      v234 = v371;
      goto LABEL_362;
    }

    goto LABEL_85;
  }

  if (v2 != 4)
  {
    v255 = v56;
    v241 = *v58;
    v256 = v28;
    v257 = a1;
    v244 = *(v58 + 8);
    sub_1B00DE580(*v58, v11, v2);
    sub_1B00DE580(v257, v255, 4);
    v245 = v257;
    v28 = v256;
    v246 = v255;
    v247 = 4;
    goto LABEL_301;
  }

  v61 = *(a1 + 16);
  if (v61 != *(v23 + 16))
  {
    v261 = v28;
    v262 = a1;
    v263 = v56;
    v264 = v11;
    sub_1B00DE580(v23, v11, 4);
    sub_1B00DE580(v262, v263, 4);
    v265 = v262;
    v28 = v261;
    sub_1B00DE5AC(v265, v263, 4);
    v258 = v23;
    v259 = v264;
    goto LABEL_359;
  }

  if (!v61)
  {
    v44 = a1;
    v77 = v56;
    v78 = v11;
    sub_1B00DE580(v23, v11, 4);
    sub_1B00DE580(v44, v77, 4);
    sub_1B00DE5AC(v44, v77, 4);
    v69 = v23;
    v70 = v78;
    v28 = v377;
    v71 = 4;
LABEL_84:
    sub_1B00DE5AC(v69, v70, v71);
    v32 = v378;
    goto LABEL_85;
  }

  v62 = *&v56;
  if (a1 == v23)
  {
    v44 = a1;
    v63 = v11;
    sub_1B00DE580(a1, v11, 4);
    sub_1B00DE580(v44, *&v62, 4);
    sub_1B00DE5AC(v44, *&v62, 4);
    sub_1B00DE5AC(v44, v63, 4);
    v28 = v377;
    v32 = v378;
    goto LABEL_85;
  }

  v374 = *(a1 + 16);
  v384 = v5;
  v375 = v23 + 32;
  v376 = a1 + 32;
  v79 = v11;
  sub_1B00DE580(v23, v11, 4);
  sub_1B00DE580(v380, *&v62, 4);
  v362 = v79;
  sub_1B00DE580(v23, v79, 4);
  v361 = *&v62;
  sub_1B00DE580(v380, *&v62, 4);
  v44 = v380;
  v81 = 0;
  v366 = v23;
  while (2)
  {
    if (v81 >= *(v44 + 16))
    {
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      v170 = *&v62;
      v172 = v346;
LABEL_334:
      v310 = v170;
      v311 = v80;
      sub_1B00DE580(v79, v170, v80);

      LOBYTE(v80) = v311;
      v170 = v310;
LABEL_335:
      v312 = v170;
      v313 = v80;
      sub_1B00DE580(v359, v172, v44);
      sub_1B00DE5AC(v79, v312, v313);
LABEL_348:
      sub_1B00DE5AC(v359, v172, v44);
      sub_1B00DE5AC(v79, v312, v313);
LABEL_349:
      sub_1B00DE5AC(v356, v347, 4);
      sub_1B00DE5AC(v352, v364, 4);
      sub_1B00DE5AC(v352, v364, 4);
      v304 = v356;
      v305 = v347;
LABEL_350:
      v306 = 4;
      goto LABEL_351;
    }

    if (v81 >= *(v23 + 16))
    {
      goto LABEL_332;
    }

    v82 = v376 + 24 * v81;
    v79 = *v82;
    v379 = *(v82 + 8);
    v83 = *(v82 + 16);
    v84 = v375 + 24 * v81;
    v85 = *(v84 + 8);
    v381 = *v84;
    v86 = *(v84 + 16);
    if (v83 <= 2)
    {
      if (v83)
      {
        if (v83 == 1)
        {
          if (v86 == 1)
          {
            v87 = v79;
            v88 = v79;
            v79 = *(v84 + 8);
            sub_1B00DE5AC(v87, v379, 1);
            v62 = *&v381;
            sub_1B00DE5AC(v381, v79, 1);
            if (v88 != v381)
            {
              goto LABEL_358;
            }

            goto LABEL_89;
          }

          v271 = *v84;
          v267 = *(v84 + 8);
          sub_1B00DE580(v381, v85, *(v84 + 16));
          v272 = v79;
          v273 = v379;
          v274 = 1;
LABEL_310:
          sub_1B00DE5AC(v272, v273, v274);
          v275 = *&v271;
LABEL_311:
          v276 = v267;
          v277 = v86;
          goto LABEL_357;
        }

        if (v86 != 2)
        {
          v271 = *v84;
          v267 = *(v84 + 8);
          sub_1B00DE580(v381, v85, *(v84 + 16));
          v272 = v79;
          v273 = v379;
          v274 = 2;
          goto LABEL_310;
        }

        v62 = *v84;
        v98 = *(v84 + 8);
        sub_1B00DE5AC(v79, v379, 2);
        sub_1B00DE5AC(v381, v98, 2);
        if (*&v79 != *&v381)
        {
          goto LABEL_358;
        }
      }

      else
      {
        if (*(v84 + 16))
        {
          v271 = *v84;
          v267 = *(v84 + 8);
          sub_1B00DE580(v381, v85, *(v84 + 16));
          v272 = v79;
          v273 = v379;
          v274 = 0;
          goto LABEL_310;
        }

        v93 = *(v84 + 8);
        sub_1B00DE5AC(v79, v379, 0);
        v62 = *&v381;
        sub_1B00DE5AC(v381, v93, 0);
        if ((v381 ^ v79))
        {
          goto LABEL_358;
        }
      }

LABEL_89:
      ++v81;
      v44 = v380;
      if (v81 == v374)
      {
        sub_1B00DE5AC(v380, v361, 4);
        sub_1B00DE5AC(v23, v362, 4);
        v28 = v377;
        sub_1B00DE5AC(v23, v362, 4);
        sub_1B00DE5AC(v380, v361, 4);
        v5 = v384;
        v32 = v378;
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  if (v83 == 3)
  {
    if (v86 == 3)
    {
      if (v79 == v381 && v379 == v85)
      {
        sub_1B00DE580(v79, v379, 3);
        sub_1B00DE580(v79, v379, 3);
        sub_1B00DE5AC(v79, v379, 3);
        sub_1B00DE5AC(v79, v379, 3);
      }

      else
      {
        v62 = *&v379;
        v95 = v81;
        v96 = v79;
        v79 = *(v84 + 8);
        LODWORD(v373) = sub_1B014D25C();
        sub_1B00DE580(v381, v79, 3);
        sub_1B00DE580(v96, v379, 3);
        v97 = v96;
        v81 = v95;
        sub_1B00DE5AC(v97, v379, 3);
        v23 = v366;
        sub_1B00DE5AC(v381, v79, 3);
        if ((v373 & 1) == 0)
        {
          goto LABEL_358;
        }
      }

      goto LABEL_89;
    }

    v266 = *v84;
    v267 = *(v84 + 8);
    sub_1B00DE580(v381, v85, *(v84 + 16));
    sub_1B00DE580(v79, v379, 3);
    v268 = v79;
    v269 = v379;
    v270 = 3;
    goto LABEL_308;
  }

  v370 = v81;
  if (v83 != 4)
  {
    if (v86 == 5)
    {
      v62 = *&v379;
      v99 = *(v84 + 8);
      sub_1B00DE580(v381, v85, 5);
      sub_1B00DE580(v79, v379, 5);
      sub_1B00DE580(v381, v99, 5);
      sub_1B00DE580(v79, v379, 5);
      v100 = sub_1B00D5754(v79, v381);
      sub_1B00DE5AC(v79, v379, 5);
      sub_1B00DE5AC(v381, v99, 5);
      v101 = v99;
      v23 = v366;
      sub_1B00DE5AC(v381, v101, 5);
      sub_1B00DE5AC(v79, v379, 5);
      if ((v100 & 1) == 0)
      {
        goto LABEL_358;
      }

      goto LABEL_89;
    }

    v266 = *v84;
    v267 = *(v84 + 8);
    sub_1B00DE580(v381, v85, v86);
    sub_1B00DE580(v79, v379, 5);
    v268 = v79;
    v269 = v379;
    v270 = 5;
LABEL_308:
    sub_1B00DE5AC(v268, v269, v270);
    v275 = *&v266;
    goto LABEL_311;
  }

  if (v86 != 4)
  {
    v266 = *v84;
    v267 = *(v84 + 8);
    sub_1B00DE580(v381, v85, v86);
    sub_1B00DE580(v79, v379, 4);
    v268 = v79;
    v269 = v379;
    v270 = 4;
    goto LABEL_308;
  }

  v89 = *(v79 + 16);
  if (v89 != *(v381 + 16))
  {
    v278 = v85;
    sub_1B00DE580(v381, v85, 4);
    sub_1B00DE580(v79, v379, 4);
    sub_1B00DE5AC(v79, v379, 4);
    v275 = v381;
    v276 = v278;
    goto LABEL_356;
  }

  if (!v89)
  {
    v102 = v79;
    v79 = v85;
    sub_1B00DE580(v381, v85, 4);
    v62 = *&v379;
    sub_1B00DE580(v102, v379, 4);
    sub_1B00DE5AC(v102, v379, 4);
    v92 = v381;
LABEL_122:
    v103 = v79;
    goto LABEL_123;
  }

  if (v79 == v381)
  {
    v90 = v79;
    v91 = v79;
    v79 = v85;
    sub_1B00DE580(v90, v85, 4);
    v62 = *&v379;
    sub_1B00DE580(v91, v379, 4);
    sub_1B00DE5AC(v91, v379, 4);
    v92 = v91;
    goto LABEL_122;
  }

  v368 = v79 + 32;
  v365 = *(v79 + 16);
  v369 = v79;
  v104 = v85;
  sub_1B00DE580(v381, v85, 4);
  LOBYTE(v105) = v379;
  sub_1B00DE580(v369, v379, 4);
  v106 = v365;
  v353 = v104;
  sub_1B00DE580(v381, v104, 4);
  sub_1B00DE580(v369, v379, 4);
  v110 = 0;
LABEL_127:
  if (v110 >= *(v369 + 16))
  {
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    v315 = v109;
    v190 = v81;
    v191 = v108;
    v316 = v23;
    v338 = v107;
LABEL_342:
    v317 = v315;
    sub_1B00DE580(v348, v338, v315);

    LOBYTE(v109) = v317;
    v107 = v338;
    v188 = v348;
    v23 = v316;
    v4 = v388;
LABEL_343:
    v318 = v190;
    v319 = v190;
    v320 = v107;
    v321 = v109;
    v322 = v188;
    sub_1B00DE580(v319, v191, v105);
    sub_1B00DE5AC(v322, v320, v321);
    sub_1B00DE5AC(v318, v191, v105);
    v323 = v322;
    v324 = v320;
    v325 = v321;
LABEL_346:
    sub_1B00DE5AC(v323, v324, v325);
    v79 = v331;
LABEL_347:
    LOBYTE(v44) = 4;
    v312 = v333;
    sub_1B00DE5AC(v79, v333, 4);
    v172 = v346;
    sub_1B00DE5AC(v359, v346, 4);
    v313 = 4;
    goto LABEL_348;
  }

  if (v110 >= *(v381 + 16))
  {
    goto LABEL_338;
  }

  v112 = v368 + 24 * v110;
  v113 = *v112;
  v372 = v110;
  v373 = *(v112 + 8);
  v114 = *(v112 + 16);
  v115 = v381 + 32 + 24 * v110;
  v117 = *v115;
  v116 = *(v115 + 8);
  v118 = *(v115 + 16);
  if (v114 <= 2)
  {
    if (v114)
    {
      if (v114 == 1)
      {
        v119 = *v115;
        if (v118 == 1)
        {
          v105 = v113;
          v120 = *(v115 + 8);
          sub_1B00DE5AC(v113, v373, 1);
          sub_1B00DE5AC(v119, v120, 1);
          v31 = v105 == v119;
          v106 = v365;
          if (!v31)
          {
            goto LABEL_355;
          }

          goto LABEL_126;
        }

        v286 = v113;
        v280 = *(v115 + 8);
        sub_1B00DE580(*v115, v280, *(v115 + 16));
        v281 = v286;
        v282 = v373;
        v283 = 1;
      }

      else
      {
        if (v118 == 2)
        {
          v130 = *&v113;
          v131 = *v115;
          v105 = *(v115 + 8);
          sub_1B00DE5AC(v113, v373, 2);
          sub_1B00DE5AC(v117, v105, 2);
          if (v130 != *&v117)
          {
            goto LABEL_355;
          }

          goto LABEL_126;
        }

        v119 = *v115;
        v285 = v113;
        v280 = *(v115 + 8);
        sub_1B00DE580(*v115, v280, *(v115 + 16));
        v281 = v285;
        v282 = v373;
        v283 = 2;
      }
    }

    else
    {
      v119 = *v115;
      if (!*(v115 + 16))
      {
        v124 = v113;
        v105 = *(v115 + 8);
        sub_1B00DE5AC(v113, v373, 0);
        sub_1B00DE5AC(v119, v105, 0);
        v125 = v119 ^ v124;
        v106 = v365;
        if (v125)
        {
          goto LABEL_355;
        }

        goto LABEL_126;
      }

      v287 = v113;
      v280 = *(v115 + 8);
      sub_1B00DE580(*v115, v280, *(v115 + 16));
      v281 = v287;
      v282 = v373;
      v283 = 0;
    }

    goto LABEL_319;
  }

  if (v114 == 3)
  {
    if (v118 == 3)
    {
      if (v113 == v117 && v373 == v116)
      {
        v111 = v113;
        LOBYTE(v105) = v373;
        sub_1B00DE580(v113, v373, 3);
        sub_1B00DE580(v111, v373, 3);
        sub_1B00DE5AC(v111, v373, 3);
        sub_1B00DE5AC(v111, v373, 3);
      }

      else
      {
        v127 = v113;
        v81 = v373;
        v105 = *v115;
        v128 = *(v115 + 8);
        LODWORD(v367) = sub_1B014D25C();
        sub_1B00DE580(v105, v128, 3);
        sub_1B00DE580(v127, v373, 3);
        v129 = v127;
        v106 = v365;
        sub_1B00DE5AC(v129, v373, 3);
        sub_1B00DE5AC(v105, v128, 3);
        if ((v367 & 1) == 0)
        {
          goto LABEL_355;
        }
      }

      goto LABEL_126;
    }

    v119 = *v115;
    v279 = v113;
    v280 = *(v115 + 8);
    sub_1B00DE580(*v115, v280, *(v115 + 16));
    sub_1B00DE580(v279, v373, 3);
    v281 = v279;
    v282 = v373;
    v283 = 3;
    goto LABEL_319;
  }

  v367 = v113;
  if (v114 != 4)
  {
    if (v118 == 5)
    {
      v81 = v373;
      v105 = *(v115 + 8);
      sub_1B00DE580(v117, v116, 5);
      sub_1B00DE580(v367, v373, 5);
      sub_1B00DE580(v117, v105, 5);
      sub_1B00DE580(v367, v373, 5);
      LODWORD(v364) = sub_1B00D5754(v367, v117);
      sub_1B00DE5AC(v367, v373, 5);
      sub_1B00DE5AC(v117, v105, 5);
      sub_1B00DE5AC(v117, v105, 5);
      v106 = v365;
      sub_1B00DE5AC(v367, v373, 5);
      if ((v364 & 1) == 0)
      {
        goto LABEL_355;
      }

      goto LABEL_126;
    }

    v280 = *(v115 + 8);
    sub_1B00DE580(v117, v116, v118);
    v119 = v117;
    sub_1B00DE580(v367, v373, 5);
    v281 = v367;
    v282 = v373;
    v283 = 5;
LABEL_319:
    sub_1B00DE5AC(v281, v282, v283);
    v288 = v119;
    v289 = v280;
    v290 = v118;
    goto LABEL_354;
  }

  if (v118 != 4)
  {
    v119 = *v115;
    v284 = v113;
    v280 = *(v115 + 8);
    sub_1B00DE580(*v115, v116, v118);
    sub_1B00DE580(v284, v373, 4);
    v281 = v284;
    v282 = v373;
    v283 = 4;
    goto LABEL_319;
  }

  v121 = *(v113 + 16);
  if (v121 != *(v117 + 16))
  {
    v291 = *v115;
    v292 = v113;
    v293 = *(v115 + 8);
    sub_1B00DE580(*v115, v116, 4);
    sub_1B00DE580(v292, v373, 4);
    sub_1B00DE5AC(v292, v373, 4);
    v288 = v291;
    v289 = v293;
    goto LABEL_353;
  }

  if (!v121)
  {
    v105 = v113;
    v132 = *v115;
    v122 = *(v115 + 8);
    sub_1B00DE580(*v115, v116, 4);
    v81 = v373;
    sub_1B00DE580(v105, v373, 4);
    sub_1B00DE5AC(v105, v373, 4);
    v123 = v132;
    goto LABEL_159;
  }

  if (v113 == v117)
  {
    v105 = v113;
    v122 = *(v115 + 8);
    sub_1B00DE580(v113, v116, 4);
    sub_1B00DE580(v105, v373, 4);
    sub_1B00DE5AC(v105, v373, 4);
    v123 = v105;
LABEL_159:
    v133 = v122;
    goto LABEL_160;
  }

  v357 = v117 + 32;
  v358 = v113 + 32;
  v360 = *v115;
  v134 = *(v115 + 8);
  sub_1B00DE580(*v115, v116, 4);
  sub_1B00DE580(v367, v373, 4);
  v341 = v134;
  sub_1B00DE580(v360, v134, 4);
  result = sub_1B00DE580(v367, v373, 4);
  v105 = v367;
  v136 = 0;
  v355 = v121;
LABEL_165:
  if (v136 < *(v105 + 16))
  {
    if (v136 >= *(v360 + 16))
    {
      goto LABEL_367;
    }

    v143 = v358 + 24 * v136;
    v44 = *v143;
    v45 = *(v143 + 8);
    v144 = *(v143 + 16);
    v145 = v357 + 24 * v136;
    v46 = *v145;
    v363 = v136;
    v364 = *(v145 + 8);
    LODWORD(v28) = *(v145 + 16);
    if (v144 <= 2)
    {
      if (v144)
      {
        if (v144 == 1)
        {
          if (v28 == 1)
          {
            v146 = *v145;
            sub_1B00DE5AC(v44, v45, 1);
            result = sub_1B00DE5AC(v146, v364, 1);
            if (v44 == v146)
            {
              goto LABEL_164;
            }

            goto LABEL_352;
          }

LABEL_323:
          v294 = v45;
          v295 = v364;
          v296 = v46;
          sub_1B00DE580(v46, v364, v28);
          v297 = v44;
          v298 = v294;
          v299 = 1;
LABEL_329:
          sub_1B00DE5AC(v297, v298, v299);
          v304 = v296;
          v305 = v295;
          v306 = v28;
LABEL_351:
          sub_1B00DE5AC(v304, v305, v306);
          goto LABEL_352;
        }

        if (v28 != 2)
        {
          v302 = v45;
          v295 = *(v145 + 8);
          v296 = *v145;
          sub_1B00DE580(v46, v364, *(v145 + 16));
          v297 = v44;
          v298 = v302;
          v299 = 2;
          goto LABEL_329;
        }

        v160 = *&v44;
        v161 = *v145;
        v162 = v44;
        v163 = *v145;
        sub_1B00DE5AC(v162, v45, 2);
        result = sub_1B00DE5AC(v163, v364, 2);
        if (v160 == v161)
        {
          goto LABEL_164;
        }
      }

      else
      {
        if (*(v145 + 16))
        {
          v303 = v45;
          v295 = *(v145 + 8);
          v296 = *v145;
          sub_1B00DE580(v46, v364, *(v145 + 16));
          v297 = v44;
          v298 = v303;
          v299 = 0;
          goto LABEL_329;
        }

        v150 = v44;
        v151 = v44;
        v152 = *v145;
        sub_1B00DE5AC(v151, v45, 0);
        result = sub_1B00DE5AC(v152, v364, 0);
        if (((v152 ^ v150) & 1) == 0)
        {
          goto LABEL_164;
        }
      }

LABEL_352:
      sub_1B00DE5AC(v367, v373, 4);
      sub_1B00DE5AC(v360, v341, 4);
      sub_1B00DE5AC(v360, v341, 4);
      v288 = v367;
      v289 = v373;
LABEL_353:
      v290 = 4;
LABEL_354:
      sub_1B00DE5AC(v288, v289, v290);
LABEL_355:
      sub_1B00DE5AC(v369, v379, 4);
      sub_1B00DE5AC(v381, v353, 4);
      sub_1B00DE5AC(v381, v353, 4);
      v275 = v369;
      v276 = v379;
LABEL_356:
      v277 = 4;
LABEL_357:
      sub_1B00DE5AC(v275, v276, v277);
LABEL_358:
      sub_1B00DE5AC(v380, v361, 4);
      sub_1B00DE5AC(v23, v362, 4);
      sub_1B00DE5AC(v23, v362, 4);
      v258 = v380;
      v28 = v377;
      v259 = v361;
LABEL_359:
      v260 = 4;
LABEL_360:
      sub_1B00DE5AC(v258, v259, v260);
      goto LABEL_361;
    }

    if (v144 == 3)
    {
      if (v28 != 3)
      {
        v300 = v45;
        v295 = *(v145 + 8);
        v296 = *v145;
        sub_1B00DE580(v46, v364, *(v145 + 16));
        sub_1B00DE580(v44, v300, 3);
        v297 = v44;
        v298 = v300;
        v299 = 3;
        goto LABEL_329;
      }

      if (v44 == v46 && v45 == v364)
      {
        v137 = v44;
        v138 = v44;
        v139 = v45;
        sub_1B00DE580(v138, v45, 3);
        sub_1B00DE580(v137, v139, 3);
        sub_1B00DE5AC(v137, v139, 3);
        v140 = v137;
        v141 = v139;
        v142 = 3;
        goto LABEL_163;
      }

      v154 = v44;
      v155 = v45;
      v156 = *v145;
      LODWORD(v359) = sub_1B014D25C();
      sub_1B00DE580(v156, v364, 3);
      sub_1B00DE580(v154, v155, 3);
      sub_1B00DE5AC(v154, v155, 3);
      v157 = v156;
      v158 = v364;
      v159 = 3;
      goto LABEL_198;
    }

    v356 = v44;
    if (v144 != 4)
    {
      v164 = v45;
      if (v28 != 5)
      {
        v295 = *(v145 + 8);
        v296 = *v145;
        sub_1B00DE580(v46, v364, v28);
        sub_1B00DE580(v356, v164, 5);
        v297 = v356;
        v298 = v164;
        v299 = 5;
        goto LABEL_329;
      }

      v165 = *v145;
      sub_1B00DE580(v46, v364, 5);
      sub_1B00DE580(v356, v164, 5);
      sub_1B00DE580(v165, v364, 5);
      sub_1B00DE580(v356, v164, 5);
      LODWORD(v359) = sub_1B00D5754(v356, v165);
      sub_1B00DE5AC(v356, v164, 5);
      sub_1B00DE5AC(v165, v364, 5);
      sub_1B00DE5AC(v165, v364, 5);
      v157 = v356;
      v158 = v164;
      v159 = 5;
LABEL_198:
      result = sub_1B00DE5AC(v157, v158, v159);
      if (v359)
      {
        goto LABEL_164;
      }

      goto LABEL_352;
    }

    if (v28 != 4)
    {
      v301 = v45;
      v295 = *(v145 + 8);
      v296 = *v145;
      sub_1B00DE580(v46, v364, v28);
      sub_1B00DE580(v44, v301, 4);
      v297 = v44;
      v298 = v301;
      v299 = 4;
      goto LABEL_329;
    }

    v147 = *(v44 + 16);
    if (v147 != *(v46 + 16))
    {
      v307 = v44;
      v308 = v45;
      v309 = *v145;
      sub_1B00DE580(v46, v364, 4);
      sub_1B00DE580(v307, v308, 4);
      sub_1B00DE5AC(v307, v308, 4);
      v304 = v309;
      v305 = v364;
      goto LABEL_350;
    }

    v347 = v45;
    if (v147)
    {
      v148 = v44 == v46;
    }

    else
    {
      v148 = 1;
    }

    if (v148)
    {
      v149 = *v145;
      sub_1B00DE580(v46, v364, 4);
      sub_1B00DE580(v44, v347, 4);
      sub_1B00DE5AC(v44, v347, 4);
      v140 = v149;
      v141 = v364;
      goto LABEL_183;
    }

    v350 = v46 + 32;
    v351 = v44 + 32;
    v166 = *v145;
    sub_1B00DE580(v46, v364, 4);
    sub_1B00DE580(v44, v347, 4);
    v352 = v166;
    sub_1B00DE580(v166, v364, 4);
    result = sub_1B00DE580(v44, v347, 4);
    v167 = 0;
    v349 = v147;
    while (1)
    {
      if (v167 >= *(v44 + 16))
      {
        goto LABEL_368;
      }

      if (v167 >= *(v352 + 16))
      {
        goto LABEL_369;
      }

      v169 = v351 + 24 * v167;
      v79 = *v169;
      v170 = *(v169 + 8);
      v80 = *(v169 + 16);
      v171 = v350 + 24 * v167;
      v172 = *(v171 + 8);
      v359 = *v171;
      LODWORD(v44) = *(v171 + 16);
      v354 = v167;
      if (v80 <= 2)
      {
        if (*(v169 + 16))
        {
          if (v80 == 1)
          {
            if (v44 != 1)
            {
              goto LABEL_335;
            }

            sub_1B00DE5AC(v79, v170, 1);
            result = sub_1B00DE5AC(v359, v172, 1);
            v168 = v349;
            if (v79 != v359)
            {
              goto LABEL_349;
            }
          }

          else
          {
            if (v44 != 2)
            {
              goto LABEL_335;
            }

            sub_1B00DE5AC(v79, v170, 2);
            result = sub_1B00DE5AC(v359, v172, 2);
            v168 = v349;
            if (*&v79 != *&v359)
            {
              goto LABEL_349;
            }
          }
        }

        else
        {
          if (*(v171 + 16))
          {
            goto LABEL_335;
          }

          sub_1B00DE5AC(v79, v170, 0);
          result = sub_1B00DE5AC(v359, v172, 0);
          v168 = v349;
          if ((v359 ^ v79))
          {
            goto LABEL_349;
          }
        }

        goto LABEL_279;
      }

      if (v80 == 3)
      {
        if (v44 != 3)
        {
          goto LABEL_334;
        }

        if (v79 != v359 || v170 != v172)
        {
          v177 = *(v169 + 8);
          LODWORD(v348) = sub_1B014D25C();
          sub_1B00DE580(v359, v172, 3);
          sub_1B00DE580(v79, v177, 3);
          sub_1B00DE5AC(v79, v177, 3);
          v178 = v359;
          v179 = v172;
          v180 = 3;
          goto LABEL_229;
        }

        v335 = 3;
        v181 = *(v169 + 8);
        sub_1B00DE580(v79, v170, 3);
        sub_1B00DE580(v79, v181, 3);
        v182 = v79;
        v183 = v181;
        v184 = 3;
      }

      else
      {
        v346 = *(v171 + 8);
        if (v80 != 4)
        {
          v62 = *(v169 + 8);
          if (v44 != 5)
          {
            goto LABEL_333;
          }

          sub_1B00DE580(v359, v172, 5);
          sub_1B00DE580(v79, *&v62, 5);
          sub_1B00DE580(v359, v172, 5);
          sub_1B00DE580(v79, *&v62, 5);
          LODWORD(v348) = sub_1B00D5754(v79, v359);
          sub_1B00DE5AC(v79, *&v62, 5);
          sub_1B00DE5AC(v359, v172, 5);
          sub_1B00DE5AC(v359, v172, 5);
          v178 = v79;
          v179 = *&v62;
          v180 = 5;
LABEL_229:
          result = sub_1B00DE5AC(v178, v179, v180);
          v168 = v349;
          if ((v348 & 1) == 0)
          {
            goto LABEL_349;
          }

          goto LABEL_279;
        }

        if (v44 != 4)
        {
          goto LABEL_334;
        }

        v173 = *(v79 + 16);
        v333 = v170;
        if (v173 != *(v359 + 16))
        {
          v314 = v170;
          sub_1B00DE580(v359, v172, 4);
          sub_1B00DE580(v79, v314, 4);
          sub_1B00DE580(v359, v172, 4);
          sub_1B00DE580(v79, v314, 4);
          goto LABEL_347;
        }

        v335 = 4;
        if (v173)
        {
          v174 = *&v79;
          if (v79 != v359)
          {
            v337 = v79 + 32;
            v336 = *(v79 + 16);
            sub_1B00DE580(v359, v172, 4);
            sub_1B00DE580(v79, v333, 4);
            sub_1B00DE580(v359, v172, 4);
            result = sub_1B00DE580(v79, v333, 4);
            v175 = 0;
            v331 = v79;
            while (1)
            {
              if (v175 >= *(v79 + 16))
              {
                goto LABEL_370;
              }

              if (v175 >= *(v359 + 16))
              {
                goto LABEL_371;
              }

              v187 = v337 + 24 * v175;
              v188 = *v187;
              v107 = *(v187 + 8);
              v109 = *(v187 + 16);
              v189 = v359 + 32 + 24 * v175;
              v81 = *v189;
              v108 = *(v189 + 8);
              LODWORD(v105) = *(v189 + 16);
              if (v109 <= 2)
              {
                v190 = *v189;
                v191 = *(v189 + 8);
                if (v109)
                {
                  if (v109 == 1)
                  {
                    if (v105 != 1)
                    {
                      goto LABEL_343;
                    }

                    v348 = v188;
                    sub_1B00DE5AC(v188, v107, 1);
                    result = sub_1B00DE5AC(v190, v191, 1);
                    v31 = v348 == v190;
                    v79 = v331;
                    if (!v31)
                    {
                      goto LABEL_347;
                    }
                  }

                  else
                  {
                    if (v105 != 2)
                    {
                      goto LABEL_343;
                    }

                    v185 = *&v188;
                    v186 = *v189;
                    sub_1B00DE5AC(v188, v107, 2);
                    result = sub_1B00DE5AC(v190, v191, 2);
                    v79 = v331;
                    if (v185 != v186)
                    {
                      goto LABEL_347;
                    }
                  }
                }

                else
                {
                  if (*(v189 + 16))
                  {
                    goto LABEL_343;
                  }

                  v348 = v188;
                  sub_1B00DE5AC(v188, v107, 0);
                  result = sub_1B00DE5AC(v190, v191, 0);
                  v211 = v190 ^ v348;
                  v79 = v331;
                  if (v211)
                  {
                    goto LABEL_347;
                  }
                }

                goto LABEL_273;
              }

              v348 = v188;
              v334 = v175;
              if (v109 == 3)
              {
                if (v105 != 3)
                {
                  goto LABEL_339;
                }

                if (v188 != v81 || v107 != v108)
                {
                  v339 = v107;
                  v213 = *(v189 + 8);
                  v214 = v188;
                  v344 = sub_1B014D25C();
                  sub_1B00DE580(v81, v213, 3);
                  sub_1B00DE580(v214, v339, 3);
                  sub_1B00DE5AC(v214, v339, 3);
                  v215 = v81;
                  v216 = v213;
                  v217 = 3;
LABEL_266:
                  result = sub_1B00DE5AC(v215, v216, v217);
                  v175 = v334;
                  if ((v344 & 1) == 0)
                  {
                    goto LABEL_347;
                  }

                  goto LABEL_273;
                }

                v329 = 3;
                v209 = v107;
                v202 = v188;
                sub_1B00DE580(v188, v107, 3);
                sub_1B00DE580(v202, v209, 3);
                v220 = v202;
                v221 = v209;
                v222 = 3;
              }

              else
              {
                v330 = *(v189 + 8);
                v338 = v107;
                if (v109 != 4)
                {
                  if (v105 != 5)
                  {
                    v315 = v109;
                    v190 = *v189;
                    v191 = *(v189 + 8);
                    v316 = v23;
                    goto LABEL_342;
                  }

                  v218 = *v189;
                  v219 = *(v189 + 8);
                  sub_1B00DE580(*v189, v108, 5);
                  sub_1B00DE580(v348, v338, 5);
                  sub_1B00DE580(v218, v219, 5);
                  sub_1B00DE580(v348, v338, 5);
                  v344 = sub_1B00D5754(v348, v218);
                  sub_1B00DE5AC(v348, v338, 5);
                  sub_1B00DE5AC(v218, v330, 5);
                  sub_1B00DE5AC(v218, v330, 5);
                  v215 = v348;
                  v216 = v338;
                  v217 = 5;
                  goto LABEL_266;
                }

                if (v105 != 4)
                {
                  v315 = v109;
                  v190 = *v189;
                  v191 = *(v189 + 8);
                  v316 = v23;
                  goto LABEL_342;
                }

                v192 = *(v188 + 16);
                if (v192 != *(v81 + 16))
                {
                  v326 = v107;
                  v327 = v188;
                  v328 = *(v189 + 8);
                  sub_1B00DE580(v81, v108, 4);
                  sub_1B00DE580(v327, v326, 4);
                  v340 = v81;
                  sub_1B00DE580(v81, v328, 4);
                  sub_1B00DE580(v327, v326, 4);
LABEL_345:
                  sub_1B00DE5AC(v348, v338, 4);
                  sub_1B00DE5AC(v340, v330, 4);
                  sub_1B00DE5AC(v340, v330, 4);
                  v323 = v348;
                  v324 = v338;
                  v325 = 4;
                  goto LABEL_346;
                }

                v329 = 4;
                if (v192)
                {
                  v193 = v188;
                  v194 = v188;
                  if (v188 != v81)
                  {
                    v332 = *(v188 + 16);
                    v195 = v188;
                    v196 = *v189;
                    v197 = *(v189 + 8);
                    sub_1B00DE580(*v189, v108, 4);
                    sub_1B00DE580(v195, v338, 4);
                    sub_1B00DE580(v196, v197, 4);
                    result = sub_1B00DE580(v195, v338, 4);
                    v198 = v196;
                    v199 = 0;
                    v200 = (v196 + 48);
                    v201 = (v195 + 48);
                    v202 = v195;
                    v340 = v196;
                    while (v199 < *(v202 + 16))
                    {
                      result = *(v201 - 2);
                      v203 = *(v201 - 1);
                      v342 = v199;
                      v343 = v201;
                      v204 = *v201;
                      v392 = result;
                      v393 = v203;
                      v394 = v204;
                      if (v199 >= *(v198 + 16))
                      {
                        goto LABEL_373;
                      }

                      v206 = *(v200 - 1);
                      v389 = *(v200 - 2);
                      v205 = v389;
                      v390 = v206;
                      v391 = *v200;
                      v207 = v391;
                      sub_1B00DE580(result, v203, v204);
                      sub_1B00DE580(v205, v206, v207);
                      v208 = static FBKSInteraction.StructuredValue.== infix(_:_:)(&v392, &v389);
                      sub_1B00DE5AC(v389, v390, v391);
                      result = sub_1B00DE5AC(v392, v393, v394);
                      if ((v208 & 1) == 0)
                      {
                        goto LABEL_345;
                      }

                      v199 = v342 + 1;
                      v200 += 24;
                      v201 = v343 + 24;
                      v202 = v348;
                      v198 = v340;
                      if (v332 == v342 + 1)
                      {
                        v209 = v338;
                        v210 = v340;
                        v79 = v331;
                        goto LABEL_271;
                      }
                    }

                    goto LABEL_372;
                  }
                }

                else
                {
                  v193 = *v189;
                  v194 = v188;
                }

                v223 = v193;
                v345 = v193;
                v224 = *(v189 + 8);
                sub_1B00DE580(v193, v108, 4);
                v225 = v194;
                v209 = v338;
                sub_1B00DE580(v225, v338, 4);
                sub_1B00DE580(v223, v224, 4);
                v202 = v348;
                sub_1B00DE580(v348, v338, 4);
                v210 = v345;
LABEL_271:
                sub_1B00DE5AC(v202, v209, 4);
                sub_1B00DE5AC(v210, v330, 4);
                v220 = v210;
                v221 = v330;
                v222 = 4;
              }

              sub_1B00DE5AC(v220, v221, v222);
              result = sub_1B00DE5AC(v202, v209, v329);
              v175 = v334;
LABEL_273:
              if (++v175 == v336)
              {
                v181 = v333;
                v174 = *&v359;
                v172 = v346;
                goto LABEL_277;
              }
            }
          }
        }

        else
        {
          v174 = *v171;
        }

        sub_1B00DE580(*&v174, v172, 4);
        v181 = v333;
        sub_1B00DE580(v79, v333, 4);
        sub_1B00DE580(*&v174, v172, 4);
        sub_1B00DE580(v79, v333, 4);
LABEL_277:
        sub_1B00DE5AC(v79, v181, 4);
        sub_1B00DE5AC(*&v174, v172, 4);
        v182 = *&v174;
        v183 = v172;
        v184 = 4;
      }

      sub_1B00DE5AC(v182, v183, v184);
      result = sub_1B00DE5AC(v79, v181, v335);
      v168 = v349;
LABEL_279:
      v167 = v354 + 1;
      v44 = v356;
      if (v354 + 1 == v168)
      {
        sub_1B00DE5AC(v356, v347, 4);
        sub_1B00DE5AC(v352, v364, 4);
        sub_1B00DE5AC(v352, v364, 4);
        v140 = v356;
        v141 = v347;
LABEL_183:
        v142 = 4;
LABEL_163:
        result = sub_1B00DE5AC(v140, v141, v142);
LABEL_164:
        v136 = v363 + 1;
        v105 = v367;
        if (v363 + 1 != v355)
        {
          goto LABEL_165;
        }

        v81 = v373;
        sub_1B00DE5AC(v367, v373, 4);
        sub_1B00DE5AC(v360, v341, 4);
        sub_1B00DE5AC(v360, v341, 4);
        v123 = v367;
        v133 = v373;
LABEL_160:
        sub_1B00DE5AC(v123, v133, 4);
        v106 = v365;
LABEL_126:
        v110 = v372 + 1;
        if (v372 + 1 != v106)
        {
          goto LABEL_127;
        }

        v62 = *&v379;
        sub_1B00DE5AC(v369, v379, 4);
        v79 = v353;
        sub_1B00DE5AC(v381, v353, 4);
        sub_1B00DE5AC(v381, v353, 4);
        v92 = v369;
        v103 = v379;
LABEL_123:
        sub_1B00DE5AC(v92, v103, 4);
        v81 = v370;
        goto LABEL_89;
      }
    }
  }

  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
  return result;
}

uint64_t sub_1B00D80AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_14:
    v14 = v10 | (v4 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v3 + 56) + 8 * v14);
    sub_1B00D1FFC(*v15, v17);

    if (!v18)
    {
      return 1;
    }

    v29 = v11;
    v19 = v3;
    v20 = sub_1B013E148(v16, v17);
    v22 = v21;
    result = sub_1B00D2010(v16, v17);
    if ((v22 & 1) == 0 || (v23 = *(*(a2 + 56) + 8 * v20), v24 = *(v23 + 16), v24 != *(v18 + 16)))
    {
LABEL_29:

      return 0;
    }

    if (v24)
    {
      v25 = v23 == v18;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = (v23 + 40);
      v27 = (v18 + 40);
      while (v24)
      {
        result = *(v26 - 1);
        if (result != *(v27 - 1) || *v26 != *v27)
        {
          result = sub_1B014D25C();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v26 += 2;
        v27 += 2;
        if (!--v24)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    v3 = v19;
    v8 = v29;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t _s15FeedbackService0A12FeatureErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

uint64_t sub_1B00D82C0()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

uint64_t sub_1B00D8304()
{
  if (*v0)
  {
    result = 0x73726577736E61;
  }

  else
  {
    result = 0x6B63616264656566;
  }

  *v0;
  return result;
}

uint64_t sub_1B00D8344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B63616264656566 && a2 == 0xEA00000000004449;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726577736E61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B00D8428(uint64_t a1)
{
  v2 = sub_1B00DC364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D8464(uint64_t a1)
{
  v2 = sub_1B00DC364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSEvaluation.FormResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BF8, &qword_1B014F3B8);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DC364();
  sub_1B014D35C();
  v17 = 0;
  sub_1B014D1DC();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC3B8();
    sub_1B014D21C();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t FBKSEvaluation.FormResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C10, &qword_1B014F3D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DC364();
  sub_1B014D34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v11 = sub_1B014D13C();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
  v18 = 1;
  sub_1B00DC504();
  sub_1B014D17C();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B00D889C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B014D25C() & 1) == 0)
  {
    return 0;
  }

  return sub_1B00D80AC(v2, v3);
}

uint64_t FBKSEvaluation.formResponse.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse);
  v3 = *(v1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 8);
  v4 = *(v1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1B00DB7AC(v2, v3);
}

void sub_1B00D895C(void *a1, void (*a2)(void *, uint64_t))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1, 1);
  }

  else
  {
    sub_1B00DE6C8();
    v15 = swift_allocError();
    a2(v15, 1);
  }
}

void sub_1B00D8B40(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v13 = a3;
    a4(a3, 1);
  }

  else if (a2 >> 60 == 15)
  {
    a4(0, 0);
  }

  else
  {
    v8 = sub_1B014C82C();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DE8F8();
    v11 = a1;
    sub_1B014C80C();

    v12 = v14;
    a4(v14, 0);
    sub_1B00DE9AC(v11, a2);
  }
}

uint64_t static FBKSEvaluation.fetch(evaluationID:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00D8D10, 0, 0);
}

uint64_t sub_1B00D8D10()
{
  v15 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000014, 0x80000001B015C140, &v14);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[2].i64[1] = &type metadata for FeedbackFeatureFlags;
  v0[3].i64[0] = sub_1B00DC988();
  v0[1].i8[0] = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0[1].i64);
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[5].i64[0] = v7;
    v7[1] = vextq_s8(v0[4], v0[4], 8uLL);
    v8 = *(MEMORY[0x1E69E8920] + 4);
    v9 = swift_task_alloc();
    v0[5].i64[1] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    *v9 = v0;
    v9[1] = sub_1B00D8FBC;

    return MEMORY[0x1EEE6DE38](&v0[3].u64[1], 0, 0, 0xD000000000000014, 0x80000001B015C140, sub_1B00DCA30, v7, v10);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0->i64[1];

    return v12();
  }
}

uint64_t sub_1B00D8FBC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1B00D90F4;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B00D90D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B00D90F4()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B00D9158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  _s15FeedbackService14FBKSEvaluationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(a3, sub_1B00DE808, v11);
}

uint64_t sub_1B00D92A4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00);
    return sub_1B014CE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00);
    return sub_1B014CE8C();
  }
}

id FBKSEvaluation.init(subject:action:formResponse:)(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = *a2;
  v10 = *a3;
  v6 = *(a3 + 2);
  sub_1B00D52E0(a1, &v3[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v3[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v5;
  v7 = &v3[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v7 = v10;
  *(v7 + 2) = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for FBKSEvaluation(0);
  v8 = objc_msgSendSuper2(&v11, sel_init);
  sub_1B00DB7F0(a1);
  return v8;
}

uint64_t sub_1B00D93C4(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v50 - v7;
  v8 = type metadata accessor for FBKSEvaluation.Subject(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v12 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v14 = (&v50 - v13);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v15 = sub_1B014CB5C();
  __swift_project_value_buffer(v15, qword_1EDAE7828);
  v16 = sub_1B014CB3C();
  v17 = sub_1B014CF6C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1B00E6C2C(0x5F2864726F636572, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v16, v17, "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1B271F750](v20, -1, -1);
    v21 = v19;
    a2 = v18;
    MEMORY[0x1B271F750](v21, -1, -1);
  }

  v55 = &type metadata for FeedbackFeatureFlags;
  v56 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v22 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v22)
  {
    sub_1B00D52E0(v2 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = a2;
      v23 = *v11;
      v24 = sub_1B014CB3C();
      v25 = sub_1B014CF3C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1B00C4000, v24, v25, "Nilling out content properties on interaction", v26, 2u);
        MEMORY[0x1B271F750](v26, -1, -1);
      }

      v27 = type metadata accessor for FBKSInteraction.Content(0);
      v28 = *(*(v27 - 8) + 56);
      v29 = v51;
      v28(v51, 1, 1, v27);
      v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
      swift_beginAccess();
      sub_1B00DE71C(v29, &v23[v30], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v28(v29, 1, 1, v27);
      v31 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
      swift_beginAccess();
      sub_1B00DE71C(v29, &v23[v31], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v32 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      v33 = *&v23[v32];
      *&v23[v32] = MEMORY[0x1E69E7CC0];

      a2 = v50;
    }

    else
    {
      sub_1B00DB7F0(v11);
    }

    v36 = sub_1B014C88C();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = v3;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00DC264(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation);
    v39 = v3;
    v40 = sub_1B014C86C();
    v42 = v41;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v44 = swift_allocObject();
    *(v44 + 16) = v53;
    *(v44 + 24) = a2;

    v45 = sub_1B00FA9AC(sub_1B00DCA38, v44);

    if (v45)
    {
      v46 = sub_1B014CA7C();
      v47 = swift_allocObject();
      v47[2] = v53;
      v47[3] = a2;
      v47[4] = v39;
      v56 = sub_1B00DCA40;
      v57 = v47;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v55 = &block_descriptor_0;
      v48 = _Block_copy(aBlock);

      v49 = v39;

      [v45 recordEvaluationWithEvaluationJSON:v46 completion:v48];
      _Block_release(v48);
      swift_unknownObjectRelease();
    }

    return sub_1B00D2024(v40, v42);
  }

  else
  {
    sub_1B00DC9DC();
    v34 = swift_allocError();
    *v35 = 0;
    *v14 = v34;
    swift_storeEnumTagMultiPayload();
    v53(v14);
    return sub_1B00DE9C0(v14, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

uint64_t sub_1B00D9AD8(void *a1, void (*a2)(uint64_t *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - v6);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v8 = sub_1B014CB5C();
  __swift_project_value_buffer(v8, qword_1EDAE7828);
  v9 = a1;
  v10 = sub_1B014CB3C();
  v11 = sub_1B014CF4C();

  v12 = os_log_type_enabled(v10, v11);
  v23 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = a1;
    v25 = v22;
    *v13 = 136315138;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v15 = sub_1B014CC6C();
    v17 = sub_1B00E6C2C(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B00C4000, v10, v11, "Failed to connect to centralized feedback daemon: %s", v13, 0xCu);
    v18 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B271F750](v18, -1, -1);
    MEMORY[0x1B271F750](v13, -1, -1);
  }

  if (a1)
  {
    v19 = v23;
    *v7 = v23;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
  }

  else
  {
    sub_1B00DE6C8();
    *v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  a2(v7);
  return sub_1B00DE9C0(v7, &qword_1EB6C3C30, &qword_1B014F3F0);
}

uint64_t sub_1B00D9D4C(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v49 = a1;
  v50 = a3;
  v51 = a4;
  v6 = type metadata accessor for FBKSEvaluation.Subject(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v46 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v46 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v46 - v22;
  v24 = sub_1B014CB1C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    v29 = a2;
LABEL_5:
    v50(v13);
    return sub_1B00DE9C0(v13, &qword_1EB6C3C30, &qword_1B014F3F0);
  }

  v46[0] = v18;
  v46[1] = v10;
  v47 = v28;
  sub_1B00DE660(v49, v23, &qword_1EB6C3B98, &qword_1B014F360);
  v30 = *(v25 + 48);
  if (v30(v23, 1, v24) == 1)
  {
    sub_1B00DE9C0(v23, &qword_1EB6C3B98, &qword_1B014F360);
    sub_1B00DE6C8();
    *v13 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  (*(v25 + 32))(v47, v23, v24);
  sub_1B00D52E0(v48 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v9);
  v32 = v13;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v9;
    v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
    swift_beginAccess();
    sub_1B00DE660(&v33[v34], v21, &qword_1EB6C3B98, &qword_1B014F360);
    v35 = v30(v21, 1, v24);
    sub_1B00DE9C0(v21, &qword_1EB6C3B98, &qword_1B014F360);
    if (v35 == 1)
    {
      v36 = v46[0];
      (*(v25 + 16))(v46[0], v47, v24);
      (*(v25 + 56))(v36, 0, 1, v24);
      swift_beginAccess();
      sub_1B00DE71C(v36, &v33[v34], &qword_1EB6C3B98, &qword_1B014F360);
      swift_endAccess();
    }

    v37 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
    swift_beginAccess();
    v33[v37] = 0;
    v38 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
    swift_beginAccess();
    v39 = v24;
    if (v33[v38] == 1)
    {
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v40 = sub_1B014CB5C();
      __swift_project_value_buffer(v40, qword_1EDAE7828);
      v41 = sub_1B014CB3C();
      v42 = sub_1B014CF6C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1B00C4000, v41, v42, "Resetting sentPresented after successful evaluation", v43, 2u);
        MEMORY[0x1B271F750](v43, -1, -1);
      }

      v33[v38] = 0;
    }
  }

  else
  {
    v39 = v24;
    sub_1B00DB7F0(v9);
  }

  v44 = v50;
  v45 = v47;
  (*(v25 + 16))(v32, v47, v39);
  swift_storeEnumTagMultiPayload();
  v44(v32);
  sub_1B00DE9C0(v32, &qword_1EB6C3C30, &qword_1B014F3F0);
  return (*(v25 + 8))(v45, v39);
}

uint64_t sub_1B00DA300(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1B014CB0C();
    v12 = sub_1B014CB1C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1B014CB1C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_1B00DE9C0(v9, &qword_1EB6C3B98, &qword_1B014F360);
}

uint64_t sub_1B00DA454(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00DA474, 0, 0);
}

uint64_t sub_1B00DA474()
{
  v17 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x292864726F636572, 0xE800000000000000, &v16);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    v7 = v0[8];
    v8 = swift_task_alloc();
    v0[9] = v8;
    *(v8 + 16) = v7;
    v9 = *(MEMORY[0x1E69E8920] + 4);
    v10 = swift_task_alloc();
    v0[10] = v10;
    v11 = sub_1B014CB1C();
    *v10 = v0;
    v10[1] = sub_1B00DA708;
    v12 = v0[7];

    return MEMORY[0x1EEE6DE38](v12, 0, 0, 0x292864726F636572, 0xE800000000000000, sub_1B00DCA64, v8, v11);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B00DA708()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00DA844, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B00DA844()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B00DA8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1B00D93C4(sub_1B00DE5E4, v8);
}

uint64_t sub_1B00DA9F0(uint64_t a1)
{
  v2 = sub_1B014CB1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v15 - v12);
  sub_1B00DE660(a1, v15 - v12, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15[1] = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    return sub_1B014CE7C();
  }

  else
  {
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    sub_1B014CE8C();
    return (*(v3 + 8))(v9, v2);
  }
}

id FBKSEvaluation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B00DAC90()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x707365526D726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A627573;
  }
}

uint64_t sub_1B00DACF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B00DE414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B00DAD24(uint64_t a1)
{
  v2 = sub_1B00DCA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00DAD60(uint64_t a1)
{
  v2 = sub_1B00DCA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id FBKSEvaluation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSEvaluation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B00DAE28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C40, &qword_1B014F3F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DCA6C();
  sub_1B014D35C();
  LOBYTE(v14) = 0;
  type metadata accessor for FBKSEvaluation.Subject(0);
  sub_1B00DC264(&qword_1EB6C3C50, type metadata accessor for FBKSEvaluation.Subject);
  sub_1B014D21C();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action);
    v17 = 1;
    sub_1B00DCAC0();
    sub_1B014D21C();
    v11 = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 8);
    v12 = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 16);
    v14 = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse);
    v15 = v11;
    v16 = v12;
    v17 = 2;
    sub_1B00DB7AC(v14, v11);
    sub_1B00DCB14();
    sub_1B014D1CC();
    sub_1B00DCB68(v14, v15);
  }

  return (*(v6 + 8))(v9, v5);
}

void *FBKSEvaluation.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for FBKSEvaluation.Subject(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C68, &qword_1B014F400);
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DCA6C();
  sub_1B014D34C();
  if (v1)
  {
    v21 = v23;
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for FBKSEvaluation(0);
    v14 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    LOBYTE(v25) = 0;
    sub_1B00DC264(&qword_1EB6C3C70, type metadata accessor for FBKSEvaluation.Subject);
    v13 = v22;
    sub_1B014D17C();
    v17 = v23;
    sub_1B00DC300(v6, v23 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject);
    v27 = 1;
    sub_1B00DCBAC();
    sub_1B014D17C();
    v17[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v25;
    v27 = 2;
    sub_1B00DCC00();
    sub_1B014D12C();
    v18 = v26;
    v19 = &v17[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
    *v19 = v25;
    *(v19 + 2) = v18;
    v20 = type metadata accessor for FBKSEvaluation(0);
    v24.receiver = v17;
    v24.super_class = v20;
    v21 = objc_msgSendSuper2(&v24, sel_init);
    (*(v12 + 8))(v10, v13);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v21;
}

void *sub_1B00DB418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for FBKSEvaluation(0));
  result = FBKSEvaluation.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _s15FeedbackService14FBKSEvaluationC7SubjectO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B014CB1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FBKSEvaluation.Subject(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D58, &qword_1B014FE08);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_1B00D52E0(a1, &v27 - v19);
  sub_1B00D52E0(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B00D52E0(v20, v13);
    v22 = *v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *&v20[v21];
      sub_1B00DC12C();
      v24 = sub_1B014CF9C();

LABEL_9:
      sub_1B00DB7F0(v20);
      return v24 & 1;
    }
  }

  else
  {
    sub_1B00D52E0(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v8, &v20[v21], v4);
      v24 = sub_1B014CAFC();
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v15, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v15, v4);
  }

  sub_1B00DE9C0(v20, &qword_1EB6C3D58, &qword_1B014FE08);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1B00DB774(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B00DB7AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B00DB7F0(uint64_t a1)
{
  v2 = type metadata accessor for FBKSEvaluation.Subject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B00DB84C(void *a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4)
{
  v66 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64[0] = v64 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v67);
  v64[1] = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v64[2] = v64 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (v64 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v64 - v18);
  v20 = type metadata accessor for FBKSEvaluation.Subject(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  v68 = a3;
  v69 = a2;
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v25 = qword_1EDAE7070;

  v65 = a4;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1B014CB5C();
  __swift_project_value_buffer(v26, qword_1EDAE7828);
  v27 = sub_1B014CB3C();
  v28 = sub_1B014CF6C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v24;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_1B00E6C2C(0x5F2864726F636572, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v27, v28, "%{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B271F750](v31, -1, -1);
    v32 = v30;
    v24 = v29;
    MEMORY[0x1B271F750](v32, -1, -1);
  }

  v71 = &type metadata for FeedbackFeatureFlags;
  v72 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v33 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v33)
  {
    v34 = v66;
    sub_1B00D52E0(v66 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v24;
      v36 = *v23;
      v37 = sub_1B014CB3C();
      v38 = sub_1B014CF3C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1B00C4000, v37, v38, "Nilling out content properties on interaction", v39, 2u);
        MEMORY[0x1B271F750](v39, -1, -1);
      }

      v40 = type metadata accessor for FBKSInteraction.Content(0);
      v41 = *(*(v40 - 8) + 56);
      v42 = v64[0];
      v41(v64[0], 1, 1, v40);
      v43 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
      swift_beginAccess();
      sub_1B00DE71C(v42, &v36[v43], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v41(v42, 1, 1, v40);
      v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
      swift_beginAccess();
      sub_1B00DE71C(v42, &v36[v44], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v45 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      v46 = *&v36[v45];
      *&v36[v45] = MEMORY[0x1E69E7CC0];

      v24 = v35;
    }

    else
    {
      sub_1B00DB7F0(v23);
    }

    v51 = sub_1B014C88C();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = v34;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00DC264(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation);
    v54 = sub_1B014C86C();
    v56 = v55;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v57 = swift_allocObject();
    *(v57 + 16) = sub_1B00DEA20;
    *(v57 + 24) = v24;

    v58 = sub_1B00FA9AC(sub_1B00DEAD4, v57);

    if (v58)
    {
      v59 = sub_1B014CA7C();
      v60 = swift_allocObject();
      v60[2] = sub_1B00DEA20;
      v60[3] = v24;
      v60[4] = v34;
      v72 = sub_1B00DEA90;
      v73 = v60;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v71 = &block_descriptor_104;
      v61 = _Block_copy(aBlock);

      v62 = v34;

      [v58 recordEvaluationWithEvaluationJSON:v59 completion:v61];
      _Block_release(v61);
      swift_unknownObjectRelease();
    }

    sub_1B00D2024(v54, v56);
  }

  else
  {
    sub_1B00DC9DC();
    v47 = swift_allocError();
    *v48 = 0;
    *v19 = v47;
    swift_storeEnumTagMultiPayload();
    sub_1B00DE660(v19, v17, &qword_1EB6C3C30, &qword_1B014F3F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = *v17;
      v50 = *v17;
      v69(v49, 1);
    }

    else
    {
      sub_1B00DE9C0(v17, &qword_1EB6C3C30, &qword_1B014F3F0);
      v69(v65, 0);
    }

    sub_1B00DE9C0(v19, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

unint64_t sub_1B00DC12C()
{
  result = qword_1EDAE6F50;
  if (!qword_1EDAE6F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAE6F50);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B00DC1BC()
{
  result = qword_1EB6C3BB8;
  if (!qword_1EB6C3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3BB8);
  }

  return result;
}

unint64_t sub_1B00DC210()
{
  result = qword_1EB6C3BC0;
  if (!qword_1EB6C3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3BC0);
  }

  return result;
}

uint64_t sub_1B00DC264(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B00DC2AC()
{
  result = qword_1EB6C3BC8;
  if (!qword_1EB6C3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3BC8);
  }

  return result;
}

uint64_t sub_1B00DC300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B00DC364()
{
  result = qword_1EB6C3C00;
  if (!qword_1EB6C3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C00);
  }

  return result;
}

unint64_t sub_1B00DC3B8()
{
  result = qword_1EDAE7068;
  if (!qword_1EDAE7068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC4B0();
    sub_1B00DC608(&qword_1EDAE7048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7068);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B00DC4B0()
{
  result = qword_1EDAE7078;
  if (!qword_1EDAE7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7078);
  }

  return result;
}

unint64_t sub_1B00DC504()
{
  result = qword_1EDAE6B10;
  if (!qword_1EDAE6B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC5B4();
    sub_1B00DC608(&qword_1EDAE6AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B10);
  }

  return result;
}

unint64_t sub_1B00DC5B4()
{
  result = qword_1EDAE6B18;
  if (!qword_1EDAE6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B18);
  }

  return result;
}

uint64_t sub_1B00DC608(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3B80, qword_1B0151250);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void _s15FeedbackService14FBKSEvaluationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v5 = sub_1B014CB5C();
  __swift_project_value_buffer(v5, qword_1EDAE7828);
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0xD00000000000001FLL, 0x80000001B015C230, v18);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v19 = &type metadata for FeedbackFeatureFlags;
  v20 = sub_1B00DC988();
  LOBYTE(v18[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v10)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_1B00FA9AC(sub_1B00DE894, v11);

    if (v12)
    {
      v13 = sub_1B014CAEC();
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v20 = sub_1B00DE89C;
      v21 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B0145D1C;
      v19 = &block_descriptor_90;
      v15 = _Block_copy(v18);

      [v12 fetchEvaluationWithEvaluationID:v13 completion:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a2(v16, 1);
  }
}

unint64_t sub_1B00DC988()
{
  result = qword_1EDAE71F8;
  if (!qword_1EDAE71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71F8);
  }

  return result;
}

unint64_t sub_1B00DC9DC()
{
  result = qword_1EB6C3C18;
  if (!qword_1EB6C3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C18);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B00DCA6C()
{
  result = qword_1EB6C3C48;
  if (!qword_1EB6C3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C48);
  }

  return result;
}

unint64_t sub_1B00DCAC0()
{
  result = qword_1EB6C3C58;
  if (!qword_1EB6C3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C58);
  }

  return result;
}

unint64_t sub_1B00DCB14()
{
  result = qword_1EB6C3C60;
  if (!qword_1EB6C3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C60);
  }

  return result;
}

uint64_t sub_1B00DCB68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B00DCBAC()
{
  result = qword_1EB6C3C78;
  if (!qword_1EB6C3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C78);
  }

  return result;
}

unint64_t sub_1B00DCC00()
{
  result = qword_1EB6C3C80;
  if (!qword_1EB6C3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C80);
  }

  return result;
}

unint64_t sub_1B00DCC58()
{
  result = qword_1EB6C3C88;
  if (!qword_1EB6C3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C88);
  }

  return result;
}

unint64_t sub_1B00DCCB0()
{
  result = qword_1EB6C3C90;
  if (!qword_1EB6C3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C90);
  }

  return result;
}

unint64_t sub_1B00DCD08()
{
  result = qword_1EB6C3C98;
  if (!qword_1EB6C3C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3CA0, &qword_1B014F668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C98);
  }

  return result;
}

uint64_t sub_1B00DCD74()
{
  result = type metadata accessor for FBKSEvaluation.Subject(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of FBKSEvaluation.record()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B00DCFAC;

  return v8(a1);
}

uint64_t sub_1B00DCFAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B00DD180()
{
  result = sub_1B014CB1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FBKSInteraction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSEvaluation.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSEvaluation.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_1B00DD364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B00DD3AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSEvaluation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSEvaluation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSRemoteEvaluationResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSRemoteEvaluationResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSAdmin(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FBKSAdmin(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1B00DD79C()
{
  result = qword_1EB6C3CA8;
  if (!qword_1EB6C3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CA8);
  }

  return result;
}

unint64_t sub_1B00DD7F4()
{
  result = qword_1EB6C3CB0;
  if (!qword_1EB6C3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CB0);
  }

  return result;
}

unint64_t sub_1B00DD84C()
{
  result = qword_1EB6C3CB8;
  if (!qword_1EB6C3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CB8);
  }

  return result;
}

unint64_t sub_1B00DD8A4()
{
  result = qword_1EB6C3CC0;
  if (!qword_1EB6C3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CC0);
  }

  return result;
}

unint64_t sub_1B00DD8FC()
{
  result = qword_1EB6C3CC8;
  if (!qword_1EB6C3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CC8);
  }

  return result;
}

unint64_t sub_1B00DD954()
{
  result = qword_1EB6C3CD0;
  if (!qword_1EB6C3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CD0);
  }

  return result;
}

unint64_t sub_1B00DD9AC()
{
  result = qword_1EB6C3CD8;
  if (!qword_1EB6C3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CD8);
  }

  return result;
}

unint64_t sub_1B00DDA04()
{
  result = qword_1EB6C3CE0;
  if (!qword_1EB6C3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CE0);
  }

  return result;
}

unint64_t sub_1B00DDA5C()
{
  result = qword_1EB6C3CE8;
  if (!qword_1EB6C3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CE8);
  }

  return result;
}

unint64_t sub_1B00DDAB4()
{
  result = qword_1EB6C3CF0;
  if (!qword_1EB6C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CF0);
  }

  return result;
}

unint64_t sub_1B00DDB0C()
{
  result = qword_1EB6C3CF8;
  if (!qword_1EB6C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CF8);
  }

  return result;
}

unint64_t sub_1B00DDB64()
{
  result = qword_1EB6C3D00;
  if (!qword_1EB6C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D00);
  }

  return result;
}

unint64_t sub_1B00DDBBC()
{
  result = qword_1EB6C3D08;
  if (!qword_1EB6C3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D08);
  }

  return result;
}

unint64_t sub_1B00DDC14()
{
  result = qword_1EB6C3D10;
  if (!qword_1EB6C3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D10);
  }

  return result;
}

unint64_t sub_1B00DDC6C()
{
  result = qword_1EB6C3D18;
  if (!qword_1EB6C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D18);
  }

  return result;
}

uint64_t sub_1B00DDCC0(void *a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v56 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v13 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v15 = (&v56 - v14);
  v16 = type metadata accessor for FBKSEvaluation.Subject(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v62 = a3;
  v20[4] = a4;
  v20[5] = a5;
  v21 = qword_1EDAE7070;
  v60 = a2;
  v63 = a4;

  v59 = a5;
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1B014CB5C();
  __swift_project_value_buffer(v22, qword_1EDAE7828);
  v23 = sub_1B014CB3C();
  v24 = sub_1B014CF6C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a1;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1B00E6C2C(0x5F2864726F636572, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v23, v24, "%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B271F750](v27, -1, -1);
    v28 = v26;
    a1 = v25;
    MEMORY[0x1B271F750](v28, -1, -1);
  }

  v65 = &type metadata for FeedbackFeatureFlags;
  v66 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v29 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v29)
  {
    sub_1B00D52E0(a1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = a1;
      v30 = *v19;
      v31 = sub_1B014CB3C();
      v32 = sub_1B014CF3C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1B00C4000, v31, v32, "Nilling out content properties on interaction", v33, 2u);
        MEMORY[0x1B271F750](v33, -1, -1);
      }

      v34 = type metadata accessor for FBKSInteraction.Content(0);
      v35 = *(*(v34 - 8) + 56);
      v36 = v58;
      v35(v58, 1, 1, v34);
      v37 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
      swift_beginAccess();
      sub_1B00DE71C(v36, &v30[v37], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v35(v36, 1, 1, v34);
      v38 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
      swift_beginAccess();
      sub_1B00DE71C(v36, &v30[v38], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v39 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      v40 = *&v30[v39];
      *&v30[v39] = MEMORY[0x1E69E7CC0];

      a1 = v57;
    }

    else
    {
      sub_1B00DB7F0(v19);
    }

    v43 = sub_1B014C88C();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = a1;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00DC264(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation);
    v46 = sub_1B014C86C();
    v48 = v47;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v50 = swift_allocObject();
    *(v50 + 16) = sub_1B00DE5D8;
    *(v50 + 24) = v20;

    v51 = sub_1B00FA9AC(sub_1B00DEAD4, v50);

    if (v51)
    {
      v52 = sub_1B014CA7C();
      v53 = swift_allocObject();
      v53[2] = sub_1B00DE5D8;
      v53[3] = v20;
      v53[4] = a1;
      v66 = sub_1B00DEA90;
      v67 = v53;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v65 = &block_descriptor_75;
      v54 = _Block_copy(aBlock);

      v55 = a1;

      [v51 recordEvaluationWithEvaluationJSON:v52 completion:v54];
      _Block_release(v54);
      swift_unknownObjectRelease();
    }

    sub_1B00D2024(v46, v48);
  }

  else
  {
    sub_1B00DC9DC();
    v41 = swift_allocError();
    *v42 = 0;
    *v15 = v41;
    swift_storeEnumTagMultiPayload();
    sub_1B0116558(v15, v60, v62, v63, v59);
    sub_1B00DE9C0(v15, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

uint64_t sub_1B00DE414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707365526D726F66 && a2 == 0xEC00000065736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1B00DE52C()
{
  result = qword_1EB6C3D20;
  if (!qword_1EB6C3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D20);
  }

  return result;
}

uint64_t sub_1B00DE580(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1B00DE5AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1B00DE5E4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0) - 8) + 80);

  return sub_1B00DA9F0(a1);
}

uint64_t sub_1B00DE660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1B00DE6C8()
{
  result = qword_1EB6C3D30;
  if (!qword_1EB6C3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D30);
  }

  return result;
}

uint64_t sub_1B00DE71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_77Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1B00DE808(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00) - 8) + 80);

  return sub_1B00D92A4(a1, a2 & 1);
}

uint64_t sub_1B00DE8A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B00DE8F8()
{
  result = qword_1EB6C3D48;
  if (!qword_1EB6C3D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DC264(&qword_1EB6C3D50, type metadata accessor for FBKSEvaluation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D48);
  }

  return result;
}

uint64_t sub_1B00DE9AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B00D2024(a1, a2);
  }

  return a1;
}

uint64_t sub_1B00DE9C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t static FBKSDonation.presented(evaluationID:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00DEAFC, 0, 0);
}

uint64_t sub_1B00DEAFC()
{
  v14 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000018, 0x80000001B015C250, &v13);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *(v7 + 16) = *(v0 + 56);
    v8 = *(MEMORY[0x1E69E8920] + 4);
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_1B00DED90;

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B00DED90()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1B00E8C10;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1B00E8C14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B00DEEAC()
{
  sub_1B014CC7C();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_1EDAE7010 = has_internal_diagnostics;
  return result;
}

uint64_t FBKSDonation.DonationError.description.getter()
{
  v1 = 0xD00000000000002CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974616E6F44;
  }
}

uint64_t FBKSDonation.DonationError.hashValue.getter()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

uint64_t sub_1B00DF000()
{
  v1 = 0xD00000000000002CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974616E6F44;
  }
}

void sub_1B00DF078(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v13 = a3;
    a4(a3, 1);
  }

  else if (a2 >> 60 == 15)
  {
    a4(0, 0);
  }

  else
  {
    v8 = sub_1B014C82C();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D60, qword_1B014FE28);
    sub_1B00E8A94(&qword_1EB6C3DC8, &qword_1EB6C3D60, qword_1B014FE28);
    v11 = a1;
    sub_1B014C80C();

    v12 = v14;
    a4(v14, 0);
    sub_1B00DE9AC(v11, a2);
  }
}

uint64_t static FBKSDonation.fetch(evaluationID:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B00DF2E8;

  return static FBKSDonation.fetch(donationID:)(a1);
}

uint64_t sub_1B00DF2E8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t static FBKSDonation.fetch(donationID:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00DF408, 0, 0);
}

uint64_t sub_1B00DF408()
{
  v15 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000012, 0x80000001B015C2D0, &v14);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[2].i64[1] = &type metadata for FeedbackFeatureFlags;
  v0[3].i64[0] = sub_1B00DC988();
  v0[1].i8[0] = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0[1].i64);
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[5].i64[0] = v7;
    v7[1] = vextq_s8(v0[4], v0[4], 8uLL);
    v8 = *(MEMORY[0x1E69E8920] + 4);
    v9 = swift_task_alloc();
    v0[5].i64[1] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D60, qword_1B014FE28);
    *v9 = v0;
    v9[1] = sub_1B00DF6B4;

    return MEMORY[0x1EEE6DE38](&v0[3].u64[1], 0, 0, 0xD000000000000012, 0x80000001B015C2D0, sub_1B00E779C, v7, v10);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0->i64[1];

    return v12();
  }
}

uint64_t sub_1B00DF6B4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1B00E8C3C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B00E8C4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B00DF7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  _s15FeedbackService12FBKSDonationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(a3, sub_1B00E8A00, v11);
}

uint64_t sub_1B00DF91C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0);
    return sub_1B014CE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0);
    return sub_1B014CE8C();
  }
}

void sub_1B00DF99C(void *a1, void (*a2)(void *))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1);
  }

  else
  {
    sub_1B00E8BA4();
    v15 = swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    (a2)(v15, v16);
  }
}

void sub_1B00DFB7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1B00DFBE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  _s15FeedbackService12FBKSDonationC9presented12evaluationID10completiony10Foundation4UUIDV_ys5Error_pSgctFZ_0(a2, sub_1B00E8C34, v10);
}

char *sub_1B00DFD34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v73 = a8;
  v72 = a7;
  v71 = a4;
  v67 = a2;
  v77 = a12;
  v76 = a11;
  v75 = a10;
  v74 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  v24 = objc_allocWithZone(v12);
  v25 = *a1;
  v68 = a1[1];
  v70 = a5;
  sub_1B00DE660(a5, v23, &qword_1EB6C3C28, &qword_1B01515D0);
  v69 = a6;
  sub_1B00DE660(a6, v21, &qword_1EB6C3C28, &qword_1B01515D0);
  v26 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v26 = 0;
  v26[1] = 0;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v28 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v29 = *(*(v28 - 8) + 56);
  v29(&v24[v27], 1, 1, v28);
  v29(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v28);
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v31 = type metadata accessor for FBKSInteraction.Content(0);
  v32 = *(*(v31 - 8) + 56);
  v32(&v24[v30], 1, 1, v31);
  v32(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v31);
  v33 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v34 = 0;
  v34[1] = 0;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v35 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v36 = sub_1B014CB1C();
  (*(*(v36 - 8) + 56))(&v24[v35], 1, 1, v36);
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v37 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v38 = v68;
  *v37 = v25;
  v37[1] = v38;
  v39 = type metadata accessor for FBKSInteraction(0);
  v78.receiver = v24;
  v78.super_class = v39;
  v40 = objc_msgSendSuper2(&v78, sel_init);
  v41 = v40;
  if (a3)
  {
    v42 = v40;
    v43 = v67;
  }

  else
  {
    v44 = objc_opt_self();
    v45 = v41;
    v46 = [v44 mainBundle];
    v47 = [v46 bundleIdentifier];

    if (v47)
    {
      v43 = sub_1B014CC1C();
      a3 = v48;
    }

    else
    {
      v43 = 0;
      a3 = 0;
    }
  }

  sub_1B00DE9C0(v69, &qword_1EB6C3C28, &qword_1B01515D0);
  sub_1B00DE9C0(v70, &qword_1EB6C3C28, &qword_1B01515D0);
  v49 = &v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  v50 = *&v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
  *v49 = v43;
  v49[1] = a3;

  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v52 = *&v41[v51];
  *&v41[v51] = v71;

  v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v23, &v41[v53], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v54 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v21, &v41[v54], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v55 = &v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v56 = *(v55 + 1);
  v57 = v73;
  *v55 = v72;
  *(v55 + 1) = v57;

  v58 = &v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v59 = *(v58 + 1);
  v60 = v75;
  *v58 = v74;
  *(v58 + 1) = v60;

  v61 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v62 = *&v41[v61];
  *&v41[v61] = v76;

  v63 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v41[v63] = v77 & 1;

  v64 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v65 = *&v41[v64];
  *&v41[v64] = MEMORY[0x1E69E7CC0];

  return v41;
}

char *FBKSDonation.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v14 = v13;
  v88 = a8;
  v87 = a7;
  v86 = a4;
  v81 = a3;
  v78 = a2;
  v93 = a12;
  v91 = a11;
  v90 = a10;
  v89 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - v27;
  v29 = objc_allocWithZone(v14);
  v30 = a1[1];
  v80 = *a1;
  v79 = v30;
  v84 = a5;
  v82 = v28;
  sub_1B00DE660(a5, v28, &qword_1EB6C3C28, &qword_1B01515D0);
  v83 = a6;
  v85 = v26;
  sub_1B00DE660(a6, v26, &qword_1EB6C3C28, &qword_1B01515D0);
  v92 = v21;
  sub_1B00DE660(a13, v21, &qword_1EB6C3B98, &qword_1B014F360);
  v31 = &v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v31 = 0;
  v31[1] = 0;
  *&v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v32 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v33 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v34 = *(*(v33 - 8) + 56);
  v34(&v29[v32], 1, 1, v33);
  v34(&v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v33);
  v35 = MEMORY[0x1E69E7CC0];
  *&v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v36 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v37 = type metadata accessor for FBKSInteraction.Content(0);
  v38 = *(*(v37 - 8) + 56);
  v38(&v29[v36], 1, 1, v37);
  v38(&v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v37);
  v39 = &v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v40 = 0;
  v40[1] = 0;
  *&v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v41 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v42 = sub_1B014CB1C();
  v43 = &v29[v41];
  v44 = v81;
  (*(*(v42 - 8) + 56))(v43, 1, 1, v42);
  v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v45 = &v29[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v46 = v79;
  *v45 = v80;
  v45[1] = v46;
  v47 = type metadata accessor for FBKSInteraction(0);
  v94.receiver = v29;
  v94.super_class = v47;
  v48 = objc_msgSendSuper2(&v94, sel_init);
  v49 = v48;
  if (v44)
  {
    v50 = v48;
    v51 = v78;
  }

  else
  {
    v52 = v35;
    v53 = objc_opt_self();
    v54 = v49;
    v55 = [v53 mainBundle];
    v44 = [v55 bundleIdentifier];

    if (v44)
    {
      v51 = sub_1B014CC1C();
      v57 = v56;

      v44 = v57;
    }

    else
    {
      v51 = 0;
    }

    v35 = v52;
  }

  sub_1B00DE9C0(a13, &qword_1EB6C3B98, &qword_1B014F360);
  sub_1B00DE9C0(v83, &qword_1EB6C3C28, &qword_1B01515D0);
  sub_1B00DE9C0(v84, &qword_1EB6C3C28, &qword_1B01515D0);
  v58 = &v49[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  v59 = *&v49[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
  *v58 = v51;
  v58[1] = v44;

  v60 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v61 = *&v49[v60];
  *&v49[v60] = v86;

  v62 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v82, &v49[v62], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v63 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v85, &v49[v63], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v64 = &v49[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v65 = *(v64 + 1);
  v66 = v88;
  *v64 = v87;
  *(v64 + 1) = v66;

  v67 = &v49[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v68 = *(v67 + 1);
  v69 = v90;
  *v67 = v89;
  *(v67 + 1) = v69;

  v70 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v71 = *&v49[v70];
  *&v49[v70] = v91;

  v72 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v49[v72] = v93 & 1;
  v73 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(v92, &v49[v73], &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  v74 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v75 = *&v49[v74];
  *&v49[v74] = v35;

  return v49;
}

char *FBKSDonation.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v82 = a8;
  v81 = a7;
  v80 = a4;
  v75 = a3;
  v72 = a2;
  v87 = a12;
  v85 = a11;
  v84 = a10;
  v83 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = a1[1];
  v74 = *a1;
  v73 = v26;
  v78 = a5;
  v76 = &v71 - v27;
  sub_1B00DE660(a5, &v71 - v27, &qword_1EB6C3C28, &qword_1B01515D0);
  v77 = a6;
  v79 = v25;
  sub_1B00DE660(a6, v25, &qword_1EB6C3C28, &qword_1B01515D0);
  v86 = v20;
  sub_1B00DE660(a13, v20, &qword_1EB6C3B98, &qword_1B014F360);
  v28 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v28 = 0;
  v28[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v30 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v31 = *(*(v30 - 8) + 56);
  v31(&v13[v29], 1, 1, v30);
  v31(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v30);
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v32 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v33 = type metadata accessor for FBKSInteraction.Content(0);
  v34 = *(*(v33 - 8) + 56);
  v34(&v13[v32], 1, 1, v33);
  v34(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v33);
  v35 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v36 = 0;
  v36[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v37 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v38 = sub_1B014CB1C();
  (*(*(v38 - 8) + 56))(&v13[v37], 1, 1, v38);
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v39 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v40 = v73;
  *v39 = v74;
  v39[1] = v40;
  v41 = type metadata accessor for FBKSInteraction(0);
  v88.receiver = v13;
  v88.super_class = v41;
  v42 = objc_msgSendSuper2(&v88, sel_init);
  v43 = v75;
  v44 = v42;
  if (v75)
  {
    v45 = v42;
    v46 = v72;
  }

  else
  {
    v47 = objc_opt_self();
    v48 = v44;
    v49 = [v47 mainBundle];
    v46 = [v49 bundleIdentifier];

    if (v46)
    {
      v50 = sub_1B014CC1C();
      v43 = v51;

      v46 = v50;
    }

    else
    {
      v43 = 0;
    }
  }

  sub_1B00DE9C0(a13, &qword_1EB6C3B98, &qword_1B014F360);
  sub_1B00DE9C0(v77, &qword_1EB6C3C28, &qword_1B01515D0);
  sub_1B00DE9C0(v78, &qword_1EB6C3C28, &qword_1B01515D0);
  v52 = &v44[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  v53 = *&v44[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
  *v52 = v46;
  *(v52 + 1) = v43;

  v54 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v55 = *&v44[v54];
  *&v44[v54] = v80;

  v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v76, &v44[v56], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v57 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v79, &v44[v57], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v58 = &v44[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v59 = *(v58 + 1);
  v60 = v82;
  *v58 = v81;
  *(v58 + 1) = v60;

  v61 = &v44[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v62 = *(v61 + 1);
  v63 = v84;
  *v61 = v83;
  *(v61 + 1) = v63;

  v64 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v65 = *&v44[v64];
  *&v44[v64] = v85;

  v66 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v44[v66] = v87 & 1;
  v67 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(v86, &v44[v67], &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  v68 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v69 = *&v44[v68];
  *&v44[v68] = MEMORY[0x1E69E7CC0];

  return v44;
}