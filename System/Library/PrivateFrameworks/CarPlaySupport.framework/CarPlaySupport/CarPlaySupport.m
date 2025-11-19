uint64_t _touchesContainIndirectTouch(id obj)
{
  v14 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, obj);
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x277D82BE0](location);
  v7 = [obja countByEnumeratingWithState:__b objects:v13 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obja);
      }

      v10 = *(__b[1] + 8 * v4);
      if ([v10 type] == 1)
      {
        break;
      }

      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obja countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          goto LABEL_9;
        }
      }
    }

    v12 = 1;
    v8 = 1;
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  MEMORY[0x277D82BD8](obja);
  if (!v8)
  {
    v12 = 0;
  }

  objc_storeStrong(&location, 0);
  return v12 & 1;
}

id CPSSafeCast(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_0(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_1(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_5(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_6(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_7(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_9(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_10(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_11(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_12(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_13(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_14(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_15(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_16(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_17(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_18(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_19(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_20(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_21(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_22(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_23(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CPSSafeCast_24(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id CarPlaySupportGeneralLogging()
{
  predicate = &CarPlaySupportGeneralLogging_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_2);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CarPlaySupportGeneralLogging_facility;

  return v0;
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

id CPListItemIdentifier(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location conformsToProtocol:&unk_285632BB8])
  {
    v4 = [location identifier];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&location, 0);
  v1 = v4;

  return v1;
}

id CPListItemIdentifier_0(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location conformsToProtocol:&unk_285632BB8])
  {
    v4 = [location identifier];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&location, 0);
  v1 = v4;

  return v1;
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_242FED5F4()
{
  OUTLINED_FUNCTION_3();
  result = CPSPointsOfInterestPickerCell.chosen.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_242FED648()
{
  OUTLINED_FUNCTION_3();
  result = CPSPointsOfInterestPickerCell.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_242FED69C()
{
  OUTLINED_FUNCTION_3();
  result = CPSPointsOfInterestPickerCell.subtitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_242FED6F0()
{
  OUTLINED_FUNCTION_3();
  result = CPSPointsOfInterestPickerCell.tertiaryTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_242FED744(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGSgMd);
  OUTLINED_FUNCTION_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_242FED7AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGSgMd);
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_242FED80C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_242FED844@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_242FED874(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  OUTLINED_FUNCTION_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_242FED950()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242FED990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_242FEDA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242FEDB04@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242FEDB34(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGG_14CarPlaySupport013ContactActionhG033_E85FB5A4CE27235491446378D391A496LLVQo_AeAEAFyQrqd__AaGRd__lFQOyAIyAKyAmA06_FrameL0VGG_AUQo_GMd);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_242FEDB9C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGG_14CarPlaySupport013ContactActionhG033_E85FB5A4CE27235491446378D391A496LLVQo_AeAEAFyQrqd__AaGRd__lFQOyAIyAKyAmA06_FrameL0VGG_AUQo_GMd);
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(a1);
  return a1;
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t _CPSUIPressesContainsPressTypes(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, a1);
  v23 = 0;
  objc_storeStrong(&v23, a2);
  memset(__b, 0, sizeof(__b));
  v16 = MEMORY[0x277D82BE0](location);
  v17 = [v16 countByEnumeratingWithState:__b objects:v27 count:16];
  if (v17)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v17;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(__b[1] + 8 * v13);
      memset(v19, 0, sizeof(v19));
      v9 = MEMORY[0x277D82BE0](v23);
      v10 = [v9 countByEnumeratingWithState:v19 objects:v26 count:16];
      if (v10)
      {
        v6 = *v19[2];
        v7 = 0;
        v8 = v10;
        while (1)
        {
          v5 = v7;
          if (*v19[2] != v6)
          {
            objc_enumerationMutation(v9);
          }

          v20 = *(v19[1] + 8 * v7);
          v4 = [v22 type];
          if (v4 == [v20 integerValue])
          {
            break;
          }

          ++v7;
          if (v5 + 1 >= v8)
          {
            v7 = 0;
            v8 = [v9 countByEnumeratingWithState:v19 objects:v26 count:16];
            if (!v8)
            {
              goto LABEL_13;
            }
          }
        }

        v25 = 1;
        v18 = 1;
      }

      else
      {
LABEL_13:
        v18 = 0;
      }

      *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v18)
      {
        break;
      }

      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [v16 countByEnumeratingWithState:__b objects:v27 count:{16, v2}];
        if (!v14)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
LABEL_17:
    v18 = 0;
  }

  MEMORY[0x277D82BD8](v16);
  if (!v18)
  {
    v25 = 0;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
  return v25 & 1;
}

id CPSSafeProtocolCast(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v5 = 0;
  objc_storeStrong(&v5, a2);
  if ([v5 conformsToProtocol:location])
  {
    v7 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&location, 0);
  v2 = v7;

  return v2;
}

uint64_t __os_log_helper_16_0_1_4_2(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 2;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

id CPSNavigationTemplateClasses()
{
  predicate = &CPSNavigationTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_1);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSNavigationTemplateClasses_classes;

  return v0;
}

id CPSAudioTemplateClasses()
{
  predicate = &CPSAudioTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_289);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSAudioTemplateClasses_classes;

  return v0;
}

id CPSCommunicationTemplateClasses()
{
  predicate = &CPSCommunicationTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_292);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSCommunicationTemplateClasses_classes;

  return v0;
}

id CPSChargingParkingTemplateClasses()
{
  predicate = &CPSChargingParkingTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_294);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSChargingParkingTemplateClasses_classes;

  return v0;
}

id CPSQuickOrderingTemplateClasses()
{
  predicate = &CPSQuickOrderingTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_297);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSQuickOrderingTemplateClasses_classes;

  return v0;
}

id CPSPublicSafetyTemplateClasses()
{
  predicate = &CPSPublicSafetyTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_299);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSPublicSafetyTemplateClasses_classes;

  return v0;
}

id CPSFuelingTemplateClasses()
{
  predicate = &CPSFuelingTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_301);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSFuelingTemplateClasses_classes;

  return v0;
}

id CPSDrivingTaskTemplateClasses()
{
  predicate = &CPSDrivingTaskTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_303);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSDrivingTaskTemplateClasses_classes;

  return v0;
}

id CPSVideoTemplateClasses()
{
  predicate = &CPSVideoTemplateClasses_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_305);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CPSVideoTemplateClasses_classes;

  return v0;
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

double __CPSNavigationTemplateClasses_block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v13 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [v13 setWithObjects:{v12, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v2 = CPSNavigationTemplateClasses_classes;
  CPSNavigationTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSAudioTemplateClasses_block_invoke(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v10 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [v10 setWithObjects:{v9, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v2 = CPSAudioTemplateClasses_classes;
  CPSAudioTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSCommunicationTemplateClasses_block_invoke(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v12 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [v12 setWithObjects:{v11, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v2 = CPSCommunicationTemplateClasses_classes;
  CPSCommunicationTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSChargingParkingTemplateClasses_block_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v11 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [v11 setWithObjects:{v10, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v2 = CPSChargingParkingTemplateClasses_classes;
  CPSChargingParkingTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSQuickOrderingTemplateClasses_block_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v11 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [v11 setWithObjects:{v10, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v2 = CPSQuickOrderingTemplateClasses_classes;
  CPSQuickOrderingTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSPublicSafetyTemplateClasses_block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v13 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [v13 setWithObjects:{v12, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v2 = CPSPublicSafetyTemplateClasses_classes;
  CPSPublicSafetyTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSFuelingTemplateClasses_block_invoke(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v10 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [v10 setWithObjects:{v9, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v2 = CPSFuelingTemplateClasses_classes;
  CPSFuelingTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSDrivingTaskTemplateClasses_block_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v11 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [v11 setWithObjects:{v10, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v2 = CPSDrivingTaskTemplateClasses_classes;
  CPSDrivingTaskTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CPSVideoTemplateClasses_block_invoke(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v10 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [v10 setWithObjects:{v9, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v2 = CPSVideoTemplateClasses_classes;
  CPSVideoTemplateClasses_classes = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __CarPlaySupportGeneralLogging_block_invoke()
{
  v0 = os_log_create(CarPlaySupportLogSubsystem, "General");
  v1 = CarPlaySupportGeneralLogging_facility;
  CarPlaySupportGeneralLogging_facility = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

id CPSSafeProtocolCast_0(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v5 = 0;
  objc_storeStrong(&v5, a2);
  if ([v5 conformsToProtocol:location])
  {
    v7 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&location, 0);
  v2 = v7;

  return v2;
}

uint64_t CPGuidanceStateFromCPTripPauseReason(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 6;
  }

  return v2;
}

id NSStringFromNavigationOwner(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"iOS");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"Car");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"None");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t _CPPanDirectionForPressType(uint64_t a1)
{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return 4;
    case 1:
      return 8;
    case 2:
      return 1;
    case 3:
      return 2;
  }

  return v2;
}

id CPSSafeProtocolCast_1(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v5 = 0;
  objc_storeStrong(&v5, a2);
  if ([v5 conformsToProtocol:location])
  {
    v7 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&location, 0);
  v2 = v7;

  return v2;
}

BOOL UIEdgeInsetsEqualToEdgeInsets(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = 0;
  if (a2 == a6)
  {
    v9 = 0;
    if (a1 == a5)
    {
      v9 = 0;
      if (a4 == a8)
      {
        return a3 == a7;
      }
    }
  }

  return v9;
}

void sub_24303E4CC(uint64_t a1, int a2)
{
  *(v2 - 104) = a1;
  *(v2 - 108) = a2;
  _Block_object_dispose((v2 - 88), 8);
  _Unwind_Resume(*(v2 - 104));
}

void __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_2430518A4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *location)
{
  *(v16 - 32) = a1;
  *(v16 - 36) = a2;
  objc_destroyWeak((v16 - 24));
  _Unwind_Resume(*(v16 - 32));
}

id NSStringFromNavigationOwner_0(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"iOS");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"Car");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"None");
  }

  return v2;
}

BOOL __CGSizeEqualToSize(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

void sub_243066208(uint64_t a1, int a2)
{
  *(v2 - 80) = a1;
  *(v2 - 84) = a2;
  _Block_object_dispose((v2 - 72), 8);
  _Unwind_Resume(*(v2 - 80));
}

void __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id CarPlayFrameworkGeneralLogging()
{
  predicate = &CarPlayFrameworkGeneralLogging_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_7);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CarPlayFrameworkGeneralLogging_facility;

  return v0;
}

double __CarPlayFrameworkGeneralLogging_block_invoke()
{
  v0 = os_log_create(CarPlayFrameworkLogSubsystem, "General");
  v1 = CarPlayFrameworkGeneralLogging_facility;
  CarPlayFrameworkGeneralLogging_facility = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

id CarPlayFrameworkStateCaptureLogging()
{
  predicate = &CarPlayFrameworkStateCaptureLogging_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_3);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CarPlayFrameworkStateCaptureLogging_facility;

  return v0;
}

double __CarPlayFrameworkStateCaptureLogging_block_invoke()
{
  v0 = os_log_create(CarPlayFrameworkLogSubsystem, "StateCapture");
  v1 = CarPlayFrameworkStateCaptureLogging_facility;
  CarPlayFrameworkStateCaptureLogging_facility = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

id CarPlayFrameworkACCNavLogging()
{
  predicate = &CarPlayFrameworkACCNavLogging_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_6);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = CarPlayFrameworkACCNavLogging_facility;

  return v0;
}

double __CarPlayFrameworkACCNavLogging_block_invoke()
{
  v0 = os_log_create(CarPlayFrameworkLogSubsystem, "ACCNav");
  v1 = CarPlayFrameworkACCNavLogging_facility;
  CarPlayFrameworkACCNavLogging_facility = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

void sub_24306F1CC(uint64_t a1, int a2)
{
  *(v2 - 48) = a1;
  *(v2 - 52) = a2;
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(*(v2 - 48));
}

id CPSSafeProtocolCast_2(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v5 = 0;
  objc_storeStrong(&v5, a2);
  if ([v5 conformsToProtocol:location])
  {
    v7 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&location, 0);
  v2 = v7;

  return v2;
}

uint64_t __os_log_helper_16_2_3_8_64_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_243075FFC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, id *a12, id *location)
{
  *(v13 - 160) = a1;
  *(v13 - 164) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v13 - 112));
  _Unwind_Resume(*(v13 - 160));
}

uint64_t CPSCoordinateRegionContainsAnnotations(id obj, double a2, double a3, double a4, double a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  location = 0;
  objc_storeStrong(&location, obj);
  v20 = 1;
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x277D82BE0](location);
  v15 = [obja countByEnumeratingWithState:__b objects:v31 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obja);
      }

      v19 = *(__b[1] + 8 * v12);
      [v19 coordinate];
      v27 = v5;
      v28 = v6;
      v9 = 0;
      if (v6 >= -180.0)
      {
        v9 = 0;
        if (v28 <= 180.0)
        {
          v9 = 0;
          if (v27 >= -90.0)
          {
            v9 = v27 <= 90.0;
          }
        }
      }

      if (v9)
      {
        v30 = v22 - v5;
        v29 = v23 - v6;
        v17 = fabs(v23 - v6);
        v8 = 0;
        if (v24 / 2.0 >= fabs(v22 - v5))
        {
          v8 = v25 / 2.0 >= v17;
        }

        v20 = v8;
        if (!v8)
        {
          break;
        }
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obja countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v13)
        {
          goto LABEL_16;
        }
      }
    }

    v26 = 0;
    v16 = 1;
  }

  else
  {
LABEL_16:
    v16 = 0;
  }

  MEMORY[0x277D82BD8](obja);
  if (!v16)
  {
    v26 = v20 & 1;
  }

  objc_storeStrong(&location, 0);
  return v26 & 1;
}

CLLocationDegrees CPSCoordinateRegionForAnnotations(id obj)
{
  v56 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, obj);
  v26 = 90.0;
  v25 = -90.0;
  v24 = 180.0;
  v23 = -180.0;
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x277D82BE0](location);
  v15 = [obja countByEnumeratingWithState:__b objects:v55 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obja);
      }

      v22 = *(__b[1] + 8 * v12);
      [v22 coordinate];
      v20 = v2;
      v31 = v2;
      v32 = v1;
      v3 = v1;
      v9 = 0;
      if (v1 >= -180.0)
      {
        v3 = v32;
        v9 = 0;
        if (v32 <= 180.0)
        {
          v3 = v31;
          v9 = 0;
          if (v31 >= -90.0)
          {
            v3 = v31;
            v9 = v31 <= 90.0;
          }
        }
      }

      if (v9)
      {
        if (v20 < v26)
        {
          v26 = v20;
        }

        if (v1 < v24)
        {
          v24 = v1;
        }

        if (v20 > v25)
        {
          v25 = v20;
        }

        v3 = v1;
        if (v1 > v23)
        {
          v3 = v1;
          v23 = v1;
        }
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obja countByEnumeratingWithState:__b objects:v55 count:{16, v3}];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obja);
  v34 = v25 - v26;
  v19 = fabs(v25 - v26);
  if (v19 + 0.000002 <= 180.0)
  {
    v19 = v19 + 0.000002;
  }

  v33 = v23 - v24;
  v18 = fabs(v23 - v24);
  if (v18 + 0.000002 <= 360.0)
  {
    v18 = v18 + 0.000002;
  }

  v40 = v19;
  v39 = v18;
  v41 = v19;
  v42 = v18;
  *&v17 = v19;
  *(&v17 + 1) = v18;
  v48 = CLLocationCoordinate2DMake(v25 - v19 / 2.0, v23 - v18 / 2.0);
  v47 = v17;
  v49 = v48;
  v50 = v17;
  v28 = v48;
  v29 = v17;
  v51 = v48;
  v52 = v17;
  v53 = v48;
  v8 = 0;
  if (v48.longitude >= -180.0)
  {
    v8 = 0;
    if (v53.longitude <= 180.0)
    {
      v8 = 0;
      if (v53.latitude >= -90.0)
      {
        v8 = v53.latitude <= 90.0;
      }
    }
  }

  v7 = 0;
  if (v8)
  {
    v54 = v52;
    v6 = 0;
    if (*&v52 >= 0.0)
    {
      v6 = 0;
      if (*&v54 <= 180.0)
      {
        v6 = 0;
        if (*(&v54 + 1) >= 0.0)
        {
          v6 = *(&v54 + 1) <= 360.0;
        }
      }
    }

    v7 = v6;
  }

  if (!v7)
  {
    v30 = v28;
    v5 = 0;
    if (v28.longitude >= -180.0)
    {
      v5 = 0;
      if (v30.longitude <= 180.0)
      {
        v5 = 0;
        if (v30.latitude >= -90.0)
        {
          v5 = v30.latitude <= 90.0;
        }
      }
    }

    if (v5)
    {
      v16 = v28;
    }

    else
    {
      v16 = CLLocationCoordinate2DMake(0.0, 0.0);
    }

    v36 = 0;
    v35 = 0;
    v37 = 0;
    v38 = 0;
    v44 = v16;
    v43 = 0uLL;
    v45 = v16;
    v46 = 0uLL;
    v28 = v16;
    v29 = 0uLL;
  }

  objc_storeStrong(&location, 0);
  return v28.latitude;
}

void __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id CPSLabelColorForAlertAction(void *a1, char a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v19 = a2;
  v14 = [location color];
  *&v2 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v14)
  {
    v18 = CPSBackgroundColorForAlertAction(location, v19 & 1);
    v11 = [location color];
    v16 = 0;
    v12 = 1;
    if (([v18 isEqual:?] & 1) == 0)
    {
      v17 = [location color];
      v16 = 1;
      CPContrastRatioForColors();
      v12 = v3 <= 7.0;
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (v12)
    {
      v15 = CPContrastingColorForColor();
      v9 = [MEMORY[0x277D75348] blackColor];
      v10 = [v15 isEqual:?];
      *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v10)
      {
        v21 = [MEMORY[0x277D75348] colorWithDynamicProvider:{&__block_literal_global_10, v5}];
      }

      else
      {
        v21 = [MEMORY[0x277D75348] colorWithDynamicProvider:{&__block_literal_global_36, v5}];
      }

      objc_storeStrong(&v15, 0);
    }

    else
    {
      v21 = [location color];
    }

    objc_storeStrong(&v18, 0);
  }

  else if (v19)
  {
    v21 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v8 = [location style];
    if (v8 <= 1)
    {
      v21 = [MEMORY[0x277D75348] systemBlueColor];
    }

    else if (v8 == 2)
    {
      v21 = [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      v21 = [MEMORY[0x277D75348] labelColor];
    }
  }

  objc_storeStrong(&location, 0);
  v6 = v21;

  return v6;
}

id CPSBackgroundColorForAlertAction(void *a1, char a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v22 = a2;
  v21 = 0;
  v20 = [location color];
  *&v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  if (v20)
  {
    v3 = [location color];
    v4 = v21;
    v21 = v3;
    v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  else
  {
    v18 = [location style];
    if (v18 <= 1)
    {
      v6 = [MEMORY[0x277D75348] systemBlueColor];
      v7 = v21;
      v21 = v6;
      v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    }

    else
    {
      if (v18 == 2)
      {
        v8 = [MEMORY[0x277D75348] systemRedColor];
      }

      else
      {
        v8 = [MEMORY[0x277D75348] systemBlueColor];
      }

      v9 = v21;
      v21 = v8;
      v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    }
  }

  if ((v22 & 1) == 0)
  {
    v16 = [MEMORY[0x277D759A0] _carScreen];
    v15 = [v16 traitCollection];
    v17 = [v15 userInterfaceStyle] == 2;
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v10 = 0.22;
    if (!v17)
    {
      v10 = 0.12;
    }

    v11 = [v21 colorWithAlphaComponent:v10];
    v12 = v21;
    v21 = v11;
    MEMORY[0x277D82BD8](v12);
  }

  v14 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);

  return v14;
}

id __CPSLabelColorForAlertAction_block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [MEMORY[0x277D75348] blackColor];
  objc_storeStrong(location, 0);

  return v3;
}

id __CPSLabelColorForAlertAction_block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [MEMORY[0x277D75348] whiteColor];
  objc_storeStrong(location, 0);

  return v3;
}

BOOL CPSAlertUsesMinimalStyle(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location primaryAction];
  v4 = 0;
  v3 = 0;
  if ([v2 style] == 1)
  {
    v5 = [location secondaryAction];
    v4 = 1;
    v3 = v5 == 0;
  }

  v7 = v3;
  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(&location, 0);
  return v7;
}

uint64_t CPUIPressesContainsPressType(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, a1);
  v14 = a2;
  memset(__b, 0, sizeof(__b));
  v9 = MEMORY[0x277D82BE0](location);
  v10 = [v9 countByEnumeratingWithState:__b objects:v17 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(__b[1] + 8 * v6);
      v2 = [v13 type];
      if (v2 == v14)
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v9 countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    v16 = 1;
    v11 = 1;
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  MEMORY[0x277D82BD8](v9);
  if (!v11)
  {
    v16 = 0;
  }

  objc_storeStrong(&location, 0);
  return v16 & 1;
}

id CPSFrameworkBundle()
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v6 = [(NSArray *)v2 objectAtIndex:0];
  MEMORY[0x277D82BD8](v2);
  v3 = [GSSystemRootDirectory() stringByAppendingPathComponent:v6];
  v5 = [v3 stringByAppendingPathComponent:@"PrivateFrameworks/CarPlaySupport.framework"];
  *&v0 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:{v5, v0}];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);

  return v4;
}

id CPSImageNamedWithTraitCollection(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v9 = 0;
  objc_storeStrong(&v9, a2);
  v6 = MEMORY[0x277D755B8];
  v5 = location;
  v7 = CPSFrameworkBundle();
  v8 = [v6 imageNamed:v5 inBundle:a1 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);

  return v8;
}

BOOL CPSTraitCollectionSupportsFocus(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = [location primaryInteractionModel] == 8 || (objc_msgSend(location, "interactionModel") & 2) != 0;
  objc_storeStrong(&location, 0);
  return v3;
}

id CPSLocalizedStringForKey(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = CPSFrameworkBundle();
  v3 = [v2 localizedStringForKey:location value:&stru_2855A5FC8 table:@"Localizable"];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(&location, 0);

  return v3;
}

double CPSSizeForText(void *a1, void *a2, void *a3, double a4, double a5)
{
  v25[1] = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, a1);
  v20 = 0;
  objc_storeStrong(&v20, a2);
  v19[2] = *&a4;
  v19[1] = *&a5;
  v19[0] = 0;
  objc_storeStrong(v19, a3);
  v15 = location;
  CGSizeMake_10();
  v17 = v5;
  v18 = v6;
  v24 = *MEMORY[0x277D740A8];
  v25[0] = v20;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:a1];
  [v15 boundingRectWithSize:1 options:v17 attributes:v18 context:?];
  MEMORY[0x277D82BD8](v16);
  v22 = 0.0;
  v23 = 0;
  UICeilToScale();
  UICeilToScale();
  CGSizeMake_10();
  v22 = v7;
  v23 = v8;
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&location, 0);
  return v22;
}

double CPSSizeForAttributedText(void *a1, void *a2, double a3, double a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v14[2] = *&a3;
  v14[1] = *&a4;
  v14[0] = 0;
  objc_storeStrong(v14, a2);
  v13 = location;
  CGSizeMake_10();
  [v13 boundingRectWithSize:1 options:v14[0] context:{v4, v5, a1}];
  v16 = 0.0;
  v17 = 0;
  UICeilToScale();
  UICeilToScale();
  CGSizeMake_10();
  v16 = v6;
  v17 = v7;
  objc_storeStrong(v14, 0);
  objc_storeStrong(&location, 0);
  return v16;
}

double CPSRectByApplyingUserInterfaceLayoutDirectionInRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *v13 = a1;
  *&v13[8] = a2;
  *&v13[16] = a3;
  *&v13[24] = a4;
  *v12 = a5;
  *&v12[8] = a6;
  *&v12[16] = a7;
  *&v12[24] = a8;
  v14 = a1;
  v10 = [MEMORY[0x277D75128] sharedApplication];
  v11 = [v10 userInterfaceLayoutDirection];
  MEMORY[0x277D82BD8](v10);
  if (v11 == 1)
  {
    CGRectGetMaxX(*v12);
    CGRectGetMinX(*v13);
    CGRectGetWidth(*v13);
    CGRectGetMinY(*v13);
    CGRectGetWidth(*v13);
    CGRectGetHeight(*v13);
    CGRectMake_2();
    return v8;
  }

  return v14;
}

uint64_t CPSIsInternalInstall()
{
  predicate = &CPSIsInternalInstall_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_11);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return CPSIsInternalInstall_isInternal & 1;
}

uint64_t __CPSIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  CPSIsInternalInstall_isInternal = result & 1;
  return result;
}

id _CPAppIdentifierFromTeamAppTuple(id obj)
{
  v41 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location hasPrefix:@"com.apple."])
  {
    v34 = location;
    v32 = 1;
  }

  else
  {
    v1 = [location length];
    if (v1 >= _CPAppIdentifierFromTeamAppTuple_teamPrefixLength + 1)
    {
      v14 = _CPAppIdentifierFromTeamAppTuple_teamPrefixLength;
      v29 = &v6;
      v13 = 2 * _CPAppIdentifierFromTeamAppTuple_teamPrefixLength;
      MEMORY[0x28223BE20]();
      v15 = &v6 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = v14;
      v3 = *(v2 + 2792);
      v16 = 0;
      v36 = 0;
      v35 = v3;
      v37 = 0;
      v38 = v3;
      v27 = v3;
      v26 = 0;
      [location getCharacters:? range:?];
      for (i = v16; i < _CPAppIdentifierFromTeamAppTuple_teamPrefixLength; ++i)
      {
        if (!isdigit(*&v15[2 * i]) && (*&v15[2 * i] < 0x41u || *&v15[2 * i] >= 0x5Bu))
        {
          v24 = CarPlaySupportGeneralLogging();
          v23 = 16;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v10 = v24;
            v11 = v23;
            v12 = v39;
            __os_log_helper_16_2_1_8_64(v39, location);
            _os_log_error_impl(&dword_242FE8000, v10, v11, "team prefix must only contain characters in [0-9,A-Z] (%@)", v12, 0xCu);
          }

          objc_storeStrong(&v24, 0);
          v34 = 0;
          v32 = 1;
          goto LABEL_21;
        }
      }

      if ([location characterAtIndex:_CPAppIdentifierFromTeamAppTuple_teamPrefixLength] == 46)
      {
        v34 = [location substringFromIndex:_CPAppIdentifierFromTeamAppTuple_teamPrefixLength + 1];
        v32 = 1;
      }

      else
      {
        v22 = CarPlaySupportGeneralLogging();
        v21 = 16;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v7 = v22;
          v8 = v21;
          v9 = v20;
          __os_log_helper_16_0_0(v20);
          _os_log_error_impl(&dword_242FE8000, v7, v8, "team prefix must be followed by a dot.", v9, 2u);
        }

        objc_storeStrong(&v22, 0);
        v34 = 0;
        v32 = 1;
      }
    }

    else
    {
      v31 = CarPlaySupportGeneralLogging();
      v30 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v17 = v31;
        v18 = v30;
        v19 = v40;
        __os_log_helper_16_2_1_8_64(v40, location);
        _os_log_error_impl(&dword_242FE8000, v31, v30, "can't extract application ID from '%@'", v40, 0xCu);
      }

      objc_storeStrong(&v31, 0);
      v34 = 0;
      v32 = 1;
    }
  }

LABEL_21:
  objc_storeStrong(&location, 0);
  v6 = v34;
  v4 = v34;

  return v4;
}

BOOL __CGSizeEqualToSize_0(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

id CPSSafeProtocolCast_3(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v5 = 0;
  objc_storeStrong(&v5, a2);
  if ([v5 conformsToProtocol:location])
  {
    v7 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&location, 0);
  v2 = v7;

  return v2;
}

void __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id insertNewLabelToStackView(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setNumberOfLines:2];
  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setIsAccessibilityElement:0];
  [location addArrangedSubview:v3];
  v2 = MEMORY[0x277D82BE0](v3);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&location, 0);

  return v2;
}

id CPSPointsOfInterestMakeLabel(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setNumberOfLines:1];
  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setIsAccessibilityElement:0];
  [v3 setAccessibilityValue:location];
  v2 = MEMORY[0x277D82BE0](v3);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&location, 0);

  return v2;
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_4_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *result = 0;
  *(result + 1) = 6;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

BOOL UIEdgeInsetsEqualToEdgeInsets_0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = 0;
  if (a2 == a6)
  {
    v9 = 0;
    if (a1 == a5)
    {
      v9 = 0;
      if (a4 == a8)
      {
        return a3 == a7;
      }
    }
  }

  return v9;
}

uint64_t __os_log_helper_16_2_5_8_64_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_2430BA0BC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 104) = a1;
  *(v11 - 108) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v11 - 48));
  _Unwind_Resume(*(v11 - 104));
}

void sub_2430BA488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v29 - 80));
  _Unwind_Resume(a1);
}

void sub_2430BC680(uint64_t a1, int a2)
{
  *(v2 - 80) = a1;
  *(v2 - 84) = a2;
  _Block_object_dispose((v2 - 72), 8);
  _Unwind_Resume(*(v2 - 80));
}

void __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

double CPSMaxCGFloat(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = 0.0;
  v12 = &a9;
  for (i = 0; i < a1; ++i)
  {
    v9 = *v12++;
    v13 = CGFloatMax(v13, v9);
  }

  return v13;
}

id NSStringFromNavigationOwner_1(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"iOS");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"Car");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"None");
  }

  return v2;
}

void sub_2430C35B4(uint64_t a1, int a2)
{
  *(v2 - 64) = a1;
  *(v2 - 68) = a2;
  _Block_object_dispose((v2 - 56), 8);
  _Unwind_Resume(*(v2 - 64));
}

uint64_t __os_log_helper_16_2_3_8_0_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

BOOL barButtonStyle(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location buttonStyle];
  if (v2)
  {
    v4 = v2 == 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&location, 0);
  return v4;
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

id CPSPresentationRoundedDistance(id obj)
{
  location[0] = 0;
  objc_storeStrong(location, obj);
  v40 = 0;
  v34 = [MEMORY[0x277CBEAF8] currentLocale];
  v35 = [v34 usesMetricSystem];
  *&v1 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  if (v35)
  {
    v32 = location[0];
    v33 = [MEMORY[0x277CCAE20] meters];
    v39 = [v32 measurementByConvertingToUnit:?];
    [v39 doubleValue];
    v38 = 0;
    v37 = 0.0;
    if (*&v2 < 1000.0)
    {
      v38 = 1;
      if (*&v2 <= 500.0)
      {
        if (*&v2 <= 100.0)
        {
          if (*&v2 <= 30.0)
          {
            if (*&v2 <= 5.0)
            {
              v37 = floor(*&v2);
            }

            else
            {
              location[12] = v2;
              location[11] = COERCE_ID(5.0);
              v37 = round(*&v2 / 5.0) * 5.0;
            }
          }

          else
          {
            location[14] = v2;
            location[13] = COERCE_ID(10.0);
            v37 = round(*&v2 / 10.0) * 10.0;
          }
        }

        else
        {
          location[16] = v2;
          location[15] = 0x4049000000000000;
          v37 = round(*&v2 / 50.0) * 50.0;
        }
      }

      else
      {
        location[18] = v2;
        location[17] = 0x4059000000000000;
        v37 = round(*&v2 / 100.0) * 100.0;
      }
    }

    if (v38)
    {
      v30 = objc_alloc(MEMORY[0x277CCAB10]);
      v31 = [MEMORY[0x277CCAE20] meters];
      v3 = [v30 initWithDoubleValue:v37 unit:?];
      v4 = v40;
      v40 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v31);
    }

    else
    {
      v28 = location[0];
      v29 = [MEMORY[0x277CCAE20] kilometers];
      v5 = [v28 measurementByConvertingToUnit:?];
      v6 = v40;
      v40 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v29);
    }

    objc_storeStrong(&v39, 0);
  }

  else
  {
    v24 = location[0];
    v26 = [MEMORY[0x277CCAE20] feet];
    v25 = [v24 measurementByConvertingToUnit:?];
    [v25 doubleValue];
    v27 = v7;
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    if (*&v27 < 1000.0)
    {
      if (*&v27 <= 500.0)
      {
        if (*&v27 <= 100.0)
        {
          if (*&v27 <= 30.0)
          {
            location[20] = v27;
            location[19] = COERCE_ID(5.0);
            v36 = floor(*&v27 / 5.0) * 5.0;
          }

          else
          {
            location[2] = v27;
            location[1] = COERCE_ID(10.0);
            v36 = round(*&v27 / 10.0) * 10.0;
          }
        }

        else
        {
          location[4] = v27;
          location[3] = 0x4049000000000000;
          v36 = round(*&v27 / 50.0) * 50.0;
        }
      }

      else
      {
        location[6] = v27;
        location[5] = 0x4059000000000000;
        v36 = round(*&v27 / 100.0) * 100.0;
      }

      v15 = objc_alloc(MEMORY[0x277CCAB10]);
      v16 = [MEMORY[0x277CCAE20] feet];
      v11 = [v15 initWithDoubleValue:v36 unit:?];
      v12 = v40;
      v40 = v11;
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v16);
    }

    else
    {
      v20 = location[0];
      v22 = [MEMORY[0x277CCAE20] miles];
      v21 = [v20 measurementByConvertingToUnit:?];
      [v21 doubleValue];
      v23 = v8;
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      if (*&v23 < 1.0)
      {
        location[8] = v23;
        location[7] = 0x3FA999999999999ALL;
        v19 = round(*&v23 / 0.05) * 0.05;
      }

      else
      {
        location[10] = v23;
        location[9] = 0x3FB999999999999ALL;
        v19 = round(*&v23 / 0.1) * 0.1;
      }

      v17 = objc_alloc(MEMORY[0x277CCAB10]);
      v18 = [MEMORY[0x277CCAE20] miles];
      v9 = [v17 initWithDoubleValue:v19 unit:?];
      v10 = v40;
      v40 = v9;
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v18);
    }
  }

  v14 = MEMORY[0x277D82BE0](v40);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);

  return v14;
}

id CPSNumberFormatterForDistance(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v4 setNumberStyle:1];
  [location doubleValue];
  if (v1 < 100.0)
  {
    [v4 setMaximumFractionDigits:1];
  }

  else
  {
    [v4 setMaximumFractionDigits:0];
  }

  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);

  return v3;
}

void CPSFormattedDistanceSepartedShortUnit(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v11 = 0;
  objc_storeStrong(&v11, a2);
  v10 = CPSNumberFormatterForDistance(location);
  v4 = MEMORY[0x277CCABB0];
  [location doubleValue];
  v5 = [v4 numberWithDouble:?];
  v9 = [v10 stringFromNumber:?];
  MEMORY[0x277D82BD8](v5);
  v8 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v8 setUnitStyle:?];
  [v8 setUnitOptions:1];
  v6 = [location unit];
  v7 = [v8 stringFromUnit:?];
  v2 = MEMORY[0x277D82BD8](v6);
  if (v11)
  {
    (*(v11 + 2))(v11, v9, v7, v2);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

id CPSFormattedDistanceWithMediumUnit(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = objc_alloc_init(MEMORY[0x277CCAB18]);
  v3 = v6;
  v4 = CPSNumberFormatterForDistance(location);
  [v3 setNumberFormatter:?];
  *&v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [v6 setUnitStyle:{2, v1}];
  [v6 setUnitOptions:1];
  v5 = [v6 stringFromMeasurement:location];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);

  return v5;
}

id CPSRequesterIdentifierForBundleIdentifier(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.CarPlayTemplateUIHost:%@", location];
  objc_storeStrong(&location, 0);

  return v2;
}

id _CPSAlertBackgroundColorForAction(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = [location style];
  switch(v3)
  {
    case 0:
      goto LABEL_4;
    case 1:
      v5 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
      break;
    case 2:
      v5 = [MEMORY[0x277D75348] systemRedColor];
      break;
    default:
LABEL_4:
      v5 = [MEMORY[0x277D75348] systemBlueColor];
      break;
  }

  objc_storeStrong(&location, 0);
  v1 = v5;

  return v1;
}

id CPSGlassView.glassTintColor.getter()
{
  v1 = OBJC_IVAR____TtC14CarPlaySupport12CPSGlassView_glassTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CPSGlassView.glassTintColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC14CarPlaySupport12CPSGlassView_glassTintColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  CPSGlassView.glassTintColor.didset();
}

id key path getter for CPSGlassView.glassTintColor : CPSGlassView@<X0>(void *a1@<X8>)
{
  result = CPSGlassView.glassTintColor.getter();
  *a1 = result;
  return result;
}

void CPSGlassView.glassTintColor.didset()
{
  v1 = OBJC_IVAR____TtC14CarPlaySupport12CPSGlassView_glassTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for UIColor();
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    CPSGlassView.updateBackground()();
  }
}

void (*CPSGlassView.glassTintColor.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC14CarPlaySupport12CPSGlassView_glassTintColor;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return CPSGlassView.glassTintColor.modify;
}

void CPSGlassView.glassTintColor.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    CPSGlassView.glassTintColor.setter(v3);
  }

  else
  {
    CPSGlassView.glassTintColor.setter(v3);
  }

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id CPSGlassView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CPSGlassView.init()()
{
  v0 = *(swift_getObjectType() + 112);
  v1 = v0(*MEMORY[0x277CDA138], 0.0);
  swift_deallocPartialClassInstance();
  return v1;
}

id CPSGlassView.init(cornerRadius:cornerCurve:)(void *a1, double a2)
{
  v5 = OBJC_IVAR____TtC14CarPlaySupport12CPSGlassView_glassTintColor;
  *&v2[v5] = [objc_opt_self() clearColor];
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CPSGlassView();
  v6 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setClipsToBounds_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [v6 layer];
  [v8 setCornerCurve_];

  CPSGlassView.updateBackground()();
  return v6;
}

id CPSGlassView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CPSGlassView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC14CarPlaySupport12CPSGlassView_glassTintColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CPSGlassView.updateBackground()()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for _Glass();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static _Glass._GlassVariant.regular.getter();
  _Glass._GlassVariant.excludingShadow()();
  (*(v4 + 8))(v7, v2);
  _Glass.init(_:smoothness:)();
  v14 = OBJC_IVAR____TtC14CarPlaySupport12CPSGlassView_glassTintColor;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v19[3] = v8;
  v19[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v19);
  v16 = v15;
  _Glass.tint(_:)();

  (*(v10 + 8))(v13, v8);
  return UIView._background.setter();
}

id CPSGlassView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CPSGlassView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPSGlassView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static CPSGlassView.createWithTemplateConfiguration()()
{
  v0 = *MEMORY[0x277CDA138];
  v1 = objc_allocWithZone(type metadata accessor for CPSGlassView());
  return CPSGlassView.init(cornerRadius:cornerCurve:)(v0, 28.0);
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

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

uint64_t static CPSPointsOfInterestPickerCell.identifier.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t CPSPointsOfInterestPickerCell.chosen.getter()
{
  v1 = OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_chosen;
  swift_beginAccess();
  return *(v0 + v1);
}

id CPSPointsOfInterestPickerCell.chosen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_chosen;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

uint64_t CPSPointsOfInterestPickerCell.chosen.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_0_0();
  return OUTLINED_FUNCTION_4();
}

uint64_t CPSPointsOfInterestPickerCell.title.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_0_0();
  return OUTLINED_FUNCTION_4();
}

id @objc CPSPointsOfInterestPickerCell.title.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = MEMORY[0x245D29B10](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void @objc CPSPointsOfInterestPickerCell.title.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t key path setter for CPSPointsOfInterestPickerCell.title : CPSPointsOfInterestPickerCell(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t CPSPointsOfInterestPickerCell.subtitle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_0_0();
  return OUTLINED_FUNCTION_4();
}

uint64_t CPSPointsOfInterestPickerCell.title.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

id CPSPointsOfInterestPickerCell.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[*a3];
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 1) = a2;

  return [v3 setNeedsUpdateConfiguration];
}

uint64_t CPSPointsOfInterestPickerCell.tertiaryTitle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_0_0();
  return OUTLINED_FUNCTION_4();
}

id CPSPointsOfInterestPickerCell.chosen.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateConfiguration];
  }

  return result;
}

Swift::Void __swiftcall CPSPointsOfInterestPickerCell.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for CPSPointsOfInterestPickerCell();
  objc_msgSendSuper2(&v5, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  [v2 setNeedsUpdateConfiguration];
}

uint64_t CPSPointsOfInterestPickerCell.updateConfiguration(using:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v25 - v3;
  type metadata accessor for UIBackgroundConfiguration();
  OUTLINED_FUNCTION_5();
  v27 = v5;
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAUyANSgGG_Qo_AA016_ForegroundStyleQ0VyAA5ColorVGGSg_AIyA_A5_GSgA9_tGGAA05EmptyG0VGMd);
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
  {
    v14 = 1;
  }

  else
  {
    v14 = UICellConfigurationState.isSelected.getter();
  }

  v15 = MEMORY[0x28223BE20](v14);
  *(&v25 - 2) = v0;
  *(&v25 - 8) = v15 & 1;
  v16 = &selRef__carSystemFocusColor;
  if ((v15 & 1) == 0)
  {
    v16 = &selRef_clearColor;
  }

  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGASyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGSg_AGyAYA3_GSgA7_tGGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGASyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGSg_AGyAYA3_GSgA7_tGGMd);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v30[3] = v8;
  v30[4] = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?)>>, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAUyANSgGG_Qo_AA016_ForegroundStyleQ0VyAA5ColorVGGSg_AIyA_A5_GSgA9_tGGAA05EmptyG0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v30);
  UIHostingConfiguration.margins(_:_:)();
  (*(v10 + 8))(v13, v8);
  MEMORY[0x245D29B60](v30);
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.cornerRadius.setter();
  v17 = OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_chosen;
  swift_beginAccess();
  LODWORD(v17) = *(v1 + v17);
  v18 = objc_opt_self();
  v19 = v26;
  if (v17)
  {
    v19 = &selRef__carSystemQuaternaryColor;
  }

  v20 = [v18 *v19];
  UIBackgroundConfiguration.backgroundColor.setter();
  v22 = v27;
  v21 = v28;
  v23 = v29;
  (*(v27 + 16))(v29, v7, v28);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v21);
  MEMORY[0x245D29B70](v23);
  return (*(v22 + 8))(v7, v21);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in CPSPointsOfInterestPickerCell.updateConfiguration(using:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAWyAPSgGG_Qo_AA016_ForegroundStyleR0VyAA5ColorVGGSg_AKyA1_A7_GSgA11_tGGMd);
  return closure #1 in closure #1 in CPSPointsOfInterestPickerCell.updateConfiguration(using:)(a1, a2, a3 + *(v6 + 44));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CPSPointsOfInterestPickerCell.updateConfiguration(using:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAFSgGG_Qo_Md);
  v98 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v97 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v99 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v79 - v16;
  v18 = (a1 + OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_title);
  swift_beginAccess();
  v19 = v18[1];
  v100 = v17;
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = *v18;
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = *v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v94 = v5;
    v95 = a1;
    __dst[0] = v20;
    __dst[1] = v19;
    lazy protocol witness table accessor for type String and conformance String();

    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    KeyPath = swift_getKeyPath();
    v30 = static Font.subheadline.getter();
    LODWORD(v96) = v3;
    v3 = v30;
    v31 = swift_getKeyPath();
    LOBYTE(v102[0]) = v26 & 1;
    LOBYTE(v101[0]) = 0;
    v103[0] = v22;
    v103[1] = v24;
    LOBYTE(v103[2]) = v26 & 1;
    v103[3] = v28;
    v103[4] = KeyPath;
    v103[5] = 1;
    LOBYTE(v103[6]) = 0;
    v103[7] = v31;
    v103[8] = v3;
    static Font.Weight.medium.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v32 = v97;
    View.fontWeight(_:)();
    memcpy(__dst, v103, 0x48uLL);
    LOBYTE(v3) = v96;
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?(__dst, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMd);
    if (v3)
    {
      v33 = [objc_opt_self() _carSystemFocusLabelColor];
      v34 = Color.init(uiColor:)();
    }

    else
    {
      v34 = static Color.primary.getter();
    }

    v35 = v34;
    v36 = v100;
    (*(v98 + 32))(v10, v32, v94);
    *&v10[*(v7 + 36)] = v35;
    sub_242FED874(v10, v12);
    sub_242FED874(v12, v36);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v7);
    a1 = v95;
  }

  else
  {
LABEL_7:
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v7);
  }

  v37 = (a1 + OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_subtitle);
  swift_beginAccess();
  v38 = v37[1];
  if (!v38)
  {
    goto LABEL_18;
  }

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    __dst[0] = *v37;
    __dst[1] = v38;
    lazy protocol witness table accessor for type String and conformance String();

    v40 = Text.init<A>(_:)();
    v97 = v41;
    v98 = v40;
    v43 = v42;
    v96 = v44;
    v95 = swift_getKeyPath();
    v94 = static Font.caption.getter();
    v45 = swift_getKeyPath();
    LOBYTE(__dst[0]) = v43 & 1;
    LOBYTE(v103[0]) = 0;
    v46 = v43 & 1;
    v92 = 0;
    v93 = v45;
    v47 = objc_opt_self();
    if (v3)
    {
      v48 = &selRef__carSystemFocusPrimaryColor;
    }

    else
    {
      v48 = &selRef__carSystemSecondaryColor;
    }

    v49 = [v47 *v48];
    v50 = Color.init(uiColor:)();
    v90 = 1;
    v91 = v50;
  }

  else
  {
LABEL_18:
    v97 = 0;
    v98 = 0;
    v95 = 0;
    v96 = 0;
    v90 = 0;
    v91 = 0;
    v93 = 0;
    v94 = 0;
    v92 = 0;
    v46 = 0;
  }

  v51 = (a1 + OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_tertiaryTitle);
  swift_beginAccess();
  v52 = v51[1];
  if (v52)
  {
    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = *v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      __dst[0] = *v51;
      __dst[1] = v52;
      lazy protocol witness table accessor for type String and conformance String();

      v54 = Text.init<A>(_:)();
      v87 = v55;
      v88 = v54;
      v57 = v56;
      v86 = v58;
      v85 = swift_getKeyPath();
      v84 = static Font.caption.getter();
      v59 = v3;
      v60 = swift_getKeyPath();
      LOBYTE(__dst[0]) = v57 & 1;
      LOBYTE(v103[0]) = 0;
      v61 = objc_opt_self();
      v62 = (v59 & 1) == 0;
      v52 = v57 & 1;
      if (v62)
      {
        v63 = &selRef__carSystemSecondaryColor;
      }

      else
      {
        v63 = &selRef__carSystemFocusPrimaryColor;
      }

      v64 = [v61 *v63];
      v83 = Color.init(uiColor:)();
      v65 = 1;
    }

    else
    {
      v87 = 0;
      v88 = 0;
      v85 = 0;
      v86 = 0;
      v65 = 0;
      v60 = 0;
      v83 = 0;
      v84 = 0;
      v52 = 0;
    }
  }

  else
  {
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v65 = 0;
    v60 = 0;
    v83 = 0;
    v84 = 0;
  }

  v80 = v60;
  v81 = v52;
  v66 = v99;
  sub_242FED744(v100, v99);
  v67 = v89;
  sub_242FED744(v66, v89);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyAUA_GSgA3_tMd);
  v69 = *(v68 + 48);
  v101[0] = v98;
  v101[1] = v97;
  v101[2] = v46;
  v101[3] = v96;
  v82 = v46;
  v101[4] = v95;
  v101[5] = v90;
  v101[6] = v92;
  v101[7] = v93;
  v101[8] = v94;
  v101[9] = v91;
  memcpy((v67 + v69), v101, 0x50uLL);
  v70 = *(v68 + 64);
  v71 = v87;
  v72 = v88;
  v102[0] = v88;
  v102[1] = v87;
  v102[2] = v52;
  v74 = v85;
  v73 = v86;
  v102[3] = v86;
  v102[4] = v85;
  v75 = v65;
  v102[5] = v65;
  v102[6] = 0;
  v102[7] = v60;
  v77 = v83;
  v76 = v84;
  v102[8] = v84;
  v102[9] = v83;
  memcpy((v67 + v70), v102, 0x50uLL);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?(v101, __dst);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?(v102, __dst);
  sub_242FED7AC(v100);
  v103[0] = v72;
  v103[1] = v71;
  v103[2] = v81;
  v103[3] = v73;
  v103[4] = v74;
  v103[5] = v75;
  v103[6] = 0;
  v103[7] = v80;
  v103[8] = v76;
  v103[9] = v77;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?(v103, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
  __dst[0] = v98;
  __dst[1] = v97;
  __dst[2] = v82;
  __dst[3] = v96;
  __dst[4] = v95;
  __dst[5] = v90;
  __dst[6] = v92;
  __dst[7] = v93;
  __dst[8] = v94;
  __dst[9] = v91;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?(__dst, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
  return sub_242FED7AC(v99);
}

id CPSPointsOfInterestPickerCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = OUTLINED_FUNCTION_7(a1, a2);
    v7 = MEMORY[0x245D29B10](v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v8;
}

id CPSPointsOfInterestPickerCell.init(style:reuseIdentifier:)(uint64_t a1)
{
  v1[OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_chosen] = 0;
  OUTLINED_FUNCTION_2(OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_title);
  OUTLINED_FUNCTION_2(OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_subtitle);
  OUTLINED_FUNCTION_2(OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_tertiaryTitle);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_7(v3, v4);
    v7 = MEMORY[0x245D29B10](v6);
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for CPSPointsOfInterestPickerCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id CPSPointsOfInterestPickerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CPSPointsOfInterestPickerCell.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_chosen] = 0;
  OUTLINED_FUNCTION_2(OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_title);
  OUTLINED_FUNCTION_2(OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_subtitle);
  v3 = &v1[OBJC_IVAR____TtC14CarPlaySupport29CPSPointsOfInterestPickerCell_tertiaryTitle];
  v4 = type metadata accessor for CPSPointsOfInterestPickerCell();
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id CPSPointsOfInterestPickerCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPSPointsOfInterestPickerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?)>> and conformance VStack<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_7(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>?(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

unint64_t ContactButtonType.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x245D29BD0](a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x245D29BD0](a2);
  return Hasher._finalize()();
}

uint64_t ContactButtonRepresentation.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  outlined init with copy of Environment<ColorScheme>.Content(v1 + OBJC_IVAR___CPSContactButtonRepresentation__colorScheme, &v15 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    OUTLINED_FUNCTION_0_1();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactButtonType@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ContactButtonType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ContactButtonRepresentation.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPSContactButtonRepresentation_identifier;
  swift_beginAccess();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t ContactButtonRepresentation.identifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSContactButtonRepresentation_identifier;
  swift_beginAccess();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id ContactButtonRepresentation.init(identifier:title:image:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR___CPSContactButtonRepresentation__colorScheme;
  *&v5[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  v11 = &v5[OBJC_IVAR___CPSContactButtonRepresentation_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR___CPSContactButtonRepresentation_image;
  *&v5[OBJC_IVAR___CPSContactButtonRepresentation_image] = 0;
  v13 = OBJC_IVAR___CPSContactButtonRepresentation_identifier;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v5[v13], a1, v14);
  *v11 = a2;
  *(v11 + 1) = a3;
  *&v5[v12] = a4;
  *&v5[OBJC_IVAR___CPSContactButtonRepresentation_type] = a5;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for ContactButtonRepresentation(0);
  v16 = objc_msgSendSuper2(&v19, sel_init);
  (*(v15 + 8))(a1, v14);
  return v16;
}

id ContactButtonRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContactButtonRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactButtonRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ContactActionButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v42 = type metadata accessor for Glass();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ButtonStyleConfiguration.Label();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  LODWORD(v39) = a3;
  v38 = v15;
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v18 = static Color.primary.getter();
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v15;

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v44 = v7;
    v21 = v20;
    v22 = v43;
    os_log(_:dso:log:_:_:)();

    v7 = v44;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v22, 0);
    (*(v14 + 8))(v17, v19);
    if (v46 != 1)
    {
      goto LABEL_3;
    }
  }

  v18 = static Color.white.getter();
LABEL_6:
  v44 = v18;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    goto LABEL_11;
  }

  if ((v39 & 1) == 0)
  {
    v24 = v43;

    static os_log_type_t.fault.getter();
    v37 = v12;
    v25 = static Log.runtimeIssuesLog.getter();
    v39 = a1;
    v26 = v7;
    v27 = v25;
    v12 = v37;
    os_log(_:dso:log:_:_:)();

    v7 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v24, 0);
    (*(v14 + 8))(v17, v38);
    if (v45 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v28 = [objc_opt_self() _carSystemFocusColor];
    v23 = Color.init(uiColor:)();
    goto LABEL_12;
  }

  if (v43)
  {
    goto LABEL_11;
  }

LABEL_9:
  v23 = static Color.clear.getter();
LABEL_12:
  v29 = v23;
  ButtonStyleConfiguration.label.getter();
  static Glass.regular.getter();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x277CDE278]);
  lazy protocol witness table accessor for type Circle and conformance Circle();
  v31 = v40;
  v30 = v41;
  View.glassEffect<A>(_:in:)();
  (*(v7 + 8))(v9, v42);
  (*(v10 + 8))(v12, v31);
  v32 = static Edge.Set.all.getter();
  v33 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA24ButtonStyleConfigurationV5LabelV_AA6CircleVQo_AA011_BackgroundL8ModifierVyAA5ColorVGGMd) + 36);
  *v33 = v29;
  *(v33 + 8) = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA24ButtonStyleConfigurationV5LabelV_AA6CircleVQo_AA011_BackgroundL8ModifierVyAA5ColorVGGAA011_ForegroundlQ0VyAUGGMd);
  *(v30 + *(v34 + 36)) = v44;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA24ButtonStyleConfigurationV5LabelV_AA6CircleVQo_AA011_BackgroundL8ModifierVyAA5ColorVGGAA011_ForegroundlQ0VyAUGGAA05_ClipG0VyAPGGMd);
  *(v30 + *(result + 36)) = 256;
  return result;
}

uint64_t ContactActionButtonView.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of Environment<ColorScheme>.Content(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ContactActionButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonL0Rd__lFQOyAA0M0VyAA08ModifiedJ0VyAA5ImageVAA08_PaddingG0VGG_14CarPlaySupport013ContactActionmL033_E85FB5A4CE27235491446378D391A496LLVQo_AmAEANyQrqd__AaORd__lFQOyAQyASyAuA06_FrameG0VGG_A1_Qo_G_ASyAA4TextVA4_GtGGMd);
  return closure #1 in ContactActionButtonView.body.getter(v1, a1 + *(v3 + 44));
}

uint64_t closure #1 in ContactActionButtonView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd);
  v56 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v4 = &v54 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGG_14CarPlaySupport013ContactActionfE033_E85FB5A4CE27235491446378D391A496LLVQo_Md);
  v58 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = &v54 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGG_14CarPlaySupport013ContactActioniH033_E85FB5A4CE27235491446378D391A496LLVQo_AgAEAHyQrqd__AaIRd__lFQOyAKyAMyAoA06_FrameM0VGG_AWQo__GMd);
  MEMORY[0x28223BE20](v61);
  v63 = &v54 - v6;
  v7 = type metadata accessor for ContactActionButtonView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMd);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = &v54 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGG_14CarPlaySupport013ContactActionfE033_E85FB5A4CE27235491446378D391A496LLVQo_Md);
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGG_14CarPlaySupport013ContactActionhG033_E85FB5A4CE27235491446378D391A496LLVQo_AeAEAFyQrqd__AaGRd__lFQOyAIyAKyAmA06_FrameL0VGG_AUQo_GMd);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v67 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v54 - v19;
  v60 = *(a1 + *(v8 + 32));
  v20 = *(v60 + OBJC_IVAR___CPSContactButtonRepresentation_type);
  outlined init with copy of ContactActionButtonView(a1, &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v23 = outlined init with take of ContactActionButtonView(&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  MEMORY[0x28223BE20](v23);
  *(&v54 - 2) = a1;
  if (v20 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
    Button.init(action:label:)();
    KeyPath = swift_getKeyPath();
    LOBYTE(v75) = 0;
    v24 = lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd);
    v25 = lazy protocol witness table accessor for type ContactActionButtonStyle and conformance ContactActionButtonStyle();
    v26 = v57;
    v27 = v64;
    View.buttonStyle<A>(_:)();

    (*(v56 + 8))(v4, v27);
    v28 = v58;
    v29 = v65;
    (*(v58 + 16))(v63, v26, v65);
    swift_storeEnumTagMultiPayload();
    v30 = lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _PaddingLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMd);
    KeyPath = v59;
    v75 = &unk_2855A57F0;
    v76 = v30;
    v77 = v25;
    swift_getOpaqueTypeConformance2();
    KeyPath = v27;
    v75 = &unk_2855A57F0;
    v76 = v24;
    v77 = v25;
    swift_getOpaqueTypeConformance2();
    v31 = v66;
    _ConditionalContent<>.init(storage:)();
    (*(v28 + 8))(v26, v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd);
    Button.init(action:label:)();
    KeyPath = swift_getKeyPath();
    LOBYTE(v75) = 0;
    v32 = lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _PaddingLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMd);
    v33 = lazy protocol witness table accessor for type ContactActionButtonStyle and conformance ContactActionButtonStyle();
    v34 = v59;
    View.buttonStyle<A>(_:)();

    (*(v55 + 8))(v12, v34);
    v35 = v62;
    (*(v13 + 16))(v63, v15, v62);
    swift_storeEnumTagMultiPayload();
    KeyPath = v34;
    v75 = &unk_2855A57F0;
    v76 = v32;
    v77 = v33;
    swift_getOpaqueTypeConformance2();
    v36 = lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd);
    KeyPath = v64;
    v75 = &unk_2855A57F0;
    v76 = v36;
    v77 = v33;
    swift_getOpaqueTypeConformance2();
    v31 = v66;
    _ConditionalContent<>.init(storage:)();
    (*(v13 + 8))(v15, v35);
  }

  KeyPath = ContactButtonRepresentation.buttonTitle.getter();
  v75 = v37;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  static Font.caption.getter();
  v43 = Text.font(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  outlined consume of Text.Storage(v38, v40, v42 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50 = v67;
  sub_242FEDB34(v31, v67);
  v51 = v68;
  sub_242FEDB34(v50, v68);
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGG_14CarPlaySupport013ContactActionhG033_E85FB5A4CE27235491446378D391A496LLVQo_AeAEAFyQrqd__AaGRd__lFQOyAIyAKyAmA06_FrameL0VGG_AUQo_G_AKyAA4TextVAXGtMd) + 48);
  *&__src[0] = v43;
  *(&__src[0] + 1) = v45;
  LOBYTE(__src[1]) = v47 & 1;
  *(&__src[1] + 1) = v72[0];
  DWORD1(__src[1]) = *(v72 + 3);
  *(&__src[1] + 1) = v49;
  __src[4] = v71;
  __src[3] = v70;
  __src[2] = v69;
  memcpy((v51 + v52), __src, 0x50uLL);
  outlined init with copy of Environment<ColorScheme>.Content(__src, &KeyPath, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
  sub_242FEDB9C(v31);
  KeyPath = v43;
  v75 = v45;
  LOBYTE(v76) = v47 & 1;
  *(&v76 + 1) = v72[0];
  HIDWORD(v76) = *(v72 + 3);
  v77 = v49;
  v78 = v69;
  v79 = v70;
  v80 = v71;
  outlined destroy of Environment<ColorScheme>(&KeyPath, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
  return sub_242FEDB9C(v50);
}

uint64_t closure #2 in closure #1 in ContactActionButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  type metadata accessor for ContactActionButtonView(0);
  ContactActionButtonView.colorScheme.getter(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v9 = static ColorScheme.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  ContactButtonRepresentation.buttonImage(traitCollection:)(v12);

  v13 = Image.init(uiImage:)();
  LOBYTE(v12) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 48) = 0;
  return result;
}

void closure #1 in closure #1 in ContactActionButtonView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactActionButtonView(0);
  v9 = *(a1 + *(v8 + 20));
  v10 = *(a1 + *(v8 + 24));
  v11 = OBJC_IVAR___CPSContactButtonRepresentation_identifier;
  swift_beginAccess();
  (*(v4 + 16))(v7, v10 + v11, v2);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v2);
  [v9 tappedButton_];
}

double closure #4 in closure #1 in ContactActionButtonView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v24 = type metadata accessor for Image.ResizingMode();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  type metadata accessor for ContactActionButtonView(0);
  ContactActionButtonView.colorScheme.getter(v11);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v5);
  v12 = static ColorScheme.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  ContactButtonRepresentation.buttonImage(traitCollection:)(v15);

  Image.init(uiImage:)();
  v16 = v24;
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v24);
  v17 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  result = *&v29;
  *(a1 + 40) = v29;
  return result;
}

double ContactActionsView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA7ForEachVySay14CarPlaySupport27ContactButtonRepresentationCG10Foundation4UUIDVAIyAN0o6ActionpD033_E85FB5A4CE27235491446378D391A496LLV_AKtGGtGGMd);
  closure #1 in ContactActionsView.body.getter(a1, a2, (a3 + *(v6 + 44)));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVySay14CarPlaySupport27ContactButtonRepresentationCG10Foundation4UUIDVAGyAL0n6ActionoG033_E85FB5A4CE27235491446378D391A496LLV_AItGGtGGAA14_PaddingLayoutVGMd) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  return result;
}

uint64_t closure #1 in ContactActionsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14CarPlaySupport27ContactButtonRepresentationCG10Foundation4UUIDVAA9TupleViewVyAD0h6ActioniN033_E85FB5A4CE27235491446378D391A496LLV_AA6SpacerVtGGMd);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v21 = a1;
  v19[1] = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CarPlaySupport27ContactButtonRepresentationCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy14CarPlaySupport019ContactActionButtonD033_E85FB5A4CE27235491446378D391A496LLV_AA6SpacerVtGMd);
  lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type [ContactButtonRepresentation] and conformance [A], &_sSay14CarPlaySupport27ContactButtonRepresentationCGMd);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ContactActionButtonView, Spacer)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy14CarPlaySupport019ContactActionButtonD033_E85FB5A4CE27235491446378D391A496LLV_AA6SpacerVtGMd);
  ForEach<>.init(_:id:content:)();
  v13 = *(v6 + 16);
  v13(v9, v11, v5);
  v14 = v20;
  *v20 = 0;
  *(v14 + 8) = 1;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA7ForEachVySay14CarPlaySupport27ContactButtonRepresentationCG10Foundation4UUIDVAA9TupleViewVyAF0i6ActionjO033_E85FB5A4CE27235491446378D391A496LLV_ACtGGtMd);
  v13(&v15[*(v16 + 48)], v9, v5);
  v17 = *(v6 + 8);
  v17(v11, v5);
  return (v17)(v9, v5);
}

uint64_t key path setter for ContactButtonRepresentation.identifier : ContactButtonRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return ContactButtonRepresentation.identifier.setter(v4);
}

uint64_t closure #1 in closure #1 in ContactActionsView.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContactActionButtonView(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v17 - v11);
  v13 = *a1;
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v7 + 28)) = a2;
  *(v12 + *(v7 + 32)) = v13;
  outlined init with copy of ContactActionButtonView(v12, v10);
  outlined init with copy of ContactActionButtonView(v10, a3);
  v14 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlaySupport23ContactActionButtonView33_E85FB5A4CE27235491446378D391A496LLV_7SwiftUI6SpacerVtMd) + 48);
  *v14 = 0;
  *(v14 + 8) = 1;
  swift_unknownObjectRetain();
  v15 = v13;
  outlined destroy of ContactActionButtonView(v12);
  return outlined destroy of ContactActionButtonView(v10);
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t lazy protocol witness table accessor for type ContactButtonType and conformance ContactButtonType()
{
  result = lazy protocol witness table cache variable for type ContactButtonType and conformance ContactButtonType;
  if (!lazy protocol witness table cache variable for type ContactButtonType and conformance ContactButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactButtonType and conformance ContactButtonType);
  }

  return result;
}

void type metadata completion function for ContactButtonRepresentation()
{
  type metadata accessor for Environment<ColorScheme>.Content(319, &lazy cache variable for type metadata for Environment<ColorScheme>.Content, MEMORY[0x277CDF458]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactActionsView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactActionsView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for ContactButtonRepresentation(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of ContactActionButtonView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactActionButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ContactActionButtonView(uint64_t a1)
{
  v2 = type metadata accessor for ContactActionButtonView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for ContactActionButtonView()
{
  type metadata accessor for Environment<ColorScheme>.Content(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContactActionHandling();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContactButtonRepresentation(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<ColorScheme>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ColorScheme();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t type metadata accessor for ContactActionHandling()
{
  result = lazy cache variable for type metadata for ContactActionHandling;
  if (!lazy cache variable for type metadata for ContactActionHandling)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContactActionHandling);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, ForEach<[ContactButtonRepresentation], UUID, TupleView<(ContactActionButtonView, Spacer)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ForEach<[ContactButtonRepresentation], UUID, TupleView<(ContactActionButtonView, Spacer)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ForEach<[ContactButtonRepresentation], UUID, TupleView<(ContactActionButtonView, Spacer)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVySay14CarPlaySupport27ContactButtonRepresentationCG10Foundation4UUIDVAGyAL0n6ActionoG033_E85FB5A4CE27235491446378D391A496LLV_AItGGtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ForEach<[ContactButtonRepresentation], UUID, TupleView<(ContactActionButtonView, Spacer)>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVySay14CarPlaySupport27ContactButtonRepresentationCG10Foundation4UUIDVAEyAJ0l6ActionmE033_E85FB5A4CE27235491446378D391A496LLV_AGtGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ForEach<[ContactButtonRepresentation], UUID, TupleView<(ContactActionButtonView, Spacer)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ContactActionButtonView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactActionButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ContactActionButtonStyle and conformance ContactActionButtonStyle()
{
  result = lazy protocol witness table cache variable for type ContactActionButtonStyle and conformance ContactActionButtonStyle;
  if (!lazy protocol witness table cache variable for type ContactActionButtonStyle and conformance ContactActionButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactActionButtonStyle and conformance ContactActionButtonStyle);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with copy of Environment<ColorScheme>.Content(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of Environment<ColorScheme>(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_24Tm()
{
  v1 = type metadata accessor for ContactActionButtonView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    OUTLINED_FUNCTION_0_1();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactActionButtonStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactActionButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA24ButtonStyleConfigurationV5LabelV_AA6CircleVQo_AA011_BackgroundL8ModifierVyAA5ColorVGGAA011_ForegroundlQ0VyAUGGAA05_ClipG0VyAPGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA24ButtonStyleConfigurationV5LabelV_AA6CircleVQo_AA011_BackgroundL8ModifierVyAA5ColorVGGAA011_ForegroundlQ0VyAUGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11glassEffect_2inQrAA5GlassV_qd__tAA5ShapeRd__lFQOyAA24ButtonStyleConfigurationV5LabelV_AA6CircleVQo_AA011_BackgroundL8ModifierVyAA5ColorVGGMd);
    type metadata accessor for ButtonStyleConfiguration.Label();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x277CDE278]);
    lazy protocol witness table accessor for type Circle and conformance Circle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.glassEffect<A>(_:in:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ContactButtonRepresentation] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIImage __swiftcall ContactButtonRepresentation.buttonImage(traitCollection:)(UITraitCollection traitCollection)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = v34 - v5;
  switch(*&v1[OBJC_IVAR___CPSContactButtonRepresentation_type])
  {
    case 0:
      v7 = MEMORY[0x245D29B10](0x2E6567617373656DLL, 0xEC0000006C6C6966);
      ContactButtonRepresentation.colorScheme.getter(v6);
      v8 = OUTLINED_FUNCTION_3_0();
      v9(v8);
      static ColorScheme.== infix(_:_:)();
      v10 = OUTLINED_FUNCTION_1_1();
      v2(v10);
      (v2)(v6, v3);
      if (v1)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      v12 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v14 = OUTLINED_FUNCTION_2_0(v12, v13);

      if (one-time initialization token for actionConfiguration != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    case 1:
      v15 = *&v1[OBJC_IVAR___CPSContactButtonRepresentation_image];
      if (v15)
      {
        goto LABEL_18;
      }

      v25 = MEMORY[0x245D29B10](0x69662E656E6F6870, 0xEA00000000006C6CLL);
      ContactButtonRepresentation.colorScheme.getter(v6);
      v26 = OUTLINED_FUNCTION_3_0();
      v27(v26);
      static ColorScheme.== infix(_:_:)();
      v28 = OUTLINED_FUNCTION_1_1();
      v2(v28);
      (v2)(v6, v3);
      if (v1)
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      v30 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v14 = OUTLINED_FUNCTION_2_0(v30, v31);

      if (one-time initialization token for actionConfiguration == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    case 2:
      v15 = *&v1[OBJC_IVAR___CPSContactButtonRepresentation_image];
      if (v15)
      {
        goto LABEL_18;
      }

      v16 = MEMORY[0x245D29B10](0xD00000000000002CLL, 0x80000002430FA290);
      ContactButtonRepresentation.colorScheme.getter(v6);
      v17 = OUTLINED_FUNCTION_3_0();
      v18(v17);
      static ColorScheme.== infix(_:_:)();
      v19 = OUTLINED_FUNCTION_1_1();
      v2(v19);
      (v2)(v6, v3);
      if (v1)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v21 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v14 = OUTLINED_FUNCTION_2_0(v21, v22);

      if (one-time initialization token for actionConfiguration == -1)
      {
        goto LABEL_25;
      }

LABEL_26:
      OUTLINED_FUNCTION_0_2(&one-time initialization token for actionConfiguration);
LABEL_25:
      v32 = [v14 imageWithSymbolConfiguration_];

      v33 = [v32 imageWithRenderingMode_];
      result.super.isa = v33;
      break;
    case 3:
      v15 = *&v1[OBJC_IVAR___CPSContactButtonRepresentation_image];
      if (v15)
      {
LABEL_18:

        result.super.isa = v15;
      }

      else
      {
        v23 = objc_allocWithZone(MEMORY[0x277D755B8]);

        result.super.isa = [v23 init];
      }

      break;
    default:
      v34[1] = *&v1[OBJC_IVAR___CPSContactButtonRepresentation_type];
      result.super.isa = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t ContactButtonRepresentation.buttonTitle.getter()
{
  v1 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v2 - 8);
  switch(*(v0 + OBJC_IVAR___CPSContactButtonRepresentation_type))
  {
    case 0:
      goto LABEL_8;
    case 1:
      v3 = (v0 + OBJC_IVAR___CPSContactButtonRepresentation_title);
      if (*(v0 + OBJC_IVAR___CPSContactButtonRepresentation_title + 8))
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 2:
      v3 = (v0 + OBJC_IVAR___CPSContactButtonRepresentation_title);
      if (*(v0 + OBJC_IVAR___CPSContactButtonRepresentation_title + 8))
      {
        goto LABEL_7;
      }

LABEL_8:
      String.LocalizationValue.init(stringLiteral:)();
      type metadata accessor for ContactButtonRepresentation(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      static Locale.current.getter();
      v4 = String.init(localized:table:bundle:locale:comment:)();
      goto LABEL_9;
    case 3:
      v3 = (v0 + OBJC_IVAR___CPSContactButtonRepresentation_title);
      if (*(v0 + OBJC_IVAR___CPSContactButtonRepresentation_title + 8))
      {
LABEL_7:
        v4 = *v3;
      }

      else
      {
        v4 = 0;
      }

LABEL_9:
      result = v4;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

objc_class *one-time initialization function for actionConfiguration()
{
  result = [objc_opt_self() configurationWithScale_];
  actionConfiguration.super.super.isa = result;
  return result;
}

id static UIViewController.contactActionHostingController(delegate:contactButtons:)(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy14CarPlaySupport18ContactActionsViewVGMd));

  swift_unknownObjectRetain();
  v2 = UIHostingController.init(rootView:)();
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id @objc static UIViewController.contactActionHostingController(delegate:contactButtons:)()
{
  type metadata accessor for ContactButtonRepresentation(0);
  v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = swift_unknownObjectRetain();
  v2 = static UIViewController.contactActionHostingController(delegate:contactButtons:)(v1, v0);
  swift_unknownObjectRelease();

  return v2;
}

void UIViewController.updateHostingController(delegate:contactButtons:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy14CarPlaySupport18ContactActionsViewVGMd);
  if (swift_dynamicCastClass())
  {
    v1 = v0;

    swift_unknownObjectRetain();
    dispatch thunk of UIHostingController.rootView.setter();
  }
}

uint64_t @objc UIViewController.updateHostingController(delegate:contactButtons:)(void *a1)
{
  type metadata accessor for ContactButtonRepresentation(0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v2 = a1;
  UIViewController.updateHostingController(delegate:contactButtons:)();
  swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return MEMORY[0x2821FEB58](a1, one-time initialization function for actionConfiguration);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = 22.0;

  return MEMORY[0x28214A748](v2, 5, a1, a2);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x282114898](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}