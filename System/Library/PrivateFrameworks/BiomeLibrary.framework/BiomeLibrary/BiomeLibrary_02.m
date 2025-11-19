uint64_t BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMDeviceMetadataDevicePlatformFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceMetadataDevicePlatformFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_22123);
  if (result)
  {
    return *(&BMDeviceMetadataDevicePlatformFromString_sortedEnums + (((result - BMDeviceMetadataDevicePlatformFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceMetadataDevicePlatformAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E90378[a1];
  }

  return v2;
}

uint64_t BMDeviceMetadataDevicePlatformDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMDisplayAppearanceStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDisplayAppearanceStateFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_24_22736);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMDisplayAppearanceStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDisplayAppearanceReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMDisplayAppearanceReasonFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_22720);
  if (result)
  {
    return *(&BMTranslationLanguageCodeSourceFromString_sortedEnums + (((result - BMDisplayAppearanceReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDisplayAppearanceStateAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E904B0[a1];
  }

  return v2;
}

__CFString *BMDisplayAppearanceReasonAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E90488[a1];
  }

  return v2;
}

uint64_t BMDisplayAppearanceReasonDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMDisplayAppearanceStateDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMDeviceSmartChargingModeOfOperationFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceSmartChargingModeOfOperationFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_72);
  if (result)
  {
    return *(&BMDeviceSmartChargingModeOfOperationFromString_sortedEnums + (((result - BMDeviceSmartChargingModeOfOperationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceSmartChargingOBCEventFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceSmartChargingOBCEventFromString_sortedStrings, 0xEuLL, 8uLL, &__block_literal_global_23097);
  if (result)
  {
    return *(&BMDeviceSmartChargingOBCEventFromString_sortedEnums + (((result - BMDeviceSmartChargingOBCEventFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceSmartChargingModeOfOperationAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E90648[a1];
  }

  return v2;
}

__CFString *BMDeviceSmartChargingOBCEventAsString(uint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E905D0[a1];
  }

  return v2;
}

uint64_t BMDeviceSmartChargingOBCEventDecode(uint64_t result)
{
  if (result >= 0xF)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMDeviceSmartChargingModeOfOperationDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMTextUnderstandingPoemPredicateTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMTextUnderstandingPoemPredicateTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_23752);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMTextUnderstandingPoemPredicateTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMTextUnderstandingPoemPredicateTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E90788[a1];
  }

  return v2;
}

uint64_t BMTextUnderstandingPoemPredicateTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMCarPlayConnectedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMCarPlayConnectedReasonFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_23919);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMCarPlayConnectedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMCarPlayConnectedReasonAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E907F8[a1];
  }

  return v2;
}

uint64_t BMCarPlayConnectedReasonDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMNotificationUsageTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMNotificationUsageTypeFromString_sortedStrings, 0x1BuLL, 8uLL, &__block_literal_global_25242);
  if (result)
  {
    return *(&BMNotificationUsageTypeFromString_sortedEnums + (((result - BMNotificationUsageTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMNotificationUsageTypeAsString(uint64_t a1)
{
  if (a1 >= 0x1C)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E90A70[a1];
  }

  return v2;
}

uint64_t BMNotificationUsageTypeDecode(uint64_t result)
{
  if (result >= 0x1C)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMDeviceConnectivityContextReadFrom(_BYTE *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v274 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v274 & 0x7F) << v6;
      if ((v274 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_183;
      case 2u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        a1[16] = 1;
        while (1)
        {
          v274 = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v274 & 0x7F) << v132;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_481;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v134;
        }

LABEL_481:
        v272 = 64;
        goto LABEL_567;
      case 3u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        a1[17] = 1;
        while (1)
        {
          v274 = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v274 & 0x7F) << v113;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_469;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v115;
        }

LABEL_469:
        v272 = 68;
        goto LABEL_567;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 232;
LABEL_183:
        v125 = *&a1[v15];
        *&a1[v15] = v14;

        continue;
      case 5u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        a1[18] = 1;
        while (1)
        {
          v274 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v274 & 0x7F) << v77;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_445;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v79;
        }

LABEL_445:
        v272 = 72;
        goto LABEL_567;
      case 6u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        a1[20] = 1;
        while (1)
        {
          v274 = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v274 & 0x7F) << v162;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            LOBYTE(v168) = 0;
            goto LABEL_499;
          }
        }

        v168 = (v164 != 0) & ~[a2 hasError];
LABEL_499:
        v273 = 19;
        goto LABEL_510;
      case 7u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        a1[22] = 1;
        while (1)
        {
          v274 = 0;
          v184 = [a2 position] + 1;
          if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
          {
            v186 = [a2 data];
            [v186 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (v274 & 0x7F) << v181;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v12 = v182++ >= 9;
          if (v12)
          {
            LOBYTE(v168) = 0;
            goto LABEL_509;
          }
        }

        v168 = (v183 != 0) & ~[a2 hasError];
LABEL_509:
        v273 = 21;
LABEL_510:
        a1[v273] = v168;
        continue;
      case 8u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        a1[23] = 1;
        while (1)
        {
          v274 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v274 & 0x7F) << v126;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_477;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v128;
        }

LABEL_477:
        v272 = 76;
        goto LABEL_567;
      case 9u:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        a1[24] = 1;
        while (1)
        {
          v274 = 0;
          v202 = [a2 position] + 1;
          if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
          {
            v204 = [a2 data];
            [v204 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v201 |= (v274 & 0x7F) << v199;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v12 = v200++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_522;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v201;
        }

LABEL_522:
        v272 = 80;
        goto LABEL_567;
      case 0xAu:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        a1[25] = 1;
        while (1)
        {
          v274 = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v274 & 0x7F) << v95;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_457;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v97;
        }

LABEL_457:
        v272 = 84;
        goto LABEL_567;
      case 0xBu:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        a1[26] = 1;
        while (1)
        {
          v274 = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            v198 = [a2 data];
            [v198 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v274 & 0x7F) << v193;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v12 = v194++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_518;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v195;
        }

LABEL_518:
        v272 = 88;
        goto LABEL_567;
      case 0xCu:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        a1[27] = 1;
        while (1)
        {
          v274 = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v274 & 0x7F) << v71;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_441;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v73;
        }

LABEL_441:
        v272 = 92;
        goto LABEL_567;
      case 0xDu:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        a1[28] = 1;
        while (1)
        {
          v274 = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v274 & 0x7F) << v89;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_453;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v91;
        }

LABEL_453:
        v272 = 96;
        goto LABEL_567;
      case 0xEu:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        a1[29] = 1;
        while (1)
        {
          v274 = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            v180 = [a2 data];
            [v180 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (v274 & 0x7F) << v175;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v12 = v176++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_507;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v177;
        }

LABEL_507:
        v272 = 100;
        goto LABEL_567;
      case 0xFu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        a1[30] = 1;
        while (1)
        {
          v274 = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v274 & 0x7F) << v59;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_433;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v61;
        }

LABEL_433:
        v272 = 104;
        goto LABEL_567;
      case 0x10u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        a1[31] = 1;
        while (1)
        {
          v274 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v274 & 0x7F) << v119;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_473;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v121;
        }

LABEL_473:
        v272 = 108;
        goto LABEL_567;
      case 0x11u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        a1[32] = 1;
        while (1)
        {
          v274 = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v274 & 0x7F) << v53;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_429;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v55;
        }

LABEL_429:
        v272 = 112;
        goto LABEL_567;
      case 0x12u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        a1[33] = 1;
        while (1)
        {
          v274 = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v274 & 0x7F) << v144;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v12 = v145++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_489;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v146;
        }

LABEL_489:
        v272 = 116;
        goto LABEL_567;
      case 0x13u:
        v187 = 0;
        v188 = 0;
        v189 = 0;
        a1[34] = 1;
        while (1)
        {
          v274 = 0;
          v190 = [a2 position] + 1;
          if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
          {
            v192 = [a2 data];
            [v192 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v189 |= (v274 & 0x7F) << v187;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v187 += 7;
          v12 = v188++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_514;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v189;
        }

LABEL_514:
        v272 = 120;
        goto LABEL_567;
      case 0x14u:
        v229 = 0;
        v230 = 0;
        v231 = 0;
        a1[35] = 1;
        while (1)
        {
          v274 = 0;
          v232 = [a2 position] + 1;
          if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 1, v233 <= objc_msgSend(a2, "length")))
          {
            v234 = [a2 data];
            [v234 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v231 |= (v274 & 0x7F) << v229;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v229 += 7;
          v12 = v230++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_542;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v231;
        }

LABEL_542:
        v272 = 124;
        goto LABEL_567;
      case 0x15u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        a1[36] = 1;
        while (1)
        {
          v274 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v274 & 0x7F) << v156;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_497;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v158;
        }

LABEL_497:
        v272 = 128;
        goto LABEL_567;
      case 0x16u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        a1[37] = 1;
        while (1)
        {
          v274 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v274 & 0x7F) << v169;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_503;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v171;
        }

LABEL_503:
        v272 = 132;
        goto LABEL_567;
      case 0x17u:
        v217 = 0;
        v218 = 0;
        v219 = 0;
        a1[38] = 1;
        while (1)
        {
          v274 = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            v222 = [a2 data];
            [v222 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v219 |= (v274 & 0x7F) << v217;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v217 += 7;
          v12 = v218++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_534;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v219;
        }

LABEL_534:
        v272 = 136;
        goto LABEL_567;
      case 0x18u:
        v241 = 0;
        v242 = 0;
        v243 = 0;
        a1[39] = 1;
        while (1)
        {
          v274 = 0;
          v244 = [a2 position] + 1;
          if (v244 >= [a2 position] && (v245 = objc_msgSend(a2, "position") + 1, v245 <= objc_msgSend(a2, "length")))
          {
            v246 = [a2 data];
            [v246 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v243 |= (v274 & 0x7F) << v241;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v241 += 7;
          v12 = v242++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_550;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v243;
        }

LABEL_550:
        v272 = 140;
        goto LABEL_567;
      case 0x19u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        a1[40] = 1;
        while (1)
        {
          v274 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v274 & 0x7F) << v107;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_465;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v109;
        }

LABEL_465:
        v272 = 144;
        goto LABEL_567;
      case 0x1Au:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        a1[41] = 1;
        while (1)
        {
          v274 = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v274 & 0x7F) << v101;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_461;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v103;
        }

LABEL_461:
        v272 = 148;
        goto LABEL_567;
      case 0x1Bu:
        v265 = 0;
        v266 = 0;
        v267 = 0;
        a1[42] = 1;
        while (1)
        {
          v274 = 0;
          v268 = [a2 position] + 1;
          if (v268 >= [a2 position] && (v269 = objc_msgSend(a2, "position") + 1, v269 <= objc_msgSend(a2, "length")))
          {
            v270 = [a2 data];
            [v270 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v267 |= (v274 & 0x7F) << v265;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v265 += 7;
          v12 = v266++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_566;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v267;
        }

LABEL_566:
        v272 = 152;
        goto LABEL_567;
      case 0x1Cu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        a1[43] = 1;
        while (1)
        {
          v274 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v274 & 0x7F) << v41;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_421;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v43;
        }

LABEL_421:
        v272 = 156;
        goto LABEL_567;
      case 0x1Du:
        v247 = 0;
        v248 = 0;
        v249 = 0;
        a1[44] = 1;
        while (1)
        {
          v274 = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v249 |= (v274 & 0x7F) << v247;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v247 += 7;
          v12 = v248++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_554;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v249;
        }

LABEL_554:
        v272 = 160;
        goto LABEL_567;
      case 0x1Eu:
        v253 = 0;
        v254 = 0;
        v255 = 0;
        a1[45] = 1;
        while (1)
        {
          v274 = 0;
          v256 = [a2 position] + 1;
          if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
          {
            v258 = [a2 data];
            [v258 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v255 |= (v274 & 0x7F) << v253;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v253 += 7;
          v12 = v254++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_558;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v255;
        }

LABEL_558:
        v272 = 164;
        goto LABEL_567;
      case 0x1Fu:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        a1[46] = 1;
        while (1)
        {
          v274 = 0;
          v208 = [a2 position] + 1;
          if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
          {
            v210 = [a2 data];
            [v210 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v207 |= (v274 & 0x7F) << v205;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v12 = v206++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_526;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v207;
        }

LABEL_526:
        v272 = 168;
        goto LABEL_567;
      case 0x20u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        a1[47] = 1;
        while (1)
        {
          v274 = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            v143 = [a2 data];
            [v143 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v274 & 0x7F) << v138;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v12 = v139++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_485;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v140;
        }

LABEL_485:
        v272 = 172;
        goto LABEL_567;
      case 0x21u:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        a1[48] = 1;
        while (1)
        {
          v274 = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            v216 = [a2 data];
            [v216 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (v274 & 0x7F) << v211;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v12 = v212++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_530;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v213;
        }

LABEL_530:
        v272 = 176;
        goto LABEL_567;
      case 0x22u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        a1[49] = 1;
        while (1)
        {
          v274 = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v274 & 0x7F) << v65;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_437;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v67;
        }

LABEL_437:
        v272 = 180;
        goto LABEL_567;
      case 0x23u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        a1[50] = 1;
        while (1)
        {
          v274 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v274 & 0x7F) << v47;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_425;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v49;
        }

LABEL_425:
        v272 = 184;
        goto LABEL_567;
      case 0x24u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        a1[51] = 1;
        while (1)
        {
          v274 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v274 & 0x7F) << v29;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_413;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_413:
        v272 = 188;
        goto LABEL_567;
      case 0x25u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        a1[52] = 1;
        while (1)
        {
          v274 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v274 & 0x7F) << v35;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_417;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_417:
        v272 = 192;
        goto LABEL_567;
      case 0x26u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        a1[53] = 1;
        while (1)
        {
          v274 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v274 & 0x7F) << v23;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_409;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_409:
        v272 = 196;
        goto LABEL_567;
      case 0x27u:
        v259 = 0;
        v260 = 0;
        v261 = 0;
        a1[54] = 1;
        while (1)
        {
          v274 = 0;
          v262 = [a2 position] + 1;
          if (v262 >= [a2 position] && (v263 = objc_msgSend(a2, "position") + 1, v263 <= objc_msgSend(a2, "length")))
          {
            v264 = [a2 data];
            [v264 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v261 |= (v274 & 0x7F) << v259;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v259 += 7;
          v12 = v260++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_562;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v261;
        }

LABEL_562:
        v272 = 200;
        goto LABEL_567;
      case 0x28u:
        v223 = 0;
        v224 = 0;
        v225 = 0;
        a1[55] = 1;
        while (1)
        {
          v274 = 0;
          v226 = [a2 position] + 1;
          if (v226 >= [a2 position] && (v227 = objc_msgSend(a2, "position") + 1, v227 <= objc_msgSend(a2, "length")))
          {
            v228 = [a2 data];
            [v228 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v225 |= (v274 & 0x7F) << v223;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v223 += 7;
          v12 = v224++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_538;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v225;
        }

LABEL_538:
        v272 = 204;
        goto LABEL_567;
      case 0x29u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        a1[56] = 1;
        while (1)
        {
          v274 = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v274 & 0x7F) << v83;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_449;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v85;
        }

LABEL_449:
        v272 = 208;
        goto LABEL_567;
      case 0x2Au:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        a1[57] = 1;
        while (1)
        {
          v274 = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v274 & 0x7F) << v150;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_493;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v152;
        }

LABEL_493:
        v272 = 212;
        goto LABEL_567;
      case 0x2Bu:
        v235 = 0;
        v236 = 0;
        v237 = 0;
        a1[58] = 1;
        while (1)
        {
          v274 = 0;
          v238 = [a2 position] + 1;
          if (v238 >= [a2 position] && (v239 = objc_msgSend(a2, "position") + 1, v239 <= objc_msgSend(a2, "length")))
          {
            v240 = [a2 data];
            [v240 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v237 |= (v274 & 0x7F) << v235;
          if ((v274 & 0x80) == 0)
          {
            break;
          }

          v235 += 7;
          v12 = v236++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_546;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v237;
        }

LABEL_546:
        v272 = 216;
        goto LABEL_567;
      case 0x2Cu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        a1[59] = 1;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v274 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v274 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v274 & 0x7F) << v16;
      if ((v274 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v12 = v17++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_405;
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

LABEL_405:
    v272 = 220;
LABEL_567:
    *&a1[v272] = v22;
  }

  return [a2 hasError] ^ 1;
}

_BYTE *BMContextSyncDeviceActivityLevelActivityStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextSyncDeviceActivityLevelActivityStateFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_27141);
  if (result)
  {
    return *(&BMMailCategorizationCategoryFromString_sortedEnums + (((result - BMContextSyncDeviceActivityLevelActivityStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMContextSyncDeviceActivityLevelActivityStateAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E90E40[a1];
  }

  return v2;
}

uint64_t BMContextSyncDeviceActivityLevelActivityStateDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMFamilyAskToBuyRequestStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMFamilyAskToBuyRequestStatusFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_27473);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMFamilyAskToBuyRequestStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFamilyAskToBuyRequestStatusAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E90F00[a1];
  }

  return v2;
}

uint64_t BMFamilyAskToBuyRequestStatusDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSensitiveContentAnalysisMediaAnalysisAgeGroupFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisMediaAnalysisAgeGroupFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_44_27714);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMSensitiveContentAnalysisMediaAnalysisAgeGroupFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSensitiveContentAnalysisMediaAnalysisIsSensitiveFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisMediaAnalysisIsSensitiveFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_52);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSensitiveContentAnalysisMediaAnalysisIsSensitiveFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSensitiveContentAnalysisMediaAnalysisSubContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisMediaAnalysisSubContentTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_33_27690);
  if (result)
  {
    return *(&BMPhotosLiveTypeFromString_sortedEnums + (((result - BMSensitiveContentAnalysisMediaAnalysisSubContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSensitiveContentAnalysisMediaAnalysisAgeGroupAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91050[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisMediaAnalysisIsSensitiveAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91070[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisMediaAnalysisSubContentTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91028[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisMediaAnalysisContentTypeAsString(uint64_t a1)
{
  if (a1 < 9 && ((0x11Fu >> a1) & 1) != 0)
  {
    v2 = off_1E6E90FE0[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

_BYTE *BMSensitiveContentAnalysisMediaAnalysisContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisMediaAnalysisContentTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_27824);
  if (result)
  {
    return *(&BMSensitiveContentAnalysisMediaAnalysisContentTypeFromString_sortedEnums + (((result - BMSensitiveContentAnalysisMediaAnalysisContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSensitiveContentAnalysisMediaAnalysisContentTypeDecode(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return dword_185544C04[a1];
  }
}

uint64_t BMSensitiveContentAnalysisMediaAnalysisSubContentTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSensitiveContentAnalysisMediaAnalysisAgeGroupDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSensitiveContentAnalysisMediaAnalysisIsSensitiveDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMSensitiveContentAnalysisMediaAnalysisHarmsAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91088[a1];
  }

  return v2;
}

_BYTE *BMSensitiveContentAnalysisMediaAnalysisHarmsFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisMediaAnalysisHarmsFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_63_27835);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMSensitiveContentAnalysisMediaAnalysisHarmsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSensitiveContentAnalysisMediaAnalysisHarmsDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMTextUnderstandingPoemBufferExtractionExtractionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMTextUnderstandingPoemBufferExtractionExtractionTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_28772);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMTextUnderstandingPoemBufferExtractionExtractionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMTextUnderstandingPoemBufferExtractionRoleTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMTextUnderstandingPoemBufferExtractionRoleTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_27_28755);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMTextUnderstandingPoemBufferExtractionRoleTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMTextUnderstandingPoemBufferExtractionExtractionTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91200[a1];
  }

  return v2;
}

__CFString *BMTextUnderstandingPoemBufferExtractionRoleTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91228[a1];
  }

  return v2;
}

uint64_t BMTextUnderstandingPoemBufferExtractionExtractionTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMTextUnderstandingPoemBufferExtractionRoleTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMIntelligenceEngineInteractionUserAlignmentFromString(const void *a1)
{
  result = bsearch_b(a1, BMIntelligenceEngineInteractionUserAlignmentFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_45_30116);
  if (result)
  {
    return *(&BMIntelligenceEngineInteractionUserAlignmentFromString_sortedEnums + (((result - BMIntelligenceEngineInteractionUserAlignmentFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMIntelligenceEngineInteractionUserAlignmentAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91528[a1];
  }

  return v2;
}

_BYTE *BMIntelligenceEngineInteractionDonationTriggerFromString(const void *a1)
{
  result = bsearch_b(a1, BMIntelligenceEngineInteractionDonationTriggerFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_30412);
  if (result)
  {
    return *(&BMPhotosLiveTypeFromString_sortedEnums + (((result - BMIntelligenceEngineInteractionDonationTriggerFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMIntelligenceEngineInteractionDonationTriggerAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91500[a1];
  }

  return v2;
}

uint64_t BMIntelligenceEngineInteractionDonationTriggerDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMIntelligenceEngineInteractionUserAlignmentDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMClockAlarmEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMClockAlarmEventTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_31001);
  if (result)
  {
    return *(&BMClockAlarmEventTypeFromString_sortedEnums + (((result - BMClockAlarmEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMClockAlarmLastEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMClockAlarmLastEventTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_54);
  if (result)
  {
    return *(&BMClockAlarmLastEventTypeFromString_sortedEnums + (((result - BMClockAlarmLastEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMClockAlarmEventTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91680[a1];
  }

  return v2;
}

__CFString *BMClockAlarmLastEventTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E916B8[a1];
  }

  return v2;
}

uint64_t BMClockAlarmEventTypeDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMClockAlarmLastEventTypeDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMIntelligencePlatformMessageTermsTermCountTermTermTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMIntelligencePlatformMessageTermsTermCountTermTermTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_31185);
  if (result)
  {
    return *(&BMIntelligencePlatformMessageTermsTermCountTermTermTypeFromString_sortedEnums + (((result - BMIntelligencePlatformMessageTermsTermCountTermTermTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMIntelligencePlatformMessageTermsTermCountTermTermTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E917B0[a1];
  }

  return v2;
}

uint64_t BMIntelligencePlatformMessageTermsTermCountTermTermTypeDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSiriRequestCountsMetadataScheduleFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriRequestCountsMetadataScheduleFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_31621);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMSiriRequestCountsMetadataScheduleFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriRequestCountsMetadataScheduleAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91840[a1];
  }

  return v2;
}

uint64_t BMSiriRequestCountsMetadataScheduleDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMDisplayAlwaysOnBlockingPolicyBlockingPolicyModeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDisplayAlwaysOnBlockingPolicyBlockingPolicyModeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_31872);
  if (result)
  {
    return *(&BMDisplayAlwaysOnBlockingPolicyBlockingPolicyModeFromString_sortedEnums + (((result - BMDisplayAlwaysOnBlockingPolicyBlockingPolicyModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDisplayAlwaysOnBlockingPolicyBlockingPolicyModeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E918C0[a1];
  }

  return v2;
}

id -[BMDisplayAlwaysOn _blockingPoliciesJSONArray](BMDisplayAlwaysOn *self, SEL a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMDisplayAlwaysOn *)self blockingPolicies];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

_BYTE *BMDisplayAlwaysOnStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDisplayAlwaysOnStateFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_27_31960);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMDisplayAlwaysOnStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDisplayAlwaysOnStateAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E918F0[a1];
  }

  return v2;
}

uint64_t BMDisplayAlwaysOnBlockingPolicyBlockingPolicyModeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMDisplayAlwaysOnStateDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosUserAnalyticsMediaTypeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosUserAnalyticsMediaTypeTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_115);
  if (result)
  {
    return *(&BMPhotosUserAnalyticsMediaTypeTypeFromString_sortedEnums + (((result - BMPhotosUserAnalyticsMediaTypeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosUserAnalyticsImportSourceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosUserAnalyticsImportSourceTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_77);
  if (result)
  {
    return *(&BMPhotosUserAnalyticsImportSourceTypeFromString_sortedEnums + (((result - BMPhotosUserAnalyticsImportSourceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosUserAnalyticsAssetAgeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosUserAnalyticsAssetAgeTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_32735);
  if (result)
  {
    return *(&BMPhotosUserAnalyticsAssetAgeTypeFromString_sortedEnums + (((result - BMPhotosUserAnalyticsAssetAgeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosUserAnalyticsLibrarySizeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosUserAnalyticsLibrarySizeTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_39_32718);
  if (result)
  {
    return *(&BMPhotosStyleLibrarySizeTypeFromString_sortedEnums + (((result - BMPhotosUserAnalyticsLibrarySizeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_132_32701);
  if (result)
  {
    return *(&BMPhotosStyleUserLibraryAgeInDaysTypeFromString_sortedEnums + (((result - BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMPhotosUserAnalyticsReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v341) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v341) & 0x7F) << v6;
      if ((LOBYTE(v341) & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_255;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 160;
LABEL_255:
        v174 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      case 3u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 17) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (LOBYTE(v341) & 0x7F) << v149;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_549;
          }
        }

        v22 = (v151 != 0) & ~[a2 hasError];
LABEL_549:
        v337 = 16;
        goto LABEL_630;
      case 4u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 18) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (LOBYTE(v341) & 0x7F) << v161;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            v167 = 0;
            goto LABEL_555;
          }
        }

        if ([a2 hasError])
        {
          v167 = 0;
        }

        else
        {
          v167 = v163;
        }

LABEL_555:
        v338 = 116;
        goto LABEL_610;
      case 5u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 20) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (LOBYTE(v341) & 0x7F) << v113;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_537;
          }
        }

        v22 = (v115 != 0) & ~[a2 hasError];
LABEL_537:
        v337 = 19;
        goto LABEL_630;
      case 6u:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        *(a1 + 22) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v202 = [a2 position] + 1;
          if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
          {
            v204 = [a2 data];
            [v204 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v201 |= (LOBYTE(v341) & 0x7F) << v199;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v12 = v200++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_571;
          }
        }

        v22 = (v201 != 0) & ~[a2 hasError];
LABEL_571:
        v337 = 21;
        goto LABEL_630;
      case 7u:
        v217 = 0;
        v218 = 0;
        v219 = 0;
        *(a1 + 24) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            v222 = [a2 data];
            [v222 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v219 |= (LOBYTE(v341) & 0x7F) << v217;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v217 += 7;
          v12 = v218++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_579;
          }
        }

        v22 = (v219 != 0) & ~[a2 hasError];
LABEL_579:
        v337 = 23;
        goto LABEL_630;
      case 8u:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(a1 + 26) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (LOBYTE(v341) & 0x7F) << v168;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_557;
          }
        }

        v22 = (v170 != 0) & ~[a2 hasError];
LABEL_557:
        v337 = 25;
        goto LABEL_630;
      case 9u:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        *(a1 + 28) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v237 = [a2 position] + 1;
          if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 1, v238 <= objc_msgSend(a2, "length")))
          {
            v239 = [a2 data];
            [v239 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v236 |= (LOBYTE(v341) & 0x7F) << v234;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v234 += 7;
          v12 = v235++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_587;
          }
        }

        v22 = (v236 != 0) & ~[a2 hasError];
LABEL_587:
        v337 = 27;
        goto LABEL_630;
      case 0xAu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 30) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (LOBYTE(v341) & 0x7F) << v131;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_543;
          }
        }

        v22 = (v133 != 0) & ~[a2 hasError];
LABEL_543:
        v337 = 29;
        goto LABEL_630;
      case 0xBu:
        v228 = 0;
        v229 = 0;
        v230 = 0;
        *(a1 + 32) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v231 = [a2 position] + 1;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 1, v232 <= objc_msgSend(a2, "length")))
          {
            v233 = [a2 data];
            [v233 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v230 |= (LOBYTE(v341) & 0x7F) << v228;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v228 += 7;
          v12 = v229++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_585;
          }
        }

        v22 = (v230 != 0) & ~[a2 hasError];
LABEL_585:
        v337 = 31;
        goto LABEL_630;
      case 0xCu:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 34) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (LOBYTE(v341) & 0x7F) << v101;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_533;
          }
        }

        v22 = (v103 != 0) & ~[a2 hasError];
LABEL_533:
        v337 = 33;
        goto LABEL_630;
      case 0xDu:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 36) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (LOBYTE(v341) & 0x7F) << v125;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_541;
          }
        }

        v22 = (v127 != 0) & ~[a2 hasError];
LABEL_541:
        v337 = 35;
        goto LABEL_630;
      case 0xEu:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        *(a1 + 38) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            v216 = [a2 data];
            [v216 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (LOBYTE(v341) & 0x7F) << v211;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v12 = v212++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_577;
          }
        }

        v22 = (v213 != 0) & ~[a2 hasError];
LABEL_577:
        v337 = 37;
        goto LABEL_630;
      case 0xFu:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 40) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (LOBYTE(v341) & 0x7F) << v83;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_527;
          }
        }

        v22 = (v85 != 0) & ~[a2 hasError];
LABEL_527:
        v337 = 39;
        goto LABEL_630;
      case 0x10u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 42) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (LOBYTE(v341) & 0x7F) << v155;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_551;
          }
        }

        v22 = (v157 != 0) & ~[a2 hasError];
LABEL_551:
        v337 = 41;
        goto LABEL_630;
      case 0x11u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 44) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (LOBYTE(v341) & 0x7F) << v71;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_523;
          }
        }

        v22 = (v73 != 0) & ~[a2 hasError];
LABEL_523:
        v337 = 43;
        goto LABEL_630;
      case 0x12u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        while (1)
        {
          LOBYTE(v341) = 0;
          v184 = [a2 position] + 1;
          if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
          {
            v186 = [a2 data];
            [v186 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (LOBYTE(v341) & 0x7F) << v181;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v187 = v182++ > 8;
          if (v187)
          {
            goto LABEL_562;
          }
        }

        if (([a2 hasError] & 1) != 0 || v183 > 0xC)
        {
LABEL_562:
          LODWORD(v183) = 0;
        }

        v339 = 120;
        goto LABEL_623;
      case 0x13u:
        v223 = 0;
        v224 = 0;
        v183 = 0;
        while (1)
        {
          LOBYTE(v341) = 0;
          v225 = [a2 position] + 1;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
          {
            v227 = [a2 data];
            [v227 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (LOBYTE(v341) & 0x7F) << v223;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v223 += 7;
          v187 = v224++ > 8;
          if (v187)
          {
            goto LABEL_582;
          }
        }

        if (([a2 hasError] & 1) != 0 || v183 > 0xC)
        {
LABEL_582:
          LODWORD(v183) = 0;
        }

        v339 = 124;
        goto LABEL_623;
      case 0x14u:
        v270 = 0;
        v271 = 0;
        v183 = 0;
        while (1)
        {
          LOBYTE(v341) = 0;
          v272 = [a2 position] + 1;
          if (v272 >= [a2 position] && (v273 = objc_msgSend(a2, "position") + 1, v273 <= objc_msgSend(a2, "length")))
          {
            v274 = [a2 data];
            [v274 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (LOBYTE(v341) & 0x7F) << v270;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v270 += 7;
          v187 = v271++ > 8;
          if (v187)
          {
            goto LABEL_602;
          }
        }

        if (([a2 hasError] & 1) != 0 || v183 > 6)
        {
LABEL_602:
          LODWORD(v183) = 0;
        }

        v339 = 128;
        goto LABEL_623;
      case 0x15u:
        v194 = 0;
        v195 = 0;
        v183 = 0;
        while (1)
        {
          LOBYTE(v341) = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            v198 = [a2 data];
            [v198 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (LOBYTE(v341) & 0x7F) << v194;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v187 = v195++ > 8;
          if (v187)
          {
            goto LABEL_568;
          }
        }

        if (([a2 hasError] & 1) != 0 || v183 > 5)
        {
LABEL_568:
          LODWORD(v183) = 0;
        }

        v339 = 132;
        goto LABEL_623;
      case 0x16u:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 45) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v208 = [a2 position] + 1;
          if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
          {
            v210 = [a2 data];
            [v210 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v207 |= (LOBYTE(v341) & 0x7F) << v205;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v12 = v206++ >= 9;
          if (v12)
          {
            v167 = 0;
            goto LABEL_575;
          }
        }

        if ([a2 hasError])
        {
          v167 = 0;
        }

        else
        {
          v167 = v207;
        }

LABEL_575:
        v338 = 136;
        goto LABEL_610;
      case 0x17u:
        v258 = 0;
        v259 = 0;
        v260 = 0;
        *(a1 + 46) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v261 = [a2 position] + 1;
          if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 1, v262 <= objc_msgSend(a2, "length")))
          {
            v263 = [a2 data];
            [v263 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v260 |= (LOBYTE(v341) & 0x7F) << v258;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v258 += 7;
          v12 = v259++ >= 9;
          if (v12)
          {
            v167 = 0;
            goto LABEL_597;
          }
        }

        if ([a2 hasError])
        {
          v167 = 0;
        }

        else
        {
          v167 = v260;
        }

LABEL_597:
        v338 = 140;
        goto LABEL_610;
      case 0x18u:
        v281 = 0;
        v282 = 0;
        v283 = 0;
        *(a1 + 47) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v284 = [a2 position] + 1;
          if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
          {
            v286 = [a2 data];
            [v286 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v283 |= (LOBYTE(v341) & 0x7F) << v281;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v281 += 7;
          v12 = v282++ >= 9;
          if (v12)
          {
            v167 = 0;
            goto LABEL_609;
          }
        }

        if ([a2 hasError])
        {
          v167 = 0;
        }

        else
        {
          v167 = v283;
        }

LABEL_609:
        v338 = 144;
LABEL_610:
        *(a1 + v338) = v167;
        continue;
      case 0x19u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 49) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (LOBYTE(v341) & 0x7F) << v143;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_547;
          }
        }

        v22 = (v145 != 0) & ~[a2 hasError];
LABEL_547:
        v337 = 48;
        goto LABEL_630;
      case 0x1Au:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 51) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (LOBYTE(v341) & 0x7F) << v137;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_545;
          }
        }

        v22 = (v139 != 0) & ~[a2 hasError];
LABEL_545:
        v337 = 50;
        goto LABEL_630;
      case 0x1Bu:
        v305 = 0;
        v306 = 0;
        v307 = 0;
        *(a1 + 53) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v308 = [a2 position] + 1;
          if (v308 >= [a2 position] && (v309 = objc_msgSend(a2, "position") + 1, v309 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v307 |= (LOBYTE(v341) & 0x7F) << v305;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v305 += 7;
          v12 = v306++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_618;
          }
        }

        v22 = (v307 != 0) & ~[a2 hasError];
LABEL_618:
        v337 = 52;
        goto LABEL_630;
      case 0x1Cu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 55) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (LOBYTE(v341) & 0x7F) << v59;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_519;
          }
        }

        v22 = (v61 != 0) & ~[a2 hasError];
LABEL_519:
        v337 = 54;
        goto LABEL_630;
      case 0x1Du:
        v287 = 0;
        v288 = 0;
        v289 = 0;
        *(a1 + 57) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v290 = [a2 position] + 1;
          if (v290 >= [a2 position] && (v291 = objc_msgSend(a2, "position") + 1, v291 <= objc_msgSend(a2, "length")))
          {
            v292 = [a2 data];
            [v292 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v289 |= (LOBYTE(v341) & 0x7F) << v287;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v287 += 7;
          v12 = v288++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_612;
          }
        }

        v22 = (v289 != 0) & ~[a2 hasError];
LABEL_612:
        v337 = 56;
        goto LABEL_630;
      case 0x1Eu:
        v293 = 0;
        v294 = 0;
        v295 = 0;
        *(a1 + 59) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v296 = [a2 position] + 1;
          if (v296 >= [a2 position] && (v297 = objc_msgSend(a2, "position") + 1, v297 <= objc_msgSend(a2, "length")))
          {
            v298 = [a2 data];
            [v298 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v295 |= (LOBYTE(v341) & 0x7F) << v293;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v293 += 7;
          v12 = v294++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_614;
          }
        }

        v22 = (v295 != 0) & ~[a2 hasError];
LABEL_614:
        v337 = 58;
        goto LABEL_630;
      case 0x1Fu:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        *(a1 + 61) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v243 = [a2 position] + 1;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
          {
            v245 = [a2 data];
            [v245 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v242 |= (LOBYTE(v341) & 0x7F) << v240;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v12 = v241++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_589;
          }
        }

        v22 = (v242 != 0) & ~[a2 hasError];
LABEL_589:
        v337 = 60;
        goto LABEL_630;
      case 0x20u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 63) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            v180 = [a2 data];
            [v180 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (LOBYTE(v341) & 0x7F) << v175;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v12 = v176++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_559;
          }
        }

        v22 = (v177 != 0) & ~[a2 hasError];
LABEL_559:
        v337 = 62;
        goto LABEL_630;
      case 0x21u:
        v246 = 0;
        v247 = 0;
        v248 = 0;
        *(a1 + 65) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v249 = [a2 position] + 1;
          if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
          {
            v251 = [a2 data];
            [v251 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v248 |= (LOBYTE(v341) & 0x7F) << v246;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v246 += 7;
          v12 = v247++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_591;
          }
        }

        v22 = (v248 != 0) & ~[a2 hasError];
LABEL_591:
        v337 = 64;
        goto LABEL_630;
      case 0x22u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 67) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (LOBYTE(v341) & 0x7F) << v89;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_529;
          }
        }

        v22 = (v91 != 0) & ~[a2 hasError];
LABEL_529:
        v337 = 66;
        goto LABEL_630;
      case 0x23u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 69) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (LOBYTE(v341) & 0x7F) << v65;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_521;
          }
        }

        v22 = (v67 != 0) & ~[a2 hasError];
LABEL_521:
        v337 = 68;
        goto LABEL_630;
      case 0x24u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 71) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (LOBYTE(v341) & 0x7F) << v47;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_515;
          }
        }

        v22 = (v49 != 0) & ~[a2 hasError];
LABEL_515:
        v337 = 70;
        goto LABEL_630;
      case 0x25u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 73) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (LOBYTE(v341) & 0x7F) << v53;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_517;
          }
        }

        v22 = (v55 != 0) & ~[a2 hasError];
LABEL_517:
        v337 = 72;
        goto LABEL_630;
      case 0x26u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 75) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (LOBYTE(v341) & 0x7F) << v29;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_509;
          }
        }

        v22 = (v31 != 0) & ~[a2 hasError];
LABEL_509:
        v337 = 74;
        goto LABEL_630;
      case 0x27u:
        v299 = 0;
        v300 = 0;
        v301 = 0;
        *(a1 + 77) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v302 = [a2 position] + 1;
          if (v302 >= [a2 position] && (v303 = objc_msgSend(a2, "position") + 1, v303 <= objc_msgSend(a2, "length")))
          {
            v304 = [a2 data];
            [v304 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v301 |= (LOBYTE(v341) & 0x7F) << v299;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v299 += 7;
          v12 = v300++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_616;
          }
        }

        v22 = (v301 != 0) & ~[a2 hasError];
LABEL_616:
        v337 = 76;
        goto LABEL_630;
      case 0x28u:
        v264 = 0;
        v265 = 0;
        v266 = 0;
        *(a1 + 79) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v267 = [a2 position] + 1;
          if (v267 >= [a2 position] && (v268 = objc_msgSend(a2, "position") + 1, v268 <= objc_msgSend(a2, "length")))
          {
            v269 = [a2 data];
            [v269 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v266 |= (LOBYTE(v341) & 0x7F) << v264;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v264 += 7;
          v12 = v265++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_599;
          }
        }

        v22 = (v266 != 0) & ~[a2 hasError];
LABEL_599:
        v337 = 78;
        goto LABEL_630;
      case 0x29u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 81) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (LOBYTE(v341) & 0x7F) << v119;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_539;
          }
        }

        v22 = (v121 != 0) & ~[a2 hasError];
LABEL_539:
        v337 = 80;
        goto LABEL_630;
      case 0x2Au:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 83) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            v193 = [a2 data];
            [v193 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v190 |= (LOBYTE(v341) & 0x7F) << v188;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v12 = v189++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_565;
          }
        }

        v22 = (v190 != 0) & ~[a2 hasError];
LABEL_565:
        v337 = 82;
        goto LABEL_630;
      case 0x2Bu:
        v275 = 0;
        v276 = 0;
        v277 = 0;
        *(a1 + 85) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v278 = [a2 position] + 1;
          if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
          {
            v280 = [a2 data];
            [v280 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v277 |= (LOBYTE(v341) & 0x7F) << v275;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v275 += 7;
          v12 = v276++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_605;
          }
        }

        v22 = (v277 != 0) & ~[a2 hasError];
LABEL_605:
        v337 = 84;
        goto LABEL_630;
      case 0x2Cu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 87) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (LOBYTE(v341) & 0x7F) << v23;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_507;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_507:
        v337 = 86;
        goto LABEL_630;
      case 0x2Du:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 89) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (LOBYTE(v341) & 0x7F) << v77;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_525;
          }
        }

        v22 = (v79 != 0) & ~[a2 hasError];
LABEL_525:
        v337 = 88;
        goto LABEL_630;
      case 0x2Eu:
        v252 = 0;
        v253 = 0;
        v254 = 0;
        *(a1 + 91) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v255 = [a2 position] + 1;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
          {
            v257 = [a2 data];
            [v257 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v254 |= (LOBYTE(v341) & 0x7F) << v252;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v252 += 7;
          v12 = v253++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_593;
          }
        }

        v22 = (v254 != 0) & ~[a2 hasError];
LABEL_593:
        v337 = 90;
        goto LABEL_630;
      case 0x2Fu:
        v324 = 0;
        v325 = 0;
        v326 = 0;
        *(a1 + 93) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v327 = [a2 position] + 1;
          if (v327 >= [a2 position] && (v328 = objc_msgSend(a2, "position") + 1, v328 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v326 |= (LOBYTE(v341) & 0x7F) << v324;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v12 = v325++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_627;
          }
        }

        v22 = (v326 != 0) & ~[a2 hasError];
LABEL_627:
        v337 = 92;
        goto LABEL_630;
      case 0x30u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 95) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (LOBYTE(v341) & 0x7F) << v41;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_513;
          }
        }

        v22 = (v43 != 0) & ~[a2 hasError];
LABEL_513:
        v337 = 94;
        goto LABEL_630;
      case 0x31u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 97) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (LOBYTE(v341) & 0x7F) << v95;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_531;
          }
        }

        v22 = (v97 != 0) & ~[a2 hasError];
LABEL_531:
        v337 = 96;
        goto LABEL_630;
      case 0x32u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 99) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (LOBYTE(v341) & 0x7F) << v107;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_535;
          }
        }

        v22 = (v109 != 0) & ~[a2 hasError];
LABEL_535:
        v337 = 98;
        goto LABEL_630;
      case 0x33u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 101) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (LOBYTE(v341) & 0x7F) << v16;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_505;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_505:
        v337 = 100;
        goto LABEL_630;
      case 0x34u:
        v330 = 0;
        v331 = 0;
        v332 = 0;
        *(a1 + 103) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v333 = [a2 position] + 1;
          if (v333 >= [a2 position] && (v334 = objc_msgSend(a2, "position") + 1, v334 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v332 |= (LOBYTE(v341) & 0x7F) << v330;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v330 += 7;
          v12 = v331++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_629;
          }
        }

        v22 = (v332 != 0) & ~[a2 hasError];
LABEL_629:
        v337 = 102;
        goto LABEL_630;
      case 0x35u:
        v318 = 0;
        v319 = 0;
        v320 = 0;
        *(a1 + 105) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v321 = [a2 position] + 1;
          if (v321 >= [a2 position] && (v322 = objc_msgSend(a2, "position") + 1, v322 <= objc_msgSend(a2, "length")))
          {
            v323 = [a2 data];
            [v323 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v320 |= (LOBYTE(v341) & 0x7F) << v318;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v318 += 7;
          v12 = v319++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_625;
          }
        }

        v22 = (v320 != 0) & ~[a2 hasError];
LABEL_625:
        v337 = 104;
        goto LABEL_630;
      case 0x36u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 107) = 1;
        while (1)
        {
          LOBYTE(v341) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (LOBYTE(v341) & 0x7F) << v35;
          if ((LOBYTE(v341) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_511;
          }
        }

        v22 = (v37 != 0) & ~[a2 hasError];
LABEL_511:
        v337 = 106;
LABEL_630:
        *(a1 + v337) = v22;
        continue;
      case 0x37u:
        v311 = 0;
        v312 = 0;
        v183 = 0;
        break;
      case 0x38u:
        *(a1 + 108) = 1;
        v341 = 0.0;
        v316 = [a2 position] + 4;
        if (v316 >= [a2 position] && (v317 = objc_msgSend(a2, "position") + 4, v317 <= objc_msgSend(a2, "length")))
        {
          v340 = [a2 data];
          [v340 getBytes:&v341 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 168) = v341;
        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v341) = 0;
      v313 = [a2 position] + 1;
      if (v313 >= [a2 position] && (v314 = objc_msgSend(a2, "position") + 1, v314 <= objc_msgSend(a2, "length")))
      {
        v315 = [a2 data];
        [v315 getBytes:&v341 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v183 |= (LOBYTE(v341) & 0x7F) << v311;
      if ((LOBYTE(v341) & 0x80) == 0)
      {
        break;
      }

      v311 += 7;
      v187 = v312++ > 8;
      if (v187)
      {
        goto LABEL_621;
      }
    }

    if (([a2 hasError] & 1) != 0 || v183 > 5)
    {
LABEL_621:
      LODWORD(v183) = 0;
    }

    v339 = 148;
LABEL_623:
    *(a1 + v339) = v183;
  }

  return [a2 hasError] ^ 1;
}

__CFString *BMPhotosUserAnalyticsMediaTypeTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91CD8[a1];
  }

  return v2;
}

__CFString *BMPhotosUserAnalyticsImportSourceTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91C70[a1];
  }

  return v2;
}

__CFString *BMPhotosUserAnalyticsAssetAgeTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91C08[a1];
  }

  return v2;
}

__CFString *BMPhotosUserAnalyticsLibrarySizeTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91C40[a1];
  }

  return v2;
}

__CFString *BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91D40[a1];
  }

  return v2;
}

uint64_t BMPhotosUserAnalyticsAssetAgeTypeDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPhotosUserAnalyticsLibrarySizeTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPhotosUserAnalyticsImportSourceTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPhotosUserAnalyticsMediaTypeTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMActivitySchedulerDependencyResultEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMActivitySchedulerDependencyResultEventTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_33584);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMActivitySchedulerDependencyResultEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMActivitySchedulerDependencyResultEventTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91E48[a1];
  }

  return v2;
}

uint64_t BMActivitySchedulerDependencyResultEventTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPortraitEntityCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMPortraitEntityCategoryFromString_sortedStrings, 0x15uLL, 8uLL, &__block_literal_global_34153);
  if (result)
  {
    return *(&BMPortraitEntityCategoryFromString_sortedEnums + (((result - BMPortraitEntityCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPortraitEntityAlgorithmFromString(const void *a1)
{
  result = bsearch_b(a1, BMPortraitEntityAlgorithmFromString_sortedStrings, 0x11uLL, 8uLL, &__block_literal_global_120);
  if (result)
  {
    return *(&BMPortraitEntityAlgorithmFromString_sortedEnums + (((result - BMPortraitEntityAlgorithmFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPortraitEntityCategoryAsString(uint64_t a1)
{
  if (a1 >= 0x16)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E91FF8[a1];
  }

  return v2;
}

__CFString *BMPortraitEntityAlgorithmAsString(uint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E920A8[a1];
  }

  return v2;
}

uint64_t BMPortraitEntityCategoryDecode(uint64_t result)
{
  if (result >= 0x16)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPortraitEntityAlgorithmDecode(uint64_t result)
{
  if (result >= 0x12)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMUserFocusDoNotDisturbWhileDrivingReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusDoNotDisturbWhileDrivingReasonFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_34364);
  if (result)
  {
    return *(&BMUserFocusDoNotDisturbWhileDrivingReasonFromString_sortedEnums + (((result - BMUserFocusDoNotDisturbWhileDrivingReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMUserFocusDoNotDisturbWhileDrivingReasonAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E92178[a1];
  }

  return v2;
}

uint64_t BMUserFocusDoNotDisturbWhileDrivingReasonDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMGenerativeExperiencesTransparencyLogExecutionEnvironmentFromString(const void *a1)
{
  result = bsearch_b(a1, BMGenerativeExperiencesTransparencyLogExecutionEnvironmentFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_34599);
  if (result)
  {
    return *(&BMGenerativeExperiencesTransparencyLogExecutionEnvironmentFromString_sortedEnums + (((result - BMGenerativeExperiencesTransparencyLogExecutionEnvironmentFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMGenerativeExperiencesTransparencyLogExecutionEnvironmentAsString(uint64_t a1)
{
  if (a1 < 6 && ((0x3Bu >> a1) & 1) != 0)
  {
    v2 = off_1E6E92220[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

uint64_t BMGenerativeExperiencesTransparencyLogExecutionEnvironmentDecode(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_185544DF4[a1];
  }
}

_BYTE *BMAppWebUsageStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppWebUsageStateFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_34829);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMAppWebUsageStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppWebUsageStateAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E922B0[a1];
  }

  return v2;
}

uint64_t BMAppWebUsageStateDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMediaRouteOutputDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaRouteOutputDeviceTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_35202);
  if (result)
  {
    return *(&BMMediaRouteOutputDeviceTypeFromString_sortedEnums + (((result - BMMediaRouteOutputDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMediaRouteOutputDeviceSubTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaRouteOutputDeviceSubTypeFromString_sortedStrings, 0x15uLL, 8uLL, &__block_literal_global_84_35135);
  if (result)
  {
    return *(&BMMediaRouteOutputDeviceSubTypeFromString_sortedEnums + (((result - BMMediaRouteOutputDeviceSubTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMediaRouteOutputDeviceClusterTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaRouteOutputDeviceClusterTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_95);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMMediaRouteOutputDeviceClusterTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMediaRouteRouteTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaRouteRouteTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_103);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMMediaRouteRouteTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMMediaRouteOutputDeviceTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMediaRouteOutputDeviceSubTypeDecode(uint64_t result)
{
  if (result >= 0x16)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMediaRouteOutputDeviceClusterTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMediaRouteRouteTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSpringBoardDominoStackRotationReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSpringBoardDominoStackRotationReasonFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_35718);
  if (result)
  {
    return *(&BMSpringBoardDominoStackRotationReasonFromString_sortedEnums + (((result - BMSpringBoardDominoStackRotationReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSpringBoardDominoStackRotationReasonAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E92600[a1];
  }

  return v2;
}

uint64_t BMSpringBoardDominoStackRotationReasonDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMessagesCommunicationSafetyResultEventDirectionFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesCommunicationSafetyResultEventDirectionFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_36731);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMMessagesCommunicationSafetyResultEventDirectionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMessagesCommunicationSafetyResultEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesCommunicationSafetyResultEventTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_27_36715);
  if (result)
  {
    return *(&BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString_sortedEnums + (((result - BMMessagesCommunicationSafetyResultEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMessagesCommunicationSafetyResultContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesCommunicationSafetyResultContentTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_38_36704);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMMessagesCommunicationSafetyResultContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesCommunicationSafetyResultEventDirectionAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E927A0[a1];
  }

  return v2;
}

__CFString *BMMessagesCommunicationSafetyResultEventTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E927C0[a1];
  }

  return v2;
}

__CFString *BMMessagesCommunicationSafetyResultContentTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E927E8[a1];
  }

  return v2;
}

uint64_t BMMessagesCommunicationSafetyResultEventDirectionDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMessagesCommunicationSafetyResultEventTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMessagesCommunicationSafetyResultContentTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_37725);
  if (result)
  {
    return *(&BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalFromString_sortedEnums + (((result - BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E939C8[a1];
  }

  return v2;
}

__CFString *BMMLSEDurableFeatureStoreFeatureValueMissingReasonAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"NotAvailable";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

_BYTE *BMMLSEDurableFeatureStorefeatureNameFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEDurableFeatureStorefeatureNameFromString_sortedStrings, 0x1FDuLL, 8uLL, &__block_literal_global_1564_37797);
  if (result)
  {
    return *(&BMMLSEDurableFeatureStorefeatureNameFromString_sortedEnums + (((result - BMMLSEDurableFeatureStorefeatureNameFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSEDurableFeatureStorefeatureNameAsString(uint64_t a1)
{
  if (a1 >= 0x1FE)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E93A18[a1];
  }

  return v2;
}

uint64_t BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMLSEDurableFeatureStoreFeatureValueMissingReasonDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMMLSEDurableFeatureStorefeatureTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E939F8[a1];
  }

  return v2;
}

_BYTE *BMMLSEDurableFeatureStorefeatureTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEDurableFeatureStorefeatureTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_35_38558);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMMLSEDurableFeatureStorefeatureTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMMLSEDurableFeatureStorefeatureTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMLSEDurableFeatureStorefeatureNameDecode(uint64_t result)
{
  if (result >= 0x1FE)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMActivitySchedulerDependencyCompletionEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMActivitySchedulerDependencyCompletionEventTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_38756);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMActivitySchedulerDependencyCompletionEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMActivitySchedulerDependencyCompletionEventTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E94A38[a1];
  }

  return v2;
}

uint64_t BMActivitySchedulerDependencyCompletionEventTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMIntelligenceFlowUserAlignmentScoreCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMIntelligenceFlowUserAlignmentScoreCategoryFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_38897);
  if (result)
  {
    return *(&BMIntelligenceFlowUserAlignmentScoreCategoryFromString_sortedEnums + (((result - BMIntelligenceFlowUserAlignmentScoreCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMIntelligenceFlowUserAlignmentScoreCategoryAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E94A88[a1];
  }

  return v2;
}

uint64_t BMIntelligenceFlowUserAlignmentScoreCategoryDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAppInFocusTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppInFocusTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_39245);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMAppInFocusTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAppInFocusDisplayTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppInFocusDisplayTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_21_39231);
  if (result)
  {
    return *(&BMAppInFocusDisplayTypeFromString_sortedEnums + (((result - BMAppInFocusDisplayTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppInFocusTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E94B80[a1];
  }

  return v2;
}

__CFString *BMAppInFocusDisplayTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 4)
    {
      v2 = @"Continuity";
    }

    else if (a1 == 1)
    {
      v2 = @"MainDisplay";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

uint64_t BMAppInFocusTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppInFocusDisplayTypeDecode(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1855456C4[a1];
  }
}

__CFString *BMAppInFocusLaunchTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E94B80[a1];
  }

  return v2;
}

_BYTE *BMAppInFocusLaunchTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppInFocusLaunchTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_23);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMAppInFocusLaunchTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMAppInFocusLaunchTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMScreenTimeChildStateScreenTimeChildStateKindFromString(const void *a1)
{
  result = bsearch_b(a1, BMScreenTimeChildStateScreenTimeChildStateKindFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_39608);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMScreenTimeChildStateScreenTimeChildStateKindFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMScreenTimeChildStateScreenTimeChildStateKindAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E94C18[a1];
  }

  return v2;
}

uint64_t BMScreenTimeChildStateScreenTimeChildStateKindDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSchoolTimeSessionReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSchoolTimeSessionReasonFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_41246);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSchoolTimeSessionReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSchoolTimeSessionReasonAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E94E90[a1];
  }

  return v2;
}

uint64_t BMSchoolTimeSessionReasonDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAppIntentInvocationImageDisplayStyleFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationImageDisplayStyleFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_41656);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMAppIntentInvocationImageDisplayStyleFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppIntentInvocationImageDisplayStyleAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95410[a1];
  }

  return v2;
}

_BYTE *BMAppIntentInvocationValueTypeArrayCapabilitiesCapabilitiesValueFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationValueTypeArrayCapabilitiesCapabilitiesValueFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_18);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMAppIntentInvocationValueTypeArrayCapabilitiesCapabilitiesValueFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppIntentInvocationValueTypeArrayCapabilitiesCapabilitiesValueAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95428[a1];
  }

  return v2;
}

_BYTE *BMAppIntentInvocationValueTypeContainerTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationValueTypeContainerTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_44_41986);
  if (result)
  {
    return *(&BMAppIntentInvocationValueTypeContainerTypeFromString_sortedEnums + (((result - BMAppIntentInvocationValueTypeContainerTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAppIntentInvocationValueTypeLegacyIntentFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationValueTypeLegacyIntentFromString_sortedStrings, 0xFuLL, 8uLL, &__block_literal_global_91);
  if (result)
  {
    return *(&BMAppIntentInvocationValueTypeLegacyIntentFromString_sortedEnums + (((result - BMAppIntentInvocationValueTypeLegacyIntentFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAppIntentInvocationValueTypeMeasurementUnitFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationValueTypeMeasurementUnitFromString_sortedStrings, 0x17uLL, 8uLL, &__block_literal_global_162);
  if (result)
  {
    return *(&BMAppIntentInvocationValueTypeMeasurementUnitFromString_sortedEnums + (((result - BMAppIntentInvocationValueTypeMeasurementUnitFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAppIntentInvocationValueTypePrimitiveFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationValueTypePrimitiveFromString_sortedStrings, 0xDuLL, 8uLL, &__block_literal_global_203_41817);
  if (result)
  {
    return *(&BMAppIntentInvocationValueTypePrimitiveFromString_sortedEnums + (((result - BMAppIntentInvocationValueTypePrimitiveFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppIntentInvocationValueTypeContainerTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95440[a1];
  }

  return v2;
}

__CFString *BMAppIntentInvocationValueTypeLegacyIntentAsString(uint64_t a1)
{
  if (a1 >= 0x10)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95488[a1];
  }

  return v2;
}

__CFString *BMAppIntentInvocationValueTypeMeasurementUnitAsString(uint64_t a1)
{
  if (a1 >= 0x18)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95508[a1];
  }

  return v2;
}

__CFString *BMAppIntentInvocationValueTypePrimitiveAsString(uint64_t a1)
{
  if (a1 >= 0xE)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E955C8[a1];
  }

  return v2;
}

_BYTE *BMAppIntentInvocationActionOutputConfirmationActionNameTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationActionOutputConfirmationActionNameTypeFromString_sortedStrings, 0x22uLL, 8uLL, &__block_literal_global_307);
  if (result)
  {
    return *(&BMAppIntentInvocationActionOutputConfirmationActionNameTypeFromString_sortedEnums + (((result - BMAppIntentInvocationActionOutputConfirmationActionNameTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppIntentInvocationActionOutputConfirmationActionNameTypeAsString(uint64_t a1)
{
  if (a1 >= 0x23)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95638[a1];
  }

  return v2;
}

_BYTE *BMAppIntentInvocationActionOutputHintFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationActionOutputHintFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_318);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMAppIntentInvocationActionOutputHintFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppIntentInvocationActionOutputHintAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95750[a1];
  }

  return v2;
}

_BYTE *BMAppIntentInvocationSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInvocationSourceFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_344);
  if (result)
  {
    return *(&BMAppIntentInvocationSourceFromString_sortedEnums + (((result - BMAppIntentInvocationSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppIntentInvocationSourceAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95770[a1];
  }

  return v2;
}

uint64_t BMAppIntentInvocationImageDisplayStyleDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationValueTypeArrayCapabilitiesCapabilitiesValueDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationValueTypeContainerTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationValueTypeLegacyIntentDecode(uint64_t result)
{
  if (result >= 0x10)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationValueTypeMeasurementUnitDecode(uint64_t result)
{
  if (result >= 0x18)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationValueTypePrimitiveDecode(uint64_t result)
{
  if (result >= 0xE)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationActionOutputConfirmationActionNameTypeDecode(uint64_t result)
{
  if (result >= 0x23)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationActionOutputHintDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInvocationSourceDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDFromString(const void *a1)
{
  result = bsearch_b(a1, BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDFromString_sortedStrings, 0x18uLL, 8uLL, &__block_literal_global_42753);
  if (result)
  {
    return *(&BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDFromString_sortedEnums + (((result - BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDAsString(uint64_t a1)
{
  if (a1 >= 0x19)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95920[a1];
  }

  return v2;
}

uint64_t BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDDecode(uint64_t result)
{
  if (result >= 0x19)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSiriRequestContextUserClassificationFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriRequestContextUserClassificationFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_43256);
  if (result)
  {
    return *(&BMTranslationLanguageCodeSourceFromString_sortedEnums + (((result - BMSiriRequestContextUserClassificationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriRequestContextUserClassificationAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95BE8[a1];
  }

  return v2;
}

_BYTE *BMSiriRequestContextDeviceIdiomFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriRequestContextDeviceIdiomFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_48_43608);
  if (result)
  {
    return *(&BMSiriRequestContextDeviceIdiomFromString_sortedEnums + (((result - BMSiriRequestContextDeviceIdiomFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriRequestContextDeviceIdiomAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95C10[a1];
  }

  return v2;
}

uint64_t BMSiriRequestContextUserClassificationDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriRequestContextDeviceIdiomDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMShareSheetFeedbackEngagementTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMShareSheetFeedbackEngagementTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_45688);
  if (result)
  {
    return *(&BMAppDocumentInteractionTypeFromString_sortedEnums + (((result - BMShareSheetFeedbackEngagementTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMShareSheetFeedbackEngagementTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95F18[a1];
  }

  return v2;
}

uint64_t BMShareSheetFeedbackEngagementTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosShareTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosShareTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_46277);
  if (result)
  {
    return *(&BMPhotosShareTypeFromString_sortedEnums + (((result - BMPhotosShareTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosShareTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E95FE8[a1];
  }

  return v2;
}

uint64_t BMPhotosShareTypeDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosEditTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosEditTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_46654);
  if (result)
  {
    return *(&BMAdPlatformsCandidateFilterFromString_sortedEnums + (((result - BMPhotosEditTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosEditTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E960B8[a1];
  }

  return v2;
}

uint64_t BMPhotosEditTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSafariBrowsingAssistantBuildTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantBuildTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_24_47920);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMSafariBrowsingAssistantBuildTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariBrowsingAssistantSearchBarPositionFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantSearchBarPositionFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_47908);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSafariBrowsingAssistantSearchBarPositionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariBrowsingAssistantTreatmentAllocationStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantTreatmentAllocationStatusFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_106);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMSafariBrowsingAssistantTreatmentAllocationStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariBrowsingAssistantTreatmentAllocationStatusAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E966C0[a1];
  }

  return v2;
}

__CFString *BMSafariBrowsingAssistantBuildTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E965C0[a1];
  }

  return v2;
}

__CFString *BMSafariBrowsingAssistantSearchBarPositionAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E965A8[a1];
  }

  return v2;
}

_BYTE *BMSafariBrowsingAssistantHideReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantHideReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_87);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMSafariBrowsingAssistantHideReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariBrowsingAssistantHideReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96688[a1];
  }

  return v2;
}

_BYTE *BMSafariBrowsingAssistantComponentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantComponentTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_35_48138);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMSafariBrowsingAssistantComponentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariBrowsingAssistantCardTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantCardTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_43);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSafariBrowsingAssistantCardTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariBrowsingAssistantEntityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantEntityTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_57);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString_sortedEnums + (((result - BMSafariBrowsingAssistantEntityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariBrowsingAssistantReaderViewSectionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantReaderViewSectionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_62);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSafariBrowsingAssistantReaderViewSectionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariBrowsingAssistantSparkleTriggerFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantSparkleTriggerFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_128);
  if (result)
  {
    return *(&BMSafariBrowsingAssistantSparkleTriggerFromString_sortedEnums + (((result - BMSafariBrowsingAssistantSparkleTriggerFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariBrowsingAssistantSparkleTriggerAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E966F8[a1];
  }

  return v2;
}

__CFString *BMSafariBrowsingAssistantComponentTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E965E8[a1];
  }

  return v2;
}

__CFString *BMSafariBrowsingAssistantCardTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96608[a1];
  }

  return v2;
}

__CFString *BMSafariBrowsingAssistantEntityTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96620[a1];
  }

  return v2;
}

__CFString *BMSafariBrowsingAssistantReaderViewSectionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96648[a1];
  }

  return v2;
}

_BYTE *BMSafariBrowsingAssistantUserInteractionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantUserInteractionTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_76);
  if (result)
  {
    return *(&BMInferenceOutputTypeFromString_sortedEnums + (((result - BMSafariBrowsingAssistantUserInteractionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariBrowsingAssistantHideShowButtonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantHideShowButtonFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_114_48221);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSafariBrowsingAssistantHideShowButtonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariBrowsingAssistantHideShowButtonAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E966E0[a1];
  }

  return v2;
}

__CFString *BMSafariBrowsingAssistantUserInteractionTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96660[a1];
  }

  return v2;
}

_BYTE *BMSafariBrowsingAssistantRequestTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariBrowsingAssistantRequestTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_95_48319);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSafariBrowsingAssistantRequestTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariBrowsingAssistantRequestTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E966A8[a1];
  }

  return v2;
}

uint64_t BMSafariBrowsingAssistantSearchBarPositionDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantBuildTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantComponentTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantCardTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantEntityTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantReaderViewSectionTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantUserInteractionTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantHideReasonDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantRequestTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantTreatmentAllocationStatusDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantHideShowButtonDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariBrowsingAssistantSparkleTriggerDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosStyleStyleSelectionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosStyleStyleSelectionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_48784);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMPhotosStyleStyleSelectionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosStyleLibrarySizeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosStyleLibrarySizeTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_27_48759);
  if (result)
  {
    return *(&BMPhotosStyleLibrarySizeTypeFromString_sortedEnums + (((result - BMPhotosStyleLibrarySizeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosStyleUserLibraryAgeInDaysTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosStyleUserLibraryAgeInDaysTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_44_48742);
  if (result)
  {
    return *(&BMPhotosStyleUserLibraryAgeInDaysTypeFromString_sortedEnums + (((result - BMPhotosStyleUserLibraryAgeInDaysTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosStyleStyleSelectionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96838[a1];
  }

  return v2;
}

__CFString *BMPhotosStyleLibrarySizeTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96850[a1];
  }

  return v2;
}

__CFString *BMPhotosStyleUserLibraryAgeInDaysTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96880[a1];
  }

  return v2;
}

uint64_t BMPhotosStyleStyleSelectionTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPhotosStyleLibrarySizeTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPhotosStyleUserLibraryAgeInDaysTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMDeviceBluetoothDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceBluetoothDeviceTypeFromString_sortedStrings, 0x32uLL, 8uLL, &__block_literal_global_49050);
  if (result)
  {
    return *(&BMDeviceBluetoothDeviceTypeFromString_sortedEnums + (((result - BMDeviceBluetoothDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceBluetoothDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x33)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96A98[a1];
  }

  return v2;
}

uint64_t BMDeviceBluetoothDeviceTypeDecode(uint64_t result)
{
  if (result >= 0x33)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMFeedbackEvaluationResponseUserResponseFromString(const void *a1)
{
  result = bsearch_b(a1, BMFeedbackEvaluationResponseUserResponseFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_49902);
  if (result)
  {
    return *(&BMFeedbackEvaluationResponseUserResponseFromString_sortedEnums + (((result - BMFeedbackEvaluationResponseUserResponseFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFeedbackEvaluationResponseUserResponseAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E96D68[a1];
  }

  return v2;
}

uint64_t BMFeedbackEvaluationResponseUserResponseDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMomentsEngagementBundleInterfaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementBundleInterfaceTypeFromString_sortedStrings, 0xFuLL, 8uLL, &__block_literal_global_155_51011);
  if (result)
  {
    return *(&BMMomentsEngagementBundleInterfaceTypeFromString_sortedEnums + (((result - BMMomentsEngagementBundleInterfaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEngagementBundleSummaryVisibilityCategoryForUIFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementBundleSummaryVisibilityCategoryForUIFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_50995);
  if (result)
  {
    return *(&BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionFromString_sortedEnums + (((result - BMMomentsEngagementBundleSummaryVisibilityCategoryForUIFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEngagementBundleInterfaceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x10)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97380[a1];
  }

  return v2;
}

__CFString *BMMomentsEngagementBundleSummaryVisibilityCategoryForUIAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97258[a1];
  }

  return v2;
}

_BYTE *BMMomentsEngagementSuggestionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementSuggestionTypeFromString_sortedStrings, 0x1FuLL, 8uLL, &__block_literal_global_108);
  if (result)
  {
    return *(&BMMomentsEngagementSuggestionTypeFromString_sortedEnums + (((result - BMMomentsEngagementSuggestionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEngagementSuggestionTypeAsString(uint64_t a1)
{
  if (a1 >= 0x20)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97280[a1];
  }

  return v2;
}

_BYTE *BMMomentsEngagementAppEntryEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementAppEntryEventTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_157);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMMomentsEngagementAppEntryEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEngagementAppEntryEventTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97400[a1];
  }

  return v2;
}

_BYTE *BMMomentsEngagementClientActivityEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementClientActivityEventTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_171);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMMomentsEngagementClientActivityEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEngagementClientActivityEventTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97428[a1];
  }

  return v2;
}

uint64_t BMMomentsEngagementBundleSummaryVisibilityCategoryForUIDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEngagementSuggestionTypeDecode(uint64_t result)
{
  if (result >= 0x20)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEngagementBundleInterfaceTypeDecode(uint64_t result)
{
  if (result >= 0x10)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEngagementAppEntryEventTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEngagementClientActivityEventTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMailRecategorizationCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMMailRecategorizationCategoryFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_51757);
  if (result)
  {
    return *(&BMMailRecategorizationCategoryFromString_sortedEnums + (((result - BMMailRecategorizationCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMailRecategorizationScopeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMailRecategorizationScopeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_30);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMailRecategorizationScopeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMailRecategorizationCategoryAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E974C8[a1];
  }

  return v2;
}

__CFString *BMMailRecategorizationScopeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97500[a1];
  }

  return v2;
}

uint64_t BMMailRecategorizationCategoryDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMailRecategorizationScopeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMDeviceBluetoothGATTSessionStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceBluetoothGATTSessionStateFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_52122);
  if (result)
  {
    return *(&BMDeviceBluetoothGATTSessionStateFromString_sortedEnums + (((result - BMDeviceBluetoothGATTSessionStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceBluetoothGATTSessionStateAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97580[a1];
  }

  return v2;
}

uint64_t BMDeviceBluetoothGATTSessionStateDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMFindMyContactActivityEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMFindMyContactActivityEventTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_52475);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMFindMyContactActivityEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFindMyContactActivityEventTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97600[a1];
  }

  return v2;
}

uint64_t BMFindMyContactActivityEventTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMiCloudSubscriptionEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMiCloudSubscriptionEventTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_52761);
  if (result)
  {
    return *(&BMAdPlatformsCandidateImpressionFromString_sortedEnums + (((result - BMiCloudSubscriptionEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMiCloudSubscriptionEntryTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMiCloudSubscriptionEntryTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_33_52745);
  if (result)
  {
    return *(&BMiCloudSubscriptionEntryTypeFromString_sortedEnums + (((result - BMiCloudSubscriptionEntryTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMiCloudSubscriptionEventTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E976B0[a1];
  }

  return v2;
}

__CFString *BMiCloudSubscriptionEntryTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E976E0[a1];
  }

  return v2;
}

uint64_t BMiCloudSubscriptionEventTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMiCloudSubscriptionEntryTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSafariMemoryFootprintFootprintFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariMemoryFootprintFootprintFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_53878);
  if (result)
  {
    return *(&BMGeneratedImageUserInteractionFeatureFromString_sortedEnums + (((result - BMSafariMemoryFootprintFootprintFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariMemoryFootprintPageCountFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariMemoryFootprintPageCountFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_30_53865);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMSafariMemoryFootprintPageCountFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariMemoryFootprintLifetimeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariMemoryFootprintLifetimeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_56_53839);
  if (result)
  {
    return *(&BMSafariMemoryFootprintLifetimeFromString_sortedEnums + (((result - BMSafariMemoryFootprintLifetimeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariMemoryFootprintFootprintAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97958[a1];
  }

  return v2;
}

__CFString *BMSafariMemoryFootprintPageCountAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97988[a1];
  }

  return v2;
}

__CFString *BMSafariMemoryFootprintLifetimeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E979A8[a1];
  }

  return v2;
}

uint64_t BMSafariMemoryFootprintFootprintDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariMemoryFootprintPageCountDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariMemoryFootprintLifetimeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosMemoryCreationMemoryAssetCountFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosMemoryCreationMemoryAssetCountFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_55044);
  if (result)
  {
    return *(&BMSiriPostSiriEngagementFeaturesTaskSuccessFromString_sortedEnums + (((result - BMPhotosMemoryCreationMemoryAssetCountFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosMemoryCreationMemoryPromptSuggestionSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosMemoryCreationMemoryPromptSuggestionSourceFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_33_55025);
  if (result)
  {
    return *(&BMPhotosMemoryCreationMemoryPromptSuggestionSourceFromString_sortedEnums + (((result - BMPhotosMemoryCreationMemoryPromptSuggestionSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosMemoryCreationMemoryAssetCountAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97C90[a1];
  }

  return v2;
}

__CFString *BMPhotosMemoryCreationMemoryPromptSuggestionSourceAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97CB8[a1];
  }

  return v2;
}

uint64_t BMPhotosMemoryCreationMemoryAssetCountDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMPhotosMemoryCreationMemoryPromptSuggestionSourceDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMContextSyncWalletTransactionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextSyncWalletTransactionTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_55542);
  if (result)
  {
    return *(&BMContextSyncWalletTransactionTypeFromString_sortedEnums + (((result - BMContextSyncWalletTransactionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMContextSyncWalletTransactionMerchantTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextSyncWalletTransactionMerchantTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_45_55517);
  if (result)
  {
    return *(&BMWalletSettledTransactionMerchantTypeFromString_sortedEnums + (((result - BMContextSyncWalletTransactionMerchantTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMContextSyncWalletTransactionTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97DD0[a1];
  }

  return v2;
}

__CFString *BMContextSyncWalletTransactionMerchantTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97E08[a1];
  }

  return v2;
}

uint64_t BMContextSyncWalletTransactionTypeDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMContextSyncWalletTransactionMerchantTypeDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAppleIDChildSetupChildSetupScreenFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppleIDChildSetupChildSetupScreenFromString_sortedStrings, 0xEuLL, 8uLL, &__block_literal_global_56015);
  if (result)
  {
    return *(&BMAppleIDChildSetupChildSetupScreenFromString_sortedEnums + (((result - BMAppleIDChildSetupChildSetupScreenFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAppleIDChildSetupFlowTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppleIDChildSetupFlowTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_54_56005);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMAppleIDChildSetupFlowTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppleIDChildSetupChildSetupScreenAsString(uint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97F58[a1];
  }

  return v2;
}

__CFString *BMAppleIDChildSetupFlowTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E97FD0[a1];
  }

  return v2;
}

uint64_t BMAppleIDChildSetupChildSetupScreenDecode(uint64_t result)
{
  if (result >= 0xF)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppleIDChildSetupFlowTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMUserFocusInferredModeOriginFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusInferredModeOriginFromString_sortedStrings, 0x11uLL, 8uLL, &__block_literal_global_57638);
  if (result)
  {
    return *(&BMUserFocusInferredModeOriginFromString_sortedEnums + (((result - BMUserFocusInferredModeOriginFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMUserFocusInferredModeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusInferredModeTypeFromString_sortedStrings, 0x12uLL, 8uLL, &__block_literal_global_108_57572);
  if (result)
  {
    return *(&BMUserFocusInferredModeTypeFromString_sortedEnums + (((result - BMUserFocusInferredModeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMUserFocusInferredModeOriginAsString(uint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E982A0[a1];
  }

  return v2;
}

__CFString *BMUserFocusInferredModeTypeAsString(uint64_t a1)
{
  if (a1 >= 0x13)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98330[a1];
  }

  return v2;
}

uint64_t BMUserFocusInferredModeOriginDecode(uint64_t result)
{
  if (result >= 0x12)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMUserFocusInferredModeTypeDecode(uint64_t result)
{
  if (result >= 0x13)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMEmojiEngagementInputModeFromString(const void *a1)
{
  result = bsearch_b(a1, BMEmojiEngagementInputModeFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_59046);
  if (result)
  {
    return *(&BMEmojiEngagementInputModeFromString_sortedEnums + (((result - BMEmojiEngagementInputModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMEmojiEngagementInputModeAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98548[a1];
  }

  return v2;
}

uint64_t BMEmojiEngagementInputModeDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMFrontBoardDisplayElementDisplayInterfaceOrientationFromString(const void *a1)
{
  result = bsearch_b(a1, BMFrontBoardDisplayElementDisplayInterfaceOrientationFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_21_59513);
  if (result)
  {
    return *(&BMTranslationLanguageCodeSourceFromString_sortedEnums + (((result - BMFrontBoardDisplayElementDisplayInterfaceOrientationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMFrontBoardDisplayElementDisplayBacklightStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMFrontBoardDisplayElementDisplayBacklightStatusFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_29_59505);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMFrontBoardDisplayElementDisplayBacklightStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFrontBoardDisplayElementDisplayTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Main";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *BMFrontBoardDisplayElementDisplayInterfaceOrientationAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E986D0[a1];
  }

  return v2;
}

__CFString *BMFrontBoardDisplayElementDisplayBacklightStatusAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E986F8[a1];
  }

  return v2;
}

_BYTE *BMFrontBoardDisplayElementTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMFrontBoardDisplayElementTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_43_59694);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMFrontBoardDisplayElementTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMFrontBoardDisplayElementChangeTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMFrontBoardDisplayElementChangeTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_54_59679);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMFrontBoardDisplayElementChangeTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFrontBoardDisplayElementTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98710[a1];
  }

  return v2;
}

__CFString *BMFrontBoardDisplayElementChangeTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98738[a1];
  }

  return v2;
}

uint64_t BMFrontBoardDisplayElementDisplayTypeDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMFrontBoardDisplayElementDisplayInterfaceOrientationDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMFrontBoardDisplayElementDisplayBacklightStatusDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMFrontBoardDisplayElementTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMFrontBoardDisplayElementChangeTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMFindMyLocationChangeStateChangeFromString(const void *a1)
{
  result = bsearch_b(a1, BMFindMyLocationChangeStateChangeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_30_59859);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMFindMyLocationChangeStateChangeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMFindMyLocationChangeActivityStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMFindMyLocationChangeActivityStateFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_59840);
  if (result)
  {
    return *(&BMFindMyLocationChangeActivityStateFromString_sortedEnums + (((result - BMFindMyLocationChangeActivityStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFindMyLocationChangeStateChangeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E987E8[a1];
  }

  return v2;
}

__CFString *BMFindMyLocationChangeActivityStateAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E987B8[a1];
  }

  return v2;
}

uint64_t BMFindMyLocationChangeActivityStateDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMFindMyLocationChangeStateChangeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMWalletPaymentsCommerceRecurringSendSuggestionsUserSelectionFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceRecurringSendSuggestionsUserSelectionFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_60105);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMWalletPaymentsCommerceRecurringSendSuggestionsUserSelectionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceRecurringSendSuggestionsPassTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceRecurringSendSuggestionsPassTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_21_60095);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceRecurringSendSuggestionsPassTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_38_60076);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyFromString_sortedEnums + (((result - BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_57_60068);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_49_60057);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommerceRecurringSendSuggestionsUserSelectionAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E988B0[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceRecurringSendSuggestionsPassTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E988D0[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E988E8[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98938[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98918[a1];
  }

  return v2;
}

uint64_t BMWalletPaymentsCommerceRecurringSendSuggestionsUserSelectionDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMWalletPaymentsCommerceRecurringSendSuggestionsPassTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMWalletPaymentsCommerceRecurringSendSuggestionsFrequencyDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMWalletPaymentsCommerceRecurringSendSuggestionsDayRangeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMWalletPaymentsCommerceRecurringSendSuggestionsSuggestionsRangeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMContextualUnderstandingActivityInferenceActivityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextualUnderstandingActivityInferenceActivityTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_60271);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMContextualUnderstandingActivityInferenceActivityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMContextualUnderstandingActivityInferenceActivityTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98980[a1];
  }

  return v2;
}

uint64_t BMContextualUnderstandingActivityInferenceActivityTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMLighthouseLedgerDediscoPrivacyEventEventPhaseFromString(const void *a1)
{
  result = bsearch_b(a1, BMLighthouseLedgerDediscoPrivacyEventEventPhaseFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_60481);
  if (result)
  {
    return *(&BMLighthouseLedgerDediscoPrivacyEventEventPhaseFromString_sortedEnums + (((result - BMLighthouseLedgerDediscoPrivacyEventEventPhaseFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLighthouseLedgerDediscoPrivacyEventEventPhaseAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98A38[a1];
  }

  return v2;
}