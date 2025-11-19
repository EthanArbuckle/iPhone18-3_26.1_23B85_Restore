@interface NSFormatter
@end

@implementation NSFormatter

void __111__NSFormatter_HFCharacteristicValueFormatting___hf_customValueFormatterForCharacteristicType_metadata_options___block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCFB50];
  v6[0] = *MEMORY[0x277CCF848];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03CF8;
  qword_280E03CF8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __111__NSFormatter_HFCharacteristicValueFormatting___hf_customValueFormatterForCharacteristicType_metadata_options___block_invoke_4()
{
  v10[11] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF7B8];
  v10[0] = *MEMORY[0x277CCF7A0];
  v10[1] = v1;
  v2 = *MEMORY[0x277CCF938];
  v10[2] = *MEMORY[0x277CCF7D0];
  v10[3] = v2;
  v3 = *MEMORY[0x277CCFA38];
  v10[4] = *MEMORY[0x277CCF9A8];
  v10[5] = v3;
  v4 = *MEMORY[0x277CCFA98];
  v10[6] = *MEMORY[0x277CCFA80];
  v10[7] = v4;
  v5 = *MEMORY[0x277CCFAA8];
  v10[8] = *MEMORY[0x277CCFAA0];
  v10[9] = v5;
  v10[10] = *MEMORY[0x277CCFAB0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:11];
  v7 = [v0 setWithArray:v6];
  v8 = qword_280E03D08;
  qword_280E03D08 = v7;

  v9 = *MEMORY[0x277D85DE8];
}

void __111__NSFormatter_HFCharacteristicValueFormatting___hf_customValueFormatterForCharacteristicType_metadata_options___block_invoke_6()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF7C8];
  v7[0] = *MEMORY[0x277CCF7C0];
  v7[1] = v1;
  v2 = *MEMORY[0x277CCF7B0];
  v7[2] = *MEMORY[0x277CCF7A8];
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_280E03D18;
  qword_280E03D18 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __111__NSFormatter_HFCharacteristicValueFormatting___hf_customValueFormatterForCharacteristicType_metadata_options___block_invoke_8()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF910];
  v6[0] = *MEMORY[0x277CCF9C0];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03D28;
  qword_280E03D28 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __111__NSFormatter_HFCharacteristicValueFormatting___hf_customValueFormatterForCharacteristicType_metadata_options___block_invoke_10()
{
  v8[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF998];
  v8[0] = *MEMORY[0x277CCF9C8];
  v8[1] = v1;
  v2 = *MEMORY[0x277CCF9D8];
  v8[2] = *MEMORY[0x277CCFAC0];
  v8[3] = v2;
  v3 = *MEMORY[0x277CCFBA0];
  v8[4] = *MEMORY[0x277CCF9D0];
  v8[5] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  v5 = [v0 setWithArray:v4];
  v6 = qword_280E03D38;
  qword_280E03D38 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

__CFString *__90__NSFormatter_HFCharacteristicValueFormatting___hf_positionFormatterWithMetadata_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
    v7 = &stru_2824B1A78;
    goto LABEL_10;
  }

  v5 = [v3 integerValue];
  v6 = *(a1 + 32);
  if (v5)
  {
    if (v5 != 100)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFFormatterPositionIntermediate_%@", *(a1 + 32)];
      v9 = [*(a1 + 40) stringForObjectValue:v4];
      v7 = HFLocalizedStringWithFormat(v8, @"%@", v10, v11, v12, v13, v14, v15, v9);

      goto LABEL_9;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"HFFormatterPositionOpen_%@", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"HFFormatterPositionClosed_%@", *(a1 + 32)];
  }
  v8 = ;
  v7 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);
LABEL_9:

LABEL_10:

  return v7;
}

id __83__NSFormatter_HFCharacteristicValueFormatting___hf_filterChangeIndicationFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = @"HFFormatterFilterChangeIndicationUnknown";
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 integerValue];
    v5 = @"HFFormatterFilterChangeIndicationChangeSoon";
    if (v4 != 1)
    {
      v5 = @"HFFormatterFilterChangeIndicationUnknown";
    }

    if (v4)
    {
      v3 = v5;
    }

    else
    {
      v3 = @"HFFormatterFilterChangeIndicationGood";
    }
  }

  v6 = _HFLocalizedStringWithDefaultValue(v3, v3, 1);

  return v6;
}

id __76__NSFormatter_HFCharacteristicValueFormatting___hf_partsPerMillionFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v11 = _HFLocalizedStringWithDefaultValue(@"HFFormatterPartsPerMillionUnit", @"HFFormatterPartsPerMillionUnit", 1);
  v9 = HFLocalizedStringWithFormat(@"HFFormatterPartsPerMillionFormatString", @"%@%@", v3, v4, v5, v6, v7, v8, v2);

  return v9;
}

id __84__NSFormatter_HFCharacteristicValueFormatting___hf_microgramsPerMeterCubedFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v11 = _HFLocalizedStringWithDefaultValue(@"HFFormatterMicrogramsPerCubicMeterUnit", @"HFFormatterMicrogramsPerCubicMeterUnit", 1);
  v9 = HFLocalizedStringWithFormat(@"HFFormatterMicrogramsPerCubicMeterFormatString", @"%@%@", v3, v4, v5, v6, v7, v8, v2);

  return v9;
}

id __71__NSFormatter_HFCharacteristicValueFormatting___hf_powerStateFormatter__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = MEMORY[0x277CBEC38];
  v3[1] = MEMORY[0x277CBEC28];
  v4[0] = @"HFCharacteristicValuePowerStateOn";
  v4[1] = @"HFCharacteristicValuePowerStateOff";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __70__NSFormatter_HFCharacteristicValueFormatting___hf_doorStateFormatter__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueDoorStateOpen";
  v4[1] = @"HFCharacteristicValueDoorStateClosed";
  v3[2] = &unk_282525230;
  v3[3] = &unk_282525248;
  v4[2] = @"HFCharacteristicValueDoorStateOpening";
  v4[3] = @"HFCharacteristicValueDoorStateClosing";
  v3[4] = &unk_282525260;
  v4[4] = @"HFCharacteristicValueDoorStateStopped";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __75__NSFormatter_HFCharacteristicValueFormatting___hf_heatingCoolingFormatter__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueHeatingCoolingOff";
  v4[1] = @"HFCharacteristicValueHeatingCoolingHeat";
  v3[2] = &unk_282525230;
  v3[3] = &unk_282525248;
  v4[2] = @"HFCharacteristicValueHeatingCoolingCool";
  v4[3] = @"HFCharacteristicValueHeatingCoolingAuto";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __78__NSFormatter_HFCharacteristicValueFormatting___hf_rotationDirectionFormatter__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueRotationDirectionClockwise";
  v4[1] = @"HFCharacteristicValueRotationDirectionCounterClockwise";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __76__NSFormatter_HFCharacteristicValueFormatting___hf_temperatureUnitFormatter__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueTemperatureUnitCelsius";
  v4[1] = @"HFCharacteristicValueTemperatureUnitFahrenheit";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __79__NSFormatter_HFCharacteristicValueFormatting___hf_lockMechanismStateFormatter__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueLockMechanismStateUnsecured";
  v4[1] = @"HFCharacteristicValueLockMechanismStateSecured";
  v3[2] = &unk_282525230;
  v3[3] = &unk_282525248;
  v4[2] = @"HFCharacteristicValueLockMechanismStateJammed";
  v4[3] = @"HFCharacteristicValueLockMechanismStateUnknown";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __79__NSFormatter_HFCharacteristicValueFormatting___hf_airParticulateSizeFormatter__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = &unk_282525200;
  v8 = HFLocalizedStringWithFormat(@"HFCharacteristicValueAirParticulateSize2_5", @"%.1f", a3, a4, a5, a6, a7, a8, 0x4004000000000000);
  v19[1] = &unk_282525218;
  v20[0] = v8;
  v15 = HFLocalizedStringWithFormat(@"HFCharacteristicValueAirParticulateSize10", @"%d", v9, v10, v11, v12, v13, v14, 10);
  v20[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __71__NSFormatter_HFCharacteristicValueFormatting___hf_airQualityFormatter__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueAirQualityUnknown";
  v4[1] = @"HFCharacteristicValueAirQualityExcellent";
  v3[2] = &unk_282525230;
  v3[3] = &unk_282525248;
  v4[2] = @"HFCharacteristicValueAirQualityGood";
  v4[3] = @"HFCharacteristicValueAirQualityFair";
  v3[4] = &unk_282525260;
  v3[5] = &unk_282525278;
  v4[4] = @"HFCharacteristicValueAirQualityInferior";
  v4[5] = @"HFCharacteristicValueAirQualityPoor";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __74__NSFormatter_HFCharacteristicValueFormatting___hf_positionStateFormatter__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValuePositionStateClosing";
  v4[1] = @"HFCharacteristicValuePositionStateOpening";
  v3[2] = &unk_282525230;
  v4[2] = @"HFCharacteristicValuePositionStateStopped";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __87__NSFormatter_HFCharacteristicValueFormatting___hf_currentSecuritySystemStateFormatter__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueCurrentSecuritySystemStateStayArm";
  v4[1] = @"HFCharacteristicValueCurrentSecuritySystemStateAwayArm";
  v3[2] = &unk_282525230;
  v3[3] = &unk_282525248;
  v4[2] = @"HFCharacteristicValueCurrentSecuritySystemStateNightArm";
  v4[3] = @"HFCharacteristicValueCurrentSecuritySystemStateDisarmed";
  v3[4] = &unk_282525260;
  v4[4] = @"HFCharacteristicValueCurrentSecuritySystemStateTriggered";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __86__NSFormatter_HFCharacteristicValueFormatting___hf_targetSecuritySystemStateFormatter__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueTargetSecuritySystemStateStayArm";
  v4[1] = @"HFCharacteristicValueTargetSecuritySystemStateAwayArm";
  v3[2] = &unk_282525230;
  v3[3] = &unk_282525248;
  v4[2] = @"HFCharacteristicValueTargetSecuritySystemStateNightArm";
  v4[3] = @"HFCharacteristicValueTargetSecuritySystemStateDisarm";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __78__NSFormatter_HFCharacteristicValueFormatting___hf_contactStateStateFormatter__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525290;
  v3[1] = &unk_2825252A8;
  v4[0] = @"HFCharacteristicValueContactStateContactDetected";
  v4[1] = @"HFCharacteristicValueContactStateContactNotDetected";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __84__NSFormatter_HFCharacteristicValueFormatting___hf_currentAirPurifierStateFormatter__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueCurrentAirPurifierStateInactive";
  v4[1] = @"HFCharacteristicValueCurrentAirPurifierStateIdle";
  v3[2] = &unk_282525230;
  v4[2] = @"HFCharacteristicValueCurrentAirPurifierStateActive";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __79__NSFormatter_HFCharacteristicValueFormatting___hf_configurationStateFormatter__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_282525200;
  v3[1] = &unk_282525218;
  v4[0] = @"HFCharacteristicValueConfigurationStateNotConfigured";
  v4[1] = @"HFCharacteristicValueConfigurationStateConfigured";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_2()
{
  v9[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF800];
  v9[0] = *MEMORY[0x277CCFB08];
  v9[1] = v1;
  v2 = *MEMORY[0x277CCF838];
  v9[2] = *MEMORY[0x277CCFB40];
  v9[3] = v2;
  v3 = *MEMORY[0x277CCF858];
  v9[4] = *MEMORY[0x277CCFB60];
  v9[5] = v3;
  v4 = *MEMORY[0x277CCF920];
  v9[6] = *MEMORY[0x277CCF7F8];
  v9[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v6 = [v0 setWithArray:v5];
  v7 = qword_280E03D48;
  qword_280E03D48 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

id __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicValuePowerStateOn", @"HFCharacteristicValuePowerStateOn", 1);
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = @"HFCharacteristicTitlePowerStateOn";
  }

  else
  {
    v5 = @"HFCharacteristicTitlePowerStateOff";
  }

  v6 = _HFLocalizedStringWithDefaultValue(v5, v5, 1);

  return v6;
}

id __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v12 = [v2 objectForKey:@"roomName"];
  v10 = HFLocalizedStringWithFormat(@"HFCharacteristicDescriptionFormatHumiditySensor", @"%@%@", v4, v5, v6, v7, v8, v9, v3);

  return v10;
}

id __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v12 = [v2 objectForKey:@"roomName"];
  v10 = HFLocalizedStringWithFormat(@"HFCharacteristicDescriptionFormatTemperatureSensor", @"%@%@", v4, v5, v6, v7, v8, v9, v3);

  return v10;
}

id __126__NSFormatter_HFCharacteristicValueFormatting__hf_controlDescriptionFormatterForCharacteristicType_withMetadata_options_form___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v12 = [v2 objectForKey:@"roomName"];
  v10 = HFLocalizedStringWithFormat(@"HFCharacteristicDescriptionFormatLightSensor", @"%@%@", v4, v5, v6, v7, v8, v9, v3);

  return v10;
}

void __86__NSFormatter_HFCharacteristicValueFormatting___hf_controlTitleForCharacteristicType___block_invoke_2()
{
  v7[7] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF9F0];
  v6[0] = *MEMORY[0x277CCF788];
  v6[1] = v0;
  v7[0] = @"HFCharacteristicTitleBrightness";
  v7[1] = @"HFCharacteristicTitlePowerState";
  v1 = *MEMORY[0x277CCFA20];
  v6[2] = *MEMORY[0x277CCF748];
  v6[3] = v1;
  v7[2] = @"HFCharacteristicTitleActive";
  v7[3] = @"HFCharacteristicTitleRotationSpeed";
  v2 = *MEMORY[0x277CCFB40];
  v6[4] = *MEMORY[0x277CCFB08];
  v6[5] = v2;
  v7[4] = @"HFCharacteristicTitleDoorState";
  v7[5] = @"HFCharacteristicTitleLockState";
  v6[6] = *MEMORY[0x277CCFB60];
  v7[6] = @"HFCharacteristicTitleSecuritySystemState";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:7];
  v4 = qword_280E03D58;
  qword_280E03D58 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end