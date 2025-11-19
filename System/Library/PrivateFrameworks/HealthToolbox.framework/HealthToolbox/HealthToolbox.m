void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_251E8AF1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_251E8DD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_0_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

void sub_251E91C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251E937EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251E94884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_251E997C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKElectrocardiogramOverviewAvailabilityState(void *a1)
{
  v1 = a1;
  if ([v1 isOnboardingRecordPresent])
  {
    v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCBE90]];
    v3 = [v2 areAllRequirementsSatisfied];

    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v7 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
      [v7 areAllRequirementsSatisfied];

      v4 = 0;
    }
  }

  else
  {
    v5 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCBE38]];
    if (([v5 areAllRequirementsSatisfied] & 1) != 0 || (objc_msgSend(v5, "isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF30]) & 1) == 0)
    {

      v4 = 1;
    }

    else
    {
      v6 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  return v4;
}

void sub_251E9DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251EA0930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251EA3A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_251EA3DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t getCategoryOfType(void *a1)
{
  v1 = [a1 code];
  result = 1;
  if (v1 > 0x3E)
  {
    goto LABEL_5;
  }

  if (((1 << v1) & 0x600000000003402DLL) != 0)
  {
    return 0;
  }

  if (((1 << v1) & 0xC8000) == 0)
  {
LABEL_5:
    v3 = v1 - 71;
    if (v3 > 0x10 || ((1 << v3) & 0x10007) == 0)
    {
      return 2;
    }
  }

  return result;
}

__CFString *stringForCategoryValue(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 > 146)
  {
    switch(a1)
    {
      case 147:
      case 156:
      case 189:
      case 191:
      case 192:
      case 237:
      case 254:
      case 262:
      case 263:
      case 264:
      case 265:
      case 276:
      case 293:
        goto LABEL_10;
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
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
      case 190:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 200:
      case 208:
      case 209:
      case 210:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 227:
      case 228:
      case 238:
      case 239:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 251:
      case 252:
      case 253:
      case 255:
      case 256:
      case 257:
      case 258:
      case 259:
      case 260:
      case 261:
      case 266:
      case 267:
      case 268:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
        return result;
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 165:
      case 166:
      case 167:
      case 168:
      case 171:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 211:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 240:
      case 241:
      case 242:
        if (a2 >= 5)
        {
          return 0;
        }

        v4 = off_2796E7458;
        return v4[a2];
      case 164:
      case 169:
        v10 = @"HKCategoryValuePresencePresent";
        if (a2)
        {
          v10 = 0;
        }

        v11 = @"HKCategoryValuePresenceNotPresent";
        goto LABEL_51;
      case 170:
        if (a2 >= 4)
        {
          return 0;
        }

        v4 = off_2796E7480;
        return v4[a2];
      case 178:
        v6 = @"HKCategoryValueEnvironmentalAudioExposureEventMomentaryLimit";
        goto LABEL_37;
      case 193:
        v8 = a2 - 1;
        if (a2 - 1 >= 7)
        {
          return 0;
        }

        v9 = off_2796E7510;
        return v9[v8];
      case 199:
        v6 = @"HKCategoryValueHeadphoneAudioExposureEventSevenDayLimit";
        goto LABEL_37;
      case 236:
        v6 = @"HKCategoryValueLowCardioFitnessEventLowFitness";
LABEL_37:
        v7 = a2 == 1;
        goto LABEL_11;
      case 243:
        v8 = a2 - 1;
        if (a2 - 1 >= 3)
        {
          return 0;
        }

        v9 = off_2796E7568;
        return v9[v8];
      case 244:
        v8 = a2 - 1;
        if (a2 - 1 >= 3)
        {
          return 0;
        }

        v9 = off_2796E7580;
        return v9[v8];
      case 250:
        v8 = a2 - 1;
        if (a2 - 1 >= 4)
        {
          return 0;
        }

        v9 = off_2796E74A0;
        return v9[v8];
      default:
        if ((a1 - 313) < 2)
        {
          goto LABEL_23;
        }

        return result;
    }
  }

  if (a1 > 91)
  {
    v5 = a1 - 92;
    if (v5 > 0x30)
    {
      return result;
    }

    if (((1 << v5) & 0x10000000000B0) != 0)
    {
LABEL_10:
      v6 = @"HKCategoryValueNotApplicable";
      v7 = a2 == 0;
LABEL_11:
      if (v7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    if (v5)
    {
      if (v5 != 3)
      {
        return result;
      }

LABEL_23:
      v8 = a2 - 1;
      if (a2 - 1 < 5)
      {
        v9 = off_2796E74C0;
        return v9[v8];
      }
    }

    else
    {
      v8 = a2 - 1;
      if (a2 - 1 < 4)
      {
        v9 = off_2796E7548;
        return v9[v8];
      }
    }

    return 0;
  }

  if (a1 == 63)
  {
    if (a2 < 6)
    {
      v4 = off_2796E7598;
      return v4[a2];
    }

    return 0;
  }

  if (a1 != 70)
  {
    if (a1 != 91)
    {
      return result;
    }

    v8 = a2 - 1;
    if (a2 - 1 < 5)
    {
      v9 = off_2796E74E8;
      return v9[v8];
    }

    return 0;
  }

  v10 = @"HKCategoryValueAppleStandHourStood";
  if (a2)
  {
    v10 = 0;
  }

  v11 = @"HKCategoryValueAppleStandHourIdle";
LABEL_51:
  if (a2 == 1)
  {
    return v11;
  }

  else
  {
    return v10;
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_251EB0778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_2_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

void sub_251EB4D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EB6748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251EB7D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_251EB8258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_251EB9058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EBBECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WDBundle()
{
  v0 = WDBundle___ClassBundle;
  if (!WDBundle___ClassBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = WDBundle___ClassBundle;
    WDBundle___ClassBundle = v1;

    v0 = WDBundle___ClassBundle;
  }

  return v0;
}

uint64_t WDIndexForTab(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_251EEED80[a1 - 1];
  }
}

double WDFloorRectToViewScale(void *a1)
{
  v1 = a1;
  UIFloorToViewScale();
  v3 = v2;
  UIFloorToViewScale();
  UIFloorToViewScale();
  UIFloorToViewScale();

  return v3;
}

id WDPredicateMatchingPredicates(void *a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = MEMORY[0x277CCA920];
    v12[0] = v3;
    v12[1] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [v6 andPredicateWithSubpredicates:v7];
  }

  else
  {
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }

    v8 = v9;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t WDIsRunningDemoMode()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v0 BOOLForKey:@"UseDemoData"])
  {
    v1 = 1;
  }

  else
  {
    v1 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  }

  return v1;
}

id WDGetProfileNameForHealthStore(void *a1)
{
  v1 = a1;
  v2 = [v1 profileIdentifier];
  v3 = [v2 type];

  if (v3 == 3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCD7D0]) initWithHealthStore:v1];
    v5 = dispatch_semaphore_create(0);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__2;
    v17 = __Block_byref_object_dispose__2;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __WDGetProfileNameForHealthStore_block_invoke;
    v10[3] = &unk_2796E7B18;
    v12 = &v13;
    v6 = v5;
    v11 = v6;
    [v4 fetchDisplayName:v10];
    v7 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v6, v7);
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_251EC0080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WDGetProfileNameForHealthStore_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x277CCAC00];
  v8 = a3;
  v9 = a2;
  v12 = objc_alloc_init(v7);
  [v12 setGivenName:v9];

  [v12 setFamilyName:v8];
  v10 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v12 style:2 options:0];
  v11 = v10;
  if (!a4 && [v10 length])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_251EC1180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_251EC4324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EC4D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EC66D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EC8560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_251EC9280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EC9CE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_251ECA340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_251ECAEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251ECB7BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_251ECFCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251ED10EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return objc_opt_class();
}

void sub_251ED4E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251ED5FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251ED64BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251ED799C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_251ED8744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNAvatarImageRenderer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNAvatarImageRendererClass_block_invoke_cold_1();
    ContactsUILibrary();
  }
}

void ContactsUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __ContactsUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2796E8048;
    v4 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

WDRemoteFeatureAvailabilityInternalSettingsViewController *__getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderingScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1();
    return [(WDRemoteFeatureAvailabilityInternalSettingsViewController *)v3 initWithConditions:v4, v5];
  }

  return result;
}

void sub_251ED94C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EDB9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251EDBF94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return NSRequestConcreteImplementation();
}

void sub_251EDCEB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_251EE0430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251EE1490(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}