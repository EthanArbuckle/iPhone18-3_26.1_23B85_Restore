id NTKUpNextDiagnosticLogsFileName()
{
  if (NTKUpNextDiagnosticLogsFileName_onceToken != -1)
  {
    NTKUpNextDiagnosticLogsFileName_cold_1();
  }

  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = NSTemporaryDirectory();
  v2 = MEMORY[0x277CCACA8];
  v3 = [NTKUpNextDiagnosticLogsFileName_FileNameFormatter stringFromDate:v0];
  v4 = [v2 stringWithFormat:@"upnext_%@.log", v3];
  v5 = [v1 stringByAppendingPathComponent:v4];

  return v5;
}

uint64_t __NTKUpNextDiagnosticLogsFileName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = NTKUpNextDiagnosticLogsFileName_FileNameFormatter;
  NTKUpNextDiagnosticLogsFileName_FileNameFormatter = v0;

  v2 = NTKUpNextDiagnosticLogsFileName_FileNameFormatter;

  return [v2 setDateFormat:@"YYYY-MM-dd_HH-mm-ss"];
}

CGFloat NTKUpNextMakeScaleTransformWithBoundsAndScale@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  Height = CGRectGetHeight(*&a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  CGAffineTransformMakeTranslation(a1, 0.0, Height * 0.5);
  v9 = *(a1 + 16);
  *&v14.a = *a1;
  *&v14.c = v9;
  *&v14.tx = *(a1 + 32);
  CGAffineTransformScale(&v15, &v14, a3, a3);
  v10 = *&v15.c;
  *a1 = *&v15.a;
  *(a1 + 16) = v10;
  *(a1 + 32) = *&v15.tx;
  v11 = *(a1 + 16);
  *&v14.a = *a1;
  *&v14.c = v11;
  *&v14.tx = *(a1 + 32);
  CGAffineTransformTranslate(&v15, &v14, 0.0, -(Height * 0.5));
  v12 = *&v15.c;
  *a1 = *&v15.a;
  *(a1 + 16) = v12;
  result = v15.tx;
  *(a1 + 32) = *&v15.tx;
  return result;
}

void sub_22DB206E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak((v18 - 64));
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t getImageOrientation(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = 1;
  if (v1)
  {
    v3 = v1;
    Value = CFDictionaryGetValue(v1, *MEMORY[0x277CD3410]);
    valuePtr = 1;
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
      {
        v2 = valuePtr;
      }

      else
      {
        v2 = 1;
      }
    }

    CFRelease(v3);
  }

  return v2;
}

void sub_22DB21DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB22538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NTKCollectionServerInterface()
{
  if (NTKCollectionServerInterface_onceToken != -1)
  {
    NTKCollectionServerInterface_cold_1();
  }

  v1 = NTKCollectionServerInterface_interface;

  return v1;
}

void __NTKCollectionServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A8ADE70];
  v1 = NTKCollectionServerInterface_interface;
  NTKCollectionServerInterface_interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [NTKCollectionServerInterface_interface setClasses:v4 forSelector:sel_setOrderedFaceUUIDs_ argumentIndex:0 ofReply:0];
}

id NTKCollectionClientInterface()
{
  if (NTKCollectionClientInterface_onceToken != -1)
  {
    NTKCollectionClientInterface_cold_1();
  }

  v1 = NTKCollectionClientInterface_interface;

  return v1;
}

void __NTKCollectionClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A84DCA0];
  v1 = NTKCollectionClientInterface_interface;
  NTKCollectionClientInterface_interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [NTKCollectionClientInterface_interface setClasses:v8 forSelector:sel_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion_ argumentIndex:0 ofReply:0];
  [NTKCollectionClientInterface_interface setClasses:v7 forSelector:sel_loadFullCollectionWithOrderedUUIDs_selectedUUID_facesDescriptorsByUUID_seqId_completion_ argumentIndex:2 ofReply:0];
  [NTKCollectionClientInterface_interface setClasses:v8 forSelector:sel_updateOrderedFaceUUIDs_seqId_ argumentIndex:0 ofReply:0];
}

void sub_22DB239C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB252C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 224), 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DB25C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB26DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22DB270D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22DB27C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a43);
  _Unwind_Resume(a1);
}

void sub_22DB2AEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB2C6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DB2D4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB2DC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB2E794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB2EC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB2EF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB2FAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB31C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB32484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB340B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB346B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22DB34800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NTKComplicationSlotDescriptor(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 numberWithInteger:a1];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [_SlotDescriptor descriptorWithComplicationFamilies:v9 complicationTypesRankedList:v6 allowedComplicationTypes:v7];

  return v10;
}

void sub_22DB35064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB352A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NTKComplicationStringIsForNoImageGroupIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"com.apple.NanoSettings"] & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.nanotimekit.off") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.nanotimekit.astronomy") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.nanotimekit.controls") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.nanotimekit.internal") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.nanotimekit.contacts") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.nanotimekit.time") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.DateComplicationsHost") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"com.apple.nanotimekit.personalization"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:@"com.apple.nanotimekit.siri"];
  }

  return v2;
}

void sub_22DB38D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void _LayoutConstants_4(void *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    ___LayoutConstantsExtraLarge_block_invoke_1(a1, a3);
  }

  else
  {
    ___LayoutConstantsModularSmall_block_invoke_0(a1, a3);
  }
}

double _ModularSmallFontSize(uint64_t a1, void *a2)
{
  v3 = ___ModularSmallFontSize_block_invoke(a1, a2);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

__n128 _LayoutConstants_5@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v10, 0, sizeof(v10));
  v5 = v10;
  ___LayoutConstants_block_invoke_40(a1, v10);
  if (a2 != 10)
  {
    if (a2 == 12)
    {
      v5 = &v10[5] + 8;
    }

    else
    {
      v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _LayoutConstants_cold_1(a2, v6);
      }

      v5 = v10;
    }
  }

  v7 = *(v5 + 3);
  *(a3 + 32) = *(v5 + 2);
  *(a3 + 48) = v7;
  *(a3 + 64) = *(v5 + 4);
  *(a3 + 80) = *(v5 + 10);
  result = *v5;
  v9 = *(v5 + 1);
  *a3 = *v5;
  *(a3 + 16) = v9;
  return result;
}

id NTKVictoryTransitionTimingFunction()
{
  if (NTKVictoryTransitionTimingFunction_onceToken != -1)
  {
    NTKVictoryTransitionTimingFunction_cold_1();
  }

  v1 = NTKVictoryTransitionTimingFunction__function;

  return v1;
}

void __NTKVictoryTransitionTimingFunction_block_invoke(double a1, double a2, double a3, double a4)
{
  LODWORD(a1) = 1051260355;
  LODWORD(a3) = 1059648963;
  LODWORD(a4) = 1.0;
  v4 = [MEMORY[0x277CD9EF8] functionWithControlPoints:a1 :0.0 :a3 :a4];
  v5 = NTKVictoryTransitionTimingFunction__function;
  NTKVictoryTransitionTimingFunction__function = v4;
}

void sub_22DB3F68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double NTKWorldClock_DayOfYearForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  v6 = [v4 components:4 fromDate:v2];
  [v6 setMonth:1];
  [v6 setDay:1];
  [v6 setHour:0];
  [v6 setMinute:0];
  [v6 setSecond:0];
  v7 = [v4 dateFromComponents:v6];
  v8 = [v4 components:128 fromDate:v7 toDate:v2 options:1];

  v9 = [v8 second] / 86400.0 + 1.0;
  return v9;
}

double NTKWorldClock_MapPointForLocationOnMap(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a5 + a3 * (a2 + 180.0) / 360.0;
  if (v5 < 0.0)
  {
    v5 = a3 + v5;
  }

  if (v5 <= a3)
  {
    return v5;
  }

  else
  {
    return v5 - a3;
  }
}

id NTKWorldClock_NightMaskPathForDayOfYear(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v33 = v5;
  v34 = v4;
  v35 = v6;
  v36 = v7;
  v8 = v3;
  v38[721] = *MEMORY[0x277D85DE8];
  v9 = sin((v3 + 284.0) * 0.98630137 * 0.0174532925) * 23.45;
  v10 = (modf(v8, __y) * 24.0 + -12.0) * 15.0;
  v11 = tan(v9 * 0.0174532925);
  v12 = v38;
  for (i = -180; i != 181; ++i)
  {
    v14 = i;
    v15 = 90.0;
    if (v11 != 0.0)
    {
      v16 = cos((v10 + v14) * 0.0174532925);
      v15 = atan(-v16 / v11) * 57.2957795;
    }

    *(v12 - 1) = v15;
    *v12 = v14;
    v12 += 2;
  }

  v17 = [MEMORY[0x277D75208] bezierPath];
  v18 = malloc_type_malloc(0x1690uLL, 0x1000040451B5BE8uLL);
  v19 = v18;
  v20 = 0;
  v21.f64[0] = v36;
  *&v21.f64[1] = v33;
  v22.f64[0] = v35;
  *&v22.f64[1] = v34;
  v23 = vdupq_n_s64(0x4066800000000000uLL);
  v24.f64[0] = 90.0;
  do
  {
    v25 = vaddq_f64(v21, vdivq_f64(vmulq_f64(v22, vextq_s8(vaddq_f64(*&__y[2 * v20 + 1], v23), vsubq_f64(v24, *&__y[2 * v20 + 1]), 8uLL)), xmmword_22DCE8CA0));
    v26 = vbslq_s8(vcltzq_f64(v25), COERCE_UNSIGNED_INT64(v35 + v25.f64[0]), v25);
    v27.i64[1] = v34;
    *v27.i64 = v26.f64[0] - v35;
    *&v18[2 * v20++] = vbslq_s8(vcgtq_f64(v26, v22), v27, v26);
  }

  while (v20 != 361);
  v28 = 2;
  v29 = 720;
  while (v18[v28] >= v18[v28 - 2])
  {
    v28 += 2;
    v29 -= 2;
    if (!(v29 * 8))
    {
      goto LABEL_12;
    }
  }

  v30 = malloc_type_malloc(0x1690uLL, 0xABB1971CuLL);
  __memcpy_chk();
  memcpy(&v30[v29], v19, v28 * 8);
  free(v19);
  v19 = v30;
LABEL_12:
  [v17 moveToPoint:{*v19, v19[1], v33}];
  v31 = 0x1FFFFFFFFFFFFD30;
  do
  {
    [v17 addLineToPoint:{v19[v31 + 722], v19[v31 + 723]}];
    v31 += 2;
  }

  while (v31 * 8);
  free(v19);

  return v17;
}

double _LayoutConstants_6(void *a1, uint64_t a2)
{
  v4 = ___LayoutConstants_block_invoke_41(a1, a1);
  if (a2 != 10)
  {
    if (a2 == 12)
    {
      return v3;
    }

    else
    {
      v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        _LayoutConstants_cold_1(a2, v5);
      }
    }
  }

  return v4;
}

BOOL NTKWidgetVisibilityFromComplicationVisibility(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NTKArgonExtractorBasePath()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = BSCurrentUserDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"/Library/NanoTimeKit/FaceSupport/ExtractedBundles/"];
  v2 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Extracting to %@", &v4, 0xCu);
  }

  return v1;
}

id NTKArgonExtractorBuildVersion()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = NTKBuildVersion();
  if (NTKInternalBuild(v0, v1))
  {
    v2 = NTKBootSessionUUID();
    v3 = [v2 UUIDString];

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v0, v3];

    v0 = v4;
  }

  v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Argon build directory is %@", buf, 0xCu);
  }

  return v0;
}

void sub_22DB48960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t invokeBlockForArchiveEvent_0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _Block_copy(a1);
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    v11 = v9[2](v9, a2, v10, a4);
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v11;
}

void _LayoutConstants_7(void *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    ___LayoutConstantsExtraLarge_block_invoke_5(a1, a3);
  }

  else
  {
    ___LayoutConstantsModularSmall_block_invoke_1(a1, a3);
  }
}

void sub_22DB4C9B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void _LayoutConstants_8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v15 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  v6 = &v12;
  v7 = v14;
  ___LayoutConstants_block_invoke_43(v5, &v12);
  *(a3 + 24) = 0;
  v8 = &v13 + 1;
  if (a2 != 10)
  {
    if (a2 == 12)
    {
      v8 = &v15;
      v7 = &v15 + 1;
      v6 = v14 + 8;
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _LayoutConstants_cold_1(a2, v9);
      }

      v6 = &v12;
    }
  }

  *a3 = *v6;
  *(a3 + 16) = *(v6 + 2);
  v10 = *v8;
  v11 = *v7;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
}

void __destructor_8_S_s24_S_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_22DB4EE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NTKFaceArgonSupportCreateAttachmentWithImageData(void *a1, void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:v3];
  v19 = 0;
  v7 = [v4 writeToFile:v6 options:1 error:&v19];

  v8 = v19;
  if (v7)
  {
    v9 = *MEMORY[0x277CE1DC0];
    v10 = *MEMORY[0x277CE20D0];
    v20[0] = *MEMORY[0x277CE20D8];
    v20[1] = v10;
    v21[0] = v9;
    v21[1] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v12 = MEMORY[0x277CE1F90];
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v18 = v8;
    v14 = [v12 attachmentWithIdentifier:v3 URL:v13 options:v11 error:&v18];
    v15 = v18;

    if (!v14)
    {
      v16 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        NTKFaceArgonSupportCreateAttachmentWithImageData_cold_2();
      }
    }
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NTKFaceArgonSupportCreateAttachmentWithImageData_cold_1();
    }

    v14 = 0;
    v15 = v8;
  }

  return v14;
}

void sub_22DB51908(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DB52830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB52D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB52F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_0_13(id a1)
{

  return a1;
}

void sub_22DB54188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB54E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB55DB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22DB56A14(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = objc_begin_catch(exception_object);
      v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [NTKPigmentPreferenceManager setAutoSelectedPigments:v2 forCollectionName:v3];
      }

      objc_end_catch();
      JUMPOUT(0x22DB569B4);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0x22DB569B8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NTKProtoPigmentCollectionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_62;
              }
            }

            v23 = (v26 != 0) & ~[a2 hasError];
LABEL_62:
            v30 = 56;
            goto LABEL_65;
          }

          if (v13 == 8)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33 & 0x7F) << v17;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_64;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_64:
            v30 = 57;
LABEL_65:
            *(a1 + v30) = v23;
            goto LABEL_66;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v16 = objc_alloc_init(NTKProtoPigment);
            [a1 addDefaultGalleryColors:v16];
            goto LABEL_47;
          }

          if (v13 == 6)
          {
            v16 = objc_alloc_init(NTKProtoPigmentCollection);
            [a1 addCollections:v16];
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !NTKProtoPigmentCollectionReadFrom(v16, a2))
            {
LABEL_68:

              return 0;
            }

            goto LABEL_49;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v16 = objc_alloc_init(NTKProtoPigment);
          objc_storeStrong((a1 + 32), v16);
LABEL_47:
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !NTKProtoPigmentReadFrom(v16, a2))
          {
            goto LABEL_68;
          }

LABEL_49:
          PBReaderRecallMark();

          goto LABEL_66;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(NTKProtoPigment);
          [a1 addItems:v16];
          goto LABEL_47;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(NTKProtoPigmentCollectionConfig);
          objc_storeStrong((a1 + 16), v16);
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !NTKProtoPigmentCollectionConfigReadFrom(v16, a2))
          {
            goto LABEL_68;
          }

          goto LABEL_49;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 48);
          *(a1 + 48) = v14;

          goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _LayoutConstants_9(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = &v10;
  v7 = &v12;
  ___LayoutConstants_block_invoke_45(v5, &v10);
  *(a3 + 24) = 0;
  v8 = &v11 + 1;
  if (a2 != 10)
  {
    if (a2 == 12)
    {
      v8 = &v14 + 1;
      v7 = &v15;
      v6 = &v13;
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _LayoutConstants_cold_1(a2, v9);
      }

      v6 = &v10;
    }
  }

  *a3 = *v6;
  *(a3 + 16) = *(v6 + 2);
  *(a3 + 24) = *v8;
  *(a3 + 32) = *v7;
}

void __destructor_8_S_s24_S_s72(uint64_t a1)
{
  v2 = *(a1 + 72);
}

void sub_22DB5D18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void NTKFaceLibraryPageSizeForZoomLevel(uint64_t a1)
{
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  [v2 screenBounds];

  NTKFaceLibraryPageWidthForZoomLevel(a1);
}

double NTKFaceLibraryPageWidthForZoomLevel(uint64_t a1)
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  ___LayoutConstants_block_invoke_47(v3, &v6);
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v1 = *&v7;
      }
    }

    else
    {
      [v3 screenBounds];
      v1 = v4;
    }
  }

  else if ((a1 - 2) >= 2)
  {
    if (a1 == 4)
    {
      v1 = *(&v9 + 1);
    }
  }

  else
  {
    v1 = *&v8;
  }

  return v1;
}

double NTKFaceLibraryPageSpacingForZoomLevel(uint64_t a1)
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v9 = 0.0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  ___LayoutConstants_block_invoke_47(v3, v5);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v1 = *(&v6 + 1);
    }

    else if (a1 == 4)
    {
      v1 = *&v8;
    }
  }

  else if ((a1 - 1) >= 2)
  {
    if (!a1)
    {
      v1 = *(v5 + 1);
    }
  }

  else
  {
    v1 = v9;
  }

  return v1;
}

double NTKFaceLibraryPageVerticalOffsetForZoomLevel(uint64_t a1)
{
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  ___LayoutConstants_block_invoke_47(v2, &v5);
  if ((a1 - 2) < 2)
  {
    v3 = *&v8;
  }

  else if (a1 == 4)
  {
    v3 = *(&v9 + 1);
  }

  else
  {
    v3 = 0.0;
    if (a1 == 1)
    {
      v3 = *(&v6 + 1);
    }
  }

  return v3;
}

double NTKFaceFullscreenKeylineFrame()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  [v0 screenBounds];
  v2 = v1;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  ___LayoutConstants_block_invoke_47(v0, &v7);
  v3 = *&v8;
  NTKFaceEditingFullscreenKeylineMargin();
  NTKKeylineWidth();
  v4 = NTKFaceEditingFullscreenKeylineMargin();
  v5 = v3 + (v4 + NTKKeylineWidth()) * 2.0;

  return (v2 - v5) * 0.5;
}

uint64_t NTKEqualObjects(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

uint64_t NTKEqualStrings(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqualToString:a2];
  }
}

void sub_22DB5E96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double __NTKWhistlerBezelCircularViewFontSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_51);
  if (_block_invoke___cachedDevice_51)
  {
    v3 = _block_invoke___cachedDevice_51 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_51))
  {
    v5 = _block_invoke_value_36;
  }

  else
  {
    _block_invoke___cachedDevice_51 = v2;
    _block_invoke___previousCLKDeviceVersion_51 = [v2 version];
    v5 = __NTKWhistlerBezelCircularViewFontSize_block_invoke_2(_block_invoke___previousCLKDeviceVersion_51, v2);
    _block_invoke_value_36 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_51);

  return *&v5;
}

double __NTKWhistlerBezelCircularViewFontSize_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:9 withOverride:12.5 forSizeClass:14.5];
  v4 = v3;

  return v4;
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id _NTKRegisteredDisplayClasses()
{
  if (_NTKRegisteredDisplayClasses_onceToken != -1)
  {
    _NTKRegisteredDisplayClasses_cold_1();
  }

  v1 = _NTKRegisteredDisplayClasses_displayClasses;

  return v1;
}

id NTKComplicationDisplayClassForTemplateAndFamily(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _NTKRegisteredDisplayClasses();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 handlesComplicationTemplate:{v3, v12}] && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v9, "supportsComplicationFamily:", a2) & 1) != 0))
        {
          v10 = v9;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

void sub_22DB65438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB65B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void NTKCaliforniaMulticolorColor(void *a1, double a2)
{
  v2 = a2;
  v3 = (fminf(fmaxf(v2, 0.0), 1.0) * 12.0);
  v4 = (v3 + 1) % 12;
  v5 = v3;
  v6 = a1;
  [v6 digitColorAtIndex:v5];
  objc_claimAutoreleasedReturnValue();
  [v6 digitColorAtIndex:v4];
  objc_claimAutoreleasedReturnValue();

  CLKUIInterpolateBetweenColors();
}

void sub_22DB670BC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DB6817C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x420], 8);
  _Unwind_Resume(a1);
}

void sub_22DB690F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB6B6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB6DC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB6EAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DB74F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DB75388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB78E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DB79878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB7A184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _richCircularEmptyImage(double a1, double a2, CGFloat a3)
{
  v24[3] = *MEMORY[0x277D85DE8];
  UIGraphicsBeginImageContextWithOptions(*&a1, 0, a3);
  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:a2 design:*MEMORY[0x277D74420]];
  v6 = [v5 CLKFontWithAlternativePunctuation];

  v7 = NTKClockFaceLocalizedString(@"SIGNATURE_SUBDIAL_NO_DATA", @"--");
  v8 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  [v9 setAlignment:1];
  v10 = *MEMORY[0x277D740A8];
  v23[0] = *MEMORY[0x277D74118];
  v23[1] = v10;
  v24[0] = v9;
  v24[1] = v6;
  v23[2] = *MEMORY[0x277D740C0];
  v11 = [MEMORY[0x277D75348] whiteColor];
  v24[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  [v7 sizeWithAttributes:v12];
  v14.f64[1] = v13;
  __asm { FMOV            V1.2D, #0.5 }

  [v7 drawAtPoint:v12 withAttributes:{vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(vsubq_f64(vdupq_lane_s64(*&a1, 0), v14), _Q1))))}];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v20;
}

void sub_22DB7EDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NTKUniqueIDForNTKPhoto(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CD9918];
  v3 = [v1 localIdentifier];
  v4 = [v2 uuidFromLocalIdentifier:v3];

  v5 = [v1 modificationDate];
  [v5 timeIntervalSince1970];
  v7 = [v4 stringByAppendingFormat:@"-%ld", v6];

  [v1 originalCrop];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectIsEmpty(v19))
  {
    [v1 crop];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectIsEmpty(v20))
  {
    v16 = [v7 stringByAppendingFormat:@"-((%05.1f-%05.1f)-(%05.1f, %05.1f))", *&x, *&y, *&width, *&height];

    v7 = v16;
  }

  return v7;
}

id _NTKTrueAlbumNameForAssetCollection(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CD97B8];
  v2 = [a1 npto_uuid];
  v3 = [v2 UUIDString];
  v4 = [v1 localIdentifierWithUUID:v3];

  v5 = MEMORY[0x277CD97B8];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v5 fetchAssetCollectionsWithLocalIdentifiers:v6 options:0];

  v8 = 0;
  if ([v7 count] == 1)
  {
    v9 = [v7 firstObject];
    v8 = [v9 localizedTitle];
  }

  return v8;
}

id NTKAlbumNameForLocalIdentifier(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = objc_alloc(MEMORY[0x277D2BA48]);
  v7 = [v4 nrDevice];
  v8 = [v6 initWithCollectionTarget:v5 device:v7];

  if (v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [v8 assetCollections];
    v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v21 = v4;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = MEMORY[0x277CD97B8];
          v14 = [v12 npto_uuid];
          v15 = [v14 UUIDString];
          v16 = [v13 localIdentifierWithUUID:v15];
          v17 = [v16 isEqualToString:v3];

          if (v17)
          {
            v9 = v12;
            goto LABEL_15;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

LABEL_15:
      v4 = v21;
    }

    if (!v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v19 = _NTKTrueAlbumNameForAssetCollection(v9);
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = [v8 assetCollections];
  v9 = [v18 anyObject];

  if (v9)
  {
    goto LABEL_19;
  }

LABEL_20:
  v19 = [v9 localizedTitle];
LABEL_21:

  return v19;
}

void sub_22DB8095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NTKPhotosUpdateLegibility(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v1)
  {
    v2 = *v23;
    v15 = *v23;
    do
    {
      v3 = 0;
      v16 = v1;
      do
      {
        if (*v23 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * v3);
        if ([v4 isMissingAnalysis])
        {
          v5 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = [v4 localIdentifier];
            *buf = 138412290;
            v31 = v6;
            _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "  ** photo %@ needs more analysis", buf, 0xCu);
          }

          v7 = [[NTKCachedPhoto alloc] initWithPhoto:v4];
          if ([(NTKCachedPhoto *)v7 load])
          {
            v8 = 0;
            v9 = MEMORY[0x277D85DD0];
            v10 = 1;
            do
            {
              v11 = v10;
              v12 = MEMORY[0x277CBBAE8];
              v18[0] = v9;
              v18[1] = 3221225472;
              v18[2] = __NTKPhotosUpdateLegibility_block_invoke;
              v18[3] = &unk_278784718;
              v18[4] = v4;
              v21 = v8;
              v19 = v7;
              v20 = &v26;
              [v12 enumerateSizeClasses:v18];

              v10 = 0;
              v8 = 1;
            }

            while ((v11 & 1) != 0);
          }

          v2 = v15;
          v1 = v16;
        }

        ++v3;
      }

      while (v3 != v1);
      v1 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v1);
  }

  v13 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v13 & 1;
}

void __NTKPhotosUpdateLegibility_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) analysisForAlignment:*(a1 + 56) deviceSizeClass:a2];

  if (!v4)
  {
    v5 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = a2;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "   * analysis done for align == %lu, size == %lu", &v10, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) image];
    v9 = [NTKPhotoAnalysis analysisWithImage:v8 alignment:*(a1 + 56) deviceSizeClass:a2];
    [v7 setAnalysis:v9 alignment:*(a1 + 56) deviceSizeClass:a2];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

id NTKCloneResourceDirectoryForReader(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = NTKPhotosCreateResourceDirectory();
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v1;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [v9 imageURL];
          v11 = NTKPhotosLinkURL(v10, v2);

          if (!v11 || ([v9 setImageURL:v11], objc_msgSend(v9, "isIris")) && (objc_msgSend(v9, "irisVideoURL"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12) && (objc_msgSend(v9, "irisVideoURL"), v13 = objc_claimAutoreleasedReturnValue(), NTKPhotosLinkURL(v13, v2), v14 = objc_claimAutoreleasedReturnValue(), v11, v13, (v11 = v14) == 0))
          {
            v17 = [MEMORY[0x277CCAA00] defaultManager];
            [v17 removeItemAtPath:v2 error:0];

            goto LABEL_18;
          }

          v15 = [v9 encodeAsDictionary];
          [v3 addObject:v15];
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (NTKPhotosWriteImageListWithVersionForAssetCollection(v3, 1, 0, v2))
    {
      v16 = v2;
    }

    else
    {
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      [v4 removeItemAtPath:v2 error:0];
LABEL_18:

      v16 = 0;
    }

    v1 = v19;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id NTKPhotosCreateResourceDirectory()
{
  v0 = NTKNewUniqueTeporaryResourceDirectory();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  [v1 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v5];
  v2 = v5;

  if (v2)
  {
    v3 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      NTKPhotosCreateResourceDirectory_cold_1(v0, v3);
    }

    v0 = 0;
  }

  return v0;
}

id NTKPhotosLinkURL(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  TCCAccessPreflight();
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 fileSystemRepresentation];

  v8 = [v6 stringWithUTF8String:v7];
  v9 = [v8 lastPathComponent];
  v10 = [v3 stringByAppendingPathComponent:v9];

  v20 = 0;
  [v5 copyItemAtPath:v8 toPath:v10 error:&v20];
  v11 = v20;
  if (v11)
  {
    v12 = v11;
    v13 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      _os_log_error_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_ERROR, "NTKPhotosLinkURL(%@, %@): error %@", buf, 0x20u);
    }
  }

  else
  {
    v21 = *MEMORY[0x277CCA1B0];
    v22 = *MEMORY[0x277CCA1B8];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = 0;
    v15 = [v5 setAttributes:v14 ofItemAtPath:v10 error:&v19];
    v12 = v19;

    if (v15)
    {
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:0];
      goto LABEL_11;
    }

    v17 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      _os_log_error_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_ERROR, "NTKPhotosLinkURL(%@, %@): cannot set class D on destination: error %@", buf, 0x20u);
    }

    [v5 removeItemAtPath:v10 error:0];
  }

  v16 = 0;
LABEL_11:

  return v16;
}

id _convertSidecarForFaceStyle(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v3;
    v22 = 2048;
    v23 = a2;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKConvertSidecarForFaceStyle(%@, %lu)", buf, 0x16u);
  }

  v5 = [NTKPhotosReader readerForResourceDirectory:v3];
  v6 = v5;
  if (v5)
  {
    if (a2 == 22)
    {
      NTKPhotosUpdateLegibility(v5);
    }

    v7 = [v6 firstObject];
    if (v7)
    {
      v8 = NTKPhotosCreateResourceDirectory();
      if (v8)
      {
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [v7 imageURL];
        v11 = NTKPhotosLinkURL(v10, v8);

        if (v11 && (a2 != 22 || ![v7 isIris] || (objc_msgSend(v7, "irisVideoURL"), v12 = objc_claimAutoreleasedReturnValue(), NTKPhotosLinkURL(v12, v8), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13)) && (objc_msgSend(v7, "encodeAsDictionary"), v14 = objc_claimAutoreleasedReturnValue(), v19 = v14, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v19, 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = NTKPhotosWriteImageListWithVersionForAssetCollection(v15, 1, 0, v8), v15, v14, (v16 & 1) != 0))
        {
          v17 = v8;
        }

        else
        {
          [v9 removeItemAtPath:v8 error:0];
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t NTKPhotosWriteImageListWithVersionForAssetCollection(void *a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = objc_opt_new();
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v10 setObject:v11 forKeyedSubscript:@"version"];

  [v10 setObject:v9 forKeyedSubscript:@"imageList"];
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"assetCollection"];
  }

  v12 = [v8 stringByAppendingPathComponent:@"Images.plist"];
  v13 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "writing image list to path %@", &v17, 0xCu);
  }

  v14 = [v10 writeToFile:v12 atomically:0];
  if ((v14 & 1) == 0)
  {
    v15 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      NTKPhotosWriteImageListWithVersionForAssetCollection_cold_1(v12, v15);
    }
  }

  return v14;
}

void NTKPhotosDefaultCropForAsset(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 pixelWidth];
  [v4 pixelHeight];

  [v3 screenBounds];
}

void NTKPhotosDefaultCropForImage(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 scale];
  v6 = v5;
  [v4 size];

  CGAffineTransformMakeScale(&v7, v6, v6);
  [v3 screenBounds];
}

id NTKPhotosAspectFilledImageFromImage(void *a1, double a2, double a3)
{
  v5 = a1;
  [v5 size];
  v7 = a2 / v6;
  [v5 size];
  if (v7 < a3 / v8)
  {
    v7 = a3 / v8;
  }

  [v5 size];
  v10 = v9 * v7;
  [v5 size];
  v12 = v11 * v7;
  v13 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a2, a3}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __NTKPhotosAspectFilledImageFromImage_block_invoke;
  v17[3] = &unk_27877DB60;
  v18 = v5;
  v19 = (a2 - v10) * 0.5;
  v20 = (a3 - v12) * 0.5;
  v21 = v10;
  v22 = v12;
  v14 = v5;
  v15 = [v13 imageWithActions:v17];

  return v15;
}

id NTKPHAssetsForLocalIdentifiers(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld))", 1, 1, 3];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v21[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v2 setSortDescriptors:v5];

  v20 = *MEMORY[0x277CD9AE8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  [v2 addFetchPropertySets:v6];

  v7 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v1 options:v2];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addObject:*(*(&v15 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  return v8;
}

BOOL _isPhotosFaceWithContentOption(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 faceStyle] == 22)
  {
    v4 = [v3 selectedOptionsForCustomEditModes];
    v5 = [v4 objectForKey:&unk_284183D48];

    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && [v5 photosContent] == a2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t NTKPhotosDeviceHasPhotosFaceCapability(uint64_t a1)
{
  v1 = [MEMORY[0x277CBBAE8] pdrDeviceForPairingID:a1];
  v2 = [v1 supportsCapability:2987931011];

  return v2;
}

uint64_t NTKPhotosDeviceHasPhotosFaceMemoryCapability(uint64_t a1)
{
  v1 = [MEMORY[0x277CBBAE8] pdrDeviceForPairingID:a1];
  v2 = [v1 supportsCapability:3096143765];

  return v2;
}

BOOL NTKPhotosFaceHasPhotos(void *a1)
{
  v1 = a1;
  if ([v1 faceStyle] == 22)
  {
    v2 = [v1 resourceDirectory];
    v3 = [NTKPhotosReader readerForResourceDirectory:v2];

    v4 = [v3 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t NTKCGImagePropertyOrientationToUIImageOrientation(int a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_22DCE8F80[a1 - 2];
  }
}

uint64_t NTKUIImageOrientationToCGImagePropertyOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_22DCE8FB8[a1 - 1];
  }
}

CGImageSource *NTKPhotosUIImageOrientation(CGImageSource *result)
{
  if (result)
  {
    v1 = CGImageSourceCopyPropertiesAtIndex(result, 0, 0);
    v2 = 1;
    if (v1)
    {
      v3 = v1;
      Value = CFDictionaryGetValue(v1, *MEMORY[0x277CD3410]);
      valuePtr = 1;
      if (Value)
      {
        if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
        {
          v2 = valuePtr;
        }

        else
        {
          v2 = 1;
        }
      }

      CFRelease(v3);
    }

    return NTKCGImagePropertyOrientationToUIImageOrientation(v2);
  }

  return result;
}

double NTKPhotosImageSizeForURL(const __CFURL *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  Width = *MEMORY[0x277CBF3A8];
  v2 = CGImageSourceCreateWithURL(a1, 0);
  if (v2)
  {
    v3 = v2;
    v8 = *MEMORY[0x277CD3618];
    v9[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, v4);
    if (ImageAtIndex)
    {
      v6 = ImageAtIndex;
      Width = CGImageGetWidth(ImageAtIndex);
      CGImageGetHeight(v6);
      CFRelease(v6);
    }

    CFRelease(v3);
  }

  return Width;
}

id NTKPhotosImageForPhoto(void *a1)
{
  v1 = [a1 imageURL];
  v2 = NTKPhotosSubsampledImageForURL(v1, 1);

  return v2;
}

id NTKPhotosSubsampledImageForURL(void *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    v7 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  v4 = objc_alloc(MEMORY[0x277CBEA90]);
  v5 = [v3 path];
  v17 = 0;
  v6 = [v4 initWithContentsOfFile:v5 options:8 error:&v17];
  v7 = v17;

  if (!v6)
  {
    v12 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NTKPhotosSubsampledImageForURL_cold_1(v3, v7, v12);
    }

    v15 = 0;
    goto LABEL_13;
  }

  v8 = CGImageSourceCreateWithData(v6, 0);
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x277CD3650];
    v18[0] = *MEMORY[0x277CD3618];
    v18[1] = v10;
    v19[0] = MEMORY[0x277CBEC28];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v19[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, v12);
    if (ImageAtIndex)
    {
      v14 = ImageAtIndex;
      v15 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:ImageAtIndex scale:NTKPhotosUIImageOrientation(v9) orientation:1.0];
      CFRelease(v14);
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v9);
LABEL_13:

    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:

LABEL_15:

  return v15;
}

id NTKPhotosSubsampledImageForURLAndSize(void *a1, double a2, double a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = NTKPhotosImageSizeForURL(v5);
  if (v6 == *MEMORY[0x277CBF3A8] && v7 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v13 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "UIImage * _Nullable NTKPhotosSubsampledImageForURLAndSize(NSURL * _Nullable __strong, CGSize)";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "%s: Cannot find the size of the image in %@", &v15, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v9 = a2 / v6;
    v10 = a3 / v7;
    if (v9 >= v10)
    {
      v9 = v10;
    }

    v11 = 2;
    if (v9 > 0.5)
    {
      v11 = 1;
    }

    v12 = NTKPhotosSubsampledImageForURL(v5, v11 << (v9 <= 0.25) << (v9 <= 0.125));
  }

  return v12;
}

uint64_t NTKPhotosIsPHAssetIris(void *a1)
{
  v1 = a1;
  if ([v1 isPhotoIris])
  {
    v2 = [v1 photoIrisProperties];
    [v2 photoIrisVisibilityState];
    [v1 hasAdjustments];
    IsPlayable = PHVideoComplementVisibilityStateIsPlayable();
  }

  else
  {
    IsPlayable = 0;
  }

  return IsPlayable;
}

__n128 NTKImagePresentationTransform@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result.n128_u64[0] = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        *a4 = 0x3FF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        return result;
      }

      if (a1 == 1)
      {
        result.n128_f64[0] = a2;
        v5 = a3;
        *a4 = 0xBFF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0xBFF0000000000000;
LABEL_14:
        *(a4 + 32) = result.n128_u64[0];
        *(a4 + 40) = v5;
        return result;
      }

      goto LABEL_21;
    }

    if (a1 != 2)
    {
      result.n128_f64[0] = a3;
      *(a4 + 8) = xmmword_22DCE8F70;
LABEL_17:
      *(a4 + 32) = result.n128_u64[0];
      return result;
    }

    result.n128_f64[0] = a2;
    *(a4 + 8) = xmmword_22DCE8F60;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    goto LABEL_19;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      result.n128_f64[0] = a2;
      *a4 = 0xBFF0000000000000;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0x3FF0000000000000;
      goto LABEL_17;
    }

    result.n128_f64[0] = a3;
    *a4 = 0x3FF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xBFF0000000000000;
LABEL_19:
    *(a4 + 40) = result.n128_u64[0];
    return result;
  }

  if (a1 == 6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(a4 + 8) = result;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 24) = 0;
    return result;
  }

  if (a1 == 7)
  {
    result.n128_f64[0] = a3;
    v5 = a2;
    __asm { FMOV            V2.2D, #-1.0 }

    *(a4 + 8) = _Q2;
    goto LABEL_14;
  }

LABEL_21:
  v11 = MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *a4 = *MEMORY[0x277CBF2C0];
  *(a4 + 16) = v12;
  result = v11[2];
  *(a4 + 32) = result;
  return result;
}

double NTKPhotosVideoDimensions(void *a1)
{
  v1 = [a1 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v2 = [v1 firstObject];

  if (v2)
  {
    [v2 naturalSize];
    v4 = v3;
    v6 = v5;
    [v2 preferredTransform];
    v7 = fabs(v6 * v10 + v9 * v4);
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
  }

  return v7;
}

void NTKPhotosConfirmMemoryWasViewed(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v1;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "NTKPhotosConfirmMemoryWasViewed(%@)", buf, 0xCu);
  }

  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [v3 unlockedSinceBoot];

  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __NTKPhotosConfirmMemoryWasViewed_block_invoke;
    block[3] = &unk_27877DB10;
    v8 = v1;
    dispatch_async(v5, block);

    v6 = v8;
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v1;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Phone is before first unlock: ignoring confirmation that memory %@ was viewed", buf, 0xCu);
    }
  }
}

void __NTKPhotosConfirmMemoryWasViewed_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__40;
  v18 = __Block_byref_object_dispose__40;
  v19 = 0;
  v2 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __NTKPhotosConfirmMemoryWasViewed_block_invoke_358;
  v11[3] = &unk_278780D18;
  v13 = &v14;
  v12 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 performChangesAndWait:v11 error:&v10];
  v4 = v10;

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v5 != 1 || !v15[5])
  {
    v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = "NO";
      if (v3)
      {
        v8 = "YES";
      }

      v9 = v15[5];
      *buf = 138413058;
      v21 = v7;
      v22 = 2080;
      v23 = v8;
      v24 = 2112;
      v25 = v4;
      v26 = 2112;
      v27 = v9;
      _os_log_error_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_ERROR, "Error confirming the watch has viewed memory %@, success: %s, error: %@, memoryChangeRequest: %@", buf, 0x2Au);
    }
  }

  _Block_object_dispose(&v14, 8);
}

void sub_22DB83534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __NTKPhotosConfirmMemoryWasViewed_block_invoke_358(uint64_t a1)
{
  v2 = [MEMORY[0x277CD98E8] changeRequestForRemotelyViewedMemoryWithLocalIdentifier:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t NTKPhotosCanEncodeHEIC()
{
  if (NTKPhotosCanEncodeHEIC_onceToken != -1)
  {
    NTKPhotosCanEncodeHEIC_cold_1();
  }

  return NTKPhotosCanEncodeHEIC_isSupported;
}

void __NTKPhotosCanEncodeHEIC_block_invoke()
{
  v1 = CGImageDestinationCopyTypeIdentifiers();
  v0 = [*MEMORY[0x277CE1D90] identifier];
  NTKPhotosCanEncodeHEIC_isSupported = [(__CFArray *)v1 containsObject:v0];
}

void sub_22DB83B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NTKLocationComponentStringsShowSecondsAndLatLongTitle(void *a1, int a2, int a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    [v5 coordinate];
    v8 = CoordinateComponentString(1, a2, a3, v7);
    [v6 coordinate];
    v10 = CoordinateComponentString(0, a2, a3, v9);
    v14[0] = @"NTKLocationComponentLatitudeKey";
    v14[1] = @"NTKLocationComponentLongitudeKey";
    v15[0] = v8;
    v15[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    if (a2)
    {
      v12 = @"LOCATION_UNKNOWN_POSITION";
    }

    else
    {
      v12 = @"LOCATION_UNKNOWN_POSITION_NO_SECONDS";
    }

    v8 = NTKClockFaceLocalizedString(v12, @"unknown lat/lng");
    v16[0] = @"NTKLocationComponentLatitudeKey";
    v16[1] = @"NTKLocationComponentLongitudeKey";
    v17[0] = v8;
    v17[1] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  return v11;
}

id CoordinateComponentString(int a1, int a2, int a3, double a4)
{
  v6 = a1;
  v7 = a4;
  v8 = (a4 - a4) * 60.0;
  v9 = -v8;
  if (v8 >= 0.0)
  {
    v9 = (a4 - a4) * 60.0;
  }

  v10 = v9;
  v11 = (v9 - v9) * 60.0;
  if (v7 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -v7;
  }

  if (a1)
  {
    if (a4 < 0.0)
    {
      v13 = @"LOCATION_POSITION_SOUTH";
      v14 = @"south coordinate label";
    }

    else
    {
      v13 = @"LOCATION_POSITION_NORTH";
      v14 = @"north coordinate label";
    }
  }

  else if (a4 < 0.0)
  {
    v13 = @"LOCATION_POSITION_WEST";
    v14 = @"west coordinate label";
  }

  else
  {
    v13 = @"LOCATION_POSITION_EAST";
    v14 = @"east coordinate label";
  }

  v15 = NTKClockFaceLocalizedString(v13, v14);
  v16 = v15;

  v17 = v15;
  v18 = MEMORY[0x277CCABB8];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];

  v21 = MEMORY[0x277CCABB8];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v23 = [v21 localizedStringFromNumber:v22 numberStyle:0];

  v24 = MEMORY[0x277CCABB8];
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v26 = [v24 localizedStringFromNumber:v25 numberStyle:0];

  if (v6)
  {
    v27 = @"LATITUDE";
  }

  else
  {
    v27 = @"LONGITUDE";
  }

  v28 = NTKClockFaceLocalizedString(v27, v27);
  if (((a2 ^ 1) & 1) == 0 && (a3 & 1) == 0)
  {
    v29 = NTKClockFaceLocalizedString(@"LOCATION_POSITION_FORMAT", @"latitude/longitude dms with direction format string");
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = v17;
    v38 = 0;
    v35 = v26;
LABEL_19:
    v31 = [v30 initWithFormat:v29, v20, v23, v35, v36, v38, v40];
    goto LABEL_27;
  }

  if ((a3 ^ 1) & 1) != 0 || (a2)
  {
    if ((a2 ^ 1 | a3 ^ 1))
    {
      v29 = NTKClockFaceLocalizedString(@"LOCATION_POSITION_FORMAT_NO_SECONDS", @"latitude/longitude dm with direction format string");
      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      v35 = v17;
      v36 = 0;
      goto LABEL_19;
    }

    v29 = NTKClockFaceLocalizedString(@"LOCATION_POSITION_FORMAT_WITH_LATLONG_TITLE", @"latitude/longitude dms with direction format string");
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v39 = v17;
    v40 = 0;
    v37 = v26;
  }

  else
  {
    v29 = NTKClockFaceLocalizedString(@"LOCATION_POSITION_FORMAT_WITH_LATLONG_TITLE_NO_SECONDS", @"latitude/longitude dm with direction format string");
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v37 = v17;
    v39 = 0;
  }

  v31 = [v32 initWithFormat:v29, v28, v20, v23, v37, v39, v40];
LABEL_27:
  v33 = v31;

  return v33;
}

__CFString *NTKLocationNameForPlacemark(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (!v4)
  {
    v12 = NTKClockFaceLocalizedString(@"LOCATION_UNKNOWN_POSITION_NAME", @"unknown lat/lng");
    goto LABEL_30;
  }

  if (!v5)
  {
    v12 = &stru_284110E98;
    goto LABEL_30;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v8 = [v6 locality];
  if (![v8 length])
  {
    goto LABEL_6;
  }

  v9 = [v6 administrativeArea];
  v2 = [v9 length];

  if (v2)
  {
    v8 = [v6 locality];
    [v7 addObject:v8];
LABEL_6:
  }

  v10 = [v6 locality];
  v11 = [v10 length];
  if (v11 && ([v6 administrativeArea], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
  {
  }

  else
  {
    v13 = [v6 inlandWater];
    v14 = [v13 length];

    if (v11)
    {
    }

    if (!v14)
    {
      goto LABEL_17;
    }

    v10 = [v6 inlandWater];
    [v7 addObject:v10];
  }

LABEL_17:
  v15 = [v6 administrativeArea];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [v6 administrativeArea];
    [v7 addObject:v17];
  }

  v18 = [v6 country];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [v6 country];
    [v7 addObject:v20];
  }

  if (![v7 count])
  {
    v21 = [v6 ocean];
    v22 = [v21 length];

    if (v22)
    {
      v23 = [v6 ocean];
      [v7 addObject:v23];
    }
  }

  if ([v7 count] < 2)
  {
    if ([v7 count] == 1)
    {
      v12 = [v7 firstObject];
    }

    else
    {
      v12 = &stru_284110E98;
    }
  }

  else
  {
    v24 = NTKClockFaceLocalizedString(@"LOCATION_LOCALITY_MULTIPLE_FORMAT", @"multiple locality items");
    v25 = MEMORY[0x277CCACA8];
    v26 = [v7 objectAtIndexedSubscript:0];
    v27 = [v7 objectAtIndexedSubscript:1];
    v12 = [v25 localizedStringWithFormat:v24, v26, v27];
  }

LABEL_30:

  return v12;
}

double _smallRectSwatchSize()
{
  if (_smallRectSwatchSize_onceToken != -1)
  {
    _smallRectSwatchSize_cold_1();
  }

  return *&_smallRectSwatchSize_size_0;
}

double _largeRectSwatchSize()
{
  if (_largeRectSwatchSize_onceToken != -1)
  {
    _largeRectSwatchSize_cold_1();
  }

  return *&_largeRectSwatchSize_size_0;
}

uint64_t ___smallCircleSwatchSize_block_invoke()
{
  result = NTKCScreenStyle();
  v1 = 36.0;
  if (result == 1)
  {
    v1 = 42.3333333;
  }

  _smallCircleSwatchSize_size_0 = *&v1;
  _smallCircleSwatchSize_size_1 = *&v1;
  return result;
}

double ___largeCircleSwatchSize_block_invoke()
{
  result = dbl_22DCE8FF0[NTKCScreenStyle() == 1];
  _largeCircleSwatchSize_size_0 = *&result;
  _largeCircleSwatchSize_size_1 = *&result;
  return result;
}

uint64_t ___smallRectSwatchSize_block_invoke()
{
  result = NTKCScreenStyle();
  v1 = 62.0;
  if (result == 1)
  {
    v1 = 71.3333333;
  }

  _smallRectSwatchSize_size_0 = *&v1;
  _smallRectSwatchSize_size_1 = *&v1;
  return result;
}

uint64_t ___largeRectSwatchSize_block_invoke()
{
  result = NTKCScreenStyle();
  v1 = 116.0;
  if (result == 1)
  {
    v1 = 113.333333;
  }

  _largeRectSwatchSize_size_0 = *&dbl_22DCE8FF0[result == 1];
  _largeRectSwatchSize_size_1 = *&v1;
  return result;
}

double ___shortLargeRectSwatchSize_block_invoke()
{
  v0 = _largeRectSwatchSize();
  _smallRectSwatchSize();
  result = v1 * 0.6;
  _shortLargeRectSwatchSize_size_0 = *&v0;
  *&_shortLargeRectSwatchSize_size_1 = v1 * 0.6;
  return result;
}

void sub_22DB86658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NTKStringForUpNextSection(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return @"all day";
  }

  else
  {
    return off_278784818[a1 + 1];
  }
}

__CFString *NTKIdentifierForUpNextSection(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = MEMORY[0x277D444C0];
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v2 = @"defaultSectionIdentifier_historic";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v1 = MEMORY[0x277D44500];
        goto LABEL_13;
      case 3:
        v1 = MEMORY[0x277D44530];
        goto LABEL_13;
      case 4:
        v1 = MEMORY[0x277D44528];
LABEL_13:
        v2 = *v1;
        goto LABEL_14;
    }

    v2 = 0;
  }

LABEL_14:

  return v2;
}

uint64_t NTKStringForIndexPath(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 upNextSection] + 1;
  if (v3 > 5)
  {
    v4 = @"all day";
  }

  else
  {
    v4 = off_278784818[v3];
  }

  v5 = [v2 element];

  return [v1 stringWithFormat:@"%@ - %lu", v4, v5];
}

id NTKSectionPathFromIndexPath(void *a1)
{
  v1 = a1;
  v2 = NTKIdentifierForUpNextSection([v1 section]);
  v3 = objc_alloc(MEMORY[0x277D444B0]);
  v4 = [v1 item];

  v5 = [v3 initWithSectionName:v2 element:v4];

  return v5;
}

uint64_t NTKSectionForSectionIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"defaultSectionIdentifier_historic"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D444C0]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D44530]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D44528]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D44500]])
  {
    v2 = 2;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void sub_22DB878B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_22DB89D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB8F07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB8F624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void _LayoutConstants_10(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  memset(v8, 0, sizeof(v8));
  v6 = v8;
  ___LayoutConstants_block_invoke_51(v5, v8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2 != 10)
  {
    if (a2 == 12)
    {
      v6 = &v8[1] + 8;
    }

    else
    {
      v7 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _LayoutConstants_cold_1(a2, v7);
      }

      v6 = v8;
    }
  }

  __copy_assignment_8_8_t0w8_s8_s16(a3, v6);
  __destructor_8_S_s8_s16_S_s32_s40(v8);
}

void sub_22DB8FCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __destructor_8_s8_s16(v9);
  __destructor_8_S_s8_s16_S_s32_s40(&a9);
  _Unwind_Resume(a1);
}

void __destructor_8_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_22DB9093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15)
{
  __destructor_8_S_s8_s16_S_s32_s40(v15);

  _Unwind_Resume(a1);
}

void __copy_assignment_8_8_t0w8_s8_s16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 16);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 16);

  objc_storeStrong(v3, v4);
}

void __destructor_8_S_s8_s16_S_s32_s40(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_22DB90D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_22DB90F60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22DB92654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB94944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22DB9845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DB986D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NTKWorldClockCityAbbreviation(void *a1)
{
  v1 = a1;
  v2 = +[NTKCustomWorldCityAbbreviationsStore sharedInstance];
  v3 = [v2 customAbbreviations];
  v4 = [v1 alCityId];
  v5 = [v4 stringValue];
  v6 = [v3 objectForKey:v5];

  if (!v6)
  {
    v7 = [v1 alCityId];
    v8 = [v7 stringValue];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v9 localizedStringForKey:v8 value:&stru_284110E98 table:@"WorldClock"];

    if (v6 && [v6 length] && (objc_msgSend(v8, "isEqualToString:", v6) & 1) == 0)
    {
      goto LABEL_14;
    }

    v10 = [v1 name];
    v8 = [v10 uppercaseStringWithLocale:0];

    v11 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v12 = [v11 invertedSet];

    v13 = [v8 componentsSeparatedByCharactersInSet:v12];
    if ([v13 count] >= 2)
    {
      v14 = objc_opt_new();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __NTKWorldClockCityAbbreviation_block_invoke;
      v19[3] = &unk_27877DED0;
      v15 = v14;
      v20 = v15;
      [v13 enumerateObjectsUsingBlock:v19];
      if ([v15 count] > 1)
      {
        v6 = [v15 componentsJoinedByString:&stru_284110E98];

LABEL_13:
LABEL_14:

        goto LABEL_15;
      }
    }

    v16 = [v8 length];
    if (v16 >= 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = v16;
    }

    v6 = [v8 substringToIndex:v17];
    goto LABEL_13;
  }

LABEL_15:

  return v6;
}

void __NTKWorldClockCityAbbreviation_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 length];
  v7 = v9;
  if (v6)
  {
    v8 = [v9 substringToIndex:1];
    [*(a1 + 32) addObject:v8];
    if ([*(a1 + 32) count] >= 3)
    {
      *a4 = 1;
    }

    v7 = v9;
  }
}

void sub_22DB9E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB9E25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB9E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB9E978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DB9F530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBA06E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NTKTrackedPhotosServerInterface()
{
  if (NTKTrackedPhotosServerInterface_onceToken != -1)
  {
    NTKTrackedPhotosServerInterface_cold_1();
  }

  v1 = NTKTrackedPhotosServerInterface_interface;

  return v1;
}

void __NTKTrackedPhotosServerInterface_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A8ADF90];
  v1 = NTKTrackedPhotosServerInterface_interface;
  NTKTrackedPhotosServerInterface_interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v4 = [v2 setWithArray:{v3, v5, v6}];

  [NTKTrackedPhotosServerInterface_interface setClasses:v4 forSelector:sel_fetchTrackedPhotosPriorityList_ argumentIndex:0 ofReply:1];
}

void sub_22DBA513C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NTKFaceBundleStringFromFaceStyle(uint64_t a1)
{
  v2 = _NTKStringFromFaceStyleDict();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

id _NTKStringFromFaceStyleDict()
{
  if (_NTKStringFromFaceStyleDict_onceToken != -1)
  {
    _NTKStringFromFaceStyleDict_cold_1();
  }

  v1 = _NTKStringFromFaceStyleDict_dictionary;

  return v1;
}

BOOL NTKFaceBundleGetFaceStyleFromString(void *a1, void *a2)
{
  v3 = a1;
  if (_NTKFaceStyleFromStringDict_onceToken != -1)
  {
    NTKFaceBundleGetFaceStyleFromString_cold_1();
  }

  v4 = [_NTKFaceStyleFromStringDict_dictionary objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    *a2 = [v4 integerValue];
  }

  return v5 != 0;
}

id NTKFaceBundleStringFromCustomEditMode(uint64_t a1)
{
  v2 = _NTKStringFromEditModeDict();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

id _NTKStringFromEditModeDict()
{
  if (_NTKStringFromEditModeDict_onceToken != -1)
  {
    _NTKStringFromEditModeDict_cold_1();
  }

  v1 = _NTKStringFromEditModeDict_dictionary;

  return v1;
}

BOOL NTKFaceBundleGetCustomEditModeFromString(void *a1, void *a2)
{
  v3 = a1;
  if (_NTKEditModeFromStringDict_onceToken != -1)
  {
    NTKFaceBundleGetCustomEditModeFromString_cold_1();
  }

  v4 = [_NTKEditModeFromStringDict_dictionary objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    *a2 = [v4 integerValue];
  }

  return v5 != 0;
}

id NTKFaceBundleStringFromComplicationType(uint64_t a1)
{
  v2 = _NTKStringFromComplicationTypeDict();
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

id _NTKStringFromComplicationTypeDict()
{
  if (_NTKStringFromComplicationTypeDict_onceToken != -1)
  {
    _NTKStringFromComplicationTypeDict_cold_1();
  }

  v1 = _NTKStringFromComplicationTypeDict_dictionary;

  return v1;
}

BOOL NTKFaceBundleGetComplicationTypeFromString(void *a1, void *a2)
{
  v3 = a1;
  if (_NTKComplicationTypeFromStringDict_onceToken != -1)
  {
    NTKFaceBundleGetComplicationTypeFromString_cold_1();
  }

  v4 = [_NTKComplicationTypeFromStringDict_dictionary objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    *a2 = [v4 unsignedIntegerValue];
  }

  return v5 != 0;
}

id NTKFaceBundleStringFromDateStyle(uint64_t a1)
{
  v2 = _NTKStringFromDateStyleDict();
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

id _NTKStringFromDateStyleDict()
{
  if (_NTKStringFromDateStyleDict_onceToken != -1)
  {
    _NTKStringFromDateStyleDict_cold_1();
  }

  v1 = _NTKStringFromDateStyleDict_dictionary;

  return v1;
}

BOOL NTKFaceBundleGetDateStyleFromString(void *a1, void *a2)
{
  v3 = a1;
  if (_NTKDateStyleFromStringDict_onceToken != -1)
  {
    NTKFaceBundleGetDateStyleFromString_cold_1();
  }

  v4 = [_NTKDateStyleFromStringDict_dictionary objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    *a2 = [v4 unsignedIntegerValue];
  }

  return v5 != 0;
}

id NTKFaceBundleStringFromComplicationSlot(void *a1)
{
  v1 = a1;
  v2 = _NTKStringFromComplicationSlotDict();
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3;
}

id _NTKStringFromComplicationSlotDict()
{
  if (_NTKStringFromComplicationSlotDict_onceToken != -1)
  {
    _NTKStringFromComplicationSlotDict_cold_1();
  }

  v1 = _NTKStringFromComplicationSlotDict_dictionary;

  return v1;
}

BOOL NTKFaceBundleGetComplicationSlotFromString(void *a1, void *a2)
{
  v3 = a1;
  v4 = _NTKComplicationSlotFromStringDict();
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = v5;
    *a2 = v5;
  }

  return v5 != 0;
}

id _NTKComplicationSlotFromStringDict()
{
  if (_NTKComplicationSlotFromStringDict_onceToken != -1)
  {
    _NTKComplicationSlotFromStringDict_cold_1();
  }

  v1 = _NTKComplicationSlotFromStringDict_dictionary;

  return v1;
}

id NTKFaceBundleComplicationSlotFromString(void *a1)
{
  v1 = a1;
  v2 = _NTKComplicationSlotFromStringDict();
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3;
}

id _DictionaryByReversingDictionary(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___DictionaryByReversingDictionary_block_invoke;
  v5[3] = &unk_27877E360;
  v3 = v2;
  v6 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

uint64_t NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FaceColorMappingEnabled", @"com.apple.NanoTimeKit.face", &keyExistsAndHasValidFormat);
  v3 = AppBooleanValue != 0;
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue;
    v5 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = v4 != 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "OVERRIDE NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues: %i", buf, 8u);
    }
  }

  else
  {
    v3 = [v1 supportsPDRCapability:569066848];
  }

  return v3;
}

uint64_t NTKDefaultFaceColorForDeviceCollection(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v3);
  v5 = [v3 collectionType];
  if (v5 > 4)
  {
    switch(v5)
    {
      case 5:
        a2 = 102;
        goto LABEL_21;
      case 6:
        a2 = 103;
        goto LABEL_21;
      case 8:
        v6 = v4 == 0;
        v7 = 53;
        goto LABEL_18;
    }

LABEL_22:
    if ([v3 materialType] == 14)
    {
      a2 = 6;
    }

    else if ([v3 materialType] == 15)
    {
      a2 = 75;
    }

    goto LABEL_21;
  }

  if (v5 == 3)
  {
    [v3 materialType];
    v6 = v4 == 0;
    v7 = 100;
LABEL_18:
    if (v6)
    {
      a2 = v7;
    }

    else
    {
      a2 = 1000;
    }

    goto LABEL_21;
  }

  if (v5 != 4)
  {
    goto LABEL_22;
  }

  v8 = [v3 materialType];
  v9 = 1001;
  if (v8 != 8)
  {
    v9 = 1002;
  }

  if (v8 == 10)
  {
    v9 = 1000;
  }

  if (v4)
  {
    a2 = v9;
  }

  else
  {
    a2 = 101;
  }

LABEL_21:

  return a2;
}

id _LocalizedColorFallingBackToColor(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByAppendingString:@"_COMPANION"];
  v3 = NTKCompanionClockFaceLocalizedString(v2, @"color");
  if (!v3)
  {
    v3 = NTKClockFaceLocalizedString(v1, @"color");
    if (!v3)
    {
      v3 = NTKClockFaceLocalizedString(@"EDIT_MODE_LABEL_COLOR", @"color");
    }
  }

  v4 = v3;

  return v4;
}

id _EnumValueRange(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a2 - a1];
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    [i addObject:v5];
  }

  return i;
}

id NTKNewToFortuneColors()
{
  if (NTKNewToFortuneColors_onceToken != -1)
  {
    NTKNewToFortuneColors_cold_1();
  }

  v1 = NTKNewToFortuneColors_fortuneColors;

  return v1;
}

id NTKNewToElectricColors()
{
  if (NTKNewToElectricColors_onceToken != -1)
  {
    NTKNewToElectricColors_cold_1();
  }

  v1 = NTKNewToElectricColors_electricColors;

  return v1;
}

id NTKNewToEmperorColors()
{
  if (NTKNewToEmperorColors_onceToken != -1)
  {
    NTKNewToEmperorColors_cold_1();
  }

  v1 = NTKNewToEmperorColors_emperorColors;

  return v1;
}

id NTKNewToGloryColors()
{
  if (NTKNewToGloryColors_onceToken != -1)
  {
    NTKNewToGloryColors_cold_1();
  }

  v1 = NTKNewToGloryColors_gloryColors;

  return v1;
}

id NTKNewToGloryEColors()
{
  if (NTKNewToGloryEColors_onceToken != -1)
  {
    NTKNewToGloryEColors_cold_1();
  }

  v1 = NTKNewToGloryEColors_gloryEColors;

  return v1;
}

id NTKNewToGraceColors()
{
  if (NTKNewToGraceColors_onceToken != -1)
  {
    NTKNewToGraceColors_cold_1();
  }

  v1 = NTKNewToGraceColors_graceColors;

  return v1;
}

id NTKNewToGraceEColors()
{
  if (NTKNewToGraceEColors_onceToken != -1)
  {
    NTKNewToGraceEColors_cold_1();
  }

  v1 = NTKNewToGraceEColors_graceColors;

  return v1;
}

id NTKNewToHunterColors()
{
  if (NTKNewToHunterColors_onceToken != -1)
  {
    NTKNewToHunterColors_cold_1();
  }

  v1 = NTKNewToHunterColors_hunterColors;

  return v1;
}

id NTKNewToHunterEColors()
{
  if (NTKNewToHunterEColors_onceToken != -1)
  {
    NTKNewToHunterEColors_cold_1();
  }

  v1 = NTKNewToHunterEColors_hunterEColors;

  return v1;
}

id NTKDistinctSportPlusAndEditionColors()
{
  if (NTKDistinctSportPlusAndEditionColors_onceToken != -1)
  {
    NTKDistinctSportPlusAndEditionColors_cold_1();
  }

  v1 = NTKDistinctSportPlusAndEditionColors_distinctCollectionColors;

  return v1;
}

void __NTKNewToElectricColors_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9360;
  v2[1] = xmmword_22DCE9370;
  v2[2] = xmmword_22DCE9380;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:6];
  v1 = NTKNewToElectricColors_electricColors;
  NTKNewToElectricColors_electricColors = v0;
}

void __NTKNewToGloryColors_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9430;
  v2[1] = unk_22DCE9440;
  v2[2] = xmmword_22DCE9450;
  v2[3] = unk_22DCE9460;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:8];
  v1 = NTKNewToGloryColors_gloryColors;
  NTKNewToGloryColors_gloryColors = v0;
}

void __NTKNewToGloryEColors_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9390;
  v2[1] = xmmword_22DCE93A0;
  v2[2] = xmmword_22DCE93B0;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:6];
  v1 = NTKNewToGloryEColors_gloryEColors;
  NTKNewToGloryEColors_gloryEColors = v0;
}

void __NTKNewToGraceColors_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9470;
  v2[1] = unk_22DCE9480;
  v2[2] = xmmword_22DCE9490;
  v3 = 60;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:7];
  v1 = NTKNewToGraceColors_graceColors;
  NTKNewToGraceColors_graceColors = v0;
}

void __NTKNewToGraceEColors_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE94A8;
  v2[1] = unk_22DCE94B8;
  v2[2] = xmmword_22DCE94C8;
  v3 = 73;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:7];
  v1 = NTKNewToGraceEColors_graceColors;
  NTKNewToGraceEColors_graceColors = v0;
}

void __NTKNewToHunterColors_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE94E0;
  v2[1] = unk_22DCE94F0;
  v2[2] = xmmword_22DCE9500;
  v3 = 80;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:7];
  v1 = NTKNewToHunterColors_hunterColors;
  NTKNewToHunterColors_hunterColors = v0;
}

void __NTKNewToHunterEColors_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9518;
  v2[1] = unk_22DCE9528;
  v2[2] = xmmword_22DCE9538;
  v2[3] = unk_22DCE9548;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:8];
  v1 = NTKNewToHunterEColors_hunterEColors;
  NTKNewToHunterEColors_hunterEColors = v0;
}

void __NTKDistinctSportPlusAndEditionColors_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = xmmword_22DCE9558;
  v3 = 1002;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:&v2 count:3];
  v1 = NTKDistinctSportPlusAndEditionColors_distinctCollectionColors;
  NTKDistinctSportPlusAndEditionColors_distinctCollectionColors = v0;
}

void __NTKNewToFortuneColors_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9570;
  v2[1] = unk_22DCE9580;
  v2[2] = xmmword_22DCE9590;
  v2[3] = unk_22DCE95A0;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:8];
  v1 = NTKNewToFortuneColors_fortuneColors;
  NTKNewToFortuneColors_fortuneColors = v0;
}

void __NTKNewToEmperorColors_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = xmmword_22DCE95B0;
  v3 = 44;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:&v2 count:3];
  v1 = NTKNewToEmperorColors_emperorColors;
  NTKNewToEmperorColors_emperorColors = v0;
}

void NTKFaceColorNameAndCollection(uint64_t a1, __CFString **a2, __CFString **a3)
{
  v6 = @"seasons";
  v7 = @"seasons.fall2016";
  v8 = v7;
  v9 = 0;
  if (a1 > 999)
  {
    if (a1 == 1000)
    {
LABEL_9:
      v10 = ntk_seasons_spring2015_gold;
    }

    else if (a1 == 1001)
    {
LABEL_8:
      v10 = ntk_seasons_spring2015_goldRose;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if (a1 != 1002)
      {
        goto LABEL_104;
      }

      v10 = ntk_seasons_spring2015_goldYellow;
    }

LABEL_101:
    v9 = *v10;
    if (v9)
    {
      v16 = 0;
      v17 = 0;
      [NTKPigmentEditOption parseFullname:v9 collectionName:&v17 optionName:&v16 fraction:0];
      v11 = v17;
      v12 = v16;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v10 = ntk_seasons_spring2015_pink;
    v11 = 0;
    v12 = 0;
    switch(a1)
    {
      case 0:
        goto LABEL_101;
      case 1:
        v10 = ntk_seasons_spring2015_purple;
        goto LABEL_101;
      case 2:
        v10 = ntk_seasons_spring2015_blue;
        goto LABEL_101;
      case 3:
        v10 = ntk_seasons_spring2015_green;
        goto LABEL_101;
      case 4:
        v10 = ntk_seasons_spring2016_yellow;
        goto LABEL_101;
      case 5:
        v10 = ntk_seasons_spring2015_lightOrange;
        goto LABEL_101;
      case 6:
        v10 = ntk_seasons_fall2015_red;
        goto LABEL_101;
      case 7:
        v10 = ntk_seasons_spring2015_white;
        goto LABEL_101;
      case 8:
        v10 = ntk_seasons_fall2015_orange;
        goto LABEL_101;
      case 9:
        v10 = ntk_seasons_fall2015_turquoise;
        goto LABEL_101;
      case 10:
        v10 = ntk_seasons_fall2015_midnightBlue;
        goto LABEL_101;
      case 11:
        v10 = ntk_seasons_fall2015_lavender;
        goto LABEL_101;
      case 12:
        v10 = ntk_seasons_fall2015_vintageRose;
        goto LABEL_101;
      case 13:
        v10 = ntk_seasons_fall2015_walnut;
        goto LABEL_101;
      case 14:
        v10 = ntk_seasons_fall2015_stone;
        goto LABEL_101;
      case 15:
        v10 = ntk_seasons_fall2015_antiqueWhite;
        goto LABEL_101;
      case 16:
        v10 = ntk_seasons_fall2015_lightBlue;
        goto LABEL_101;
      case 17:
        v10 = ntk_seasons_spring2016_mint;
        goto LABEL_101;
      case 18:
        v10 = ntk_seasons_spring2019_lilac;
        goto LABEL_101;
      case 19:
        v10 = ntk_seasons_spring2016_royalBlue;
        goto LABEL_101;
      case 20:
        v10 = ntk_seasons_spring2016_lightPink;
        goto LABEL_101;
      case 21:
        v10 = ntk_seasons_spring2016_apricot;
        goto LABEL_101;
      case 22:
        v10 = ntk_seasons_fall2016_oceanBlue;
        goto LABEL_101;
      case 23:
        v11 = v7;
        v9 = 0;
        v12 = @"cocoa";
        break;
      case 24:
        v11 = v6;
        v9 = 0;
        v12 = @"iceWhite";
        break;
      case 25:
        v10 = ntk_seasons_fall2017_pinkSand;
        goto LABEL_101;
      case 26:
        v13 = v6;
        goto LABEL_81;
      case 27:
        v10 = ntk_seasons_spring2017_pebble;
        goto LABEL_101;
      case 28:
        v10 = ntk_seasons_spring2017_azure;
        goto LABEL_101;
      case 29:
        v10 = ntk_seasons_spring2017_camellia;
        goto LABEL_101;
      case 30:
        v10 = ntk_seasons_summer2017_mistBlue;
        goto LABEL_101;
      case 31:
        v10 = ntk_seasons_summer2017_flamingo;
        goto LABEL_101;
      case 32:
        v10 = ntk_seasons_summer2017_pollen;
        goto LABEL_101;
      case 33:
        v10 = ntk_seasons_fall2017_softWhite;
        goto LABEL_101;
      case 34:
        v10 = ntk_seasons_fall2017_blueCobalt;
        goto LABEL_101;
      case 35:
        v10 = ntk_seasons_fall2017_darkOlive;
        goto LABEL_101;
      case 36:
        v10 = ntk_seasons_fall2017_violet;
        goto LABEL_101;
      case 37:
        v10 = ntk_seasons_fall2017_roseRed;
        goto LABEL_101;
      case 38:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 104:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
        break;
      case 39:
        v10 = ntk_seasons_fall2017_flash;
        goto LABEL_101;
      case 40:
        v10 = ntk_seasons_winter2017_darkTeal;
        goto LABEL_101;
      case 41:
        v10 = ntk_seasons_fall2017_electricPink;
        goto LABEL_101;
      case 42:
        v10 = ntk_seasons_spring2018_peach;
        goto LABEL_101;
      case 43:
        v10 = ntk_seasons_spring2018_denimBlue;
        goto LABEL_101;
      case 44:
        v10 = ntk_seasons_spring2018_flashLight;
        goto LABEL_101;
      case 45:
        v10 = ntk_seasons_fall2019_clementine;
        goto LABEL_101;
      case 46:
        v10 = ntk_seasons_winter2018_mellowYellow;
        goto LABEL_101;
      case 47:
        v10 = ntk_seasons_fall2018_stormGray;
        goto LABEL_101;
      case 48:
        v10 = ntk_seasons_winter2018_pacificGreen;
        goto LABEL_101;
      case 49:
        v10 = ntk_seasons_fall2018_blueHorizon;
        goto LABEL_101;
      case 50:
        v10 = ntk_seasons_fall2018_indigo;
        goto LABEL_101;
      case 51:
        v10 = ntk_seasons_fall2018_lavenderGray;
        goto LABEL_101;
      case 52:
        v10 = ntk_seasons_winter2018_hibiscus;
        goto LABEL_101;
      case 53:
      case 101:
        goto LABEL_8;
      case 54:
        v10 = ntk_seasons_spring2019_papaya;
        goto LABEL_101;
      case 55:
        v10 = ntk_seasons_summer2019_canaryYellow;
        goto LABEL_101;
      case 56:
        v10 = ntk_seasons_spring2019_spearmint;
        goto LABEL_101;
      case 57:
        v10 = ntk_seasons_spring2019_cerulean;
        goto LABEL_101;
      case 58:
        v10 = ntk_seasons_spring2019_delftBlue;
        goto LABEL_101;
      case 59:
        v10 = ntk_seasons_summer2019_dragonFruit;
        goto LABEL_101;
      case 60:
        v10 = ntk_seasons_fall2019_pineGreen;
        goto LABEL_101;
      case 61:
        v10 = ntk_seasons_fall2019_lemonCream;
        goto LABEL_101;
      case 62:
        v10 = ntk_seasons_fall2019_alaskanBlue;
        goto LABEL_101;
      case 63:
        v10 = ntk_seasons_winter2019_pomegranate;
        goto LABEL_101;
      case 64:
        v10 = ntk_seasons_winter2019_khaki;
        goto LABEL_101;
      case 65:
        v10 = ntk_seasons_winter2019_beryl;
        goto LABEL_101;
      case 66:
        v10 = ntk_seasons_fall2019_camel;
        goto LABEL_101;
      case 67:
        v10 = ntk_seasons_summer2020_seaFoam;
        goto LABEL_101;
      case 68:
        v10 = ntk_seasons_spring2020_surfBlue;
        goto LABEL_101;
      case 69:
        v10 = ntk_seasons_spring2020_cactus;
        goto LABEL_101;
      case 70:
        v10 = ntk_seasons_summer2020_linenBlue;
        goto LABEL_101;
      case 71:
        v10 = ntk_seasons_spring2020_grapefruit;
        goto LABEL_101;
      case 72:
        v10 = ntk_seasons_spring2020_neonPink;
        goto LABEL_101;
      case 73:
        v10 = ntk_seasons_summer2020_coastalGray;
        goto LABEL_101;
      case 74:
        v10 = ntk_seasons_fall2020_pinkCitrus;
        goto LABEL_101;
      case 75:
        v10 = ntk_seasons_fall2020_deepNavy;
        goto LABEL_101;
      case 76:
        v10 = ntk_seasons_fall2020_cyprusGreen;
        goto LABEL_101;
      case 77:
        v10 = ntk_seasons_fall2020_cream;
        goto LABEL_101;
      case 78:
        v10 = ntk_seasons_fall2020_kumquat;
        goto LABEL_101;
      case 79:
        v10 = ntk_seasons_fall2020_northernBlue;
        goto LABEL_101;
      case 80:
        v10 = ntk_seasons_fall2020_plum;
        goto LABEL_101;
      case 81:
        v10 = ntk_seasons_summer2021_electricOrange;
        goto LABEL_101;
      case 82:
        v10 = ntk_seasons_spring2021_sunflower;
        goto LABEL_101;
      case 83:
        v10 = ntk_seasons_spring2021_pistachio;
        goto LABEL_101;
      case 84:
        v10 = ntk_seasons_summer2021_cloudBlue;
        goto LABEL_101;
      case 85:
        v10 = ntk_seasons_spring2021_abyss;
        goto LABEL_101;
      case 86:
        v10 = ntk_seasons_spring2021_seaSalt;
        goto LABEL_101;
      case 87:
        v10 = ntk_seasons_summer2021_olive;
        goto LABEL_101;
      case 88:
        v10 = ntk_seasons_spring2021_mallardGreen;
        goto LABEL_101;
      case 100:
        goto LABEL_9;
      case 102:
        v10 = ntk_zeus_orange;
        goto LABEL_101;
      case 103:
        v10 = ntk_victory_volt;
        goto LABEL_101;
      case 105:
        v10 = ntk_seasons_black;
        goto LABEL_101;
      case 200:
        v10 = ntk_special_multicolor;
        goto LABEL_101;
      case 201:
        v11 = @"siri";
        v9 = 0;
        v12 = @"siri";
        break;
      case 202:
        v13 = @"siri";
LABEL_81:
        v11 = v13;
        v9 = 0;
        v12 = @"gray";
        break;
      default:
        v11 = 0;
        v12 = 0;
        break;
    }
  }

LABEL_104:
  if (a2)
  {
    v14 = v12;
    *a2 = v12;
  }

  if (a3)
  {
    v15 = v11;
    *a3 = v11;
  }
}

id NTKFaceColorName(uint64_t a1)
{
  v3 = 0;
  NTKFaceColorNameAndCollection(a1, &v3, 0);
  v1 = v3;

  return v1;
}

id NTKFaceColorCollectionName(uint64_t a1)
{
  v3 = 0;
  NTKFaceColorNameAndCollection(a1, 0, &v3);
  v1 = v3;

  return v1;
}

id NTKFaceColorNameForDuotones(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  NTKFaceColorNameAndCollection(a1, &v12, &v11);
  v3 = v12;
  v4 = v11;
  v9 = 0;
  v10 = 0;
  NTKFaceColorNameAndCollection(a2, &v10, &v9);
  v5 = v10;
  v6 = v9;
  v7 = ntk_duotone(v4, v3, v6, v5);

  return v7;
}

__CFString *NUNIAstronomyVistaNameForValue(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_278785DF0[a1];
  }
}

uint64_t NUNIAstronomyVistaValueForName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"earth"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"luna"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"orrery"])
  {
    v2 = 2;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

__CFString *NUNIAstronomyVistaNameLocalizationKeyForValue(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_278785DD8[a1];
  }
}

id PerformSelectorWithArgument(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [a1 performSelector:a2 withObject:a3];
  }

  else
  {
    [a1 performSelector:a2];
  }
  v3 = ;

  return v3;
}

id PerformSelectorWithName(void *a1, NSString *a2)
{
  v3 = a1;
  v4 = [v3 performSelector:NSSelectorFromString(a2)];

  return v4;
}

uint64_t NTKProtoPigmentCollectionConfigReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v51[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v51[0] & 0x7F) << v5;
      if ((v51[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_78;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_78;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 24;
        goto LABEL_78;
      case 4u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addDefaultGalleryColorNames:v15];
        }

        goto LABEL_76;
      case 5u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        a1[80] |= 4u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v51[0] & 0x7F) << v16;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_80;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_80:
        v48 = 74;
        goto LABEL_89;
      case 6u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        a1[80] |= 2u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v51[0] & 0x7F) << v35;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_86;
          }
        }

        v22 = (v37 != 0) & ~[a2 hasError];
LABEL_86:
        v48 = 73;
        goto LABEL_89;
      case 7u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        a1[80] |= 8u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v51[0] & 0x7F) << v41;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_88;
          }
        }

        v22 = (v43 != 0) & ~[a2 hasError];
LABEL_88:
        v48 = 75;
        goto LABEL_89;
      case 8u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        a1[80] |= 0x10u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v51[0] & 0x7F) << v29;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_84;
          }
        }

        v22 = (v31 != 0) & ~[a2 hasError];
LABEL_84:
        v48 = 76;
        goto LABEL_89;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_78;
      case 0xAu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        a1[80] |= 1u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v51[0] & 0x7F) << v23;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_82;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_82:
        v48 = 72;
LABEL_89:
        a1[v48] = v22;
        goto LABEL_90;
      case 0xBu:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addExclusions:v15];
        }

        goto LABEL_76;
      case 0xCu:
        v15 = objc_alloc_init(NTKProtoMigration);
        [a1 addMigration:v15];
        v51[0] = 0;
        v51[1] = 0;
        if (PBReaderPlaceMark() && NTKProtoMigrationReadFrom(v15, a2))
        {
          PBReaderRecallMark();
LABEL_76:

LABEL_90:
          v49 = [a2 position];
          if (v49 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0xDu:
        v13 = PBReaderReadString();
        v14 = 8;
LABEL_78:
        v47 = *&a1[v14];
        *&a1[v14] = v13;

        goto LABEL_90;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_90;
    }
  }
}

void sub_22DBBEB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBBF6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DBBF900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DBBFF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBC044C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _MakeFont(uint64_t a1)
{
  if (a1)
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:? weight:? design:?];
  }

  else
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:? weight:?];
  }
  v1 = ;
  v2 = [v1 CLKFontWithAlternativePunctuation];

  return v2;
}

id _ViewClassForComplicationType(uint64_t a1)
{
  if (a1 != 14 && a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void sub_22DBC57D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void _LayoutConstants_11(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    ___LayoutConstantsMedium_block_invoke(a1, a3);
  }

  else
  {
    ___LayoutConstantsSmall_block_invoke_0(a1, a3);
  }
}

void sub_22DBC6ACC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_22DBC8300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

id NTKColorMonogramComplicationFontForCharacterCount(uint64_t a1, void *a2, int a3)
{
  v5 = __NTKColorMonogramComplicationFontForCharacterCount_block_invoke(a1, a2);
  if (a1 == 1)
  {
    v5 = v7;
  }

  if (a1 == 2)
  {
    v5 = v6;
  }

  v8 = *MEMORY[0x277D74420];
  if (a3)
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v5 design:v8];
  }

  else
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:v5 weight:v8];
  }
  v9 = ;

  return v9;
}

double __NTKColorMonogramComplicationFontForCharacterCount_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_8_lock);
  if (_block_invoke_8___cachedDevice)
  {
    v3 = _block_invoke_8___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_8___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_8_value_0;
  }

  else
  {
    _block_invoke_8___cachedDevice = v2;
    _block_invoke_8___previousCLKDeviceVersion = [v2 version];
    v5 = __NTKColorMonogramComplicationFontForCharacterCount_block_invoke_2(_block_invoke_8___previousCLKDeviceVersion, v2);
    _block_invoke_8_value_0 = v5;
    _block_invoke_8_value_1 = v6;
    _block_invoke_8_value_2 = v7;
  }

  os_unfair_lock_unlock(&_block_invoke_8_lock);

  return *&v5;
}

double __NTKColorMonogramComplicationFontForCharacterCount_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:16.0 forSizeClass:17.0];
  [v2 scaledValue:3 withOverride:15.0 forSizeClass:16.0];
  v7[0] = &unk_284185650;
  v7[1] = &unk_284185668;
  v8[0] = &unk_2841892A8;
  v8[1] = &unk_2841892B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:13.5];
  v5 = v4;

  return v5;
}

id NTKActivityBackgroundPlatterColor()
{
  if (NTKActivityBackgroundPlatterColor_onceToken != -1)
  {
    NTKActivityBackgroundPlatterColor_cold_1();
  }

  v1 = NTKActivityBackgroundPlatterColor_color;

  return v1;
}

void __NTKActivityBackgroundPlatterColor_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.12 alpha:1.0];
  v1 = NTKActivityBackgroundPlatterColor_color;
  NTKActivityBackgroundPlatterColor_color = v0;
}

void sub_22DBCC22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_22DBCC6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DBCFB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DBD00AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22DBD6798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DBD8E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NTKSharedWidgetComplicationProvider(void *a1)
{
  v1 = a1;
  v2 = [v1 isRunningNapiliGMOrLater];
  v3 = off_27877BC00;
  if (!v2)
  {
    v3 = off_27877AD98;
  }

  v4 = [(__objc2_class *)*v3 instanceForDevice:v1];

  return v4;
}

void sub_22DBDB0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DBDB9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBDC258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22DBDCDA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NTKComplicationNoContentImageFileCache *)v3 init];
    }

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    [v5 removeItemAtPath:v2 error:0];

    [MEMORY[0x277CBEB38] dictionary];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x22DBDCCB4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DBDD958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22DBDDC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PathToComplicationNoContentImageArchive()
{
  if (_NTKComplicationNoContentImagesCacheDirectory_onceToken != -1)
  {
    _PathToComplicationNoContentImageArchive_cold_1();
  }

  v1 = _NTKComplicationNoContentImagesCacheDirectory___path;

  return [v1 stringByAppendingPathComponent:@"NoContentImages.archive"];
}

id NTKMusicTintColor()
{
  if (NTKMusicTintColor_onceToken != -1)
  {
    NTKMusicTintColor_cold_1();
  }

  v1 = NTKMusicTintColor__color;

  return v1;
}

void __NTKMusicTintColor_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.980392157 green:0.176470588 blue:0.282352941 alpha:1.0];
  v1 = NTKMusicTintColor__color;
  NTKMusicTintColor__color = v0;
}

id NTKMusicTintColorHeadline()
{
  if (NTKMusicTintColorHeadline_onceToken != -1)
  {
    NTKMusicTintColorHeadline_cold_1();
  }

  v1 = NTKMusicTintColorHeadline__color;

  return v1;
}

void __NTKMusicTintColorHeadline_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.305882353 alpha:1.0];
  v1 = NTKMusicTintColorHeadline__color;
  NTKMusicTintColorHeadline__color = v0;
}

id NTKMusicTintColorBody()
{
  if (NTKMusicTintColorBody_onceToken != -1)
  {
    NTKMusicTintColorBody_cold_1();
  }

  v1 = NTKMusicTintColorBody__color;

  return v1;
}

void __NTKMusicTintColorBody_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.137254902 green:0.121568627 blue:0.125490196 alpha:1.0];
  v1 = NTKMusicTintColorBody__color;
  NTKMusicTintColorBody__color = v0;
}

id NTKMusicTintColorBody2()
{
  if (NTKMusicTintColorBody2_onceToken != -1)
  {
    NTKMusicTintColorBody2_cold_1();
  }

  v1 = NTKMusicTintColorBody2__color;

  return v1;
}

void __NTKMusicTintColorBody2_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.137254902 green:0.121568627 blue:0.125490196 alpha:0.6];
  v1 = NTKMusicTintColorBody2__color;
  NTKMusicTintColorBody2__color = v0;
}

void sub_22DBE0114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DBE0F88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_22DBE16F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22DBE3B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ntk_duotone(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [NTKPigmentEditOption fullnameWithCollectionName:a1 optionName:a2];
  v10 = [NTKPigmentEditOption fullnameWithCollectionName:v8 optionName:v7];

  v11 = [NTKPigmentEditOption duotoneNameWithName:v9 otherName:v10];

  return v11;
}

id NTKStartOfDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 startOfDayForDate:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NTKStartOfNextDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:1 toDate:v2 options:0];

    v5 = [v3 startOfDayForDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id NTKStartOfPreviousDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:-1 toDate:v2 options:0];

    v5 = [v3 startOfDayForDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id NTKStartOfNthDayForDate(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBEA80];
    v4 = a1;
    v5 = [v3 currentCalendar];
    v6 = [v5 dateByAddingUnit:16 value:a2 toDate:v4 options:0];

    v7 = [v5 startOfDayForDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

double NTKPercentageOfDayDoneForDateWithStartAndEnd(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0.0;
  if (v5)
  {
    if (v6)
    {
      if (v7)
      {
        [v6 timeIntervalSinceReferenceDate];
        v11 = v10;
        [v8 timeIntervalSinceReferenceDate];
        v13 = v12;
        [v5 timeIntervalSinceReferenceDate];
        if (v13 - v11 > 0.0)
        {
          v9 = (v14 - v11) / (v13 - v11);
        }
      }
    }
  }

  return v9;
}

double NTKPercentageOfDayDoneForDate(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = a1;
  v2 = NTKStartOfDayForDate(v1);
  v3 = NTKStartOfNextDayForDate(v1);
  v4 = NTKPercentageOfDayDoneForDateWithStartAndEnd(v1, v2, v3);

  return v4;
}

id NTKEndOfDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v7 = 0;
    v8 = 0.0;
    [v3 rangeOfUnit:16 startDate:&v7 interval:&v8 forDate:v2];

    v4 = v7;
    v5 = [v4 dateByAddingTimeInterval:v8 + -1.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t NTKNumberOfUnitsInRange(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = [v3 currentCalendar];
  v6 = [v4 startDate];
  v7 = [v5 ordinalityOfUnit:2 inUnit:a1 forDate:v6];

  v8 = [v4 endDate];

  v9 = [v5 ordinalityOfUnit:2 inUnit:a1 forDate:v8];
  if (v9 - v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 - v7;
  }

  return v10;
}

BOOL NTKIsDateAfter5PM(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 component:32 fromDate:v2];

  return v4 > 16;
}

id NTKDateFor5PMOnDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v7 = 0;
  v8 = 0.0;
  [v3 rangeOfUnit:16 startDate:&v7 interval:&v8 forDate:v2];

  v4 = v7;
  v5 = [v4 dateByAddingTimeInterval:v8 + -25200.0];

  return v5;
}

id NTKDateForNext5PMFromDate(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  if (NTKIsDateAfter5PM(v1))
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v3 setDay:1];
    v4 = [v2 dateByAddingComponents:v3 toDate:v1 options:0];
    v5 = NTKDateFor5PMOnDate(v4);
  }

  else
  {
    v5 = NTKDateFor5PMOnDate(v1);
  }

  return v5;
}

id NTKDateFor9AMOnDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v7 = 0;
  v8 = 0.0;
  [v3 rangeOfUnit:16 startDate:&v7 interval:&v8 forDate:v2];

  v4 = v7;
  v5 = [v4 dateByAddingTimeInterval:v8 + -54000.0];

  return v5;
}

uint64_t NTK12HourTimeFrom24HourTime(uint64_t a1)
{
  if (a1 % 12)
  {
    return a1 % 12;
  }

  else
  {
    return 12;
  }
}

uint64_t NTKDateHourIn12HourTime(void *a1)
{
  v1 = NTKDateHourIn24HourTime(a1);
  if (v1 % 12)
  {
    return v1 % 12;
  }

  else
  {
    return 12;
  }
}

uint64_t NTKDateHourIn24HourTime(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:32 fromDate:v2];

  v5 = [v4 hour];
  return v5;
}

uint64_t NTKSecondForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:128 fromDate:v2];

  v5 = [v4 second];
  return v5;
}

uint64_t NTKMinuteForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:64 fromDate:v2];

  v5 = [v4 minute];
  return v5;
}

uint64_t NTKDayForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 component:16 fromDate:v2];

  return v4;
}

id NTKIdealizedDate()
{
  if (NTKIdealizedDate_onceToken != -1)
  {
    NTKIdealizedDate_cold_1();
  }

  if (__overrideIdealizedDate)
  {
    v0 = __overrideIdealizedDate;
  }

  else
  {
    v1 = CLKForcedTime();
    v2 = v1;
    v3 = __idealizedDate;
    if (v1)
    {
      v3 = v1;
    }

    v0 = v3;
  }

  return v0;
}

void __NTKIdealizedDate_block_invoke()
{
  _UpdateIdealizedDate();
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  v1 = [v0 addObserverForName:*MEMORY[0x277D766F0] object:0 queue:v4 usingBlock:&__block_literal_global_6_4];

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [v2 addObserverForName:*MEMORY[0x277CBE580] object:0 queue:v4 usingBlock:&__block_literal_global_8_1];
}

void _UpdateIdealizedDate()
{
  v5 = CFPreferencesCopyAppValue(@"IdealizedDateOverride", @"com.apple.NanoTimeKit.face");
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v0 = v5;
    v1 = __idealizedDate;
    __idealizedDate = v0;
  }

  else
  {
    v1 = [MEMORY[0x277CBEA80] currentCalendar];
    v2 = +[(CLKDate *)NTKDate];
    v3 = [v1 dateBySettingHour:10 minute:9 second:30 ofDate:v2 options:0];
    v4 = __idealizedDate;
    __idealizedDate = v3;
  }
}

id NTKNilOrDateOverrideInDemoMode()
{
  if (NTKNilOrDateOverrideInDemoMode_onceToken != -1)
  {
    NTKNilOrDateOverrideInDemoMode_cold_1();
  }

  v1 = NTKNilOrDateOverrideInDemoMode___date;

  return v1;
}

void __NTKNilOrDateOverrideInDemoMode_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"NTKFacePreferencesTimeOverride", @"com.apple.NanoTimeKit.face");
  if (v0)
  {
    v5 = v0;
    v1 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v1 setDateFormat:@"HH:mm:ss zzz"];
    v2 = [MEMORY[0x277CBEAF8] currentLocale];
    [v1 setLocale:v2];

    v3 = [v1 dateFromString:v5];
    v4 = NTKNilOrDateOverrideInDemoMode___date;
    NTKNilOrDateOverrideInDemoMode___date = v3;

    v0 = v5;
  }
}

id NTKAddDaysToDate(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBEAB8];
    v4 = a1;
    v5 = objc_alloc_init(v3);
    [v5 setDay:a2];
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [v6 dateByAddingComponents:v5 toDate:v4 options:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_22DBEBDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBEC834(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_22DBECF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DBEDB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

void sub_22DBEEFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_appendStringBasedOnPromotedSection(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return @"all";
  }
}

id _peopleComplicationForContact(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NTKPeopleComplicationContactsCache sharedCache];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__48;
  v18 = __Block_byref_object_dispose__48;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___peopleComplicationForContact_block_invoke;
  v10[3] = &unk_278786800;
  v13 = &v14;
  v6 = v3;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  [v5 checkValidityOfContact:v6 block:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void sub_22DBEF39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___peopleComplicationForContact_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v25 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NTKComplication *)[NTKPeopleComplication alloc] initWithComplicationType:37];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) identifier];
  v15 = *(*(*(a1 + 48) + 8) + 40);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  objc_storeStrong((*(*(*(a1 + 48) + 8) + 40) + 64), a4);
  objc_storeStrong((*(*(*(a1 + 48) + 8) + 40) + 56), a3);
  v17 = *(*(*(a1 + 48) + 8) + 40);
  v18 = *(v17 + 48);
  *(v17 + 48) = v10;
  v19 = v10;

  v20 = *(a1 + 40);
  v21 = *(*(*(a1 + 48) + 8) + 40);
  v22 = [v21 _generateUniqueIdentifier];
  v23 = v22;
  if (v20)
  {
    v24 = [v22 stringByAppendingString:*(a1 + 40)];
    [v21 setUniqueIdentifier:v24];

    v19 = v24;
  }

  else
  {
    [v21 setUniqueIdentifier:v22];
  }
}

id _peopleComplicationsForContacts(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = _peopleComplicationForContact(*(*(&v16 + 1) + 8 * i), v4);
        if (v12)
        {
          [v5 addObject:{v12, v16}];
          v13 = [v12 fullName];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "People Complication: Created people complications with names: %@", buf, 0xCu);
  }

  return v5;
}

void sub_22DBEFA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DBF02A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBF0750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DBF3390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NTKFacesArrayGalleryCollectionLoadQueue()
{
  if (NTKFacesArrayGalleryCollectionLoadQueue_onceToken != -1)
  {
    NTKFacesArrayGalleryCollectionLoadQueue_cold_1();
  }

  v0 = objc_opt_class();
  objc_sync_enter(v0);
  v1 = &NTKFacesArrayGalleryCollectionLoadQueue_primaryQueue;
  if (!NTKFacesArrayGalleryCollectionLoadQueue_usePrimaryQueue)
  {
    v1 = &NTKFacesArrayGalleryCollectionLoadQueue_secondaryQueue;
  }

  v2 = *v1;
  NTKFacesArrayGalleryCollectionLoadQueue_usePrimaryQueue ^= 1u;
  objc_sync_exit(v0);

  return v2;
}

void __NTKFacesArrayGalleryCollectionLoadQueue_block_invoke()
{
  NTKFacesArrayGalleryCollectionLoadQueue_usePrimaryQueue = 1;
  v0 = dispatch_queue_create("com.apple.nanotimekit.faces.gallery.primary", 0);
  v1 = NTKFacesArrayGalleryCollectionLoadQueue_primaryQueue;
  NTKFacesArrayGalleryCollectionLoadQueue_primaryQueue = v0;

  v2 = dispatch_queue_create("com.apple.nanotimekit.faces.gallery.secondary", 0);
  v3 = NTKFacesArrayGalleryCollectionLoadQueue_secondaryQueue;
  NTKFacesArrayGalleryCollectionLoadQueue_secondaryQueue = v2;
}

id getObjectType(objc_property *a1, _BYTE *a2)
{
  __stringp[1] = *MEMORY[0x277D85DE8];
  Attributes = property_getAttributes(a1);
  v4 = strlen(Attributes);
  MEMORY[0x28223BE20](v4, v5, v6);
  __stringp[0] = strcpy(__stringp - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0), Attributes);
  v8 = strsep(__stringp, ",");
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = strlen(v9);
      if (v11)
      {
        v12 = *v9;
        v13 = v11 - 4;
        if (v11 < 4 || v12 != 84)
        {
          goto LABEL_8;
        }

        if (v9[1] == 64)
        {
          break;
        }
      }

LABEL_10:
      v9 = strsep(__stringp, ",");
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v14 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v15 = [v14 substringWithRange:{3, v13}];

    v12 = *v9;
    v10 = v15;
LABEL_8:
    if (v12 == 68)
    {
      *a2 = 1;
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

void sub_22DBF78D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DBFAC88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22DBFDE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBFE4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DBFF328(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t _MaxFaceDataMode(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a1 != 1 && a2 != 1)
  {
    v2 = 3;
    v3 = 2;
    v4 = 5;
    v5 = a2 == 4 || a1 == 4;
    v6 = 4;
    if (!v5)
    {
      v6 = 0;
    }

    if (a2 == 5)
    {
      v6 = 5;
    }

    if (a1 != 5)
    {
      v4 = v6;
    }

    if (a2 == 2)
    {
      v4 = 2;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    if (a2 == 3)
    {
      v3 = 3;
    }

    if (a1 != 3)
    {
      return v3;
    }
  }

  return v2;
}

id _LegacyControllerClasses()
{
  if (_LegacyControllerClasses_onceToken != -1)
  {
    _LegacyControllerClasses_cold_1();
  }

  v1 = _LegacyControllerClasses___classes;

  return v1;
}

void sub_22DC01678(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 64));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

void sub_22DC08AE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22DC096B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  objc_destroyWeak((v45 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v46 - 192), 8);
  _Block_object_dispose((v46 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DC0A2F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void _LayoutConstants_12(uint64_t a1@<X8>)
{
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_66(v2, a1);
}

id _PerformSelectorWithArgument(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [a1 performSelector:a2 withObject:a3];
  }

  else
  {
    [a1 performSelector:a2];
  }
  v3 = ;

  return v3;
}

id NTKUpNextPhotosContent(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x277D443E0];
  v12 = a1;
  v13 = objc_alloc_init(v11);
  [v13 setStyle:2];
  [v13 setOverrideBodyImage:v12];

  [v13 setImageFocusRect:{a3, a4, a5, a6}];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v13 setObject:v14 forKey:@"NTKUpNextWantsFullScreenPhotoContent"];

  return v13;
}

void sub_22DC0F270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NTKFaceGalleryDescriptionTextFont()
{
  os_unfair_lock_lock(&NTKFaceGalleryDescriptionTextFont_lock);
  WeakRetained = objc_loadWeakRetained(&NTKFaceGalleryDescriptionTextFont_cachedFont);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    objc_storeWeak(&NTKFaceGalleryDescriptionTextFont_cachedFont, WeakRetained);
  }

  os_unfair_lock_unlock(&NTKFaceGalleryDescriptionTextFont_lock);

  return WeakRetained;
}

void NTKFaceGalleryApplyColorToNavigationItemWithAppearance(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v15 = [a3 copy];
  v7 = [v15 titleTextAttributes];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x277D740C0];
  [v8 setObject:v6 forKey:*MEMORY[0x277D740C0]];
  [v15 setTitleTextAttributes:v8];
  v10 = [v15 backButtonAppearance];
  v11 = [v10 normal];
  v12 = [v11 titleTextAttributes];
  v13 = [v12 mutableCopy];

  [v13 setObject:v6 forKey:v9];
  v14 = [v10 normal];
  [v14 setTitleTextAttributes:v13];

  [v15 setBackButtonAppearance:v10];
  [v5 setStandardAppearance:v15];
}

double NTKUtilityComplicationHighlightPadding(void *a1)
{
  v1 = a1;
  ___LayoutConstants_block_invoke_70(v1, v5);
  v2 = v6;
  ___LayoutConstants_block_invoke_70(v1, &v4);

  return v2;
}

double NTKUtilityTouchEdgeInsetsForPlacementAndDevice(char a1, void *a2)
{
  v3 = a2;
  ___LayoutConstants_block_invoke_70(v3, v8);
  v4 = v9;
  if ((a1 & 2) != 0)
  {
    ___LayoutConstants_block_invoke_70(v3, v7);
  }

  else if ((a1 & 8) != 0)
  {
    ___LayoutConstants_block_invoke_70(v3, v6);
  }

  return v4;
}

id NTKUtilityComplicationPlatterColor()
{
  if (NTKUtilityComplicationPlatterColor_onceToken != -1)
  {
    NTKUtilityComplicationPlatterColor_cold_1();
  }

  v1 = NTKUtilityComplicationPlatterColor_color;

  return v1;
}

void __NTKUtilityComplicationPlatterColor_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.12 alpha:1.0];
  v1 = NTKUtilityComplicationPlatterColor_color;
  NTKUtilityComplicationPlatterColor_color = v0;
}

void sub_22DC1EF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DC1F17C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

BOOL NTKUtilityComplicationCurvedPointInside(int a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  if (a1)
  {
    v20 = a8;
  }

  else
  {
    v20 = a7;
  }

  if (a1)
  {
    v21 = a7;
  }

  else
  {
    v21 = a8;
  }

  if (a1)
  {
    v22 = a12;
  }

  else
  {
    v22 = a10;
  }

  if (a1)
  {
    v23 = a10;
  }

  else
  {
    v23 = a12;
  }

  v24 = a2 - a5;
  v25 = a3 - a6;
  v26 = atan2(a3 - a6, a2 - a5);
  v27 = sqrt(v24 * v24 + v25 * v25);
  v28 = v26 >= v20 - a11;
  if (v27 < a4 - v23)
  {
    v28 = 0;
  }

  if (v26 > a13 + v21)
  {
    v28 = 0;
  }

  return v27 <= v22 + a4 && v28;
}

void sub_22DC249E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

__n128 _LayoutConstants_13@<Q0>(uint64_t a1@<X8>)
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  ___LayoutConstants_block_invoke_71(v3, v3);

  v4 = unk_27DA31FE0;
  *(a1 + 32) = xmmword_27DA31FD0;
  *(a1 + 48) = v4;
  *(a1 + 64) = qword_27DA31FF0;
  result = *&qword_27DA31FC0;
  *a1 = _LayoutConstants_layoutConstants_1;
  *(a1 + 16) = result;
  return result;
}

id _NTKHiddenWidgetVendingBundleIdentifiers()
{
  if (_NTKHiddenWidgetVendingBundleIdentifiers_onceToken != -1)
  {
    _NTKHiddenWidgetVendingBundleIdentifiers_cold_1();
  }

  v1 = _NTKHiddenWidgetVendingBundleIdentifiers_exemptedBundleIdentifiers;

  return v1;
}

void sub_22DC29708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NTKFaceSnapshotServerInterface()
{
  if (NTKFaceSnapshotServerInterface_onceToken != -1)
  {
    NTKFaceSnapshotServerInterface_cold_1();
  }

  v1 = NTKFaceSnapshotServerInterface_interface;

  return v1;
}

void __NTKFaceSnapshotServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A8ADFF0];
  v1 = NTKFaceSnapshotServerInterface_interface;
  NTKFaceSnapshotServerInterface_interface = v0;

  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [NTKFaceSnapshotServerInterface_interface setClasses:v3 forSelector:sel_requestSnapshotOfFaceInstanceDescriptor_options_completion_ argumentIndex:0 ofReply:1];
  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [NTKFaceSnapshotServerInterface_interface setClasses:v2 forSelector:sel_requestSnapshotOfFaceInstanceDescriptor_options_completion_ argumentIndex:1 ofReply:1];
}

id NTKFaceSnapshotClientInterface()
{
  if (NTKFaceSnapshotClientInterface_onceToken != -1)
  {
    NTKFaceSnapshotClientInterface_cold_1();
  }

  v1 = NTKFaceSnapshotClientInterface_interface;

  return v1;
}

void __NTKFaceSnapshotClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A88B6D8];
  v1 = NTKFaceSnapshotClientInterface_interface;
  NTKFaceSnapshotClientInterface_interface = v0;
}

void sub_22DC2B52C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id NTKSpectrumCreateCircularMaskLayer()
{
  v0 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:?];
  v1 = [MEMORY[0x277CD9F90] layer];
  [v1 setPath:{objc_msgSend(v0, "CGPath")}];

  return v1;
}

id NTKSpectrumAddCircularMaskToImage(void *a1)
{
  v1 = a1;
  [v1 scale];
  v3 = v2;
  [v1 size];
  width = v12.width;
  height = v12.height;
  UIGraphicsBeginImageContextWithOptions(v12, 1, v3);
  v6 = objc_opt_new();
  v7 = [v1 CGImage];

  [v6 setContents:v7];
  [v6 setFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height}];
  v8 = NTKSpectrumCreateCircularMaskLayer();
  [v6 setMask:v8];

  [v6 renderInContext:UIGraphicsGetCurrentContext()];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

double denormalizeIfNecessary(void *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2;
  if (a4 <= 1.0 && a5 <= 1.0)
  {
    return a2 * NTKPhotosVideoDimensions(a1);
  }

  return v5;
}

id compositionAssetForVideo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CE6548]);
  v3 = *MEMORY[0x277CE5EA8];
  v4 = [v2 addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:0];
  v5 = [v1 tracksWithMediaType:v3];
  v6 = [v5 firstObject];

  if (v6)
  {
    if (v1)
    {
      [v1 duration];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    v8 = **&MEMORY[0x277CC08F0];
    CMTimeRangeMake(&v10, &v8, &duration);
    CMTimeMake(&duration, 0, 1);
    [v4 insertTimeRange:&v10 ofTrack:v6 atTime:&duration error:0];
  }

  else
  {

    v2 = 0;
  }

  return v2;
}

id cropCompositionFor(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = [v13 tracks];
  if ([v15 count] != 1 || (objc_msgSend(v13, "tracks"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectAtIndexedSubscript:", 0), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "mediaType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = *MEMORY[0x277CE5EA8], (objc_msgSend(v18, "isEqualToString:", *MEMORY[0x277CE5EA8]) & 1) == 0))
  {
    cropCompositionFor_cold_1();
  }

  v20 = [v14 tracksWithMediaType:v19];
  v21 = [v20 objectAtIndex:0];

  v22 = v21;
  v23 = v22;
  memset(&v60, 0, sizeof(v60));
  if (v22)
  {
    [v22 preferredTransform];
    b = v60.b;
    a = v60.a;
    d = v60.d;
    c = v60.c;
  }

  else
  {
    d = 0.0;
    c = 0.0;
    b = 0.0;
    a = 0.0;
  }

  if (a == 1.0 && b == 0.0 && c == 0.0 && d == 1.0)
  {
    *&v60.tx = 0uLL;
  }

  else if (a == 0.0 && b == -1.0 && c == 1.0 && d == 0.0)
  {
    v60.tx = 0.0;
    [v23 naturalSize];
    v60.ty = v28;
  }

  else if (a == -1.0 && b == 0.0 && c == 0.0 && d == -1.0)
  {
    [v23 naturalSize];
    v60.tx = v29;
    [v23 naturalSize];
    v60.ty = v30;
  }

  else if (a == 0.0 && b == 1.0 && c == -1.0 && d == 0.0)
  {
    [v23 naturalSize];
    *&v60.tx = v31;
  }

  else
  {
    v32 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      cropCompositionFor_cold_2(&v60);
    }

    v33 = *(MEMORY[0x277CBF2C0] + 16);
    *&v60.a = *MEMORY[0x277CBF2C0];
    *&v60.c = v33;
    *&v60.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  v58 = v60;
  CGAffineTransformInvert(&v59, &v58);
  v64.origin.x = a3;
  v64.origin.y = a4;
  v64.size.width = a5;
  v64.size.height = a6;
  v65 = CGRectApplyAffineTransform(v64, &v59);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  if (a7 / a5 >= a8 / a6)
  {
    v38 = a7 / a5;
  }

  else
  {
    v38 = a8 / a6;
  }

  v57 = v60;
  memset(&v59, 0, sizeof(v59));
  CGAffineTransformMakeTranslation(&v59, -a3, -a4);
  memset(&v58, 0, sizeof(v58));
  CGAffineTransformMakeScale(&v58, v38, v38);
  t1 = v60;
  t2 = v59;
  CGAffineTransformConcat(&v57, &t1, &t2);
  t2 = v57;
  v54 = v58;
  CGAffineTransformConcat(&t1, &t2, &v54);
  v57 = t1;
  v39 = [v13 tracks];
  v40 = [v39 objectAtIndexedSubscript:0];

  v41 = [MEMORY[0x277CE6578] videoCompositionLayerInstructionWithAssetTrack:v40];
  *&t1.a = *MEMORY[0x277CC08F0];
  v50 = *&t1.a;
  t1.c = *(MEMORY[0x277CC08F0] + 16);
  v42 = t1.c;
  [v41 setCropRectangle:&t1 atTime:{x, y, width, height}];
  t1 = v57;
  *&t2.a = v50;
  t2.c = v42;
  [v41 setTransform:&t1 atTime:&t2];
  v43 = [MEMORY[0x277CE6570] videoCompositionInstruction];
  if (v13)
  {
    [v13 duration];
  }

  else
  {
    memset(&t1, 0, 24);
  }

  *&t2.a = v50;
  t2.c = v42;
  CMTimeRangeMake(&v53, &t2, &t1);
  t1 = v53;
  [v43 setTimeRange:&t1];
  v62[0] = v41;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  [v43 setLayerInstructions:v44];

  v45 = [MEMORY[0x277CE6568] videoComposition];
  [v45 setRenderSize:{a7, a8}];
  v61 = v43;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  [v45 setInstructions:v46];

  [v40 nominalFrameRate];
  CMTimeMakeWithSeconds(&v52, (1.0 / v47), [v40 naturalTimeScale]);
  *&t1.a = *&v52.value;
  *&t1.c = v52.epoch;
  [v45 setFrameDuration:&t1];

  return v45;
}

void sub_22DC2FC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DC30AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _BlackcombBackgroundAlphaForEditMode(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 0.2;
  }

  result = 1.0;
  if (((1 << a1) & 0x8401) == 0)
  {
    return 0.2;
  }

  return result;
}

double _BlackcombContentAlphaForEditMode(uint64_t a1)
{
  result = 0.2;
  if (a1 != 15)
  {
    result = 1.0;
  }

  if (!a1)
  {
    return 1.0;
  }

  return result;
}

double _BlackcombHandsAlphaForEditMode(uint64_t a1)
{
  v1 = a1 == 15 || a1 == 0;
  result = 0.2;
  if (v1)
  {
    return 1.0;
  }

  return result;
}

void sub_22DC33880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NTKProtoPigmentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 7)
        {
          if (v13 != 8)
          {
            if (v13 != 9)
            {
LABEL_63:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_74;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v44 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v44 & 0x7F) << v23;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_70;
              }
            }

            v22 = (v25 != 0) & ~[a2 hasError];
LABEL_70:
            v39 = 48;
            goto LABEL_71;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 == 5)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v45 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v45 & 0x7F) << v29;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_66;
              }
            }

            v22 = (v31 != 0) & ~[a2 hasError];
LABEL_66:
            v39 = 50;
LABEL_71:
            *(a1 + v39) = v22;
            goto LABEL_74;
          }

          if (v13 != 6)
          {
            goto LABEL_63;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            *(a1 + 52) |= 1u;
            v42 = 0;
            v35 = [a2 position] + 4;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 4, v36 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v42 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 32) = v42;
            goto LABEL_74;
          }

          if (v13 != 4)
          {
            goto LABEL_63;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v46 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v46 & 0x7F) << v16;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_68;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_68:
          v39 = 49;
          goto LABEL_71;
        }

        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 40;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_63;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      v37 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_74:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

double NTKLargeElementScaleForBreathingFraction(double a1)
{
  if (a1 >= 1.0)
  {
    a1 = 1.0;
  }

  return a1 * -0.06 + 1.0;
}

double NTKScaleForBreathingFraction(double a1, double a2)
{
  v2 = 1.0 - a2;
  v3 = -a1;
  v4 = a1 < 1.0;
  v5 = -1.0;
  if (v4)
  {
    v5 = v3;
  }

  return v5 * v2 + 1.0;
}

double NTKSmallElementScaleForBreathingFraction(double a1)
{
  if (a1 >= 1.0)
  {
    a1 = 1.0;
  }

  return a1 * -0.1 + 1.0;
}

double NTKScaleForRubberBandingFraction(double a1)
{
  if (a1 >= 1.0)
  {
    a1 = 1.0;
  }

  return a1 * -0.15 + 1.0;
}

double NTKAlphaForRubberBandingFraction(double a1)
{
  if (a1 >= 1.0)
  {
    a1 = 1.0;
  }

  return a1 * -0.5 + 1.0;
}

double NTKFaceEditingTabsTextSize()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, &v3);
  v1 = v4;

  return v1;
}

double NTKFaceEditingSwatchDiameter()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, v3);
  v1 = v3[0];

  return v1;
}

double NTKFaceEditingSwatchSpacing()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, &v3);
  v1 = *(&v3 + 1);

  return v1;
}

double NTKFaceEditingFullscreenKeylineMargin()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, &v4);
  v1 = v5;
  v2 = v1 + NTKKeylineWidth() * 0.5;

  return v2;
}

double NTKFaceEditingKeylineLabelInsets()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, &v2);

  return 0.0;
}

id NTKFaceEditingKeylineLabelFont()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x277CBE6C8]];

  v2 = [v1 isEqualToString:@"he"];
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = v3;
  if (v2)
  {
    ___LayoutConstants_block_invoke_72(v3, v12);
    v5 = &v13;
  }

  else
  {
    ___LayoutConstants_block_invoke_72(v3, v10);
    v5 = &v11;
  }

  v6 = *v5;

  v7 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:*MEMORY[0x277D74400]];
  v8 = [v7 CLKFontWithAlternativePunctuation];

  return v8;
}

double NTKFaceEditingKeylineLabelContainerSizeForText(void *a1)
{
  v1 = a1;
  NTKFaceEditingKeylineLabelInsets();
  v2 = NTKFaceEditingKeylineLabelSizeForText(v1);

  return v2 + 2.5 + 2.5;
}

double NTKFaceEditingKeylineLabelSizeForText(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBBAE8];
  v2 = a1;
  v3 = [v1 currentDevice];
  v4 = __NTKFaceEditingKeylineLabelSizeForText_block_invoke(v3, v3);
  if ([v3 deviceCategory] == 1 || objc_msgSend(v3, "deviceCategory") == 2)
  {
    [v3 screenCornerRadius];
    v6 = v5;
  }

  else
  {
    [v3 screenCornerRadius];
    v6 = v7 * 1.528665;
  }

  [v3 screenBounds];
  v9 = v8 + (v6 - v4) * -2.0;
  NTKFaceEditingKeylineLabelInsets();
  v15 = *MEMORY[0x277D740A8];
  v10 = NTKFaceEditingKeylineLabelFont();
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [v2 boundingRectWithSize:3 options:v11 attributes:0 context:{v9 + -2.5 + -2.5, 1.79769313e308}];
  v13 = v12;

  return ceil(v13);
}

double __NTKFaceEditingKeylineLabelSizeForText_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKCrownScrollMultiplierNormal_block_invoke_lock);
  if (NTKCrownScrollMultiplierNormal_block_invoke___cachedDevice)
  {
    v3 = NTKCrownScrollMultiplierNormal_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKCrownScrollMultiplierNormal_block_invoke___previousCLKDeviceVersion))
  {
    v5 = *&NTKCrownScrollMultiplierNormal_block_invoke_value;
  }

  else
  {
    NTKCrownScrollMultiplierNormal_block_invoke___cachedDevice = v2;
    NTKCrownScrollMultiplierNormal_block_invoke___previousCLKDeviceVersion = [v2 version];
    [v2 screenCornerRadius];
    v7 = v6;
    v8 = NTKFaceEditingScreenBottomAlignedKeylineLabelBottomPadding();
    v5 = sqrt(v7 * v7 - (v7 - v8) * (v7 - v8));
    NTKCrownScrollMultiplierNormal_block_invoke_value = *&v5;
  }

  os_unfair_lock_unlock(&NTKCrownScrollMultiplierNormal_block_invoke_lock);

  return v5;
}

double NTKFaceEditingScreenBottomAlignedKeylineLabelBottomPadding()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, v3);
  v1 = v4;

  return v1;
}

double NTKFaceEditingComplicationKeylineInsets()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, v3);
  v1 = v4;

  return v1;
}

double NTKFaceEditingFullscreenTabMargin()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, &v3);
  v1 = v4;

  return v1;
}

double NTKKeylineCornerRadiusSmall()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, v3);
  v1 = v4;

  return v1;
}

double NTKKeylineCornerRadiusLarge()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_72(v0, v3);
  v1 = v4;

  return v1;
}

id NTKFaceEditingInterpolatedCircularDialPathForDevice(void *a1, double a2)
{
  v3 = a1;
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;
  v22 = v8;
  v23 = v9;
  CLKSizeCenteredInRectForDevice();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v3 screenCornerRadius];
  v21 = v18;

  if (a2 >= 1.0)
  {
    v19 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v11, v13, v15, v17}];
  }

  else
  {
    if (a2 <= 0.0)
    {
      [MEMORY[0x277D75208] bezierPathWithRoundedRect:v5 cornerRadius:{v7, v22, v23, v21}];
    }

    else
    {
      CLKInterpolateBetweenFloatsClipped();
      CLKInterpolateBetweenRects();
      [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:*&a2 cornerRadius:?];
    }
    v19 = ;
  }

  return v19;
}

id NTKComplicationStoreServerInterface()
{
  if (NTKComplicationStoreServerInterface_onceToken != -1)
  {
    NTKComplicationStoreServerInterface_cold_1();
  }

  v1 = NTKComplicationStoreServerInterface_interface;

  return v1;
}

void __NTKComplicationStoreServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A8AE050];
  v1 = NTKComplicationStoreServerInterface_interface;
  NTKComplicationStoreServerInterface_interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [NTKComplicationStoreServerInterface_interface setClasses:v4 forSelector:sel_updateComplicationDescriptors_forClientIdentifier_ argumentIndex:0 ofReply:0];
}

id NTKComplicationStoreClientInterface()
{
  if (NTKComplicationStoreClientInterface_onceToken != -1)
  {
    NTKComplicationStoreClientInterface_cold_1();
  }

  v1 = NTKComplicationStoreClientInterface_interface;

  return v1;
}

void __NTKComplicationStoreClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A8740B8];
  v1 = NTKComplicationStoreClientInterface_interface;
  NTKComplicationStoreClientInterface_interface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v19 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
  [NTKComplicationStoreClientInterface_interface setClasses:v19 forSelector:sel_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId_ argumentIndex:0 ofReply:0];
  [NTKComplicationStoreClientInterface_interface setClasses:v15 forSelector:sel_loadFullCollectionWithLocalizableSampleTemplates_complicationDescriptors_seqId_ argumentIndex:1 ofReply:0];
  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [NTKComplicationStoreClientInterface_interface setClasses:v18 forSelector:sel_updateComplicationDescriptors_forClientIdentifier_seqId_ argumentIndex:0 ofReply:0];
}

void sub_22DC3887C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DC38A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DC39150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22DC393F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DC3972C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DC3B1A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22DC3C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DC3C72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22DC3CAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DC3CE70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_22DC3D49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DC3D99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DC3DC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DC3E95C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22DC3EF14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22DC3F2EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22DC3F740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22DC409F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _NTKArgonCloudKitClientError(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x277CCA7E8];
    v9[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:NTKArgonCloudKitClientErrorDomain code:a1 userInfo:v5];

  return v6;
}

void sub_22DC43308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NTKUpNextStocksContent(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = NTKClockFaceLocalizedString(@"UP_NEXT_STOCK_FORMAT", @"%1$@ %2$@");
  v12 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v11, v10, v9];

  [v12 finalize];
  [v9 finalize];

  [v8 finalize];
  v13 = objc_alloc_init(MEMORY[0x277D443E0]);
  [v13 setHeaderTextProvider:v12];
  [v13 setDescription1TextProvider:v8];

  [v13 setTintColor:v7];
  [v13 setTintColorAffectsHeader:1];
  [v13 setStyle:1];

  return v13;
}

uint64_t NTKEffectiveFaceStyleForFaceStyle(uint64_t result)
{
  if (result - 200) <= 0x21 && ((0x399BF140FuLL >> (result + 56)))
  {
    return qword_22DCE9DE8[result - 200];
  }

  return result;
}

uint64_t NTKFaceLibraryMaxFaceCountForDevice(void *a1)
{
  if ([a1 supportsPDRCapability:110727393])
  {
    return 50;
  }

  else
  {
    return 36;
  }
}

id NTKHomeDirectory()
{
  if (NTKHomeDirectory_onceToken != -1)
  {
    NTKHomeDirectory_cold_1();
  }

  v1 = NTKHomeDirectory___path;

  return v1;
}

void __NTKHomeDirectory_block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/NanoTimeKit"];
  v2 = NTKHomeDirectory___path;
  NTKHomeDirectory___path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:NTKHomeDirectory___path withIntermediateDirectories:1 attributes:0 error:0];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = *MEMORY[0x277CCA1B0];
  v7[0] = *MEMORY[0x277CCA1B8];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v4 setAttributes:v5 ofItemAtPath:NTKHomeDirectory___path error:0];
}

id NTKCacheDirectory()
{
  if (NTKCacheDirectory_onceToken != -1)
  {
    NTKCacheDirectory_cold_1();
  }

  v1 = NTKCacheDirectory_path;

  return v1;
}

void __NTKCacheDirectory_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x2318DABF0](started, v9);
  v1 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
  v2 = [v1 stringByAppendingPathComponent:@"com.apple.NanoTimeKit"];
  v3 = NTKCacheDirectory_path;
  NTKCacheDirectory_path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [v4 createDirectoryAtPath:NTKCacheDirectory_path withIntermediateDirectories:1 attributes:0 error:0];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = *MEMORY[0x277CCA1B0];
  v8 = *MEMORY[0x277CCA1B8];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v5 setAttributes:v6 ofItemAtPath:NTKCacheDirectory_path error:0];
}

id NTKMainBundleDependentCacheDirectory()
{
  if (NTKMainBundleDependentCacheDirectory_onceToken != -1)
  {
    NTKMainBundleDependentCacheDirectory_cold_1();
  }

  v1 = NTKMainBundleDependentCacheDirectory___path;

  return v1;
}

void __NTKMainBundleDependentCacheDirectory_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v0 bundleIdentifier];

  v1 = NTKCacheDirectory();
  v2 = [v1 stringByAppendingPathComponent:v5];
  v3 = NTKMainBundleDependentCacheDirectory___path;
  NTKMainBundleDependentCacheDirectory___path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [v4 createDirectoryAtPath:NTKMainBundleDependentCacheDirectory___path withIntermediateDirectories:1 attributes:0 error:0];
}

id NTKActiveFaceSnapshotPath()
{
  v0 = NTKCacheDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"ActiveFaceSnapshot@2x.png"];

  return v1;
}

void NTKEnumerateComplicationStates(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v2 = [&unk_28418B8A8 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(&unk_28418B8A8);
          }

          v1[2](v1, [*(*(&v6 + 1) + 8 * v5++) integerValue]);
        }

        while (v3 != v5);
        v3 = [&unk_28418B8A8 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

uint64_t _NTKBundleIDSourceForDevice(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ([a1 isRunningGraceOrLater])
  {
    return 1;
  }

  return 2;
}

__CFString *NTKFaceStyleDescription(uint64_t a1)
{
  v1 = NTKEffectiveFaceStyleForFaceStyle(a1);
  if (v1 < 0x2C && ((0xFFFFFFF77FFuLL >> v1) & 1) != 0)
  {
    v2 = off_278788A70[v1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"style%d", v1];
  }

  return v2;
}

uint64_t NTKFaceStyleForString(void *a1)
{
  v1 = a1;
  if (NTKFaceStyleForString_onceToken != -1)
  {
    NTKFaceStyleForString_cold_1();
  }

  v2 = [NTKFaceStyleForString___faceStyleFromString objectForKey:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

void __NTKFaceStyleForString_block_invoke()
{
  v0 = NTKFaceStyleForString___faceStyleFromString;
  NTKFaceStyleForString___faceStyleFromString = &unk_284189E08;
}

id NTKLocalizedNameForFaceStyle(uint64_t a1)
{
  v1 = NTKEffectiveFaceStyleForFaceStyle(a1);

  return NTKTitleCaseLocalizedNameForFaceStyle(v1);
}

id NTKTitleCaseLocalizedNameForFaceStyle(uint64_t a1)
{
  v1 = NTKEffectiveFaceStyleForFaceStyle(a1);
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v4 = [v2 stringWithFormat:@"FACE_STYLE_%@", v3];

  v5 = [v4 stringByAppendingString:@"_IN_TITLE_CASE"];

  v6 = NTKFaceStyleDescription(v1);
  v7 = NTKClockFaceLocalizedString(v5, v6);

  return v7;
}

uint64_t _NTKCollectionSpecificIndexForFace(void *a1)
{
  v1 = MEMORY[0x277CBBAE8];
  v2 = a1;
  v3 = [v1 currentDevice];
  v4 = _NTKCollectionSpecificFaceStylesForDevice(v3);
  v5 = [v2 faceDescriptor];

  v6 = [v4 indexOfObject:v5];
  return v6;
}

id _NTKCollectionSpecificFaceStylesForDevice(void *a1)
{
  v35[12] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (NTKShowHardwareSpecificFaces())
  {
    if ([v1 deviceCategory] != 1)
    {
      v2 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKPoodleFaceBundle");
      v35[0] = v2;
      v30 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKHadesFaceBundle");
      v35[1] = v30;
      v29 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKSecretariatFaceBundle");
      v35[2] = v29;
      v28 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKBellonaFaceBundle");
      v35[3] = v28;
      v27 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKSquallFaceBundle");
      v35[4] = v27;
      v17 = [[NTKFaceDescriptor alloc] initWithFaceStyle:42];
      v35[5] = v17;
      v18 = [[NTKFaceDescriptor alloc] initWithFaceStyle:14];
      v35[6] = v18;
      v19 = [[NTKFaceDescriptor alloc] initWithFaceStyle:35];
      v35[7] = v19;
      v20 = [[NTKFaceDescriptor alloc] initWithFaceStyle:19];
      v35[8] = v20;
      v21 = [[NTKFaceDescriptor alloc] initWithFaceStyle:219];
      v35[9] = v21;
      v22 = [[NTKFaceDescriptor alloc] initWithFaceStyle:20];
      v35[10] = v22;
      v23 = [[NTKFaceDescriptor alloc] initWithFaceStyle:220];
      v35[11] = v23;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:12];

      goto LABEL_12;
    }

    v2 = [[NTKFaceDescriptor alloc] initWithFaceStyle:14];
    v34[0] = v2;
    v3 = [[NTKFaceDescriptor alloc] initWithFaceStyle:19];
    v34[1] = v3;
    v4 = [[NTKFaceDescriptor alloc] initWithFaceStyle:219];
    v34[2] = v4;
    v5 = [[NTKFaceDescriptor alloc] initWithFaceStyle:20];
    v34[3] = v5;
    v6 = [[NTKFaceDescriptor alloc] initWithFaceStyle:220];
    v34[4] = v6;
    v7 = MEMORY[0x277CBEA60];
    v8 = v34;
    goto LABEL_4;
  }

  if ([v1 collectionType] == 5)
  {
    v9 = objc_opt_new();
    if ([v1 deviceCategory] != 1)
    {
      v10 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKPoodleFaceBundle");
      v33[0] = v10;
      v11 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKHadesFaceBundle");
      v33[1] = v11;
      v12 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKSecretariatFaceBundle");
      v33[2] = v12;
      v13 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKBellonaFaceBundle");
      v33[3] = v13;
      v14 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKSquallFaceBundle");
      v33[4] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:5];
      [v9 addObjectsFromArray:v15];

      if ([v1 isZeusBlack])
      {
        v16 = [[NTKFaceDescriptor alloc] initWithFaceStyle:42];
        [v9 addObject:v16];
      }
    }

    v2 = [[NTKFaceDescriptor alloc] initWithFaceStyle:14];
    [v9 addObject:v2];
    goto LABEL_12;
  }

  if ([v1 supportsVictoryFaces])
  {
    v25 = [v1 deviceCategory];
    v26 = [NTKFaceDescriptor alloc];
    if (v25 == 1)
    {
      v2 = [(NTKFaceDescriptor *)v26 initWithFaceStyle:19];
      v31[0] = v2;
      v3 = [[NTKFaceDescriptor alloc] initWithFaceStyle:219];
      v31[1] = v3;
      v4 = [[NTKFaceDescriptor alloc] initWithFaceStyle:20];
      v31[2] = v4;
      v5 = [[NTKFaceDescriptor alloc] initWithFaceStyle:220];
      v31[3] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
      goto LABEL_5;
    }

    v2 = [(NTKFaceDescriptor *)v26 initWithFaceStyle:35];
    v32[0] = v2;
    v3 = [[NTKFaceDescriptor alloc] initWithFaceStyle:19];
    v32[1] = v3;
    v4 = [[NTKFaceDescriptor alloc] initWithFaceStyle:219];
    v32[2] = v4;
    v5 = [[NTKFaceDescriptor alloc] initWithFaceStyle:20];
    v32[3] = v5;
    v6 = [[NTKFaceDescriptor alloc] initWithFaceStyle:220];
    v32[4] = v6;
    v7 = MEMORY[0x277CBEA60];
    v8 = v32;
LABEL_4:
    v9 = [v7 arrayWithObjects:v8 count:5];

LABEL_5:
LABEL_12:

    goto LABEL_13;
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_13:

  return v9;
}

uint64_t NTKAddableSortFaces(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 name];
  v5 = [v3 name];

  v6 = [v4 localizedStandardCompare:v5];
  return v6;
}

uint64_t NTKFaceStyleIsAvailable(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NTKEffectiveFaceStyleForFaceStyle(a1);
  if (!NTKGPUIsEnabled())
  {
    v7 = (v4 & 0xFFFFFFFFFFFFFFF7) == 4;
    goto LABEL_30;
  }

  v5 = [v3 collectionType];
  if (v4 == 14 && v5 != 5)
  {
    goto LABEL_4;
  }

  if (v4 == 42)
  {
    if ([v3 isZeusBlack])
    {
LABEL_14:
      v6 = 1;
      goto LABEL_15;
    }
  }

  else if (v4 - 19 > 1 && (v4 != 35 || [v3 deviceCategory] == 1) || (objc_msgSend(v3, "supportsVictoryFaces") & 1) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v6 = NTKShowHardwareSpecificFaces();
LABEL_15:
  if ((NTKShowInternalFaces() & 1) == 0)
  {
    v6 &= ![NTKFace isFaceStyleAvailableInternal:v4 forDevice:v3];
  }

  v7 = ((v4 & 0xFFFFFFFFFFFFFFF7) != 5) & v6;
  if ([v3 isRunningNapiliGMOrLater] && (v4 <= 0x29 && ((1 << v4) & 0x20192000000) != 0 || v4 - 228 <= 4 && ((1 << (v4 + 28)) & 0x19) != 0))
  {
    v7 = 0;
  }

  if ([v3 supportsPDRCapability:3669496134] && (v4 <= 0x18 && ((1 << v4) & 0x1240004) != 0 || v4 - 202 <= 0x16 && ((1 << (v4 + 54)) & 0x490001) != 0))
  {
    v7 = 0;
  }

LABEL_30:

  return v7;
}

NTKFaceDescriptor *NTKFaceDescriptorFromFaceStyle(uint64_t a1)
{
  if (a1 == 44)
  {
    v2 = 0;
  }

  else
  {
    v2 = [[NTKFaceDescriptor alloc] initWithFaceStyle:a1];
  }

  return v2;
}

NTKFaceDescriptor *NTKFaceDescriptorFromBundleIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [[NTKFaceDescriptor alloc] initWithBundleIdentifier:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _NTKAllAvailableFaceDescriptorsForDevice(void *a1)
{
  v82[41] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (NTKInternalBuild(v1, v2) && (CLKRunningInProcess() & 1) == 0)
  {
    v3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _NTKAllAvailableFaceDescriptorsForDevice_cold_1(v3);
    }
  }

  v73 = _NTKCollectionSpecificFaceStylesForDevice(v1);
  v71 = [[NTKFaceDescriptor alloc] initWithFaceStyle:16];
  v82[0] = v71;
  v69 = [[NTKFaceDescriptor alloc] initWithFaceStyle:216];
  v82[1] = v69;
  v68 = [[NTKFaceDescriptor alloc] initWithFaceStyle:17];
  v82[2] = v68;
  v67 = [[NTKFaceDescriptor alloc] initWithFaceStyle:217];
  v82[3] = v67;
  v66 = [[NTKFaceDescriptor alloc] initWithFaceStyle:2];
  v82[4] = v66;
  v65 = [[NTKFaceDescriptor alloc] initWithFaceStyle:202];
  v82[5] = v65;
  v64 = [[NTKFaceDescriptor alloc] initWithFaceStyle:3];
  v82[6] = v64;
  v63 = [[NTKFaceDescriptor alloc] initWithFaceStyle:203];
  v82[7] = v63;
  v62 = [[NTKFaceDescriptor alloc] initWithFaceStyle:23];
  v82[8] = v62;
  v61 = [[NTKFaceDescriptor alloc] initWithFaceStyle:223];
  v82[9] = v61;
  v60 = [[NTKFaceDescriptor alloc] initWithFaceStyle:10];
  v82[10] = v60;
  v59 = [[NTKFaceDescriptor alloc] initWithFaceStyle:210];
  v82[11] = v59;
  v58 = [[NTKFaceDescriptor alloc] initWithFaceStyle:4];
  v82[12] = v58;
  v56 = [[NTKFaceDescriptor alloc] initWithFaceStyle:6];
  v82[13] = v56;
  v55 = [[NTKFaceDescriptor alloc] initWithFaceStyle:18];
  v82[14] = v55;
  v54 = [[NTKFaceDescriptor alloc] initWithFaceStyle:218];
  v82[15] = v54;
  v53 = [[NTKFaceDescriptor alloc] initWithFaceStyle:22];
  v82[16] = v53;
  v52 = [[NTKFaceDescriptor alloc] initWithFaceStyle:26];
  v82[17] = v52;
  v51 = [[NTKFaceDescriptor alloc] initWithFaceStyle:33];
  v82[18] = v51;
  v50 = [[NTKFaceDescriptor alloc] initWithFaceStyle:233];
  v82[19] = v50;
  v49 = [[NTKFaceDescriptor alloc] initWithFaceStyle:25];
  v82[20] = v49;
  v48 = [[NTKFaceDescriptor alloc] initWithFaceStyle:1];
  v82[21] = v48;
  v47 = [[NTKFaceDescriptor alloc] initWithFaceStyle:201];
  v82[22] = v47;
  v46 = [[NTKFaceDescriptor alloc] initWithFaceStyle:21];
  v82[23] = v46;
  v45 = [[NTKFaceDescriptor alloc] initWithFaceStyle:221];
  v82[24] = v45;
  v44 = [[NTKFaceDescriptor alloc] initWithFaceStyle:8];
  v82[25] = v44;
  v43 = [[NTKFaceDescriptor alloc] initWithFaceStyle:7];
  v82[26] = v43;
  v42 = [[NTKFaceDescriptor alloc] initWithFaceStyle:0];
  v82[27] = v42;
  v41 = [[NTKFaceDescriptor alloc] initWithFaceStyle:200];
  v82[28] = v41;
  v40 = [[NTKFaceDescriptor alloc] initWithFaceStyle:12];
  v82[29] = v40;
  v39 = [[NTKFaceDescriptor alloc] initWithFaceStyle:212];
  v82[30] = v39;
  v38 = [[NTKFaceDescriptor alloc] initWithFaceStyle:27];
  v82[31] = v38;
  v37 = [[NTKFaceDescriptor alloc] initWithFaceStyle:227];
  v82[32] = v37;
  v4 = [[NTKFaceDescriptor alloc] initWithFaceStyle:32];
  v82[33] = v4;
  v5 = [[NTKFaceDescriptor alloc] initWithFaceStyle:232];
  v82[34] = v5;
  v6 = [[NTKFaceDescriptor alloc] initWithFaceStyle:31];
  v82[35] = v6;
  v7 = [[NTKFaceDescriptor alloc] initWithFaceStyle:231];
  v82[36] = v7;
  v8 = [[NTKFaceDescriptor alloc] initWithFaceStyle:28];
  v82[37] = v8;
  v9 = [[NTKFaceDescriptor alloc] initWithFaceStyle:228];
  v82[38] = v9;
  v10 = [[NTKFaceDescriptor alloc] initWithFaceStyle:37];
  v82[39] = v10;
  v11 = [[NTKFaceDescriptor alloc] initWithFaceStyle:38];
  v82[40] = v11;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:41];

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = +[NTKFaceBundleManager sharedManager];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = ___NTKAllAvailableFaceDescriptorsForDevice_block_invoke_2;
  v78[3] = &unk_27877E890;
  v14 = v12;
  v79 = v14;
  [v13 enumerateFaceBundlesOnDevice:v1 withBlock:v78];

  if (([v1 isExplorer] & 1) != 0 || NTKShowHardwareSpecificFaces())
  {
    v15 = [[NTKFaceDescriptor alloc] initWithFaceStyle:24];
    v16 = [v57 arrayByAddingObject:v15];

    v17 = [[NTKFaceDescriptor alloc] initWithFaceStyle:224];
    v18 = [v16 arrayByAddingObject:v17];
  }

  else
  {
    v18 = v57;
  }

  if ([v1 deviceCategory] != 1)
  {
    v72 = [[NTKFaceDescriptor alloc] initWithFaceStyle:34];
    v81[0] = v72;
    v70 = [[NTKFaceDescriptor alloc] initWithFaceStyle:30];
    v81[1] = v70;
    v19 = [[NTKFaceDescriptor alloc] initWithFaceStyle:29];
    v81[2] = v19;
    v20 = [[NTKFaceDescriptor alloc] initWithFaceStyle:41];
    v81[3] = v20;
    v21 = [[NTKFaceDescriptor alloc] initWithFaceStyle:36];
    v81[4] = v21;
    v22 = [[NTKFaceDescriptor alloc] initWithFaceStyle:39];
    v81[5] = v22;
    v23 = v18;
    v24 = [[NTKFaceDescriptor alloc] initWithFaceStyle:40];
    v81[6] = v24;
    [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:7];
    v26 = v25 = v14;
    v27 = [v23 arrayByAddingObjectsFromArray:v26];

    v14 = v25;
    v18 = v27;
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v28 addObjectsFromArray:v73];
  [v28 addObjectsFromArray:v18];
  [v28 addObjectsFromArray:v14];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v75;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v75 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v74 + 1) + 8 * i);
        if ([v35 isAvailableForDevice:v1])
        {
          [v29 addObject:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v32);
  }

  return v29;
}

id NTKFaceDescriptorsNeedingPrewarm(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 deviceCategory] == 1)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = _NTKAllAvailableFaceDescriptorsForDevice(v1);
    v4 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = NTKEffectiveFaceStyleForFaceStyle([v10 faceStyle]);
          if (v11 == 234 || v11 == 44)
          {
            v12 = [v10 bundleIdentifier];
            v13 = [v12 isEqualToString:@"com.apple.NTKSnowglobeFaceBundle"];

            if (v13)
            {
              [v4 addObject:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v2 = [v4 copy];
  }

  return v2;
}

id NTKDefaultLibraryFaceDescriptors(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 isTinker])
  {
    v3 = NTKFaceDescriptorFromBundleIdentifier(@"com.apple.NTKSnowglobeFaceBundle");
    [v2 addObject:v3];

    if ([v1 collectionType] != 6)
    {
      if ([v1 collectionType] != 5)
      {
        goto LABEL_9;
      }

      v4 = @"com.apple.NTKPoodleFaceBundle";
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([v1 collectionType] == 6)
  {
LABEL_6:
    v4 = @"com.apple.NTKMagmaFaceBundle";
    goto LABEL_7;
  }

  if ([v1 isZeus10])
  {
    v4 = @"com.apple.Hermes2025Face";
  }

  else
  {
    v16 = [v1 collectionType];
    v17 = [v1 deviceCategory];
    if (v16 == 5)
    {
      if (v17 != 4 && [v1 deviceCategory] != 6)
      {
        v5 = NTKFaceDescriptorFromFaceStyle(14);
        goto LABEL_8;
      }

      v4 = @"com.apple.NTKSquallFaceBundle";
    }

    else if ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 4)
    {
      v4 = @"com.apple.NTKLeghornFaceBundle";
    }

    else if ([v1 collectionType] == 11)
    {
      v4 = @"com.apple.NTKExactitudesFaceBundle";
    }

    else if ([v1 productFamilyType] == 9 || objc_msgSend(v1, "productFamilyType") == 17)
    {
      v4 = @"com.apple.NTKKapacitorFaceBundle";
    }

    else
    {
      v4 = @"com.apple.NTKWarlockFaceBundle";
    }
  }

LABEL_7:
  v5 = NTKFaceDescriptorFromBundleIdentifier(v4);
LABEL_8:
  v6 = v5;
  [v2 addObject:v5];

LABEL_9:
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isAvailableForDevice:{v1, v18}])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if (![v7 count])
  {
    v14 = [[NTKFaceDescriptor alloc] initWithFaceStyle:29];
    [v7 addObject:v14];
  }

  return v7;
}

uint64_t _NTKDefaultLibrarySelectedFace(void *a1)
{
  v1 = a1;
  v2 = [v1 isTinker];
  v3 = [v1 collectionType];
  if (!v2)
  {
    if (v3 == 5)
    {
      v4 = 0;
      goto LABEL_17;
    }

    v7 = [v1 collectionType];
    v8 = [v1 deviceCategory];
    if (v7 == 6)
    {
      v4 = v8 == 1;
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      if ([v1 materialType] == 9 || objc_msgSend(v1, "materialType") == 12)
      {
        v4 = 4;
        goto LABEL_17;
      }

      v5 = [v1 materialType] == 13;
      v6 = 3;
      goto LABEL_8;
    }

LABEL_4:
    v4 = 2;
    goto LABEL_17;
  }

  if (v3 == 5)
  {
    goto LABEL_4;
  }

  v5 = [v1 collectionType] == 6;
  v6 = 1;
LABEL_8:
  if (v5)
  {
    v4 = v6 + 1;
  }

  else
  {
    v4 = v6;
  }

LABEL_17:

  return v4;
}

uint64_t __NTKDefaultLibrarySelectedFace_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKCheckInApplicationBundleIdentifier_block_invoke_lock);
  if (NTKCheckInApplicationBundleIdentifier_block_invoke___cachedDevice)
  {
    v3 = NTKCheckInApplicationBundleIdentifier_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKCheckInApplicationBundleIdentifier_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NTKCheckInApplicationBundleIdentifier_block_invoke_value;
  }

  else
  {
    NTKCheckInApplicationBundleIdentifier_block_invoke___cachedDevice = v2;
    NTKCheckInApplicationBundleIdentifier_block_invoke___previousCLKDeviceVersion = [v2 version];
    v5 = _NTKDefaultLibrarySelectedFace(v2);
    NTKCheckInApplicationBundleIdentifier_block_invoke_value = v5;
  }

  os_unfair_lock_unlock(&NTKCheckInApplicationBundleIdentifier_block_invoke_lock);

  return v5;
}

id NTKNewToFortuneFaceStyles()
{
  if (NTKNewToFortuneFaceStyles_onceToken != -1)
  {
    NTKNewToFortuneFaceStyles_cold_1();
  }

  v1 = NTKNewToFortuneFaceStyles___fortuneStyles;

  return v1;
}

void __NTKNewToFortuneFaceStyles_block_invoke()
{
  v0 = NTKNewToFortuneFaceStyles___fortuneStyles;
  NTKNewToFortuneFaceStyles___fortuneStyles = &unk_28418B8C0;
}

id NTKNewToGloryFaceStyles()
{
  if (NTKNewToGloryFaceStyles_onceToken != -1)
  {
    NTKNewToGloryFaceStyles_cold_1();
  }

  v1 = NTKNewToGloryFaceStyles___newStyles;

  return v1;
}

void __NTKNewToGloryFaceStyles_block_invoke()
{
  v0 = NTKNewToGloryFaceStyles___newStyles;
  NTKNewToGloryFaceStyles___newStyles = &unk_28418B8D8;
}

id NTKNewToGloryFFaceStyles()
{
  if (NTKNewToGloryFFaceStyles_onceToken != -1)
  {
    NTKNewToGloryFFaceStyles_cold_1();
  }

  v1 = NTKNewToGloryFFaceStyles___newStyles;

  return v1;
}

void __NTKNewToGloryFFaceStyles_block_invoke()
{
  v0 = NTKNewToGloryFFaceStyles___newStyles;
  NTKNewToGloryFFaceStyles___newStyles = &unk_28418B8F0;
}

id NTKNewToGraceFaceStyles()
{
  if (NTKNewToGraceFaceStyles_onceToken != -1)
  {
    NTKNewToGraceFaceStyles_cold_1();
  }

  v1 = NTKNewToGraceFaceStyles___newStyles;

  return v1;
}

void __NTKNewToGraceFaceStyles_block_invoke()
{
  v0 = NTKNewToGraceFaceStyles___newStyles;
  NTKNewToGraceFaceStyles___newStyles = &unk_28418B908;
}

id NTKMigratableFaceStyles()
{
  if (NTKMigratableFaceStyles_onceToken != -1)
  {
    NTKMigratableFaceStyles_cold_1();
  }

  v1 = NTKMigratableFaceStyles___migratableStyles;

  return v1;
}

void __NTKMigratableFaceStyles_block_invoke()
{
  v0 = NTKMigratableFaceStyles___migratableStyles;
  NTKMigratableFaceStyles___migratableStyles = &unk_28418B920;
}

uint64_t NTKEnumerateComplicationFamilies(uint64_t a1)
{
  v2 = 0;
  do
  {
    v5 = 0;
    result = (*(a1 + 16))(a1, NTKEnumerateComplicationFamilies_families[v2], &v5);
    if (v5)
    {
      break;
    }
  }

  while (v2++ != 18);
  return result;
}

uint64_t NTKFallbackComplicationFamilyForFamily(uint64_t a1, uint64_t *a2)
{
  if (*MEMORY[0x277CBB668] == a1)
  {
    v2 = 0;
LABEL_5:
    *a2 = v2;
    return 1;
  }

  if (a1 == 104)
  {
    v2 = 3;
    goto LABEL_5;
  }

  return 0;
}

__CFString *NTKComplicationFamilyDescription(uint64_t a1)
{
  if (*MEMORY[0x277CBB668] == a1)
  {
    return @"circular-medium";
  }

  if (a1 <= 8)
  {
    if (a1 > 3)
    {
      if (a1 > 6)
      {
        if (a1 == 7)
        {
          return @"extra-large";
        }

        else
        {
          return @"signature-corner";
        }
      }

      if (a1 == 4)
      {
        return @"circular-small";
      }

      if (a1 == 6)
      {
        return @"utilitarian-small-flat";
      }
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          return @"utilitarian-small";
        }

        else
        {
          return @"utilitarian-large";
        }
      }

      if (!a1)
      {
        return @"modular-small";
      }

      if (a1 == 1)
      {
        return @"modular-large";
      }
    }

    return @"unknown family";
  }

  if (a1 <= 99)
  {
    if (a1 <= 10)
    {
      if (a1 == 9)
      {
        return @"signature-bezel";
      }

      else
      {
        return @"signature-circular";
      }
    }

    if (a1 == 11)
    {
      return @"signature-rectangular";
    }

    if (a1 == 12)
    {
      return @"signature-extra-large";
    }

    return @"unknown family";
  }

  if (a1 > 101)
  {
    switch(a1)
    {
      case 'f':
        return @"zeus-upper";
      case 'g':
        return @"zeus-lower";
      case 'h':
        return @"util-large-narrow";
    }

    return @"unknown family";
  }

  if (a1 == 100)
  {
    return @"date";
  }

  else
  {
    return @"monogram";
  }
}

id _NTKBundleIDToComplicationTypesMappingCompanion()
{
  if (_NTKBundleIDToComplicationTypesMappingCompanion_onceToken != -1)
  {
    _NTKBundleIDToComplicationTypesMappingCompanion_cold_1();
  }

  v1 = _NTKBundleIDToComplicationTypesMappingCompanion_bundleIDToComplicationTypesMapping;

  return v1;
}

id _NTKBundleIDToComplicationTypesMappingGizmo()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  v1 = ___NTKBundleIDToComplicationTypesMappingGizmo_block_invoke(v0, v0);

  return v1;
}

id NTKBundleIDToComplicationTypesMappingForDevice(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ![v1 isRunningGraceOrLater])
  {
    v3 = _NTKBundleIDToComplicationTypesMappingCompanion();
  }

  else
  {
    v3 = _NTKBundleIDToComplicationTypesMappingGizmo();
  }

  v4 = v3;

  return v4;
}

id _NTKComplicationTypesToBundleIDMappingCompanion()
{
  if (_NTKComplicationTypesToBundleIDMappingCompanion_onceToken != -1)
  {
    _NTKComplicationTypesToBundleIDMappingCompanion_cold_1();
  }

  v1 = _NTKComplicationTypesToBundleIDMappingCompanion_complicationTypesTobundleIDMapping;

  return v1;
}

id _NTKComplicationTypesToBundleIDMappingGizmo()
{
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  v1 = ___NTKComplicationTypesToBundleIDMappingGizmo_block_invoke(v0, v0);

  return v1;
}

id NTKComplicationTypesToBundleIDMappingForDevice(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ![v1 isRunningGraceOrLater])
  {
    v3 = _NTKComplicationTypesToBundleIDMappingCompanion();
  }

  else
  {
    v3 = _NTKComplicationTypesToBundleIDMappingGizmo();
  }

  v4 = v3;

  return v4;
}

id NTKComplicationTypesForDeviceWithBundleID(void *a1, void *a2)
{
  v3 = a2;
  v4 = NTKBundleIDToComplicationTypesMappingForDevice(a1);
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

id _NTKDisabledComplicationTypesForDevice(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = NTKBundleIDToComplicationTypesMappingForDevice(v1);
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (NTKIsSystemAppRestrictedOrRemoved(v9))
        {
          v10 = [v4 objectForKey:v9];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [v3 addIndex:{objc_msgSend(*(*(&v17 + 1) + 8 * j), "unsignedIntegerValue")}];
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  if (([v1 isEcgPhoneComplicationEnabled] & 1) == 0)
  {
    [v3 addIndex:46];
  }

  if (([v1 isRadioPhoneComplicationEnabled] & 1) == 0)
  {
    [v3 addIndex:35];
  }

  v15 = [v3 copy];

  return v15;
}