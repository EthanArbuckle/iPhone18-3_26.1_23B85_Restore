uint64_t HKCodableSummaryDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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

      if (v13 == 1)
      {
        v15 = PBReaderReadData();
        v16 = 32;
        goto LABEL_41;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 48;
        goto LABEL_41;
      }

      if (v13 != 3)
      {
        goto LABEL_38;
      }

      v14 = objc_alloc_init(HKCodableQueryAnchor);
      objc_storeStrong((a1 + 40), v14);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQueryAnchorReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_60:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v34[0] & 0x7F) << v17;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_54;
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

LABEL_54:
        v31 = 8;
        goto LABEL_59;
      case 5:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v34[0] & 0x7F) << v25;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_58;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v27;
        }

LABEL_58:
        v31 = 16;
LABEL_59:
        *(a1 + v31) = v23;
        goto LABEL_60;
      case 6:
        v15 = PBReaderReadString();
        v16 = 24;
LABEL_41:
        v24 = *(a1 + v16);
        *(a1 + v16) = v15;

        goto LABEL_60;
    }

LABEL_38:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableStatisticsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v45) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v45 & 0x7F) << v5;
      if ((v45 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 112) |= 4u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v45 & 0x7F) << v13;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_79:
            v38 = 24;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_79;
      case 2u:
        *(a1 + 112) |= 0x10u;
        v45 = 0;
        v36 = [a2 position] + 8;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v40 = v45;
        v41 = 40;
        goto LABEL_85;
      case 3u:
        *(a1 + 112) |= 8u;
        v45 = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v40 = v45;
        v41 = 32;
LABEL_85:
        *(a1 + v41) = v40;
        goto LABEL_86;
      case 4u:
        v26 = objc_alloc_init(HKCodableQuantity);
        v27 = 48;
        goto LABEL_65;
      case 5u:
        v26 = objc_alloc_init(HKCodableQuantity);
        v27 = 80;
        goto LABEL_65;
      case 6u:
        v26 = objc_alloc_init(HKCodableQuantity);
        v27 = 64;
        goto LABEL_65;
      case 7u:
        v26 = objc_alloc_init(HKCodableQuantity);
        v27 = 88;
        goto LABEL_65;
      case 8u:
        v26 = objc_alloc_init(HKCodableQuantity);
        v27 = 104;
        goto LABEL_65;
      case 9u:
        v26 = objc_alloc_init(HKCodableQuantity);
        v27 = 56;
LABEL_65:
        objc_storeStrong((a1 + v27), v26);
        v45 = 0;
        v46 = 0;
        if (PBReaderPlaceMark() && HKCodableQuantityReadFrom(v26, a2))
        {
          goto LABEL_67;
        }

        goto LABEL_88;
      case 0xAu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 112) |= 2u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v45 & 0x7F) << v28;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v30;
        }

LABEL_75:
        v38 = 16;
        goto LABEL_80;
      case 0xBu:
        v26 = objc_alloc_init(HKCodableDateComponents);
        objc_storeStrong((a1 + 96), v26);
        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateComponentsReadFrom(v26, a2))
        {
          goto LABEL_88;
        }

        goto LABEL_67;
      case 0xCu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 112) |= 1u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v45 & 0x7F) << v20;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_71:
        v38 = 8;
LABEL_80:
        *(a1 + v38) = v19;
        goto LABEL_86;
      case 0xDu:
        v26 = objc_alloc_init(HKCodableMetadataDictionary);
        objc_storeStrong((a1 + 72), v26);
        v45 = 0;
        v46 = 0;
        if (PBReaderPlaceMark() && HKCodableMetadataDictionaryReadFrom(v26, a2))
        {
LABEL_67:
          PBReaderRecallMark();

LABEL_86:
          v43 = [a2 position];
          if (v43 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_88:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_86;
    }
  }
}

void sub_1C3BFEA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HKBluetoothIcon()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 imageNamed:@"bluetooth_sharing" inBundle:v1];
  v3 = [MEMORY[0x1E69DC888] hk_sourceIconTintColor];
  v4 = [v2 _flatImageWithColor:v3];

  return v4;
}

id HKDeviceImage(void *a1)
{
  v1 = a1;
  if (!v1 || (v2 = MEMORY[0x1E69DCAB8], HKHealthUIFrameworkBundle(), v3 = objc_claimAutoreleasedReturnValue(), [v2 imageNamed:v1 inBundle:v3], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69DC888], "hk_sourceIconTintColor"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "_flatImageWithColor:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, v3, !v6))
  {
    v7 = HKDeviceImage_fallback;
    if (!HKDeviceImage_fallback)
    {
      v14.width = 29.0;
      v14.height = 29.0;
      UIGraphicsBeginImageContextWithOptions(v14, 1, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      if ([MEMORY[0x1E696C608] isAppleInternalInstall])
      {
        CGContextSetRGBFillColor(CurrentContext, 0.800000012, 0.800000012, 0.800000012, 1.0);
        v15.origin.x = 0.0;
        v15.origin.y = 0.0;
        v15.size.width = 29.0;
        v15.size.height = 29.0;
        CGContextFillRect(CurrentContext, v15);
        CGContextSetRGBStrokeColor(CurrentContext, 0.899999976, 0.100000001, 0.100000001, 1.0);
        CGContextMoveToPoint(CurrentContext, 0.0, 0.0);
        CGContextAddLineToPoint(CurrentContext, 29.0, 29.0);
        CGContextMoveToPoint(CurrentContext, 0.0, 29.0);
        CGContextAddLineToPoint(CurrentContext, 29.0, 0.0);
        CGContextStrokePath(CurrentContext);
      }

      else
      {
        CGContextSetRGBFillColor(CurrentContext, 1.0, 1.0, 1.0, 1.0);
        v16.origin.x = 0.0;
        v16.origin.y = 0.0;
        v16.size.width = 29.0;
        v16.size.height = 29.0;
        CGContextFillRect(CurrentContext, v16);
        v9 = [MEMORY[0x1E69DC888] hk_sourceIconTintColor];
        CGContextSetFillColorWithColor(CurrentContext, [v9 CGColor]);

        CGContextAddArc(CurrentContext, 14.5, 14.5, 7.25, 0.0, 6.28318531, 1);
        CGContextFillPath(CurrentContext);
      }

      v10 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v11 = HKDeviceImage_fallback;
      HKDeviceImage_fallback = v10;

      v7 = HKDeviceImage_fallback;
    }

    v6 = v7;
  }

  return v6;
}

__CFString *HKOrganDonationErrorTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E81BB8D8[a1];
  }

  return v2;
}

uint64_t HKDisplayCategoryIdentifierFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierVitalSigns"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierFitness"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierNutrition"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierSleep"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierBodyMeasurements"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierMe"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierReproductiveHealth"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierClinicalDocuments"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierMindfulness"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierHeart"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierHearingHealth"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierRespiratory"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierOther"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierHealthRecords"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierAllergies"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierClinicalVitals"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierConditions"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierImmunizations"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierLabResults"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierMedications"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierProcedures"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierMobility"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierSymptoms"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierInsurance"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierClinicalNotes"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"HKDisplayCategoryIdentifierMedicationTracking"])
  {
    v2 = 31;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

uint64_t HKCodableSummaryWalkingSteadinessValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v24 & 0x7F) << v15;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_40:
        *(a1 + 8) = v21;
        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableSummaryQuantityValue);
        objc_storeStrong((a1 + 24), v14);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !HKCodableSummaryQuantityValueReadFrom(v14, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HKCodableLevelViewDataConfiguration);
    objc_storeStrong((a1 + 16), v14);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !HKCodableLevelViewDataConfigurationReadFrom(v14, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

id _workoutValidationRanges()
{
  if (_workoutValidationRanges_onceToken[0] != -1)
  {
    _workoutValidationRanges_cold_1();
  }

  v1 = _workoutValidationRanges_workoutPropertyKeyToRangeDict;

  return v1;
}

void ___workoutValidationRanges_block_invoke()
{
  v41[2] = *MEMORY[0x1E69E9840];
  v40[0] = @"_HKManualEntryWorkoutDistanceKey";
  v38[0] = @"_HKManualEntryConfirmRangeKey";
  v0 = MEMORY[0x1E696C350];
  v1 = MEMORY[0x1E696C348];
  v35 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v33 = [v1 quantityWithUnit:v35 doubleValue:0.0];
  v2 = MEMORY[0x1E696C348];
  v34 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v32 = [v2 quantityWithUnit:v34 doubleValue:150.0];
  v31 = [v0 inclusiveRangeWithMinimum:v33 maximum:v32];
  v39[0] = v31;
  v38[1] = @"_HKManualEntryAbsoluteRangeKey";
  v3 = MEMORY[0x1E696C350];
  v4 = MEMORY[0x1E696C348];
  v30 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v28 = [v4 quantityWithUnit:v30 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v29 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v27 = [v5 quantityWithUnit:v29 doubleValue:500.0];
  v26 = [v3 inclusiveRangeWithMinimum:v28 maximum:v27];
  v39[1] = v26;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v40[1] = @"_HKManualEntryWorkoutEnergyBurnedKey";
  v41[0] = v25;
  v36[0] = @"_HKManualEntryConfirmRangeKey";
  v6 = MEMORY[0x1E696C350];
  v7 = MEMORY[0x1E696C348];
  v24 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v23 = [v7 quantityWithUnit:v24 doubleValue:0.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:4000.0];
  v11 = [v6 inclusiveRangeWithMinimum:v23 maximum:v10];
  v36[1] = @"_HKManualEntryAbsoluteRangeKey";
  v37[0] = v11;
  v12 = MEMORY[0x1E696C350];
  v13 = MEMORY[0x1E696C348];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v15 = [v13 quantityWithUnit:v14 doubleValue:0.0];
  v16 = MEMORY[0x1E696C348];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v18 = [v16 quantityWithUnit:v17 doubleValue:10000.0];
  v19 = [v12 inclusiveRangeWithMinimum:v15 maximum:v18];
  v37[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v41[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v22 = _workoutValidationRanges_workoutPropertyKeyToRangeDict;
  _workoutValidationRanges_workoutPropertyKeyToRangeDict = v21;
}

void sub_1C3C08330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 80));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _formattedFrequencyStringForFrequency(int a1, int a2, double a3)
{
  if (a1)
  {
    HKNumberFormatterFromTemplate(1);
  }

  else
  {
    HKNumberFormatterWithDecimalPrecision(1, 0);
  }
  v5 = ;
  if (a3 / 1000.0 >= 1.0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3 / 1000.0];
    v7 = [v5 stringFromNumber:v9];

    v8 = @"KILOHERTZ_NUMBERLESS_UNIT";
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v7 = [v5 stringFromNumber:v6];

    if (!a2)
    {
      goto LABEL_9;
    }

    v8 = @"HERTZ_NUMBERLESS_UNIT";
  }

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v12 = [v7 stringByAppendingString:v11];

  v7 = v12;
LABEL_9:

  return v7;
}

__CFString *_formattedFrequencyStringForLocation(void *a1)
{
  [a1 doubleValue];
  v2 = v1;
  if (v1 < 0.0 || v1 > 6.0)
  {
    v5 = &stru_1F42FFBE0;
  }

  else
  {
    [HKAudiogramChartPoint frequencyFromAxisValue:v1];
    v5 = _formattedFrequencyStringForFrequency(1, v2 == 0.0, v4);
  }

  return v5;
}

void sub_1C3C10430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1C3C123EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKDisplayTypeIdentifierFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBodyMassIndex"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBodyFatPercentage"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeight"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBodyMass"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLeanBodyMass"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeartRate"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSteps"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDistanceWalkingRunning"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBasalEnergyBurned"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierActiveEnergy"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierFlightsClimbed"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierNikeFuel"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierOxygenSaturation"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBloodGlucose"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBloodAlcoholContent"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPeripheralPerfusionIndex"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryFatTotal"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryFatPolyunsaturated"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryFatMonounsaturated"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryFatSaturated"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryCholesterol"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietarySodium"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryCarbohydrates"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryFiber"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietarySugar"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryEnergy"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryProtein"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryVitaminA"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryVitaminB6"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryVitaminB12"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryVitaminC"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryVitaminD"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryVitaminE"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryVitaminK"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryCalcium"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryIron"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryThiamin"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryRiboflavin"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryNiacin"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryFolate"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryBiotin"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryPantothenicAcid"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryPhosphorus"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryIodine"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryMagnesium"])
  {
    v2 = 48;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryZinc"])
  {
    v2 = 49;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietarySelenium"])
  {
    v2 = 50;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryCopper"])
  {
    v2 = 51;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryManganese"])
  {
    v2 = 52;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryChromium"])
  {
    v2 = 53;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryMolybdenum"])
  {
    v2 = 54;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryChloride"])
  {
    v2 = 55;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryPotassium"])
  {
    v2 = 56;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierNumberOfTimesFallen"])
  {
    v2 = 57;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierElectrodermalActivity"])
  {
    v2 = 58;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierInhalerUsage"])
  {
    v2 = 60;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRespiratoryRate"])
  {
    v2 = 61;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBodyTemperature"])
  {
    v2 = 62;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSleepAnalysis"])
  {
    v2 = 63;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBiologicalSex"])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDateOfBirth"])
  {
    v2 = 65;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBloodType"])
  {
    v2 = 66;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleStandHour"])
  {
    v2 = 70;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierForcedVitalCapacity"])
  {
    v2 = 71;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierForcedExpiratoryVolume1"])
  {
    v2 = 72;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPeakExpiratoryFlowRate"])
  {
    v2 = 73;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleExerciseTime"])
  {
    v2 = 75;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryCaffeine"])
  {
    v2 = 78;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWorkout"])
  {
    v2 = 79;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBloodPressure"])
  {
    v2 = 80;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCyclingDistance"])
  {
    v2 = 83;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDietaryWater"])
  {
    v2 = 87;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierFitzpatrickSkinType"])
  {
    v2 = 88;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierUVExposure"])
  {
    v2 = 89;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBasalBodyTemperature"])
  {
    v2 = 90;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCervicalMucusQuality"])
  {
    v2 = 91;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierOvulationTestResult"])
  {
    v2 = 92;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierMenstruation"])
  {
    v2 = 95;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierIntermenstrualBleeding"])
  {
    v2 = 96;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSexualActivity"])
  {
    v2 = 97;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierMindfulSession"])
  {
    v2 = 99;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierActivitySummary"])
  {
    v2 = 100;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPushCount"])
  {
    v2 = 101;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLocationSeries"])
  {
    v2 = 102;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWheelchairUse"])
  {
    v2 = 103;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCDADocument"])
  {
    v2 = 107;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSwimmingDistance"])
  {
    v2 = 110;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSwimmingStrokes"])
  {
    v2 = 111;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWheelchairDistance"])
  {
    v2 = 113;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWaistCircumference"])
  {
    v2 = 114;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRestingHeartRate"])
  {
    v2 = 118;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeartbeatSeries"])
  {
    v2 = 119;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierVO2Max"])
  {
    v2 = 124;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierInsulinDelivery"])
  {
    v2 = 125;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWalkingHeartRateAverage"])
  {
    v2 = 137;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDownhillSnowSportsDistance"])
  {
    v2 = 138;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeartRateVariabilitySDNN"])
  {
    v2 = 139;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierTachycardiaEvent"])
  {
    v2 = 140;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierElectrocardiogram"])
  {
    v2 = 144;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAudiogram"])
  {
    v2 = 145;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBradycardiaEvent"])
  {
    v2 = 147;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAllergyRecord"])
  {
    v2 = 149;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierConditionRecord"])
  {
    v2 = 150;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierImmunizationRecord"])
  {
    v2 = 151;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLabResultRecord"])
  {
    v2 = 152;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierMedicationRecord"])
  {
    v2 = 153;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierProcedureRecord"])
  {
    v2 = 154;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierVitalSignRecord"])
  {
    v2 = 155;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAtrialFibrillationEvent"])
  {
    v2 = 156;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAbdominalCramps"])
  {
    v2 = 157;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBreastPain"])
  {
    v2 = 158;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBloating"])
  {
    v2 = 159;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeadache"])
  {
    v2 = 160;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAcne"])
  {
    v2 = 161;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLowerBackPain"])
  {
    v2 = 162;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPelvicPain"])
  {
    v2 = 163;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierMoodChanges"])
  {
    v2 = 164;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierConstipation"])
  {
    v2 = 165;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDiarrhea"])
  {
    v2 = 166;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierFatigue"])
  {
    v2 = 167;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierNausea"])
  {
    v2 = 168;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSleepChanges"])
  {
    v2 = 169;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppetiteChanges"])
  {
    v2 = 170;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHotFlashes"])
  {
    v2 = 171;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierEnvironmentalAudioExposure"])
  {
    v2 = 172;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeadphoneAudioExposure"])
  {
    v2 = 173;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierActivityMoveMode"])
  {
    v2 = 177;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierEnvironmentalAudioExposureEvent"])
  {
    v2 = 178;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleMoveTime"])
  {
    v2 = 179;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWalkingDoubleSupportPercentage"])
  {
    v2 = 182;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSixMinuteWalkTestDistance"])
  {
    v2 = 183;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleStandTime"])
  {
    v2 = 186;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWalkingSpeed"])
  {
    v2 = 187;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWalkingStepLength"])
  {
    v2 = 188;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierToothbrushingEvent"])
  {
    v2 = 189;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPregnancy"])
  {
    v2 = 191;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLactation"])
  {
    v2 = 192;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierContraceptive"])
  {
    v2 = 193;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWalkingAsymmetryPercentage"])
  {
    v2 = 194;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierStairAscentSpeed"])
  {
    v2 = 195;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierStairDescentSpeed"])
  {
    v2 = 196;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSleepDurationGoal"])
  {
    v2 = 197;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSleepSchedule"])
  {
    v2 = 198;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeadphoneAudioExposureEvent"])
  {
    v2 = 199;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRapidPoundingOrFlutteringHeartbeat"])
  {
    v2 = 201;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSkippedHeartbeat"])
  {
    v2 = 202;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierFever"])
  {
    v2 = 203;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierShortnessOfBreath"])
  {
    v2 = 204;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierChestTightnessOrPain"])
  {
    v2 = 205;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierFainting"])
  {
    v2 = 206;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDizziness"])
  {
    v2 = 207;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierInsuranceRecord"])
  {
    v2 = 217;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCardioFitnessMedicationsUse"])
  {
    v2 = 218;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierVomiting"])
  {
    v2 = 220;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeartburn"])
  {
    v2 = 221;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCoughing"])
  {
    v2 = 222;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWheezing"])
  {
    v2 = 223;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSoreThroat"])
  {
    v2 = 224;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCongestion"])
  {
    v2 = 225;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRunnyNose"])
  {
    v2 = 226;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierVaginalDryness"])
  {
    v2 = 229;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierNightSweats"])
  {
    v2 = 230;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierChills"])
  {
    v2 = 231;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHairLoss"])
  {
    v2 = 232;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierDrySkin"])
  {
    v2 = 233;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBladderIncontinence"])
  {
    v2 = 234;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierMemoryLapse"])
  {
    v2 = 235;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLowCardioFitnessEvent"])
  {
    v2 = 236;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHandwashingEvent"])
  {
    v2 = 237;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierGeneralizedBodyAche"])
  {
    v2 = 240;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLossOfSmell"])
  {
    v2 = 241;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierLossOfTaste"])
  {
    v2 = 242;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPregnancyTestResult"])
  {
    v2 = 243;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierProgesteroneTestResult"])
  {
    v2 = 244;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAtrialFibrillationBurden"])
  {
    v2 = 248;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleWalkingSteadiness"])
  {
    v2 = 249;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleWalkingSteadinessEvent"])
  {
    v2 = 250;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierNumberOfAlcoholicBeverages"])
  {
    v2 = 251;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHypertensionEvent"])
  {
    v2 = 254;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleSleepingWristTemperature"])
  {
    v2 = 256;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierVisionPrescription"])
  {
    v2 = 257;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRunningStrideLength"])
  {
    v2 = 258;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRunningVerticalOscillation"])
  {
    v2 = 259;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRunningGroundContactTime"])
  {
    v2 = 260;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPersistentIntermenstrualBleeding"])
  {
    v2 = 262;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierProlongedMenstrualPeriods"])
  {
    v2 = 263;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierIrregularMenstrualCycles"])
  {
    v2 = 264;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierInfrequentMenstrualCycles"])
  {
    v2 = 265;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHeartRateRecovery"])
  {
    v2 = 266;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierClinicalNoteRecord"])
  {
    v2 = 268;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierUnderwaterDepth"])
  {
    v2 = 269;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRunningPower"])
  {
    v2 = 270;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierEnvironmentalSoundReduction"])
  {
    v2 = 272;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierMedicationDoseEvent"])
  {
    v2 = 273;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRunningSpeed"])
  {
    v2 = 274;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleSleepingBreathingDisturbances"])
  {
    v2 = 275;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSleepApneaEvent"])
  {
    v2 = 276;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWaterTemperature"])
  {
    v2 = 277;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierTimeInDaylight"])
  {
    v2 = 279;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCyclingPower"])
  {
    v2 = 280;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCyclingSpeed"])
  {
    v2 = 281;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCyclingCadence"])
  {
    v2 = 282;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCyclingFunctionalThresholdPower"])
  {
    v2 = 283;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierStateOfMind"])
  {
    v2 = 284;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierHypertensivePatternMeasurement"])
  {
    v2 = 285;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPhysicalEffort"])
  {
    v2 = 286;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierGAD7"])
  {
    v2 = 287;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPHQ9"])
  {
    v2 = 288;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPaddleSportsDistance"])
  {
    v2 = 294;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRowingDistance"])
  {
    v2 = 295;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCrossCountrySkiingDistance"])
  {
    v2 = 296;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierSkatingSportsDistance"])
  {
    v2 = 297;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierEstimatedWorkoutEffortScore"])
  {
    v2 = 298;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierRowingSpeed"])
  {
    v2 = 301;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierCrossCountrySkiingSpeed"])
  {
    v2 = 302;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierPaddleSportsSpeed"])
  {
    v2 = 303;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierWorkoutEffortScore"])
  {
    v2 = 304;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleBalanceMetrics"])
  {
    v2 = 305;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierUserAnnotatedMedicationType"])
  {
    v2 = 306;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBleedingDuringPregnancy"])
  {
    v2 = 313;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierBleedingAfterPregnancy"])
  {
    v2 = 314;
  }

  else if ([v1 isEqualToString:@"HKDisplayTypeIdentifierAppleSleepScore"])
  {
    v2 = 341;
  }

  else
  {
    v2 = 342;
  }

  return v2;
}

void sub_1C3C15AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableRGBConfigurationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
          *(a1 + 40) |= 2u;
          v30 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___HKCodableRGBConfiguration__blue;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v30 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___HKCodableRGBConfiguration__alpha;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 40) |= 8u;
          v30 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___HKCodableRGBConfiguration__red;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          *(a1 + 40) |= 4u;
          v30 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___HKCodableRGBConfiguration__green;
LABEL_44:
          *(a1 + *v24) = v23;
          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartDataSourceQueryDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v42[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42[0] & 0x7F) << v5;
        if ((v42[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v42[0] & 0x7F) << v28;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_61;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_61:
          *(a1 + 56) = v34;
          goto LABEL_71;
        }

        if (v13 == 7)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v42[0] & 0x7F) << v17;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_65;
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

LABEL_65:
          *(a1 + 16) = v23;
          goto LABEL_71;
        }

LABEL_42:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_71;
      }

      if (v13 == 4)
      {
        *(a1 + 60) |= 1u;
        v42[0] = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v37 = v42[0];
        v38 = 8;
LABEL_70:
        *(a1 + v38) = v37;
        goto LABEL_71;
      }

      if (v13 != 5)
      {
        goto LABEL_42;
      }

      v14 = objc_alloc_init(HKCodableDateComponents);
      objc_storeStrong((a1 + 40), v14);
      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableDateComponentsReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_71:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v24 = PBReaderReadString();
        v25 = 48;
LABEL_57:
        v35 = *(a1 + v25);
        *(a1 + v25) = v24;

        goto LABEL_71;
      case 2:
        v24 = PBReaderReadData();
        v25 = 32;
        goto LABEL_57;
      case 3:
        *(a1 + 60) |= 4u;
        v42[0] = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:v42 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v37 = v42[0];
        v38 = 24;
        goto LABEL_70;
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryTrendChartViewModelReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
            v16 = objc_alloc_init(HKCodableDateInterval);
            v25 = 32;
            goto LABEL_48;
          }

          if (v13 == 8)
          {
            v16 = objc_alloc_init(HKCodableQuantity);
            v17 = 40;
LABEL_40:
            objc_storeStrong((a1 + v17), v16);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v16, a2))
            {
              goto LABEL_59;
            }

LABEL_50:
            PBReaderRecallMark();

            goto LABEL_57;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v16 = objc_alloc_init(HKCodableDateInterval);
            v25 = 16;
LABEL_48:
            objc_storeStrong((a1 + v25), v16);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v16, a2))
            {
LABEL_59:

              return 0;
            }

            goto LABEL_50;
          }

          if (v13 == 6)
          {
            v16 = objc_alloc_init(HKCodableQuantity);
            v17 = 24;
            goto LABEL_40;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 64;
          goto LABEL_46;
        }

        if (v13 == 4)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v29) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v29 & 0x7F) << v18;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_56;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_56:
          *(a1 + 8) = v24;
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 48;
LABEL_46:
          v26 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t StateOfMindBucketData.init(valenceRange:sampleCount:reflectiveInterval:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t StateOfMindChartPoint.totalSampleCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 48);
  while (1)
  {
    v5 = *v4;
    v4 += 4;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      break;
    }

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

id StateOfMindChartPoint.__allocating_init(dateInterval:buckets:isSharingPreview:)(uint64_t a1, char *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_dateInterval;
  v9 = sub_1C3D1DC54();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v14 = a2;

  sub_1C3C23200(&v14);

  *&v7[OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets] = v14;
  v7[OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_isSharingPreview] = a3 & 1;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

id StateOfMindChartPoint.init(dateInterval:buckets:isSharingPreview:)(uint64_t a1, char *a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_dateInterval;
  v9 = sub_1C3D1DC54();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v14 = a2;

  sub_1C3C23200(&v14);

  *&v3[OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets] = v14;
  v3[OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_isSharingPreview] = a3 & 1;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

id StateOfMindChartPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindChartPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C21874@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C3D1E1E4();
  a1[3] = MEMORY[0x1EEE9AC00](v2);
  __swift_allocate_boxed_opaque_existential_0(a1);
  sub_1C3D1DC44();
  sub_1C3D1DC34();
  return sub_1C3D1E154();
}

id sub_1C3C21940(void *a1)
{
  v2 = sub_1C3D1E1E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1;
  sub_1C3D1DC44();
  sub_1C3D1DC34();
  sub_1C3D1E154();

  (*(v3 + 16))(v6, v8, v2);
  v10 = sub_1C3D20A84();
  (*(v3 + 8))(v8, v2);

  return v10;
}

void StateOfMindChartPoint.yValue()(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v3 = 0;
  }

  *a1 = v3;
  a1[3] = v4;
}

uint64_t StateOfMindChartPoint.yValue(forKey:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1C3D1EDA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1ED74();
  v8 = sub_1C3D1ED84();
  v9 = sub_1C3D204F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = sub_1C3D20CD4();
    v15 = sub_1C3C22C28(v13, v14, &v22);

    *(v11 + 4) = v15;
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69321D0](v12, -1, -1);
    v16 = v11;
    v2 = v21;
    MEMORY[0x1C69321D0](v16, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  v18 = *(v2 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
  if (*(v18 + 16))
  {
    v19 = *(v18 + 32);
    v20 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v20 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v19 = 0;
  }

  *a1 = v19;
  a1[3] = v20;
  return result;
}

uint64_t StateOfMindChartPoint.allYValues()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v1 + 32);
  v4 = MEMORY[0x1E69E63B0];
  v11 = MEMORY[0x1E69E63B0];
  *&v10 = v3;
  sub_1C3C233B8(&v10, v12);
  v5 = *(v1 + 32 * v2 + 8);
  v9 = v4;
  *&v8 = v5;
  sub_1C3C233B8(&v8, &v10);
  sub_1C396DF78(0, &qword_1EC080D50, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C3D5DCD0;
  sub_1C3C233C8(v12, v6 + 32);
  sub_1C3C233B8(&v10, (v6 + 64));
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v6;
}

void StateOfMindChartPoint.maxYValue()(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 32 * v3 + 8);
    v5 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v4 = 0;
  }

  *a1 = v4;
  a1[3] = v5;
}

id sub_1C3C21FDC(uint64_t a1)
{
  if (*(*(a1 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets) + 16))
  {
    v2 = sub_1C3D20A44();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id StateOfMindChartPoint.userInfo()()
{
  v1 = sub_1C3D1DC54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v47 = v0;
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_buckets);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*v6 == 2)
      {
        v49 = *(v6 - 3);
        v11 = *(v6 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C3C23BBC(0, *(v7 + 16) + 1, 1);
          v7 = v51;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1C3C23BBC((v8 > 1), v9 + 1, 1);
          v7 = v51;
        }

        *(v7 + 16) = v9 + 1;
        v10 = v7 + 32 * v9;
        *(v10 + 32) = v49;
        *(v10 + 48) = v11;
        *(v10 + 56) = 2;
      }

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v43 = sub_1C3C24E6C(v7);
  v45 = v14;
  v46 = v13;
  v44 = v15;

  v16 = *(v4 + 16);
  if (v16)
  {
    v17 = (v4 + 56);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*v17 == 1)
      {
        v49 = *(v17 - 3);
        v22 = *(v17 - 1);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v51 = v18;
        if ((v23 & 1) == 0)
        {
          sub_1C3C23BBC(0, *(v18 + 16) + 1, 1);
          v18 = v51;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C3C23BBC((v19 > 1), v20 + 1, 1);
          v18 = v51;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 32 * v20;
        *(v21 + 32) = v49;
        *(v21 + 48) = v22;
        *(v21 + 56) = 1;
      }

      v17 += 4;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1C3C24E6C(v18);
  v26 = v25;
  *&v49 = v27;
  v42 = v28;

  v29 = *(v2 + 16);
  v30 = v47;
  v31 = v48;
  v29(v48, v47 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_dateInterval, v1);
  v32 = *(v30 + OBJC_IVAR____TtC8HealthUI21StateOfMindChartPoint_isSharingPreview);
  v33 = type metadata accessor for StateOfMindCoordinateInfo();
  v34 = objc_allocWithZone(v33);
  v29(&v34[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dateInterval], v31, v1);
  *&v34[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyReflectiveCount] = v43;
  v35 = &v34[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange];
  v36 = v45;
  *v35 = v46;
  *(v35 + 1) = v36;
  v35[16] = v44 & 1;
  *&v34[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryReflectiveCount] = v24;
  v37 = &v34[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryValenceRange];
  v38 = v49;
  *v37 = v26;
  *(v37 + 1) = v38;
  v37[16] = v42 & 1;
  v34[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_isSharingPreview] = v32;
  v50.receiver = v34;
  v50.super_class = v33;
  v39 = objc_msgSendSuper2(&v50, sel_init);
  (*(v2 + 8))(v31, v1);
  return v39;
}

void ClosedRange<>.merge(with:)(double a1, double a2, double a3, double a4)
{
  if (a1 >= a3)
  {
    a1 = a3;
  }

  if (a4 > a2)
  {
    a2 = a4;
  }

  if (a1 > a2)
  {
    __break(1u);
  }
}

uint64_t sub_1C3C2259C(uint64_t a1, id *a2)
{
  result = sub_1C3D200E4();
  *a2 = 0;
  return result;
}

uint64_t sub_1C3C22614(uint64_t a1, id *a2)
{
  v3 = sub_1C3D200F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C3C22694@<X0>(uint64_t *a1@<X8>)
{
  sub_1C3D20104();
  v2 = sub_1C3D200C4();

  *a1 = v2;
  return result;
}

uint64_t sub_1C3C226D8()
{
  v1 = *v0;
  sub_1C3D20B04();
  MEMORY[0x1C6930170](v1);
  return sub_1C3D20B34();
}

uint64_t sub_1C3C22720()
{
  v1 = *v0;
  sub_1C3D20B04();
  MEMORY[0x1C6930170](v1);
  return sub_1C3D20B34();
}

uint64_t sub_1C3C22764(uint64_t a1)
{
  v2 = sub_1C3C254A4(&qword_1EC080E30, type metadata accessor for Key);
  v3 = sub_1C3C254A4(&qword_1EC0854F8, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C3C22820(uint64_t a1)
{
  v2 = sub_1C3C254A4(&qword_1EC0854E0, type metadata accessor for UIContentSizeCategory);
  v3 = sub_1C3C254A4(&unk_1EC0854E8, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C3C228DC(uint64_t a1)
{
  v2 = sub_1C3C254A4(&qword_1EC085678, type metadata accessor for AttributeName);
  v3 = sub_1C3C254A4(&qword_1EC085680, type metadata accessor for AttributeName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C3C22998@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C3D200C4();

  *a1 = v2;
  return result;
}

uint64_t sub_1C3C229E0(uint64_t a1)
{
  v2 = sub_1C3C254A4(&qword_1EC085688, type metadata accessor for Name);
  v3 = sub_1C3C254A4(&qword_1EC085690, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C3C22A9C()
{
  v0 = sub_1C3D20104();
  v1 = MEMORY[0x1C692F840](v0);

  return v1;
}

uint64_t sub_1C3C22AD8()
{
  sub_1C3D20104();
  sub_1C3D20164();
}

uint64_t sub_1C3C22B2C()
{
  sub_1C3D20104();
  sub_1C3D20B04();
  sub_1C3D20164();
  v0 = sub_1C3D20B34();

  return v0;
}

uint64_t sub_1C3C22BA0()
{
  v0 = sub_1C3D20104();
  v2 = v1;
  if (v0 == sub_1C3D20104() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C3D20A54();
  }

  return v5 & 1;
}

unint64_t sub_1C3C22C28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C3C22CF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C3C233C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C3C22CF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C3C22E00(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C3D20884();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C3C22E00(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C3C22E4C(a1, a2);
  sub_1C3C22F7C(&unk_1F42FA508);
  return v3;
}

uint64_t sub_1C3C22E4C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C3C23068(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C3D20884();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C3D201C4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C3C23068(v10, 0);
        result = sub_1C3D20824();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C3C22F7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C3C230F4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C3C23068(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C396DF78(0, &qword_1EC0810F8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C3C230F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &qword_1EC0810F8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C3C23200(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C3CA82E8(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_1C3D20A04();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 3);
          if (v13 >= *(v12 - 1))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 40);
          v16 = *(v12 + 8);
          *(v12 + 24) = *(v12 - 8);
          *(v12 + 40) = v16;
          *(v12 - 1) = v13;
          *v12 = v14;
          *(v12 + 8) = v15;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C3D202E4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1C3C23424(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_1C3C233B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C3C233C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C3C23424(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C3CA7838(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C3C239B8((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v14 = *v12;
      v13 = v12 + 8;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 4;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 32 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v24 - 16);
            *v23 = *(v24 - 32);
            v23[1] = v27;
            *(v24 - 32) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 32;
          v11 += 32;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C3C4622C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_1C3C4622C((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        sub_1C3C239B8((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 32;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 40);
    v36 = *(v34 + 48);
    v37 = *(v34 + 16);
    *(v34 + 32) = *v34;
    *(v34 + 48) = v37;
    *v34 = v32;
    *(v34 + 8) = v35;
    *(v34 + 16) = v36;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C3C239B8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 4;
    v5 -= 4;
    v19 = v14;
    do
    {
      v20 = v5 + 4;
      v21 = *(v19 - 4);
      v19 -= 4;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 4, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

char *sub_1C3C23BBC(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C23F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C3C23BDC(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C24070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C3C23BFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1C3C247A8(a1, a2, a3, *v3, &qword_1EC0855F8, MEMORY[0x1E6968848], MEMORY[0x1E6968848]);
  *v3 = result;
  return result;
}

char *sub_1C3C23C4C(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C24194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C3C23C6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1C3C247A8(a1, a2, a3, *v3, &qword_1EC0855B0, MEMORY[0x1E69A2EF8], MEMORY[0x1E69A2EF8]);
  *v3 = result;
  return result;
}

char *sub_1C3C23CBC(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C242C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C3C23CDC(size_t a1, int64_t a2, char a3)
{
  result = sub_1C3C247A8(a1, a2, a3, *v3, &qword_1EC085588, MEMORY[0x1E69A2F20], MEMORY[0x1E69A2F20]);
  *v3 = result;
  return result;
}

char *sub_1C3C23D2C(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C24988(a1, a2, a3, *v3, &qword_1EC085598, sub_1C3C256F4);
  *v3 = result;
  return result;
}

char *sub_1C3C23D68(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C243FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C3C23D88(void *a1, int64_t a2, char a3)
{
  result = sub_1C3C24520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C3C23DA8(size_t a1, int64_t a2, char a3)
{
  result = sub_1C3C247A8(a1, a2, a3, *v3, &qword_1EC085590, MEMORY[0x1E6969F20], MEMORY[0x1E6969F20]);
  *v3 = result;
  return result;
}

char *sub_1C3C23DF8(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C24658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C3C23E18(size_t a1, int64_t a2, char a3)
{
  result = sub_1C3C247A8(a1, a2, a3, *v3, &qword_1EC0855C8, MEMORY[0x1E69D36D8], MEMORY[0x1E69D36D8]);
  *v3 = result;
  return result;
}

size_t sub_1C3C23E68(size_t a1, int64_t a2, char a3)
{
  result = sub_1C3C247A8(a1, a2, a3, *v3, &unk_1EC0855D0, type metadata accessor for SleepScoreChartData, type metadata accessor for SleepScoreChartData);
  *v3 = result;
  return result;
}

char *sub_1C3C23EB8(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C24988(a1, a2, a3, *v3, &qword_1EC085518, type metadata accessor for CGPoint);
  *v3 = result;
  return result;
}

void *sub_1C3C23EF4(void *a1, int64_t a2, char a3)
{
  result = sub_1C3C24A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C3C23F14(char *a1, int64_t a2, char a3)
{
  result = sub_1C3C24BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C3C23F34(void *a1, int64_t a2, char a3)
{
  result = sub_1C3C24D20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C3C23F54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &unk_1EC085600, &type metadata for StateOfMindBucketData, MEMORY[0x1E69E6F90]);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1C3C24070(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &qword_1EC081100, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

char *sub_1C3C24194(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &qword_1EC080D50, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
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

char *sub_1C3C242C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &qword_1EC085580, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C3C243FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &qword_1EC080D90, &type metadata for AccessoryRectangularTitleView.TitleDetail, MEMORY[0x1E69E6F90]);
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

void *sub_1C3C24520(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C3C256A0(0, &qword_1EC0855E0, sub_1C3C25860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C3C25860();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C3C24658(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &qword_1EC086D20, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1C3C247A8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1C3C256A0(0, a5, a6);
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

char *sub_1C3C24988(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1C3C256A0(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1C3C24A88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C3C257A4(0, &qword_1EC0855B8, &qword_1EC0855C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C3C25804(0, &qword_1EC0855C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C3C24BE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396DF78(0, &qword_1EC085510, &type metadata for HKMultiLineSeriesCoordinate, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C3C24D20(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C3C257A4(0, &qword_1EC085500, &qword_1EC085508);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C3C25804(0, &qword_1EC085508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C3C24E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 48);
  v5 = v1;
  do
  {
    v6 = *v4;
    v4 += 4;
    v7 = __OFADD__(result, v6);
    result += v6;
    if (v7)
    {
      __break(1u);
      goto LABEL_17;
    }

    --v5;
  }

  while (v5);
  v8 = v1 - 1;
  if (v1 == 1)
  {
    return result;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  for (i = (a1 + 72); ; i += 4)
  {
    if (*(i - 1) < v9)
    {
      v9 = *(i - 1);
    }

    if (*i >= v10)
    {
      v10 = *i;
    }

    if (v9 > v10)
    {
      break;
    }

    if (!--v8)
    {
      return result;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for StateOfMindChartPoint()
{
  result = qword_1EC0852C8;
  if (!qword_1EC0852C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3C24F78()
{
  result = sub_1C3D1DC54();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C3C2517C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3C2519C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C3C25200(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3C25220(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1C3C254A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3C256A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D20A24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C256F4()
{
  if (!qword_1EC0855A0)
  {
    sub_1C3C25750();
    v0 = sub_1C3D20014();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0855A0);
    }
  }
}

unint64_t sub_1C3C25750()
{
  result = qword_1EC086B60;
  if (!qword_1EC086B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086B60);
  }

  return result;
}

void sub_1C3C257A4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C3C25804(255, a3);
    v4 = sub_1C3D20A24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3C25804(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C3C25860()
{
  if (!qword_1EC0855E8)
  {
    sub_1C3C258C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0855E8);
    }
  }
}

unint64_t sub_1C3C258C4()
{
  result = qword_1EC0855F0;
  if (!qword_1EC0855F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0855F0);
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

uint64_t sub_1C3C25BEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3C25C0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

UIColor __swiftcall UIColor.dynamic(light:dark:)(UIColor light, UIColor dark)
{
  v4 = swift_allocObject();
  v4[2].super.isa = light.super.isa;
  v4[3].super.isa = dark.super.isa;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11[4] = sub_1C3C25DC4;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C3C26164;
  v11[3] = &block_descriptor;
  v6 = _Block_copy(v11);
  v7 = light.super.isa;
  v8 = dark.super.isa;
  v9 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  return v9;
}

id sub_1C3C25DC4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 userInterfaceStyle];
  if (v4 == 2)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id static UIColor.dynamic(light:dark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v13[4] = sub_1C3C261E4;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C3C26164;
  v13[3] = &block_descriptor_6;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v11;
}

id static UIColor.stateOfMindChartVeryUnpleasant.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.360784314 green:0.239215686 blue:0.8 alpha:1.0];
}

id static UIColor.stateOfMindChartUnpleasant.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.270588235 green:0.403921569 blue:0.901960784 alpha:1.0];
}

id static UIColor.stateOfMindChartSlightlyUnpleasant.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.270588235 green:0.545098039 blue:0.901960784 alpha:1.0];
}

id static UIColor.stateOfMindChartNeutral.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.321568627 green:0.8 blue:0.768627451 alpha:1.0];
}

id static UIColor.stateOfMindChartSlightlyPleasant.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.57254902 green:0.850980392 blue:0.0862745098 alpha:1.0];
}

id static UIColor.stateOfMindChartPleasant.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:1.0 green:0.623529412 blue:0.0 alpha:1.0];
}

id static UIColor.stateOfMindChartVeryPleasant.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:1.0 green:0.431372549 blue:0.160784314 alpha:1.0];
}

id sub_1C3C26164(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3C261E4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = [a1 userInterfaceStyle];
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v4(a1);
  }

  else
  {
    return v3(a1);
  }
}

id AudiogramLongitudinalOverlayRoomViewController.__allocating_init(applicationItems:factorDisplayTypes:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1C3C27CB4(0, &unk_1EC085700);
  v4 = sub_1C3D202A4();

  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, 0, a1, v4, 3);

  return v5;
}

id AudiogramLongitudinalOverlayRoomViewController.init(applicationItems:factorDisplayTypes:)(void *a1)
{
  sub_1C3C27CB4(0, &unk_1EC085700);
  v3 = sub_1C3D202A4();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for AudiogramLongitudinalOverlayRoomViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, 0, a1, v3, 3);

  return v4;
}

void sub_1C3C26594()
{
  v1 = [v0 applicationItems];
  v2 = [v1 healthStore];

  v3 = objc_allocWithZone(type metadata accessor for HKInteractiveChartInteractionAnalyticsManager());
  v4 = sub_1C3C3747C(v2);

  v5 = [v0 applicationItems];
  v6 = [v5 displayTypeController];

  sub_1C3C27CB4(0, &qword_1EC0857A0);
  v7 = [swift_getObjCClassFromMetadata() audiogramSampleType];
  v8 = [v6 displayTypeForObjectType_];

  if (v8)
  {
    v9 = objc_allocWithZone(type metadata accessor for HKInteractiveChartInteractionAnalyticsEvent());
    v10 = v8;
    v11 = sub_1C3CC3C70(v10);

    sub_1C3C36EB4(v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3C26B28()
{
  v1 = v0;
  v2 = [v0 applicationItems];
  v3 = [v2 displayTypeController];

  v4 = [objc_opt_self() audiogramSampleType];
  v5 = [v3 displayTypeForObjectType_];

  if (v5)
  {
    sub_1C3D208C4();
    sub_1C3D20374();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v6 = v5;
    v7 = [v1 applicationItems];
    v8 = type metadata accessor for AudiogramLongitudinalHearingLevelClassificationOverlayContext();
    v9 = objc_allocWithZone(v8);
    sub_1C3CB69F0(1, v6, v7);

    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v10 = v6;
    v11 = [v1 applicationItems];
    v12 = objc_allocWithZone(v8);
    sub_1C3CB69F0(2, v10, v11);

    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v13 = v10;
    v14 = [v1 applicationItems];
    v15 = objc_allocWithZone(v8);
    sub_1C3CB69F0(3, v13, v14);

    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = v13;
    v17 = [v1 applicationItems];
    v18 = objc_allocWithZone(v8);
    sub_1C3CB69F0(4, v16, v17);

    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v19 = v16;
    v20 = [v1 applicationItems];
    v21 = objc_allocWithZone(v8);
    sub_1C3CB69F0(5, v19, v20);

    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
  }

  else
  {
    __break(1u);
  }
}

id AudiogramLongitudinalOverlayRoomViewController.__allocating_init(displayDate:applicationItems:factorDisplayTypes:mode:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C3D1E1E4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a1, 1, v10) != 1)
  {
    v12 = sub_1C3D1E174();
    (*(v11 + 8))(a1, v10);
  }

  if (a3)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v13 = sub_1C3D202A4();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v5) initWithDisplayDate:v12 applicationItems:a2 factorDisplayTypes:v13 mode:a4];

  return v14;
}

id AudiogramLongitudinalOverlayRoomViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramLongitudinalOverlayRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall AudiogramLongitudinalOverlayRoomViewController.infographicViewController(for:healthStore:)(UIViewController_optional *__return_ptr retstr, HKDisplayType *a2, HKHealthStore healthStore)
{
  v3 = [objc_opt_self() hearingLossInfographicViewController];

  v4 = v3;
}

id AudiogramLongitudinalOverlayRoomViewController.string(for:timeScope:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 chartController];
  if (result)
  {
    v7 = result;
    v8 = [result stringForValueRange:a1 timeScope:a2];

    if (v8)
    {
      v9 = sub_1C3D20104();

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1C3C27704(void *a1)
{
  v1 = [a1 displayTypeController];
  v2 = [objc_opt_self() audiogramSampleType];
  v3 = [v1 displayTypeForObjectType_];

  if (v3)
  {
    v4 = [v3 localization];

    v5 = [v4 displayName];
    sub_1C3D20104();
  }

  else
  {
    __break(1u);
  }
}

double sub_1C3C277F0()
{
  v1 = v0;
  sub_1C3C26B28();
  if (v2 >> 62)
  {
    sub_1C3C27B94();
    sub_1C3D20954();
  }

  else
  {

    sub_1C3D20A64();
    sub_1C3C27B94();
  }

  v3 = objc_allocWithZone(HKOverlayContextSection);
  sub_1C3C27B94();
  v4 = sub_1C3D202A4();

  v5 = [v3 initWithSectionTitle:0 overlayContextItems:v4];

  v16[4] = v5;
  v6 = 0;
  v16[5] = [v1 buildFactorContextSectionForChartController];
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      v13 = v16[v6 + 4];
      sub_1C3D20374();
      v14 = v13;
      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      ++v6;
      if (v13)
      {
        break;
      }

      if (v6 == 2)
      {
        goto LABEL_4;
      }
    }

    MEMORY[0x1C692F8F0](v12);
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();
  }

  while (v6 != 2);
LABEL_4:
  sub_1C3C27BF8();
  swift_arrayDestroy();
  v7 = objc_allocWithZone(HKOverlayContextSectionContainer);
  sub_1C3C27CB4(0, &unk_1EC085790);
  v8 = sub_1C3D202A4();

  v9 = [v7 initWithContainerTitle:0 overlayContextSections:v8];

  sub_1C3C27C60();
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_1C3D5EAE0;
  *(v10 + 32) = v9;
  return result;
}

void sub_1C3C27AE0()
{
  if (!qword_1EC085770)
  {
    sub_1C3D1E1E4();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085770);
    }
  }
}

uint64_t sub_1C3C27B38(uint64_t a1)
{
  sub_1C3C27AE0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C3C27B94()
{
  result = qword_1EC085780;
  if (!qword_1EC085780)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC085780);
  }

  return result;
}

void sub_1C3C27BF8()
{
  if (!qword_1EC085788)
  {
    sub_1C3C27CB4(255, &unk_1EC085790);
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085788);
    }
  }
}

void sub_1C3C27C60()
{
  if (!qword_1EC080D60)
  {
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080D60);
    }
  }
}

uint64_t sub_1C3C27CB4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1C3C27CFC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v77 = a1;
  v78 = a2;
  sub_1C3C296CC(0, &qword_1EC0857C0, type metadata accessor for SleepScoreChartData);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - v5;
  v76 = type metadata accessor for SleepScoreChartData();
  v71 = *(v76 - 8);
  v7 = MEMORY[0x1EEE9AC00](v76);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v69 - v9;
  v10 = sub_1C3D1FE54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v79 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v69 - v14;
  sub_1C3C29580();
  v84 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C295E4();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v80 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v69 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v69 - v25;
  sub_1C3C296CC(0, &qword_1EC086F30, MEMORY[0x1E696B418]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v69 - v27;
  sub_1C3C29720();
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29820(v3, v32, sub_1C3C29314);
  v33 = *(v30 + 44);
  (*(v11 + 16))(&v32[v33], v3, v10);
  v34 = *(v11 + 56);
  v11 += 56;
  v89 = v34;
  v34(&v32[v33], 0, 1, v10);
  v35 = (v11 - 8);
  v90 = v11;
  v93 = (v11 - 48);
  v75 = (v71 + 48);
  v72 = MEMORY[0x1E69E7CC0];
  v85 = v24;
  v86 = (v11 - 24);
  v92 = v33;
  v81 = v6;
  v83 = v28;
  while (1)
  {
    v36 = v88;
    v89(v88, 1, 1, v10);
    v37 = *(v84 + 48);
    v38 = v87;
    sub_1C3C29820(&v32[v33], v87, sub_1C3C295E4);
    v39 = v38;
    sub_1C3C29820(v36, v38 + v37, sub_1C3C295E4);
    v40 = *v35;
    if ((*v35)(v39, 1, v10) == 1)
    {
      sub_1C3C29888(v36, sub_1C3C295E4);
      v41 = v40(v39 + v37, 1, v10);
      v42 = v83;
      if (v41 == 1)
      {
        sub_1C3C29888(v39, sub_1C3C295E4);
LABEL_23:
        sub_1C3C29888(v32, sub_1C3C29720);
        v89(v42, 1, 1, v10);
        return v72;
      }

      goto LABEL_7;
    }

    sub_1C3C29820(v39, v24, sub_1C3C295E4);
    v43 = v40(v39 + v37, 1, v10);
    v42 = v83;
    if (v43 == 1)
    {
      sub_1C3C29888(v88, sub_1C3C295E4);
      (*v93)(v24, v10);
LABEL_7:
      sub_1C3C29888(v39, sub_1C3C29580);
      goto LABEL_9;
    }

    v44 = v39 + v37;
    v45 = v73;
    (*v86)(v73, v44, v10);
    sub_1C3C29950(&unk_1EC0862A0);
    v74 = sub_1C3D20034();
    v46 = *v93;
    (*v93)(v45, v10);
    sub_1C3C29888(v88, sub_1C3C295E4);
    v46(v85, v10);
    v33 = v92;
    sub_1C3C29888(v87, sub_1C3C295E4);
    if (v74)
    {
      goto LABEL_23;
    }

LABEL_9:
    v47 = v82;
    sub_1C3C29820(&v32[v33], v82, sub_1C3C295E4);
    result = (v40)(v47, 1, v10);
    if (result == 1)
    {
      goto LABEL_26;
    }

    v49 = *v86;
    (*v86)(v42, v47, v10);
    v50 = &v32[v33];
    v51 = v80;
    sub_1C3C298E8(v50, v80, sub_1C3C295E4);
    result = (v40)(v51, 1, v10);
    v52 = v81;
    if (result == 1)
    {
      break;
    }

    v53 = v79;
    v49(v79, v51, v10);
    sub_1C3C29314();
    sub_1C3C29950(&unk_1EC0862A0);
    if (sub_1C3D20034())
    {
      v54 = v53;
      v55 = *v93;
      (*v93)(v54, v10);
      v56 = 1;
      v24 = v85;
      v57 = v92;
    }

    else
    {
      v94 = 1;
      sub_1C3C29950(&qword_1EC0857D8);
      v57 = v92;
      sub_1C3D206F4();
      v58 = v53;
      v55 = *v93;
      (*v93)(v58, v10);
      v56 = 0;
      v24 = v85;
    }

    v59 = &v32[v57];
    v60 = v89;
    v89(v59, v56, 1, v10);
    v60(v42, 0, 1, v10);
    v61 = v91;
    v77(v42);
    v91 = v61;
    if (v61)
    {
      v55(v42, v10);
      sub_1C3C29888(v32, sub_1C3C29720);
      v68 = v72;

      return v68;
    }

    v55(v42, v10);
    if ((*v75)(v52, 1, v76) == 1)
    {
      sub_1C3C29994(v52);
      v33 = v92;
    }

    else
    {
      v62 = v69;
      sub_1C3C298E8(v52, v69, type metadata accessor for SleepScoreChartData);
      sub_1C3C298E8(v62, v70, type metadata accessor for SleepScoreChartData);
      v63 = v72;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = sub_1C3C46324(0, v63[2] + 1, 1, v63);
      }

      v72 = v63;
      v66 = v63[2];
      v65 = v63[3];
      if (v66 >= v65 >> 1)
      {
        v72 = sub_1C3C46324(v65 > 1, v66 + 1, 1, v72);
      }

      v67 = v72;
      v72[2] = v66 + 1;
      sub_1C3C298E8(v70, v67 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v66, type metadata accessor for SleepScoreChartData);
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1C3C2877C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for SleepScoreChartData();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x1C692F8F0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      sub_1C3D202F4();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

void *sub_1C3C288FC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x1C692F8F0](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      result = sub_1C3D202F4();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

id sub_1C3C28A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v28 = a1;
  v29 = a4;
  v31 = a3;
  v32 = *v6;
  v7 = sub_1C3D1E6F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29314();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29394();
  v30 = MEMORY[0x1C692FB80](*MEMORY[0x1E696B6B8]);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_1C3C29820(v28, v13, sub_1C3C29314);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v7);
  v15 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v8 + 80) + v16 + 8) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v31 & 1;
  sub_1C3C298E8(v13, v19 + v15, sub_1C3C29314);
  *(v19 + v16) = v14;
  (*(v8 + 32))(v19 + v17, v27, v7);
  v20 = (v19 + v18);
  v21 = v34;
  *v20 = v33;
  v20[1] = v21;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v22 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  aBlock[4] = sub_1C3C293E0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C3C344C0;
  aBlock[3] = &block_descriptor_0;
  v23 = _Block_copy(aBlock);

  v24 = v30;
  v25 = [v22 initWithSampleType:v30 predicate:0 limit:1 sortDescriptors:0 resultsHandler:v23];

  _Block_release(v23);

  return v25;
}

uint64_t sub_1C3C28DC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v39 = a3;
  sub_1C3C29A0C();
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = (a2 & 1) == 0 || (0x6DB6DB6DB6DB6DB7 * sub_1C3D1FE34() + 0x1249249249249249) < 0x2492492492492493;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    os_unfair_lock_lock(Strong + 4);
    v19 = sub_1C3C29A74(0x64uLL);
    os_unfair_lock_unlock(v18 + 4);

    if (v16)
    {
      v20 = v19 + 1;
      goto LABEL_9;
    }

LABEL_11:
    v33 = type metadata accessor for SleepScoreChartData();
    return (*(*(v33 - 8) + 56))(a5, 1, 1, v33);
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  v20 = 0;
LABEL_9:
  v21 = sub_1C3D1FE54();
  sub_1C3C29950(&qword_1EC086290);
  result = sub_1C3D20004();
  if (result)
  {
    v23 = *(v21 - 8);
    v24 = v23;
    v36 = v20;
    v25 = *(v23 + 16);
    v37 = v5;
    v25(v15, a1, v21);
    v25(&v15[*(v10 + 48)], a1, v21);
    sub_1C3C29820(v15, v13, sub_1C3C29A0C);
    v26 = *(v10 + 48);
    v35 = *(v24 + 32);
    v35(a5, v13, v21);
    v27 = *(v24 + 8);
    v27(&v13[v26], v21);
    sub_1C3C298E8(v15, v13, sub_1C3C29A0C);
    v28 = *(v10 + 48);
    sub_1C3C29314();
    v35(a5 + *(v29 + 36), &v13[v28], v21);
    v27(v13, v21);
    v30 = type metadata accessor for SleepScoreChartData();
    v31 = v30[9];
    v32 = sub_1C3D1E6F4();
    (*(*(v32 - 8) + 16))(a5 + v31, v39, v32);
    *(a5 + v30[5]) = v36;
    *(a5 + v30[6]) = 0;
    *(a5 + v30[7]) = 0;
    *(a5 + v30[8]) = 0;
    *(a5 + v30[10]) = v38 & 1;
    return (*(*(v30 - 1) + 56))(a5, 0, 1, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C3C291F4()
{
  if (!qword_1EC0857B0)
  {
    v0 = sub_1C3D1EAF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0857B0);
    }
  }
}

uint64_t sub_1C3C2927C(unint64_t a1, unint64_t a2)
{
  v2 = a1 << a2;
  if (a2 == 64)
  {
    v2 = 0;
  }

  v3 = a1 >> -a2;
  if (!a2)
  {
    v3 = 0;
  }

  v4 = v2 | v3;
  if (a2 <= 0x40)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3C292A8()
{
  v1 = v0[1];
  v2 = 9 * sub_1C3C2927C(5 * v1, 7uLL);
  v3 = v0[2] ^ *v0;
  v4 = v0[3] ^ v1;
  *v0 ^= v4;
  v0[1] = v3 ^ v1;
  v0[2] = v3 ^ (v1 << 17);
  v0[3] = sub_1C3C2927C(v4, 0x2DuLL);
  return v2;
}

void sub_1C3C29314()
{
  if (!qword_1EC086F70)
  {
    sub_1C3D1FE54();
    sub_1C3C29950(&qword_1EC086290);
    v0 = sub_1C3D20014();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086F70);
    }
  }
}

unint64_t sub_1C3C29394()
{
  result = qword_1EC0857B8;
  if (!qword_1EC0857B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0857B8);
  }

  return result;
}

uint64_t sub_1C3C293E0()
{
  sub_1C3C29314();
  v2 = (*(*(v1 - 8) + 64) + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(sub_1C3D1E6F4() - 8);
  v4 = (v2 + *(v3 + 80) + 8) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v2);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v0 + 16);
  v12 = v6;
  v13 = v0 + v4;
  v14 = v11;
  v15 = v8;
  sub_1C3C27CFC(sub_1C3C29558, &v10);
  v7();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C3C29580()
{
  if (!qword_1EC0857C8)
  {
    sub_1C3C295E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0857C8);
    }
  }
}

void sub_1C3C295E4()
{
  if (!qword_1EC0857D0)
  {
    sub_1C3D1FE54();
    sub_1C3C29950(&qword_1EC0857D8);
    sub_1C3C29678();
    v0 = sub_1C3D20024();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0857D0);
    }
  }
}

unint64_t sub_1C3C29678()
{
  result = qword_1EC0857E0;
  if (!qword_1EC0857E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0857E0);
  }

  return result;
}

void sub_1C3C296CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C29720()
{
  if (!qword_1EC0857E8)
  {
    sub_1C3C29314();
    sub_1C3C29784();
    v0 = sub_1C3D20934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0857E8);
    }
  }
}

unint64_t sub_1C3C29784()
{
  result = qword_1EC0857F0;
  if (!qword_1EC0857F0)
  {
    sub_1C3C29314();
    sub_1C3C29950(&qword_1EC0857D8);
    sub_1C3C29678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0857F0);
  }

  return result;
}

uint64_t sub_1C3C29820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C29888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C298E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C29950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C3D1FE54();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3C29994(uint64_t a1)
{
  sub_1C3C296CC(0, &qword_1EC0857C0, type metadata accessor for SleepScoreChartData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C3C29A0C()
{
  if (!qword_1EC087650)
  {
    sub_1C3D1FE54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC087650);
    }
  }
}

unint64_t sub_1C3C29A74(unint64_t result)
{
  if (result)
  {
    v2 = v1[1];
    v3 = 9 * __ROR8__(5 * v2, 57);
    v4 = v1[2] ^ *v1;
    v5 = v1[3] ^ v2;
    v6 = v4 ^ v2;
    v7 = v5 ^ *v1;
    *v1 = v7;
    v1[1] = v4 ^ v2;
    v8 = __ROR8__(v5, 19);
    v9 = v4 ^ (v2 << 17);
    v1[2] = v9;
    v1[3] = v8;
    v10 = v3 * result;
    v11 = (v3 * result) >> 64;
    if (v3 * result < result)
    {
      v12 = -result % result;
      if (v12 > v10)
      {
        do
        {
          v13 = 9 * __ROR8__(5 * v6, 57);
          v14 = v7 ^ v9;
          v15 = v6 ^ v8;
          v9 ^= v7 ^ (v6 << 17);
          v6 ^= v14;
          v7 ^= v15;
          v8 = __ROR8__(v15, 19);
        }

        while (v12 > v13 * result);
        *v1 = v7;
        v1[1] = v6;
        v11 = (v13 * result) >> 64;
        v1[2] = v9;
        v1[3] = v8;
      }
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1C3C29B90(void *a1, uint64_t *a2)
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

void *sub_1C3C29BC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C3C29BEC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C3C29CC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C3D1F3B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2CC98(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryCircularSymbolDetailView();
  sub_1C3C2EC60(v1 + *(v10 + 40), v9, sub_1C3C2CC98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C3D1FEA4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C3D20504();
    v13 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C3C29EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C3D1F3B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2CCCC(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryCircularSymbolDetailView();
  sub_1C3C2EC60(v1 + *(v10 + 44), v9, sub_1C3C2CCCC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C3D1FEB4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C3D20504();
    v13 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t AccessoryCircularSymbolDetailView.init(symbolName:detailOptions:options:baseAccessibilityIdentifier:customSymbolVoiceOverString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v39 = a1;
  v40 = a2;
  v16 = sub_1C3D1DF24();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v44 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C3D1DE74();
  v18 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a4;
  v20 = *(a3 + 16);
  if (v20)
  {
    v33 = a9;
    v34 = a5;
    v35 = a6;
    v36 = a7;
    v37 = a8;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C3C23BFC(0, v20, 0);
    sub_1C3D20374();
    v21 = v45;
    v41 = v18 + 32;
    v32 = a3;
    v22 = a3 + 40;
    do
    {

      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_1C3D1DF14();
      v23 = v42;
      sub_1C3D1DE84();

      v45 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C3C23BFC(v24 > 1, v25 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v25 + 1;
      (*(v18 + 32))(v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v23, v43);
      v22 += 16;
      --v20;
    }

    while (v20);

    a7 = v36;
    a8 = v37;
    a5 = v34;
    a6 = v35;
    a9 = v33;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v26 = type metadata accessor for AccessoryCircularSymbolDetailView();
  v27 = v26[10];
  *(a9 + v27) = swift_getKeyPath();
  sub_1C3C2CC98(0);
  swift_storeEnumTagMultiPayload();
  v28 = v26[11];
  *(a9 + v28) = swift_getKeyPath();
  sub_1C3C2CCCC(0);
  swift_storeEnumTagMultiPayload();
  v29 = a9 + v26[12];
  result = swift_getKeyPath();
  *v29 = result;
  v29[8] = 0;
  v31 = v40;
  *a9 = v39;
  a9[1] = v31;
  a9[2] = 0;
  a9[3] = v21;
  a9[4] = v38;
  a9[5] = a5;
  a9[6] = a6;
  a9[7] = a7;
  a9[8] = a8;
  return result;
}

uint64_t AccessoryCircularSymbolDetailView.init(symbolName:symbol:attributedDetailOptions:options:baseAccessibilityIdentifier:customSymbolVoiceOverString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v16 = *a5;
  v17 = type metadata accessor for AccessoryCircularSymbolDetailView();
  v18 = v17[10];
  *(a9 + v18) = swift_getKeyPath();
  sub_1C3C2CC98(0);
  swift_storeEnumTagMultiPayload();
  v19 = v17[11];
  *(a9 + v19) = swift_getKeyPath();
  sub_1C3C2CCCC(0);
  swift_storeEnumTagMultiPayload();
  v20 = a9 + v17[12];
  result = swift_getKeyPath();
  *v20 = result;
  v20[8] = 0;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = v16;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t AccessoryCircularSymbolDetailView.init(symbol:detailOptions:options:baseAccessibilityIdentifier:customSymbolVoiceOverString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = sub_1C3D1DF24();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v43 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C3D1DE74();
  v18 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a3;
  v20 = *(a2 + 16);
  if (v20)
  {
    v33 = a1;
    v34 = a8;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C3C23BFC(0, v20, 0);
    sub_1C3D20374();
    v21 = a2;
    v22 = v44;
    v40 = v18 + 32;
    v32[1] = v21;
    v23 = v21 + 40;
    do
    {

      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_1C3D1DF14();
      v24 = v41;
      sub_1C3D1DE84();

      v44 = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C3C23BFC(v25 > 1, v26 + 1, 1);
        v22 = v44;
      }

      *(v22 + 16) = v26 + 1;
      (*(v18 + 32))(v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v26, v24, v42);
      v23 += 16;
      --v20;
    }

    while (v20);

    a6 = v37;
    a7 = v38;
    a4 = v35;
    a5 = v36;
    a1 = v33;
    a8 = v34;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v27 = type metadata accessor for AccessoryCircularSymbolDetailView();
  v28 = v27[10];
  *(a8 + v28) = swift_getKeyPath();
  sub_1C3C2CC98(0);
  swift_storeEnumTagMultiPayload();
  v29 = v27[11];
  *(a8 + v29) = swift_getKeyPath();
  sub_1C3C2CCCC(0);
  swift_storeEnumTagMultiPayload();
  v30 = a8 + v27[12];
  result = swift_getKeyPath();
  *v30 = result;
  v30[8] = 0;
  *a8 = 0;
  a8[1] = 0;
  a8[2] = a1;
  a8[3] = v22;
  a8[4] = v39;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  a8[8] = a7;
  return result;
}

id AccessoryCircularSymbolDetailView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C3D1FD14();
  a1[1] = v3;
  sub_1C3C2E7F0(0, &qword_1EC081358, sub_1C3C2CD00);
  return sub_1C3C2A8C0(v1, a1 + *(v4 + 44));
}

id sub_1C3C2A8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = a1;
  sub_1C3C2CE34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2DA68(0, &qword_1EC0812E0, sub_1C3C2CE34, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  sub_1C3C2CD70();
  v47 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v45 - v14;
  v15 = sub_1C3D1FE74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2CD3C(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - v23;
  sub_1C3D20374();
  v48 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = v52;
  if (sub_1C3C2AE80())
  {
    sub_1C3D1FE64();
    (*(v16 + 32))(v24, v18, v15);
    (*(v16 + 56))(v24, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v24, 1, 1, v15);
  }

  *v4 = sub_1C3D1F424();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_1C3C2E7F0(0, &qword_1EC081360, sub_1C3C2CEC8);
  sub_1C3C2AFF8(v25, &v4[*(v26 + 44)]);
  if ((~*(v25 + 32) & 3) == 0)
  {
    goto LABEL_9;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v28 = result;
    [result isAppleWatch];

LABEL_9:
    v29 = sub_1C3D1F744();
    sub_1C3D1F014();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_1C3C2E8B0(v4, v7, sub_1C3C2CE34);
    v38 = &v7[*(v46 + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    KeyPath = swift_getKeyPath();
    sub_1C3972BDC(v7, v13);
    v40 = &v13[*(v47 + 36)];
    *v40 = KeyPath;
    v40[1] = 0x3FE3333333333333;
    v41 = v49;
    sub_1C3C2E8B0(v13, v49, sub_1C3C2CD70);
    sub_1C3C2EC60(v24, v22, sub_1C3C2CD3C);
    v42 = v50;
    sub_1C3C2E9D8(v41, v50, sub_1C3C2CD70);
    v43 = v51;
    sub_1C3C2EC60(v22, v51, sub_1C3C2CD3C);
    sub_1C3C2CF60(0, &qword_1EC081140, sub_1C3C2CD3C, sub_1C3C2CD70);
    sub_1C3C2E9D8(v42, v43 + *(v44 + 48), sub_1C3C2CD70);
    sub_1C3C2E978(v41, sub_1C3C2CD70);
    sub_1C3C2E918(v24, sub_1C3C2CD3C);
    sub_1C3C2E978(v42, sub_1C3C2CD70);
    sub_1C3C2E918(v22, sub_1C3C2CD3C);
  }

  __break(1u);
  return result;
}

BOOL sub_1C3C2AE80()
{
  v1 = sub_1C3D1F3B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AccessoryCircularSymbolDetailView() + 48);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    if (v6)
    {
      return 0;
    }
  }

  else
  {

    sub_1C3D20504();
    v8 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();
    sub_1C3C2ECC8(v6, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15])
    {
      return 0;
    }
  }

  return (*(v0 + 32) & 2) == 0;
}

uint64_t sub_1C3C2AFF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a1;
  v150 = a2;
  v2 = type metadata accessor for AccessoryCircularSymbolDetailView();
  v119 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v120 = v3;
  v110 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2DC30();
  v148 = *(v4 - 8);
  v149 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v153 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2DBFC(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v151 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v108 - v9;
  v11 = MEMORY[0x1E697F948];
  sub_1C3C2D024(0, &qword_1EC081298, sub_1C3C2D0F0, sub_1C3C2D180, MEMORY[0x1E697F948]);
  v144 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v146 = v108 - v13;
  v115 = sub_1C3D1F6A4();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2D138(0);
  v118 = v15;
  v116 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v114 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2D0F0(0);
  v143 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v117 = v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1C3D1FEA4();
  v19 = *(v155 - 8);
  v20 = MEMORY[0x1EEE9AC00](v155);
  v138 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v140 = v108 - v22;
  sub_1C3C2D024(0, &qword_1EC081288, sub_1C3C2D42C, sub_1C3C2D514, v11);
  v127 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v129 = (v108 - v24);
  sub_1C3C2D024(0, &qword_1EC081290, sub_1C3C2D474, sub_1C3C2D4CC, v11);
  v108[2] = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v108 - v26;
  sub_1C3C2D4CC(0);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v31 = (v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C3C2D42C(0);
  v123 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v109 = v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1C3D1FEB4();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v156 = v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2D3E4(0);
  v128 = v35;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v122 = v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v125 = v108 - v38;
  sub_1C3C2D31C();
  v121 = v39;
  v135 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v157 = v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2D29C();
  v134 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v132 = v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2D1C8(0);
  v133 = v43;
  v131 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v130 = v108 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2D180(0);
  v137 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2D0A8(0);
  v142 = v48;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v136 = v108 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v141 = v108 - v51;
  sub_1C3C2CFDC(0);
  v53 = MEMORY[0x1EEE9AC00](v52 - 8);
  v147 = v108 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v158 = v108 - v55;
  v56 = sub_1C3D20374();
  v145 = sub_1C3D20364();
  v111 = v56;
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = v159[2];
  v139 = v47;
  if (v57)
  {
    v58 = v57;
  }

  else
  {
    if (v159[1])
    {

      v59 = sub_1C3D1FB84();
    }

    else
    {
      v59 = sub_1C3D1FBE4();
    }

    v58 = v59;
  }

  v60 = v159;
  sub_1C3C29EC4(v156);
  v61 = v60[4];
  v154 = v60[3];
  if (*(v154 + 16))
  {
    v62 = sub_1C3D1F894();
  }

  else
  {
    v62 = sub_1C3D1F804();
  }

  v63 = v62;
  KeyPath = swift_getKeyPath();
  v65 = KeyPath;
  v152 = v10;
  if (v61)
  {
    v68 = (v31 + *(v29 + 36));
    sub_1C3C2D5F8(0);
    v69 = v19;
    v108[1] = v29;
    v71 = *(v70 + 28);
    v72 = *MEMORY[0x1E69816C0];
    v73 = sub_1C3D1FBC4();
    v74 = v68 + v71;
    v19 = v69;
    (*(*(v73 - 8) + 104))(v74, v72, v73);
    *v68 = swift_getKeyPath();
    *v31 = v58;
    v31[1] = v65;
    v31[2] = v63;
    sub_1C3C2EC60(v31, v27, sub_1C3C2D4CC);
    swift_storeEnumTagMultiPayload();
    sub_1C3C2D474();
    sub_1C3C2D700();
    sub_1C3C2D778();

    v75 = v109;
    v10 = v152;
    sub_1C3D1F564();
    sub_1C3C2E918(v31, sub_1C3C2D4CC);
    sub_1C3C2EC60(v75, v129, sub_1C3C2D42C);
    swift_storeEnumTagMultiPayload();
    sub_1C3C2D514();
    sub_1C3C2D62C();
    sub_1C3C2D828();
    v67 = v122;
    sub_1C3D1F564();

    sub_1C3C2E918(v75, sub_1C3C2D42C);
  }

  else
  {
    v66 = v129;
    *v129 = v58;
    v66[1] = KeyPath;
    v66[2] = v63;
    swift_storeEnumTagMultiPayload();
    sub_1C3C2D514();
    sub_1C3C2D62C();
    sub_1C3C2D828();
    v67 = v122;
    sub_1C3D1F564();
  }

  (*(v124 + 8))(v156, v126);
  v76 = v125;
  sub_1C3C2ECD4(v67, v125, sub_1C3C2D3E4);
  sub_1C3C2D674(&qword_1EC081260, sub_1C3C2D3E4, sub_1C3C2D62C, sub_1C3C2D828);
  sub_1C3D1F9D4();
  sub_1C3C2E918(v76, sub_1C3C2D3E4);
  v77 = v140;
  sub_1C3C29CC8(v140);
  v78 = v138;
  sub_1C3D1FE94();
  v79 = sub_1C3D1FE84();
  v80 = *(v19 + 8);
  v80(v78, v155);
  v81 = v139;
  if (v79)
  {
    v82 = sub_1C3D1FB24();
  }

  else
  {
    v82 = sub_1C3D1FAE4();
  }

  v83 = v82;
  v80(v77, v155);
  v84 = swift_getKeyPath();
  v85 = v132;
  (*(v135 + 32))(v132, v157, v121);
  v86 = (v85 + *(v134 + 36));
  *v86 = v84;
  v86[1] = v83;
  sub_1C3C2D8C8();
  v87 = v130;
  sub_1C3D1F9A4();
  sub_1C3C2E978(v85, sub_1C3C2D29C);
  (*(v131 + 32))(v81, v87, v133);
  v88 = v137;
  *(v81 + *(v137 + 36)) = 0x3FF0000000000000;
  if (v159[8])
  {

    v89 = v112;
    sub_1C3D1F674();
    v90 = sub_1C3C2DAD4();
    v91 = v114;
    sub_1C3D1FA44();
    (*(v113 + 8))(v89, v115);
    v160 = v88;
    v161 = v90;
    swift_getOpaqueTypeConformance2();
    v92 = v117;
    v93 = v118;
    sub_1C3D1F9E4();

    (*(v116 + 8))(v91, v93);
    sub_1C3C2E9D8(v92, v146, sub_1C3C2D0F0);
    swift_storeEnumTagMultiPayload();
    sub_1C3C2EA40();
    v94 = v136;
    sub_1C3D1F564();
    sub_1C3C2E978(v92, sub_1C3C2D0F0);
  }

  else
  {
    sub_1C3C2E9D8(v81, v146, sub_1C3C2D180);
    swift_storeEnumTagMultiPayload();
    sub_1C3C2EA40();
    sub_1C3C2DAD4();
    v94 = v136;
    sub_1C3D1F564();
  }

  v95 = v141;
  sub_1C3C2E8B0(v94, v141, sub_1C3C2D0A8);
  sub_1C3C2E978(v81, sub_1C3C2D180);
  v96 = v159[6];
  v160 = v159[5];
  v161 = v96;

  MEMORY[0x1C692F800](0xD000000000000029, 0x80000001C3D822A0);
  sub_1C3C2EB20();
  sub_1C3D1FA64();

  sub_1C3C2E978(v95, sub_1C3C2D0A8);
  if (*(v154 + 16))
  {
    *v153 = sub_1C3D1F704();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1C3C2EBA0();
    v160 = v154;
    swift_getKeyPath();
    v97 = v110;
    sub_1C3C2EC60(v159, v110, type metadata accessor for AccessoryCircularSymbolDetailView);
    v98 = (*(v119 + 80) + 16) & ~*(v119 + 80);
    v99 = swift_allocObject();
    sub_1C3C2ECD4(v97, v99 + v98, type metadata accessor for AccessoryCircularSymbolDetailView);
    sub_1C3C2DDDC(0);
    sub_1C3C2D024(0, &qword_1EC0812A8, sub_1C3C2DE10, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1C3C2DBB4(&qword_1EC081130, sub_1C3C2DDDC);
    sub_1C3C2DBB4(&qword_1EC0813A0, MEMORY[0x1E6968848]);
    sub_1C3C2E014();

    v100 = v153;
    sub_1C3D1FCB4();

    v10 = v152;
    sub_1C3C2E8B0(v100, v152, sub_1C3C2DC30);
    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  (*(v148 + 56))(v10, v101, 1, v149);
  v102 = v158;
  v103 = v147;
  sub_1C3C2E9D8(v158, v147, sub_1C3C2CFDC);
  v104 = v151;
  sub_1C3C2E9D8(v10, v151, sub_1C3C2DBFC);
  v105 = v150;
  sub_1C3C2E9D8(v103, v150, sub_1C3C2CFDC);
  sub_1C3C2CF60(0, &qword_1EC081348, sub_1C3C2CFDC, sub_1C3C2DBFC);
  sub_1C3C2E9D8(v104, v105 + *(v106 + 48), sub_1C3C2DBFC);
  sub_1C3C2E978(v10, sub_1C3C2DBFC);
  sub_1C3C2E978(v102, sub_1C3C2CFDC);
  sub_1C3C2E978(v104, sub_1C3C2DBFC);
  sub_1C3C2E978(v103, sub_1C3C2CFDC);
}

uint64_t sub_1C3C2C518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v58 = a3;
  v50 = sub_1C3D1FEA4();
  v47 = *(v50 - 8);
  v4 = MEMORY[0x1EEE9AC00](v50);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v47 - v7;
  v8 = sub_1C3D1DE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2DF1C();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2DE9C();
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C2DE10();
  v55 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  v54 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a1, v8);
  v18 = sub_1C3D1F984();
  v20 = v19;
  v22 = v21;
  sub_1C3D1F7F4();
  v23 = sub_1C3D1F954();
  v25 = v24;
  v27 = v26;

  sub_1C3C2EE8C(v18, v20, v22 & 1);

  v28 = v57;
  sub_1C3C29CC8(v59);
  sub_1C3D1FE94();
  LOBYTE(v18) = sub_1C3D1FE84();
  v29 = *(v47 + 8);
  v30 = v50;
  v29(v6, v50);
  if (v18)
  {
    sub_1C3D1FB24();
  }

  else
  {
    sub_1C3D1FB34();
  }

  v29(v59, v30);
  v31 = sub_1C3D1F914();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1C3C2EE8C(v23, v25, v27 & 1);

  v60 = v31;
  v61 = v33;
  v62 = v35 & 1;
  v63 = v37;
  v38 = v49;
  sub_1C3D1FA24();
  sub_1C3C2EE8C(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v40 = v51;
  (*(v52 + 32))(v51, v38, v53);
  v41 = v40 + *(v48 + 36);
  *v41 = KeyPath;
  *(v41 + 8) = 2;
  *(v41 + 16) = 0;
  v42 = swift_getKeyPath();
  v43 = v56;
  sub_1C3C2E8B0(v40, v56, sub_1C3C2DE9C);
  v44 = v43 + *(v55 + 36);
  *v44 = v42;
  *(v44 + 8) = 1;
  v45 = *(v28 + 48);
  v60 = *(v28 + 40);
  v61 = v45;

  MEMORY[0x1C692F800](0xD00000000000002DLL, 0x80000001C3D822D0);
  sub_1C3C2E108();
  sub_1C3D1FA64();

  sub_1C3C2E978(v43, sub_1C3C2DE10);
}

id sub_1C3C2CA84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C3D1FD14();
  a1[1] = v3;
  sub_1C3C2E7F0(0, &qword_1EC081358, sub_1C3C2CD00);
  return sub_1C3C2A8C0(v1, a1 + *(v4 + 44));
}

uint64_t sub_1C3C2CB40()
{
  sub_1C3D1F354();
  sub_1C3C2DBB4(&qword_1EC0812A0, MEMORY[0x1E6985530]);
  sub_1C3D1F3E4();
  return v1;
}

uint64_t sub_1C3C2CBBC@<X0>(_BYTE *a1@<X8>)
{
  sub_1C3D1F354();
  sub_1C3C2DBB4(&qword_1EC0812A0, MEMORY[0x1E6985530]);
  result = sub_1C3D1F3E4();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for AccessoryCircularSymbolDetailView()
{
  result = qword_1EC0813C0;
  if (!qword_1EC0813C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3C2CD70()
{
  if (!qword_1EC0812B8)
  {
    sub_1C3C2DA68(255, &qword_1EC0812E0, sub_1C3C2CE34, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1C3C2E6A8(255, &qword_1EC081240, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0812B8);
    }
  }
}

void sub_1C3C2CE34()
{
  if (!qword_1EC0811A0)
  {
    sub_1C3C2CEC8(255);
    sub_1C3C2DBB4(&qword_1EC081168, sub_1C3C2CEC8);
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0811A0);
    }
  }
}

void sub_1C3C2CF04(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1C3C2CF60(255, a3, a4, a5);
    v6 = sub_1C3D1FD34();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C3C2CF60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C3C2D024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1C3C2D210(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1C3C2D29C()
{
  if (!qword_1EC081328)
  {
    sub_1C3C2D31C();
    sub_1C3C2D58C(255, &qword_1EC081210, &qword_1EC0811B0, MEMORY[0x1E69815C0]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081328);
    }
  }
}

void sub_1C3C2D31C()
{
  if (!qword_1EC0811C8)
  {
    sub_1C3C2D3E4(255);
    sub_1C3C2D674(&qword_1EC081260, sub_1C3C2D3E4, sub_1C3C2D62C, sub_1C3C2D828);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC0811C8);
    }
  }
}

void sub_1C3C2D474()
{
  if (!qword_1EC0812F8)
  {
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0812F8);
    }
  }
}

void sub_1C3C2D514()
{
  if (!qword_1EC0812E8)
  {
    sub_1C3C2D58C(255, &qword_1EC081220, &qword_1EC0811E0, MEMORY[0x1E6980F50]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0812E8);
    }
  }
}

void sub_1C3C2D58C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1C3C2E6A8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1C3D1F6D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C3C2D674(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3C2D700()
{
  result = qword_1EC081300;
  if (!qword_1EC081300)
  {
    sub_1C3C2D474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081300);
  }

  return result;
}

unint64_t sub_1C3C2D778()
{
  result = qword_1EC0812C8;
  if (!qword_1EC0812C8)
  {
    sub_1C3C2D4CC(255);
    sub_1C3C2D828();
    sub_1C3C2DBB4(&qword_1EC081208, sub_1C3C2D5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0812C8);
  }

  return result;
}

unint64_t sub_1C3C2D828()
{
  result = qword_1EC0812F0;
  if (!qword_1EC0812F0)
  {
    sub_1C3C2D514();
    sub_1C3C2D9DC(&qword_1EC081228, &qword_1EC081220, &qword_1EC0811E0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0812F0);
  }

  return result;
}

unint64_t sub_1C3C2D8C8()
{
  result = qword_1EC081330;
  if (!qword_1EC081330)
  {
    sub_1C3C2D29C();
    sub_1C3C2D3E4(255);
    sub_1C3C2D674(&qword_1EC081260, sub_1C3C2D3E4, sub_1C3C2D62C, sub_1C3C2D828);
    swift_getOpaqueTypeConformance2();
    sub_1C3C2D9DC(&qword_1EC081218, &qword_1EC081210, &qword_1EC0811B0, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081330);
  }

  return result;
}

uint64_t sub_1C3C2D9DC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C3C2D58C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3C2DA68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1C3C2DAD4()
{
  result = qword_1EC081340;
  if (!qword_1EC081340)
  {
    sub_1C3C2D180(255);
    sub_1C3C2D29C();
    sub_1C3C2D8C8();
    swift_getOpaqueTypeConformance2();
    sub_1C3C2DBB4(&qword_1EC081250, sub_1C3C2DA2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081340);
  }

  return result;
}

uint64_t sub_1C3C2DBB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3C2DC30()
{
  if (!qword_1EC081370)
  {
    sub_1C3C2DC94();
    sub_1C3C2DF9C();
    v0 = sub_1C3D1F0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081370);
    }
  }
}

void sub_1C3C2DC94()
{
  if (!qword_1EC081180)
  {
    sub_1C3C2DDDC(255);
    sub_1C3D1DE74();
    sub_1C3C2D024(255, &qword_1EC0812A8, sub_1C3C2DE10, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1C3C2DBB4(&qword_1EC081130, sub_1C3C2DDDC);
    sub_1C3C2DBB4(&qword_1EC0813A0, MEMORY[0x1E6968848]);
    v0 = sub_1C3D1FCC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081180);
    }
  }
}

void sub_1C3C2DE10()
{
  if (!qword_1EC0812D0)
  {
    sub_1C3C2DE9C();
    sub_1C3C2E6A8(255, &qword_1EC081230, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0812D0);
    }
  }
}

void sub_1C3C2DE9C()
{
  if (!qword_1EC081318)
  {
    sub_1C3C2DF1C();
    sub_1C3C2D58C(255, &qword_1EC0811F0, &qword_1EC0813B0, MEMORY[0x1E69E6530]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081318);
    }
  }
}

void sub_1C3C2DF1C()
{
  if (!qword_1EC0811C0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC0811C0);
    }
  }
}

unint64_t sub_1C3C2DF9C()
{
  result = qword_1EC081188;
  if (!qword_1EC081188)
  {
    sub_1C3C2DC94();
    sub_1C3C2E014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081188);
  }

  return result;
}

unint64_t sub_1C3C2E014()
{
  result = qword_1EC0812B0;
  if (!qword_1EC0812B0)
  {
    sub_1C3C2D024(255, &qword_1EC0812A8, sub_1C3C2DE10, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1C3C2E108();
    sub_1C3C2DBB4(&qword_1EC0811E8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0812B0);
  }

  return result;
}

unint64_t sub_1C3C2E108()
{
  result = qword_1EC0812D8;
  if (!qword_1EC0812D8)
  {
    sub_1C3C2DE10();
    sub_1C3C2E188();
    sub_1C3C2E258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0812D8);
  }

  return result;
}

unint64_t sub_1C3C2E188()
{
  result = qword_1EC081320;
  if (!qword_1EC081320)
  {
    sub_1C3C2DE9C();
    swift_getOpaqueTypeConformance2();
    sub_1C3C2D9DC(&qword_1EC0811F8, &qword_1EC0811F0, &qword_1EC0813B0, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081320);
  }

  return result;
}

unint64_t sub_1C3C2E258()
{
  result = qword_1EC081238;
  if (!qword_1EC081238)
  {
    sub_1C3C2E6A8(255, &qword_1EC081230, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081238);
  }

  return result;
}

unint64_t sub_1C3C2E2D8()
{
  result = qword_1EC0857F8;
  if (!qword_1EC0857F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0857F8);
  }

  return result;
}

unint64_t sub_1C3C2E330()
{
  result = qword_1EC085800;
  if (!qword_1EC085800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085800);
  }

  return result;
}

unint64_t sub_1C3C2E388()
{
  result = qword_1EC081158;
  if (!qword_1EC081158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081158);
  }

  return result;
}

unint64_t sub_1C3C2E3E0()
{
  result = qword_1EC081150;
  if (!qword_1EC081150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081150);
  }

  return result;
}

void sub_1C3C2E464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C3C2E4DC()
{
  sub_1C3C2E6A8(319, &qword_1EC0813B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C3C2E6A8(319, &qword_1EC0811A8, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C3C2DDDC(319);
      if (v2 <= 0x3F)
      {
        sub_1C3C2E464(319, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C3C2E464(319, &qword_1EC081380, MEMORY[0x1E6985838], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C3C2E6A8(319, &qword_1EC081378, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C3C2E6A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccessoryCircularSymbolDetailView.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessoryCircularSymbolDetailView.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_1C3C2E75C()
{
  if (!qword_1EC081190)
  {
    sub_1C3C2CD00(255);
    sub_1C3C2DBB4(&qword_1EC081178, sub_1C3C2CD00);
    v0 = sub_1C3D1FC94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081190);
    }
  }
}

void sub_1C3C2E7F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1F144();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3C2E85C@<X0>(void *a1@<X8>)
{
  result = sub_1C3D1F294();
  *a1 = v3;
  return result;
}

uint64_t sub_1C3C2E8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C2E918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C2E978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C2E9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C3C2EA40()
{
  result = qword_1EC081310;
  if (!qword_1EC081310)
  {
    sub_1C3C2D0F0(255);
    sub_1C3C2D180(255);
    sub_1C3C2DAD4();
    swift_getOpaqueTypeConformance2();
    sub_1C3C2DBB4(&qword_1EC0811E8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081310);
  }

  return result;
}

unint64_t sub_1C3C2EB20()
{
  result = qword_1EC081280;
  if (!qword_1EC081280)
  {
    sub_1C3C2D0A8(255);
    sub_1C3C2EA40();
    sub_1C3C2DAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081280);
  }

  return result;
}

void sub_1C3C2EBA0()
{
  if (!qword_1EC085808)
  {
    sub_1C3C2DC94();
    sub_1C3C2EC0C();
    v0 = sub_1C3D1F144();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085808);
    }
  }
}

unint64_t sub_1C3C2EC0C()
{
  result = qword_1EC081020;
  if (!qword_1EC081020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081020);
  }

  return result;
}

uint64_t sub_1C3C2EC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C2ECC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C3C2ECD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C2ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryCircularSymbolDetailView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C3C2C518(a1, v6, a2);
}

uint64_t sub_1C3C2EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1C3C2EE8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C3C2EEA0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1C3D20414();
  if (!v19)
  {
    return sub_1C3D202D4();
  }

  v41 = v19;
  v45 = sub_1C3D20904();
  v32 = sub_1C3D20914();
  sub_1C3D208B4();
  result = sub_1C3D20404();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1C3D20444();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1C3D208F4();
      result = sub_1C3D20434();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3C2F2F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a5();

  (*(*(a3 - 8) + 8))(a1, a3);
  return v8;
}

void sub_1C3C2F46C(uint64_t a1, void *a2, void *a3, void (*a4)(void, id), uint64_t a5)
{
  v44 = a2;
  v45 = a3;
  v8 = sub_1C3D1DCF4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C3D1E1E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C3D1EC24();
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C318F4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C3C319D0(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = *v20;
    a4(0, v21);
  }

  else
  {
    v41 = a4;
    v42 = a5;
    (*(v48 + 32))(v17, v20, v49);
    v43 = sub_1C3CEE848();
    v23 = v45;
    v24 = [v45 startDate];
    sub_1C3D1E1A4();

    v25 = sub_1C3D1E174();
    v26 = *(v12 + 8);
    v26(v14, v11);
    v27 = [v23 endDate];
    sub_1C3D1E1A4();

    v28 = sub_1C3D1E174();
    v26(v14, v11);
    v29 = [v23 statisticsInterval];
    sub_1C3D1DCA4();

    v30 = sub_1C3D1DC94();
    (*(v46 + 8))(v10, v47);
    v31 = v43;
    v32 = [v31 data];
    if (v32)
    {
      v33 = v32;

      v34 = sub_1C3D1E084();
      v36 = v35;

      v37 = sub_1C3D1E074();
      sub_1C3C31660(v34, v36);
      v38 = [v44 codableQueryDataWithType:15 startDate:v25 endDate:v28 statisticsInterval:v30 queryDataObject:v37];

      v39 = v38;
      v41(v38, 0);

      (*(v48 + 8))(v17, v49);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C3C2F9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C3D1DF94();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1C3C2FAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[11] = sub_1C3D1EC94();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a2;
  v14[5] = a1;
  v14[6] = swift_getAssociatedTypeWitness();
  v14[7] = swift_getAssociatedTypeWitness();
  v14[8] = swift_getAssociatedConformanceWitness();
  v14[9] = swift_getAssociatedConformanceWitness();
  sub_1C3D1EBB4();
  v8 = sub_1C3D20304();
  v9 = type metadata accessor for HealthChartsSeriesChartPoint(0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C3C2EEA0(sub_1C3C318C4, v14, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  return v12;
}

uint64_t sub_1C3C2FC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = a3;
  v23 = a1;
  v24 = a2;
  v25 = a4;
  sub_1C3C317D8(0, &qword_1EC085880, MEMORY[0x1E69A3070], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v22 = &v18 - v5;
  v6 = sub_1C3D1EB74();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = AssociatedConformanceWitness;
  v19 = swift_getAssociatedConformanceWitness();
  v26 = AssociatedTypeWitness;
  v27 = v10;
  v28 = AssociatedConformanceWitness;
  v29 = v19;
  v12 = sub_1C3D1EBB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  type metadata accessor for HealthChartsSeriesChartPoint(0);
  (*(v13 + 16))(v15, v23, v12);
  sub_1C3D1EC74();
  v16 = v22;
  sub_1C3D1EC84();
  result = HealthChartsSeriesChartPoint.__allocating_init<A, B>(_:index:aggregation:unit:)(v15, v24, v8, v16, AssociatedTypeWitness, v10, v20, v19);
  *v25 = result;
  return result;
}

id MeasureChartDataSource.__allocating_init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDisplayType:a1 healthStore:a2];

  return v5;
}

id MeasureChartDataSource.__allocating_init(dataType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDataType:a1 healthStore:a2];

  return v5;
}

id MeasureChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MeasureChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeasureChartDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C301A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36[2] = a3;
  v36[3] = a4;
  v37 = a2;
  v36[1] = a1;
  v6 = sub_1C3D1E3C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C3D1E224();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v5[OBJC_IVAR___HKMeasureChartDataSource_debugIdentifier];
  sub_1C3D1E214();
  v15 = sub_1C3D1E1F4();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v19 = sub_1C3CE44DC(5, v15, v17, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = MEMORY[0x1C692F7B0](v19, v21, v23, v25);
  v28 = v27;

  *v14 = v26;
  v14[1] = v28;
  v29 = OBJC_IVAR___HKMeasureChartDataSource_gregorianCalendar;
  v30 = [objc_opt_self() hk_gregorianCalendar];
  sub_1C3D1E384();

  (*(v7 + 32))(&v5[v29], v9, v6);
  sub_1C3D1EB04();
  sub_1C3972F30(&v39, &v5[OBJC_IVAR___HKMeasureChartDataSource_dataProvider]);
  sub_1C3C27CB4(0, &qword_1EC085898);
  sub_1C3C32DB4();
  v32 = v31;
  v33 = type metadata accessor for MeasureChartDataSource();
  v38.receiver = v5;
  v38.super_class = v33;
  v34 = objc_msgSendSuper2(&v38, sel_initWithDataType_healthStore_, v32, v37);

  return v34;
}

uint64_t sub_1C3C304AC(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v32 = a2;
  v4 = sub_1C3D1EB74();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C3D1DC54();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3D1E1E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = [a1 startDate];
  sub_1C3D1E1A4();

  sub_1C3D1E1B4();
  LOBYTE(v16) = sub_1C3D1E194();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = v34;
    v19 = *&v34[OBJC_IVAR___HKMeasureChartDataSource_dataProvider + 32];
    v30 = *&v34[OBJC_IVAR___HKMeasureChartDataSource_dataProvider + 24];
    v31 = v19;
    v20 = [a1 startDate];
    sub_1C3D1E1A4();

    v21 = [a1 endDate];
    sub_1C3D1E1A4();

    sub_1C3D1DC24();
    v23 = v37;
    v22 = v38;
    (*(v37 + 104))(v6, *MEMORY[0x1E69A3050], v38);
    v24 = swift_allocObject();
    v24[2] = v18;
    v24[3] = a1;
    v25 = v36;
    v24[4] = v32;
    v24[5] = v25;
    v26 = v18;
    v27 = a1;

    sub_1C3D1EB14();

    (*(v23 + 8))(v6, v22);
    (*(v33 + 8))(v8, v35);
  }

  return 0;
}

uint64_t sub_1C3C30844()
{
  sub_1C3C316B4();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1C3D1EC04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1EC14();
  v8 = sub_1C3D1EBF4();
  (*(v5 + 8))(v7, v4);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v57 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v10 = 0;
  v62 = v9 - 1;
  v57 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69A3078];
  while (2)
  {
    v12 = v10;
    while (1)
    {
      if (v12 >= *(v8 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v13 = sub_1C3D1EB44();
      v14 = *(v13 - 8);
      v10 = v12 + 1;
      v15 = *(v14 + 16);
      v16 = v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12;
      v17 = *(v1 + 48);
      *v3 = v12;
      v15(v3 + v17, v16, v13);
      sub_1C3D1EB34();
      if (v64)
      {
        break;
      }

      sub_1C3C31720(&v63, &qword_1EC085860, &qword_1EC085868, v11, sub_1C3C31974);
      sub_1C3C3177C(v3);
      ++v12;
      if (v9 == v10)
      {
        goto LABEL_15;
      }
    }

    sub_1C3972F30(&v63, v65);
    v18 = v66;
    v61 = v67;
    v19 = __swift_project_boxed_opaque_existential_0(v65, v66);
    v61 = sub_1C3C2FAB4(v19, v12, v18, v61);
    __swift_destroy_boxed_opaque_existential_0(v65);
    sub_1C3C3177C(v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1C3C464C4(0, v57[2] + 1, 1, v57);
    }

    v21 = v57[2];
    v20 = v57[3];
    v22 = (v21 + 1);
    if (v21 >= v20 >> 1)
    {
      v60 = (v21 + 1);
      v24 = sub_1C3C464C4((v20 > 1), v21 + 1, 1, v57);
      v22 = v60;
      v57 = v24;
    }

    v23 = v57;
    v57[2] = v22;
    v23[v21 + 4] = v61;
    if (v62 != v12)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v25 = v57;
  v26 = v57[2];
  if (v26)
  {
    v27 = 0;
    v60 = v57 + 4;
    v28 = MEMORY[0x1E69E7CC0];
    v56 = v26;
    while (1)
    {
      if (v27 >= v25[2])
      {
        goto LABEL_54;
      }

      v29 = v60[v27];
      v30 = v29 >> 62;
      if (v29 >> 62)
      {
        v31 = sub_1C3D20964();
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v28 >> 62;
      if (v28 >> 62)
      {
        v52 = sub_1C3D20964();
        v34 = v52 + v31;
        if (__OFADD__(v52, v31))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v34 = v33 + v31;
        if (__OFADD__(v33, v31))
        {
          goto LABEL_55;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = 0;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v36 = v28 & 0xFFFFFFFFFFFFFF8, v37 = v28, v34 > *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        if (v32)
        {
          sub_1C3D20964();
        }

        v37 = sub_1C3D20864();
        v36 = v37 & 0xFFFFFFFFFFFFFF8;
      }

      v62 = v37;
      v38 = *(v36 + 16);
      v39 = *(v36 + 24);
      if (v30)
      {
        v41 = v36;
        v42 = sub_1C3D20964();
        v36 = v41;
        v40 = v42;
        if (!v42)
        {
LABEL_17:

          v28 = v62;
          if (v31 > 0)
          {
            goto LABEL_56;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v40 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
          goto LABEL_17;
        }
      }

      if (((v39 >> 1) - v38) < v31)
      {
        goto LABEL_57;
      }

      v61 = v31;
      v43 = v36 + 8 * v38 + 32;
      v59 = v36;
      if (v30)
      {
        if (v40 < 1)
        {
          goto LABEL_59;
        }

        v58 = v27;
        sub_1C3C317D8(0, &qword_1EC085870, type metadata accessor for HealthChartsSeriesChartPoint, MEMORY[0x1E69E62F8]);
        sub_1C3C3183C();
        for (i = 0; i != v40; ++i)
        {
          v46 = sub_1C3C902EC(v65, i, v29);
          v48 = *v47;
          (v46)(v65, 0);
          *(v43 + 8 * i) = v48;
        }

        v26 = v56;
        v25 = v57;
        v27 = v58;
        v44 = v61;
      }

      else
      {
        type metadata accessor for HealthChartsSeriesChartPoint(0);
        v44 = v61;
        swift_arrayInitWithCopy();
      }

      v28 = v62;
      if (v44 > 0)
      {
        v49 = *(v59 + 16);
        v50 = __OFADD__(v49, v44);
        v51 = v49 + v44;
        if (v50)
        {
          goto LABEL_58;
        }

        *(v59 + 16) = v51;
      }

LABEL_18:
      if (++v27 == v26)
      {
        goto LABEL_50;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_50:

  if (!(v28 >> 62))
  {

    sub_1C3D20A64();
    sub_1C3C315FC();
    v53 = v28;
    goto LABEL_52;
  }

LABEL_60:
  sub_1C3C315FC();

  v53 = sub_1C3D20954();

LABEL_52:

  return v53;
}

id sub_1C3C30E9C(void *a1)
{
  swift_getObjectType();
  v2 = sub_1C3D1EC04();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C3C317D8(0, &qword_1EC085840, MEMORY[0x1E69A3060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_1C3D1EC24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 queryDataObject];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C3D1E084();
    v14 = v13;

    v15 = sub_1C3D1E074();
    sub_1C3C31660(v12, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(HKCodableHealthChartsData) initWithData_];

  if (!v16)
  {
    return [objc_allocWithZone(HKGraphSeriesDataBlock) init];
  }

  v17 = sub_1C3D1EB84();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_1C3CF1B0C(v16);
  sub_1C3D1EBE4();
  sub_1C3D1EBD4();
  v18 = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
  sub_1C3C30844();
  sub_1C3C315FC();
  v19 = sub_1C3D202A4();

  [v18 setChartPoints_];

  (*(v7 + 8))(v9, v6);
  return v18;
}

uint64_t type metadata accessor for MeasureChartDataSource()
{
  result = qword_1EC085830;
  if (!qword_1EC085830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}