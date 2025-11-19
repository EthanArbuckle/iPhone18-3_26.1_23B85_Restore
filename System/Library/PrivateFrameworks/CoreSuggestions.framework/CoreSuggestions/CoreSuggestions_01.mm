uint64_t tagsToEventCategory(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (tagsToEventCategory__pasOnceToken9 != -1)
  {
    dispatch_once(&tagsToEventCategory__pasOnceToken9, &__block_literal_global_289);
  }

  v2 = tagsToEventCategory__pasExprOnceResult;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 9;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v2 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v9)
        {
          v10 = v9;
          v7 = *[v9 pointerValue];

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 9;
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t tagsToEventExtraction(void *a1)
{
  v1 = a1;
  v2 = +[SGEntityTag fromCalendarAttachment];
  v3 = [v2 name];
  v4 = [v1 containsObject:v3];

  return v4 ^ 1u;
}

void __tagsToEventCategory_block_invoke()
{
  v38[11] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v35 = +[SGEntityTag extractedFlight];
  v34 = [v35 name];
  v37[0] = v34;
  v33 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryFlight];
  v38[0] = v33;
  v32 = +[SGEntityTag extractedBus];
  v31 = [v32 name];
  v37[1] = v31;
  v30 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryBus];
  v38[1] = v30;
  v29 = +[SGEntityTag extractedTrain];
  v28 = [v29 name];
  v37[2] = v28;
  v27 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryTrain];
  v38[2] = v27;
  v26 = +[SGEntityTag extractedBoat];
  v25 = [v26 name];
  v37[3] = v25;
  v24 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryBoat];
  v38[3] = v24;
  v23 = +[SGEntityTag extractedHotel];
  v22 = [v23 name];
  v37[4] = v22;
  v21 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryHotel];
  v38[4] = v21;
  v20 = +[SGEntityTag extractedCarRental];
  v19 = [v20 name];
  v37[5] = v19;
  v18 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryCar];
  v38[5] = v18;
  v17 = +[SGEntityTag extractedTicket];
  v16 = [v17 name];
  v37[6] = v16;
  v15 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryTicket];
  v38[6] = v15;
  v14 = +[SGEntityTag extractedMovie];
  v13 = [v14 name];
  v37[7] = v13;
  v0 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryMovie];
  v38[7] = v0;
  v1 = +[SGEntityTag extractedFood];
  v2 = [v1 name];
  v37[8] = v2;
  v3 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryFood];
  v38[8] = v3;
  v4 = +[SGEntityTag extractedSocial];
  v5 = [v4 name];
  v37[9] = v5;
  v6 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategorySocial];
  v38[9] = v6;
  v7 = +[SGEntityTag extractedAppointment];
  v8 = [v7 name];
  v37[10] = v8;
  v9 = [MEMORY[0x1E696B098] valueWithPointer:&SGMEventCategoryAppointment];
  v38[10] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:11];
  v11 = tagsToEventCategory__pasExprOnceResult;
  tagsToEventCategory__pasExprOnceResult = v10;

  objc_autoreleasePoolPop(context);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t detailTypeFromSGContact(void *a1)
{
  v1 = a1;
  v2 = [v1 contact];
  v3 = [v2 emailAddresses];
  v4 = [v3 count];

  v5 = [v1 contact];
  v6 = [v5 phones];
  v7 = [v6 count];

  if (v7 && v4)
  {
    goto LABEL_16;
  }

  v8 = 3;
  if (v4)
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v1 contact];
  v11 = [v10 postalAddresses];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_11;
  }

  if (v7 | v4)
  {
LABEL_16:
    v16 = 3;
    goto LABEL_17;
  }

  v9 = 2;
LABEL_11:
  v13 = [v1 contact];
  v14 = [v13 birthday];

  v15 = 3;
  if (v9 == 3)
  {
    v15 = 4;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

LABEL_17:

  return v16;
}

uint64_t SGM2ContactDetailRejectedReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_79;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v47 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47 & 0x7F) << v21;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_77;
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

LABEL_77:
        v42 = 24;
        goto LABEL_78;
      }

      v39 = PBReaderReadString();
      v40 = *(a1 + 16);
      *(a1 + 16) = v39;

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v46 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v46 & 0x7F) << v27;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_65:
        v42 = 8;
        break;
      case 4:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v48 = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v48 & 0x7F) << v33;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v35;
        }

LABEL_69:
        v42 = 12;
        break;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v45 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45 & 0x7F) << v14;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_73;
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

LABEL_73:
        v42 = 28;
        break;
      default:
        goto LABEL_60;
    }

LABEL_78:
    *(a1 + v42) = v20;
    goto LABEL_79;
  }

  return [a2 hasError] ^ 1;
}

void _blockingNotifySettingsChanged()
{
  v0 = [@"com.apple.suggestions.settingsChanged" UTF8String];
  if ((notificationQueueSuspended & 1) == 0)
  {
    v1 = v0;
    v2 = dispatch_semaphore_create(0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___blocking_notify_post_block_invoke;
    v5[3] = &unk_1E7EFD118;
    v6 = v2;
    v3 = v2;
    v4 = [SGPreferenceStorage registerBlockOnSuggestionsSettingsChange:v5];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    notify_post(v1);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    notify_cancel(v4);
  }
}

uint64_t SGM2ContactRejectedReadFrom(uint64_t a1, void *a2)
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
        v57 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57 & 0x7F) << v5;
        if ((v57 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v61 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v61 & 0x7F) << v49;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_104;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v51;
          }

LABEL_104:
          v55 = 8;
        }

        else
        {
          if (v13 != 3)
          {
            goto LABEL_54;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v60 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v60 & 0x7F) << v21;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_100;
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

LABEL_100:
          v55 = 12;
        }

LABEL_105:
        *(a1 + v55) = v20;
        goto LABEL_106;
      }

      v33 = PBReaderReadString();
      v34 = *(a1 + 24);
      *(a1 + 24) = v33;

LABEL_106:
      v56 = [a2 position];
      if (v56 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v59 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v59 & 0x7F) << v43;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_88;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v45;
        }

LABEL_88:
        v55 = 32;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_106;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v58 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v58 & 0x7F) << v27;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_96:
        v55 = 36;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v62 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v62 & 0x7F) << v36;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v42) = 0;
            goto LABEL_84;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_84:
        *(a1 + 40) = v42;
        goto LABEL_106;
      }

      if (v13 != 5)
      {
        goto LABEL_54;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v63 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v63 & 0x7F) << v14;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_92;
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

LABEL_92:
      v55 = 16;
    }

    goto LABEL_105;
  }

  return [a2 hasError] ^ 1;
}

void SGThrottle(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SGThrottle_block_invoke;
  v18[3] = &unk_1E7EFCFE0;
  v20 = a1;
  v9 = v8;
  v19 = v9;
  v10 = MEMORY[0x1BFAF7240](v18);
  v11 = [MEMORY[0x1E695DF00] date];
  [v11 timeIntervalSince1970];
  v13 = v12;

  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 12) == 1)
  {
    ++*(a1 + 8);
  }

  else
  {
    v14 = v13 - *a1;
    if (*a1 == 0.0 || v14 > a4)
    {
      *a1 = v13;
      os_unfair_lock_unlock((a1 + 16));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __SGThrottle_block_invoke_2;
      block[3] = &unk_1E7EFD008;
      v17 = v9;
      dispatch_async(v7, block);

      goto LABEL_9;
    }

    *(a1 + 12) = 1;
    [MEMORY[0x1E69C5D10] runAsyncOnQueue:v7 afterDelaySeconds:v10 block:a4 - v14];
  }

  os_unfair_lock_unlock((a1 + 16));
LABEL_9:
}

uint64_t __SGThrottle_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  os_unfair_lock_lock((*(a1 + 40) + 16));
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  *v5 = v4;
  *(v5 + 8) = 0;
  *(v5 + 12) = 0;
  os_unfair_lock_unlock((v5 + 16));
  v7 = *(*(a1 + 32) + 16);

  return v7();
}

id sgRemindersLogHandle()
{
  if (sgRemindersLogHandle__pasOnceToken3 != -1)
  {
    dispatch_once(&sgRemindersLogHandle__pasOnceToken3, &__block_literal_global_9);
  }

  v1 = sgRemindersLogHandle__pasExprOnceResult;

  return v1;
}

void __sgRemindersLogHandle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "reminders");
  v2 = sgRemindersLogHandle__pasExprOnceResult;
  sgRemindersLogHandle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id sgSignpostHandle()
{
  if (sgSignpostHandle__pasOnceToken4 != -1)
  {
    dispatch_once(&sgSignpostHandle__pasOnceToken4, &__block_literal_global_12);
  }

  v1 = sgSignpostHandle__pasExprOnceResult;

  return v1;
}

void __sgSignpostHandle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "Signposts");
  v2 = sgSignpostHandle__pasExprOnceResult;
  sgSignpostHandle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __sgEventsLogHandle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "events");
  v2 = sgEventsLogHandle__pasExprOnceResult;
  sgEventsLogHandle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id sgDeveloperLogHandle()
{
  if (sgDeveloperLogHandle__pasOnceToken6 != -1)
  {
    dispatch_once(&sgDeveloperLogHandle__pasOnceToken6, &__block_literal_global_18);
  }

  v1 = sgDeveloperLogHandle__pasExprOnceResult;

  return v1;
}

void __sgDeveloperLogHandle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "siri-event-suggestions");
  v2 = sgDeveloperLogHandle__pasExprOnceResult;
  sgDeveloperLogHandle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id sgQuicktypeLogHandle()
{
  if (sgQuicktypeLogHandle__pasOnceToken7 != -1)
  {
    dispatch_once(&sgQuicktypeLogHandle__pasOnceToken7, &__block_literal_global_21);
  }

  v1 = sgQuicktypeLogHandle__pasExprOnceResult;

  return v1;
}

void __sgQuicktypeLogHandle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "quicktype");
  v2 = sgQuicktypeLogHandle__pasExprOnceResult;
  sgQuicktypeLogHandle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id sgMailIntelligenceLogHandle()
{
  if (sgMailIntelligenceLogHandle__pasOnceToken8 != -1)
  {
    dispatch_once(&sgMailIntelligenceLogHandle__pasOnceToken8, &__block_literal_global_24_9114);
  }

  v1 = sgMailIntelligenceLogHandle__pasExprOnceResult;

  return v1;
}

void __sgMailIntelligenceLogHandle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "mail-intelligence");
  v2 = sgMailIntelligenceLogHandle__pasExprOnceResult;
  sgMailIntelligenceLogHandle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

__CFString *SGExtractionTypeDescription(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 15)
    {
      switch(a1)
      {
        case 6:
          return @"phraseab";
        case 7:
          return @"sigphraseab";
        case 8:
          return @"lookup";
      }
    }

    else if (a1 > 63)
    {
      if (a1 == 64)
      {
        return @"mecard";
      }

      if (a1 == 128)
      {
        return @"donatedid";
      }
    }

    else
    {
      if (a1 == 16)
      {
        return @"interaction";
      }

      if (a1 == 32)
      {
        return @"attachment";
      }
    }

    return @"corrupt";
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return @"unknown";
      case 1:
        return @"sig";
      case 2:
        return @"phrase";
    }

    return @"corrupt";
  }

  if (a1 == 3)
  {
    return @"sigphrase";
  }

  if (a1 == 4)
  {
    return @"ab";
  }

  return @"sigab";
}

uint64_t SGGeoListSnippetReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(SGGeoPoi);
        [a1 addPois:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SGGeoPoiReadFrom(v13, a2))
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

uint64_t SGGeoPoiReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        if (v13 == 3)
        {
          v16 = objc_alloc_init(SGPoint);
          objc_storeStrong((a1 + 16), v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !SGPointReadFrom(v16, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(SGStructuredAddress);
          objc_storeStrong((a1 + 8), v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !SGStructuredAddressReadFrom(v16, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_29;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_29:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGAspireResultReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 3)
      {
        v13 = objc_alloc_init(SGGeoListSnippet);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SGGeoListSnippetReadFrom(v13, a2))
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

uint64_t SGPointReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 1u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___SGPoint__lat;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 2u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___SGPoint__lng;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SGStructuredAddressReadFrom(char *a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_41;
          }

          if (v13 == 7)
          {
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addDependentLocality:v16];
            }

            goto LABEL_42;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = PBReaderReadString();
              v15 = 80;
              goto LABEL_41;
            case 9:
              v14 = PBReaderReadString();
              v15 = 72;
              goto LABEL_41;
            case 0xA:
              v14 = PBReaderReadString();
              v15 = 56;
              goto LABEL_41;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_41;
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_41;
          case 5:
            v14 = PBReaderReadString();
            v15 = 64;
LABEL_41:
            v16 = *&a1[v15];
            *&a1[v15] = v14;
LABEL_42:

            goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1BA7B06D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10240(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void incrementKeyWithSuffix(void *a1)
{
  v1 = a1;
  if (getAggdDispatchQueue__pasOnceToken17 != -1)
  {
    dispatch_once(&getAggdDispatchQueue__pasOnceToken17, &__block_literal_global_76);
  }

  v2 = getAggdDispatchQueue__pasExprOnceResult;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __addValueForScalarKey_block_invoke;
  v4[3] = &unk_1E7EFD260;
  v5 = v1;
  v6 = 1;
  v3 = v1;
  dispatch_async(v2, v4);
}

void __addValueForScalarKey_block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [@"com.apple.suggestions" stringByAppendingString:@"."];
  v3 = [v2 stringByAppendingString:*(a1 + 32)];

  v4 = objc_opt_new();
  [v4 setKey:v3];
  v5 = [MEMORY[0x1E69C5B48] sharedInstance];
  [v5 trackScalarForMessage:v4 count:*(a1 + 40)];

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", *(a1 + 32)];
  v10 = @"clientaggdpush";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  AnalyticsSendEvent();
  v9 = *MEMORY[0x1E69E9840];
}

void __getAggdDispatchQueue_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("com.apple.suggestions.clientaggdpush", v2);
  v4 = getAggdDispatchQueue__pasExprOnceResult;
  getAggdDispatchQueue__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void sub_1BA7B1288(void *a1)
{
  objc_begin_catch(a1);
  if (v1)
  {
    JUMPOUT(0x1BA7B11E4);
  }

  JUMPOUT(0x1BA7B11B4);
}

void sub_1BA7B1860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10350(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}