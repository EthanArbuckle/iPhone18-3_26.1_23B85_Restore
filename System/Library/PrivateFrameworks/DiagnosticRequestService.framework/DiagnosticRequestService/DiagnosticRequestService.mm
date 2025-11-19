uint64_t sub_232907CD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232907D08()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232907D64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_232973B48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[9] + 8) >> 60;
          v18 = ((4 * v17) & 0xC) == 0;
          v19 = ((4 * v17) & 0xC | (v17 >> 2)) ^ 0xF;
          if (v18)
          {
            return 0;
          }

          else
          {
            return v19;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_232907F30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_232973B48();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8);
        if (*(*(result - 8) + 84) != a3)
        {
          v18 = (a1 + a4[9]);
          *v18 = 0;
          v18[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2329080FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232973B48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2329081C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232973B48();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t DRSRequestOutcomeForState(uint64_t a1)
{
  if ((a1 - 4096) < 8)
  {
    return 3;
  }

  if ((a1 - 4352) <= 7)
  {
    if (((1 << a1) & 0xED) != 0)
    {
      return 1;
    }

    return 3;
  }

  if (a1 == 0x2000)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

BOOL DRSRequestStateIsClientFacingError(uint64_t a1)
{
  v2 = DRSRequestOutcomeForState(a1);
  v4 = a1 == 4352 || a1 == 4357;
  return v2 == 1 && v4;
}

__CFString *DRSDampeningOutcomeStringForOutcome(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Accepted";
  }

  else
  {
    return off_27899EE10[a1 - 1];
  }
}

__CFString *DRSRequestDSDecisionStringForDecision(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899EE50[a1];
  }
}

uint64_t DRSRequestStateForDampeningOutcome(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return a1 + 4095;
  }
}

uint64_t _deleteFileWithPath(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1 && (v15 = 0, [MEMORY[0x277CCAA00] defaultManager], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "fileExistsAtPath:isDirectory:", v1, &v15), v2, v3))
  {
    if (v15 == 1)
    {
      v4 = DPLogHandle_LogManagementError();
      if (os_signpost_enabled(v4))
      {
        *buf = 138543362;
        v17 = v1;
        _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RefusingToDeleteDirectory", "%{public}@ is a directory", buf, 0xCu);
      }

      v5 = DPLogHandle_LogManagementError();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        _deleteFileWithPath_cold_1(v1, v5);
      }

      v6 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = 0;
      v6 = [v7 removeItemAtPath:v1 error:&v14];
      v5 = v14;

      if (v6)
      {
        v8 = DPLogHandle_LogManagement();
        if (os_signpost_enabled(v8))
        {
          *buf = 138543362;
          v17 = v1;
          _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeletedFile", "Deleted %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v8 = DPLogHandle_RequestError();
        if (os_signpost_enabled(v8))
        {
          v9 = [v5 localizedDescription];
          v10 = v9;
          v11 = @"Unknown";
          if (v9)
          {
            v11 = v9;
          }

          *buf = 138543618;
          v17 = v1;
          v18 = 2114;
          v19 = v11;
          _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RemoveFileFailure", "Failed to remove file with path %{public}@ due to error: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

__CFString *DRRequestStateWithoutOutcomeStringForState(uint64_t a1)
{
  if (a1 > 4102)
  {
    if (a1 > 4355)
    {
      if (a1 > 4357)
      {
        switch(a1)
        {
          case 0x1106:
            v1 = @"Invalid state transition";
            goto LABEL_45;
          case 0x1107:
            v1 = @"Failed to update log file state (mark purgeable and/or delete)";
            goto LABEL_45;
          case 0x2000:
            v1 = @"Uploaded";
            goto LABEL_45;
        }

LABEL_44:
        v1 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithFormat:", @"Unknown state (%#llx"), a1;
        goto LABEL_45;
      }

      if (a1 == 4356)
      {
        v1 = @"Customer disabled analytics";
      }

      else
      {
        v1 = @"Log size exceeds cap";
      }
    }

    else
    {
      if (a1 <= 4352)
      {
        if (a1 == 4103)
        {
          v1 = @"Service is disabled";
          goto LABEL_45;
        }

        if (a1 == 4352)
        {
          v1 = @"On-receipt work failed";
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (a1 == 4353)
      {
        v1 = @"Rejected by decision server";
      }

      else if (a1 == 4354)
      {
        v1 = @"Log culled/missing";
      }

      else
      {
        v1 = @"Multiple upload failures";
      }
    }
  }

  else
  {
    if (a1 <= 4097)
    {
      if (a1 <= 1)
      {
        if (!a1)
        {
          v1 = @"Awaiting on-receipt work";
          goto LABEL_45;
        }

        if (a1 == 1)
        {
          v1 = @"Awaiting upload";
          goto LABEL_45;
        }
      }

      else
      {
        switch(a1)
        {
          case 2:
            v1 = @"Uploading";
            goto LABEL_45;
          case 4096:
            v1 = @"Rejected by resource hysteresis";
            goto LABEL_45;
          case 4097:
            v1 = @"Rejected by resource cap";
            goto LABEL_45;
        }
      }

      goto LABEL_44;
    }

    if (a1 <= 4099)
    {
      if (a1 == 4098)
      {
        v1 = @"Rejected by random resource downsampling";
      }

      else
      {
        v1 = @"Rejected by signature hysteresis";
      }
    }

    else if (a1 == 4100)
    {
      v1 = @"Rejected by signature cap";
    }

    else if (a1 == 4101)
    {
      v1 = @"Rejected by random signature downsampling";
    }

    else
    {
      v1 = @"Rejected by total cap";
    }
  }

LABEL_45:

  return v1;
}

id DRRequestStateWithOutcomeStringForState(uint64_t a1)
{
  v2 = DRSRequestOutcomeForState(a1);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = DRRequestStateWithoutOutcomeStringForState(a1);
  v5 = v4;
  if ((v2 - 1) > 2)
  {
    v6 = @"In-Flight";
  }

  else
  {
    v6 = off_27899EE68[(v2 - 1)];
  }

  v7 = [v3 initWithFormat:@"%@ (%@)", v4, v6];

  return v7;
}

id DRSDictionaryForData(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v1 = [MEMORY[0x277CCAC58] propertyListWithData:a1 options:0 format:0 error:&v10];
  v2 = v10;
  if (v2)
  {
    v3 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v3))
    {
      v4 = [v2 localizedDescription];
      *buf = 138543362;
      v12 = v4;
      v5 = "Could not deserialize dictionary due to error: %{public}@";
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedDictionary", v5, buf, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v1;
      goto LABEL_10;
    }

    v3 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v3))
    {
      v7 = objc_opt_class();
      v4 = NSStringFromClass(v7);
      *buf = 138543362;
      v12 = v4;
      v5 = "Dict object not of expected class: %{public}@";
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t DRSRequestExpectedLogStateForState(uint64_t a1, int a2, int a3)
{
  v6 = DRSRequestOutcomeForState(a1);
  if (!v6 && a2)
  {
    if (!a3 || a1 == 2 && a3 == 1)
    {
      return 0;
    }

    return a1 != 0;
  }

  if (!v6)
  {
    return a1 != 0;
  }

  if (v6 == 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_2329104B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232910CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_232911038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232911704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23291229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _minBufferDurationQueue()
{
  if (_minBufferDurationQueue_onceToken != -1)
  {
    _minBufferDurationQueue_cold_1();
  }

  v1 = _minBufferDurationQueue_queue;

  return v1;
}

void ___minBufferDurationQueue_block_invoke()
{
  v0 = dispatch_queue_create("DRSTailspin enforce min trace buffer duration queue", 0);
  v1 = _minBufferDurationQueue_queue;
  _minBufferDurationQueue_queue = v0;
}

uint64_t DRSProtoDecisionResultReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id DRSRapidErrorWithDescription(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a1;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"DRSCKRapidError" code:0 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id DRSRapidSandboxContainer()
{
  if (DRSRapidSandboxContainer_onceToken != -1)
  {
    DRSRapidSandboxContainer_cold_1();
  }

  v1 = DRSRapidSandboxContainer_container;

  return v1;
}

void __DRSRapidSandboxContainer_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.perfpowerservices.rapid" environment:2];
  v0 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v2];
  v1 = DRSRapidSandboxContainer_container;
  DRSRapidSandboxContainer_container = v0;
}

id DRSRapidProdContainer()
{
  if (DRSRapidProdContainer_onceToken != -1)
  {
    DRSRapidProdContainer_cold_1();
  }

  v1 = DRSRapidProdContainer_container;

  return v1;
}

void __DRSRapidProdContainer_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.perfpowerservices.rapid" environment:1];
  v0 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v2];
  v1 = DRSRapidProdContainer_container;
  DRSRapidProdContainer_container = v0;
}

void sub_232916630(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t DRSProtoClientDeviceMetadataReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_27899EF20[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoFileDescriptionReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadString();
        v15 = 16;
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_37;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_37:
          *(a1 + 8) = v22;
          goto LABEL_38;
        }

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
        v15 = 24;
      }

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoDiagnosticRequestStatsBatchReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 10)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(DRSProtoClientDeviceMetadata);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !DRSProtoClientDeviceMetadataReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(DRSProtoDiagnosticRequestStats);
    [a1 addRequestsResultsStats:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !DRSProtoDiagnosticRequestStatsReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoRapidPayloadReplyReadFrom(uint64_t a1, void *a2)
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
        v21 = PBReaderReadData();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_35;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_35:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_36;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id DRSSandboxContainer()
{
  if (DRSSandboxContainer_onceToken != -1)
  {
    DRSSandboxContainer_cold_1();
  }

  v1 = DRSSandboxContainer_container;

  return v1;
}

void __DRSSandboxContainer_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBC220]);
  v3 = [v0 initWithContainerIdentifier:kDRSCloudKitContainerName environment:2];
  v1 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v3];
  v2 = DRSSandboxContainer_container;
  DRSSandboxContainer_container = v1;
}

id DRSProductionContainer()
{
  if (DRSProductionContainer_onceToken != -1)
  {
    DRSProductionContainer_cold_1();
  }

  v1 = DRSProductionContainer_container;

  return v1;
}

void __DRSProductionContainer_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBC220]);
  v3 = [v0 initWithContainerIdentifier:kDRSCloudKitContainerName environment:1];
  v1 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v3];
  v2 = DRSProductionContainer_container;
  DRSProductionContainer_container = v1;
}

void DRSConfigureOperation(void *a1, void *a2, void *a3)
{
  v19 = a1;
  v5 = a3;
  v6 = a2;
  v7 = [v19 configuration];
  [v7 setPreferAnonymousRequests:1];

  v8 = [v19 configuration];
  [v8 setAutomaticallyRetryNetworkFailures:1];

  v9 = [v19 configuration];
  [v9 setDiscretionaryNetworkBehavior:0];

  v10 = [v19 configuration];
  [v10 setQualityOfService:9];

  v11 = [v19 configuration];
  [v11 setContainer:v6];

  v12 = [v19 configuration];
  [v12 setXPCActivity:v5];

  if (v5)
  {
    v13 = xpc_activity_copy_criteria(v5);
    v14 = v13;
    if (v13)
    {
      v15 = *MEMORY[0x277D86390];
      v16 = xpc_dictionary_get_value(v13, *MEMORY[0x277D86390]);

      if (v16)
      {
        v17 = xpc_dictionary_get_BOOL(v14, v15);
        v18 = [v19 configuration];
        [v18 setAllowsExpensiveNetworkAccess:!v17];
      }
    }
  }
}

id DRSDeviceMetadata()
{
  if (DRSDeviceMetadata_onceToken != -1)
  {
    DRSDeviceMetadata_cold_1();
  }

  v1 = DRSDeviceMetadata_deviceMetadata;

  return v1;
}

void __DRSDeviceMetadata_block_invoke()
{
  v0 = objc_alloc_init(DRSProtoClientDeviceMetadata);
  v1 = DRSDeviceMetadata_deviceMetadata;
  DRSDeviceMetadata_deviceMetadata = v0;

  v6 = +[DRSSystemProfile sharedInstance];
  v2 = [v6 buildVariant];
  [DRSDeviceMetadata_deviceMetadata setBuildVariant:v2];

  v3 = [v6 deviceCategory];
  [DRSDeviceMetadata_deviceMetadata setDeviceCategory:v3];

  v4 = [v6 deviceModel];
  [DRSDeviceMetadata_deviceMetadata setDeviceModel:v4];

  v5 = [v6 platformString];
  [DRSDeviceMetadata_deviceMetadata setPlatform:v5];
}

uint64_t DRValidateCKRecordDictionary(void *a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (![v3 count])
  {
    if (a2)
    {
      v19 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v55[0] = @"'recordDictionary' is nil or empty";
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      [v19 errorWithDomain:@"MalformedCKRecordDictionaryError" code:0 userInfo:v4];
      *a2 = v18 = 0;
      goto LABEL_30;
    }

    v18 = 0;
    goto LABEL_31;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (!v5)
  {
    v18 = 1;
    goto LABEL_30;
  }

  v6 = v5;
  v36 = a2;
  v37 = v4;
  v7 = *v43;
  v8 = 0x277CBE000uLL;
  v35 = *v43;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v43 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v42 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v36)
        {
          v28 = MEMORY[0x277CCA9B8];
          v51 = *MEMORY[0x277CCA450];
          v52 = @"'recordDictionary' has a non-NSString key";
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *v36 = [v28 errorWithDomain:@"MalformedCKRecordDictionaryError" code:0 userInfo:v13];
          goto LABEL_27;
        }

LABEL_28:
        v18 = 0;
        goto LABEL_30;
      }

      v11 = [v3 objectForKeyedSubscript:v10];
      if (_isSupportedRecordDictionaryValueType(v11))
      {
        goto LABEL_19;
      }

      v12 = *(v8 + 2656);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v36)
        {
          v29 = MEMORY[0x277CCACA8];
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v29 stringWithFormat:@"'recordDictionary' value of type '%@' for key '%@' is not allowed", v31, v10];

          v33 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CCA450];
          v47 = v32;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          *v36 = [v33 errorWithDomain:@"MalformedCKRecordDictionaryError" code:0 userInfo:v34];
        }

        v13 = v11;
LABEL_27:

        goto LABEL_28;
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v39;
        while (2)
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ((_isSupportedRecordDictionaryValueType(*(*(&v38 + 1) + 8 * j)) & 1) == 0)
            {
              if (v36)
              {
                v20 = MEMORY[0x277CCACA8];
                v21 = objc_opt_class();
                v22 = NSStringFromClass(v21);
                v23 = [v20 stringWithFormat:@"'recordDictionary' value of type '%@' for array with key '%@' is not allowed", v22, v10];

                v24 = MEMORY[0x277CCA9B8];
                v48 = *MEMORY[0x277CCA450];
                v49 = v23;
                v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
                *v36 = [v24 errorWithDomain:@"MalformedCKRecordDictionaryError" code:0 userInfo:v25];
              }

              v4 = v37;
              goto LABEL_27;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v4 = v37;
      v7 = v35;
      v8 = 0x277CBE000;
LABEL_19:
    }

    v6 = [v4 countByEnumeratingWithState:&v42 objects:v53 count:16];
    v18 = 1;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_30:

LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t _isSupportedRecordDictionaryValueType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

void DRSCoreAnalyticsSendEvent(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = DPLogHandle_Telemetry();
  if (os_signpost_enabled(v5))
  {
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EmittingCATelemetry", "Emitting event %{public}@ with payload:\n%{public}@", &v7, 0x16u);
  }

  AnalyticsSendEvent();
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t DRSProtoRequestDescriptionReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 24;
            goto LABEL_36;
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v27 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v27 & 0x7F) << v16;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_44;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_44:
            *(a1 + 8) = v22;
            goto LABEL_37;
          case 5:
            v14 = PBReaderReadString();
            v15 = 16;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoDiagnosticRequestStatsBatchReplyReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoDiagnosticUploadRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
      if ((v12 >> 3) == 10)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v15;
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(DRSProtoRequestDescription);
        objc_storeStrong((a1 + 24), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !DRSProtoRequestDescriptionReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(DRSProtoFileDescription);
    [a1 addLogs:v14];
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !DRSProtoFileDescriptionReadFrom(v14, a2))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoTaskingConfigMetadataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 24;
LABEL_25:
        v14 = *(a1 + v16);
        *(a1 + v16) = v15;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(DRSProtoTaskingDeviceMetadata);
        objc_storeStrong((a1 + 8), v14);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !DRSProtoTaskingDeviceMetadataReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v16 = 16;
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoEnableDataGatheringRequestBatchReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 10)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(DRSProtoClientDeviceMetadata);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !DRSProtoClientDeviceMetadataReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(DRSProtoEnableDataGatheringRequest);
    [a1 addDataGatheringRequests:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !DRSProtoEnableDataGatheringRequestReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoDiagnosticRequestStatsReadFrom(char *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 8;
LABEL_30:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadString();
            v16 = 16;
            goto LABEL_30;
          case 4:
            v15 = PBReaderReadString();
            v16 = 24;
            goto LABEL_30;
          case 0xA:
            v14 = objc_alloc_init(DRSProtoDiagnosticRequestOutcomeBucket);
            [a1 addOutcomes:v14];
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !DRSProtoDiagnosticRequestOutcomeBucketReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_232921C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2329220AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_232925D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232928F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_2329292AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id DRSRequestRemoveDB(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 stringByAppendingPathComponent:kDRSRequestDBFileName];
  v3 = [v1 stringByAppendingPathComponent:kDRSRequestDBFileWalName];
  v4 = [v1 stringByAppendingPathComponent:kDRSRequestDBFileShmName];
  v5 = _removePathIfExists(v2);
  v6 = _removePathIfExists(v3);
  v7 = _removePathIfExists(v4);
  v8 = v7;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9 && v7 == 0)
  {
    v11 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v11))
    {
      *buf = 138543362;
      v26 = v1;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RemovingRequestDBSuccess", "Removed DB at working directory %{public}@", buf, 0xCu);
    }

    v22 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCAB68] string];
    if (v5)
    {
      v12 = [v5 localizedDescription];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = @"Unknown error";
      }

      [v11 appendFormat:@"%@: %@\n", v2, v14];
    }

    if (v6)
    {
      v15 = [v6 localizedDescription];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = @"Unknown error";
      }

      [v11 appendFormat:@"%@: %@\n", v3, v17];
    }

    if (v8)
    {
      v18 = [v8 localizedDescription];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = @"Unknown error";
      }

      [v11 appendFormat:@"%@: %@\n", v4, v20];
    }

    v21 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v21))
    {
      *buf = 138543362;
      v26 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RemovingRequestDBFailure", "Failed to remove request DB due to error: %{public}@", buf, 0xCu);
    }

    v22 = _coreDataHelperError(v11);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

id _removePathIfExists(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v7 = 0;
    v3 = [v2 removeItemAtPath:v1 error:&v7];
    v4 = v7;
    v5 = v4;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

id _coreDataHelperError(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a1;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"DRSCoreDataHelperError" code:0 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id _dbFilePath(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 stringByAppendingString:@".sqlite"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

id DRSRequestModelForVersion(int a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if ((a1 - 1) < 3)
  {
    v3 = off_27899F230[(a1 - 1)];
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.performance.DiagnosticRequestService"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 URLForResource:@"DRSDataModel" withExtension:@"momd"];
      if (v6)
      {
        v7 = [MEMORY[0x277CCA8D8] bundleWithURL:v6];
        v8 = v7;
        if (!v7)
        {
          v20 = DPLogHandle_CoreDataError();
          if (os_signpost_enabled(v20))
          {
            v21 = [v6 path];
            *buf = 138412290;
            v28 = v21;
            _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ModelBundleCreationFailure", "Failed to create NSBundle from URL: '%@'", buf, 0xCu);
          }

          if (!a2)
          {
            v10 = 0;
            goto LABEL_35;
          }

          v22 = objc_alloc(MEMORY[0x277CCACA8]);
          v23 = [v6 path];
          v9 = [v22 initWithFormat:@"Failed to create bundle for model URL '%@'", v23];

          _coreDataHelperError(v9);
          *a2 = v10 = 0;
          goto LABEL_34;
        }

        v9 = [v7 URLForResource:v3 withExtension:@"mom"];
        if (v9)
        {
          v10 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v9];
          if (!v10)
          {
            v11 = DPLogHandle_CoreDataError();
            if (os_signpost_enabled(v11))
            {
              *buf = 138543618;
              v28 = v9;
              v29 = 2112;
              v30 = v3;
              _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ModelCreationFailure", "Failed instantiate model using URL %{public}@ (model version: '%@')", buf, 0x16u);
            }

            if (a2)
            {
              v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed instantiate model using URL %@", v6];
              v13 = MEMORY[0x277CCA9B8];
              v33 = *MEMORY[0x277CCA450];
              v34[0] = v12;
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
              *a2 = [v13 errorWithDomain:@"DRSCoreDataHelperError" code:0 userInfo:v14];
            }
          }

          v15 = DPLogHandle_CoreData();
          if (os_signpost_enabled(v15))
          {
            v16 = [v10 versionIdentifiers];
            *buf = 138543874;
            v28 = v9;
            v29 = 2112;
            v30 = v3;
            v31 = 2112;
            v32 = v16;
            _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ModelCreationSuccess", "Instantiate model using URL %{public}@ (model version: '%@', identifiers: '%@')", buf, 0x20u);
          }
        }

        else
        {
          v24 = DPLogHandle_CoreDataError();
          if (os_signpost_enabled(v24))
          {
            *buf = 138412290;
            v28 = v3;
            _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ModelVersionURLFailure", "Failed to get URL for model version '%@'", buf, 0xCu);
          }

          if (!a2)
          {
            v10 = 0;
            goto LABEL_34;
          }

          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to create URL for model name %@", v3];
          _coreDataHelperError(v15);
          *a2 = v10 = 0;
        }

LABEL_34:
        goto LABEL_35;
      }

      v19 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ModelResourceURLFailure", "Failed to get URL for model bundle", buf, 2u);
      }

      if (a2)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to create URL for model name %@", @"DRSDataModel"];
        _coreDataHelperError(v8);
        *a2 = v10 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      v6 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v6))
      {
        *buf = 138543362;
        v28 = @"com.apple.performance.DiagnosticRequestService";
        _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FrameworkBundleAccessFailure", "Get bundle for  %{public}@", buf, 0xCu);
      }
    }

    v10 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v18 = DPLogHandle_CoreDataError();
  if (os_signpost_enabled(v18))
  {
    *buf = 67109120;
    LODWORD(v28) = a1;
    _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidRequestModelVersion", "Invalid version: %u", buf, 8u);
  }

  if (a2)
  {
    _coreDataHelperError(@"Invalid Version");
    *a2 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_37:
  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

id _persistentContainerForModel(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v33 = a2;
  v12 = a3;
  v13 = [MEMORY[0x277CBE4A0] persistentContainerWithName:v12 managedObjectModel:v11];
  if (v13)
  {
    v14 = _dbFilePath(v33, v12);
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
    v16 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v15];
    if (v16)
    {
      v17 = DPLogHandle_CoreData();
      if (os_signpost_enabled(v17))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistentStoreDescriptionSuccess", "Create NSPersistentStoreDescription with path %{public}@", &buf, 0xCu);
      }

      [v16 setReadOnly:a4];
      [v16 setShouldMigrateStoreAutomatically:a5];
      v46 = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [v13 setPersistentStoreDescriptions:v18];

      v19 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__1;
      v44 = __Block_byref_object_dispose__1;
      v45 = 0;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = ___persistentContainerForModel_block_invoke;
      v34[3] = &unk_27899F210;
      p_buf = &buf;
      v20 = v19;
      v35 = v20;
      [v13 loadPersistentStoresWithCompletionHandler:v34];
      v21 = *(*(&buf + 1) + 40);
      if (v21)
      {
        if (a6)
        {
          *a6 = v21;
        }

        v22 = DPLogHandle_CoreDataError();
        if (os_signpost_enabled(v22))
        {
          v23 = [*(*(&buf + 1) + 40) localizedDescription];
          *v37 = 138543618;
          v38 = v14;
          v39 = 2114;
          v40 = v23;
          _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistentStoreLoadFailure", "Failed to load persistent store with path '%{public}@' due to error: %{public}@", v37, 0x16u);
        }

        v24 = 0;
      }

      else
      {
        v30 = DPLogHandle_CoreData();
        if (os_signpost_enabled(v30))
        {
          *v37 = 138543362;
          v38 = v14;
          _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistentStoreLoadSuccess", "Loaded persistent store with path '%{public}@'", v37, 0xCu);
        }

        v24 = v13;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v27 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v27))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistentStoreDescriptionFailure", "Failed to create NSPersistentStoreDescription with path %{public}@", &buf, 0xCu);
      }

      if (!a6)
      {
        v24 = 0;
        goto LABEL_24;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create NSPersistentStoreDescription with path %@", v14];
      v28 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48 = v20;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a6 = [v28 errorWithDomain:@"DRSCoreDataHelperError" code:0 userInfo:v29];

      v24 = 0;
    }

LABEL_24:
    goto LABEL_25;
  }

  v25 = DPLogHandle_CoreDataError();
  if (os_signpost_enabled(v25))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = @"DRSDataModel";
    _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistentContainerCreationFailure", "Failed to create NSPersistentContainer with name %{public}@", &buf, 0xCu);
  }

  if (a6)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create NSPersistentContainer with name %@", v12, v33];
    v26 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    [v26 errorWithDomain:@"DRSCoreDataHelperError" code:0 userInfo:v15];
    *a6 = v24 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v24 = 0;
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];

  return v24;
}

void sub_23292A9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___persistentContainerForModel_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id DRSRequestPersistentContainerForVersion(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = DRSRequestModelForVersion(a1, a5);
  v11 = v10;
  if (v10)
  {
    v12 = _persistentContainerForModel(v10, v9, @"DRSDataModel", a3, a4, a5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *_persistentContainer(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.performance.DiagnosticRequestService"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 URLForResource:v10 withExtension:@"momd"];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v13];
      v15 = v14;
      if (v14)
      {
        a5 = _persistentContainerForModel(v14, v9, v10, a3, a4, a5);
LABEL_17:

        goto LABEL_18;
      }

      v19 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v19))
      {
        *buf = 138543362;
        v30 = v13;
        _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ModelCreationFailure", "Failed instantiate model using URL %{public}@", buf, 0xCu);
      }

      if (!a5)
      {
        goto LABEL_17;
      }

      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed instantiate model using URL %@", v13];
      v21 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26 = v20;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      *a5 = [v21 errorWithDomain:@"DRSCoreDataHelperError" code:0 userInfo:v22];

LABEL_16:
      a5 = 0;
      goto LABEL_17;
    }

    v16 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ModelResourceFailure", "Failed to get URL for model resource", buf, 2u);
    }

    if (a5)
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to create URL for model name %@", v10];
      v17 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28 = v15;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *a5 = [v17 errorWithDomain:@"DRSCoreDataHelperError" code:0 userInfo:v18];

      goto LABEL_16;
    }
  }

  else
  {
    v13 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v13))
    {
      *buf = 138543362;
      v30 = @"com.apple.performance.DiagnosticRequestService";
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FrameworkBundleAccessFailure", "Get bundle for  %{public}@", buf, 0xCu);
    }

    a5 = 0;
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return a5;
}

void sub_23292CBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23292D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23292E4D4(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_23292E94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_23292FF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_2329307D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2329315BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _acceptingAdminReplyMessage(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  xpc_dictionary_set_BOOL(reply, "AdminRequest_Reply", 1);

  return reply;
}

void sub_232932E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232935E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_232936064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232936B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232937094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t DRSProtoDiagnosticUploadRequestBatchReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 10)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(DRSProtoClientDeviceMetadata);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !DRSProtoClientDeviceMetadataReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(DRSProtoDiagnosticUploadRequest);
    [a1 addUploadRequests:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !DRSProtoDiagnosticUploadRequestReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

__CFString *DRSStringForServiceState(int a1)
{
  v1 = @"Waiting for activation";
  if (a1 == 1)
  {
    v1 = @"Activated";
  }

  if (a1 == 2)
  {
    return @"Deactivated";
  }

  else
  {
    return v1;
  }
}

void DRSRegisterForDeviceUnlockNotification()
{
  if (DRSRegisterForDeviceUnlockNotification_onceToken != -1)
  {
    DRSRegisterForDeviceUnlockNotification_cold_1();
  }
}

intptr_t __DRSRegisterForDeviceUnlockNotification_block_invoke()
{
  v0 = dispatch_semaphore_create(0);
  v1 = gDRSServiceFirstUnlockSem;
  gDRSServiceFirstUnlockSem = v0;

  if (DRSDeviceFormattedForContentProtection_once != -1)
  {
    __DRSRegisterForDeviceUnlockNotification_block_invoke_cold_1();
  }

  if (DRSDeviceFormattedForContentProtection_formatted)
  {
    v2 = MEMORY[0x277D85CD0];

    return notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &_block_invoke_firstUnlockToken, v2, &__block_literal_global_12);
  }

  else
  {
    v4 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v4))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkippingUnlockRegistration", "Do not wait for a notification that will never come since the device is not formatted for content protection", v5, 2u);
    }

    return dispatch_semaphore_signal(gDRSServiceFirstUnlockSem);
  }
}

uint64_t __DRSRegisterForDeviceUnlockNotification_block_invoke_9()
{
  v0 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v0))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FirstUnlockNotification", &unk_232980861, v2, 2u);
  }

  dispatch_semaphore_signal(gDRSServiceFirstUnlockSem);
  return notify_cancel(_block_invoke_firstUnlockToken);
}

void DRSWaitForDeviceUnlock()
{
  if (DRSWaitForDeviceUnlock_onceToken != -1)
  {
    DRSWaitForDeviceUnlock_cold_1();
  }
}

void __DRSWaitForDeviceUnlock_block_invoke()
{
  if (DRSDeviceFormattedForContentProtection_once != -1)
  {
    __DRSRegisterForDeviceUnlockNotification_block_invoke_cold_1();
  }

  if (DRSDeviceFormattedForContentProtection_formatted)
  {
    if (MKBDeviceUnlockedSinceBoot() != 1)
    {
      dispatch_semaphore_wait(gDRSServiceFirstUnlockSem, 0xFFFFFFFFFFFFFFFFLL);
      if (MKBDeviceUnlockedSinceBoot() != 1)
      {
        v0 = DPLogHandle_ServiceXPCError();
        if (os_signpost_enabled(v0))
        {
          *v3 = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedFirstUnlockNotification", "FATAL ERROR: Service was notified of device unlock, but confirmation of unlock failed", v3, 2u);
        }

        v1 = DPLogHandle_ServiceXPCError();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
        {
          __DRSWaitForDeviceUnlock_block_invoke_cold_2(v1);
        }

        exit(1);
      }
    }
  }

  else
  {
    v2 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceNotFormattedForContentProtection", "Short circuiting waiting for device unlock since the device is not formatted for content protection", buf, 2u);
    }
  }
}

BOOL DRSDeviceIsUnlocked()
{
  if (DRSDeviceFormattedForContentProtection_once != -1)
  {
    __DRSRegisterForDeviceUnlockNotification_block_invoke_cold_1();
  }

  return DRSDeviceFormattedForContentProtection_formatted != 1 || MKBDeviceUnlockedSinceBoot() == 1;
}

void DRSConfirmDirectoryIsInitialized(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = 0;
  if ([v8 fileExistsAtPath:v5 isDirectory:&v39])
  {
    if ((v39 & 1) == 0)
    {
      if (os_signpost_enabled(v7))
      {
        *buf = 138543362;
        v41 = v5;
        _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidRequiredDirectory", "FATAL ERROR: %{public}@ exists but is not a directory", buf, 0xCu);
      }

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"FATAL ERROR: %@ exists but is not a directory", v5];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        DRSConfirmDirectoryIsInitialized_cold_1(v9, v7);
      }

      goto LABEL_42;
    }
  }

  else
  {
    v38 = 0;
    v10 = [v8 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v38];
    v11 = v38;
    if ((v10 & 1) == 0)
    {
      v26 = v7;
      if (os_signpost_enabled(v26))
      {
        v27 = [v11 localizedDescription];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = @"Unknown";
        }

        *buf = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v29;
        _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequiredDirectoryFailure", "FATAL ERROR: Failed to create %{public}@ due to error: %{public}@", buf, 0x16u);
      }

      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      v31 = [v11 localizedDescription];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = @"Unknown";
      }

      v34 = [v30 initWithFormat:@"FATAL ERROR: Failed to create %@ due to error: %@", v5, v33];

      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        DRSConfirmDirectoryIsInitialized_cold_1(v34, v26);
      }

LABEL_42:
      exit(1);
    }

    if (os_signpost_enabled(v6))
    {
      *buf = 138543362;
      v41 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CreatedRequiredDirectory", "Created %{public}@", buf, 0xCu);
    }
  }

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v37 = 0;
  v13 = *MEMORY[0x277CBE878];
  v36 = 0;
  v14 = [v12 getResourceValue:&v37 forKey:v13 error:&v36];
  v15 = v37;
  v16 = v36;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 BOOLValue])
    {
      if (os_signpost_enabled(v6))
      {
        *buf = 138543362;
        v41 = v5;
        _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceSettingCorrect", "Value for NSURLIsExcludedFromBackupKey of %{public}@ is already correctly set", buf, 0xCu);
      }

LABEL_30:

      goto LABEL_31;
    }

    if (os_signpost_enabled(v7))
    {
      *buf = 138543618;
      v41 = v5;
      v42 = 2114;
      v43 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceSettingIncorrect", "Value for NSURLIsExcludedFromBackupKey of %{public}@ is not correctly set (%{public}@)", buf, 0x16u);
    }
  }

  else
  {
    v17 = v7;
    if (os_signpost_enabled(v17))
    {
      v18 = [v16 localizedDescription];
      v19 = v18;
      v20 = @"Unknown";
      if (v18)
      {
        v20 = v18;
      }

      *buf = 138543618;
      v41 = v5;
      v42 = 2114;
      v43 = v20;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceSettingFetchFailed", "WARNING: Failed to get value for NSURLIsExcludedFromBackupKey for %{public}@ from due to error: %{public}@", buf, 0x16u);
    }
  }

  v35 = 0;
  v21 = [v12 setResourceValue:MEMORY[0x277CBEC38] forKey:v13 error:&v35];
  v16 = v35;
  if ((v21 & 1) == 0)
  {
    v15 = v7;
    if (os_signpost_enabled(v15))
    {
      v22 = [v16 localizedDescription];
      v23 = v22;
      v24 = @"Unknown";
      if (v22)
      {
        v24 = v22;
      }

      *buf = 138543618;
      v41 = v5;
      v42 = 2114;
      v43 = v24;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceSettingFailure", "SOFT ERROR: Failed to exclude %{public}@ from backup due to error: %{public}@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  if (os_signpost_enabled(v6))
  {
    *buf = 138543362;
    v41 = v5;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResourceSettingSuccess", "Set resource to exclude %{public}@ from backup", buf, 0xCu);
  }

LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
}

id DRSGetConfigurationDictionary(void *a1, void *a2)
{
  v3 = a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v4 = _configAccessQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __DRSGetConfigurationDictionary_block_invoke;
  block[3] = &unk_27899F1E8;
  v9 = v3;
  v10 = &v12;
  v11 = &v18;
  v5 = v3;
  dispatch_sync(v4, block);

  *a2 = v13[5];
  v6 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v6;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _configAccessQueue()
{
  if (_configAccessQueue_onceToken != -1)
  {
    _configAccessQueue_cold_1();
  }

  v1 = _configAccessQueue_syncQueue;

  return v1;
}

void __DRSGetConfigurationDictionary_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stringByAppendingPathComponent:@"DPConfig.plist"];
  v26 = 0;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if (![v3 fileExistsAtPath:v2 isDirectory:&v26])
  {
LABEL_12:

    goto LABEL_20;
  }

  if (v26 == 1)
  {
    v4 = DPLogHandle_DPConfigError();
    if (os_signpost_enabled(v4))
    {
      *buf = 138543362;
      v28 = v2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigFileIsDirectory", "ERROR: Config file at path '%{public}@' is a directory. Clearing it...", buf, 0xCu);
    }

    v25 = 0;
    v5 = [v3 removeItemAtPath:v2 error:&v25];
    v6 = v25;
    v7 = v25;
    if ((v5 & 1) == 0)
    {
      v8 = DPLogHandle_DPConfigError();
      if (os_signpost_enabled(v8))
      {
        v9 = [v7 localizedDescription];
        v10 = v9;
        v11 = @"Unknown";
        if (v9)
        {
          v11 = v9;
        }

        *buf = 138543618;
        v28 = v2;
        v29 = 2114;
        v30 = v11;
        _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigFileIsDirectoryRemovalFailure", "ERROR: Failed to remove directory at path '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }

    goto LABEL_12;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v2];
  v24 = 0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v12 error:&v24];
  v14 = v24;
  v15 = v24;
  v16 = [v13 mutableCopy];
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v19 = DPLogHandle_DPConfigError();
    if (os_signpost_enabled(v19))
    {
      v20 = [v15 localizedDescription];
      v21 = v20;
      v22 = @"Unknown";
      if (v20)
      {
        v22 = v20;
      }

      *buf = 138543618;
      v28 = v2;
      v29 = 2114;
      v30 = v22;
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigFileParseFailure", "ERROR: Failed to config file at path '%{public}@' due to error: %{public}@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14);
  }

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t DRSSetConfigurationDictionary(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  *a3 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = [v5 stringByAppendingPathComponent:@"DPConfig.plist"];
  v8 = _configAccessQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __DRSSetConfigurationDictionary_block_invoke;
  block[3] = &unk_27899F560;
  v18 = &v20;
  v19 = &v24;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_sync(v8, block);

  *a3 = v25[5];
  v12 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void sub_232938EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __DRSSetConfigurationDictionary_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v51 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v51])
  {
    if (v51)
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_23;
    }

    v6 = DPLogHandle_DPConfigError();
    if (os_signpost_enabled(v6))
    {
      *buf = 138543362;
      v53 = v2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigurationDirectoryIsFile", "ERROR: %{public}@ exists but is not a directory", buf, 0xCu);
    }

    v50 = 0;
    v7 = [v3 removeItemAtPath:v2 error:&v50];
    v8 = v50;
    v4 = v8;
    if ((v7 & 1) == 0)
    {
      v17 = DPLogHandle_DPConfigError();
      if (os_signpost_enabled(v17))
      {
        v18 = [v4 localizedDescription];
        v19 = v18;
        v20 = @"Unknown";
        if (v18)
        {
          v20 = v18;
        }

        *buf = 138543618;
        v53 = v2;
        v54 = 2114;
        v55 = v20;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigDirectoryIsFileRemovalFailure", "ERROR: Failed to remove file that should be the config directory at path '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      v21 = v4;
      v5 = 0;
      v10 = v4;
      goto LABEL_22;
    }
  }

  v49 = 0;
  v9 = [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v49];
  v10 = v49;
  if (v9)
  {
    v11 = DPLogHandle_DPConfig();
    if (os_signpost_enabled(v11))
    {
      *buf = 138543362;
      v53 = v2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CreatedConfigurationDirectory", "Created %{public}@", buf, 0xCu);
    }

    v4 = 0;
    v5 = 1;
  }

  else
  {
    v12 = DPLogHandle_DPConfigError();
    if (os_signpost_enabled(v12))
    {
      v13 = [v10 localizedDescription];
      v14 = v13;
      v15 = @"Unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138543618;
      v53 = v2;
      v54 = 2114;
      v55 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CreateDirectoryFailure", "ERROR: Failed to create %{public}@ due to error: %{public}@", buf, 0x16u);
    }

    v16 = v10;
    v5 = 0;
    v4 = v10;
  }

LABEL_22:

LABEL_23:
  v22 = v4;
  v23 = v22;
  if (v5)
  {
    if (*(a1 + 40))
    {
      v24 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 48)];
      v25 = *(a1 + 40);
      v47 = 0;
      v26 = [v25 writeToURL:v24 error:&v47];
      v27 = v47;
      if (v26)
      {
        v28 = DPLogHandle_DPConfig();
        if (os_signpost_enabled(v28))
        {
          v29 = *(a1 + 32);
          v30 = [*(a1 + 40) description];
          *buf = 138543618;
          v53 = v29;
          v54 = 2114;
          v55 = v30;
          _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SavedConfiguration", "Saved config to path '%{public}@'. Config:\n%{public}@", buf, 0x16u);
        }

LABEL_33:

        *(*(*(a1 + 56) + 8) + 24) = 1;
        v37 = *(*(a1 + 64) + 8);
        v38 = *(v37 + 40);
        *(v37 + 40) = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      if (([v24 fileExistsAtPath:*(a1 + 48)] & 1) == 0)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
        v39 = *(*(a1 + 64) + 8);
        v27 = *(v39 + 40);
        *(v39 + 40) = 0;
LABEL_42:

        goto LABEL_43;
      }

      v33 = *(a1 + 48);
      v48 = 0;
      v34 = [v24 removeItemAtPath:v33 error:&v48];
      v27 = v48;
      v28 = DPLogHandle_DPConfigError();
      v35 = os_signpost_enabled(v28);
      if (v34)
      {
        if (v35)
        {
          v36 = *(a1 + 32);
          *buf = 138543362;
          v53 = v36;
          _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearedConfigFile", "Cleared config file at path '%{public}@'", buf, 0xCu);
        }

        goto LABEL_33;
      }

      if (v35)
      {
        v40 = *(a1 + 32);
        v41 = [v27 localizedDescription];
        v42 = v41;
        v43 = @"Unknown";
        if (v41)
        {
          v43 = v41;
        }

        *buf = 138543618;
        v53 = v40;
        v54 = 2114;
        v55 = v43;
        _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearConfigFileFailure", "ERROR: Failed to remove config file at path '%{public}@' due to error: %{public}@", buf, 0x16u);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v44 = *(*(a1 + 64) + 8);
    v45 = v27;
    v38 = *(v44 + 40);
    *(v44 + 40) = v45;
    goto LABEL_41;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v31 = *(*(a1 + 64) + 8);
  v32 = v22;
  v24 = *(v31 + 40);
  *(v31 + 40) = v32;
LABEL_43:

  v46 = *MEMORY[0x277D85DE8];
}

id DRSPidToProcessName(int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 < 1)
  {
    v5 = DPLogHandle_ServiceLifecycleError();
    if (os_signpost_enabled(v5))
    {
      v10 = 67109120;
      v11 = a1;
      v6 = "InvalidPidToProcessName";
      v7 = "WARNING: Invalid pid (%d) cannot be mapped to a process name";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v6, v7, &v10, 8u);
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    ProcessNameByPID = GetProcessNameByPID();
    v3 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v3))
    {
      v10 = 67109378;
      v11 = a1;
      v12 = 2080;
      v13 = ProcessNameByPID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PidToProcessName", "Mapped client pid %d to process %s", &v10, 0x12u);
    }

    if (ProcessNameByPID)
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:ProcessNameByPID];
      goto LABEL_12;
    }

    v5 = DPLogHandle_ServiceLifecycleError();
    if (os_signpost_enabled(v5))
    {
      v10 = 67109120;
      v11 = a1;
      v6 = "GetProcessNameByPIDFailed";
      v7 = "WARNING: Failed to map pid (%d) to a process name";
      goto LABEL_10;
    }
  }

  v4 = 0;
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __DRSDeviceFormattedForContentProtection_block_invoke()
{
  result = MKBDeviceFormattedForContentProtection();
  DRSDeviceFormattedForContentProtection_formatted = result == 1;
  return result;
}

void ___configAccessQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.DiagnosticPipeline configuration access queue", 0);
  v1 = _configAccessQueue_syncQueue;
  _configAccessQueue_syncQueue = v0;
}

uint64_t DRSProtoRapidPayloadReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(DRSProtoClientDeviceMetadata);
          objc_storeStrong((a1 + 8), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !DRSProtoClientDeviceMetadataReadFrom(v16, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(DRSProtoRequestDescription);
          objc_storeStrong((a1 + 32), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !DRSProtoRequestDescriptionReadFrom(v16, a2))
          {
            goto LABEL_50;
          }

          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = objc_alloc_init(DRSProtoFileDescription);
            objc_storeStrong((a1 + 24), v16);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !DRSProtoFileDescriptionReadFrom(v16, a2))
            {
              goto LABEL_50;
            }

LABEL_41:
            PBReaderRecallMark();

            goto LABEL_48;
          case 4:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v26) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v26 & 0x7F) << v17;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_47;
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

LABEL_47:
            *(a1 + 40) = v23;
            goto LABEL_48;
          case 5:
            v14 = PBReaderReadData();
            v15 = *(a1 + 16);
            *(a1 + 16) = v14;

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoTaskingConfigCompletionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_32:
          v19 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_35;
        }

LABEL_26:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_35;
      }

      v18 = objc_alloc_init(DRSProtoTaskingConfigMetadata);
      objc_storeStrong((a1 + 32), v18);
      v23[0] = 0;
      v23[1] = 0;
      if (!PBReaderPlaceMark() || !DRSProtoTaskingConfigMetadataReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_35:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v14 = PBReaderReadString();
      v15 = 16;
      goto LABEL_32;
    }

    if (v13 == 4)
    {
      *(a1 + 40) |= 1u;
      LODWORD(v23[0]) = 0;
      v16 = [a2 position] + 4;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:v23 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v23[0];
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoEnableDataGatheringRequestResponseBatchReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 10)
      {
        v13 = objc_alloc_init(DRSProtoDecisionResult);
        [a1 addDecisionResults:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !DRSProtoDecisionResultReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_23293CCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, char a19)
{
  objc_destroyWeak((v19 + 48));
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t DRSProtoEnableDataGatheringRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_36;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = *(a1 + 8);
        *(a1 + 8) = v15;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(DRSProtoRequestDescription);
        objc_storeStrong((a1 + 16), v14);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !DRSProtoRequestDescriptionReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoDiagnosticRequestOutcomeBucketReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_56:
        *(a1 + 8) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_52:
          v35 = 20;
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

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_60:
          v35 = 16;
        }

        *(a1 + v35) = v20;
      }

LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *DRSSystemProfilePlatformStringForPlatform(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899F8F8[a1];
  }
}

id DRSSystemProfileVariantStringForParameters(int a1, int a2, int a3)
{
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = &stru_2847F1D58;
  v8 = @"Seed";
  if (!a2)
  {
    v8 = &stru_2847F1D58;
  }

  if (a1)
  {
    v9 = @"Internal%@%@";
  }

  else
  {
    v7 = @"Customer";
    v9 = @"%@%@";
  }

  if (a3)
  {
    v7 = @"Carrier";
  }

  v10 = [v6 initWithFormat:v9, v7, v8];

  return v10;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t DRSProtoTaskingSystemMessageReceiptReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_36:
          v19 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_37;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_37;
      }

      v18 = objc_alloc_init(DRSProtoTaskingDeviceMetadata);
      objc_storeStrong((a1 + 40), v18);
      v23[0] = 0;
      v23[1] = 0;
      if (!PBReaderPlaceMark() || !DRSProtoTaskingDeviceMetadataReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_37:
      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_36;
      case 5:
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_36;
      case 6:
        *(a1 + 56) |= 1u;
        LODWORD(v23[0]) = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v23 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 32) = v23[0];
        goto LABEL_37;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

void sub_23294762C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *DRSTaskingStringForTaskingStateChangeReason(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899FAA0[a1];
  }
}

void sub_23294B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23294CA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23294D1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DPLogHandle_ClientError()
{
  if (DPLogHandle_ClientError_onceToken != -1)
  {
    DPLogHandle_ClientError_cold_1();
  }

  v1 = DPLogHandle_ClientError_handle;

  return v1;
}

id DPLogHandle_AdminError()
{
  if (DPLogHandle_AdminError_onceToken != -1)
  {
    DPLogHandle_AdminError_cold_1();
  }

  v1 = DPLogHandle_AdminError_handle;

  return v1;
}

id DPLogHandle_ClientXPCError()
{
  if (DPLogHandle_ClientXPCError_onceToken != -1)
  {
    DPLogHandle_ClientXPCError_cold_1();
  }

  v1 = DPLogHandle_ClientXPCError_handle;

  return v1;
}

id DPLogHandle_ClientXPC()
{
  if (DPLogHandle_ClientXPC_onceToken != -1)
  {
    DPLogHandle_ClientXPC_cold_1();
  }

  v1 = DPLogHandle_ClientXPC_handle;

  return v1;
}

id DPLogHandle_ClientAPI()
{
  if (DPLogHandle_ClientAPI_onceToken != -1)
  {
    DPLogHandle_ClientAPI_cold_1();
  }

  v1 = DPLogHandle_ClientAPI_handle;

  return v1;
}

id DPLogHandle_ClientAPIError()
{
  if (DPLogHandle_ClientAPIError_onceToken != -1)
  {
    DPLogHandle_ClientAPIError_cold_1();
  }

  v1 = DPLogHandle_ClientAPIError_handle;

  return v1;
}

id DPLogHandle_CKRecordError()
{
  if (DPLogHandle_CKRecordError_onceToken != -1)
  {
    DPLogHandle_CKRecordError_cold_1();
  }

  v1 = DPLogHandle_CKRecordError_handle;

  return v1;
}

id DPLogHandle_CKRecord()
{
  if (DPLogHandle_CKRecord_onceToken != -1)
  {
    DPLogHandle_CKRecord_cold_1();
  }

  v1 = DPLogHandle_CKRecord_handle;

  return v1;
}

id DPLogHandle_CKRecordUpload()
{
  if (DPLogHandle_CKRecordUpload_onceToken != -1)
  {
    DPLogHandle_CKRecordUpload_cold_1();
  }

  v1 = DPLogHandle_CKRecordUpload_handle;

  return v1;
}

id DPLogHandle_CKCodeServer()
{
  if (DPLogHandle_CKCodeServer_onceToken != -1)
  {
    DPLogHandle_CKCodeServer_cold_1();
  }

  v1 = DPLogHandle_CKCodeServer_handle;

  return v1;
}

id DPLogHandle_CKCodeServerError()
{
  if (DPLogHandle_CKCodeServerError_onceToken != -1)
  {
    DPLogHandle_CKCodeServerError_cold_1();
  }

  v1 = DPLogHandle_CKCodeServerError_handle;

  return v1;
}

id DPLogHandle_CKCFUpload()
{
  if (DPLogHandle_CKCFUpload_onceToken != -1)
  {
    DPLogHandle_CKCFUpload_cold_1();
  }

  v1 = DPLogHandle_CKCFUpload_handle;

  return v1;
}

id DPLogHandle_CKCFUploadError()
{
  if (DPLogHandle_CKCFUploadError_onceToken != -1)
  {
    DPLogHandle_CKCFUploadError_cold_1();
  }

  v1 = DPLogHandle_CKCFUploadError_handle;

  return v1;
}

id DPLogHandle_ServiceXPCError()
{
  if (DPLogHandle_ServiceXPCError_onceToken != -1)
  {
    DPLogHandle_ServiceXPCError_cold_1();
  }

  v1 = DPLogHandle_ServiceXPCError_handle;

  return v1;
}

id DPLogHandle_ServiceXPC()
{
  if (DPLogHandle_ServiceXPC_onceToken != -1)
  {
    DPLogHandle_ServiceXPC_cold_1();
  }

  v1 = DPLogHandle_ServiceXPC_handle;

  return v1;
}

id DPLogHandle_ServiceLifecycle()
{
  if (DPLogHandle_ServiceLifecycle_onceToken != -1)
  {
    DPLogHandle_ServiceLifecycle_cold_1();
  }

  v1 = DPLogHandle_ServiceLifecycle_handle;

  return v1;
}

id DPLogHandle_ServiceLifecycleError()
{
  if (DPLogHandle_ServiceLifecycleError_onceToken != -1)
  {
    DPLogHandle_ServiceLifecycleError_cold_1();
  }

  v1 = DPLogHandle_ServiceLifecycleError_handle;

  return v1;
}

id DPLogHandle_PermissiveUploadActivity()
{
  if (DPLogHandle_PermissiveUploadActivity_onceToken != -1)
  {
    DPLogHandle_PermissiveUploadActivity_cold_1();
  }

  v1 = DPLogHandle_PermissiveUploadActivity_handle;

  return v1;
}

id DPLogHandle_LogManagement()
{
  if (DPLogHandle_LogManagement_onceToken != -1)
  {
    DPLogHandle_LogManagement_cold_1();
  }

  v1 = DPLogHandle_LogManagement_handle;

  return v1;
}

id DPLogHandle_LogManagementError()
{
  if (DPLogHandle_LogManagementError_onceToken != -1)
  {
    DPLogHandle_LogManagementError_cold_1();
  }

  v1 = DPLogHandle_LogManagementError_handle;

  return v1;
}

id DPLogHandle_DAReporting()
{
  if (DPLogHandle_DAReporting_onceToken != -1)
  {
    DPLogHandle_DAReporting_cold_1();
  }

  v1 = DPLogHandle_DAReporting_handle;

  return v1;
}

id DPLogHandle_DAReportingError()
{
  if (DPLogHandle_DAReportingError_onceToken != -1)
  {
    DPLogHandle_DAReportingError_cold_1();
  }

  v1 = DPLogHandle_DAReportingError_handle;

  return v1;
}

id DPLogHandle_RequestError()
{
  if (DPLogHandle_RequestError_onceToken != -1)
  {
    DPLogHandle_RequestError_cold_1();
  }

  v1 = DPLogHandle_RequestError_handle;

  return v1;
}

id DPLogHandle_Request()
{
  if (DPLogHandle_Request_onceToken != -1)
  {
    DPLogHandle_Request_cold_1();
  }

  v1 = DPLogHandle_Request_handle;

  return v1;
}

id DPLogHandle_TailspinError()
{
  if (DPLogHandle_TailspinError_onceToken != -1)
  {
    DPLogHandle_TailspinError_cold_1();
  }

  v1 = DPLogHandle_TailspinError_handle;

  return v1;
}

id DPLogHandle_Tailspin()
{
  if (DPLogHandle_Tailspin_onceToken != -1)
  {
    DPLogHandle_Tailspin_cold_1();
  }

  v1 = DPLogHandle_Tailspin_handle;

  return v1;
}

id DPLogHandle_SubmitLogError()
{
  if (DPLogHandle_SubmitLogError_onceToken != -1)
  {
    DPLogHandle_SubmitLogError_cold_1();
  }

  v1 = DPLogHandle_SubmitLogError_handle;

  return v1;
}

id DPLogHandle_SubmitLog()
{
  if (DPLogHandle_SubmitLog_onceToken != -1)
  {
    DPLogHandle_SubmitLog_cold_1();
  }

  v1 = DPLogHandle_SubmitLog_handle;

  return v1;
}

id DPLogHandle_SubmitLogToCKContainerError()
{
  if (DPLogHandle_SubmitLogToCKContainerError_onceToken != -1)
  {
    DPLogHandle_SubmitLogToCKContainerError_cold_1();
  }

  v1 = DPLogHandle_SubmitLogToCKContainerError_handle;

  return v1;
}

id DPLogHandle_SubmitLogToCKContainer()
{
  if (DPLogHandle_SubmitLogToCKContainer_onceToken != -1)
  {
    DPLogHandle_SubmitLogToCKContainer_cold_1();
  }

  v1 = DPLogHandle_SubmitLogToCKContainer_handle;

  return v1;
}

id DPLogHandle_EnableDataGatheringQueryError()
{
  if (DPLogHandle_EnableDataGatheringQueryError_onceToken != -1)
  {
    DPLogHandle_EnableDataGatheringQueryError_cold_1();
  }

  v1 = DPLogHandle_EnableDataGatheringQueryError_handle;

  return v1;
}

id DPLogHandle_EnableDataGatheringQuery()
{
  if (DPLogHandle_EnableDataGatheringQuery_onceToken != -1)
  {
    DPLogHandle_EnableDataGatheringQuery_cold_1();
  }

  v1 = DPLogHandle_EnableDataGatheringQuery_handle;

  return v1;
}

id DPLogHandle_CoreDataError()
{
  if (DPLogHandle_CoreDataError_onceToken != -1)
  {
    DPLogHandle_CoreDataError_cold_1();
  }

  v1 = DPLogHandle_CoreDataError_handle;

  return v1;
}

id DPLogHandle_CoreData()
{
  if (DPLogHandle_CoreData_onceToken != -1)
  {
    DPLogHandle_CoreData_cold_1();
  }

  v1 = DPLogHandle_CoreData_handle;

  return v1;
}

id DPLogHandle_SystemProfileError()
{
  if (DPLogHandle_SystemProfileError_onceToken != -1)
  {
    DPLogHandle_SystemProfileError_cold_1();
  }

  v1 = DPLogHandle_SystemProfileError_handle;

  return v1;
}

id DPLogHandle_SystemProfile()
{
  if (DPLogHandle_SystemProfile_onceToken != -1)
  {
    DPLogHandle_SystemProfile_cold_1();
  }

  v1 = DPLogHandle_SystemProfile_handle;

  return v1;
}

id DPLogHandle_DampeningManager()
{
  if (DPLogHandle_DampeningManager_onceToken != -1)
  {
    DPLogHandle_DampeningManager_cold_1();
  }

  v1 = DPLogHandle_DampeningManager_handle;

  return v1;
}

id DPLogHandle_DampeningManagerError()
{
  if (DPLogHandle_DampeningManagerError_onceToken != -1)
  {
    DPLogHandle_DampeningManagerError_cold_1();
  }

  v1 = DPLogHandle_DampeningManagerError_handle;

  return v1;
}

id DPLogHandle_TaskingMessage()
{
  if (DPLogHandle_TaskingMessage_onceToken != -1)
  {
    DPLogHandle_TaskingMessage_cold_1();
  }

  v1 = DPLogHandle_TaskingMessage_handle;

  return v1;
}

id DPLogHandle_TaskingMessageError()
{
  if (DPLogHandle_TaskingMessageError_onceToken != -1)
  {
    DPLogHandle_TaskingMessageError_cold_1();
  }

  v1 = DPLogHandle_TaskingMessageError_handle;

  return v1;
}

id DPLogHandle_TaskingDecisionMaker()
{
  if (DPLogHandle_TaskingDecisionMaker_onceToken != -1)
  {
    DPLogHandle_TaskingDecisionMaker_cold_1();
  }

  v1 = DPLogHandle_TaskingDecisionMaker_handle;

  return v1;
}

id DPLogHandle_TaskingDecisionMakerError()
{
  if (DPLogHandle_TaskingDecisionMakerError_onceToken != -1)
  {
    DPLogHandle_TaskingDecisionMakerError_cold_1();
  }

  v1 = DPLogHandle_TaskingDecisionMakerError_handle;

  return v1;
}

id DPLogHandle_ConfigPersistedStore()
{
  if (DPLogHandle_ConfigPersistedStore_onceToken != -1)
  {
    DPLogHandle_ConfigPersistedStore_cold_1();
  }

  v1 = DPLogHandle_ConfigPersistedStore_handle;

  return v1;
}

id DPLogHandle_ConfigPersistedStoreError()
{
  if (DPLogHandle_ConfigPersistedStoreError_onceToken != -1)
  {
    DPLogHandle_ConfigPersistedStoreError_cold_1();
  }

  v1 = DPLogHandle_ConfigPersistedStoreError_handle;

  return v1;
}

id DPLogHandle_TaskingManager()
{
  if (DPLogHandle_TaskingManager_onceToken != -1)
  {
    DPLogHandle_TaskingManager_cold_1();
  }

  v1 = DPLogHandle_TaskingManager_handle;

  return v1;
}

id DPLogHandle_TaskingManagerError()
{
  if (DPLogHandle_TaskingManagerError_onceToken != -1)
  {
    DPLogHandle_TaskingManagerError_cold_1();
  }

  v1 = DPLogHandle_TaskingManagerError_handle;

  return v1;
}

id DPLogHandle_TaskingMessageChannel()
{
  if (DPLogHandle_TaskingMessageChannel_onceToken != -1)
  {
    DPLogHandle_TaskingMessageChannel_cold_1();
  }

  v1 = DPLogHandle_TaskingMessageChannel_handle;

  return v1;
}

id DPLogHandle_TaskingMessageChannelError()
{
  if (DPLogHandle_TaskingMessageChannelError_onceToken != -1)
  {
    DPLogHandle_TaskingMessageChannelError_cold_1();
  }

  v1 = DPLogHandle_TaskingMessageChannelError_handle;

  return v1;
}

id DPLogHandle_ClientTaskingXPC()
{
  if (DPLogHandle_ClientTaskingXPC_onceToken != -1)
  {
    DPLogHandle_ClientTaskingXPC_cold_1();
  }

  v1 = DPLogHandle_ClientTaskingXPC_handle;

  return v1;
}

id DPLogHandle_ClientTaskingXPCError()
{
  if (DPLogHandle_ClientTaskingXPCError_onceToken != -1)
  {
    DPLogHandle_ClientTaskingXPCError_cold_1();
  }

  v1 = DPLogHandle_ClientTaskingXPCError_handle;

  return v1;
}

id DPLogHandle_ConfigMonitor()
{
  if (DPLogHandle_ConfigMonitor_onceToken != -1)
  {
    DPLogHandle_ConfigMonitor_cold_1();
  }

  v1 = DPLogHandle_ConfigMonitor_handle;

  return v1;
}

id DPLogHandle_ConfigMonitorError()
{
  if (DPLogHandle_ConfigMonitorError_onceToken != -1)
  {
    DPLogHandle_ConfigMonitorError_cold_1();
  }

  v1 = DPLogHandle_ConfigMonitorError_handle;

  return v1;
}

id DPLogHandle_ServiceTasking()
{
  if (DPLogHandle_ServiceTasking_onceToken != -1)
  {
    DPLogHandle_ServiceTasking_cold_1();
  }

  v1 = DPLogHandle_ServiceTasking_handle;

  return v1;
}

id DPLogHandle_ServiceTaskingError()
{
  if (DPLogHandle_ServiceTaskingError_onceToken != -1)
  {
    DPLogHandle_ServiceTaskingError_cold_1();
  }

  v1 = DPLogHandle_ServiceTaskingError_handle;

  return v1;
}

id DPLogHandle_ServiceTaskingXPC()
{
  if (DPLogHandle_ServiceTaskingXPC_onceToken != -1)
  {
    DPLogHandle_ServiceTaskingXPC_cold_1();
  }

  v1 = DPLogHandle_ServiceTaskingXPC_handle;

  return v1;
}

id DPLogHandle_ServiceTaskingXPCError()
{
  if (DPLogHandle_ServiceTaskingXPCError_onceToken != -1)
  {
    DPLogHandle_ServiceTaskingXPCError_cold_1();
  }

  v1 = DPLogHandle_ServiceTaskingXPCError_handle;

  return v1;
}

id DPLogHandle_ServiceEventPublisher()
{
  if (DPLogHandle_ServiceEventPublisher_onceToken != -1)
  {
    DPLogHandle_ServiceEventPublisher_cold_1();
  }

  v1 = DPLogHandle_ServiceEventPublisher_handle;

  return v1;
}

id DPLogHandle_ServiceEventPublisherError()
{
  if (DPLogHandle_ServiceEventPublisherError_onceToken != -1)
  {
    DPLogHandle_ServiceEventPublisherError_cold_1();
  }

  v1 = DPLogHandle_ServiceEventPublisherError_handle;

  return v1;
}

id DPLogHandle_Telemetry()
{
  if (DPLogHandle_Telemetry_onceToken != -1)
  {
    DPLogHandle_Telemetry_cold_1();
  }

  v1 = DPLogHandle_Telemetry_handle;

  return v1;
}

id DPLogHandle_TaskingDSTelemetry()
{
  if (DPLogHandle_TaskingDSTelemetry_onceToken != -1)
  {
    DPLogHandle_TaskingDSTelemetry_cold_1();
  }

  v1 = DPLogHandle_TaskingDSTelemetry_handle;

  return v1;
}

id DPLogHandle_CKConfig()
{
  if (DPLogHandle_CKConfig_onceToken != -1)
  {
    DPLogHandle_CKConfig_cold_1();
  }

  v1 = DPLogHandle_CKConfig_handle;

  return v1;
}

id DPLogHandle_CKConfigError()
{
  if (DPLogHandle_CKConfigError_onceToken != -1)
  {
    DPLogHandle_CKConfigError_cold_1();
  }

  v1 = DPLogHandle_CKConfigError_handle;

  return v1;
}

id DPLogHandle_UploadSessionDate()
{
  if (DPLogHandle_UploadSessionDate_onceToken != -1)
  {
    DPLogHandle_UploadSessionDate_cold_1();
  }

  v1 = DPLogHandle_UploadSessionDate_handle;

  return v1;
}

id DPLogHandle_UploadSessionDateError()
{
  if (DPLogHandle_UploadSessionDateError_onceToken != -1)
  {
    DPLogHandle_UploadSessionDateError_cold_1();
  }

  v1 = DPLogHandle_UploadSessionDateError_handle;

  return v1;
}

id DPLogHandle_DPConfig()
{
  if (DPLogHandle_DPConfig_onceToken != -1)
  {
    DPLogHandle_DPConfig_cold_1();
  }

  v1 = DPLogHandle_DPConfig_handle;

  return v1;
}

id DPLogHandle_DPConfigError()
{
  if (DPLogHandle_DPConfigError_onceToken != -1)
  {
    DPLogHandle_DPConfigError_cold_1();
  }

  v1 = DPLogHandle_DPConfigError_handle;

  return v1;
}

id DPLogHandle_DRSConfig()
{
  if (DPLogHandle_DRSConfig_onceToken != -1)
  {
    DPLogHandle_DRSConfig_cold_1();
  }

  v1 = DPLogHandle_DRSConfig_handle;

  return v1;
}

id DPLogHandle_DRSConfigError()
{
  if (DPLogHandle_DRSConfigError_onceToken != -1)
  {
    DPLogHandle_DRSConfigError_cold_1();
  }

  v1 = DPLogHandle_DRSConfigError_handle;

  return v1;
}

__CFString *DRConfigCompletionTypeString(uint64_t a1)
{
  if (a1 <= 0x2000)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return @"TaskingDisabled";
      }

      if (a1 == 4097)
      {
        return @"NotComplete";
      }
    }

    else
    {
      if (!a1)
      {
        return @"Invalid";
      }

      if (a1 == 1)
      {
        return @"Rejected";
      }
    }

    return @"UnknownCompletionType";
  }

  if (a1 > 8194)
  {
    if (a1 == 8195)
    {
      return @"ExternallyCancelled";
    }

    if (a1 == 8196)
    {
      return @"ClientCompleted";
    }

    return @"UnknownCompletionType";
  }

  if (a1 == 8193)
  {
    return @"Invalidated";
  }

  else
  {
    return @"Expired";
  }
}

void sub_23295204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _base64EncodedMD5Digest(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = MEMORY[0x28223BE20]();
    v2 = [v1 UTF8String];
    v3 = [v1 lengthOfBytesUsingEncoding:4];

    CC_MD5(v2, v3, v8);
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:16];
    v5 = [v4 base64EncodedStringWithOptions:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_232953C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_232954078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2329545E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232954C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232955590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232955AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_232955D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2329566C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2329569CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t DRSProtoTaskingDeviceMetadataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(DRSProtoClientDeviceMetadata);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !DRSProtoClientDeviceMetadataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DRSProtoTaskingConfigReceiptReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(DRSProtoTaskingConfigMetadata);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !DRSProtoTaskingConfigMetadataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_2329592FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23295A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23295A940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _checkCancelNonNil(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v4))
    {
      v7 = 136446210;
      v8 = a2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSCancelTaskingMessageFailedInit", "nil '%{public}s' when trying to instantiate 'DRCancelTaskingMessage'", &v7, 0xCu);
    }
  }

  result = a1 != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23295B64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DRSTaskingSystemMessageFromJSONData(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v1 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a1 options:0 error:&v10];
  v2 = v10;
  if (v1)
  {
    v3 = DRSTaskingSystemMessageFromJSONDict(v1);
  }

  else
  {
    v4 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v4))
    {
      v5 = [v2 localizedDescription];
      v6 = v5;
      v7 = @"Unknown";
      if (v5)
      {
        v7 = v5;
      }

      *buf = 138543362;
      v12 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidJSONData", "Could not process JSON data due to error %{public}@", buf, 0xCu);
    }

    v3 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

id DRSTaskingSystemMessageFromJSONDict(void *a1)
{
  v1 = a1;
  if ([(DRSTaskingSystemMessage *)DRSTaskingMessage isJSONDictForClass:v1])
  {
    v2 = DRSTaskingMessage;
LABEL_7:
    v3 = [[v2 alloc] initWithJSONDict:v1];
    goto LABEL_8;
  }

  if ([(DRSTaskingSystemMessage *)DRSCancelTaskingMessage isJSONDictForClass:v1])
  {
    v2 = DRSCancelTaskingMessage;
    goto LABEL_7;
  }

  if ([(DRSTaskingSystemMessage *)DRSPopulationPingMessage isJSONDictForClass:v1])
  {
    v2 = DRSPopulationPingMessage;
    goto LABEL_7;
  }

  v5 = DPLogHandle_TaskingMessageError();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidJSONDict", "Unknown JSON message", v6, 2u);
  }

  v3 = 0;
LABEL_8:

  return v3;
}

NSObject *_dateFromJSONDict(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = MEMORY[0x277CBEAA8];
      [v2 doubleValue];
      v4 = [v3 dateWithTimeIntervalSince1970:?];
      v5 = v4;
      if (v4)
      {
        v5 = v4;
        v6 = v5;
      }

      else
      {
        v7 = DPLogHandle_TaskingMessageError();
        if (os_signpost_enabled(v7))
        {
          _os_signpost_emit_unreliably_with_name_impl();
        }

        v6 = 0;
      }
    }

    else
    {
      v5 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v5))
      {
        _os_signpost_emit_unreliably_with_name_impl();
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_23295C89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23295E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

id _dampeningManagerError(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a1;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"DRSDampeningManagerError" code:0 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_23295F418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232961574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2329641BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232964A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_232964E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_232965E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t RapidCloudFunctionServiceAPI.SubmitRapidPayloadOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB40, &qword_2329799E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_232968254(a1, v5, &qword_27DDBCB40, &qword_2329799E0);
  v7 = sub_232973B18();
  sub_2329682BC(a1, &qword_27DDBCB40, &qword_2329799E0);
  return v7;
}

uint64_t RapidCloudFunctionServiceAPI.SubmitRapidPayloadOperation.init(request:)(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB40, &qword_2329799E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_232968254(a1, &v6 - v3, &qword_27DDBCB40, &qword_2329799E0);
  v4 = sub_232973B18();
  sub_2329682BC(a1, &qword_27DDBCB40, &qword_2329799E0);
  return v4;
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

id RapidCloudFunctionServiceAPI.SubmitRapidPayloadOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RapidCloudFunctionServiceAPIAsync.submitRapidPayload(deviceMetadata:payloadMetadata:payloadDescription:uploadAttempts:payload:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a8;
  v22 = a7;
  v16 = type metadata accessor for RapidPayload(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = BYTE4(a4) & 1;
  v29 = a5;
  v30 = a6;
  sub_232967EA0();
  sub_232973C18();
  (*(a10 + 8))(v19, v22, v23, a9, a10);
  return sub_232968440(v19, type metadata accessor for RapidPayload);
}

uint64_t sub_2329678DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v55 = a5;
  v56 = a7;
  v46 = a6;
  v53 = a4;
  v49 = a1;
  v50 = a3;
  v48 = a2;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v54 = &v43 - v8;
  v9 = type metadata accessor for FileDescription(0);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - v16;
  v47 = type metadata accessor for RequestDescription(0);
  v18 = *(v47 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v47);
  v43 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v43 - v26;
  v28 = type metadata accessor for ClientDeviceMetadata(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v43 - v34;
  sub_232968254(v48, v27, &qword_27DDBCB58, &qword_232979AC8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_2329682BC(v27, &qword_27DDBCB58, &qword_232979AC8);
  }

  else
  {
    sub_232968370(v27, v35, type metadata accessor for ClientDeviceMetadata);
    sub_2329683D8(v35, v33, type metadata accessor for ClientDeviceMetadata);
    RapidPayload.deviceMetadata.setter(v33);
    sub_232968440(v35, type metadata accessor for ClientDeviceMetadata);
  }

  sub_232968254(v50, v17, &qword_27DDBCB50, &qword_232979AC0);
  if ((*(v18 + 48))(v17, 1, v47) == 1)
  {
    sub_2329682BC(v17, &qword_27DDBCB50, &qword_232979AC0);
  }

  else
  {
    sub_232968370(v17, v23, type metadata accessor for RequestDescription);
    v36 = v43;
    sub_2329683D8(v23, v43, type metadata accessor for RequestDescription);
    RapidPayload.payloadMetadata.setter(v36);
    sub_232968440(v23, type metadata accessor for RequestDescription);
  }

  v37 = v54;
  sub_232968254(v53, v54, &qword_27DDBCB48, &qword_232979AB8);
  if ((*(v51 + 48))(v37, 1, v52) != 1)
  {
    v40 = v44;
    sub_232968370(v37, v44, type metadata accessor for FileDescription);
    v41 = v45;
    sub_2329683D8(v40, v45, type metadata accessor for FileDescription);
    RapidPayload.payloadDescription.setter(v41);
    sub_232968440(v40, type metadata accessor for FileDescription);
    result = v55;
    v39 = v56;
    if ((v55 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_2329682BC(v37, &qword_27DDBCB48, &qword_232979AB8);
  result = v55;
  v39 = v56;
  if ((v55 & 0x100000000) == 0)
  {
LABEL_11:
    result = RapidPayload.uploadAttempts.setter(result);
  }

LABEL_12:
  if (v39 >> 60 != 15)
  {
    v42 = v46;
    sub_23296831C(v46, v39);
    return RapidPayload.payload.setter(v42, v39);
  }

  return result;
}

unint64_t sub_232967EA0()
{
  result = qword_2814D8FE0[0];
  if (!qword_2814D8FE0[0])
  {
    type metadata accessor for RapidPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814D8FE0);
  }

  return result;
}

uint64_t RapidCloudFunctionServiceAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void RapidCloudFunctionServiceAPIAsyncClient.submitRapidPayload(_:completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB40, &qword_2329799E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_2329683D8(a1, &v15 - v9, type metadata accessor for RapidPayload);
  v11 = type metadata accessor for RapidPayload(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for RapidCloudFunctionServiceAPI.SubmitRapidPayloadOperation());
  sub_232968254(v10, v8, &qword_27DDBCB40, &qword_2329799E0);
  v12 = sub_232973B18();
  sub_2329682BC(v10, &qword_27DDBCB40, &qword_2329799E0);
  v13 = v12;

  sub_232973B08();

  v14 = *(v2 + 16);
  sub_232973D08();
}

uint64_t type metadata accessor for RapidCloudFunctionServiceAPI.SubmitRapidPayloadOperation()
{
  result = qword_2814D99D0;
  if (!qword_2814D99D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RapidCloudFunctionServiceAPIAsyncClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_232968254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2329682BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23296831C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_232968370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2329683D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_232968440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DiagnosticPipelineRapidServiceFunctionsClient.Environment.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2329684DC()
{
  v1 = *v0;
  sub_232973D48();
  MEMORY[0x2383894E0](v1);
  return sub_232973D68();
}

uint64_t sub_232968550()
{
  v1 = *v0;
  sub_232973D48();
  MEMORY[0x2383894E0](v1);
  return sub_232973D68();
}

uint64_t *sub_232968594@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id DiagnosticPipelineRapidServiceFunctionsClient.init(environment:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DiagnosticPipelineRapidServiceFunctionsClientObjc_environment] = a1;
  if ((a1 - 1) >= 3)
  {
    result = sub_232973D38();
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR___DiagnosticPipelineRapidServiceFunctionsClientObjc_client] = sub_232969A08(1, a1 - 1);
    *&v1[OBJC_IVAR___DiagnosticPipelineRapidServiceFunctionsClientObjc_container] = v2;
    v4.receiver = v1;
    v4.super_class = type metadata accessor for DiagnosticPipelineRapidServiceFunctionsClient();
    return objc_msgSendSuper2(&v4, sel_init);
  }

  return result;
}

uint64_t DiagnosticPipelineRapidServiceFunctionsClient.submitRapidPayload(buildVariant:deviceCategory:deviceModel:platform:teamID:issueCategory:contextDictionaryData:requestTime:build:logType:logSize:fileName:uploadAttempts:payload:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v42 = a3;
  v43 = a4;
  v62 = a21;
  v61 = a20;
  v58 = a19;
  v57 = a18;
  v56 = a17;
  v55 = a16;
  v54 = a15;
  v53 = a14;
  v52 = a13;
  v51 = a12;
  v50 = a11;
  v49 = a10;
  v48 = a9;
  v59 = type metadata accessor for RapidPayload(0);
  v23 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FileDescription(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for RequestDescription(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ClientDeviceMetadata(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  v78 = a2;
  v79 = v42;
  v80 = v43;
  v81 = v44;
  v82 = v45;
  v83 = v46;
  v84 = v47;
  sub_232968FA4(qword_2814D8E10, type metadata accessor for ClientDeviceMetadata);
  sub_232973C18();
  v72 = v48;
  v73 = v49;
  v74 = v50;
  v75 = v51;
  v76 = v52;
  sub_232968FA4(qword_2814D9088, type metadata accessor for RequestDescription);
  sub_232973C18();
  v69 = v53;
  v70 = v54;
  v71 = v55;
  sub_232968FA4(qword_2814D8F40, type metadata accessor for FileDescription);
  sub_232973C18();
  v63 = v37;
  v64 = v33;
  v65 = v29;
  v66 = v56;
  v67 = v57;
  v68 = v58;
  sub_232968FA4(qword_2814D8FE0, type metadata accessor for RapidPayload);
  sub_232973C18();
  v38 = *(v60 + OBJC_IVAR___DiagnosticPipelineRapidServiceFunctionsClientObjc_client);
  v39 = swift_allocObject();
  *(v39 + 16) = v61;
  *(v39 + 24) = v62;
  v40 = *(*v38 + 96);

  v40(v25, sub_2329691B4, v39);

  sub_23296980C(v25, type metadata accessor for RapidPayload);
  sub_23296980C(v29, type metadata accessor for FileDescription);
  sub_23296980C(v33, type metadata accessor for RequestDescription);
  return sub_23296980C(v37, type metadata accessor for ClientDeviceMetadata);
}

uint64_t sub_232968BB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];

  ClientDeviceMetadata.buildVariant.setter(v1, v2);

  ClientDeviceMetadata.deviceCategory.setter(v3, v4);

  ClientDeviceMetadata.deviceModel.setter(v5, v6);

  return ClientDeviceMetadata.platform.setter(v8, v7);
}

uint64_t sub_232968C64()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[10];

  RequestDescription.teamID.setter(v1, v2);

  RequestDescription.issueCategory.setter(v4, v3);
  if (v6 >> 60 != 15)
  {
    sub_23296831C(v5, v6);
    RequestDescription.contextDictionaryData.setter(v5, v6);
  }

  RequestDescription.requestTime.setter(v8);

  return RequestDescription.build.setter(v7, v9);
}

uint64_t sub_232968D2C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];

  FileDescription.logType.setter(v1, v2);
  FileDescription.logSize.setter(v3);

  return FileDescription.fileName.setter(v4, v5);
}

uint64_t sub_232968DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7)
{
  v13 = type metadata accessor for FileDescription(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RequestDescription(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ClientDeviceMetadata(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23296986C(a2, v24, type metadata accessor for ClientDeviceMetadata);
  RapidPayload.deviceMetadata.setter(v24);
  sub_23296986C(a3, v20, type metadata accessor for RequestDescription);
  RapidPayload.payloadMetadata.setter(v20);
  sub_23296986C(a4, v16, type metadata accessor for FileDescription);
  RapidPayload.payloadDescription.setter(v16);
  RapidPayload.uploadAttempts.setter(a5);
  sub_23296831C(a6, a7);
  return RapidPayload.payload.setter(a6, a7);
}

uint64_t sub_232968FA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_232968FEC(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, id))
{
  v4 = type metadata accessor for RapidPayloadReply(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB80, &unk_232979BF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - v10);
  sub_232969738(a1, &v20 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11;
    a2(0, 0xF000000000000000, 0, 0, v12);
  }

  else
  {
    sub_2329697A8(v11, v7);
    v14 = RapidPayloadReply.replyPayload.getter();
    v16 = v15;
    if (RapidPayloadReply.hasFailureReason.getter())
    {
      v17 = RapidPayloadReply.failureReason.getter();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    a2(v14, v16, v17, v19, 0);

    sub_2329696D0(v14, v16);
    sub_23296980C(v7, type metadata accessor for RapidPayloadReply);
  }
}

void sub_232969484(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2 >> 60 != 15)
  {
    v9 = sub_232973AE8();
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  if (a4)
  {
LABEL_5:
    v8 = sub_232973CD8();
  }

LABEL_6:
  if (a5)
  {
    v10 = sub_232973AA8();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

id DiagnosticPipelineRapidServiceFunctionsClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticPipelineRapidServiceFunctionsClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticPipelineRapidServiceFunctionsClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_232969664()
{
  result = qword_27DDBCB78;
  if (!qword_27DDBCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBCB78);
  }

  return result;
}

uint64_t sub_2329696D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_232969724(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2329696D0(a1, a2);
  }

  return a1;
}

uint64_t sub_232969738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB80, &unk_232979BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2329697A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RapidPayloadReply(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23296980C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23296986C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

DiagnosticRequestService::RapidCloudFunctionServiceConnection::Environment_optional __swiftcall RapidCloudFunctionServiceConnection.Environment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * rawValue));
  }
}

uint64_t sub_232969914()
{
  v1 = *v0;
  sub_232973D48();
  MEMORY[0x2383894E0](v1 + 1);
  return sub_232973D68();
}

uint64_t sub_23296998C()
{
  v1 = *v0;
  sub_232973D48();
  MEMORY[0x2383894E0](v1 + 1);
  return sub_232973D68();
}

void *sub_2329699D0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_232969A08(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB88, &qword_232979C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (a2 == 1)
  {
    v9 = 6254687;
  }

  else
  {
    v9 = 6251615;
  }

  v23[0] = 0xD000000000000019;
  v23[1] = 0x8000000232980690;
  MEMORY[0x238389480](v9, 0xE300000000000000);

  MEMORY[0x238389480](0x302E302E31, 0xE500000000000000);

  v10 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v11 = sub_232973CD8();
  v12 = [v10 initWithContainerIdentifier:v11 environment:v8];

  v13 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  v14 = sub_232973CD8();
  v15 = [v13 codeServiceWithName:v14 databaseScope:a1];

  if (a2 != 2)
  {

    goto LABEL_11;
  }

  v16 = sub_232973CD8();
  sub_232973AC8();
  v17 = sub_232973AD8();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v7, 1, v17);
  if (result != 1)
  {

    v20 = sub_232973AB8();
    (*(v18 + 8))(v7, v17);
    v21 = [v13 codeServiceWithName:v16 serviceInstanceURL:v20];

    v15 = v21;
LABEL_11:
    type metadata accessor for RapidCloudFunctionServiceAPIAsyncClient();
    v22 = RapidCloudFunctionServiceAPIAsyncClient.__allocating_init(codeService:)(v15);

    return v22;
  }

  __break(1u);
  return result;
}

unint64_t sub_232969D08()
{
  result = qword_27DDBCB90;
  if (!qword_27DDBCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBCB90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RapidCloudFunctionServiceConnection.Environment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RapidCloudFunctionServiceConnection.Environment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t (*ClientDeviceMetadata.buildVariant.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ClientDeviceMetadata(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

uint64_t (*ClientDeviceMetadata.deviceCategory.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ClientDeviceMetadata(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

uint64_t (*ClientDeviceMetadata.deviceModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ClientDeviceMetadata(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

uint64_t ClientDeviceMetadata.platform.getter()
{
  v1 = (v0 + *(type metadata accessor for ClientDeviceMetadata(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ClientDeviceMetadata.platform.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClientDeviceMetadata(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ClientDeviceMetadata.platform.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ClientDeviceMetadata(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

Swift::Void __swiftcall ClientDeviceMetadata.clearPlatform()()
{
  v1 = (v0 + *(type metadata accessor for ClientDeviceMetadata(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

int *ClientDeviceMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for ClientDeviceMetadata(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_23296A4EC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_23296A580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*RequestDescription.teamID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for RequestDescription(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

uint64_t sub_23296A6C4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_23296A71C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_23296A790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*RequestDescription.issueCategory.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for RequestDescription(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23296A88C;
}

uint64_t sub_23296A8D8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_23296A930(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23296831C(a1, a2);
  }

  return a1;
}

uint64_t (*RequestDescription.contextDictionaryData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for RequestDescription(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23296A930(v5, v6);
  return sub_23296A9D0;
}

uint64_t RequestDescription.requestTime.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestDescription(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t RequestDescription.requestTime.setter(uint64_t a1)
{
  result = type metadata accessor for RequestDescription(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*RequestDescription.requestTime.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for RequestDescription(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_23296AAF4;
}

uint64_t sub_23296AAF4(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall RequestDescription.clearRequestTime()()
{
  v1 = v0 + *(type metadata accessor for RequestDescription(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t RequestDescription.build.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestDescription(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t RequestDescription.build.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RequestDescription(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*RequestDescription.build.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for RequestDescription(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

Swift::Void __swiftcall RequestDescription.clearBuild()()
{
  v1 = (v0 + *(type metadata accessor for RequestDescription(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

double RequestDescription.init()@<D0>(uint64_t a1@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for RequestDescription(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_232979D00;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t (*FileDescription.logType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FileDescription(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

uint64_t FileDescription.logSize.getter()
{
  v1 = (v0 + *(type metadata accessor for FileDescription(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t FileDescription.logSize.setter(uint64_t a1)
{
  result = type metadata accessor for FileDescription(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*FileDescription.logSize.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FileDescription(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_232972AC0;
}

Swift::Void __swiftcall FileDescription.clearLogSize()()
{
  v1 = v0 + *(type metadata accessor for FileDescription(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_23296B090(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_23296B104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*FileDescription.fileName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FileDescription(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

uint64_t sub_23296B248(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

int *FileDescription.init()@<X0>(uint64_t a1@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for FileDescription(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t RapidPayload.deviceMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for RapidPayload(0);
  sub_232968254(v1 + *(v7 + 20), v6, &qword_27DDBCB58, &qword_232979AC8);
  v8 = type metadata accessor for ClientDeviceMetadata(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_23296BB00(v6, a1, type metadata accessor for ClientDeviceMetadata);
  }

  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2329682BC(v6, &qword_27DDBCB58, &qword_232979AC8);
  }

  return result;
}

uint64_t RapidPayload.deviceMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RapidPayload(0) + 20);
  sub_2329682BC(v1 + v3, &qword_27DDBCB58, &qword_232979AC8);
  sub_23296BB00(a1, v1 + v3, type metadata accessor for ClientDeviceMetadata);
  v4 = type metadata accessor for ClientDeviceMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RapidPayload.deviceMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for ClientDeviceMetadata(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for RapidPayload(0) + 20);
  *(v5 + 12) = v15;
  sub_232968254(v1 + v15, v8, &qword_27DDBCB58, &qword_232979AC8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_2329682BC(v8, &qword_27DDBCB58, &qword_232979AC8);
    }
  }

  else
  {
    sub_23296BB00(v8, v14, type metadata accessor for ClientDeviceMetadata);
  }

  return sub_23296B7BC;
}

BOOL RapidPayload.hasDeviceMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for RapidPayload(0);
  sub_232968254(v0 + *(v5 + 20), v4, &qword_27DDBCB58, &qword_232979AC8);
  v6 = type metadata accessor for ClientDeviceMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_2329682BC(v4, &qword_27DDBCB58, &qword_232979AC8);
  return v7;
}

Swift::Void __swiftcall RapidPayload.clearDeviceMetadata()()
{
  v1 = *(type metadata accessor for RapidPayload(0) + 20);
  sub_2329682BC(v0 + v1, &qword_27DDBCB58, &qword_232979AC8);
  v2 = type metadata accessor for ClientDeviceMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t RapidPayload.payloadMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for RapidPayload(0);
  sub_232968254(v1 + *(v7 + 24), v6, &qword_27DDBCB50, &qword_232979AC0);
  v8 = type metadata accessor for RequestDescription(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_23296BB00(v6, a1, type metadata accessor for RequestDescription);
  }

  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v8[7]) = xmmword_232979D00;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2329682BC(v6, &qword_27DDBCB50, &qword_232979AC0);
  }

  return result;
}

uint64_t sub_23296BB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RapidPayload.payloadMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RapidPayload(0) + 24);
  sub_2329682BC(v1 + v3, &qword_27DDBCB50, &qword_232979AC0);
  sub_23296BB00(a1, v1 + v3, type metadata accessor for RequestDescription);
  v4 = type metadata accessor for RequestDescription(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RapidPayload.payloadMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for RequestDescription(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for RapidPayload(0) + 24);
  *(v5 + 12) = v15;
  sub_232968254(v1 + v15, v8, &qword_27DDBCB50, &qword_232979AC0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    *(v14 + v9[7]) = xmmword_232979D00;
    v19 = v14 + v9[8];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = (v14 + v9[9]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_2329682BC(v8, &qword_27DDBCB50, &qword_232979AC0);
    }
  }

  else
  {
    sub_23296BB00(v8, v14, type metadata accessor for RequestDescription);
  }

  return sub_23296BE74;
}

uint64_t sub_23296BE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23296BF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL RapidPayload.hasPayloadMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for RapidPayload(0);
  sub_232968254(v0 + *(v5 + 24), v4, &qword_27DDBCB50, &qword_232979AC0);
  v6 = type metadata accessor for RequestDescription(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_2329682BC(v4, &qword_27DDBCB50, &qword_232979AC0);
  return v7;
}

Swift::Void __swiftcall RapidPayload.clearPayloadMetadata()()
{
  v1 = *(type metadata accessor for RapidPayload(0) + 24);
  sub_2329682BC(v0 + v1, &qword_27DDBCB50, &qword_232979AC0);
  v2 = type metadata accessor for RequestDescription(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t RapidPayload.payloadDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for RapidPayload(0);
  sub_232968254(v1 + *(v7 + 28), v6, &qword_27DDBCB48, &qword_232979AB8);
  v8 = type metadata accessor for FileDescription(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_23296BB00(v6, a1, type metadata accessor for FileDescription);
  }

  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2329682BC(v6, &qword_27DDBCB48, &qword_232979AB8);
  }

  return result;
}

uint64_t RapidPayload.payloadDescription.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RapidPayload(0) + 28);
  sub_2329682BC(v1 + v3, &qword_27DDBCB48, &qword_232979AB8);
  sub_23296BB00(a1, v1 + v3, type metadata accessor for FileDescription);
  v4 = type metadata accessor for FileDescription(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RapidPayload.payloadDescription.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for FileDescription(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for RapidPayload(0) + 28);
  *(v5 + 12) = v15;
  sub_232968254(v1 + v15, v8, &qword_27DDBCB48, &qword_232979AB8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_2329682BC(v8, &qword_27DDBCB48, &qword_232979AB8);
    }
  }

  else
  {
    sub_23296BB00(v8, v14, type metadata accessor for FileDescription);
  }

  return sub_23296C554;
}

void sub_23296C57C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_23296BE9C(v11, v10, a5);
    sub_2329682BC(v14 + v9, a3, a4);
    sub_23296BB00(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_23296BF04(v11, a5);
  }

  else
  {
    sub_2329682BC(v14 + v9, a3, a4);
    sub_23296BB00(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL RapidPayload.hasPayloadDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for RapidPayload(0);
  sub_232968254(v0 + *(v5 + 28), v4, &qword_27DDBCB48, &qword_232979AB8);
  v6 = type metadata accessor for FileDescription(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_2329682BC(v4, &qword_27DDBCB48, &qword_232979AB8);
  return v7;
}

Swift::Void __swiftcall RapidPayload.clearPayloadDescription()()
{
  v1 = *(type metadata accessor for RapidPayload(0) + 28);
  sub_2329682BC(v0 + v1, &qword_27DDBCB48, &qword_232979AB8);
  v2 = type metadata accessor for FileDescription(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t RapidPayload.uploadAttempts.getter()
{
  v1 = (v0 + *(type metadata accessor for RapidPayload(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t RapidPayload.uploadAttempts.setter(int a1)
{
  result = type metadata accessor for RapidPayload(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*RapidPayload.uploadAttempts.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RapidPayload(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_23296C908;
}

uint64_t sub_23296C908(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall RapidPayload.clearUploadAttempts()()
{
  v1 = v0 + *(type metadata accessor for RapidPayload(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t RapidPayload.payload.getter()
{
  v1 = (v0 + *(type metadata accessor for RapidPayload(0) + 36));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_23296A930(*v1, v2);
  return v3;
}

uint64_t RapidPayload.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RapidPayload(0) + 36);
  result = sub_232969724(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*RapidPayload.payload.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for RapidPayload(0) + 36);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23296A930(v5, v6);
  return sub_232972AA4;
}

Swift::Void __swiftcall RapidPayload.clearPayload()()
{
  v1 = v0 + *(type metadata accessor for RapidPayload(0) + 36);
  sub_232969724(*v1, *(v1 + 8));
  *v1 = xmmword_232979D00;
}

double RapidPayload.init()@<D0>(uint64_t a1@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for RapidPayload(0);
  v3 = v2[5];
  v4 = type metadata accessor for ClientDeviceMetadata(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for RequestDescription(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for FileDescription(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[8];
  *v9 = 0;
  *(v9 + 4) = 1;
  result = 0.0;
  *(a1 + v2[9]) = xmmword_232979D00;
  return result;
}

uint64_t sub_23296CC7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_23296CD78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RapidPayloadReply.success.setter(char a1)
{
  result = type metadata accessor for RapidPayloadReply(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*RapidPayloadReply.success.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RapidPayloadReply(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_23296CE3C;
}

uint64_t (*RapidPayloadReply.failureReason.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for RapidPayloadReply(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_232972A90;
}

void sub_23296CF84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t sub_23296D06C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >> 60 != 15)
  {
    v5 = v2[1];
  }

  sub_23296A930(*v2, v3);
  return v4;
}

uint64_t sub_23296D0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 28);
  result = sub_232969724(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*RapidPayloadReply.replyPayload.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for RapidPayloadReply(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23296A930(v5, v6);
  return sub_232972AA4;
}

uint64_t sub_23296D19C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_23296831C(*a1, v2);
    sub_232969724(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_2329696D0(v4, v2);
  }

  else
  {
    result = sub_232969724(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

double sub_23296D284(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  sub_232969724(*v2, *(v2 + 8));
  result = 0.0;
  *v2 = xmmword_232979D00;
  return result;
}

uint64_t _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_232973B48();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_232973B48();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double RapidPayloadReply.init()@<D0>(uint64_t a1@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for RapidPayloadReply(0);
  *(a1 + v2[5]) = 2;
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_232979D00;
  return result;
}

uint64_t sub_23296D458()
{
  v0 = sub_232973CA8();
  __swift_allocate_value_buffer(v0, static ClientDeviceMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ClientDeviceMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC20, &qword_23297A508);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC28, &qword_23297A510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232979D10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "build_variant";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_232973C88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "device_category";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device_model";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "platform";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  return sub_232973C98();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ClientDeviceMetadata.decodeMessage<A>(decoder:)()
{
  result = sub_232973B78();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for ClientDeviceMetadata(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_13;
          }

          v3 = v0;
          v5 = *(type metadata accessor for ClientDeviceMetadata(0) + 32);
        }
      }

      else if (result == 1)
      {
        v3 = v0;
        v6 = *(type metadata accessor for ClientDeviceMetadata(0) + 20);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_13;
        }

        v3 = v0;
        v4 = *(type metadata accessor for ClientDeviceMetadata(0) + 24);
      }

      v0 = v3;
      sub_232973BA8();
LABEL_13:
      result = sub_232973B78();
    }
  }

  return result;
}

uint64_t ClientDeviceMetadata.traverse<A>(visitor:)()
{
  result = type metadata accessor for ClientDeviceMetadata(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_232973C48();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    sub_232973C48();
  }

  v8 = (v0 + v3[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_232973C48();
  }

  v10 = (v0 + v3[8]);
  if (v10[1])
  {
    v11 = *v10;
    sub_232973C48();
  }

  return sub_232973B28();
}

uint64_t sub_23296D970@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_23296DA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232971CB4(&qword_27DDBCC10, type metadata accessor for ClientDeviceMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23296DACC(uint64_t a1)
{
  v2 = sub_232971CB4(qword_2814D8E10, type metadata accessor for ClientDeviceMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23296DB38()
{
  sub_232971CB4(qword_2814D8E10, type metadata accessor for ClientDeviceMetadata);

  return sub_232973C08();
}

uint64_t sub_23296DBE0()
{
  v0 = sub_232973CA8();
  __swift_allocate_value_buffer(v0, static RequestDescription._protobuf_nameMap);
  __swift_project_value_buffer(v0, static RequestDescription._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC20, &qword_23297A508);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC28, &qword_23297A510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232979D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "team_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_232973C88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "issue_category";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "context_dictionary_data";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_time";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "build";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x277D21870];
  v9();
  return sub_232973C98();
}

uint64_t RequestDescription.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_232973B78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v1 = *(type metadata accessor for RequestDescription(0) + 20);
        goto LABEL_3;
      }

      if (result == 2)
      {
        v5 = *(type metadata accessor for RequestDescription(0) + 24);
LABEL_3:
        v0 = 0;
        sub_232973BA8();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v6 = *(type metadata accessor for RequestDescription(0) + 28);
          sub_232973B98();
          break;
        case 4:
          v7 = *(type metadata accessor for RequestDescription(0) + 32);
          sub_232973BC8();
          break;
        case 5:
          v4 = *(type metadata accessor for RequestDescription(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t RequestDescription.traverse<A>(visitor:)()
{
  result = type metadata accessor for RequestDescription(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_232973C48();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    sub_232973C48();
  }

  v8 = v0 + v3[7];
  v9 = *(v8 + 8);
  if (v9 >> 60 != 15)
  {
    v10 = *v8;
    sub_23296831C(*v8, *(v8 + 8));
    sub_232973C38();
    sub_232969724(v10, v9);
  }

  v11 = v0 + v3[8];
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *v11;
    sub_232973C68();
  }

  sub_23296E160(v0);
  return sub_232973B28();
}

uint64_t sub_23296E160(uint64_t a1)
{
  result = type metadata accessor for RequestDescription(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232973C48();
  }

  return result;
}

double sub_23296E224@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  v8 = a1[8];
  *(a2 + a1[7]) = xmmword_232979D00;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_23296E2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232971CB4(&qword_27DDBCC08, type metadata accessor for RequestDescription);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23296E378(uint64_t a1)
{
  v2 = sub_232971CB4(qword_2814D9088, type metadata accessor for RequestDescription);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23296E3E4()
{
  sub_232971CB4(qword_2814D9088, type metadata accessor for RequestDescription);

  return sub_232973C08();
}

uint64_t sub_23296E494()
{
  v0 = sub_232973CA8();
  __swift_allocate_value_buffer(v0, static FileDescription._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FileDescription._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC20, &qword_23297A508);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC28, &qword_23297A510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232979D30;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "log_type";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_232973C88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "log_size";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "file_name";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_232973C98();
}

uint64_t FileDescription.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_232973B78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for FileDescription(0) + 28);
LABEL_10:
        v0 = 0;
        sub_232973BA8();
        break;
      case 2:
        v1 = *(type metadata accessor for FileDescription(0) + 24);
        sub_232973BC8();
        break;
      case 1:
        v4 = *(type metadata accessor for FileDescription(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t FileDescription.traverse<A>(visitor:)()
{
  result = type metadata accessor for FileDescription(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_232973C48();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + *(v3 + 24));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_232973C68();
  }

  v8 = (v0 + *(v3 + 28));
  if (v8[1])
  {
    v9 = *v8;
    sub_232973C48();
  }

  return sub_232973B28();
}

uint64_t sub_23296E8FC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_23296E9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232971CB4(&qword_27DDBCC00, type metadata accessor for FileDescription);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23296EA40(uint64_t a1)
{
  v2 = sub_232971CB4(qword_2814D8F40, type metadata accessor for FileDescription);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23296EAAC()
{
  sub_232971CB4(qword_2814D8F40, type metadata accessor for FileDescription);

  return sub_232973C08();
}

uint64_t sub_23296EB58()
{
  v0 = sub_232973CA8();
  __swift_allocate_value_buffer(v0, static RapidPayload._protobuf_nameMap);
  __swift_project_value_buffer(v0, static RapidPayload._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC20, &qword_23297A508);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC28, &qword_23297A510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232979D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "device_metadata";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_232973C88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload_metadata";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "payload_description";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "upload_attempts";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "payload";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x277D21870];
  v9();
  return sub_232973C98();
}

uint64_t RapidPayload.decodeMessage<A>(decoder:)()
{
  result = sub_232973B78();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v10 = *(type metadata accessor for RapidPayload(0) + 20);
          type metadata accessor for ClientDeviceMetadata(0);
          v5 = type metadata accessor for ClientDeviceMetadata;
          v6 = qword_2814D8E10;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          v8 = *(type metadata accessor for RapidPayload(0) + 24);
          type metadata accessor for RequestDescription(0);
          v5 = type metadata accessor for RequestDescription;
          v6 = qword_2814D9088;
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for RapidPayload(0) + 28);
            type metadata accessor for FileDescription(0);
            v5 = type metadata accessor for FileDescription;
            v6 = qword_2814D8F40;
LABEL_5:
            sub_232971CB4(v6, v5);
            v0 = v3;
            sub_232973BD8();
            break;
          case 4:
            v9 = *(type metadata accessor for RapidPayload(0) + 32);
            sub_232973BB8();
            break;
          case 5:
            v7 = *(type metadata accessor for RapidPayload(0) + 36);
            sub_232973B98();
            break;
        }
      }

      result = sub_232973B78();
    }
  }

  return result;
}