void sub_2517E92B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2517EBA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2517ED58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t HKMedicationScheduleFrequencyTypeForScheduleType(unint64_t a1)
{
  if (a1 > 8)
  {
    return 4;
  }

  else
  {
    return qword_25180A5E8[a1];
  }
}

void sub_2517F2754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HKMedicationGeneralFormForMedicationFreeTextFormTypeCode(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    v1 = MEMORY[0x277CCC400];
  }

  else
  {
    v1 = qword_2796CA5A8[a1 - 1];
  }

  return *v1;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t result)
{
  v2 = *v1;
  *v1 = result;
  return result;
}

__CFString *HKStringFromReminderWeekdayOptions(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Monday"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"Tuesday"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 addObject:@"Wednesday"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"Thursday"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"Friday"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
LABEL_10:
        v4 = MEMORY[0x277CCACA8];
        v5 = [v3 componentsJoinedByString:{@", "}];
        v6 = [v4 stringWithFormat:@"[%@]", v5];

        goto LABEL_12;
      }

LABEL_9:
      [v3 addObject:@"Sunday"];
      goto LABEL_10;
    }

LABEL_20:
    [v3 addObject:@"Saturday"];
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = @"None";
LABEL_12:

  return v6;
}

__n128 HKiOSVersionFromWatchOSVersion@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1 + 7;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 HKWatchOSVersionFromiOSVersion@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1 - 7;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 HKMedicationFirstSupportedOSVersionForDeviceType@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = &HKMedicationFirstSupportedOSVersionOniPadOS;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = &HKMedicationFirstSupportedOSVersionOnVisionOS;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = &HKMedicationFirstSupportedOSVersionOniOS;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v2 = &HKMedicationFirstSupportedOSVersionOnWatchOS;
LABEL_11:
      result = *v2;
      *a2 = *v2;
      *(a2 + 16) = *(v2 + 2);
    }
  }

  return result;
}

__CFString *HKStringFromDrugInteractionLifestyleFactor(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA808[a1];
  }

  return v2;
}

id HKConceptIdentifierForDrugInteractionLifestyleFactor(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = 703 - a1;
  }

  v2 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:v1];

  return v2;
}

void *HKDrugInteractionLifestyleFactorForHKConceptIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 rawIdentifier] == 702)
  {
    v2 = &unk_2863B6DC0;
  }

  else if ([v1 rawIdentifier] == 701)
  {
    v2 = &unk_2863B6DD8;
  }

  else if ([v1 rawIdentifier] == 700)
  {
    v2 = &unk_2863B6DF0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *HKStringFromMedicationScheduleType(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown scheduleType (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA828[a1];
  }

  return v2;
}

__CFString *HKStringFromMedicationProductType(uint64_t a1)
{
  if ((a1 - 1) >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA870[a1 - 1];
  }

  return v2;
}

__CFString *HKStringFromDrugInteractionType(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Multiple Medications";
  }

  else if (a1 == 2)
  {
    v2 = @"Medication + Lifestyle Factor";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  return v2;
}

__CFString *HKStringFromDrugInteractionSeverityLevel(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA8A0[a1 - 1];
  }

  return v2;
}

__CFString *HKStringFromMedicationListOnboardingStepType(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA8C0[a1];
  }

  return v2;
}

__CFString *HKStringFromHKMedicationListOnboardingAlgorithmType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"NDC";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
    }
  }

  else
  {
    v2 = @"OCR";
  }

  return v2;
}

__CFString *HKStringFromMedicationListOnboardingProvenanceType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"FromMedsTrackingRoom";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
    }
  }

  else
  {
    v2 = @"FromSummary";
  }

  return v2;
}

__CFString *HKStringFromMedicationListOnboardingActionType(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA938[a1];
  }

  return v2;
}

__CFString *HKStringFromMedicationListOnboardingDetailsEntryType(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA9A0[a1];
  }

  return v2;
}

__CFString *HKStringFromMedicationRoomProvenance(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CA9C8[a1];
  }

  return v2;
}

__CFString *HKStringFromMedicationRoomType(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"DataTypeRoom";
  }

  else if (a1 == 2)
  {
    v2 = @"CategoryRoom";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  return v2;
}

__CFString *HKStringFromMedicationRoomAnalyticsAction(uint64_t a1)
{
  if ((a1 - 1) >= 0x1D)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CAA10[a1 - 1];
  }

  return v2;
}

__CFString *HKStringFromMedicationLoggingContext(uint64_t a1)
{
  if ((a1 - 1) >= 0xA)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid (%ld)", a1];
  }

  else
  {
    v2 = off_2796CAAF8[a1 - 1];
  }

  return v2;
}

id HKMedicationAnalyticsWeeksBetweenDates(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [v6 startOfDayForDate:a2];
  v8 = [v6 startOfDayForDate:v5];

  v9 = [v6 components:16 fromDate:v7 toDate:v8 options:0];

  v10 = [v9 day];
  if (v10 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  v12 = (((v11 - ((9363 * v11) >> 16)) >> 1) + ((9363 * v11) >> 16)) >> 2;
  v13 = v11 >= 0x2BC;
  v14 = 10 * (v11 / 0x46);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];

  return v16;
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id HKMedicationsSharedAnalyticsQueue()
{
  if (HKMedicationsSharedAnalyticsQueue_onceToken != -1)
  {
    HKMedicationsSharedAnalyticsQueue_cold_1();
  }

  v1 = HKMedicationsSharedAnalyticsQueue_analyticsQueue;

  return v1;
}

uint64_t __HKMedicationsSharedAnalyticsQueue_block_invoke()
{
  v0 = HKCreateSerialDispatchQueue();
  HKMedicationsSharedAnalyticsQueue_analyticsQueue = v0;

  return MEMORY[0x2821F96F8](v0);
}

id HKMedicationsBucketedDecadeForAge(void *a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = a1;
  v3 = [v1 numberWithInteger:18];
  v4 = HKAnalyticsDecadeBucketedAgeForAgeWithBoundsAndBucketRange();

  return v4;
}

uint64_t HKMedicationScheduleCompatibilityVersionForOSVersion(uint64_t *a1, uint64_t a2)
{
  result = -1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v13[3] = v2;
      v13[4] = v3;
      memset(v13, 0, 24);
      v11 = *a1;
      v12 = a1[2];
      HKiOSVersionFromWatchOSVersion(&v11, v13);
      v6 = v13[0];
      v7 = v13[0] - 16;
      if ((v13[0] - 16) < 3)
      {
        return qword_25180A6A0[v7];
      }
    }

    else
    {
      v6 = *a1;
      v7 = v6 - 16;
      if ((v6 - 16) < 3)
      {
        return qword_25180A6A0[v7];
      }
    }

    v10 = &HKMedicationFirstSupportedOSVersionOniOS;
    goto LABEL_21;
  }

  if (a2 == 2)
  {
    v6 = *a1;
    if (v6 == 17)
    {
      return 0;
    }

    if (v6 == 18)
    {
      return 1;
    }

    v10 = &HKMedicationFirstSupportedOSVersionOniPadOS;
LABEL_21:
    if (v6 < *v10)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (a2 == 3)
  {
    v8 = *a1;
    v9 = -1;
    if (v8 >= HKMedicationFirstSupportedOSVersionOnVisionOS)
    {
      v9 = 1;
    }

    if (v8 == 2)
    {
      return 1;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

uint64_t HKMedicationScheduleCompatibilityVersionForiPhoneOSVersion(void *a1)
{
  v1 = *a1 - 16;
  if (v1 < 3)
  {
    return qword_25180A6A0[v1];
  }

  if (*a1 < HKMedicationFirstSupportedOSVersionOniOS)
  {
    return -1;
  }

  return 1;
}

uint64_t HKMedicationScheduleCompatibilityVersionForiPadOSVersion(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 == 17)
  {
    return 0;
  }

  if (v1 == 18)
  {
    return 1;
  }

  if (v1 < HKMedicationFirstSupportedOSVersionOniPadOS)
  {
    return -1;
  }

  return 1;
}

uint64_t HKMedicationScheduleCompatibilityVersionForVisionOSVersion(void *a1)
{
  v1 = -1;
  if (*a1 >= HKMedicationFirstSupportedOSVersionOnVisionOS)
  {
    v1 = 1;
  }

  if (*a1 == 2)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t HKMedicationScheduleCompatibilityVersionForMedicationScheduleType(uint64_t a1, uint64_t a2)
{
  if ((a1 - 5) > 3)
  {
    v3 = 0;
    v2 = 1;
  }

  else
  {
    v2 = qword_25180A6B8[a1 - 5];
    v3 = v2;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}