void getPKPassSemanticStringKeyDestinationLocationDescription()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyDestinationLocationDescription");
    getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyDestinationLocationDescription(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyFlightCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyFlightCode");
    getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyFlightCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:52 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F754E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticNumberKeyFlightNumber()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr;
  v9 = getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr;
  if (!getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticNumberKeyFlightNumber");
    getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticNumberKeyFlightNumber(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyAirlineCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyAirlineCode");
    getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyAirlineCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F757AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyDepartureAirportCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyDepartureAirportCode");
    getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyDepartureAirportCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:55 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPKPassSemanticStringKeyDestinationAirportCode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr;
  v9 = getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr;
  if (!getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr)
  {
    v1 = PassKitLibrary();
    v7[3] = dlsym(v1, "PKPassSemanticStringKeyDestinationAirportCode");
    getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PKPassSemanticStringKey getPKPassSemanticStringKeyDestinationAirportCode(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGWalletPassAttachmentDissector.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231F75A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDestinationAirportCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDestinationAirportCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDepartureAirportCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDepartureAirportCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyAirlineCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyAirlineCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyAirlineCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticNumberKeyFlightNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticNumberKeyFlightNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticNumberKeyFlightNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyFlightCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyFlightCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyFlightCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDestinationLocationDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDestinationLocationDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticLocationKeyDestinationLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticLocationKeyDestinationLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticLocationKeyDepartureLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticLocationKeyDepartureLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyDepartureLocationDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyDepartureLocationDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticDateKeyOriginalArrivalDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticDateKeyOriginalArrivalDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticLocationKeyVenueLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticLocationKeyVenueLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticLocationKeyVenueLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenuePhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenuePhoneNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenueEntranceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenueEntrance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenueEntranceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenueRoomSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenueRoom");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenueRoomSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyVenueNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyVenueName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyVenueNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticNumberKeySilenceRequested");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticNumberKeySilenceRequestedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticDateKeyEventEndDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticDateKeyEventEndDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticDateKeyEventEndDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticDateKeyEventStartDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticDateKeyEventStartDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticDateKeyEventStartDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyEventNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyEventName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyEventNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKPassSemanticStringKeyEventTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitLibrary();
  result = dlsym(v2, "PKPassSemanticStringKeyEventType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassSemanticStringKeyEventTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t stateForWalletPassStateString(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isEqualToString:@"SGRealtimeWalletPassStateNew"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SGRealtimeWalletPassStateUpdate"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SGRealtimeWalletPassStateCancellation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"SGRealtimeWalletPassStateDuplicate"])
  {
    v2 = 3;
  }

  else
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "stateForWalletPassStateString: Error in returning wallet pass state for string: %@", &v6, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __Block_byref_object_copy__15822(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F784D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *qmarksSeparatedByCommas(unint64_t a1)
{
  if (a1)
  {
    v1 = a1 - 129;
    if (a1 > 0x81)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = qmarksSeparatedByCommas(129);
      v2 = [v4 mutableCopy];

      do
      {
        [(__CFString *)v2 appendString:@", ?"];
        --v1;
      }

      while (v1);
      objc_autoreleasePoolPop(v3);
    }

    else
    {
      v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:"? length:? encoding:? freeWhenDone:{?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?", 2 * a1 - 1, 1, 0}];
    }
  }

  else
  {
    v2 = &stru_284703F00;
  }

  return v2;
}

void sub_231F792A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t wrappedBusyCallbackForTiming(void *a1, uint64_t a2)
{
  v3 = a1;
  busy = _sqlite3_system_busy_handler();
  v5 = busy([v3 handle], a2);
  v3[2] = mach_absolute_time();

  return v5;
}

void firstStringAfterPrefix(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void firstStringAfterPrefix(sqlite3_context *, int, sqlite3_value **)"}];
    [v15 handleFailureInFunction:v16 file:@"SGSqliteDatabase.m" lineNumber:535 description:{@"Invalid parameter not satisfying: %@", @"argc == 1"}];
  }

  v5 = sqlite3_value_bytes(*a3);
  if (v5)
  {
    LODWORD(v6) = v5;
    v7 = sqlite3_value_text(*a3);
    v8 = v7;
    if (v6 >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = v6;
    }

    while (1)
    {
      v9 = v6;
      if (v6-- < 1)
      {
        break;
      }

      if (v7[v9 - 1] != 255)
      {
        memptr = 0;
        v21 = 0;
        if (v9 > 0x100)
        {
          v17 = malloc_type_posix_memalign(&memptr, 8uLL, v9, 0xA99CB19DuLL);
          LOBYTE(v21) = 0;
          if (v17)
          {
            v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
            objc_exception_throw(v18);
          }

          v12 = memptr;
        }

        else
        {
          MEMORY[0x28223BE20](v7);
          v12 = &v19 - ((v11 + 15) & 0x1FFFFFFF0);
          bzero(v12, v11);
        }

        memcpy(v12, v8, v6);
        v12[v6] = v8[v6] + 1;
        sqlite3_result_text(a1, v12, v9, 0xFFFFFFFFFFFFFFFFLL);
        if (v9 >= 0x101)
        {
          free(v12);
        }

        v13 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  sqlite3_result_zeroblob(a1, 0);
}

void delimitedString(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void delimitedString(sqlite3_context *, int, sqlite3_value **)"}];
    [v22 handleFailureInFunction:v23 file:@"SGSqliteDatabase.m" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"argc == 2"}];
  }

  v5 = sqlite3_value_int(a3[1]);
  v6 = sqlite3_value_text(*a3);
  if (v5 < 0)
  {
    v12 = *MEMORY[0x277D85DE8];

    sqlite3_result_null(a1);
    return;
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  v9 = v8;
  while (1)
  {
    v10 = *v7;
    if (v10 == 92)
    {
      if (v7[1])
      {
        ++v7;
      }

      goto LABEL_14;
    }

    if (v10 == 124)
    {
      break;
    }

    if (!*v7)
    {
      sqlite3_result_null(a1);
      goto LABEL_37;
    }

LABEL_14:
    ++v7;
  }

  v11 = __OFSUB__(v5--, 1);
  if (v5 < 0 == v11)
  {
    goto LABEL_14;
  }

  v13 = (v7 + 1);
  v14 = (v7 + 1);
  while (2)
  {
    v15 = *v14;
    if (v15 == 92)
    {
      if (v14[1])
      {
        ++v14;
      }

      goto LABEL_24;
    }

    if (*v14 && v15 != 124)
    {
LABEL_24:
      ++v14;
      continue;
    }

    break;
  }

  v16 = v14 - v7;
  memptr = 0;
  v28 = 0;
  if ((v14 - v7) > 0x100)
  {
    v24 = malloc_type_posix_memalign(&memptr, 8uLL, v14 - v7, 0x858E84F4uLL);
    LOBYTE(v28) = 0;
    if (v24)
    {
      v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v25);
    }

    v17 = memptr;
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v17 = &v26 - ((v14 - v13 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v14 - v13 + 1);
  }

  v18 = v17;
  if (v13 < v14)
  {
    v18 = v17;
    do
    {
      if (v13 + 1 < v14 && *v13 == 92)
      {
        ++v13;
      }

      v20 = *v13++;
      *v18++ = v20;
    }

    while (v13 < v14);
  }

  *v18 = 0;
  sqlite3_result_text(a1, v17, v18 - v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v16 >= 0x101)
  {
    free(v17);
  }

LABEL_37:
  objc_autoreleasePoolPop(v9);
  v21 = *MEMORY[0x277D85DE8];
}

void tagsHaveEscapedTag(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 != 2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void tagsHaveEscapedTag(sqlite3_context *, int, sqlite3_value **)"}];
    [v9 handleFailureInFunction:v10 file:@"SGSqliteDatabase.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"argc == 2"}];
  }

  v5 = sqlite3_value_text(*a3);
  v6 = sqlite3_value_text(a3[1]);
  v7 = strlen(v6);
  v8 = escapedTagInTags(v5, v6, v7);

  sqlite3_result_int(a1, v8);
}

BOOL escapedTagInTags(char *__s, char *a2, uint64_t a3)
{
  v5 = a2 + 1;
  v6 = *a2;
  v7 = a3 - 1;
  v8 = __s;
  while (1)
  {
    v9 = strchr(v8, v6);
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v8 = v9 + 1;
    if (!strncmp(v9 + 1, v5, v7) && (v10 == __s || *(v10 - 1) != 92 || (v10 - __s) >= 2 && *(v10 - 2) == 92))
    {
      v11 = v10[a3];
      if (v11 == 124 || v11 == 0)
      {
        break;
      }
    }
  }

  return v10 != 0;
}

void hasInhumanTag(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 != 1)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void hasInhumanTag(sqlite3_context *, int, sqlite3_value **)"}];
    [v7 handleFailureInFunction:v8 file:@"SGSqliteDatabase.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"argc == 1"}];
  }

  v5 = sqlite3_value_text(*a3);
  v6 = escapedTagInTags(v5, "|inhuman", 8);

  sqlite3_result_int(a1, v6);
}

uint64_t _indexForBindParam(sqlite3_stmt *a1, char *zName)
{
  if (a1)
  {
    if (zName)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v6 handleFailureInFunction:v7 file:@"SGSqliteDatabase.m" lineNumber:834 description:{@"Invalid parameter not satisfying: %@", @"stmt"}];

    if (zName)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
  [v8 handleFailureInFunction:v9 file:@"SGSqliteDatabase.m" lineNumber:835 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v4 = sqlite3_bind_parameter_index(a1, zName);
  if (v4 <= 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v10 handleFailureInFunction:v11 file:@"SGSqliteDatabase.m" lineNumber:837 description:{@"Unknown bind parameter %s", zName}];
  }

  return v4;
}

uint64_t sqlite3_bind_nsdata(sqlite3_stmt *a1, int a2, id a3)
{
  v6 = a3;
  v7 = a3;
  v8 = [v7 bytes];
  v9 = [v7 length];

  return sqlite3_bind_blob64(a1, a2, v8, v9, 0xFFFFFFFFFFFFFFFFLL);
}

char *sqlite3_column_nsstring(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = CFStringCreateWithCString(0, v2, 0x8000100u);
  }

  return v2;
}

uint64_t sqlite3_bind_nsstring(sqlite3_stmt *a1, int a2, id a3)
{
  v6 = a3;
  v7 = [a3 UTF8String];

  return sqlite3_bind_text(a1, a2, v7, -1, 0xFFFFFFFFFFFFFFFFLL);
}

id sqlite3_column_nssecurecoding(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sqlite3_column_blob(a1, a2);
  v7 = sqlite3_column_bytes(a1, a2);
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:v7 freeWhenDone:0];
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:v8 error:0];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __Block_byref_object_copy__16077(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t *re2::DFA::DFA(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 16) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 25) = 0u;
  a1[27] = 0;
  if (pthread_rwlock_init((a1 + 3), 0))
  {
    goto LABEL_9;
  }

  a1[28] = 0;
  *(a1 + 16) = 0u;
  a1[56] = 0;
  *(a1 + 26) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 17) = 0u;
  a1[29] = 0;
  a1[30] = 0;
  if (pthread_rwlock_init((a1 + 32), 0))
  {
LABEL_9:
    abort();
  }

  v7 = 0;
  a1[57] = a4;
  *(a1 + 59) = 0u;
  *(a1 + 61) = 0u;
  *(a1 + 126) = 1065353216;
  a1[64] = 0;
  *(a1 + 130) = -1;
  a1[66] = 0;
  *(a1 + 134) = -1;
  a1[68] = 0;
  *(a1 + 138) = -1;
  a1[70] = 0;
  *(a1 + 142) = -1;
  a1[72] = 0;
  *(a1 + 146) = -1;
  a1[74] = 0;
  *(a1 + 150) = -1;
  a1[76] = 0;
  *(a1 + 154) = -1;
  a1[78] = 0;
  *(a1 + 158) = -1;
  *(a1 + 640) = 0;
  *(a1 + 3) = 0;
  v8 = *(a2 + 12);
  if (*(a1 + 2) == 1)
  {
    *(a1 + 3) = *(a2 + 8);
    v7 = v8;
  }

  v9 = v7 + 2 * v8;
  *(a1 + 62) = v9;
  v10 = *a1;
  v11 = *(*a1 + 12) + v7;
  v12 = a4 - (16 * v11 + 4 * v9) - 648;
  a1[57] = v12;
  if (v12 >= 0)
  {
    a1[58] = v12;
    if (v12 >= 20 * (8 * *(v10 + 20) + 4 * v11) + 640)
    {
      operator new();
    }
  }

  *(a1 + 16) = 1;
  return a1;
}

void sub_231F83234(_Unwind_Exception *a1)
{
  MEMORY[0x23837FDE0](v4, 0x1010C40C2DF3DD7);
  std::unordered_set<re2::DFA::State *,re2::DFA::StateHash,re2::DFA::StateEqual,std::allocator<re2::DFA::State *>>::~unordered_set[abi:ne200100](v3);
  re2::Mutex::~Mutex(v2);
  re2::Mutex::~Mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<re2::DFA::State *,re2::DFA::StateHash,re2::DFA::StateEqual,std::allocator<re2::DFA::State *>>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void re2::Mutex::~Mutex(pthread_rwlock_t *this)
{
  if (pthread_rwlock_destroy(this))
  {
    abort();
  }
}

void re2::DFA::~DFA(re2::DFA *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      MEMORY[0x23837FDC0](v3, 0x1000C8052888210);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      MEMORY[0x23837FDC0](v4, 0x1000C8052888210);
    }

    MEMORY[0x23837FDE0](v2, 0x1010C40C2DF3DD7);
  }

  v5 = *(this + 29);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      MEMORY[0x23837FDC0](v6, 0x1000C8052888210);
    }

    v7 = *(v5 + 16);
    if (v7)
    {
      MEMORY[0x23837FDC0](v7, 0x1000C8052888210);
    }

    MEMORY[0x23837FDE0](v5, 0x1010C40C2DF3DD7);
  }

  v8 = *(this + 30);
  if (v8)
  {
    MEMORY[0x23837FDC0](v8, 0x1000C8052888210);
  }

  re2::DFA::ClearCache(this);
  v9 = *(this + 61);
  if (v9)
  {
    do
    {
      v10 = *v9;
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(this + 59);
  *(this + 59) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (pthread_rwlock_destroy((this + 256)) || pthread_rwlock_destroy((this + 24)))
  {
    abort();
  }
}

void re2::DFA::ClearCache(re2::DFA *this)
{
  v2 = *(this + 62);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    std::vector<re2::RE2 *>::__throw_length_error[abi:ne200100]();
  }

  if (*(this + 61))
  {
    operator new();
  }

  if (*(this + 62))
  {
    v3 = *(this + 61);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    *(this + 61) = 0;
    v5 = *(this + 60);
    if (v5)
    {
      bzero(*(this + 59), 8 * v5);
    }

    *(this + 62) = 0;
  }
}

void sub_231F83640(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *re2::DFA::DumpWorkq@<X0>(std::string *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, std::string *a8@<X8>)
{
  a8->__r_.__value_.__r.__words[0] = 0;
  a8->__r_.__value_.__l.__size_ = 0;
  a8->__r_.__value_.__r.__words[2] = 0;
  if (LODWORD(result->__r_.__value_.__l.__data_))
  {
    v9 = result;
    v10 = result->__r_.__value_.__r.__words[2];
    v11 = "";
    do
    {
      if (SHIDWORD(v9[1].__r_.__value_.__r.__words[0]) > *v10)
      {
        v13 = *v10;
        result = re2::StringAppendF(a8, "%s%d", a2, a3, a4, a5, a6, a7, v11);
        v11 = ",";
      }

      else
      {
        result = re2::StringAppendF(a8, "|", a2, a3, a4, a5, a6, a7, v12);
        v11 = "";
      }

      ++v10;
    }

    while (v10 != (v9->__r_.__value_.__r.__words[2] + 4 * SLODWORD(v9->__r_.__value_.__l.__data_)));
  }

  return result;
}

void sub_231F83730(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *re2::DFA::DumpState@<X0>(std::string *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v8 = result;
  if (result >= 3)
  {
    *a8 = 0;
    *(a8 + 8) = 0;
    *(a8 + 16) = 0;
    re2::StringAppendF(a8, "(%p)", a2, a3, a4, a5, a6, a7, result);
    if (SLODWORD(v8->__r_.__value_.__r.__words[1]) >= 1)
    {
      v16 = 0;
      v17 = "";
      do
      {
        if (*(v8->__r_.__value_.__r.__words[0] + 4 * v16) == -1)
        {
          re2::StringAppendF(a8, "|", v10, v11, v12, v13, v14, v15, v18);
          v17 = "";
        }

        else
        {
          v19 = *(v8->__r_.__value_.__r.__words[0] + 4 * v16);
          re2::StringAppendF(a8, "%s%d", v10, v11, v12, v13, v14, v15, v17);
          v17 = ",";
        }

        ++v16;
      }

      while (v16 < SLODWORD(v8->__r_.__value_.__r.__words[1]));
    }

    return re2::StringAppendF(a8, " flag=%#x", v10, v11, v12, v13, v14, v15, HIDWORD(v8->__r_.__value_.__r.__words[1]));
  }

  else
  {
    *(a8 + 23) = 1;
    *a8 = (0x2A585Fu >> (8 * result));
  }

  return result;
}

void sub_231F83870(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re2::DFA::WorkqToCachedState(re2::DFA *a1, int *a2, int a3)
{
  if (a2[8] + a2[7] <= 0x2000)
  {
    pthread_mutex_lock(&re2::instScratchLock);
    v7 = &re2::instScratch;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v17 = 0;
    v9 = a3 & 0x1000;
LABEL_64:
    v16 = 0;
    a3 = v9;
    if (v17 | v9)
    {
      goto LABEL_53;
    }

    goto LABEL_65;
  }

  v7 = malloc_type_malloc(4 * (a2[8] + a2[7]), 0x100004052888210uLL);
  if (!*a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = *(a2 + 2);
  v9 = a3 & 0x1000;
  v10 = *v8;
  if (a2[7] <= *v8)
  {
    v11 = 0;
    v16 = 0;
    v18 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
    v13 = *(*a1 + 32);
    v14 = (v13 + 8 * v10);
    v15 = *v14 & 7;
    if (v15 > 5)
    {
      v16 = 0;
      v18 = 0;
    }

    else
    {
      if (((1 << v15) & 0x35) != 0)
      {
        goto LABEL_6;
      }

      v16 = 0;
      v18 = 0;
      if (v15 == 1)
      {
        v28 = *(a1 + 2);
        if (v28 != 3)
        {
          if (v28)
          {
            if ((a3 & 0x1000) == 0)
            {
              goto LABEL_6;
            }
          }

          else if ((*(v13 + (*v14 & 0xFFFFFFF8)) & 7) != 2 || v9 == 0)
          {
            goto LABEL_6;
          }

LABEL_73:
          if (v7 == &re2::instScratch)
          {
            pthread_mutex_unlock(&re2::instScratchLock);
          }

          else
          {
            free(v7);
          }

          return 2;
        }

LABEL_6:
        *v7 = v10;
        if ((*v14 & 7) == 4)
        {
          v11 = 0;
          v16 = v14[1];
        }

        else if ((*v14 & 7) == 5)
        {
          v16 = 0;
          v11 = *(v12 + 1) ^ 1;
        }

        else
        {
          v11 = 0;
          v16 = 0;
        }

        v18 = 1;
      }
    }
  }

  if (*a2 == 1)
  {
LABEL_16:
    v17 = v18;
    if (v18 >= 1)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v19 = 0;
  v20 = v8 + 1;
  while (1)
  {
    v21 = *v20;
    if (v11)
    {
      break;
    }

    if (a2[7] > v21)
    {
      goto LABEL_24;
    }

    if (v18 >= 1)
    {
      v25 = &v7[v18];
      if (*(v25 - 1) != -1)
      {
        v17 = (v18 + 1);
        *v25 = -1;
        v19 = 1;
        goto LABEL_20;
      }
    }

LABEL_19:
    v17 = v18;
LABEL_20:
    ++v20;
    v18 = v17;
    if (v20 == &v8[*a2])
    {
      goto LABEL_49;
    }
  }

  if (*(a1 + 2))
  {
    if (a2[7] <= v21)
    {
      goto LABEL_16;
    }

LABEL_24:
    v22 = *a1;
    v23 = (*(*a1 + 32) + 8 * v21);
    v24 = *v23 & 7;
    if (v24 <= 5)
    {
      if (((1 << v24) & 0x35) != 0)
      {
        goto LABEL_26;
      }

      if (v24 == 1)
      {
        v26 = *(a1 + 2);
        if (v26)
        {
          if (v26 != 3)
          {
            v27 = v26 == 1;
            if ((a3 & 0x1000) != 0 && (v27 & v19 & 1) == 0)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_26:
        v17 = (v18 + 1);
        v7[v18] = v21;
        if ((*v23 & 7) == 5)
        {
          v11 |= *(v22 + 1) ^ 1;
        }

        else if ((*v23 & 7) == 4)
        {
          v16 |= v23[1];
        }

        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  v17 = v18;
LABEL_49:
  if (v17 >= 1)
  {
LABEL_50:
    v17 = v17 - (v7[v17 - 1] == -1);
  }

LABEL_51:
  if (!v16)
  {
    goto LABEL_64;
  }

  if (!(v17 | a3))
  {
LABEL_65:
    if (v7 == &re2::instScratch)
    {
      pthread_mutex_unlock(&re2::instScratchLock);
    }

    else
    {
      free(v7);
    }

    return 1;
  }

LABEL_53:
  if (*(a1 + 2) == 1 && v17 >= 1)
  {
    v30 = &v7[v17];
    v31 = v7;
    do
    {
      v33 = v31;
      do
      {
        if (*v33 == -1)
        {
          v32 = 1;
          goto LABEL_57;
        }

        ++v33;
      }

      while (v33 < v30);
      v32 = 0;
LABEL_57:
      std::__sort<std::__less<int,int> &,int *>();
      v31 = &v33[v32];
    }

    while (&v33[v32] < v30);
  }

  v34 = re2::DFA::CachedState(a1, v7, v17, a3 | (v16 << 16), v6);
  if (v7 == &re2::instScratch)
  {
    pthread_mutex_unlock(&re2::instScratchLock);
  }

  else
  {
    free(v7);
  }

  return v34;
}

uint64_t re2::DFA::CachedState(re2::DFA *this, int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = a3;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = 0;
  v7 = std::__hash_table<re2::DFA::State *,re2::DFA::StateHash,re2::DFA::StateEqual,std::allocator<re2::DFA::State *>>::find<re2::DFA::State *>(this + 59, &v13, a3, a4, a5);
  if (v7)
  {
    return v7[2];
  }

  v9 = *(this + 57);
  v10 = (((4 * v5 + 8 * (*(*this + 20) + 1) + 24) << 32) + 0x2000000000) >> 32;
  v11 = v9 < v10;
  v12 = v9 - v10;
  if (!v11)
  {
    *(this + 57) = v12;
    operator new[]();
  }

  result = 0;
  *(this + 57) = -1;
  return result;
}

void *std::__hash_table<re2::DFA::State *,re2::DFA::StateHash,re2::DFA::StateEqual,std::allocator<re2::DFA::State *>>::find<re2::DFA::State *>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (a2)
  {
    v7 = *a2;
    v9 = *(a2 + 8);
    v8 = *(a2 + 12);
    v36 = 0;
    v37 = v8;
    re2::hashword2(v7, v9 << 34 >> 34, &v37, &v36, a5);
    v10 = v36 | (v37 << 32);
    v11 = a1[1];
    if (!*&v11)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = a1[1];
    if (!*&v11)
    {
      return 0;
    }
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v10;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v14 = *(*a1 + 8 * v13);
  if (v14)
  {
    v15 = *v14;
    if (v15)
    {
      v16 = *&v11 - 1;
      if (a2)
      {
        if (v12.u32[0] < 2uLL)
        {
          while (1)
          {
            v18 = v15[1];
            if (v18 == v10)
            {
              v19 = v15[2];
              if (v19 == a2)
              {
                return v15;
              }

              if (v19)
              {
                v20 = *(v19 + 8);
                if (*(v19 + 8) == *(a2 + 8))
                {
                  if (v20 < 1)
                  {
                    return v15;
                  }

                  v21 = *v19;
                  v22 = *a2;
                  while (1)
                  {
                    v24 = *v21++;
                    v23 = v24;
                    v25 = *v22++;
                    if (v23 != v25)
                    {
                      break;
                    }

                    if (!--v20)
                    {
                      return v15;
                    }
                  }
                }
              }
            }

            else if ((v18 & v16) != v13)
            {
              return 0;
            }

            result = 0;
            v15 = *v15;
            if (!v15)
            {
              return result;
            }
          }
        }

        while (1)
        {
          v26 = v15[1];
          if (v26 == v10)
          {
            v27 = v15[2];
            if (v27 == a2)
            {
              return v15;
            }

            if (v27)
            {
              v28 = *(v27 + 8);
              if (*(v27 + 8) == *(a2 + 8))
              {
                if (v28 < 1)
                {
                  return v15;
                }

                v29 = *v27;
                v30 = *a2;
                while (1)
                {
                  v32 = *v29++;
                  v31 = v32;
                  v33 = *v30++;
                  if (v31 != v33)
                  {
                    break;
                  }

                  if (!--v28)
                  {
                    return v15;
                  }
                }
              }
            }
          }

          else
          {
            if (v26 >= *&v11)
            {
              v26 %= *&v11;
            }

            if (v26 != v13)
            {
              return 0;
            }
          }

          result = 0;
          v15 = *v15;
          if (!v15)
          {
            return result;
          }
        }
      }

      if (v12.u32[0] < 2uLL)
      {
        while (1)
        {
          v34 = v15[1];
          if (v34 == v10)
          {
            if (!v15[2])
            {
              return v15;
            }
          }

          else if ((v34 & v16) != v13)
          {
            return 0;
          }

          result = 0;
          v15 = *v15;
          if (!v15)
          {
            return result;
          }
        }
      }

      while (1)
      {
        v35 = v15[1];
        if (v35 == v10)
        {
          if (!v15[2])
          {
            return v15;
          }
        }

        else
        {
          if (v35 >= *&v11)
          {
            v35 %= *&v11;
          }

          if (v35 != v13)
          {
            return 0;
          }
        }

        result = 0;
        v15 = *v15;
        if (!v15)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

_DWORD *std::__hash_table<re2::DFA::State *,re2::DFA::StateHash,re2::DFA::StateEqual,std::allocator<re2::DFA::State *>>::__emplace_unique_key_args<re2::DFA::State *,re2::DFA::State * const&>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = result;
  if (a2)
  {
    v7 = *a2;
    v9 = *(a2 + 8);
    v8 = *(a2 + 12);
    v35 = 0;
    v36 = v8;
    result = re2::hashword2(v7, v9 << 34 >> 34, &v36, &v35, a5);
    v10 = v35 | (v36 << 32);
    v11 = v6[1];
    if (!*&v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v10 = 0;
    v11 = *(result + 2);
    if (!*&v11)
    {
      goto LABEL_51;
    }
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v10;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v14 = *(*v6 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_51:
    operator new();
  }

  v16 = *&v11 - 1;
  if (a2)
  {
    if (v12.u32[0] < 2uLL)
    {
      while (1)
      {
        v17 = v15[1];
        if (v17 == v10)
        {
          v18 = v15[2];
          if (v18 == a2)
          {
            return result;
          }

          if (v18)
          {
            v19 = *(v18 + 8);
            if (*(v18 + 8) == *(a2 + 8))
            {
              if (v19 < 1)
              {
                return result;
              }

              v20 = *v18;
              v21 = *a2;
              while (1)
              {
                v23 = *v20++;
                v22 = v23;
                v24 = *v21++;
                if (v22 != v24)
                {
                  break;
                }

                if (!--v19)
                {
                  return result;
                }
              }
            }
          }
        }

        else if ((v17 & v16) != v13)
        {
          goto LABEL_51;
        }

        v15 = *v15;
        if (!v15)
        {
          goto LABEL_51;
        }
      }
    }

    while (1)
    {
      v25 = v15[1];
      if (v25 == v10)
      {
        v26 = v15[2];
        if (v26 == a2)
        {
          return result;
        }

        if (v26)
        {
          v27 = *(v26 + 8);
          if (*(v26 + 8) == *(a2 + 8))
          {
            if (v27 < 1)
            {
              return result;
            }

            v28 = *v26;
            v29 = *a2;
            while (1)
            {
              v31 = *v28++;
              v30 = v31;
              v32 = *v29++;
              if (v30 != v32)
              {
                break;
              }

              if (!--v27)
              {
                return result;
              }
            }
          }
        }
      }

      else
      {
        if (v25 >= *&v11)
        {
          v25 %= *&v11;
        }

        if (v25 != v13)
        {
          goto LABEL_51;
        }
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_51;
      }
    }
  }

  if (v12.u32[0] < 2uLL)
  {
    while (1)
    {
      v33 = v15[1];
      if (v33 == v10)
      {
        if (!v15[2])
        {
          return result;
        }
      }

      else if ((v33 & v16) != v13)
      {
        goto LABEL_51;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v34 = v15[1];
    if (v34 == v10)
    {
      break;
    }

    if (v34 >= *&v11)
    {
      v34 %= *&v11;
    }

    if (v34 != v13)
    {
      goto LABEL_51;
    }

LABEL_46:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_51;
    }
  }

  if (v15[2])
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t *re2::DFA::StateToWorkq(uint64_t *result, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 36) = *(a2 + 28);
  v2 = *(result + 2);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *result;
    while (1)
    {
      v6 = *(v5 + 4 * v4);
      if (v6 != -1)
      {
        break;
      }

      if ((*(a2 + 40) & 1) == 0)
      {
        *(a2 + 40) = 0;
        v6 = *(a2 + 36);
        *(a2 + 36) = v6 + 1;
LABEL_8:
        if (*(a2 + 4) > v6)
        {
          v7 = *(a2 + 16);
          *(*(a2 + 8) + 4 * v6) = v3;
          *(v7 + 4 * v3) = v6;
          v3 = *a2 + 1;
          *a2 = v3;
          v2 = *(result + 2);
        }
      }

      if (++v4 >= v2)
      {
        return result;
      }
    }

    *(a2 + 40) = 0;
    goto LABEL_8;
  }

  return result;
}

void *re2::DFA::AddToQueue(void *result, int *a2, int a3, int a4)
{
  v4 = result[30];
  *v4 = a3;
  v5 = 1;
  do
  {
    v6 = (v5 - 1);
    v7 = v4[v6];
    if (!v7)
    {
      goto LABEL_3;
    }

    if (v7 == -1)
    {
      if ((a2[10] & 1) == 0)
      {
        *(a2 + 40) = 0;
        v8 = a2[9];
        a2[9] = v8 + 1;
        if (a2[1] > v8)
        {
          v9 = *a2;
          v10 = *(a2 + 2);
          *(*(a2 + 1) + 4 * v8) = v9;
          *(v10 + 4 * v9) = v8;
          ++*a2;
        }
      }
    }

    else
    {
      if (a2[1] <= v7)
      {
        *(a2 + 40) = 0;
      }

      else
      {
        v11 = *(a2 + 1);
        v12 = *(v11 + 4 * v7);
        v13 = *a2;
        if (v12 >= *a2)
        {
          *(a2 + 40) = 0;
          v14 = *(a2 + 2);
        }

        else
        {
          v14 = *(a2 + 2);
          if (*(v14 + 4 * v12) == v7)
          {
            goto LABEL_3;
          }

          *(a2 + 40) = 0;
        }

        *(v11 + 4 * v7) = v13;
        *(v14 + 4 * v13) = v7;
        ++*a2;
      }

      v15 = *result;
      v16 = (*(*result + 32) + 8 * v7);
      v17 = *v16 & 7;
      if (v17 > 3)
      {
        if (v17 == 4)
        {
          if ((v16[1] & ~a4) != 0)
          {
            goto LABEL_3;
          }

LABEL_28:
          v4[v6] = *v16 >> 3;
          v6 = v5;
          goto LABEL_3;
        }

        if (v17 == 6)
        {
          goto LABEL_28;
        }
      }

      else if (v17 >= 2)
      {
        if (v17 == 3)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v4[v6] = v16[1];
        if (a2[8] >= 1 && v7 == *(v15 + 8) && v7 != *(v15 + 4))
        {
          v4[v5] = -1;
          LODWORD(v5) = v5 + 1;
        }

        v6 = (v5 + 1);
        v4[v5] = *v16 >> 3;
      }
    }

LABEL_3:
    v5 = v6;
  }

  while (v6 > 0);
  return result;
}

void *re2::DFA::RunWorkqOnEmptyString(void *result, int *a2, int *a3, int a4)
{
  *a3 = 0;
  a3[9] = a3[7];
  if (*a2)
  {
    v7 = result;
    v8 = *(a2 + 2);
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (a2[7] <= v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = v9;
      }

      result = re2::DFA::AddToQueue(v7, a3, v11, a4);
    }

    while (v8 != (*(a2 + 2) + 4 * *a2));
  }

  return result;
}

void *re2::DFA::RunWorkqOnByte(void *result, int *a2, int *a3, int a4, int a5, _BYTE *a6, int a7)
{
  *a3 = 0;
  a3[9] = a3[7];
  if (*a2)
  {
    v13 = result;
    v14 = *(a2 + 2);
    v15 = a4 - 65;
    v16 = a4 | 0x20;
    for (i = v14; i != &v14[*a2]; ++i)
    {
      v18 = *i;
      if (a2[7] <= v18)
      {
        if (*a6)
        {
          return result;
        }

        if ((a3[10] & 1) == 0)
        {
          *(a3 + 40) = 0;
          v23 = a3[9];
          a3[9] = v23 + 1;
          if (a3[1] > v23)
          {
            v24 = *a3;
            v25 = *(a3 + 2);
            *(*(a3 + 1) + 4 * v23) = v24;
            *(v25 + 4 * v24) = v23;
            ++*a3;
          }
        }
      }

      else
      {
        v19 = *(*v13 + 32) + 8 * v18;
        v20 = *v19 & 7;
        if (v20 == 5)
        {
          if (a4 == 256 || (*(*v13 + 1) & 1) == 0)
          {
            *a6 = 1;
            if (!a7)
            {
              return result;
            }
          }
        }

        else if (v20 == 2)
        {
          if (*(v19 + 6))
          {
            v21 = v15 >= 0x1A;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            v22 = a4;
          }

          else
          {
            v22 = v16;
          }

          if (v22 >= *(v19 + 4) && v22 <= *(v19 + 5))
          {
            result = re2::DFA::AddToQueue(v13, a3, *v19 >> 3, a5);
            v14 = *(a2 + 2);
          }
        }
      }
    }
  }

  return result;
}

unint64_t re2::DFA::RunStateOnByteUnlocked(uint64_t a1, unint64_t a2, int a3)
{
  v6 = (a1 + 24);
  if (pthread_rwlock_wrlock((a1 + 24)) || (v7 = re2::DFA::RunStateOnByte(a1, a2, a3), pthread_rwlock_unlock(v6)))
  {
    abort();
  }

  return v7;
}

void sub_231F84A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re2::MutexLock::~MutexLock(va);
  _Unwind_Resume(a1);
}

unint64_t re2::DFA::RunStateOnByte(uint64_t *a1, unint64_t a2, int a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 2)
      {
        return 2;
      }

      LOBYTE(v38.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "DeadState in RunStateOnByte", 27);
    }

    else
    {
      LOBYTE(v38.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "NULL state in RunStateOnByte", 28);
    }

    LogMessage::~LogMessage(&v38);
    return 0;
  }

  else
  {
    v5 = *a1;
    if (a3 == 256)
    {
      v6 = *(v5 + 20);
    }

    else
    {
      v6 = *(v5 + a3 + 304);
    }

    result = atomic_load_explicit((*(a2 + 16) + 8 * v6), memory_order_acquire);
    if (!result)
    {
      v8 = a1[28];
      *v8 = 0;
      v8[9] = v8[7];
      v9 = *(a2 + 8);
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = *a2;
        while (1)
        {
          v13 = *(v12 + 4 * v11);
          if (v13 != -1)
          {
            break;
          }

          if ((v8[10] & 1) == 0)
          {
            *(v8 + 40) = 0;
            v13 = v8[9];
            v8[9] = v13 + 1;
LABEL_16:
            if (v8[1] > v13)
            {
              *(*(v8 + 1) + 4 * v13) = v10;
              *(*(v8 + 2) + 4 * v10) = v13;
              v10 = *v8 + 1;
              *v8 = v10;
              v9 = *(a2 + 8);
            }
          }

          if (++v11 >= v9)
          {
            goto LABEL_18;
          }
        }

        *(v8 + 40) = 0;
        goto LABEL_16;
      }

LABEL_18:
      v15 = *(a2 + 12);
      v16 = HIWORD(v15);
      v17 = a3 == 10;
      v18 = v15 & 0xFFD | 2;
      if (a3 != 10)
      {
        v18 = v15 & 0xFFF;
      }

      v21 = a3 - 48 < 0xA || (a3 & 0xDFu) - 65 < 0x1A || a3 == 95;
      if (a3 == 256)
      {
        v18 |= 0xAu;
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      if (((v15 & 0x2000) == 0) != v22)
      {
        v23 = 32;
      }

      else
      {
        v23 = 16;
      }

      v24 = v23 | v18;
      if ((v16 & ~(*(a2 + 12) & 0xFFF) & (v23 | v18)) != 0)
      {
        v25 = a1[29];
        *v25 = 0;
        v25[9] = v25[7];
        if (*v8)
        {
          v26 = *(v8 + 2);
          do
          {
            v28 = *v26++;
            v27 = v28;
            if (v8[7] <= v28)
            {
              v29 = -1;
            }

            else
            {
              v29 = v27;
            }

            re2::DFA::AddToQueue(a1, v25, v29, v24);
          }

          while (v26 != (*(v8 + 2) + 4 * *v8));
        }

        v31 = a1[28];
        v30 = a1[29];
        a1[28] = v30;
        a1[29] = v31;
      }

      else
      {
        v30 = a1[28];
        v31 = a1[29];
      }

      LOBYTE(v38.__locale_) = 0;
      re2::DFA::RunWorkqOnByte(a1, v30, v31, a3, a3 == 10, &v38, *(a1 + 2));
      if (a3 == 256 && *(a1 + 2) == 3)
      {
        v32 = a1[28];
      }

      else
      {
        v33 = a1[28];
        v32 = a1[29];
        a1[28] = v32;
        a1[29] = v33;
      }

      if (LOBYTE(v38.__locale_))
      {
        v34 = v17 | 0x1000;
      }

      else
      {
        v34 = v17;
      }

      if (v22)
      {
        v35 = v34 | 0x2000;
      }

      else
      {
        v35 = v34;
      }

      result = re2::DFA::WorkqToCachedState(a1, v32, v35);
      v36 = *a1;
      if (a3 == 256)
      {
        v37 = *(v36 + 20);
      }

      else
      {
        v37 = *(v36 + a3 + 304);
      }

      atomic_store(result, (*(a2 + 16) + 8 * v37));
    }
  }

  return result;
}

re2::DFA::RWLocker *re2::DFA::RWLocker::RWLocker(re2::DFA::RWLocker *this, pthread_rwlock_t *a2)
{
  *this = a2;
  *(this + 8) = 0;
  if (pthread_rwlock_rdlock(a2))
  {
    abort();
  }

  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  if (pthread_rwlock_rdlock(a2))
  {
    abort();
  }

  return this;
}

uint64_t re2::DFA::RWLocker::LockForWriting(uint64_t this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v1 = this;
    if (pthread_rwlock_unlock(*this) || (this = pthread_rwlock_wrlock(*v1), this))
    {
      abort();
    }

    *(v1 + 8) = 1;
  }

  return this;
}

void re2::DFA::RWLocker::~RWLocker(pthread_rwlock_t **this)
{
  v1 = *(this + 8);
  v2 = *this;
  if (v1 == 1)
  {
    if (pthread_rwlock_unlock(v2))
    {
      goto LABEL_3;
    }
  }

  else if (pthread_rwlock_unlock(v2))
  {
LABEL_3:
    abort();
  }
}

{
  v1 = *(this + 8);
  v2 = *this;
  if (v1 == 1)
  {
    if (pthread_rwlock_unlock(v2))
    {
      goto LABEL_3;
    }
  }

  else if (pthread_rwlock_unlock(v2))
  {
LABEL_3:
    abort();
  }
}

void re2::DFA::ResetCache(re2::DFA *this, pthread_rwlock_t **a2)
{
  v3 = a2 + 1;
  if ((a2[1] & 1) == 0)
  {
    if (pthread_rwlock_unlock(*a2) || pthread_rwlock_wrlock(*a2))
    {
      abort();
    }

    goto LABEL_6;
  }

  if ((*(this + 640) & 1) == 0)
  {
    LOBYTE(v6.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DFA memory cache could be too small: ", 37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "only room for ", 14);
    v4 = MEMORY[0x23837FD20](v7, *(this + 62));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " states.", 8);
    v3 = this + 640;
    LogMessage::~LogMessage(&v6);
LABEL_6:
    *v3 = 1;
  }

  *(this + 64) = 0;
  *(this + 130) = -1;
  *(this + 66) = 0;
  *(this + 134) = -1;
  *(this + 68) = 0;
  *(this + 138) = -1;
  *(this + 70) = 0;
  *(this + 142) = -1;
  *(this + 72) = 0;
  *(this + 146) = -1;
  *(this + 74) = 0;
  *(this + 150) = -1;
  *(this + 76) = 0;
  *(this + 154) = -1;
  *(this + 78) = 0;
  *(this + 158) = -1;
  re2::DFA::ClearCache(this);
  *(this + 57) = *(this + 58);
}

uint64_t re2::DFA::StateSaver::StateSaver(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  if (a3 > 2)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = *(a3 + 8);
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = a3;
  return result;
}

{
  *result = a2;
  if (a3 > 2)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = *(a3 + 8);
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = a3;
  return result;
}

void re2::DFA::StateSaver::~StateSaver(re2::DFA::StateSaver *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    if (*(this + 1))
    {
      MEMORY[0x23837FDC0](*(this + 1), 0x1000C8052888210);
    }
  }
}

{
  if ((*(this + 24) & 1) == 0)
  {
    if (*(this + 1))
    {
      MEMORY[0x23837FDC0](*(this + 1), 0x1000C8052888210);
    }
  }
}

uint64_t re2::DFA::StateSaver::Restore(re2::DFA::StateSaver *this)
{
  if (*(this + 24) == 1)
  {
    return *(this + 4);
  }

  v3 = (*this + 24);
  v7[33] = v3;
  if (pthread_rwlock_wrlock(v3))
  {
    goto LABEL_8;
  }

  v2 = re2::DFA::CachedState(*this, *(this + 1), *(this + 4), *(this + 5), v4);
  if (!v2)
  {
    LOBYTE(v6.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "StateSaver failed to restore state.", 35);
    LogMessage::~LogMessage(&v6);
  }

  if (pthread_rwlock_unlock(v3))
  {
LABEL_8:
    abort();
  }

  return v2;
}

void sub_231F852B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LogMessage::~LogMessage(va);
  re2::MutexLock::~MutexLock((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t re2::DFA::InlinedSearchLoop(uint64_t *a1, char **a2, int a3, int a4, int a5)
{
  v7 = a2[5];
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = &(*a2)[v9];
  if (a5)
  {
    v11 = *a2;
  }

  else
  {
    v11 = &(*a2)[v9];
  }

  if (a5)
  {
    v12 = &(*a2)[v9];
  }

  else
  {
    v12 = *a2;
  }

  v13 = *(v7 + 12);
  if ((v13 & 0x1000) != 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v13 & 0x1000) != 0 && (a4)
  {
    a2[9] = v11;
    v15 = 1;
    return v15 & 1;
  }

  v59 = v14;
  v58 = (*(v7 + 12) & 0x1000u) >> 12;
  v62 = v12;
  if (!v9)
  {
    v30 = a2[5];
    goto LABEL_61;
  }

  v60 = (a1 + 3);
  v61 = *a1 + 304;
  v16 = -1;
  if (!a5)
  {
    v16 = 1;
  }

  v55 = 0;
  v56 = v16;
  v17 = a2[5];
  while (1)
  {
    if (a3 && v17 == v7)
    {
      v18 = *(a2 + 12);
      if (a5)
      {
        v11 = memchr(v11, v18, v12 - v11);
        if (!v11)
        {
          goto LABEL_62;
        }

        goto LABEL_30;
      }

      v19 = (v11 - v12);
      if (v11 == v12)
      {
        goto LABEL_64;
      }

      v20 = v12 - v11;
      v11 = &v19[v8];
      v21 = &v19[v8];
      do
      {
        v22 = *--v21;
        if (v18 == v22)
        {
          goto LABEL_29;
        }

        v11 = v21;
      }

      while (!__CFADD__(v20++, 1));
      v30 = v17;
      v11 = v12;
LABEL_61:
      v17 = v30;
      v10 = v11;
      v8 = v11;
      if (a5)
      {
LABEL_62:
        v31 = &(*a2)[*(a2 + 2)];
        v8 = v10;
        v32 = a1;
        if (v31 == &a2[2][*(a2 + 6)])
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

LABEL_64:
      v32 = a1;
      if (*a2 == a2[2])
      {
LABEL_67:
        v34 = *(*v32 + 20);
        LODWORD(v33) = 256;
LABEL_68:
        explicit = atomic_load_explicit((*(v17 + 16) + 8 * v34), memory_order_acquire);
        if (!explicit)
        {
          v65.__locale_ = (v32 + 3);
          if (pthread_rwlock_wrlock((v32 + 3)))
          {
            goto LABEL_118;
          }

          explicit = re2::DFA::RunStateOnByte(v32, v17, v33);
          if (pthread_rwlock_unlock((v32 + 3)))
          {
            goto LABEL_118;
          }

          if (!explicit)
          {
            v72 = 0u;
            v71 = 0u;
            v70 = v32;
            if (v17 > 2)
            {
              *(&v71 + 1) = *(v17 + 8);
              operator new[]();
            }

            v71 = 0uLL;
            LOBYTE(v72) = 1;
            *(&v72 + 1) = v17;
            re2::DFA::ResetCache(v32, a2[7]);
            v37 = re2::DFA::StateSaver::Restore(&v70);
            v38 = v37;
            if (!v37)
            {
              goto LABEL_85;
            }

            v65.__locale_ = (v32 + 3);
            if (!pthread_rwlock_wrlock((v32 + 3)))
            {
              explicit = re2::DFA::RunStateOnByte(v32, v38, v33);
              if (!pthread_rwlock_unlock((v32 + 3)))
              {
                if (explicit)
                {
                  v39 = 1;
                  goto LABEL_86;
                }

                LOBYTE(v65.__locale_) = 0;
                std::ostringstream::basic_ostringstream[abi:ne200100](v66);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "RunStateOnByteUnlocked failed after Reset", 41);
                LogMessage::~LogMessage(&v65);
LABEL_85:
                v39 = 0;
                explicit = 0;
                *(a2 + 64) = 1;
LABEL_86:
                v12 = v62;
                if ((v39 & 1) == 0)
                {
LABEL_116:
                  v15 = 0;
                  return v15 & 1;
                }

                goto LABEL_87;
              }
            }

LABEL_118:
            abort();
          }
        }

LABEL_87:
        if (explicit == 2)
        {
          a2[9] = v12;
          v15 = 1;
        }

        else
        {
          if (explicit < 3)
          {
            v15 = v58;
            v40 = v59;
          }

          else
          {
            v15 = v58;
            v40 = v59;
            if ((*(explicit + 13) & 0x10) != 0)
            {
              v41 = a2[10];
              if (v41)
              {
                if (*(v32 + 2) == 3)
                {
                  v42 = *v41;
                  *(v41 + 1) = *v41;
                  v43 = *(explicit + 8);
                  if (v43 >= 1)
                  {
                    for (i = 0; i < v43; ++i)
                    {
                      v45 = (*(*v32 + 32) + 8 * *(*explicit + 4 * i));
                      if ((*v45 & 7) == 5)
                      {
                        v46 = v45[1];
                        v47 = *(v41 + 2);
                        if (v42 < v47)
                        {
                          *v42++ = v46;
                        }

                        else
                        {
                          v48 = *v41;
                          v49 = v42 - *v41;
                          v50 = (v49 >> 2) + 1;
                          if (v50 >> 62)
                          {
                            std::vector<re2::RE2 *>::__throw_length_error[abi:ne200100]();
                          }

                          v51 = v47 - v48;
                          if (v51 >> 1 > v50)
                          {
                            v50 = v51 >> 1;
                          }

                          if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                          {
                            v52 = 0x3FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v52 = v50;
                          }

                          if (v52)
                          {
                            if (!(v52 >> 62))
                            {
                              operator new();
                            }

                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          v53 = (4 * (v49 >> 2));
                          *v53 = v46;
                          v42 = v53 + 1;
                          memcpy(0, v48, v49);
                          *v41 = 0;
                          *(v41 + 1) = v42;
                          *(v41 + 2) = 0;
                          if (v48)
                          {
                            operator delete(v48);
                          }

                          v32 = a1;
                        }

                        *(v41 + 1) = v42;
                        v43 = *(explicit + 8);
                      }
                    }
                  }
                }
              }

              v15 = 1;
              v40 = v8;
            }
          }

          a2[9] = v40;
        }

        return v15 & 1;
      }

      v31 = (*a2 - 1);
LABEL_66:
      v33 = *v31;
      v34 = *(*v32 + v33 + 304);
      goto LABEL_68;
    }

LABEL_29:
    if (!a5)
    {
      v24 = --v11;
      goto LABEL_32;
    }

LABEL_30:
    v24 = v11++;
LABEL_32:
    v25 = *v24;
    v30 = atomic_load_explicit((*(v17 + 16) + 8 * *(v61 + v25)), memory_order_acquire);
    if (v30)
    {
      goto LABEL_36;
    }

    v65.__locale_ = v60;
    if (pthread_rwlock_wrlock(v60))
    {
      goto LABEL_118;
    }

    v30 = re2::DFA::RunStateOnByte(a1, v17, v25);
    if (pthread_rwlock_unlock(v60))
    {
      goto LABEL_118;
    }

    if (v30)
    {
LABEL_36:
      v26 = v7;
      goto LABEL_37;
    }

    if (re2::FLAGS_re2_dfa_bail_when_slow == 1 && v55 && v11 - v55 < (10 * a1[62]))
    {
      v15 = 0;
      *(a2 + 64) = 1;
      return v15 & 1;
    }

    v72 = 0u;
    v71 = 0u;
    v70 = a1;
    if (v7 > 2)
    {
      *(&v71 + 1) = *(v7 + 8);
      operator new[]();
    }

    v71 = 0uLL;
    LOBYTE(v72) = 1;
    *(&v72 + 1) = v7;
    v69 = 0u;
    v68 = 0u;
    v67 = a1;
    if (v17 > 2)
    {
      *(&v68 + 1) = *(v17 + 8);
      operator new[]();
    }

    v68 = 0uLL;
    LOBYTE(v69) = 1;
    *(&v69 + 1) = v17;
    re2::DFA::ResetCache(a1, a2[7]);
    v27 = re2::DFA::StateSaver::Restore(&v70);
    v26 = v27;
    if (v27)
    {
      v28 = re2::DFA::StateSaver::Restore(&v67);
      if (v28)
      {
        v65.__locale_ = v60;
        if (pthread_rwlock_wrlock(v60))
        {
          goto LABEL_118;
        }

        v30 = re2::DFA::RunStateOnByte(a1, v28, v25);
        if (pthread_rwlock_unlock(v60))
        {
          goto LABEL_118;
        }

        if (v30)
        {
          v29 = 1;
          goto LABEL_58;
        }

        LOBYTE(v65.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "RunStateOnByteUnlocked failed after ResetCache", 46);
        LogMessage::~LogMessage(&v65);
      }
    }

    v29 = 0;
    v30 = 0;
    *(a2 + 64) = 1;
LABEL_58:
    v55 = v11;
    if ((v29 & 1) == 0)
    {
      goto LABEL_116;
    }

LABEL_37:
    if (v30 <= 2)
    {
      break;
    }

    v12 = v62;
    if ((*(v30 + 13) & 0x10) != 0)
    {
      v59 = &v11[v56];
      if (a4)
      {
        v36 = &v11[v56];
LABEL_83:
        a2[9] = v36;
        v15 = 1;
        return v15 & 1;
      }

      LOBYTE(v58) = 1;
    }

    v7 = v26;
    v17 = v30;
    if (v11 == v62)
    {
      goto LABEL_61;
    }
  }

  v36 = v62;
  if (v30 != 1)
  {
    goto LABEL_83;
  }

  a2[9] = v59;
  v15 = v58;
  return v15 & 1;
}

void sub_231F85AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  LogMessage::~LogMessage(va);
  if (v13 >= 3)
  {
    if (v12)
    {
      MEMORY[0x23837FDC0](v12, 0x1000C8052888210);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t re2::DFA::AnalyzeSearch(re2::DFA *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*a2 < v4 || (v5 = (v3 + *(a2 + 8)), v6 = (v4 + *(a2 + 24)), v5 > v6))
  {
    LOBYTE(v15.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Text is not inside context.", 27);
    LogMessage::~LogMessage(&v15);
    result = 1;
    *(a2 + 40) = 1;
    return result;
  }

  if (*(a2 + 34) == 1)
  {
    if (v3 != v4)
    {
      v8 = *(v3 - 1);
      if (v8 != 10)
      {
        goto LABEL_7;
      }

LABEL_23:
      v12 = 1;
      v11 = 2;
      if (*(a2 + 32))
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if (v5 != v6)
  {
    v8 = *v5;
    if (v8 != 10)
    {
LABEL_7:
      v10 = (v8 - 48) < 0xA || (v8 & 0xFFFFFFDF) - 65 < 0x1A || v8 == 95;
      if (v10)
      {
        v11 = 4;
      }

      else
      {
        v11 = 6;
      }

      if (v10)
      {
        v12 = 0x2000;
      }

      else
      {
        v12 = 0;
      }

      if (*(a2 + 32))
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v11 = 0;
  v12 = 5;
  if (*(a2 + 32))
  {
LABEL_27:
    v11 |= 1u;
    goto LABEL_28;
  }

LABEL_26:
  if (**a1 == 1)
  {
    goto LABEL_27;
  }

LABEL_28:
  v13 = a1 + 16 * v11 + 512;
  if (re2::DFA::AnalyzeSearchHelper(a1, a2, v13, v12) & 1) != 0 || (re2::DFA::ResetCache(a1, *(a2 + 56)), (re2::DFA::AnalyzeSearchHelper(a1, a2, v13, v12)))
  {
    *(a2 + 40) = *v13;
    *(a2 + 48) = atomic_load_explicit((v13 + 8), memory_order_acquire);
    return 1;
  }

  else
  {
    LOBYTE(v15.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Failed to analyze start state.", 30);
    LogMessage::~LogMessage(&v15);
    result = 0;
    *(a2 + 64) = 1;
  }

  return result;
}

uint64_t re2::DFA::AnalyzeSearchHelper(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (atomic_load_explicit((a3 + 8), memory_order_acquire) == -1)
  {
    v9 = (a1 + 24);
    if (pthread_rwlock_wrlock((a1 + 24)))
    {
      goto LABEL_22;
    }

    if (*(a3 + 8) != -1)
    {
      v4 = 1;
      goto LABEL_13;
    }

    v10 = *(a1 + 224);
    *v10 = 0;
    v10[9] = v10[7];
    v11 = 8;
    if (*(a2 + 32))
    {
      v11 = 4;
    }

    re2::DFA::AddToQueue(a1, v10, *(*a1 + v11), a4);
    v12 = re2::DFA::WorkqToCachedState(a1, *(a1 + 224), a4);
    v13 = v12;
    *a3 = v12;
    if ((v12 - 1) >= 2)
    {
      if (!v12)
      {
        v4 = 0;
LABEL_13:
        if (!pthread_rwlock_unlock(v9))
        {
          return v4;
        }

LABEL_22:
        abort();
      }

      v16 = 0;
      v14 = -3;
      while (1)
      {
        v17 = re2::DFA::RunStateOnByte(a1, v13, v16);
        v4 = v17 != 0;
        if (!v17)
        {
          break;
        }

        v13 = *a3;
        if (v17 != *a3)
        {
          v18 = v14 == -3;
          v14 = v16;
          if (!v18)
          {
            v4 = 1;
            v14 = -2;
            break;
          }
        }

        if (++v16 == 256)
        {
          v4 = 1;
          break;
        }
      }
    }

    else
    {
      v4 = 1;
      v14 = -3;
    }

    atomic_store(v14, (a3 + 8));
    goto LABEL_13;
  }

  return 1;
}

void sub_231F85FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re2::MutexLock::~MutexLock(va);
  _Unwind_Resume(a1);
}

unint64_t re2::Prog::GetDFA(uint64_t a1, int a2)
{
  v2 = 248;
  if (a2 == 3)
  {
    v2 = 240;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 240;
  }

  explicit = atomic_load_explicit((a1 + v3), memory_order_acquire);
  if (!explicit)
  {
    v6 = (a1 + 40);
    if (pthread_rwlock_wrlock((a1 + 40)))
    {
      goto LABEL_12;
    }

    explicit = *(a1 + v3);
    if (!explicit)
    {
      v7 = *(a1 + 256);
      v8 = *(a1 + 2);
      operator new();
    }

    if (pthread_rwlock_unlock(v6))
    {
LABEL_12:
      abort();
    }
  }

  return explicit;
}

void sub_231F860E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x23837FDE0](v2, 0x10B0C4020215F48);
  re2::MutexLock::~MutexLock(va);
  _Unwind_Resume(a1);
}

re2::DFA *re2::DeleteDFA(re2::DFA *this, re2::DFA *a2)
{
  if (this)
  {
    re2::DFA::~DFA(this);

    JUMPOUT(0x23837FDE0);
  }

  return this;
}

BOOL re2::Prog::SearchDFA(char *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 0;
  v7 = *a2;
  if (*a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  if (*a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = *a2;
  }

  v10 = *a1;
  if (a1[2])
  {
    v11 = a1[1];
  }

  else
  {
    v11 = *a1;
  }

  if (v11 == 1 && v9 != v7)
  {
    return 0;
  }

  v14 = *(v8 + 2);
  v15 = a1[2] ? *a1 : a1[1];
  v16 = v7 + *(a2 + 2);
  if (v15 == 1 && v9 + v14 != v16)
  {
    return 0;
  }

  if (a5 == 2)
  {
    v10 = 1;
  }

  if (a4 == 1)
  {
    v10 = 1;
  }

  v42 = v10;
  if (a5 == 2)
  {
    goto LABEL_31;
  }

  if (a5 == 3)
  {
    v20 = 0;
    v21 = 1;
    v22 = 3;
    goto LABEL_34;
  }

  if (a1[1])
  {
LABEL_31:
    v20 = 0;
    a5 = 1;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v20 = 1;
  }

  v22 = 1;
LABEL_34:
  v23 = *(a3 + 3);
  if (a6)
  {
    v24 = 0;
  }

  else
  {
    v24 = v20;
  }

  if (a6)
  {
    v25 = a5;
  }

  else
  {
    v25 = v22;
  }

  DFA = re2::Prog::GetDFA(a1, v25);
  if (*(DFA + 16) == 1)
  {
    result = 0;
    *a7 = 1;
    return result;
  }

  v28 = DFA;
  v40 = v21;
  v29 = a1[2];
  *a7 = 0;
  v53 = (DFA + 256);
  v54 = 0;
  if (pthread_rwlock_rdlock((DFA + 256)))
  {
    goto LABEL_57;
  }

  v43 = *a2;
  v47 = 0u;
  v44 = v9;
  v45 = v14;
  v46 = v23;
  v48 = 0xFFFFFFFFLL;
  v49 = &v53;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  LOBYTE(v47) = v42;
  BYTE1(v47) = v24;
  BYTE2(v47) = (v29 & 1) == 0;
  if (re2::DFA::AnalyzeSearch(v28, &v43))
  {
    if (*(&v47 + 1) == 1)
    {
      v32 = 0;
      v30 = 1;
      v33 = a6;
    }

    else if (*(&v47 + 1) == 2)
    {
      v30 = 0;
      if (v24 != ((v29 & 1) == 0))
      {
        v31 = *(a2 + 2);
      }

      else
      {
        v31 = 0;
      }

      v32 = *a2 + v31;
      v33 = a6;
    }

    else
    {
      v34 = (re2::DFA::FastSearchLoop(re2::DFA::SearchParams *)::Searches[2 * ((2 * BYTE1(v47)) | (4 * (v48 >= 0)) | BYTE2(v47))])(v28, &v43);
      v33 = a6;
      if (v50 == 1)
      {
        v32 = 0;
        v30 = 1;
        *a7 = 1;
      }

      else
      {
        v32 = v51;
        v30 = v34 ^ 1;
      }
    }
  }

  else
  {
    v32 = 0;
    v30 = 1;
    *a7 = 1;
    v33 = a6;
  }

  if (v54 != 1)
  {
    if (!pthread_rwlock_unlock(v53))
    {
      goto LABEL_59;
    }

LABEL_57:
    abort();
  }

  if (pthread_rwlock_unlock(v53))
  {
    goto LABEL_57;
  }

LABEL_59:
  if ((*a7 | v30))
  {
    return 0;
  }

  if (!v40)
  {
    if (!v33)
    {
      return 1;
    }

    v35 = *a2;
    if ((a1[2] & 1) == 0)
    {
      goto LABEL_74;
    }

    v36 = *(a2 + 2);
    goto LABEL_73;
  }

  v35 = *a2;
  v36 = *(a2 + 2);
  if (a1[2])
  {
    v37 = 0;
  }

  else
  {
    v37 = *(a2 + 2);
  }

  v38 = v35 + v37;
  result = v32 == v38;
  if (v33 && v32 == v38)
  {
    if (!a1[2])
    {
LABEL_74:
      v39 = v32;
      v32 = v35;
      goto LABEL_75;
    }

LABEL_73:
    v39 = v35 + v36;
LABEL_75:
    *v33 = v32;
    *(v33 + 8) = v39 - v32;
    return 1;
  }

  return result;
}

uint64_t re2::DFA::BuildAllStates(re2::DFA *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v17 = (this + 256);
    v18 = 0;
    if (pthread_rwlock_rdlock((this + 256)))
    {
      goto LABEL_10;
    }

    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    v12 = 0xFFFFFFFFLL;
    v13 = &v17;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v2 = re2::DFA::AnalyzeSearch(this, v10);
    if (*(&v11 + 1) > 2uLL)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      *v7 = 0u;
      *__p = 0u;
      v9 = 1065353216;
      std::__hash_table<re2::DFA::State *,re2::DFA::StateHash,re2::DFA::StateEqual,std::allocator<re2::DFA::State *>>::__emplace_unique_key_args<re2::DFA::State *,re2::DFA::State * const&>(v7, *(&v11 + 1), &v11 + 8, v3, v4);
      operator new();
    }

    if (v18 == 1)
    {
      if (pthread_rwlock_unlock(v17))
      {
        goto LABEL_10;
      }
    }

    else if (pthread_rwlock_unlock(v17))
    {
LABEL_10:
      abort();
    }
  }

  return 0;
}

void sub_231F86738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unordered_set<re2::DFA::State *,re2::DFA::StateHash,re2::DFA::StateEqual,std::allocator<re2::DFA::State *>>::~unordered_set[abi:ne200100](va);
  re2::DFA::RWLocker::~RWLocker((v3 - 112));
  _Unwind_Resume(a1);
}

uint64_t re2::Prog::BuildEntireDFA(uint64_t a1, int a2)
{
  DFA = re2::Prog::GetDFA(a1, a2);

  return re2::DFA::BuildAllStates(DFA);
}

unint64_t SGMachTimeToNanoseconds(uint64_t a1)
{
  if (SGMachTimeToNanoseconds_onceToken != -1)
  {
    dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
  }

  return SGMachTimeToNanoseconds_machTimebaseInfo * a1 / *algn_280D9D734;
}

void sub_231F86B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F86FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16655(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16775(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F8B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231F8B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_WORD *SGFeatureVectorSerialize(_WORD *a1, char a2)
{
  if (a1)
  {
    v4 = a1;
    if (a1[1] - 1 > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_23210C350[(a1[1] - 1)];
    }

    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    if (a2)
    {
      a1 = [v6 initWithBytesNoCopy:v4 length:v5 freeWhenDone:0];
    }

    else
    {
      a1 = [v6 initWithBytes:v4 length:v5];
    }

    v2 = vars8;
  }

  return a1;
}

uint64_t SGFeatureVectorSize(uint64_t a1)
{
  if (*(a1 + 2) - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_23210C350[(*(a1 + 2) - 1)];
  }
}

__int16 *SGFeatureVectorParse(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 readDataOfLength:4];
  if ([v2 length] != 4)
  {
    goto LABEL_7;
  }

  v3 = [v2 bytes];
  v4 = v3;
  v5 = v3[1];
  if (*v3 == -2)
  {
    v5 = __rev16(v5);
    v3[1] = v5;
  }

  v6 = v5 - 1;
  if (v6 <= 2)
  {
    v7 = qword_23210C350[v6];
    v8 = v7 - 4;
    v9 = [v1 readDataOfLength:v7 - 4];
    if ([v9 length] >= v7 - 4)
    {
      v11 = malloc_type_malloc(v7, 0x8D0E4157uLL);
      v10 = v11;
      if (v11)
      {
        *v11 = *v4;
        memcpy(v11 + 2, [v9 bytes], v8);
        v12 = v10[1];
        if (v12 == 3)
        {
          v14 = *v10;
          v18 = 0x140010000C0008;
          v19 = 24;
          if (v14 == -2)
          {
            for (i = 0; i != 10; i += 2)
            {
              *(v10 + *(&v18 + i)) = bswap32(*(v10 + *(&v18 + i)));
            }
          }
        }

        else if (v12 == 1 && *v10 == -2)
        {
          for (j = 0; j != 9; ++j)
          {
            *(v10 + word_23210C33E[j]) = bswap32(*(v10 + word_23210C33E[j]));
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

void SGFeatureVectorLog(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2);
  switch(v2)
  {
    case 3:
      v3 = sgLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v28 = "False";
        if (*(a1 + 4))
        {
          v29 = "True";
        }

        else
        {
          v29 = "False";
        }

        if (*(a1 + 5))
        {
          v30 = "True";
        }

        else
        {
          v30 = "False";
        }

        if (*(a1 + 6))
        {
          v31 = "True";
        }

        else
        {
          v31 = "False";
        }

        if (*(a1 + 7))
        {
          v28 = "True";
        }

        v32 = *(a1 + 8);
        v33 = *(a1 + 12);
        v34 = *(a1 + 16);
        v35 = *(a1 + 20);
        v36 = *(a1 + 24);
        v38 = 136317186;
        *v39 = v29;
        *&v39[8] = 2080;
        v40 = v30;
        *v41 = 2080;
        *&v41[2] = v31;
        *v42 = 2080;
        *&v42[2] = v28;
        *v43 = 2048;
        *&v43[2] = v32;
        LOWORD(v44) = 1024;
        *(&v44 + 2) = v33;
        HIWORD(v44) = 1024;
        *v45 = v34;
        *&v45[4] = 1024;
        *&v45[6] = v35;
        v46 = 1024;
        LODWORD(v47) = v36;
        v19 = "SGDetectionNotabilityFeatureVec: <\n  Is phone number: %s\n  Is address: %s\n  In HMM-detected sig: %s\n  In DD sig: %s\n  How far down the email was this found?: %0.3f\n  Phone numbers in sig: %i\n  Phone numbers in email: %i\n  Addresses in sig: %i\n  Addresses in email: %i\n>";
        v20 = v3;
        v21 = 76;
        goto LABEL_52;
      }

      goto LABEL_53;
    case 2:
      v3 = sgLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v22 = "False";
        if (*(a1 + 4))
        {
          v23 = "True";
        }

        else
        {
          v23 = "False";
        }

        if (*(a1 + 5))
        {
          v24 = "True";
        }

        else
        {
          v24 = "False";
        }

        if (*(a1 + 6))
        {
          v25 = "True";
        }

        else
        {
          v25 = "False";
        }

        v26 = *(a1 + 8);
        if (*(a1 + 7))
        {
          v27 = "True";
        }

        else
        {
          v27 = "False";
        }

        v38 = 136316162;
        if (v26)
        {
          v22 = "True";
        }

        *v39 = v23;
        *&v39[8] = 2080;
        v40 = v24;
        *v41 = 2080;
        *&v41[2] = v25;
        *v42 = 2080;
        *&v42[2] = v27;
        *v43 = 2080;
        *&v43[2] = v22;
        v19 = "SGInhumanityFeatureVec: <\n  Has one or more inhuman-looking headers: %s\n  Author email address looks inhuman: %s\n  Author name looks inhuman: %s\n  Body of email contains inhuman phrase: %s\n  Domain is a template sender: %s\n>";
        v20 = v3;
        v21 = 52;
        goto LABEL_52;
      }

LABEL_53:

      break;
    case 1:
      v3 = sgLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 4);
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = "False";
        if (*(a1 + 16))
        {
          v8 = "True";
        }

        else
        {
          v8 = "False";
        }

        if (*(a1 + 17))
        {
          v9 = "True";
        }

        else
        {
          v9 = "False";
        }

        if (*(a1 + 18))
        {
          v10 = "True";
        }

        else
        {
          v10 = "False";
        }

        if (*(a1 + 19))
        {
          v11 = "True";
        }

        else
        {
          v11 = "False";
        }

        if (*(a1 + 20))
        {
          v12 = "True";
        }

        else
        {
          v12 = "False";
        }

        v13 = *(a1 + 24);
        v14 = *(a1 + 28);
        v15 = *(a1 + 32);
        v16 = *(a1 + 36);
        v17 = *(a1 + 40);
        v18 = *(a1 + 44);
        if (*(a1 + 48))
        {
          v7 = "True";
        }

        v38 = 67112706;
        *v39 = v4;
        *&v39[4] = 1024;
        *&v39[6] = v5;
        LOWORD(v40) = 1024;
        *(&v40 + 2) = v6;
        HIWORD(v40) = 2080;
        *v41 = v8;
        *&v41[8] = 2080;
        *v42 = v9;
        *&v42[8] = 2080;
        *v43 = v10;
        *&v43[8] = 2080;
        v44 = v11;
        *v45 = 2080;
        *&v45[2] = v12;
        v46 = 2048;
        v47 = v13;
        v48 = 1024;
        v49 = v14;
        v50 = 1024;
        v51 = v15;
        v52 = 1024;
        v53 = v16;
        v54 = 1024;
        v55 = v17;
        v56 = 1024;
        v57 = v18;
        v58 = 2080;
        v59 = v7;
        v19 = "SGRealtimeContactConfidenceFeatureVec: <\n  contacts with phone number matches: %i\n  contacts with name matches: %i\n  contact with both phone and name matches: %i\n  Phone number matches an existing contact: %s\n  Name matches an existing contact: %s\n  Email matches an existing contact: %s\n  IM Address matches an existing contact: %s\n  Existing contact has address: %s\n  Address match with existing contact, if both have addrs: %0.3f\n  New phone numbers: %i\n  New emails: %i\n  New IM addresses: %i\n  New addresses: %i\n  Length of name: %i\n  Name has at-sign: %s\n>";
        v20 = v3;
        v21 = 120;
LABEL_52:
        _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_INFO, v19, &v38, v21);
        goto LABEL_53;
      }

      goto LABEL_53;
  }

  v37 = *MEMORY[0x277D85DE8];
}

id patterns_17281()
{
  if (patterns_onceToken_17285 != -1)
  {
    dispatch_once(&patterns_onceToken_17285, &__block_literal_global_229);
  }

  v1 = patterns_patterns_17286;

  return v1;
}

uint64_t __patterns_block_invoke_17288()
{
  v0 = [SGPatterns patternsForClass:objc_opt_class()];
  v1 = patterns_patterns_17286;
  patterns_patterns_17286 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_231F8ECD0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    v3 = *(v2 - 320);
    JUMPOUT(0x231F8EAE8);
  }

  _Unwind_Resume(exc_buf);
}

id SGNamesAsciify(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isLowercaseAscii(v1) & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [v2 lowercaseString];
    objc_autoreleasePoolPop(v3);

    if (isLowercaseAscii(v4))
    {
      v2 = v4;
    }

    else if (v4)
    {
      v2 = _PASSimpleICUTransform();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id letters(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 length];
  v3 = v2;
  buffer[0] = 0uLL;
  if (v2 > 0x200)
  {
    v31 = malloc_type_posix_memalign(buffer, 8uLL, v2, 0x5ADA1CF5uLL);
    BYTE8(buffer[0]) = 0;
    if (v31)
    {
      v32 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v32);
    }

    v4 = *&buffer[0];
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v4, v3);
  }

  v5 = v1;
  v6 = objc_opt_self();

  if (v6)
  {
    memset(buffer, 0, sizeof(buffer));
    Length = CFStringGetLength(v5);
    v36 = v5;
    v39 = 0;
    v40 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v5);
    CStringPtr = 0;
    v37 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v34 = v3;
    v41 = 0;
    v42 = 0;
    v38 = CStringPtr;
    if (Length >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 64;
      v14 = MEMORY[0x277D85DE0];
      while (1)
      {
        if (v12 >= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = v12;
        }

        v16 = v40;
        if (v40 <= v12)
        {
          v19 = 0;
          LOBYTE(v18) = 0;
          goto LABEL_19;
        }

        if (v37)
        {
          break;
        }

        if (!v38)
        {
          v21 = v41;
          if (v42 <= v12 || v41 > v12)
          {
            v23 = v15 + v10;
            v24 = v13 - v15;
            v25 = v12 - v15;
            v26 = v25 + 64;
            if (v25 + 64 >= v40)
            {
              v26 = v40;
            }

            v41 = v25;
            v42 = v26;
            if (v40 >= v24)
            {
              v16 = v24;
            }

            v45.location = v25 + v39;
            v45.length = v16 + v23;
            CFStringGetCharacters(v36, v45, buffer);
            v21 = v41;
          }

          v17 = buffer - v21;
          goto LABEL_14;
        }

        v18 = v38[v39 + v12];
LABEL_18:
        v19 = v18;
        if (v18 > 0x7Fu)
        {
          v20 = __maskrune(v18, 0x100uLL);
          LOBYTE(v18) = v19;
          if (!v20)
          {
            goto LABEL_21;
          }

LABEL_20:
          v4[v11++] = v18;
          goto LABEL_21;
        }

LABEL_19:
        if ((*(v14 + 4 * v19 + 60) & 0x100) != 0)
        {
          goto LABEL_20;
        }

LABEL_21:
        ++v12;
        --v10;
        ++v13;
        if (Length == v12)
        {
          goto LABEL_37;
        }
      }

      v17 = &v37[v39];
LABEL_14:
      v18 = v17[v12];
      goto LABEL_18;
    }

    v11 = 0;
LABEL_37:
    v3 = v34;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == v3)
  {
    v27 = [(__CFString *)v5 copy];
  }

  else
  {
    v4[v11] = 0;
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v4 encoding:1];
  }

  v28 = v27;
  if (v3 >= 0x201)
  {
    free(v4);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

__CFString *sketchWithInitialAndName(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = &stru_284703F00;
  if (v3 && v4)
  {
    v7 = [v3 length];
    if (v7 != 1)
    {
      if (!v7)
      {
        v6 = v5;
        goto LABEL_17;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = [v3 substringWithRange:{0, 1}];

      objc_autoreleasePoolPop(v8);
      v3 = v9;
    }

    v10 = [v5 UTF8String];
    v11 = [v3 UTF8String];
    v6 = &stru_284703F00;
    if (v10)
    {
      v12 = v11;
      if (v11)
      {
        v13 = strlen(v11);
        v14 = strlen(v10);
        v15 = v13 + v14 + 2;
        memptr = 0;
        v25 = 0;
        if (v15 > 0x200)
        {
          v21 = malloc_type_posix_memalign(&memptr, 8uLL, v15, 0x869A7F8BuLL);
          LOBYTE(v25) = 0;
          if (v21)
          {
            v22 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
            objc_exception_throw(v22);
          }

          v16 = memptr;
        }

        else
        {
          MEMORY[0x28223BE20](v14);
          v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v16, v15);
        }

        snprintf(v16, v15, "%s.%s", v12, v10);
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
        if (v15 >= 0x201)
        {
          free(v16);
        }

        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = &stru_284703F00;
        }

        v6 = v18;
      }
    }
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

id SGNamesOnlyNameChars(void *a1)
{
  if (a1)
  {
    v1 = a1;
    _PASGetNameCharacterSet();
    v2 = _PASKeepOnlyCharacterSet();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id tokenizeName(void *a1)
{
  v1 = a1;
  if (tokenizeName__pasOnceToken35 != -1)
  {
    dispatch_once(&tokenizeName__pasOnceToken35, &__block_literal_global_237);
  }

  v2 = tokenizeName__pasExprOnceResult;
  v3 = objc_opt_new();
  v4 = [v2 result];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __tokenizeName_block_invoke_3;
  v10[3] = &unk_27894E4D0;
  v13 = v1;
  v11 = v1;
  v5 = v3;
  v12 = v5;
  v6 = v1;
  [v4 runWithLockAcquired:v10];

  v7 = v12;
  v8 = v5;

  return v5;
}

long double limitedTermProb(void *a1)
{
  v1 = nameData(a1);
  v2 = ((v1 >> 12) + 1) / 47171077.0;
  if ((v1 & 2) == 0)
  {
    v2 = 0.0000000211994312;
  }

  result = log10(v2);
  if (result < -3.5)
  {
    return -3.5;
  }

  return result;
}

uint64_t nameData(void *a1)
{
  v1 = a1;
  if ([v1 length] > 0x20)
  {
    v3 = 0;
  }

  else
  {
    if (nameFreqTrie_onceToken != -1)
    {
      dispatch_once(&nameFreqTrie_onceToken, &__block_literal_global_210);
    }

    pthread_mutex_lock(&nameFreqTrie_updateLock);
    v2 = nameFreqTrie_trie;
    pthread_mutex_unlock(&nameFreqTrie_updateLock);
    v3 = [v2 payloadForString:v1];
  }

  return v3;
}

void __nameFreqTrie_block_invoke()
{
  v0 = +[SGAsset asset];
  v1 = [v0 registerUpdateHandler:&__block_literal_global_213];

  v2 = +[SGAsset asset];
  __nameFreqTrie_block_invoke_2(v2, v2);
}

void __nameFreqTrie_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  pthread_mutex_lock(&nameFreqTrie_updateLock);
  v7 = [v2 filesystemPathForAssetDataRelativePath:@"namefreq.trie"];

  v3 = v7;
  if (v7)
  {
    v3 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v7];
  }

  v4 = nameFreqTrie_trie;
  nameFreqTrie_trie = v3;

  if (!nameFreqTrie_trie)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_PASCFBurstTrie *nameFreqTrie(void)_block_invoke_2"];
    [v5 handleFailureInFunction:v6 file:@"SGNames.m" lineNumber:65 description:@"Could not load name frequency trie"];
  }

  pthread_mutex_unlock(&nameFreqTrie_updateLock);
}

void __tokenizeName_block_invoke_3(uint64_t a1, void *a2)
{
  tokenizer = a2;
  v3 = *(a1 + 48);
  v12.length = [*(a1 + 32) length];
  v12.location = 0;
  CFStringTokenizerSetString(tokenizer, v3, v12);
  v4 = *MEMORY[0x277CBECE8];
  while (CFStringTokenizerAdvanceToNextToken(tokenizer))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
    v5 = CFStringCreateWithSubstring(v4, *(a1 + 48), CurrentTokenRange);
    v6 = SGNamesAsciify(v5);
    v7 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    [v6 rangeOfCharacterFromSet:v7];
    v9 = v8;

    if (v9)
    {
      [*(a1 + 40) addObject:v6];
    }

    CFRelease(v5);
  }

  v14.location = 0;
  v14.length = 1;
  CFStringTokenizerSetString(tokenizer, @"⌘", v14);
  CFRelease(tokenizer);
}

void __tokenizeName_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_240 idleTimeout:1.0];
  v2 = tokenizeName__pasExprOnceResult;
  tokenizeName__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __tokenizeName_block_invoke_2()
{
  v0 = CFLocaleCopyCurrent();
  v7.location = 0;
  v7.length = 0;
  v1 = CFStringTokenizerCreate(0, 0, v7, 4uLL, v0);
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSArray<NSString *> *tokenizeName(NSString *__strong)_block_invoke_2"];
    [v4 handleFailureInFunction:v5 file:@"SGNames.m" lineNumber:940 description:{@"Invalid parameter not satisfying: %@", @"guardedTokenizer"}];
  }

  CFRelease(v0);
  v2 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v1];

  return v2;
}

void sub_231F919C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17345(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F92670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *removeParens(void *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v24 = 0;
    goto LABEL_40;
  }

  v3 = v1;
  v4 = objc_opt_self();

  if (!v4)
  {
    goto LABEL_37;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  buffer = 0u;
  Length = CFStringGetLength(v3);
  v65 = v3;
  v68 = 0;
  v69 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  CStringPtr = 0;
  v66 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  }

  v70 = 0;
  v71 = 0;
  v67 = CStringPtr;
  if (Length < 1)
  {
LABEL_37:

LABEL_38:
    v24 = v3;
    goto LABEL_40;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 64;
  while (1)
  {
    if (v10 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v10;
    }

    v13 = v69;
    if (v69 <= v10)
    {
      v15 = 0;
      goto LABEL_15;
    }

    if (v66)
    {
      v14 = &v66[v68];
LABEL_13:
      v15 = v14[v10];
      goto LABEL_18;
    }

    if (!v67)
    {
      if (v71 <= v10 || v9 > v10)
      {
        v20 = v12 + v8;
        v21 = v11 - v12;
        v22 = v10 - v12;
        v23 = v22 + 64;
        if (v22 + 64 >= v69)
        {
          v23 = v69;
        }

        v70 = v22;
        v71 = v23;
        if (v69 >= v21)
        {
          v13 = v21;
        }

        v74.location = v22 + v68;
        v74.length = v13 + v20;
        CFStringGetCharacters(v65, v74, &buffer);
        v9 = v70;
      }

      v14 = &buffer - v9;
      goto LABEL_13;
    }

    v15 = v67[v68 + v10];
LABEL_18:
    if (v15 - 40 <= 0x33 && ((1 << (v15 - 40)) & 0x8000000100001) != 0)
    {
      v16 = 5;
      goto LABEL_23;
    }

LABEL_15:
    v16 = 0;
LABEL_23:
    v18 = v15 - 40;
    if (v18 <= 0x33 && ((1 << v18) & 0x8000000100001) != 0)
    {
      break;
    }

    ++v10;
    --v8;
    ++v11;
    if (Length == v10)
    {
      goto LABEL_37;
    }
  }

  if (v16 != 5)
  {
    goto LABEL_38;
  }

  v27 = [(__CFString *)v3 length];
  v28 = (2 * v27) | 1;
  buffer = 0uLL;
  if (v28 > 0x200)
  {
    v53 = malloc_type_posix_memalign(&buffer, 8uLL, 2 * [(__CFString *)v3 length], 0x1000040BDFB0063uLL);
    BYTE8(buffer) = 0;
    if (v53)
    {
      v54 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v54);
    }

    v56 = buffer;
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v56 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v56, v28);
  }

  v24 = v3;
  v29 = objc_opt_self();

  if (v29)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    buffer = 0u;
    v30 = CFStringGetLength(v24);
    v65 = v24;
    v68 = 0;
    v69 = v30;
    v31 = CFStringGetCharactersPtr(v24);
    v32 = 0;
    v66 = v31;
    if (!v31)
    {
      v32 = CFStringGetCStringPtr(v24, 0x600u);
    }

    v55 = v28;
    v70 = 0;
    v71 = 0;
    v67 = v32;
    if (v30 >= 1)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v29 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 64;
      v40 = v56;
      while (1)
      {
        if (v35 >= 4)
        {
          v41 = 4;
        }

        else
        {
          v41 = v35;
        }

        v42 = v69;
        if (v69 <= v35)
        {
          v44 = 0;
LABEL_59:
          if (!v36 && !v38 && !v37)
          {
            v38 = 0;
            v36 = 0;
            *&v40[2 * v29++] = v44;
          }

          goto LABEL_63;
        }

        if (v66)
        {
          break;
        }

        if (!v67)
        {
          if (v71 <= v35 || v34 > v35)
          {
            v46 = v41 + v33;
            v47 = v39 - v41;
            v48 = v35 - v41;
            v49 = v48 + 64;
            if (v48 + 64 >= v69)
            {
              v49 = v69;
            }

            v70 = v48;
            v71 = v49;
            if (v69 >= v47)
            {
              v42 = v47;
            }

            v75.location = v48 + v68;
            v75.length = v42 + v46;
            CFStringGetCharacters(v65, v75, &buffer);
            v40 = v56;
            v34 = v70;
          }

          v43 = &buffer - v34;
          goto LABEL_57;
        }

        v44 = v67[v68 + v35];
LABEL_67:
        if (v44 > 0x3Du)
        {
          switch(v44)
          {
            case '>':
              if (!v38)
              {
                goto LABEL_40;
              }

              --v38;
              break;
            case '[':
              ++v37;
              break;
            case ']':
              if (!v37)
              {
                goto LABEL_40;
              }

              --v37;
              break;
            default:
              goto LABEL_59;
          }
        }

        else
        {
          switch(v44)
          {
            case '(':
              ++v36;
              break;
            case ')':
              if (!v36)
              {
                goto LABEL_40;
              }

              --v36;
              break;
            case '<':
              ++v38;
              break;
            default:
              goto LABEL_59;
          }
        }

LABEL_63:
        ++v35;
        --v33;
        ++v39;
        if (v30 == v35)
        {
          goto LABEL_95;
        }
      }

      v43 = &v66[v68];
LABEL_57:
      v44 = v43[v35];
      goto LABEL_67;
    }

    v38 = 0;
    v37 = 0;
    v36 = 0;
    v29 = 0;
LABEL_95:
    v28 = v55;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v36 = 0;
  }

  v50 = [(__CFString *)v24 length];
  if (v36 + v38 + v37 || v29 == v50)
  {
    v52 = [(__CFString *)v24 copy];
  }

  else
  {
    v51 = objc_alloc(MEMORY[0x277CCACA8]);
    v52 = [v51 initWithCharacters:v56 length:v29];
  }

  v24 = v52;
  if (v28 >= 0x201)
  {
    free(v56);
  }

LABEL_40:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void sub_231F931F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void findEndOfHonorificPrefixCandidate(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [(__CFString *)v3 length];
  CharactersPtr = CFStringGetCharactersPtr(v3);
  if (!CharactersPtr)
  {
    MEMORY[0x28223BE20](0);
    CharactersPtr = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(CharactersPtr, v7);
    [(__CFString *)v3 getCharacters:CharactersPtr];
  }

  if (v5)
  {
    v8 = 0;
    while (1)
    {
      v9 = CharactersPtr[v8];
      if (v9 == 32 || v9 == 46)
      {
        break;
      }

      if (v5 == ++v8)
      {
        goto LABEL_18;
      }
    }

    if (v9 == 46)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = v10;
    if (v10 < v5)
    {
      v11 = v10;
      while (CharactersPtr[v11] == 32)
      {
        if (++v11 >= v5)
        {
          v11 = v5;
          break;
        }
      }
    }

    v4[2](v4, v10, v11, v9 == 46);
  }

LABEL_18:

  v12 = *MEMORY[0x277D85DE8];
}

void __enumerateTrailingHonorificMatchesInString_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = [v10 range];
  if (((*(v7 + 16))(v7, v8, v9) & 1) == 0)
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

void __enumerateTrailingHonorificMatchesInString_block_invoke()
{
  v0 = patterns_17281();
  v1 = [v0 rawValueForKey:@"TrailingHonorific"];

  if (!v1)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void enumerateTrailingHonorificMatchesInString(NSString *__strong, BOOL (^__strong)(NSRange))_block_invoke"}];
    [v5 handleFailureInFunction:v6 file:@"SGNames.m" lineNumber:691 description:@"Could not initialize the raw regexp"];
  }

  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v1 options:0 error:&v9];
  v3 = v9;
  v4 = enumerateTrailingHonorificMatchesInString_trailingRe;
  enumerateTrailingHonorificMatchesInString_trailingRe = v2;

  if (!enumerateTrailingHonorificMatchesInString_trailingRe)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void enumerateTrailingHonorificMatchesInString(NSString *__strong, BOOL (^__strong)(NSRange))_block_invoke"}];
    [v7 handleFailureInFunction:v8 file:@"SGNames.m" lineNumber:693 description:{@"Could not initialize regular expression: %@", v3}];
  }
}

uint64_t SGGuessNamingTradition(void *a1)
{
  v1 = a1;
  if (SGGuessNamingTradition__pasOnceToken3 != -1)
  {
    dispatch_once(&SGGuessNamingTradition__pasOnceToken3, &__block_literal_global_17401);
  }

  v2 = SGGuessNamingTradition__pasExprOnceResult;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SGGuessNamingTradition_block_invoke_2;
  v6[3] = &unk_278951000;
  v3 = v1;
  v7 = v3;
  v8 = &v9;
  [v2 runWithLockAcquired:v6];
  v4 = *(v10 + 6);

  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_231F93DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SGGuessNamingTradition_block_invoke_2(uint64_t a1, void *a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    LODWORD(v6) = [v4 intValue];
    goto LABEL_3;
  }

  v8 = *(a1 + 32);
  v9 = objc_autoreleasePoolPush();
  if ([v8 length])
  {
    v141 = chineseCharSet();
    v140 = hangulCharSet();
    v139 = japaneseCharSet();
    if (latinCharSet_onceToken != -1)
    {
      dispatch_once(&latinCharSet_onceToken, &__block_literal_global_194_17402);
    }

    v138 = latinCharSet_result;
    if (cyrillicCharSet_onceToken != -1)
    {
      dispatch_once(&cyrillicCharSet_onceToken, &__block_literal_global_206);
    }

    v137 = cyrillicCharSet_result;
    if (thaiCharSet_onceToken != -1)
    {
      dispatch_once(&thaiCharSet_onceToken, &__block_literal_global_208);
    }

    v136 = thaiCharSet_result;
    v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v135 = +[SGNames cjkSpacerCharacters];
    v11 = [v8 rangeOfString:@" options:{", 2}];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v8;
    }

    else
    {
      v13 = [v8 substringFromIndex:v11 + 1];
      v12 = [v13 stringByTrimmingCharactersInSet:v10];
    }

    v14 = [v12 rangeOfCharacterFromSet:v10];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v12 substringToIndex:v14];
      v16 = [SGNames isCommonVietnameseSurname:v15];

      if (v16)
      {
        v6 = 3;
        goto LABEL_123;
      }
    }

    v17 = v8;
    v18 = objc_opt_self();

    v19 = 0.0;
    v126 = v12;
    v127 = v9;
    v129 = a1;
    v128 = v8;
    v134 = v10;
    if (v18)
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      *buffer = 0u;
      v153 = 0u;
      Length = CFStringGetLength(v17);
      theString = v17;
      v163 = 0;
      v164 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v17);
      CStringPtr = 0;
      v161 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v17, 0x600u);
      }

      v165 = 0;
      v166 = 0;
      v162 = CStringPtr;
      if (Length >= 1)
      {
        v142 = v17;
        v23 = 0;
        v24 = 0;
        v146 = 0;
        v147 = 0;
        v25 = 0;
        v26 = 0;
        v145 = 0;
        v27 = 0;
        v28 = 64;
        while (1)
        {
          if (v24 >= 4)
          {
            v29 = 4;
          }

          else
          {
            v29 = v24;
          }

          v30 = v164;
          if (v164 <= v24)
          {
            v32 = 0;
          }

          else
          {
            if (v161)
            {
              v31 = &v161[v163];
            }

            else
            {
              if (v162)
              {
                v32 = v162[v163 + v24];
                goto LABEL_31;
              }

              v33 = v165;
              if (v166 <= v24 || v165 > v24)
              {
                v35 = v29 + v23;
                v36 = v28 - v29;
                v37 = v24 - v29;
                v38 = v37 + 64;
                if (v37 + 64 >= v164)
                {
                  v38 = v164;
                }

                v165 = v37;
                v166 = v38;
                if (v164 >= v36)
                {
                  v30 = v36;
                }

                v168.location = v37 + v163;
                v168.length = v30 + v35;
                CFStringGetCharacters(theString, v168, buffer);
                v33 = v165;
              }

              v31 = &buffer[-v33];
            }

            v32 = v31[v24];
          }

LABEL_31:
          HIDWORD(v146) += [v141 characterIsMember:v32];
          LODWORD(v147) = v147 + [v140 characterIsMember:v32];
          HIDWORD(v147) += [v139 characterIsMember:v32];
          v25 += [v136 characterIsMember:v32];
          v27 += [v138 characterIsMember:v32];
          v145 += [v134 characterIsMember:v32];
          LODWORD(v146) = v146 + [v135 characterIsMember:v32];
          v26 += [v137 characterIsMember:v32];
          ++v24;
          --v23;
          ++v28;
          if (Length == v24)
          {
            v125 = v27 != 0;
            v39 = v26;
            v17 = v142;
            goto LABEL_46;
          }
        }
      }
    }

    v146 = 0;
    v147 = 0;
    v125 = 0;
    v145 = 0;
    v25 = 0;
    v39 = 0.0;
LABEL_46:

    v40 = v17;
    context = objc_autoreleasePoolPush();
    v41 = patterns_17281();
    v42 = [v41 rawValueForKey:@"SpanishNameClassifierConfidenceThreshold"];
    v43 = [v42 objectAtIndexedSubscript:0];
    [v43 floatValue];
    v45 = v44;

    v46 = patterns_17281();
    v133 = [v46 rawValueForKey:@"SpanishNameCharacterIndicators"];

    v47 = patterns_17281();
    v143 = [v47 rawValueForKey:@"SpanishNameUnigramIndicators"];

    v48 = patterns_17281();
    v132 = [v48 rawValueForKey:@"SpanishNameBigramIndicators"];

    v49 = patterns_17281();
    v131 = [v49 rawValueForKey:@"TwoCharSpanishNameEndings"];

    v50 = patterns_17281();
    v51 = [v50 rawValueForKey:@"SpanishNameLocaleIndicators"];

    v52 = [MEMORY[0x277CBEAF8] currentLocale];
    v53 = [v52 localeIdentifier];

    v122 = v53;
    v123 = v51;
    v54 = [v51 objectForKeyedSubscript:v53];
    v55 = v54;
    if (v54)
    {
      [v54 floatValue];
      v19 = v56 + 0.0;
    }

    v57 = v40;
    v58 = objc_opt_self();

    v130 = v57;
    if (v58)
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      *buffer = 0u;
      v153 = 0u;
      v59 = CFStringGetLength(v57);
      theString = v57;
      v163 = 0;
      v164 = v59;
      v60 = CFStringGetCharactersPtr(v57);
      v61 = 0;
      v161 = v60;
      if (!v60)
      {
        v61 = CFStringGetCStringPtr(v57, 0x600u);
      }

      v165 = 0;
      v166 = 0;
      v162 = v61;
      if (v59 >= 1)
      {
        v62 = 0;
        v63 = 0;
        v64 = 64;
        do
        {
          if (v63 >= 4)
          {
            v65 = 4;
          }

          else
          {
            v65 = v63;
          }

          v66 = v164;
          if (v164 <= v63)
          {
            v68 = 0;
          }

          else
          {
            if (v161)
            {
              v67 = &v161[v163];
            }

            else
            {
              if (v162)
              {
                v68 = v162[v163 + v63];
                goto LABEL_61;
              }

              v73 = v165;
              if (v166 <= v63 || v165 > v63)
              {
                v75 = v65 + v62;
                v76 = v64 - v65;
                v77 = v63 - v65;
                v78 = v77 + 64;
                if (v77 + 64 >= v164)
                {
                  v78 = v164;
                }

                v165 = v77;
                v166 = v78;
                if (v164 >= v76)
                {
                  v66 = v76;
                }

                v169.location = v77 + v163;
                v169.length = v66 + v75;
                CFStringGetCharacters(theString, v169, buffer);
                v73 = v165;
              }

              v67 = &buffer[-v73];
            }

            v68 = v67[v63];
          }

LABEL_61:
          LOWORD(v148) = v68;
          v69 = objc_autoreleasePoolPush();
          v70 = [MEMORY[0x277CCACA8] stringWithCharacters:&v148 length:1];
          v71 = [v133 objectForKeyedSubscript:v70];

          if (v71)
          {
            [v71 floatValue];
            v19 = v19 + v72;
          }

          objc_autoreleasePoolPop(v69);
          ++v63;
          --v62;
          ++v64;
        }

        while (v59 != v63);
      }

      v57 = v130;
    }

    v79 = [SGNames cleanName:v57];
    v80 = [v79 lowercaseString];

    v121 = v80;
    v120 = [SGNames stripAndReturnHonorifics:v80];
    v81 = [v120 objectAtIndexedSubscript:1];
    v82 = [SGNames handleLastNameFirstOrder:v81];
    v83 = tokenizeNameAfterWhitespaceNormalization(v82);

    if ([v83 count])
    {
      v84 = 0;
      do
      {
        v85 = objc_autoreleasePoolPush();
        v86 = [v83 objectAtIndexedSubscript:v84];
        v87 = [v143 objectForKeyedSubscript:v86];

        if (v87)
        {
          [v87 floatValue];
          v19 = v19 + v88;
        }

        if ([v86 length] >= 3)
        {
          v89 = [v86 substringFromIndex:{objc_msgSend(v86, "length") - 2}];
          v90 = [v131 objectForKeyedSubscript:v89];

          if (v90)
          {
            [v90 floatValue];
            v19 = v19 + v91;
            v87 = v90;
          }

          else
          {
            v87 = 0;
          }
        }

        v92 = v84 + 1;
        if ([v83 count] <= v84 + 1)
        {
          v55 = v87;
        }

        else
        {
          v93 = [v83 subarrayWithRange:{v84, 2}];
          v94 = [v93 _pas_componentsJoinedByString:@" "];

          v55 = [v132 objectForKeyedSubscript:v94];

          if (v55)
          {
            [v55 floatValue];
            v19 = v19 + v95;
          }
        }

        objc_autoreleasePoolPop(v85);
        v84 = v92;
      }

      while ([v83 count] > v92);
    }

    objc_autoreleasePoolPop(context);
    if (forcePreferChinese)
    {
      v96 = 0;
      v97 = 0;
LABEL_116:
      v110 = v25;
      v111 = [(__CFString *)v130 length];
      v112 = SHIDWORD(v147) > 0;
      if (SHIDWORD(v146) > 0)
      {
        ++v112;
      }

      if (v147 > 0)
      {
        ++v112;
      }

      if ((v112 | (v25 > 0)) != 0 && v125)
      {
        v6 = 5;
        v5 = 0;
        a1 = v129;
        v9 = v127;
        v8 = v128;
        v10 = v134;
      }

      else
      {
        v116 = v111 - v145;
        if (v116 != HIDWORD(v146) + v146 + HIDWORD(v147))
        {
          v5 = 0;
          a1 = v129;
          v9 = v127;
          v8 = v128;
          v10 = v134;
          v12 = v126;
          if (v116 == HIDWORD(v146) + v146 + v147)
          {
            v6 = 0;
          }

          else if ((v110 + v146) / v116 <= 0.8)
          {
            if (v39 / v116 <= 0.5)
            {
              if (v19 <= v45)
              {
                v6 = 8;
              }

              else
              {
                v6 = 7;
              }
            }

            else
            {
              v6 = 4;
            }
          }

          else
          {
            v6 = 6;
          }

          goto LABEL_123;
        }

        v5 = 0;
        a1 = v129;
        v9 = v127;
        v10 = v134;
        if (!((SHIDWORD(v147) > 0) | v96 & v97 & 1))
        {
          v119 = v96 | v97;
          v6 = 1;
          v8 = v128;
          v12 = v126;
          if (v119)
          {
            if (v146 + v145 < 1)
            {
              v6 = 1;
            }

            else
            {
              v6 = 2;
            }
          }

          goto LABEL_123;
        }

        v6 = 2;
        v8 = v128;
      }

      v12 = v126;
LABEL_123:

      goto LABEL_124;
    }

    if (forcePreferJapanese)
    {
      v96 = 1;
      v97 = 1;
      goto LABEL_116;
    }

    v144 = v3;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v98 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v99 = [v98 countByEnumeratingWithState:&v148 objects:buffer count:16];
    if (v99)
    {
      v100 = v99;
      v101 = 0;
      v97 = 0;
      v102 = *v149;
      do
      {
        for (i = 0; i != v100; ++i)
        {
          if (*v149 != v102)
          {
            objc_enumerationMutation(v98);
          }

          v104 = *(*(&v148 + 1) + 8 * i);
          if ([v104 hasPrefix:@"zh"])
          {
            v101 = 1;
          }

          else
          {
            v97 |= [v104 hasPrefix:@"ja"];
          }
        }

        v100 = [v98 countByEnumeratingWithState:&v148 objects:buffer count:16];
      }

      while (v100);
    }

    else
    {
      v101 = 0;
      v97 = 0;
    }

    v105 = MEMORY[0x277CBEAF8];
    v106 = [MEMORY[0x277CBEAF8] currentLocale];
    v107 = [v106 localeIdentifier];
    v108 = [v105 componentsFromLocaleIdentifier:v107];

    v109 = [v108 objectForKeyedSubscript:*MEMORY[0x277CBE690]];
    if ([v109 isEqualToString:@"CN"])
    {
      v3 = v144;
    }

    else
    {
      v3 = v144;
      if (([v109 isEqualToString:@"HK"] & 1) == 0 && (objc_msgSend(v109, "isEqualToString:", @"MO") & 1) == 0 && (objc_msgSend(v109, "isEqualToString:", @"TW") & 1) == 0)
      {
        v97 |= [v109 isEqualToString:@"JP"];
        if ((v101 & 1) == 0)
        {
          v96 = 1;
          goto LABEL_115;
        }
      }
    }

    v96 = v97;
    v97 = 0;
LABEL_115:

    goto LABEL_116;
  }

  v6 = 8;
LABEL_124:
  objc_autoreleasePoolPop(v9);

  v113 = *(a1 + 32);
  if (v113 && [v113 length] <= 0x3FF)
  {
    v114 = objc_autoreleasePoolPush();
    if ([*(a1 + 32) _pas_retainsConmingledBackingStore])
    {
      v115 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:*(a1 + 32)];
    }

    else
    {
      v115 = *(a1 + 32);
    }

    v117 = v115;
    if ([v3 count] >= 0x19)
    {
      [v3 removeAllObjects];
    }

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    [v3 setObject:v118 forKeyedSubscript:v117];

    objc_autoreleasePoolPop(v114);
  }

LABEL_3:
  *(*(*(a1 + 40) + 8) + 24) = v6;

  v7 = *MEMORY[0x277D85DE8];
}

id chineseCharSet()
{
  if (chineseCharSet_onceToken != -1)
  {
    dispatch_once(&chineseCharSet_onceToken, &__block_literal_global_223);
  }

  v1 = chineseCharSet_result;

  return v1;
}

id hangulCharSet()
{
  if (hangulCharSet_onceToken != -1)
  {
    dispatch_once(&hangulCharSet_onceToken, &__block_literal_global_227);
  }

  v1 = hangulCharSet_result;

  return v1;
}

id japaneseCharSet()
{
  if (japaneseCharSet_onceToken != -1)
  {
    dispatch_once(&japaneseCharSet_onceToken, &__block_literal_global_225);
  }

  v1 = japaneseCharSet_result;

  return v1;
}

uint64_t __thaiCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = charSetWithEndpoints(2, a2, a3, a4, a5, a6, a7, a8, 3584);
  v9 = thaiCharSet_result;
  thaiCharSet_result = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

id charSetWithEndpoints(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSCharacterSet *charSetWithEndpoints(int, ...)"}];
    [v17 handleFailureInFunction:v18 file:@"SGNames.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"n_args && (n_args % 2) == 0"}];
  }

  v21 = &a9;
  v10 = objc_opt_new();
  v11 = 1;
  do
  {
    v12 = v21;
    v13 = *v21;
    v21 += 4;
    LODWORD(v12) = v12[2];
    v14 = v12 - v13;
    if (v12 <= v13)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSCharacterSet *charSetWithEndpoints(int, ...)"}];
      [v20 handleFailureInFunction:v19 file:@"SGNames.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"start < end"}];
    }

    [v10 addCharactersInRange:{v13, v14 + 1}];
    v11 += 2;
  }

  while (v11 <= a1);
  v15 = [v10 copy];

  return v15;
}

uint64_t __cyrillicCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = charSetWithEndpoints(10, a2, a3, a4, a5, a6, a7, a8, 1024);
  v9 = cyrillicCharSet_result;
  cyrillicCharSet_result = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __latinCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = charSetWithEndpoints(6, a2, a3, a4, a5, a6, a7, a8, 65);
  v9 = latinCharSet_result;
  latinCharSet_result = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __japaneseCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = charSetWithEndpoints(14, a2, a3, a4, a5, a6, a7, a8, 12352);
  v9 = japaneseCharSet_result;
  japaneseCharSet_result = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __hangulCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = charSetWithEndpoints(14, a2, a3, a4, a5, a6, a7, a8, 44032);
  v9 = hangulCharSet_result;
  hangulCharSet_result = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

uint64_t __chineseCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = charSetWithEndpoints(2, a2, a3, a4, a5, a6, a7, a8, 19968);
  v9 = chineseCharSet_result;
  chineseCharSet_result = v8;

  return MEMORY[0x2821F96F8](v8, v9);
}

void __SGGuessNamingTradition_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:25];
  v3 = [v1 initWithGuardedData:v2];
  v4 = SGGuessNamingTradition__pasExprOnceResult;
  SGGuessNamingTradition__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

BOOL SGNamesIsMostlyAlpha(void *a1)
{
  v1 = a1;
  if (v1)
  {
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
    v3 = v1;
    v4 = objc_opt_self();

    if (v4)
    {
      memset(v25, 0, sizeof(v25));
      Length = CFStringGetLength(v3);
      theString = v3;
      v29 = 0;
      v30 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v3);
      CStringPtr = 0;
      v27 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
      }

      v31 = 0;
      v32 = 0;
      v28 = CStringPtr;
      if (Length >= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0.0;
        v11 = 64;
        v12 = 0.0;
        while (1)
        {
          if (v9 >= 4)
          {
            v13 = 4;
          }

          else
          {
            v13 = v9;
          }

          v14 = v30;
          if (v30 <= v9)
          {
            v16 = 0;
          }

          else
          {
            if (v27)
            {
              v15 = &v27[v29];
            }

            else
            {
              if (v28)
              {
                v16 = v28[v29 + v9];
                goto LABEL_15;
              }

              v17 = v31;
              if (v32 <= v9 || v31 > v9)
              {
                v19 = v13 + v8;
                v20 = v11 - v13;
                v21 = v9 - v13;
                v22 = v21 + 64;
                if (v21 + 64 >= v30)
                {
                  v22 = v30;
                }

                v31 = v21;
                v32 = v22;
                if (v30 >= v20)
                {
                  v14 = v20;
                }

                v33.location = v21 + v29;
                v33.length = v14 + v19;
                CFStringGetCharacters(theString, v33, v25);
                v17 = v31;
              }

              v15 = v25 - v17;
            }

            v16 = v15[v9];
          }

LABEL_15:
          if (CFCharacterSetIsCharacterMember(Predefined, v16))
          {
            v10 = v10 + 1.0;
          }

          else
          {
            v12 = v12 + 1.0;
          }

          ++v9;
          --v8;
          ++v11;
          if (Length == v9)
          {
            goto LABEL_33;
          }
        }
      }
    }

    v12 = 0.0;
    v10 = 0.0;
LABEL_33:

    v23 = v10 / (v12 + v10) > 0.81;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t __Block_byref_object_copy__17738(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F98BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SGEntityTagsFromStorage(void *a1)
{
  v1 = a1;
  v3 = objc_opt_new();
  SGDelimitedStringsDeserializeWithBlock();

  return v3;
}

uint64_t __SGEntityTagsFromStorage_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D01FA0] resolveName:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

__CFString *SGEntityTagsForStorage(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  Mutable = CFStringCreateMutable(0, 0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 stored])
        {
          v9 = [v8 name];
          v13 = 0;
          v10 = SGDelimitedStringsSerialize();

          CFStringAppend(Mutable, v10);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return Mutable;
}

__CFString *globEscape(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = v1;
  v4 = objc_opt_self();

  if (!v4)
  {
    goto LABEL_36;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *buffer = 0u;
  v35 = 0u;
  Length = CFStringGetLength(v3);
  theString = v3;
  v45 = 0;
  v46 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  CStringPtr = 0;
  v43 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  }

  v47 = 0;
  v48 = 0;
  v44 = CStringPtr;
  if (Length <= 0)
  {
LABEL_36:

LABEL_37:
    v9 = v3;
    goto LABEL_38;
  }

  v31 = v2;
  v32 = Length;
  v8 = 0;
  v9 = 0;
  v33 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 64;
  do
  {
    if (v10 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v10;
    }

    v14 = v46;
    if (v46 <= v10)
    {
      v17 = objc_autoreleasePoolPush();
LABEL_14:
      ++v11;
      goto LABEL_24;
    }

    if (v43)
    {
      v15 = &v43[v45];
LABEL_12:
      v16 = v15[v10];
      goto LABEL_17;
    }

    if (!v44)
    {
      v22 = v47;
      if (v48 <= v10 || v47 > v10)
      {
        v24 = v13 + v8;
        v25 = v12 - v13;
        v26 = v10 - v13;
        v27 = v26 + 64;
        if (v26 + 64 >= v46)
        {
          v27 = v46;
        }

        v47 = v26;
        v48 = v27;
        if (v46 >= v25)
        {
          v14 = v25;
        }

        v50.location = v26 + v45;
        v50.length = v14 + v24;
        CFStringGetCharacters(theString, v50, buffer);
        v22 = v47;
      }

      v15 = &buffer[-v22];
      goto LABEL_12;
    }

    v16 = v44[v45 + v10];
LABEL_17:
    v17 = objc_autoreleasePoolPush();
    if (v16 - 42 > 0x31 || ((1 << (v16 - 42)) & 0x2000000200001) == 0)
    {
      goto LABEL_14;
    }

    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{-[__CFString length](v3, "length")}];
    }

    [(__CFString *)v3 substringWithRange:v33, v11];
    v20 = v19 = v3;
    [(__CFString *)v9 appendFormat:@"%@[%c]", v20, v16];

    v3 = v19;
    v21 = v11 + v33;
    v11 = 0;
    v33 = v21 + 1;
    Length = v32;
LABEL_24:
    objc_autoreleasePoolPop(v17);
    ++v10;
    --v8;
    ++v12;
  }

  while (Length != v10);

  v2 = v31;
  if (!v9)
  {
    goto LABEL_37;
  }

  if (v11)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = [(__CFString *)v3 substringWithRange:v33, v11];
    [(__CFString *)v9 appendString:v30];

    objc_autoreleasePoolPop(v29);
  }

LABEL_38:
  objc_autoreleasePoolPop(v2);

  return v9;
}

id _bold(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [[v1 alloc] initWithFormat:@"\x1B[1m%@\x1B[0m", v2];

  return v3;
}

uint64_t SGMIMetricsSubmodelsProbabilitiesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v56) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v56 & 0x7F) << v5;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
          *(a1 + 60) |= 0x100u;
          v56 = 0;
          v13 = [a2 position] + 4;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__personFromSenderProbability;
          goto LABEL_85;
        case 2u:
          *(a1 + 60) |= 0x80u;
          v56 = 0;
          v29 = [a2 position] + 4;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__personFromSenderInDyadicConversationProbability;
          goto LABEL_85;
        case 3u:
          *(a1 + 60) |= 0x800u;
          v56 = 0;
          v23 = [a2 position] + 4;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__subjectContentProbability;
          goto LABEL_85;
        case 4u:
          *(a1 + 60) |= 0x200u;
          v56 = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__personToRecipientsProbability;
          goto LABEL_85;
        case 5u:
          *(a1 + 60) |= 0x40u;
          v56 = 0;
          v17 = [a2 position] + 4;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__personCCRecipientsProbability;
          goto LABEL_85;
        case 6u:
          *(a1 + 60) |= 4u;
          v56 = 0;
          v31 = [a2 position] + 4;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__domainFromSenderProbability;
          goto LABEL_85;
        case 7u:
          *(a1 + 60) |= 2u;
          v56 = 0;
          v33 = [a2 position] + 4;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__conversationProbability;
          goto LABEL_85;
        case 8u:
          *(a1 + 60) |= 8u;
          v56 = 0;
          v27 = [a2 position] + 4;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__listIdProbability;
          goto LABEL_85;
        case 9u:
          *(a1 + 60) |= 1u;
          v56 = 0;
          v37 = [a2 position] + 4;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__attachmentsProbability;
          goto LABEL_85;
        case 0xAu:
          *(a1 + 60) |= 0x1000u;
          v56 = 0;
          v21 = [a2 position] + 4;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__subjectCountStatsProbability;
          goto LABEL_85;
        case 0xBu:
          *(a1 + 60) |= 0x400u;
          v56 = 0;
          v35 = [a2 position] + 4;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 4, v36 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__standardMailRulesProbability;
          goto LABEL_85;
        case 0xCu:
          *(a1 + 60) |= 0x10u;
          v56 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__mailboxProbability;
          goto LABEL_85;
        case 0xDu:
          *(a1 + 60) |= 0x20u;
          v56 = 0;
          v19 = [a2 position] + 4;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v56;
          v41 = &OBJC_IVAR___SGMIMetricsSubmodelsProbabilities__mailboxTypeProbability;
LABEL_85:
          *(a1 + *v41) = v40;
          goto LABEL_86;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_86:
          v54 = [a2 position];
          if (v54 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_231F9E2E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      v27 = [v25 debugDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_fault_impl(&dword_231E60000, v26, OS_LOG_TYPE_FAULT, "Failed to report dbStats to AggD: %@", &buf, 0xCu);
    }

    if (!_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      xpc_transaction_exit_clean();

      objc_end_catch();
      JUMPOUT(0x231F9E2ACLL);
    }

    abort();
  }

  _Unwind_Resume(a1);
}

void sub_231F9F9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18529(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231FA00F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWKWebViewConfigurationClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebViewConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGDOMParser.m" lineNumber:23 description:{@"Unable to find class %s", "WKWebViewConfiguration"}];

    __break(1u);
  }
}

id getWKWebsiteDataStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWKWebsiteDataStoreClass_softClass;
  v7 = getWKWebsiteDataStoreClass_softClass;
  if (!getWKWebsiteDataStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getWKWebsiteDataStoreClass_block_invoke;
    v3[3] = &unk_278955BF0;
    v3[4] = &v4;
    __getWKWebsiteDataStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231FA02A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWKWebpagePreferencesClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebpagePreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebpagePreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebpagePreferencesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGDOMParser.m" lineNumber:25 description:{@"Unable to find class %s", "WKWebpagePreferences"}];

    __break(1u);
  }
}

void __getWKWebViewClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGDOMParser.m" lineNumber:22 description:{@"Unable to find class %s", "WKWebView"}];

    __break(1u);
  }
}

void WebKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __WebKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27894E6C8;
    v6 = 0;
    WebKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"SGDOMParser.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __WebKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getWKWebsiteDataStoreClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebsiteDataStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebsiteDataStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebsiteDataStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SGDOMParser.m" lineNumber:24 description:{@"Unable to find class %s", "WKWebsiteDataStore"}];

    __break(1u);
  }
}

void sub_231FA0B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    _Block_object_dispose(&a31, 8);
    objc_begin_catch(exception_object);
    v33 = *(v31 + 24);
    *(v31 + 24) = 0;

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t SGMIMetricsTrialMetadataReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        *(a1 + 8) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231FA5BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19227(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__262(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2383809F0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_231FA9BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231FAA17C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_231FAB2B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_231FAC3BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_231FAD190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231FAD65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231FADF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231FAE7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FAFF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231FB0174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SGMIMetricsMailAttachmentHistogramReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v33;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__category;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__category;
            goto LABEL_98;
          case 2:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x40u;
            while (1)
            {
              v62 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v62 & 0x7F) << v48;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__countUpTo8KB;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__countUpTo8KB;
LABEL_98:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_101:
            *(a1 + *v22) = v21;
            goto LABEL_102;
          case 3:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v61 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v61 & 0x7F) << v23;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count8KBTo32KB;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count8KBTo32KB;
            goto LABEL_98;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v43 = 0;
          v44 = 0;
          v16 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v58 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v58 & 0x7F) << v43;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v20 = v44++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count512KBTo2MB;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count512KBTo2MB;
          goto LABEL_98;
        }

        if (v13 == 7)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 36) |= 0x20u;
          while (1)
          {
            v57 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v57 & 0x7F) << v28;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__countOver2MB;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__countOver2MB;
          goto LABEL_98;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v60 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v60 & 0x7F) << v38;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count32KBTo128KB;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count32KBTo128KB;
          goto LABEL_98;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v59 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59 & 0x7F) << v14;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count128KBTo512KB;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsMailAttachmentHistogram__count128KBTo512KB;
          goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_102:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t re2::ToStringWalker::PostVisit(re2::ToStringWalker *this, re2::Regexp *a2, int a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(*a2)
  {
    case 1:
      v11 = *(this + 3);
      goto LABEL_56;
    case 2:
      if (a3 > 3)
      {
        return 0;
      }

      v11 = *(this + 3);
      v12 = "(?:)";
      goto LABEL_70;
    case 3:
      re2::AppendLiteral(*(this + 3), *(a2 + 6), *(a2 + 1) & 1, a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 4:
      if (*(a2 + 6) >= 1)
      {
        v13 = 0;
        do
        {
          re2::AppendLiteral(*(this + 3), *(*(a2 + 4) + 4 * v13++), *(a2 + 1) & 1, a4, a5, a6, a7, a8);
        }

        while (v13 < *(a2 + 6));
      }

      goto LABEL_9;
    case 5:
LABEL_9:
      if (a3 > 1)
      {
        goto LABEL_71;
      }

      goto LABEL_41;
    case 6:
      v20 = *(this + 3);
      v21 = *(v20 + 23);
      if (v21 < 0)
      {
        v22 = *(v20 + 8) - 1;
        if (*(*v20 + v22) == 124)
        {
LABEL_29:
          std::string::erase(v20, v22, 0xFFFFFFFFFFFFFFFFLL);
          if (a3 > 2)
          {
            goto LABEL_71;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v22 = v21 - 1;
        if (*(v20 + v21 - 1) == 124)
        {
          goto LABEL_29;
        }
      }

      __p[0].__r_.__value_.__s.__data_[0] = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p[0].__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[0].__r_.__value_.__l.__size_, "Bad final char: ", 16);
      MEMORY[0x23837FD00](&__p[0].__r_.__value_.__r.__words[1], *(this + 3));
      LogMessage::~LogMessage(__p);
      if (a3 <= 2)
      {
LABEL_41:
        v23 = *(this + 3);
        v24 = ")";
        goto LABEL_73;
      }

LABEL_71:
      if (a3 == 3)
      {
        v23 = *(this + 3);
        v24 = "|";
LABEL_73:
        std::string::append(v23, v24);
      }

      return 0;
    case 7:
      v18 = *(this + 3);
      v19 = "*";
      goto LABEL_37;
    case 8:
      v18 = *(this + 3);
      v19 = "+";
      goto LABEL_37;
    case 9:
      v18 = *(this + 3);
      v19 = "?";
LABEL_37:
      std::string::append(v18, v19);
      goto LABEL_38;
    case 0xA:
      v14 = *(a2 + 6);
      if (v14 == -1)
      {
        v15 = *(this + 3);
        re2::StringPrintf("{%d,}", __p, *(a2 + 7));
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p[0].__r_.__value_.__l.__size_;
        }
      }

      else
      {
        v15 = *(this + 3);
        if (*(a2 + 7) == v14)
        {
          re2::StringPrintf("{%d}", __p, *(a2 + 6));
          if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0].__r_.__value_.__r.__words[0];
          }

          if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p[0].__r_.__value_.__l.__size_;
          }
        }

        else
        {
          re2::StringPrintf("{%d,%d}", __p, *(a2 + 7), v14);
          if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0].__r_.__value_.__r.__words[0];
          }

          if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p[0].__r_.__value_.__l.__size_;
          }
        }
      }

      std::string::append(v15, v16, size);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

LABEL_38:
      if ((*(a2 + 1) & 0x40) != 0)
      {
        std::string::append(*(this + 3), "?");
      }

      if (a3 <= 0)
      {
        goto LABEL_41;
      }

      goto LABEL_71;
    case 0xB:
      v11 = *(this + 3);
      v12 = ")";
      goto LABEL_70;
    case 0xC:
      v11 = *(this + 3);
      v12 = ".";
      goto LABEL_70;
    case 0xD:
      v11 = *(this + 3);
      v12 = "\\C";
      goto LABEL_70;
    case 0xE:
      v11 = *(this + 3);
      v12 = "^";
      goto LABEL_70;
    case 0xF:
      v11 = *(this + 3);
      v12 = "$";
      goto LABEL_70;
    case 0x10:
      v11 = *(this + 3);
      v12 = "\\b";
      goto LABEL_70;
    case 0x11:
      v11 = *(this + 3);
      v12 = "\\B";
      goto LABEL_70;
    case 0x12:
      v11 = *(this + 3);
      v12 = "(?-m:^)";
      goto LABEL_70;
    case 0x13:
      v11 = *(this + 3);
      if (*(a2 + 1) < 0)
      {
        v12 = "(?-m:$)";
      }

      else
      {
        v12 = "\\z";
      }

      goto LABEL_70;
    case 0x14:
      v11 = *(this + 3);
      if (!*(*(a2 + 3) + 4))
      {
LABEL_56:
        v12 = "[^\\x00-\\x{10ffff}]";
        goto LABEL_70;
      }

      std::string::append(v11, "[");
      v31 = *(a2 + 3);
      v32 = *(v31 + 16);
      if (v32 < 1)
      {
        if (!v32)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v33 = *(v31 + 8);
        do
        {
          v35 = (v33 + 8 * (v32 >> 1));
          if (v35[1] <= 65533)
          {
            v34 = (v32 >> 1) + 1;
            v33 += 8 * v34;
            v32 -= v34;
          }

          else
          {
            v32 = v32 >> 1;
            if (*v35 < 0xFFFF)
            {
              re2::CharClass::Negate(*(a2 + 3));
            }
          }
        }

        while (v32 > 0);
      }

      v36 = *(v31 + 8);
      do
      {
        v38 = *v36;
        v37 = v36[1];
        if (*v36 <= v37)
        {
          v39 = *(this + 3);
          re2::AppendCCChar(v39, *v36, v25, v26, v27, v28, v29, v30);
          if (v38 < v37)
          {
            std::string::append(v39, "-");
            re2::AppendCCChar(v39, v37, v40, v41, v42, v43, v44, v45);
          }
        }

        v36 += 2;
      }

      while (v36 != (*(v31 + 8) + 8 * *(v31 + 16)));
LABEL_57:
      if (v31 != *(a2 + 3))
      {
        MEMORY[0x23837FDC0](v31, 0x1000C8077774924);
      }

      v11 = *(this + 3);
      v12 = "]";
LABEL_70:
      std::string::append(v11, v12);
      goto LABEL_71;
    case 0x15:
      std::string::append(*(this + 3), "(?HaveMatch:%d)", *(a2 + 6));
      goto LABEL_71;
    default:
      goto LABEL_71;
  }
}

void sub_231FB75DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *re2::AppendLiteral(std::string *this, int __c, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (__c && __c <= 127 && memchr("(){}[]*+?|.^$\", __c, 0xFuLL))
  {
    std::string::append(this, 1uLL, 92);
    v11 = __c;
    v12 = this;
LABEL_8:

    return std::string::append(v12, 1uLL, v11);
  }

  if ((__c - 97) <= 0x19 && v8)
  {
    std::string::append(this, 1uLL, 91);
    std::string::append(this, 1uLL, __c - 32);
    std::string::append(this, 1uLL, __c);
    v12 = this;
    v11 = 93;
    goto LABEL_8;
  }

  return re2::AppendCCChar(this, __c, a3, a4, a5, a6, a7, a8);
}

std::string *re2::AppendCCChar(std::string *this, int __c, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __c;
  if ((__c - 32) <= 0x5E)
  {
    if (memchr("[]^-\", __c, 6uLL))
    {
      std::string::append(this, "\");
    }

    return std::string::append(this, 1uLL, v8);
  }

  if (__c > 11)
  {
    if (__c == 12)
    {
      v11 = "\\f";
      goto LABEL_18;
    }

    if (__c == 13)
    {
      v11 = "\\r";
      goto LABEL_18;
    }

LABEL_14:
    if (__c > 255)
    {
      return re2::StringAppendF(this, "\\x{%x}", a3, a4, a5, a6, a7, a8, __c);
    }

    else
    {
      return re2::StringAppendF(this, "\\x%02x", a3, a4, a5, a6, a7, a8, __c);
    }
  }

  if (__c == 9)
  {
    v11 = "\\t";
    goto LABEL_18;
  }

  if (__c != 10)
  {
    goto LABEL_14;
  }

  v11 = "\\n";
LABEL_18:

  return std::string::append(this, v11);
}

uint64_t re2::ToStringWalker::PreVisit(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = 0;
  v4 = *a2;
  if (v4 <= 6)
  {
    if (v4 - 4 >= 2)
    {
      if (v4 != 6)
      {
        return v3;
      }

      if (a3 > 2)
      {
        return 3;
      }

      v5 = (a1 + 24);
      v3 = 3;
    }

    else
    {
      if (a3 > 1)
      {
        return 2;
      }

      v5 = (a1 + 24);
      v3 = 2;
    }

    goto LABEL_21;
  }

  if (v4 - 7 >= 4)
  {
    if (v4 != 11)
    {
      return v3;
    }

    v6 = (a1 + 24);
    std::string::append(*(a1 + 24), "(");
    if (!*(a2 + 4))
    {
      return 5;
    }

    std::string::append(*v6, "?P<");
    v8 = *(a2 + 4);
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(a2 + 4);
    }

    else
    {
      v10 = *v8;
    }

    if (v9 >= 0)
    {
      v11 = *(v8 + 23);
    }

    else
    {
      v11 = *(v8 + 8);
    }

    std::string::append(*v6, v10, v11);
    v5 = v6;
    v3 = 5;
    v12 = ">";
LABEL_22:
    std::string::append(*v5, v12);
    return v3;
  }

  if (a3 <= 0)
  {
    v3 = 0;
    v5 = (a1 + 24);
LABEL_21:
    v12 = "(?:";
    goto LABEL_22;
  }

  return 0;
}

void re2::ToStringWalker::~ToStringWalker(re2::ToStringWalker *this)
{
  *this = &unk_284700F40;
  re2::Regexp::Walker<int>::Reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::deque<re2::WalkState<int>>::~deque[abi:ne200100](v2);
    MEMORY[0x23837FDE0](v3, 0x1080C40BE8D5F09);
  }

  JUMPOUT(0x23837FDE0);
}

{
  *this = &unk_284700F40;
  re2::Regexp::Walker<int>::Reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::deque<re2::WalkState<int>>::~deque[abi:ne200100](v2);
    MEMORY[0x23837FDE0](v3, 0x1080C40BE8D5F09);
  }
}

{
  *this = &unk_284700F40;
  re2::Regexp::Walker<int>::Reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::deque<re2::WalkState<int>>::~deque[abi:ne200100](v2);
    MEMORY[0x23837FDE0](v3, 0x1080C40BE8D5F09);
  }
}

void re2::Regexp::ToString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2 = &unk_284700F40;
  operator new();
}

void sub_231FB7BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re2::ToStringWalker::~ToStringWalker(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void sub_231FB94C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FBAE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, __int128 a17)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<_vertex_t const*,std::vector<_vertex_t const*>>,void *>>>::operator()[abi:ne200100](1, v17);
  if (*(&a17 + 1))
  {
    operator delete(*(&a17 + 1));
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void anonymous namespace::DisjointSets<_vertex_t const*>::union_(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>(a1 + 5, a2);
  v6 = std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>(a1 + 5, a3);
  if (!v5)
  {
    __assert_rtn("union_", "componentAnalysis.mm", 52, "rep1Iter != elementToRepresentative.end()");
  }

  if (!v6)
  {
    __assert_rtn("union_", "componentAnalysis.mm", 53, "rep2Iter != elementToRepresentative.end()");
  }

  v7 = v5[3];
  v8 = v6[3];
  if (v7 != v8)
  {
    v9 = std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>(a1, v5[3]);
    v10 = std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>(a1, v8);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      __assert_rtn("union_", "componentAnalysis.mm", 63, "set1Iter != representativeToSet.end() && set2Iter != representativeToSet.end()");
    }

    v14 = v10[3];
    v13 = v10[4];
    v12 = v10 + 3;
    v15 = v13 - v14;
    v17 = v9[3];
    v16 = v9[4];
    v18 = v9 + 3;
    v65 = v16 - v17;
    v66 = v15;
    v19 = v15 >= v16 - v17;
    if (v15 >= v16 - v17)
    {
      v20 = v14;
    }

    else
    {
      v20 = v17;
    }

    if (v19)
    {
      v21 = v12;
    }

    else
    {
      v21 = v18;
    }

    if (v19)
    {
      v22 = v17;
    }

    else
    {
      v22 = v14;
    }

    if (v19)
    {
      v23 = v18;
    }

    else
    {
      v23 = v12;
    }

    v24 = v23[1];
    v25 = v24 - v22;
    v26 = (v24 - v22) >> 3;
    if (v26 >= 1)
    {
      v28 = v21[1];
      v27 = v21[2];
      if (v27 - v28 >= v25)
      {
        if (v22 != v24)
        {
          memmove(v21[1], v22, v24 - v22);
        }

        v21[1] = &v28[v25];
      }

      else
      {
        v29 = v26 + ((v28 - v20) >> 3);
        if (v29 >> 61)
        {
          std::vector<re2::RE2 *>::__throw_length_error[abi:ne200100]();
        }

        v30 = (v28 - v20) >> 3;
        v31 = v27 - v20;
        if (v31 >> 2 > v29)
        {
          v29 = v31 >> 2;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v29;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_vertex_t const*>>(v32);
        }

        v33 = 8 * v30;
        v34 = (8 * v30 + v25);
        v35 = v33;
        do
        {
          v36 = *v22;
          v22 += 8;
          *v35++ = v36;
          v25 -= 8;
        }

        while (v25);
        memcpy(v34, v28, v21[1] - v28);
        v37 = *v21;
        v38 = &v34[v21[1] - v28];
        v21[1] = v28;
        v39 = v28 - v37;
        v40 = (v33 - (v28 - v37));
        memcpy(v40, v37, v39);
        v41 = *v21;
        *v21 = v40;
        v21[1] = v38;
        v21[2] = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }
    }

    v42 = *v23;
    v43 = v23[1];
    if (*v23 != v43)
    {
      if (v66 >= v65)
      {
        v44 = v8;
      }

      else
      {
        v44 = v7;
      }

      do
      {
        v45 = 0x9DDFEA08EB382D69 * ((8 * (*v42 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v42));
        v46 = 0x9DDFEA08EB382D69 * (HIDWORD(*v42) ^ (v45 >> 47) ^ v45);
        v47 = 0x9DDFEA08EB382D69 * (v46 ^ (v46 >> 47));
        v48 = a1[6];
        if (!*&v48)
        {
          goto LABEL_58;
        }

        v49 = vcnt_s8(v48);
        v49.i16[0] = vaddlv_u8(v49);
        if (v49.u32[0] > 1uLL)
        {
          v50 = 0x9DDFEA08EB382D69 * (v46 ^ (v46 >> 47));
          if (v47 >= *&v48)
          {
            v50 = v47 % *&v48;
          }
        }

        else
        {
          v50 = v47 & (*&v48 - 1);
        }

        v51 = *(a1[5] + 8 * v50);
        if (!v51 || (v52 = *v51) == 0)
        {
LABEL_58:
          operator new();
        }

        while (1)
        {
          v53 = v52[1];
          if (v53 == v47)
          {
            break;
          }

          if (v49.u32[0] > 1uLL)
          {
            if (v53 >= *&v48)
            {
              v53 %= *&v48;
            }
          }

          else
          {
            v53 &= *&v48 - 1;
          }

          if (v53 != v50)
          {
            goto LABEL_58;
          }

LABEL_57:
          v52 = *v52;
          if (!v52)
          {
            goto LABEL_58;
          }
        }

        if (v52[2] != *v42)
        {
          goto LABEL_57;
        }

        v52[3] = v44;
        ++v42;
      }

      while (v42 != v43);
    }

    if (v66 >= v65)
    {
      v54 = v7;
    }

    else
    {
      v54 = v8;
    }

    v55 = std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>(a1, v54);
    if (v55)
    {
      v56 = a1[1];
      v57 = v55[1];
      v58 = vcnt_s8(v56);
      v58.i16[0] = vaddlv_u8(v58);
      if (v58.u32[0] > 1uLL)
      {
        if (v57 >= *&v56)
        {
          v57 %= *&v56;
        }
      }

      else
      {
        v57 &= *&v56 - 1;
      }

      v59 = *(*a1 + 8 * v57);
      do
      {
        v60 = v59;
        v59 = *v59;
      }

      while (v59 != v55);
      if (v60 == a1 + 2)
      {
        goto LABEL_82;
      }

      v61 = v60[1];
      if (v58.u32[0] > 1uLL)
      {
        if (v61 >= *&v56)
        {
          v61 %= *&v56;
        }
      }

      else
      {
        v61 &= *&v56 - 1;
      }

      if (v61 != v57)
      {
LABEL_82:
        if (!*v55)
        {
          goto LABEL_83;
        }

        v62 = *(*v55 + 8);
        if (v58.u32[0] > 1uLL)
        {
          if (v62 >= *&v56)
          {
            v62 %= *&v56;
          }
        }

        else
        {
          v62 &= *&v56 - 1;
        }

        if (v62 != v57)
        {
LABEL_83:
          *(*a1 + 8 * v57) = 0;
        }
      }

      v63 = *v55;
      if (*v55)
      {
        v64 = *(v63 + 8);
        if (v58.u32[0] > 1uLL)
        {
          if (v64 >= *&v56)
          {
            v64 %= *&v56;
          }
        }

        else
        {
          v64 &= *&v56 - 1;
        }

        if (v64 != v57)
        {
          *(*a1 + 8 * v64) = v60;
          v63 = *v55;
        }
      }

      *v60 = v63;
      *v55 = 0;
      --a1[3];

      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<_vertex_t const*,std::vector<_vertex_t const*>>,void *>>>::operator()[abi:ne200100](1, v55);
    }
  }
}

void std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<_vertex_t const*,std::vector<_vertex_t const*>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_vertex_t const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL sameConnectedComponent(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>((a1 + 40), a2);
  v6 = std::__hash_table<std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::__unordered_map_hasher<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::hash<_vertex_t const*>,std::equal_to<_vertex_t const*>,true>,std::__unordered_map_equal<_vertex_t const*,std::__hash_value_type<_vertex_t const*,_vertex_t const*>,std::equal_to<_vertex_t const*>,std::hash<_vertex_t const*>,true>,std::allocator<std::__hash_value_type<_vertex_t const*,_vertex_t const*>>>::find<_vertex_t const*>((a1 + 40), a3);
  result = 0;
  if (v5)
  {
    if (v6)
    {
      return v5[3] == v6[3];
    }
  }

  return result;
}

uint64_t freeDisjointSet(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 56);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(v1 + 40);
    *(v1 + 40) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      do
      {
        v6 = *v5;
        v7 = v5[3];
        if (v7)
        {
          v5[4] = v7;
          operator delete(v7);
        }

        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v8 = *v1;
    *v1 = 0;
    if (v8)
    {
      operator delete(v8);
    }

    JUMPOUT(0x23837FDE0);
  }

  return result;
}

void visitConnectedComponents(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 24);
  if (v6)
  {
    if (!(v6 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_vertex_t const*>>(v6);
    }

    std::vector<re2::RE2 *>::__throw_length_error[abi:ne200100]();
  }

  if (*(a1 + 16))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_vertex_t const*>>(1uLL);
  }
}

uint64_t SGMIMetricsMissingElementPredictionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v27 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27 & 0x7F) << v15;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_34;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 12) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v25 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231FBF6B0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x388], 8);
  _Block_object_dispose((v1 - 176), 8);
  SGRecordMeasurementState(&STACK[0x3A8]);
  _Unwind_Resume(a1);
}

void sub_231FC47F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231FC4BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FC4F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FC5194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FC5E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void __serialQueue_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.suggestions.messageEventDissector" qosClass:17];
  v2 = serialQueue__pasExprOnceResult;
  serialQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_231FC6EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FCAC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231FCB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231FCB420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FCB64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SGDataDetectorsRunWithSharedScanner(void *a1)
{
  v1 = a1;
  if (SGDataDetectorsRunWithSharedScanner__pasOnceToken3 != -1)
  {
    dispatch_once(&SGDataDetectorsRunWithSharedScanner__pasOnceToken3, &__block_literal_global_22096);
  }

  v2 = SGDataDetectorsRunWithSharedScanner__pasExprOnceResult;
  v3 = [v2 result];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SGDataDetectorsRunWithSharedScanner_block_invoke_3;
  v5[3] = &unk_27894F150;
  v6 = v1;
  v4 = v1;
  [v3 runWithLockAcquired:v5];
}

void __SGDataDetectorsRunWithSharedScanner_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_14_22099 idleTimeout:10.0];
  v2 = SGDataDetectorsRunWithSharedScanner__pasExprOnceResult;
  SGDataDetectorsRunWithSharedScanner__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __SGDataDetectorsRunWithSharedScanner_block_invoke_2()
{
  ScannerOrFail = SGDataDetectorsCreateScannerOrFail();
  v1 = objc_alloc(MEMORY[0x277D42610]);
  v2 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SGDataDetectors-SharedScanner"];
  v3 = [v1 initWithGuardedData:ScannerOrFail serialQueue:v2];

  return v3;
}

void SGDataDetectorsScan(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  SGDataDetectorsScanRange(a1, v8, 0, [v8 length], a3, v7);
}

id SGDataDetectorsGetDate()
{
  v0 = DDResultCopyExtractedDateFromReferenceDate();
  v1 = 0;
  if (v0)
  {
  }

  return v1;
}

id SGDataDetectorsGetDateWithLocale()
{
  v0 = DDResultCopyExtractedDateFromReferenceDateWithLocale();
  v1 = 0;
  if (v0)
  {
  }

  return v1;
}

id SGDataDetectorsGetDateAndTimeZoneWithLocale(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if (utcTz__pasOnceToken5 != -1)
  {
    dispatch_once(&utcTz__pasOnceToken5, &__block_literal_global_68);
  }

  if (DDResultCopyExtractedDateFromReferenceDateWithLocale())
  {
    v7 = 0;
    *a4 = v7;
    if (v7)
    {
    }

    *a5 = 0;
  }

  return 0;
}

void __utcTz_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  utcTz__pasExprOnceResult = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);

  objc_autoreleasePoolPop(v0);
}

uint64_t SGDataDetectorsGetDateAndTimeZoneWithLocaleAndTimeZone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, _BYTE *a7)
{
  result = DDResultCopyExtractedDateFromReferenceDateWithLocale();
  if (result)
  {
    *a7 = 0;
    *a5 = 0;
    v11 = 0;
    *a6 = v11;
    if (v11)
    {
    }

    return 1;
  }

  return result;
}

uint64_t SGDataDetectorsGetIntervalDatesAndTimeZoneWithLocale(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, _BYTE *a8)
{
  result = DDResultCopyExtractedStartDateEndDateWithLocale();
  if (result)
  {
    *a3 = 0;
    *a5 = 0;
    v14 = 0;
    *a4 = v14;
    if (v14)
    {
    }

    v15 = 0;
    *a6 = v15;
    if (v15)
    {
    }

    *a8 = 0;
    return 1;
  }

  return result;
}

uint64_t SGDataDetectorsGetType()
{
  Category = DDResultGetCategory();
  if (Category <= 2)
  {
    if (Category == 1)
    {
      return 32;
    }

    if (Category == 2)
    {
      return 2048;
    }
  }

  else
  {
    switch(Category)
    {
      case 3:
        return 16;
      case 4:
        return 8;
      case 5:
        v1 = *MEMORY[0x277D040D0];
        v2 = DDResultHasType() == 0;
        v3 = 4096;
        goto LABEL_13;
    }
  }

  v5 = *MEMORY[0x277D041A8];
  v2 = DDResultHasType() == 0;
  v3 = 8;
LABEL_13:
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t SGDataDetectorsGetMatchType()
{
  Category = DDResultGetCategory();
  if (Category > 2)
  {
    switch(Category)
    {
      case 3:
        return 1;
      case 4:
        return 3;
      case 5:
        v1 = *MEMORY[0x277D040D0];
        if (DDResultHasType())
        {
          return 4;
        }

        v5 = *MEMORY[0x277D04158];
        if (DDResultHasType())
        {
          return 6;
        }

        goto LABEL_18;
    }

LABEL_14:
    v4 = *MEMORY[0x277D041A8];
    if ((DDResultHasType() & 1) == 0)
    {
LABEL_18:
      v6 = *MEMORY[0x277D041B0];
      if (DDResultHasType())
      {
        return 7;
      }

      v7 = *MEMORY[0x277D041A0];
      if (DDResultHasType())
      {
        return 8;
      }

      else
      {
        return 9;
      }
    }

    return 3;
  }

  if (Category != 1)
  {
    if (Category == 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v3 = *MEMORY[0x277D040C8];
  if (DDResultHasType())
  {
    return 2;
  }

  else
  {
    return 5;
  }
}