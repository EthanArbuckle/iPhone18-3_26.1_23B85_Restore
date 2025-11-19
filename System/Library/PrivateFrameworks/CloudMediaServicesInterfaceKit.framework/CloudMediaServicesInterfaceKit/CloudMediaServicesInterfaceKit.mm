uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void applyHeaderOverrides(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __applyHeaderOverrides_block_invoke;
  v5[3] = &unk_278DDCA40;
  v6 = v3;
  v4 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];
}

void __applyHeaderOverrides_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = _CMSILogingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __applyHeaderOverrides_block_invoke_cold_3();
    }

    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = headerStringFormat(v6);
    if (v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = &stru_2856A7BB0;
    }

    [*(a1 + 32) setValue:v16 forHTTPHeaderField:v5];
    goto LABEL_28;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [(__CFString *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9;
  v11 = *v20;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = _CMSILogingFacility();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __applyHeaderOverrides_block_invoke_cold_2();
        }

        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = _CMSILogingFacility();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __applyHeaderOverrides_block_invoke_cold_1();
        }

LABEL_27:

        goto LABEL_28;
      }

      v14 = headerStringFormat(v13);
      v15 = *(a1 + 32);
      if (v14)
      {
        [v15 addValue:v14 forHTTPHeaderField:v5];
      }

      else
      {
        [v15 setValue:&stru_2856A7BB0 forHTTPHeaderField:{v5, v19}];
      }
    }

    v10 = [(__CFString *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_28:

LABEL_29:
  v18 = *MEMORY[0x277D85DE8];
}

__CFString *headerStringFormat(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v1;
      TypeID = CFBooleanGetTypeID();
      if (CFGetTypeID(v3) == TypeID)
      {
        v5 = [v3 BOOLValue];
        v6 = @"false";
        if (v5)
        {
          v6 = @"true";
        }

        v7 = v6;
      }

      else
      {
        v7 = [v3 stringValue];
      }

      v2 = v7;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id cmsDateFormatter()
{
  if (cmsDateFormatter_onceToken != -1)
  {
    cmsDateFormatter_cold_1();
  }

  v1 = cmsDateFormatter_formatter;

  return v1;
}

uint64_t __cmsDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = cmsDateFormatter_formatter;
  cmsDateFormatter_formatter = v0;

  v2 = cmsDateFormatter_formatter;

  return [v2 setFormatOptions:1907];
}

id cmsSafeDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id cmsDateCalender()
{
  if (cmsDateCalender_onceToken != -1)
  {
    cmsDateCalender_cold_1();
  }

  v1 = cmsDateCalender_gregorian;

  return v1;
}

id _userInfoValueToJSONValue(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB68] null];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 absoluteString];
LABEL_8:
    v4 = v3;

    v2 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 UUIDString];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = v1;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cmsDateFormatter();
    v8 = [v7 stringFromDate:v1];
LABEL_14:
    v9 = v8;

LABEL_15:
    v2 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 base64EncodedStringWithOptions:0];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v1;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = _userInfoValueToJSONValue(*(*(&v34 + 1) + 8 * i));
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    v2 = v18;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = v1;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = _userInfoValueToJSONValue(*(*(&v30 + 1) + 8 * j));
            [v7 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v21);
      }

      v8 = [v7 copy];
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = MEMORY[0x277CBEB38];
      v26 = v1;
      v27 = [v25 dictionaryWithCapacity:{objc_msgSend(v26, "count")}];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = ___userInfoValueToJSONValue_block_invoke;
      v28[3] = &unk_278DDCC18;
      v29 = v27;
      v7 = v27;
      [v26 enumerateKeysAndObjectsUsingBlock:v28];

      v9 = [v7 copy];
      goto LABEL_15;
    }
  }

LABEL_9:

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

id _JSONValueToUserInfoValue(void *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 cmsOptionalStringForKey:@"$typ"];
    v4 = [v2 objectForKey:@"$val"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v4 || [v2 count] != 2)
    {
      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v3 isEqualToString:@"url"])
      {
        v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
LABEL_31:
        v13 = v6;
        goto LABEL_37;
      }

      if ([v3 isEqualToString:@"uuid"])
      {
        v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
        goto LABEL_31;
      }

      if ([v3 isEqualToString:@"date"])
      {
        v22 = cmsDateFormatter();
        v13 = [v22 dateFromString:v5];

        goto LABEL_37;
      }

      if ([v3 isEqualToString:@"data"])
      {
        v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
        goto LABEL_31;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_38;
      }

      v5 = v4;
      if ([v3 isEqualToString:@"set"])
      {
        v15 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v28 = v5;
        v16 = v5;
        v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v36;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = _JSONValueToUserInfoValue(*(*(&v35 + 1) + 8 * i));
              [v15 addObject:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v18);
        }

        v13 = [v15 copy];
        v5 = v28;
LABEL_37:

        if (v13)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_38:
        v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = ___JSONValueToUserInfoValue_block_invoke;
        v33[3] = &unk_278DDCC18;
        v34 = v23;
        v24 = v23;
        [v2 enumerateKeysAndObjectsUsingBlock:v33];
        v13 = [v24 copy];

        goto LABEL_39;
      }
    }

    v13 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v1;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = _JSONValueToUserInfoValue(*(*(&v29 + 1) + 8 * j));
          [v2 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v9);
    }

    v13 = [v2 copy];
LABEL_40:

    if (v13)
    {
      goto LABEL_41;
    }

LABEL_18:
    v14 = [MEMORY[0x277CBEB68] null];
    goto LABEL_42;
  }

  v13 = v1;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_41:
  v14 = v13;
LABEL_42:
  v25 = v14;

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t INIntentHandlingStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ready"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"inProgress"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"success"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"failure"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"deferredToApplication"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"userConfirmationRequired"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *INIntentHandlingStatusToString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCC38[a1];
  }

  return v2;
}

uint64_t INInteractionDirectionFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"outgoing"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"incoming"])
  {
    v2 = 2;
  }

  else
  {
    [v1 isEqualToString:@"unspecified"];
    v2 = 0;
  }

  return v2;
}

__CFString *INInteractionDirectionToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCC70[a1];
  }

  return v2;
}

uint64_t INRecurrenceFrequencyFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"minute"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"hourly"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"daily"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"weekly"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"monthly"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"yearly"])
  {
    v2 = 6;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 0;
  }

  return v2;
}

__CFString *INRecurrenceFrequencyToString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCC88[a1];
  }

  return v2;
}

uint64_t INMediaItemTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"song"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"album"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"artist"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"genre"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"playlist"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"podcastShow"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"podcastEpisode"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"podcastPlaylist"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"musicStation"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"audioBook"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"movie"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"tvShow"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"tvShowEpisode"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"musicVideo"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"podcastStation"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"radioStation"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"station"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"music"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"algorithmicRadioStation"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"news"])
  {
    v2 = 20;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 0;
  }

  return v2;
}

__CFString *INMediaItemTypeToString(unint64_t a1)
{
  if (a1 >= 0x15)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCCC0[a1];
  }

  return v2;
}

uint64_t INMediaReferenceFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"currentlyPlaying"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"my"])
  {
    v2 = 2;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 0;
  }

  return v2;
}

__CFString *INMediaReferenceToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCD68[a1];
  }

  return v2;
}

uint64_t INMediaSortOrderFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"newest"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"oldest"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"best"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"worst"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"popular"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"unpopular"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"trending"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"recommended"])
  {
    v2 = 8;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 0;
  }

  return v2;
}

__CFString *INMediaSortOrderToString(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCD80[a1];
  }

  return v2;
}

uint64_t INMediaDestinationTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"library"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"playlist"])
  {
    v2 = 2;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 0;
  }

  return v2;
}

__CFString *INMediaDestinationTypeToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCDC8[a1];
  }

  return v2;
}

uint64_t INPlaybackRepeatModeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"none"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"all"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"one"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *INPlaybackRepeatModeToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCDE0[a1];
  }

  return v2;
}

uint64_t INPlaybackQueueLocationFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"now"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"next"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"later"])
  {
    v2 = 3;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 0;
  }

  return v2;
}

__CFString *INPlaybackQueueLocationToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCE00[a1];
  }

  return v2;
}

uint64_t INPlayMediaIntentResponseCodeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ready"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"continueInApp"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"inProgress"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"success"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"handleInApp"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"failure"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"failureRequiringAppLaunch"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"failureUnknownMediaType"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"failureNoUnplayedContent"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"failureRestrictedContent"])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *INPlayMediaIntentResponseCodeToString(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCE20[a1];
  }

  return v2;
}

uint64_t INAddMediaIntentResponseCodeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ready"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"inProgress"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"success"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"handleInApp"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Failure"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"FailureRequiringAppLaunch"])
  {
    v2 = 6;
  }

  else
  {
    [v1 isEqualToString:@"unspecified"];
    v2 = 0;
  }

  return v2;
}

__CFString *INAddMediaIntentResponseCodeToString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCE80[a1];
  }

  return v2;
}

uint64_t INMediaAffinityTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"like"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"dislike"])
  {
    v2 = 2;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 0;
  }

  return v2;
}

__CFString *INMediaAffinityTypeToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCEB8[a1];
  }

  return v2;
}

uint64_t INUpdateMediaAffinityIntentResponseCodeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ready"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"inProgress"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"success"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"failure"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"failureRequiringAppLaunch"])
  {
    v2 = 5;
  }

  else
  {
    [v1 isEqualToString:@"unspecified"];
    v2 = 0;
  }

  return v2;
}

__CFString *INUpdateMediaAffinityIntentResponseCodeToString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  else
  {
    v2 = off_278DDCED0[a1];
  }

  return v2;
}

uint64_t INAddMediaMediaDestinationUnsupportedReasonFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"playlistNameNotFound"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"playlistNotEditable"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

__CFString *INAddMediaMediaDestinationUnsupportedReasonToString(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = @"playlistNotEditable";
  }

  else if (a1 == 1)
  {
    v2 = @"playlistNameNotFound";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"##%ld##", a1];
  }

  return v2;
}

uint64_t __cmsDateCalender_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  cmsDateCalender_gregorian = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

  return MEMORY[0x2821F96F8]();
}

void ___userInfoValueToJSONValue_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = _userInfoValueToJSONValue(a3);
  [v4 setValue:v6 forKey:v5];
}

id CreateDataWithSerializedJSON(void *a1, void *a2)
{
  v3 = a1;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v3])
  {
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:0 error:a2];
  }

  else
  {
    v5 = _CMSILogingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CreateDataWithSerializedJSON_cold_1();
    }

    if (a2)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:13 userInfo:0];
      *a2 = v4 = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_2439BB3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2439BBE90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

BOOL _isValidMethod(void *a1)
{
  v1 = CMSExtensionEndpointForProtocolMethodName(a1);
  v2 = v1 != 0;

  return v2;
}

void sub_2439BD150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2439C0C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id nwActivityFromUUID(void *a1)
{
  v3[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3[0] = 0;
    v3[1] = 0;
    [a1 getUUIDBytes:v3];
    a1 = nw_activity_create_from_token();
  }

  v1 = *MEMORY[0x277D85DE8];

  return a1;
}

__CFString *CMSActivityReportTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0x12)
  {
    return @"local.report.undefined";
  }

  else
  {
    return off_278DDD2D0[a1 - 1];
  }
}

__CFString *CMSActivityTransitionTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"undefined";
  }

  else
  {
    return off_278DDD368[a1];
  }
}

id CMSCloudExtensionLanguageCode()
{
  if (CMSCloudExtensionLanguageCode_onceToken != -1)
  {
    CMSCloudExtensionLanguageCode_cold_1();
  }

  v1 = CMSCloudExtensionLanguageCode_languageCode;

  return v1;
}

void __CMSCloudExtensionLanguageCode_block_invoke()
{
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v0 = MEMORY[0x277CCACA8];
  v1 = [v5 languageCode];
  v2 = [v5 countryCode];
  v3 = [v0 stringWithFormat:@"%@-%@", v1, v2];
  v4 = CMSCloudExtensionLanguageCode_languageCode;
  CMSCloudExtensionLanguageCode_languageCode = v3;
}

id CMSCreateCloudExtensionHTTPRequest(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = MEMORY[0x277CCAB70];
  v10 = a1;
  v11 = [[v9 alloc] initWithURL:v10 cachePolicy:a3 timeoutInterval:6.0];

  [v11 setValue:@"AppleCloudExtension/1.1.0" forHTTPHeaderField:@"User-Agent"];
  if (v7)
  {
    [v11 setValue:v7 forHTTPHeaderField:@"Authorization"];
  }

  if (v8)
  {
    [v11 setValue:v8 forHTTPHeaderField:@"x-com-apple-cloudextension-session"];
  }

  return v11;
}

id CMSExtensionEndpointForProtocolMethodName(void *a1)
{
  v1 = CMSExtensionEndpointForProtocolMethodName_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CMSExtensionEndpointForProtocolMethodName_cold_1();
  }

  v3 = [CMSExtensionEndpointForProtocolMethodName_methodNameToEndpointMapping objectForKeyedSubscript:v2];

  return v3;
}

void __CMSExtensionEndpointForProtocolMethodName_block_invoke()
{
  v4[16] = *MEMORY[0x277D85DE8];
  v3[0] = @"PlayMediaIntentHandling.resolveMediaItems";
  v3[1] = @"PlayMediaIntentHandling.resolvePlayShuffled";
  v4[0] = @"intent/playMedia";
  v4[1] = @"intent/playMedia";
  v3[2] = @"PlayMediaIntentHandling.resolvePlaybackQueueLocation";
  v3[3] = @"PlayMediaIntentHandling.resolvePlaybackRepeatMode";
  v4[2] = @"intent/playMedia";
  v4[3] = @"intent/playMedia";
  v3[4] = @"PlayMediaIntentHandling.resolvePlaybackSpeed";
  v3[5] = @"PlayMediaIntentHandling.resolveResumePlayback";
  v4[4] = @"intent/playMedia";
  v4[5] = @"intent/playMedia";
  v3[6] = @"PlayMediaIntentHandling.confirm";
  v3[7] = @"PlayMediaIntentHandling.handle";
  v4[6] = @"intent/playMedia";
  v4[7] = @"intent/playMedia";
  v3[8] = @"AddMediaIntentHandling.resolveMediaItems";
  v3[9] = @"AddMediaIntentHandling.resolveMediaDestination";
  v4[8] = @"intent/addMedia";
  v4[9] = @"intent/addMedia";
  v3[10] = @"AddMediaIntentHandling.confirm";
  v3[11] = @"AddMediaIntentHandling.handle";
  v4[10] = @"intent/addMedia";
  v4[11] = @"intent/addMedia";
  v3[12] = @"UpdateMediaAffinityIntentHandling.resolveMediaItems";
  v3[13] = @"UpdateMediaAffinityIntentHandling.resolveAffinityType";
  v4[12] = @"intent/updateMediaAffinity";
  v4[13] = @"intent/updateMediaAffinity";
  v3[14] = @"UpdateMediaAffinityIntentHandling.confirm";
  v3[15] = @"UpdateMediaAffinityIntentHandling.handle";
  v4[14] = @"intent/updateMediaAffinity";
  v4[15] = @"intent/updateMediaAffinity";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:16];
  v1 = CMSExtensionEndpointForProtocolMethodName_methodNameToEndpointMapping;
  CMSExtensionEndpointForProtocolMethodName_methodNameToEndpointMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

id CMSProtocolNameForExtensionEndpoint(void *a1)
{
  v1 = CMSProtocolNameForExtensionEndpoint_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CMSProtocolNameForExtensionEndpoint_cold_1();
  }

  v3 = [CMSProtocolNameForExtensionEndpoint_nameMapping objectForKeyedSubscript:v2];

  return v3;
}

void __CMSProtocolNameForExtensionEndpoint_block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"intent/playMedia";
  v3[1] = @"intent/addMedia";
  v4[0] = @"PlayMediaIntentHandling";
  v4[1] = @"AddMediaIntentHandling";
  v3[2] = @"intent/updateMediaAffinity";
  v4[2] = @"UpdateMediaAffinityIntentHandling";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = CMSProtocolNameForExtensionEndpoint_nameMapping;
  CMSProtocolNameForExtensionEndpoint_nameMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

id CMSPredictedMethodNameForElidingMethod(void *a1)
{
  v1 = CMSPredictedMethodNameForElidingMethod_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CMSPredictedMethodNameForElidingMethod_cold_1();
  }

  v3 = [CMSPredictedMethodNameForElidingMethod_predictionDependencies objectForKeyedSubscript:v2];

  return v3;
}

void __CMSPredictedMethodNameForElidingMethod_block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"PlayMediaIntentHandling.resolvePlayShuffled";
  v3[1] = @"PlayMediaIntentHandling.resolvePlaybackQueueLocation";
  v4[0] = @"PlayMediaIntentHandling.handle";
  v4[1] = @"PlayMediaIntentHandling.handle";
  v3[2] = @"PlayMediaIntentHandling.resolvePlaybackRepeatMode";
  v3[3] = @"PlayMediaIntentHandling.resolvePlaybackSpeed";
  v4[2] = @"PlayMediaIntentHandling.handle";
  v4[3] = @"PlayMediaIntentHandling.handle";
  v3[4] = @"PlayMediaIntentHandling.resolveResumePlayback";
  v3[5] = @"AddMediaIntentHandling.resolveMediaDestination";
  v4[4] = @"PlayMediaIntentHandling.handle";
  v4[5] = @"AddMediaIntentHandling.handle";
  v3[6] = @"UpdateMediaAffinityIntentHandling.resolveAffinityType";
  v4[6] = @"UpdateMediaAffinityIntentHandling.handle";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = CMSPredictedMethodNameForElidingMethod_predictionDependencies;
  CMSPredictedMethodNameForElidingMethod_predictionDependencies = v0;

  v2 = *MEMORY[0x277D85DE8];
}

id _CMSILogingFacility()
{
  if (_CMSILogingFacility_onceToken != -1)
  {
    _CMSILogingFacility_cold_1();
  }

  v1 = _CMSILogingFacility_oslog;

  return v1;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

void __applyHeaderOverrides_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2439AD000, v0, v1, "Unexpected array in header value list: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __applyHeaderOverrides_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2439AD000, v0, v1, "Unexpected dictionary in header value list: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __applyHeaderOverrides_block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2439AD000, v0, v1, "Unexpected dictionary in header map: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void CreateDataWithSerializedJSON_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}