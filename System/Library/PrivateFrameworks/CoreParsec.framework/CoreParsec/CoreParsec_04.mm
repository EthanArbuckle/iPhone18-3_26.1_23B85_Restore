uint64_t _CPEndNetworkSearchFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
      LOBYTE(v61[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (LOBYTE(v61[0]) & 0x7F) << v5;
      if ((LOBYTE(v61[0]) & 0x80) == 0)
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
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (LOBYTE(v61[0]) & 0x7F) << v13;
          if ((LOBYTE(v61[0]) & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_99:
            [a1 setTimestamp:v19];
            goto LABEL_86;
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

        goto LABEL_99;
      case 2u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (LOBYTE(v61[0]) & 0x7F) << v42;
          if ((LOBYTE(v61[0]) & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_107:
        [a1 setResponseSize:v48];
        goto LABEL_86;
      case 3u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (LOBYTE(v61[0]) & 0x7F) << v35;
          if ((LOBYTE(v61[0]) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_103:
        [a1 setStatusCode:v41];
        goto LABEL_86;
      case 5u:
        v27 = PBReaderReadString();
        [a1 setUuid:v27];
        goto LABEL_85;
      case 7u:
        v27 = PBReaderReadString();
        [a1 setParsecStatus:v27];
        goto LABEL_85;
      case 8u:
        v27 = PBReaderReadString();
        [a1 setFbq:v27];
        goto LABEL_85;
      case 9u:
        v61[0] = 0.0;
        v49 = [a2 position] + 8;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
        {
          v59 = [a2 data];
          [v59 getBytes:v61 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setDuration:v61[0]];
        goto LABEL_86;
      case 0xAu:
        v27 = PBReaderReadString();
        [a1 setPartialClientIp:v27];
        goto LABEL_85;
      case 0xBu:
        v27 = objc_alloc_init(_CPNetworkTimingData);
        v61[0] = 0.0;
        v61[1] = 0.0;
        if (PBReaderPlaceMark() && _CPNetworkTimingDataReadFrom(v27, a2))
        {
          PBReaderRecallMark();
          [a1 setTimingData:v27];
LABEL_85:

LABEL_86:
          v58 = [a2 position];
          if (v58 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0xCu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (LOBYTE(v61[0]) & 0x7F) << v51;
          if ((LOBYTE(v61[0]) & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v57 = 0;
            goto LABEL_111;
          }
        }

        if ([a2 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_111:
        [a1 setEndpointType:v57];
        goto LABEL_86;
      case 0xDu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (LOBYTE(v61[0]) & 0x7F) << v20;
          if ((LOBYTE(v61[0]) & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_91:
        [a1 setRawResponseSize:v26];
        goto LABEL_86;
      case 0xEu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (LOBYTE(v61[0]) & 0x7F) << v28;
          if ((LOBYTE(v61[0]) & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_95;
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

LABEL_95:
        [a1 setDecompressedResponseSize:v34];
        goto LABEL_86;
      case 0xFu:
        v27 = PBReaderReadString();
        [a1 setEdge:v27];
        goto LABEL_85;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_86;
    }
  }
}

uint64_t _CPStartLocalSearchFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
      LOBYTE(v86) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v86 & 0x7F) << v5;
      if ((v86 & 0x80) == 0)
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
        while (1)
        {
          LOBYTE(v86) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v86 & 0x7F) << v13;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_141:
            [a1 setTimestamp:v19];
            goto LABEL_120;
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

        goto LABEL_141;
      case 2u:
        v48 = PBReaderReadString();
        [a1 setInput:v48];
        goto LABEL_119;
      case 3u:
        v48 = PBReaderReadString();
        [a1 setUuid:v48];
        goto LABEL_119;
      case 4u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v86 & 0x7F) << v49;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_137:
        [a1 setTriggerEvent:v55];
        goto LABEL_120;
      case 5u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v86 & 0x7F) << v34;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v40 = 0;
            goto LABEL_131;
          }
        }

        if ([a2 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v36;
        }

LABEL_131:
        [a1 setQueryId:v40];
        goto LABEL_120;
      case 6u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v86 & 0x7F) << v56;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_145;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_145:
        [a1 setIndexType:v62];
        goto LABEL_120;
      case 7u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v86 & 0x7F) << v70;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v76 = 0;
            goto LABEL_153;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_153:
        [a1 setSearchType:v76];
        goto LABEL_120;
      case 8u:
        v48 = PBReaderReadString();
        [a1 setOriginatingApp:v48];
        goto LABEL_119;
      case 9u:
        v48 = objc_alloc_init(_CPPerformEntityQueryCommandForFeedback);
        v86 = 0;
        v87 = 0;
        if (!PBReaderPlaceMark() || !_CPPerformEntityQueryCommandForFeedbackReadFrom(v48, a2))
        {
          goto LABEL_160;
        }

        PBReaderRecallMark();
        [a1 setEntityQueryCommand:v48];
        goto LABEL_119;
      case 0xAu:
        v48 = objc_alloc_init(_CPIndexStateForFeedback);
        v86 = 0;
        v87 = 0;
        if (PBReaderPlaceMark() && _CPIndexStateForFeedbackReadFrom(v48, a2))
        {
          PBReaderRecallMark();
          [a1 setIndexState:v48];
LABEL_119:

LABEL_120:
          v84 = [a2 position];
          if (v84 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_160:

        return 0;
      case 0xBu:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v86 & 0x7F) << v77;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v83 = 0;
            goto LABEL_157;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_157:
        [a1 setCoreSpotlightIndexUsed:v83];
        goto LABEL_120;
      case 0xCu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v86 & 0x7F) << v27;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_127;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_127:
        [a1 setIsPhotosScopedSearch:v33];
        goto LABEL_120;
      case 0xDu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v86 & 0x7F) << v41;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v47 = 0;
            goto LABEL_133;
          }
        }

        v47 = (v43 != 0) & ~[a2 hasError];
LABEL_133:
        [a1 setIsSemanticSearchEligible:v47];
        goto LABEL_120;
      case 0xEu:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v86 & 0x7F) << v63;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v69 = 0;
        }

        else
        {
          v69 = v65;
        }

LABEL_149:
        [a1 setSpotlightInitialPageType:v69];
        goto LABEL_120;
      case 0xFu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v86 & 0x7F) << v20;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_125;
          }
        }

        if ([a2 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_125:
        [a1 setSpotlightBrowsingSearchScope:v26];
        goto LABEL_120;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_120;
    }
  }
}

uint64_t _CPEndLocalSearchFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
        switch(v13)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v38 & 0x7F) << v22;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_69:
            [a1 setTimestamp:v28];
            goto LABEL_78;
          case 2:
            v21 = PBReaderReadString();
            [a1 setUuid:v21];
LABEL_65:

            goto LABEL_78;
          case 3:
            v21 = objc_alloc_init(_CPQueryUnderstandingParse);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_CPQueryUnderstandingParseReadFrom(v21, a2))
            {
LABEL_81:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setQuParse:v21];
            goto LABEL_65;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v21 = objc_alloc_init(_CPPhotosRankingInfo);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_CPPhotosRankingInfoReadFrom(v21, a2))
          {
            goto LABEL_81;
          }

          PBReaderRecallMark();
          [a1 setPhotosRankingInfo:v21];
          goto LABEL_65;
        }

        if (v13 == 7)
        {
          v21 = objc_alloc_init(_CPEmbeddingState);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_CPEmbeddingStateReadFrom(v21, a2))
          {
            goto LABEL_81;
          }

          PBReaderRecallMark();
          [a1 setEmbeddingState:v21];
          goto LABEL_65;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v38 & 0x7F) << v29;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_73:
          [a1 setL1ToL2ResultCount:v35];
          goto LABEL_78;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38 & 0x7F) << v14;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
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
            v20 = v16;
          }

LABEL_77:
          [a1 setCoreSpotlightIndexCount:v20];
          goto LABEL_78;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPErrorFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_CPError);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_CPErrorReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setUnderlyingError:v14];
          goto LABEL_40;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setRelatedStartNetworkSearchFeedbackId:v14];
LABEL_40:

          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
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
              goto LABEL_44;
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

LABEL_44:
          [a1 setTimestamp:v21];
          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPError);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_CPErrorReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setError:v14];
          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCustomFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v30 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v30 & 0x7F) << v6;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v32 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v32 & 0x7F) << v24;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v12 = v25++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_50;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v26;
      }

LABEL_50:
      a1 = v3;
      goto LABEL_2;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadData();
      [v3 setJsonFeedback:v22];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v31 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v31 & 0x7F) << v15;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_37;
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

LABEL_37:
      [v3 setFeedbackType:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSuggestionEngagementFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        v20 = objc_alloc_init(_CPSearchSuggestionForFeedback);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_CPSearchSuggestionForFeedbackReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setSuggestion:v20];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
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

LABEL_36:
        [a1 setTimestamp:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPVisibleSuggestionsFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        v20 = objc_alloc_init(_CPSearchSuggestionForFeedback);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_CPSearchSuggestionForFeedbackReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addSuggestions:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
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

LABEL_38:
        [a1 setTimestamp:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPResultsReceivedAfterTimeoutFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        v20 = objc_alloc_init(_CPSearchResultForFeedback);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addResults:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
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

LABEL_38:
        [a1 setTimestamp:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPLateSectionsAppendedFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        v20 = objc_alloc_init(_CPResultSectionForFeedback);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_CPResultSectionForFeedbackReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addSections:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
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

LABEL_38:
        [a1 setTimestamp:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSectionEngagementFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_46:
        [a1 setTimestamp:v28];
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(_CPResultSectionForFeedback);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_CPResultSectionForFeedbackReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setSection:v21];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
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

LABEL_50:
        [a1 setTriggerEvent:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPVisibleSectionHeaderFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v30 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v30 & 0x7F) << v6;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v32 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v32 & 0x7F) << v24;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v12 = v25++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_50;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v26;
      }

LABEL_50:
      a1 = v3;
      goto LABEL_2;
    }

    if (v14 == 4)
    {
      v22 = PBReaderReadString();
      [v3 setSectionId:v22];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v31 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v31 & 0x7F) << v15;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_37;
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

LABEL_37:
      [v3 setHeaderType:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPDidGoToSiteFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v30 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v30 & 0x7F) << v6;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v32 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v32 & 0x7F) << v24;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v12 = v25++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_50;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v26;
      }

LABEL_50:
      a1 = v3;
      goto LABEL_2;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [v3 setInput:v22];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v31 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v31 & 0x7F) << v15;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_37;
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

LABEL_37:
      [v3 setTriggerEvent:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPDidGoToSearchFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v39 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v39 & 0x7F) << v24;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_52:
        [v3 setEndpoint:v30];
      }

      else
      {
        if (v14 != 4)
        {
          goto LABEL_34;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v38 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v38 & 0x7F) << v16;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_48;
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

LABEL_48:
        [v3 setTriggerEvent:v22];
      }
    }

    else
    {
      if (v14 == 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v40 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v40 & 0x7F) << v31;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v4 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v33;
        }

LABEL_65:
        a1 = v3;
        goto LABEL_2;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [v3 setInput:v15];
      }

      else
      {
LABEL_34:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSessionMissingResultsFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        v20 = objc_alloc_init(_CPSearchResultForFeedback);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addResults:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
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

LABEL_38:
        [a1 setTimestamp:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSessionMissingSuggestionsFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        v20 = objc_alloc_init(_CPSearchSuggestionForFeedback);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_CPSearchSuggestionForFeedbackReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addSuggestions:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
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

LABEL_38:
        [a1 setTimestamp:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPResultGradingFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setTextFeedback:v14];
LABEL_46:

          goto LABEL_55;
        }

        if (v13 == 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31[0] & 0x7F) << v15;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_50;
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

LABEL_50:
          [a1 setGrade:v21];
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31[0] & 0x7F) << v22;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_54:
          [a1 setTimestamp:v28];
          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPSearchResultForFeedback);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setResult:v14];
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPLookupHintRelevancyFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
        switch(v13)
        {
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v38[0] & 0x7F) << v29;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_64;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_64:
            [a1 setDiscarded:v35];
            goto LABEL_69;
          case 6:
            v14 = PBReaderReadString();
            [a1 setContext:v14];
            goto LABEL_58;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v38[0] & 0x7F) << v15;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_68;
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

LABEL_68:
            [a1 setGrade:v21];
            goto LABEL_69;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v38[0] & 0x7F) << v22;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_62:
            [a1 setTimestamp:v28];
            goto LABEL_69;
          case 2:
            v14 = objc_alloc_init(_CPRange);
            v38[0] = 0;
            v38[1] = 0;
            if (!PBReaderPlaceMark() || !_CPRangeReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setHintRange:v14];
            goto LABEL_58;
          case 3:
            v14 = PBReaderReadString();
            [a1 setDomain:v14];
LABEL_58:

            goto LABEL_69;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_69:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPConnectionInvalidatedFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v21 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v21 & 0x7F) << v6;
      if ((v21 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v22 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v22 & 0x7F) << v15;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_34;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v17;
      }

LABEL_34:
      a1 = v3;
      goto LABEL_2;
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSessionEndFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v28 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v28 & 0x7F) << v6;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v30 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v30 & 0x7F) << v22;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v4 = 0;
          goto LABEL_48;
        }
      }

      if ([a2 hasError])
      {
        v4 = 0;
      }

      else
      {
        v4 = v24;
      }

LABEL_48:
      a1 = v3;
      goto LABEL_2;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v29 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v29 & 0x7F) << v14;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
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

LABEL_35:
      [v3 setReason:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSkipSearchFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v30 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v30 & 0x7F) << v6;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 4:
          v22 = PBReaderReadString();
          [v3 setExperimentId:v22];
          break;
        case 5:
          v22 = PBReaderReadString();
          [v3 setTreatmentId:v22];
          break;
        case 6:
          v22 = PBReaderReadString();
          [v3 setExperimentNamespaceId:v22];
          break;
        default:
          goto LABEL_37;
      }

LABEL_41:
    }

    else
    {
      switch(v14)
      {
        case 1:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v32 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v32 & 0x7F) << v24;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v12 = v25++ >= 9;
            if (v12)
            {
              v4 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v4 = 0;
          }

          else
          {
            v4 = v26;
          }

LABEL_58:
          a1 = v3;
          goto LABEL_2;
        case 2:
          v22 = PBReaderReadString();
          [v3 setInput:v22];
          goto LABEL_41;
        case 3:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v31 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31 & 0x7F) << v15;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_45;
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

LABEL_45:
          [v3 setTriggerEvent:v21];
          break;
        default:
LABEL_37:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPClientTimingFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v40 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v40 & 0x7F) << v31;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v4 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v33;
        }

LABEL_68:
        a1 = v3;
        goto LABEL_2;
      }

      if (v14 == 2)
      {
        v22 = PBReaderReadString();
        [v3 setInput:v22];
        goto LABEL_36;
      }

LABEL_46:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v22 = PBReaderReadString();
          [v3 setEventName:v22];
LABEL_36:

          break;
        case 4:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v39 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v39 & 0x7F) << v23;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v12 = v24++ >= 9;
            if (v12)
            {
              v29 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_51:
          [v3 setQueryId:v29];
          break;
        case 5:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v38 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v38 & 0x7F) << v15;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_55;
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

LABEL_55:
          [v3 setNanosecondInterval:v21];
          break;
        default:
          goto LABEL_46;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCommandEngagementFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v66) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v66 & 0x7F) << v5;
        if ((v66 & 0x80) == 0)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v66 & 0x7F) << v50;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v11 = v51++ >= 9;
                if (v11)
                {
                  v56 = 0;
                  goto LABEL_128;
                }
              }

              v56 = (v52 != 0) & ~[a2 hasError];
LABEL_128:
              [a1 setDidDisplayHandleOptions:v56];
              goto LABEL_105;
            case 0xC:
              v49 = objc_alloc_init(_CPPhotosAttributes);
              v66 = 0;
              v67 = 0;
              if (!PBReaderPlaceMark() || !_CPPhotosAttributesReadFrom(v49, a2))
              {
LABEL_135:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setPhotosAttributes:v49];
              goto LABEL_104;
            case 0xB:
              v35 = 0;
              v36 = 0;
              v37 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v38 = [a2 position] + 1;
                if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
                {
                  v40 = [a2 data];
                  [v40 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v37 |= (v66 & 0x7F) << v35;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                v11 = v36++ >= 9;
                if (v11)
                {
                  v41 = 0;
                  goto LABEL_122;
                }
              }

              v41 = (v37 != 0) & ~[a2 hasError];
LABEL_122:
              [a1 setDidSelectFromOptionsMenu:v41];
              goto LABEL_105;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v49 = PBReaderReadString();
              [a1 setResultSectionId:v49];
LABEL_104:

              goto LABEL_105;
            case 8:
              v57 = 0;
              v58 = 0;
              v59 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v60 = [a2 position] + 1;
                if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                {
                  v62 = [a2 data];
                  [v62 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v59 |= (v66 & 0x7F) << v57;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                v11 = v58++ >= 9;
                if (v11)
                {
                  v63 = 0;
                  goto LABEL_132;
                }
              }

              if ([a2 hasError])
              {
                v63 = 0;
              }

              else
              {
                v63 = v59;
              }

LABEL_132:
              [a1 setTriggerEvent:v63];
              goto LABEL_105;
            case 9:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v66 & 0x7F) << v21;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_116;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_116:
              [a1 setContactActionType:v27];
              goto LABEL_105;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v49 = PBReaderReadString();
            [a1 setCardSectionId:v49];
            goto LABEL_104;
          case 5:
            v49 = objc_alloc_init(_CPSearchResultForFeedback);
            v66 = 0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v49, a2))
            {
              goto LABEL_135;
            }

            PBReaderRecallMark();
            [a1 setResult:v49];
            goto LABEL_104;
          case 6:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v66 & 0x7F) << v28;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_120;
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

LABEL_120:
            [a1 setTimestamp:v34];
            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v66 & 0x7F) << v42;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v48 = 0;
                goto LABEL_126;
              }
            }

            if ([a2 hasError])
            {
              v48 = 0;
            }

            else
            {
              v48 = v44;
            }

LABEL_126:
            [a1 setCommandType:v48];
            goto LABEL_105;
          case 2:
            v49 = PBReaderReadString();
            [a1 setCommandDetail:v49];
            goto LABEL_104;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v66 & 0x7F) << v14;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_112;
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

LABEL_112:
            [a1 setUniqueButtonId:v20];
            goto LABEL_105;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_105:
      v64 = [a2 position];
    }

    while (v64 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPDynamicButtonVisibilityFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 4)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = PBReaderReadString();
        [a1 setCardSectionIdentifier:v21];
LABEL_34:

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24[0] & 0x7F) << v14;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        [a1 setTimestamp:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
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

    v21 = objc_alloc_init(_CPButtonForFeedback);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !_CPButtonForFeedbackReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    if (v21)
    {
      [a1 addVisibleDynamicButton2s:v21];
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPExperimentTriggeredFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
        if (v13 == 3)
        {
          v21 = objc_alloc_init(_CPCounterfactualInfo);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_CPCounterfactualInfoReadFrom(v21, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setCounterfactual:v21];
          goto LABEL_46;
        }

        if (v13 == 4)
        {
          v21 = PBReaderReadString();
          [a1 setCodepathId:v21];
LABEL_46:

          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31[0] & 0x7F) << v22;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_54:
          [a1 setQueryID:v28];
          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
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

LABEL_50:
          [a1 setTimestamp:v20];
          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCounterfactualInfoReadFrom(void *a1, void *a2)
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
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v40 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v40 & 0x7F) << v29;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_53;
        }
      }

      v35 = (v31 != 0) & ~[a2 hasError];
LABEL_53:
      [a1 setCfDiffered:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v39 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v39 & 0x7F) << v22;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_51;
        }
      }

      v28 = (v24 != 0) & ~[a2 hasError];
LABEL_51:
      [a1 setCfUsed:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v38 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38 & 0x7F) << v15;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_57;
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

LABEL_57:
      [a1 setCfError:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSearchResultForFeedbackReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v240) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v240) & 0x7F) << v6;
      if ((LOBYTE(v240) & 0x80) == 0)
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
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        [a1 setIdentifier:v14];
        goto LABEL_315;
      case 2u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (LOBYTE(v240) & 0x7F) << v106;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v112 = 0;
            goto LABEL_394;
          }
        }

        if ([a2 hasError])
        {
          v112 = 0;
        }

        else
        {
          v112 = v108;
        }

LABEL_394:
        [a1 setTopHit:v112];
        goto LABEL_316;
      case 3u:
        v14 = objc_alloc_init(_CPActionItemForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPActionItemForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setAction:v14];
        goto LABEL_315;
      case 4u:
        v14 = objc_alloc_init(_CPPunchoutForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPPunchoutForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setPunchout:v14];
        goto LABEL_315;
      case 5u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (LOBYTE(v240) & 0x7F) << v143;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            v149 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v149 = 0;
        }

        else
        {
          v149 = v145;
        }

LABEL_408:
        [a1 setType:v149];
        goto LABEL_316;
      case 7u:
        v14 = objc_alloc_init(_CPStruct);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPStructReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setLocalFeatures:v14];
        goto LABEL_315;
      case 0xBu:
        v14 = PBReaderReadString();
        [a1 setResultType:v14];
        goto LABEL_315;
      case 0xCu:
        v240 = 0.0;
        v113 = [a2 position] + 8;
        if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 8, v114 <= objc_msgSend(a2, "length")))
        {
          v237 = [a2 data];
          [v237 getBytes:&v240 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setRankingScore:v240];
        goto LABEL_316;
      case 0xDu:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (LOBYTE(v240) & 0x7F) << v164;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v170 = 0;
            goto LABEL_418;
          }
        }

        v170 = (v166 != 0) & ~[a2 hasError];
LABEL_418:
        [a1 setIsStaticCorrection:v170];
        goto LABEL_316;
      case 0xEu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (LOBYTE(v240) & 0x7F) << v150;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v156 = 0;
            goto LABEL_412;
          }
        }

        if ([a2 hasError])
        {
          v156 = 0;
        }

        else
        {
          v156 = v152;
        }

LABEL_412:
        [a1 setQueryId:v156];
        goto LABEL_316;
      case 0xFu:
        v14 = PBReaderReadString();
        [a1 setIntendedQuery:v14];
        goto LABEL_315;
      case 0x10u:
        v14 = PBReaderReadString();
        [a1 setCorrectedQuery:v14];
        goto LABEL_315;
      case 0x11u:
        v14 = PBReaderReadString();
        [a1 setCompletedQuery:v14];
        goto LABEL_315;
      case 0x12u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (LOBYTE(v240) & 0x7F) << v36;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_364;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_364:
        [a1 setIsLocalApplicationResult:v42];
        goto LABEL_316;
      case 0x13u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (LOBYTE(v240) & 0x7F) << v115;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            v121 = 0;
            goto LABEL_396;
          }
        }

        v121 = (v117 != 0) & ~[a2 hasError];
LABEL_396:
        [a1 setPubliclyIndexable:v121];
        goto LABEL_316;
      case 0x14u:
        v14 = PBReaderReadString();
        [a1 setFbr:v14];
        goto LABEL_315;
      case 0x15u:
        v14 = PBReaderReadString();
        [a1 setUserInput:v14];
        goto LABEL_315;
      case 0x16u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (LOBYTE(v240) & 0x7F) << v171;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v12 = v172++ >= 9;
          if (v12)
          {
            v177 = 0;
            goto LABEL_420;
          }
        }

        v177 = (v173 != 0) & ~[a2 hasError];
LABEL_420:
        [a1 setIsFuzzyMatch:v177];
        goto LABEL_316;
      case 0x17u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (LOBYTE(v240) & 0x7F) << v29;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_362;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_362:
        [a1 setDoNotFold:v35];
        goto LABEL_316;
      case 0x18u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (LOBYTE(v240) & 0x7F) << v71;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v77 = 0;
            goto LABEL_378;
          }
        }

        if ([a2 hasError])
        {
          v77 = 0;
        }

        else
        {
          v77 = v73;
        }

LABEL_378:
        [a1 setBlockId:v77];
        goto LABEL_316;
      case 0x19u:
        v195 = 0;
        v196 = 0;
        v197 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v198 = [a2 position] + 1;
          if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
          {
            v200 = [a2 data];
            [v200 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v197 |= (LOBYTE(v240) & 0x7F) << v195;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v195 += 7;
          v12 = v196++ >= 9;
          if (v12)
          {
            v201 = 0;
            goto LABEL_430;
          }
        }

        if ([a2 hasError])
        {
          v201 = 0;
        }

        else
        {
          v201 = v197;
        }

LABEL_430:
        [a1 setHashedIdentifier:v201];
        goto LABEL_316;
      case 0x1Au:
        v14 = PBReaderReadString();
        [a1 setResultBundleId:v14];
        goto LABEL_315;
      case 0x1Bu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (LOBYTE(v240) & 0x7F) << v64;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v70 = 0;
            goto LABEL_374;
          }
        }

        if ([a2 hasError])
        {
          v70 = 0;
        }

        else
        {
          v70 = v66;
        }

LABEL_374:
        [a1 setKnownResultBundleId:v70];
        goto LABEL_316;
      case 0x1Cu:
        v14 = PBReaderReadString();
        [a1 setSectionBundleIdentifier:v14];
        goto LABEL_315;
      case 0x1Du:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (LOBYTE(v240) & 0x7F) << v92;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v98 = 0;
            goto LABEL_386;
          }
        }

        if ([a2 hasError])
        {
          v98 = 0;
        }

        else
        {
          v98 = v94;
        }

LABEL_386:
        [a1 setKnownSectionBundleIdentifier:v98];
        goto LABEL_316;
      case 0x1Eu:
        v14 = PBReaderReadString();
        [a1 setApplicationBundleIdentifier:v14];
        goto LABEL_315;
      case 0x1Fu:
        v202 = 0;
        v203 = 0;
        v204 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v204 |= (LOBYTE(v240) & 0x7F) << v202;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v12 = v203++ >= 9;
          if (v12)
          {
            v208 = 0;
            goto LABEL_434;
          }
        }

        if ([a2 hasError])
        {
          v208 = 0;
        }

        else
        {
          v208 = v204;
        }

LABEL_434:
        [a1 setKnownApplicationBundleIdentifier:v208];
        goto LABEL_316;
      case 0x20u:
        v14 = PBReaderReadData();
        [a1 setEntityData:v14];
        goto LABEL_315;
      case 0x21u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (LOBYTE(v240) & 0x7F) << v50;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_368;
          }
        }

        v56 = (v52 != 0) & ~[a2 hasError];
LABEL_368:
        [a1 setShouldUseCompactDisplay:v56];
        goto LABEL_316;
      case 0x22u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (LOBYTE(v240) & 0x7F) << v78;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v84 = 0;
            goto LABEL_380;
          }
        }

        v84 = (v80 != 0) & ~[a2 hasError];
LABEL_380:
        [a1 setNoGoTakeover:v84];
        goto LABEL_316;
      case 0x23u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (LOBYTE(v240) & 0x7F) << v129;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v12 = v130++ >= 9;
          if (v12)
          {
            v135 = 0;
            goto LABEL_402;
          }
        }

        v135 = (v131 != 0) & ~[a2 hasError];
LABEL_402:
        [a1 setPreferTopPlatter:v135];
        goto LABEL_316;
      case 0x24u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (LOBYTE(v240) & 0x7F) << v85;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            v91 = 0;
            goto LABEL_382;
          }
        }

        v91 = (v87 != 0) & ~[a2 hasError];
LABEL_382:
        [a1 setWasCompact:v91];
        goto LABEL_316;
      case 0x25u:
        v216 = 0;
        v217 = 0;
        v218 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v219 = [a2 position] + 1;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
          {
            v221 = [a2 data];
            [v221 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v218 |= (LOBYTE(v240) & 0x7F) << v216;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v216 += 7;
          v12 = v217++ >= 9;
          if (v12)
          {
            v222 = 0;
            goto LABEL_438;
          }
        }

        v222 = (v218 != 0) & ~[a2 hasError];
LABEL_438:
        [a1 setDidTakeoverGo:v222];
        goto LABEL_316;
      case 0x26u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (LOBYTE(v240) & 0x7F) << v43;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_366;
          }
        }

        v49 = (v45 != 0) & ~[a2 hasError];
LABEL_366:
        [a1 setUsesCompactDisplay:v49];
        goto LABEL_316;
      case 0x27u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (LOBYTE(v240) & 0x7F) << v178;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v12 = v179++ >= 9;
          if (v12)
          {
            v184 = 0;
            goto LABEL_422;
          }
        }

        v184 = (v180 != 0) & ~[a2 hasError];
LABEL_422:
        [a1 setIsInstantAnswer:v184];
        goto LABEL_316;
      case 0x28u:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            v214 = [a2 data];
            [v214 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (LOBYTE(v240) & 0x7F) << v209;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v12 = v210++ >= 9;
          if (v12)
          {
            v215 = 0;
            goto LABEL_436;
          }
        }

        v215 = (v211 != 0) & ~[a2 hasError];
LABEL_436:
        [a1 setShouldAutoNavigate:v215];
        goto LABEL_316;
      case 0x29u:
        v14 = objc_alloc_init(_CPCardForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPCardForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setCard:v14];
        goto LABEL_315;
      case 0x2Au:
        v14 = objc_alloc_init(_CPCardForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPCardForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setInlineCard:v14];
        goto LABEL_315;
      case 0x2Bu:
        v14 = objc_alloc_init(_CPCardForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPCardForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setCompactCard:v14];
        goto LABEL_315;
      case 0x2Cu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (LOBYTE(v240) & 0x7F) << v22;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_360;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_360:
        [a1 setContainsPersonalResult:v28];
        goto LABEL_316;
      case 0x2Du:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (LOBYTE(v240) & 0x7F) << v57;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v63 = 0;
            goto LABEL_370;
          }
        }

        v63 = (v59 != 0) & ~[a2 hasError];
LABEL_370:
        [a1 setDidRerankPersonalResult:v63];
        goto LABEL_316;
      case 0x2Eu:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (LOBYTE(v240) & 0x7F) << v99;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v105 = 0;
            goto LABEL_390;
          }
        }

        if ([a2 hasError])
        {
          v105 = 0;
        }

        else
        {
          v105 = v101;
        }

LABEL_390:
        [a1 setCoreSpotlightIndexUsed:v105];
        goto LABEL_316;
      case 0x2Fu:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            v193 = [a2 data];
            [v193 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v190 |= (LOBYTE(v240) & 0x7F) << v188;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v12 = v189++ >= 9;
          if (v12)
          {
            v194 = 0;
            goto LABEL_426;
          }
        }

        if ([a2 hasError])
        {
          v194 = 0;
        }

        else
        {
          v194 = v190;
        }

LABEL_426:
        [a1 setCoreSpotlightIndexUsedReason:v194];
        goto LABEL_316;
      case 0x30u:
        v14 = objc_alloc_init(_CPCoreSpotlightRankingSignalsForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPCoreSpotlightRankingSignalsForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setCoreSpotlightRankingSignals:v14];
        goto LABEL_315;
      case 0x31u:
        v14 = objc_alloc_init(_CPMailRankingSignalsForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPMailRankingSignalsForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setMailRankingSignals:v14];
        goto LABEL_315;
      case 0x32u:
        v14 = objc_alloc_init(_CPMailResultDetailsForFeedback);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPMailResultDetailsForFeedbackReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setMailResultDetails:v14];
        goto LABEL_315;
      case 0x33u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (LOBYTE(v240) & 0x7F) << v136;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v142 = 0;
            goto LABEL_404;
          }
        }

        v142 = (v138 != 0) & ~[a2 hasError];
LABEL_404:
        [a1 setIsVideoAssetFromPhotos:v142];
        goto LABEL_316;
      case 0x34u:
        v223 = 0;
        v224 = 0;
        v225 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v226 = [a2 position] + 1;
          if (v226 >= [a2 position] && (v227 = objc_msgSend(a2, "position") + 1, v227 <= objc_msgSend(a2, "length")))
          {
            v228 = [a2 data];
            [v228 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v225 |= (LOBYTE(v240) & 0x7F) << v223;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v223 += 7;
          v12 = v224++ >= 9;
          if (v12)
          {
            v229 = 0;
            goto LABEL_440;
          }
        }

        v229 = (v225 != 0) & ~[a2 hasError];
LABEL_440:
        [a1 setIsMailInstantAnswerUpdated:v229];
        goto LABEL_316;
      case 0x35u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (LOBYTE(v240) & 0x7F) << v122;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v12 = v123++ >= 9;
          if (v12)
          {
            v128 = 0;
            goto LABEL_400;
          }
        }

        if ([a2 hasError])
        {
          v128 = 0;
        }

        else
        {
          v128 = v124;
        }

LABEL_400:
        [a1 setIndexOfSectionWhenRanked:v128];
        goto LABEL_316;
      case 0x36u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (LOBYTE(v240) & 0x7F) << v15;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_358;
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

LABEL_358:
        [a1 setIndexOfResultInSectionWhenRanked:v21];
        goto LABEL_316;
      case 0x37u:
        v14 = objc_alloc_init(_CPSafariAttributes);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPSafariAttributesReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setSafariAttributes:v14];
        goto LABEL_315;
      case 0x38u:
        v230 = 0;
        v231 = 0;
        v232 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v233 = [a2 position] + 1;
          if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
          {
            v235 = [a2 data];
            [v235 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v232 |= (LOBYTE(v240) & 0x7F) << v230;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v230 += 7;
          v12 = v231++ >= 9;
          if (v12)
          {
            v236 = 0;
            goto LABEL_442;
          }
        }

        v236 = (v232 != 0) & ~[a2 hasError];
LABEL_442:
        [a1 setHasAppTopHitShortcut:v236];
        goto LABEL_316;
      case 0x39u:
        v14 = objc_alloc_init(_CPPhotosAttributes);
        v240 = 0.0;
        v241 = 0;
        if (!PBReaderPlaceMark() || !_CPPhotosAttributesReadFrom(v14, a2))
        {
          goto LABEL_449;
        }

        PBReaderRecallMark();
        [a1 setPhotosAttributes:v14];
        goto LABEL_315;
      case 0x3Au:
        v14 = objc_alloc_init(_CPPhotosAggregatedInfo);
        v240 = 0.0;
        v241 = 0;
        if (PBReaderPlaceMark() && _CPPhotosAggregatedInfoReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setPhotosAggregatedInfo:v14];
LABEL_315:

LABEL_316:
          v4 = a2;
          continue;
        }

LABEL_449:

        return 0;
      case 0x3Bu:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        while (1)
        {
          LOBYTE(v240) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v240 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (LOBYTE(v240) & 0x7F) << v157;
          if ((LOBYTE(v240) & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v163 = 0;
            goto LABEL_416;
          }
        }

        if ([a2 hasError])
        {
          v163 = 0;
        }

        else
        {
          v163 = v159;
        }

LABEL_416:
        [a1 setThirdPartyQueryCompletionMatched:v163];
        goto LABEL_316;
      case 0x3Cu:
        LODWORD(v240) = 0;
        v185 = [a2 position] + 4;
        if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 4, v186 <= objc_msgSend(a2, "length")))
        {
          v238 = [a2 data];
          [v238 getBytes:&v240 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v187) = LODWORD(v240);
        [a1 setThirdPartyNavigationIntentScore:v187];
        goto LABEL_316;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_316;
    }
  }
}

uint64_t _CPPhotosAttributesReadFrom(void *a1, void *a2)
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
      v58 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v58 & 0x7F) << v6;
      if ((v58 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 4:
          v36 = 0;
          v37 = 0;
          v38 = 0;
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
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_86;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_86:
          [a1 setIsVideo:v42];
          continue;
        case 5:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          while (1)
          {
            v61 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v61 & 0x7F) << v51;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v12 = v52++ >= 9;
            if (v12)
            {
              v57 = 0;
              goto LABEL_96;
            }
          }

          v57 = (v53 != 0) & ~[a2 hasError];
LABEL_96:
          [a1 setIsFavorite:v57];
          continue;
        case 6:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v59 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v59 & 0x7F) << v22;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_92;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_92:
          [a1 setPhotosSuggestionType:v28];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v60 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v60 & 0x7F) << v29;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_84;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_84:
          [a1 setPositionIndex:v35];
          continue;
        case 2:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          while (1)
          {
            v64 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v64 & 0x7F) << v44;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v12 = v45++ >= 9;
            if (v12)
            {
              v50 = 0;
              goto LABEL_94;
            }
          }

          v50 = (v46 != 0) & ~[a2 hasError];
LABEL_94:
          [a1 setIsEmbeddingMatched:v50];
          continue;
        case 3:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v63 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v63 & 0x7F) << v15;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_88;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_88:
          [a1 setIsMetadataMatched:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPStructReadFrom(void *a1, void *a2)
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
        LOBYTE(v44) = 0;
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

      if ((v12 >> 3) == 2)
      {
        v44 = 0;
        v45 = 0;
        PBReaderPlaceMark();
        v18 = 0;
        while (1)
        {
          LOBYTE(v42) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v42 & 0x80000000) == 0)
          {
            break;
          }

          v17 = v18++ > 8;
          if (v17)
          {
            goto LABEL_55;
          }
        }

        [a2 hasError];
LABEL_55:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v42) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v42 & 0x7F) << v28;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_67;
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

LABEL_67:
        v35 = 0;
        while (1)
        {
          LOBYTE(v42) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v42 & 0x80000000) == 0)
          {
            break;
          }

          v17 = v35++ > 8;
          if (v17)
          {
            goto LABEL_77;
          }
        }

        [a2 hasError];
LABEL_77:
        v42 = 0;
        v43 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        v40 = objc_alloc_init(_CPValue);
        if (!_CPValueReadFrom(v40, a2) || (PBReaderRecallMark(), PBReaderRecallMark(), ([a2 hasError] & 1) != 0))
        {

          return 0;
        }

        [a1 setIntKeyFields:v40 forKey:v34];
      }

      else if ((v12 >> 3) == 1)
      {
        v44 = 0;
        v45 = 0;
        PBReaderPlaceMark();
        v13 = 0;
        while (1)
        {
          LOBYTE(v42) = 0;
          v14 = [a2 position] + 1;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 1, v15 <= objc_msgSend(a2, "length")))
          {
            v16 = [a2 data];
            [v16 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v42 & 0x80000000) == 0)
          {
            break;
          }

          v17 = v13++ > 8;
          if (v17)
          {
            goto LABEL_40;
          }
        }

        [a2 hasError];
LABEL_40:
        v22 = PBReaderReadString();
        v23 = 0;
        while (1)
        {
          LOBYTE(v42) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v42 & 0x80000000) == 0)
          {
            break;
          }

          v17 = v23++ > 8;
          if (v17)
          {
            goto LABEL_50;
          }
        }

        [a2 hasError];
LABEL_50:
        v42 = 0;
        v43 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_85;
        }

        v27 = objc_alloc_init(_CPValue);
        if (!_CPValueReadFrom(v27, a2) || (PBReaderRecallMark(), PBReaderRecallMark(), ([a2 hasError] & 1) != 0))
        {

LABEL_85:
          return 0;
        }

        [a1 setStringKeyFields:v27 forKey:v22];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPCoreSpotlightRankingSignalsForFeedbackReadFrom(void *a1, void *a2)
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
      LOBYTE(v103) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v103 & 0x7F) << v6;
      if ((v103 & 0x80) == 0)
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
        v103 = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v99 = [a2 data];
          [v99 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v16) = v103;
        [a1 setTopicalityScore:v16];
        continue;
      case 2u:
        v103 = 0;
        v64 = [a2 position] + 4;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 4, v65 <= objc_msgSend(a2, "length")))
        {
          v100 = [a2 data];
          [v100 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v66) = v103;
        [a1 setFreshness:v66];
        continue;
      case 3u:
        v103 = 0;
        v44 = [a2 position] + 4;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 4, v45 <= objc_msgSend(a2, "length")))
        {
          v97 = [a2 data];
          [v97 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v46) = v103;
        [a1 setEngagementScore:v46];
        continue;
      case 4u:
        v103 = 0;
        v54 = [a2 position] + 4;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 4, v55 <= objc_msgSend(a2, "length")))
        {
          v98 = [a2 data];
          [v98 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v56) = v103;
        [a1 setPredictedLikelihoodOfEngagement:v56];
        continue;
      case 5u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v103 & 0x7F) << v27;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            v33 = 0;
            goto LABEL_122;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_122:
        [a1 setWasNominatedAsTopHit:v33];
        continue;
      case 6u:
        v103 = 0;
        v67 = [a2 position] + 4;
        if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 4, v68 <= objc_msgSend(a2, "length")))
        {
          v101 = [a2 data];
          [v101 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v69) = v103;
        [a1 setSodiumL2Score:v69];
        continue;
      case 7u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v103 & 0x7F) << v73;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v79 = 0;
            goto LABEL_132;
          }
        }

        v79 = (v75 != 0) & ~[a2 hasError];
LABEL_132:
        [a1 setIsExactMatchOfLaunchString:v79];
        continue;
      case 8u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v103 & 0x7F) << v57;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v63 = 0;
            goto LABEL_130;
          }
        }

        v63 = (v59 != 0) & ~[a2 hasError];
LABEL_130:
        [a1 setWasEngagedInSpotlight:v63];
        continue;
      case 9u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v103 & 0x7F) << v87;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v12 = v88++ >= 9;
          if (v12)
          {
            v93 = 0;
            goto LABEL_138;
          }
        }

        if ([a2 hasError])
        {
          v93 = 0;
        }

        else
        {
          v93 = v89;
        }

LABEL_138:
        [a1 setResultQueryRecency:v93];
        continue;
      case 0xAu:
        v103 = 0;
        v41 = [a2 position] + 4;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 4, v42 <= objc_msgSend(a2, "length")))
        {
          v96 = [a2 data];
          [v96 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v43) = v103;
        [a1 setPommesL2Score:v43];
        continue;
      case 0xBu:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v103 & 0x7F) << v80;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v12 = v81++ >= 9;
          if (v12)
          {
            v86 = 0;
            goto LABEL_134;
          }
        }

        v86 = (v82 != 0) & ~[a2 hasError];
LABEL_134:
        [a1 setIsSemanticMatch:v86];
        continue;
      case 0xCu:
        v103 = 0;
        v24 = [a2 position] + 4;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
        {
          v95 = [a2 data];
          [v95 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v26) = v103;
        [a1 setSemanticScore:v26];
        continue;
      case 0xDu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v103 & 0x7F) << v34;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v40 = 0;
            goto LABEL_124;
          }
        }

        v40 = (v36 != 0) & ~[a2 hasError];
LABEL_124:
        [a1 setIsSyntacticMatch:v40];
        continue;
      case 0xEu:
        v103 = 0;
        v70 = [a2 position] + 4;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 4, v71 <= objc_msgSend(a2, "length")))
        {
          v102 = [a2 data];
          [v102 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v72) = v103;
        [a1 setSyntacticScore:v72];
        continue;
      case 0xFu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v103 & 0x7F) << v17;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_120;
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

LABEL_120:
        [a1 setEmbeddingStatus:v23];
        continue;
      case 0x10u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
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
      LOBYTE(v103) = 0;
      v50 = [a2 position] + 1;
      if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
      {
        v52 = [a2 data];
        [v52 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v49 |= (v103 & 0x7F) << v47;
      if ((v103 & 0x80) == 0)
      {
        break;
      }

      v47 += 7;
      v12 = v48++ >= 9;
      if (v12)
      {
        v53 = 0;
        goto LABEL_128;
      }
    }

    if ([a2 hasError])
    {
      v53 = 0;
    }

    else
    {
      v53 = v49;
    }

LABEL_128:
    [a1 setItemAgeInDays:v53];
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPMailRankingSignalsForFeedbackReadFrom(void *a1, void *a2)
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
      LOBYTE(v493) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v493 & 0x7F) << v6;
      if ((v493 & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v493 & 0x7F) << v14;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_748:
            [a1 setWasReorderedByRecency:v20];
            goto LABEL_889;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
        goto LABEL_748;
      case 2u:
        v247 = 0;
        v248 = 0;
        v249 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v249 |= (v493 & 0x7F) << v247;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v247 += 7;
          v12 = v248++ >= 9;
          if (v12)
          {
            v253 = 0;
            goto LABEL_752;
          }
        }

        if ([a2 hasError])
        {
          v253 = 0;
        }

        else
        {
          v253 = v249;
        }

LABEL_752:
        [a1 setNumEngagements:v253];
        continue;
      case 3u:
        v216 = 0;
        v217 = 0;
        v218 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v219 = [a2 position] + 1;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
          {
            v221 = [a2 data];
            [v221 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v218 |= (v493 & 0x7F) << v216;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v216 += 7;
          v12 = v217++ >= 9;
          if (v12)
          {
            v222 = 0;
            goto LABEL_734;
          }
        }

        if ([a2 hasError])
        {
          v222 = 0;
        }

        else
        {
          v222 = v218;
        }

LABEL_734:
        [a1 setNumDaysEngagedLast30Days:v222];
        continue;
      case 4u:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v493 & 0x7F) << v233;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v12 = v234++ >= 9;
          if (v12)
          {
            v239 = 0;
            goto LABEL_742;
          }
        }

        if ([a2 hasError])
        {
          v239 = 0;
        }

        else
        {
          v239 = v235;
        }

LABEL_742:
        [a1 setAverageEngagementAgeLast7Days:v239];
        continue;
      case 5u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v493 & 0x7F) << v164;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v170 = 0;
            goto LABEL_708;
          }
        }

        if ([a2 hasError])
        {
          v170 = 0;
        }

        else
        {
          v170 = v166;
        }

LABEL_708:
        [a1 setAverageEngagementAgeLast14Days:v170];
        continue;
      case 6u:
        v289 = 0;
        v290 = 0;
        v291 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v292 = [a2 position] + 1;
          if (v292 >= [a2 position] && (v293 = objc_msgSend(a2, "position") + 1, v293 <= objc_msgSend(a2, "length")))
          {
            v294 = [a2 data];
            [v294 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v291 |= (v493 & 0x7F) << v289;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v289 += 7;
          v12 = v290++ >= 9;
          if (v12)
          {
            v295 = 0;
            goto LABEL_776;
          }
        }

        if ([a2 hasError])
        {
          v295 = 0;
        }

        else
        {
          v295 = v291;
        }

LABEL_776:
        [a1 setAverageEngagementAgeLast21Days:v295];
        continue;
      case 7u:
        v324 = 0;
        v325 = 0;
        v326 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v327 = [a2 position] + 1;
          if (v327 >= [a2 position] && (v328 = objc_msgSend(a2, "position") + 1, v328 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v326 |= (v493 & 0x7F) << v324;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v12 = v325++ >= 9;
          if (v12)
          {
            v330 = 0;
            goto LABEL_794;
          }
        }

        if ([a2 hasError])
        {
          v330 = 0;
        }

        else
        {
          v330 = v326;
        }

LABEL_794:
        [a1 setAverageEngagementAgeLast30Days:v330];
        continue;
      case 8u:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v243 = [a2 position] + 1;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
          {
            v245 = [a2 data];
            [v245 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v242 |= (v493 & 0x7F) << v240;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v12 = v241++ >= 9;
          if (v12)
          {
            v246 = 0;
            goto LABEL_746;
          }
        }

        if ([a2 hasError])
        {
          v246 = 0;
        }

        else
        {
          v246 = v242;
        }

LABEL_746:
        [a1 setDaysSinceReceipt:v246];
        continue;
      case 9u:
        v493 = 0;
        v345 = [a2 position] + 4;
        if (v345 >= [a2 position] && (v346 = objc_msgSend(a2, "position") + 4, v346 <= objc_msgSend(a2, "length")))
        {
          v492 = [a2 data];
          [v492 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v347) = v493;
        [a1 setL1Score:v347];
        continue;
      case 0xAu:
        v493 = 0;
        v199 = [a2 position] + 4;
        if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 4, v200 <= objc_msgSend(a2, "length")))
        {
          v490 = [a2 data];
          [v490 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v201) = v493;
        [a1 setL2Score:v201];
        continue;
      case 0xBu:
        v338 = 0;
        v339 = 0;
        v340 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v341 = [a2 position] + 1;
          if (v341 >= [a2 position] && (v342 = objc_msgSend(a2, "position") + 1, v342 <= objc_msgSend(a2, "length")))
          {
            v343 = [a2 data];
            [v343 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v340 |= (v493 & 0x7F) << v338;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v338 += 7;
          v12 = v339++ >= 9;
          if (v12)
          {
            v344 = 0;
            goto LABEL_800;
          }
        }

        v344 = (v340 != 0) & ~[a2 hasError];
LABEL_800:
        [a1 setIsFlagged:v344];
        continue;
      case 0xCu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v493 & 0x7F) << v150;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v156 = 0;
            goto LABEL_700;
          }
        }

        v156 = (v152 != 0) & ~[a2 hasError];
LABEL_700:
        [a1 setIsRepliedTo:v156];
        continue;
      case 0xDu:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v194 |= (v493 & 0x7F) << v192;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v12 = v193++ >= 9;
          if (v12)
          {
            v198 = 0;
            goto LABEL_722;
          }
        }

        v198 = (v194 != 0) & ~[a2 hasError];
LABEL_722:
        [a1 setIsSemanticMatch:v198];
        continue;
      case 0xEu:
        v317 = 0;
        v318 = 0;
        v319 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v320 = [a2 position] + 1;
          if (v320 >= [a2 position] && (v321 = objc_msgSend(a2, "position") + 1, v321 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v319 |= (v493 & 0x7F) << v317;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v317 += 7;
          v12 = v318++ >= 9;
          if (v12)
          {
            v323 = 0;
            goto LABEL_790;
          }
        }

        v323 = (v319 != 0) & ~[a2 hasError];
LABEL_790:
        [a1 setIsSyntacticMatch:v323];
        continue;
      case 0xFu:
        v493 = 0;
        v126 = [a2 position] + 4;
        if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 4, v127 <= objc_msgSend(a2, "length")))
        {
          v489 = [a2 data];
          [v489 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v128) = v493;
        [a1 setSemanticScore:v128];
        continue;
      case 0x10u:
        v493 = 0;
        v223 = [a2 position] + 4;
        if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 4, v224 <= objc_msgSend(a2, "length")))
        {
          v491 = [a2 data];
          [v491 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v225) = v493;
        [a1 setSyntacticScore:v225];
        continue;
      case 0x11u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v493 & 0x7F) << v105;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_678;
          }
        }

        if ([a2 hasError])
        {
          v111 = 0;
        }

        else
        {
          v111 = v107;
        }

LABEL_678:
        [a1 setCountUnigramMatchInAuthors:v111];
        continue;
      case 0x12u:
        v261 = 0;
        v262 = 0;
        v263 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v264 = [a2 position] + 1;
          if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
          {
            v266 = [a2 data];
            [v266 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v263 |= (v493 & 0x7F) << v261;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v261 += 7;
          v12 = v262++ >= 9;
          if (v12)
          {
            v267 = 0;
            goto LABEL_760;
          }
        }

        if ([a2 hasError])
        {
          v267 = 0;
        }

        else
        {
          v267 = v263;
        }

LABEL_760:
        [a1 setCountBigramMatchInAuthors:v267];
        continue;
      case 0x13u:
        v331 = 0;
        v332 = 0;
        v333 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v334 = [a2 position] + 1;
          if (v334 >= [a2 position] && (v335 = objc_msgSend(a2, "position") + 1, v335 <= objc_msgSend(a2, "length")))
          {
            v336 = [a2 data];
            [v336 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v333 |= (v493 & 0x7F) << v331;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v331 += 7;
          v12 = v332++ >= 9;
          if (v12)
          {
            v337 = 0;
            goto LABEL_798;
          }
        }

        if ([a2 hasError])
        {
          v337 = 0;
        }

        else
        {
          v337 = v333;
        }

LABEL_798:
        [a1 setCountNgramMatchInAuthors:v337];
        continue;
      case 0x14u:
        v383 = 0;
        v384 = 0;
        v385 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v386 = [a2 position] + 1;
          if (v386 >= [a2 position] && (v387 = objc_msgSend(a2, "position") + 1, v387 <= objc_msgSend(a2, "length")))
          {
            v388 = [a2 data];
            [v388 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v385 |= (v493 & 0x7F) << v383;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v383 += 7;
          v12 = v384++ >= 9;
          if (v12)
          {
            v389 = 0;
            goto LABEL_824;
          }
        }

        if ([a2 hasError])
        {
          v389 = 0;
        }

        else
        {
          v389 = v385;
        }

LABEL_824:
        [a1 setCountUnigramPrefixMatchInAuthors:v389];
        continue;
      case 0x15u:
        v275 = 0;
        v276 = 0;
        v277 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v278 = [a2 position] + 1;
          if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
          {
            v280 = [a2 data];
            [v280 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v277 |= (v493 & 0x7F) << v275;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v275 += 7;
          v12 = v276++ >= 9;
          if (v12)
          {
            v281 = 0;
            goto LABEL_768;
          }
        }

        if ([a2 hasError])
        {
          v281 = 0;
        }

        else
        {
          v281 = v277;
        }

LABEL_768:
        [a1 setCountBigramPrefixMatchInAuthors:v281];
        continue;
      case 0x16u:
        v310 = 0;
        v311 = 0;
        v312 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v313 = [a2 position] + 1;
          if (v313 >= [a2 position] && (v314 = objc_msgSend(a2, "position") + 1, v314 <= objc_msgSend(a2, "length")))
          {
            v315 = [a2 data];
            [v315 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v312 |= (v493 & 0x7F) << v310;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v310 += 7;
          v12 = v311++ >= 9;
          if (v12)
          {
            v316 = 0;
            goto LABEL_788;
          }
        }

        if ([a2 hasError])
        {
          v316 = 0;
        }

        else
        {
          v316 = v312;
        }

LABEL_788:
        [a1 setCountNgramPrefixMatchInAuthors:v316];
        continue;
      case 0x17u:
        v369 = 0;
        v370 = 0;
        v371 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v372 = [a2 position] + 1;
          if (v372 >= [a2 position] && (v373 = objc_msgSend(a2, "position") + 1, v373 <= objc_msgSend(a2, "length")))
          {
            v374 = [a2 data];
            [v374 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v371 |= (v493 & 0x7F) << v369;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v369 += 7;
          v12 = v370++ >= 9;
          if (v12)
          {
            v375 = 0;
            goto LABEL_816;
          }
        }

        if ([a2 hasError])
        {
          v375 = 0;
        }

        else
        {
          v375 = v371;
        }

LABEL_816:
        [a1 setCountUnigramMatchInAuthorEmailAddresses:v375];
        continue;
      case 0x18u:
        v411 = 0;
        v412 = 0;
        v413 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v414 = [a2 position] + 1;
          if (v414 >= [a2 position] && (v415 = objc_msgSend(a2, "position") + 1, v415 <= objc_msgSend(a2, "length")))
          {
            v416 = [a2 data];
            [v416 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v413 |= (v493 & 0x7F) << v411;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v411 += 7;
          v12 = v412++ >= 9;
          if (v12)
          {
            v417 = 0;
            goto LABEL_840;
          }
        }

        if ([a2 hasError])
        {
          v417 = 0;
        }

        else
        {
          v417 = v413;
        }

LABEL_840:
        [a1 setCountBigramMatchInAuthorEmailAddresses:v417];
        continue;
      case 0x19u:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            v214 = [a2 data];
            [v214 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v493 & 0x7F) << v209;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v12 = v210++ >= 9;
          if (v12)
          {
            v215 = 0;
            goto LABEL_730;
          }
        }

        if ([a2 hasError])
        {
          v215 = 0;
        }

        else
        {
          v215 = v211;
        }

LABEL_730:
        [a1 setCountNgramMatchInAuthorEmailAddresses:v215];
        continue;
      case 0x1Au:
        v202 = 0;
        v203 = 0;
        v204 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v204 |= (v493 & 0x7F) << v202;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v12 = v203++ >= 9;
          if (v12)
          {
            v208 = 0;
            goto LABEL_726;
          }
        }

        if ([a2 hasError])
        {
          v208 = 0;
        }

        else
        {
          v208 = v204;
        }

LABEL_726:
        [a1 setCountUnigramPrefixMatchInAuthorEmailAddresses:v208];
        continue;
      case 0x1Bu:
        v439 = 0;
        v440 = 0;
        v441 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v442 = [a2 position] + 1;
          if (v442 >= [a2 position] && (v443 = objc_msgSend(a2, "position") + 1, v443 <= objc_msgSend(a2, "length")))
          {
            v444 = [a2 data];
            [v444 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v441 |= (v493 & 0x7F) << v439;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v439 += 7;
          v12 = v440++ >= 9;
          if (v12)
          {
            v445 = 0;
            goto LABEL_856;
          }
        }

        if ([a2 hasError])
        {
          v445 = 0;
        }

        else
        {
          v445 = v441;
        }

LABEL_856:
        [a1 setCountBigramPrefixMatchInAuthorEmailAddresses:v445];
        continue;
      case 0x1Cu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v493 & 0x7F) << v91;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_670;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_670:
        [a1 setCountNgramPrefixMatchInAuthorEmailAddresses:v97];
        continue;
      case 0x1Du:
        v418 = 0;
        v419 = 0;
        v420 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v421 = [a2 position] + 1;
          if (v421 >= [a2 position] && (v422 = objc_msgSend(a2, "position") + 1, v422 <= objc_msgSend(a2, "length")))
          {
            v423 = [a2 data];
            [v423 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v420 |= (v493 & 0x7F) << v418;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v418 += 7;
          v12 = v419++ >= 9;
          if (v12)
          {
            v424 = 0;
            goto LABEL_844;
          }
        }

        if ([a2 hasError])
        {
          v424 = 0;
        }

        else
        {
          v424 = v420;
        }

LABEL_844:
        [a1 setCountUnigramMatchInSubject:v424];
        continue;
      case 0x1Eu:
        v425 = 0;
        v426 = 0;
        v427 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v428 = [a2 position] + 1;
          if (v428 >= [a2 position] && (v429 = objc_msgSend(a2, "position") + 1, v429 <= objc_msgSend(a2, "length")))
          {
            v430 = [a2 data];
            [v430 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v427 |= (v493 & 0x7F) << v425;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v425 += 7;
          v12 = v426++ >= 9;
          if (v12)
          {
            v431 = 0;
            goto LABEL_848;
          }
        }

        if ([a2 hasError])
        {
          v431 = 0;
        }

        else
        {
          v431 = v427;
        }

LABEL_848:
        [a1 setCountBigramMatchInSubject:v431];
        continue;
      case 0x1Fu:
        v348 = 0;
        v349 = 0;
        v350 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v351 = [a2 position] + 1;
          if (v351 >= [a2 position] && (v352 = objc_msgSend(a2, "position") + 1, v352 <= objc_msgSend(a2, "length")))
          {
            v353 = [a2 data];
            [v353 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v350 |= (v493 & 0x7F) << v348;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v348 += 7;
          v12 = v349++ >= 9;
          if (v12)
          {
            v354 = 0;
            goto LABEL_804;
          }
        }

        if ([a2 hasError])
        {
          v354 = 0;
        }

        else
        {
          v354 = v350;
        }

LABEL_804:
        [a1 setCountNgramMatchInSubject:v354];
        continue;
      case 0x20u:
        v254 = 0;
        v255 = 0;
        v256 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v257 = [a2 position] + 1;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
          {
            v259 = [a2 data];
            [v259 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v256 |= (v493 & 0x7F) << v254;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v12 = v255++ >= 9;
          if (v12)
          {
            v260 = 0;
            goto LABEL_756;
          }
        }

        if ([a2 hasError])
        {
          v260 = 0;
        }

        else
        {
          v260 = v256;
        }

LABEL_756:
        [a1 setCountUnigramPrefixMatchInSubject:v260];
        continue;
      case 0x21u:
        v355 = 0;
        v356 = 0;
        v357 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v358 = [a2 position] + 1;
          if (v358 >= [a2 position] && (v359 = objc_msgSend(a2, "position") + 1, v359 <= objc_msgSend(a2, "length")))
          {
            v360 = [a2 data];
            [v360 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v357 |= (v493 & 0x7F) << v355;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v355 += 7;
          v12 = v356++ >= 9;
          if (v12)
          {
            v361 = 0;
            goto LABEL_808;
          }
        }

        if ([a2 hasError])
        {
          v361 = 0;
        }

        else
        {
          v361 = v357;
        }

LABEL_808:
        [a1 setCountBigramPrefixMatchInSubject:v361];
        continue;
      case 0x22u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v493 & 0x7F) << v129;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v12 = v130++ >= 9;
          if (v12)
          {
            v135 = 0;
            goto LABEL_690;
          }
        }

        if ([a2 hasError])
        {
          v135 = 0;
        }

        else
        {
          v135 = v131;
        }

LABEL_690:
        [a1 setCountNgramPrefixMatchInSubject:v135];
        continue;
      case 0x23u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v493 & 0x7F) << v98;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_674;
          }
        }

        if ([a2 hasError])
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

LABEL_674:
        [a1 setCountUnigramMatchInTextContent:v104];
        continue;
      case 0x24u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v493 & 0x7F) << v70;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_658;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_658:
        [a1 setCountBigramMatchInTextContent:v76];
        continue;
      case 0x25u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v493 & 0x7F) << v77;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_662;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_662:
        [a1 setCountNgramMatchInTextContent:v83];
        continue;
      case 0x26u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v493 & 0x7F) << v42;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_642;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_642:
        [a1 setCountUnigramPrefixMatchInTextContent:v48];
        continue;
      case 0x27u:
        v432 = 0;
        v433 = 0;
        v434 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v435 = [a2 position] + 1;
          if (v435 >= [a2 position] && (v436 = objc_msgSend(a2, "position") + 1, v436 <= objc_msgSend(a2, "length")))
          {
            v437 = [a2 data];
            [v437 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v434 |= (v493 & 0x7F) << v432;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v432 += 7;
          v12 = v433++ >= 9;
          if (v12)
          {
            v438 = 0;
            goto LABEL_852;
          }
        }

        if ([a2 hasError])
        {
          v438 = 0;
        }

        else
        {
          v438 = v434;
        }

LABEL_852:
        [a1 setCountBigramPrefixMatchInTextContent:v438];
        continue;
      case 0x28u:
        v376 = 0;
        v377 = 0;
        v378 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v379 = [a2 position] + 1;
          if (v379 >= [a2 position] && (v380 = objc_msgSend(a2, "position") + 1, v380 <= objc_msgSend(a2, "length")))
          {
            v381 = [a2 data];
            [v381 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v378 |= (v493 & 0x7F) << v376;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v376 += 7;
          v12 = v377++ >= 9;
          if (v12)
          {
            v382 = 0;
            goto LABEL_820;
          }
        }

        if ([a2 hasError])
        {
          v382 = 0;
        }

        else
        {
          v382 = v378;
        }

LABEL_820:
        [a1 setCountNgramPrefixMatchInTextContent:v382];
        continue;
      case 0x29u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v493 & 0x7F) << v171;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v12 = v172++ >= 9;
          if (v12)
          {
            v177 = 0;
            goto LABEL_712;
          }
        }

        if ([a2 hasError])
        {
          v177 = 0;
        }

        else
        {
          v177 = v173;
        }

LABEL_712:
        [a1 setCountUnigramMatchInRecipients:v177];
        continue;
      case 0x2Au:
        v268 = 0;
        v269 = 0;
        v270 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v271 = [a2 position] + 1;
          if (v271 >= [a2 position] && (v272 = objc_msgSend(a2, "position") + 1, v272 <= objc_msgSend(a2, "length")))
          {
            v273 = [a2 data];
            [v273 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v270 |= (v493 & 0x7F) << v268;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v268 += 7;
          v12 = v269++ >= 9;
          if (v12)
          {
            v274 = 0;
            goto LABEL_764;
          }
        }

        if ([a2 hasError])
        {
          v274 = 0;
        }

        else
        {
          v274 = v270;
        }

LABEL_764:
        [a1 setCountBigramMatchInRecipients:v274];
        continue;
      case 0x2Bu:
        v397 = 0;
        v398 = 0;
        v399 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v400 = [a2 position] + 1;
          if (v400 >= [a2 position] && (v401 = objc_msgSend(a2, "position") + 1, v401 <= objc_msgSend(a2, "length")))
          {
            v402 = [a2 data];
            [v402 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v399 |= (v493 & 0x7F) << v397;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v397 += 7;
          v12 = v398++ >= 9;
          if (v12)
          {
            v403 = 0;
            goto LABEL_832;
          }
        }

        if ([a2 hasError])
        {
          v403 = 0;
        }

        else
        {
          v403 = v399;
        }

LABEL_832:
        [a1 setCountNgramMatchInRecipients:v403];
        continue;
      case 0x2Cu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v493 & 0x7F) << v28;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_634;
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

LABEL_634:
        [a1 setCountUnigramPrefixMatchInRecipients:v34];
        continue;
      case 0x2Du:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v493 & 0x7F) << v119;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v125 = 0;
            goto LABEL_686;
          }
        }

        if ([a2 hasError])
        {
          v125 = 0;
        }

        else
        {
          v125 = v121;
        }

LABEL_686:
        [a1 setCountBigramPrefixMatchInRecipients:v125];
        continue;
      case 0x2Eu:
        v362 = 0;
        v363 = 0;
        v364 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v365 = [a2 position] + 1;
          if (v365 >= [a2 position] && (v366 = objc_msgSend(a2, "position") + 1, v366 <= objc_msgSend(a2, "length")))
          {
            v367 = [a2 data];
            [v367 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v364 |= (v493 & 0x7F) << v362;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v362 += 7;
          v12 = v363++ >= 9;
          if (v12)
          {
            v368 = 0;
            goto LABEL_812;
          }
        }

        if ([a2 hasError])
        {
          v368 = 0;
        }

        else
        {
          v368 = v364;
        }

LABEL_812:
        [a1 setCountNgramPrefixMatchInRecipients:v368];
        continue;
      case 0x2Fu:
        v467 = 0;
        v468 = 0;
        v469 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v470 = [a2 position] + 1;
          if (v470 >= [a2 position] && (v471 = objc_msgSend(a2, "position") + 1, v471 <= objc_msgSend(a2, "length")))
          {
            v472 = [a2 data];
            [v472 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v469 |= (v493 & 0x7F) << v467;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v467 += 7;
          v12 = v468++ >= 9;
          if (v12)
          {
            v473 = 0;
            goto LABEL_872;
          }
        }

        if ([a2 hasError])
        {
          v473 = 0;
        }

        else
        {
          v473 = v469;
        }

LABEL_872:
        [a1 setCountUnigramMatchInRecipientEmailAddresses:v473];
        continue;
      case 0x30u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v493 & 0x7F) << v56;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_650;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_650:
        [a1 setCountBigramMatchInRecipientEmailAddresses:v62];
        continue;
      case 0x31u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v493 & 0x7F) << v136;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v142 = 0;
            goto LABEL_694;
          }
        }

        if ([a2 hasError])
        {
          v142 = 0;
        }

        else
        {
          v142 = v138;
        }

LABEL_694:
        [a1 setCountNgramMatchInRecipientEmailAddresses:v142];
        continue;
      case 0x32u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v493 & 0x7F) << v157;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v163 = 0;
            goto LABEL_704;
          }
        }

        if ([a2 hasError])
        {
          v163 = 0;
        }

        else
        {
          v163 = v159;
        }

LABEL_704:
        [a1 setCountUnigramPrefixMatchInRecipientEmailAddresses:v163];
        continue;
      case 0x33u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v493 & 0x7F) << v21;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_630;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_630:
        [a1 setCountBigramPrefixMatchInRecipientEmailAddresses:v27];
        continue;
      case 0x34u:
        v474 = 0;
        v475 = 0;
        v476 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v477 = [a2 position] + 1;
          if (v477 >= [a2 position] && (v478 = objc_msgSend(a2, "position") + 1, v478 <= objc_msgSend(a2, "length")))
          {
            v479 = [a2 data];
            [v479 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v476 |= (v493 & 0x7F) << v474;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v474 += 7;
          v12 = v475++ >= 9;
          if (v12)
          {
            v480 = 0;
            goto LABEL_876;
          }
        }

        if ([a2 hasError])
        {
          v480 = 0;
        }

        else
        {
          v480 = v476;
        }

LABEL_876:
        [a1 setCountNgramPrefixMatchInRecipientEmailAddresses:v480];
        continue;
      case 0x35u:
        v460 = 0;
        v461 = 0;
        v462 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v463 = [a2 position] + 1;
          if (v463 >= [a2 position] && (v464 = objc_msgSend(a2, "position") + 1, v464 <= objc_msgSend(a2, "length")))
          {
            v465 = [a2 data];
            [v465 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v462 |= (v493 & 0x7F) << v460;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v460 += 7;
          v12 = v461++ >= 9;
          if (v12)
          {
            v466 = 0;
            goto LABEL_868;
          }
        }

        if ([a2 hasError])
        {
          v466 = 0;
        }

        else
        {
          v466 = v462;
        }

LABEL_868:
        [a1 setCountUnigramMatchInEmailAddresses:v466];
        continue;
      case 0x36u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v493 & 0x7F) << v49;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_646;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_646:
        [a1 setCountBigramMatchInEmailAddresses:v55];
        continue;
      case 0x37u:
        v446 = 0;
        v447 = 0;
        v448 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v449 = [a2 position] + 1;
          if (v449 >= [a2 position] && (v450 = objc_msgSend(a2, "position") + 1, v450 <= objc_msgSend(a2, "length")))
          {
            v451 = [a2 data];
            [v451 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v448 |= (v493 & 0x7F) << v446;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v446 += 7;
          v12 = v447++ >= 9;
          if (v12)
          {
            v452 = 0;
            goto LABEL_860;
          }
        }

        if ([a2 hasError])
        {
          v452 = 0;
        }

        else
        {
          v452 = v448;
        }

LABEL_860:
        [a1 setCountNgramMatchInEmailAddresses:v452];
        continue;
      case 0x38u:
        v453 = 0;
        v454 = 0;
        v455 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v456 = [a2 position] + 1;
          if (v456 >= [a2 position] && (v457 = objc_msgSend(a2, "position") + 1, v457 <= objc_msgSend(a2, "length")))
          {
            v458 = [a2 data];
            [v458 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v455 |= (v493 & 0x7F) << v453;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v453 += 7;
          v12 = v454++ >= 9;
          if (v12)
          {
            v459 = 0;
            goto LABEL_864;
          }
        }

        if ([a2 hasError])
        {
          v459 = 0;
        }

        else
        {
          v459 = v455;
        }

LABEL_864:
        [a1 setCountUnigramPrefixMatchInEmailAddresses:v459];
        continue;
      case 0x39u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v493 & 0x7F) << v63;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_654;
          }
        }

        if ([a2 hasError])
        {
          v69 = 0;
        }

        else
        {
          v69 = v65;
        }

LABEL_654:
        [a1 setCountBigramPrefixMatchInEmailAddresses:v69];
        continue;
      case 0x3Au:
        v390 = 0;
        v391 = 0;
        v392 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v393 = [a2 position] + 1;
          if (v393 >= [a2 position] && (v394 = objc_msgSend(a2, "position") + 1, v394 <= objc_msgSend(a2, "length")))
          {
            v395 = [a2 data];
            [v395 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v392 |= (v493 & 0x7F) << v390;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v390 += 7;
          v12 = v391++ >= 9;
          if (v12)
          {
            v396 = 0;
            goto LABEL_828;
          }
        }

        if ([a2 hasError])
        {
          v396 = 0;
        }

        else
        {
          v396 = v392;
        }

LABEL_828:
        [a1 setCountNgramPrefixMatchInEmailAddresses:v396];
        continue;
      case 0x3Bu:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v493 & 0x7F) << v143;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            v149 = 0;
            goto LABEL_698;
          }
        }

        if ([a2 hasError])
        {
          v149 = 0;
        }

        else
        {
          v149 = v145;
        }

LABEL_698:
        [a1 setCountUnigramMatchInAttachmentTypes:v149];
        continue;
      case 0x3Cu:
        v404 = 0;
        v405 = 0;
        v406 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v407 = [a2 position] + 1;
          if (v407 >= [a2 position] && (v408 = objc_msgSend(a2, "position") + 1, v408 <= objc_msgSend(a2, "length")))
          {
            v409 = [a2 data];
            [v409 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v406 |= (v493 & 0x7F) << v404;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v404 += 7;
          v12 = v405++ >= 9;
          if (v12)
          {
            v410 = 0;
            goto LABEL_836;
          }
        }

        if ([a2 hasError])
        {
          v410 = 0;
        }

        else
        {
          v410 = v406;
        }

LABEL_836:
        [a1 setCountBigramMatchInAttachmentTypes:v410];
        continue;
      case 0x3Du:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v493 & 0x7F) << v178;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v12 = v179++ >= 9;
          if (v12)
          {
            v184 = 0;
            goto LABEL_716;
          }
        }

        if ([a2 hasError])
        {
          v184 = 0;
        }

        else
        {
          v184 = v180;
        }

LABEL_716:
        [a1 setCountNgramMatchInAttachmentTypes:v184];
        continue;
      case 0x3Eu:
        v282 = 0;
        v283 = 0;
        v284 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v285 = [a2 position] + 1;
          if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 1, v286 <= objc_msgSend(a2, "length")))
          {
            v287 = [a2 data];
            [v287 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v284 |= (v493 & 0x7F) << v282;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v282 += 7;
          v12 = v283++ >= 9;
          if (v12)
          {
            v288 = 0;
            goto LABEL_772;
          }
        }

        if ([a2 hasError])
        {
          v288 = 0;
        }

        else
        {
          v288 = v284;
        }

LABEL_772:
        [a1 setCountUnigramPrefixMatchInAttachmentTypes:v288];
        continue;
      case 0x3Fu:
        v303 = 0;
        v304 = 0;
        v305 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v306 = [a2 position] + 1;
          if (v306 >= [a2 position] && (v307 = objc_msgSend(a2, "position") + 1, v307 <= objc_msgSend(a2, "length")))
          {
            v308 = [a2 data];
            [v308 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v305 |= (v493 & 0x7F) << v303;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v303 += 7;
          v12 = v304++ >= 9;
          if (v12)
          {
            v309 = 0;
            goto LABEL_784;
          }
        }

        if ([a2 hasError])
        {
          v309 = 0;
        }

        else
        {
          v309 = v305;
        }

LABEL_784:
        [a1 setCountBigramPrefixMatchInAttachmentTypes:v309];
        continue;
      case 0x40u:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v229 = [a2 position] + 1;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
          {
            v231 = [a2 data];
            [v231 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v228 |= (v493 & 0x7F) << v226;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v12 = v227++ >= 9;
          if (v12)
          {
            v232 = 0;
            goto LABEL_738;
          }
        }

        if ([a2 hasError])
        {
          v232 = 0;
        }

        else
        {
          v232 = v228;
        }

LABEL_738:
        [a1 setCountNgramPrefixMatchInAttachmentTypes:v232];
        continue;
      case 0x41u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v493 & 0x7F) << v185;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v12 = v186++ >= 9;
          if (v12)
          {
            v191 = 0;
            goto LABEL_720;
          }
        }

        if ([a2 hasError])
        {
          v191 = 0;
        }

        else
        {
          v191 = v187;
        }

LABEL_720:
        [a1 setCountUnigramMatchInAttachmentNames:v191];
        continue;
      case 0x42u:
        v296 = 0;
        v297 = 0;
        v298 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v299 = [a2 position] + 1;
          if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 1, v300 <= objc_msgSend(a2, "length")))
          {
            v301 = [a2 data];
            [v301 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v298 |= (v493 & 0x7F) << v296;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v296 += 7;
          v12 = v297++ >= 9;
          if (v12)
          {
            v302 = 0;
            goto LABEL_780;
          }
        }

        if ([a2 hasError])
        {
          v302 = 0;
        }

        else
        {
          v302 = v298;
        }

LABEL_780:
        [a1 setCountBigramMatchInAttachmentNames:v302];
        continue;
      case 0x43u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v493 & 0x7F) << v35;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_638;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_638:
        [a1 setCountNgramMatchInAttachmentNames:v41];
        continue;
      case 0x44u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v493 & 0x7F) << v112;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_682;
          }
        }

        if ([a2 hasError])
        {
          v118 = 0;
        }

        else
        {
          v118 = v114;
        }

LABEL_682:
        [a1 setCountUnigramPrefixMatchInAttachmentNames:v118];
        continue;
      case 0x45u:
        v481 = 0;
        v482 = 0;
        v483 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v484 = [a2 position] + 1;
          if (v484 >= [a2 position] && (v485 = objc_msgSend(a2, "position") + 1, v485 <= objc_msgSend(a2, "length")))
          {
            v486 = [a2 data];
            [v486 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v483 |= (v493 & 0x7F) << v481;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v481 += 7;
          v12 = v482++ >= 9;
          if (v12)
          {
            v487 = 0;
            goto LABEL_880;
          }
        }

        if ([a2 hasError])
        {
          v487 = 0;
        }

        else
        {
          v487 = v483;
        }

LABEL_880:
        [a1 setCountBigramPrefixMatchInAttachmentNames:v487];
        continue;
      case 0x46u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
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
      LOBYTE(v493) = 0;
      v87 = [a2 position] + 1;
      if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
      {
        v89 = [a2 data];
        [v89 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v86 |= (v493 & 0x7F) << v84;
      if ((v493 & 0x80) == 0)
      {
        break;
      }

      v84 += 7;
      v12 = v85++ >= 9;
      if (v12)
      {
        v90 = 0;
        goto LABEL_666;
      }
    }

    if ([a2 hasError])
    {
      v90 = 0;
    }

    else
    {
      v90 = v86;
    }

LABEL_666:
    [a1 setCountNgramPrefixMatchInAttachmentNames:v90];
LABEL_889:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPMailResultDetailsForFeedbackReadFrom(void *a1, void *a2)
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
      v35 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v35 & 0x7F) << v6;
      if ((v35 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      while (1)
      {
        v37 = 0;
        v28 = [a2 position] + 1;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v27 |= (v37 & 0x7F) << v25;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v12 = v26++ >= 9;
        if (v12)
        {
          v31 = 0;
          goto LABEL_47;
        }
      }

      if ([a2 hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v27;
      }

LABEL_47:
      [a1 setDataSources:v31];
    }

    else if (v14 == 2)
    {
      v34 = 0;
      v22 = [a2 position] + 4;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v34 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v24) = v34;
      [a1 setSuggestionScore:v24];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v36 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v36 & 0x7F) << v15;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_51;
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

LABEL_51:
      [a1 setSkgMegadomeSpotlightIndexEntries:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSafariAttributesReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setHideReason:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPPhotosAggregatedInfoReadFrom(void *a1, void *a2)
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
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v40 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v40 & 0x7F) << v29;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_57:
      [a1 setTotalNumberOfAssets:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v39 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v39 & 0x7F) << v22;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_53:
      [a1 setTotalNumberOfEmbeddingMatchedAssets:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v38 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38 & 0x7F) << v15;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_61;
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

LABEL_61:
      [a1 setTotalNumberOfMetadataMatchedAssets:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v34) & 0x7F) << v5;
        if ((LOBYTE(v34) & 0x80) == 0)
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
        switch(v13)
        {
          case 1:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (LOBYTE(v34) & 0x7F) << v15;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_61;
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

LABEL_61:
            [a1 setNull_value:v21];
            goto LABEL_66;
          case 2:
            v34 = 0.0;
            v29 = [a2 position] + 8;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setNumber_value:v34];
            goto LABEL_66;
          case 3:
            v14 = PBReaderReadString();
            [a1 setString_value:v14];
LABEL_54:

            goto LABEL_66;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_CPListValue);
          v34 = 0.0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !_CPListValueReadFrom(v14, a2))
          {
LABEL_69:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setList_value:v14];
          goto LABEL_54;
        }

        if (v13 == 7)
        {
          v14 = PBReaderReadData();
          [a1 setBytes_value:v14];
          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v34) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (LOBYTE(v34) & 0x7F) << v22;
            if ((LOBYTE(v34) & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_63;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_63:
          [a1 setBool_value:v28];
          goto LABEL_66;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_CPStruct);
          v34 = 0.0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !_CPStructReadFrom(v14, a2))
          {
            goto LABEL_69;
          }

          PBReaderRecallMark();
          [a1 setStruct_value:v14];
          goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPListValueReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_CPValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_CPValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValues:v13];
        }
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

uint64_t _CPRangeReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v31 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v31 & 0x7F) << v21;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_47;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_47:
      [a1 setLocation:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 setLength:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSearchSuggestionForFeedbackReadFrom(void *a1, void *a2)
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
      v28 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v28 & 0x7F) << v6;
      if ((v28 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 3)
    {
      switch(v14)
      {
        case 1:
          v22 = PBReaderReadString();
          [a1 setIdentifier:v22];
          goto LABEL_46;
        case 2:
          v22 = PBReaderReadString();
          [a1 setSuggestion:v22];
          goto LABEL_46;
        case 3:
          v22 = PBReaderReadString();
          [a1 setQuery:v22];
LABEL_46:

          continue;
      }
    }

    else if (v14 > 5)
    {
      if (v14 == 6)
      {
        v22 = PBReaderReadString();
        [a1 setFbr:v22];
        goto LABEL_46;
      }

      if (v14 == 7)
      {
        v22 = PBReaderReadString();
        [a1 setTopicIdentifier:v22];
        goto LABEL_46;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v27 = 0.0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setScore:v27];
        continue;
      }

      if (v14 == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v29 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v29 & 0x7F) << v15;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_51;
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

LABEL_51:
        [a1 setType:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPResultSectionForFeedbackReadFrom(void *a1, void *a2)
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
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v41) & 0x7F) << v5;
        if ((LOBYTE(v41) & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 > 3)
        {
          if (v13 == 4)
          {
            v41 = 0.0;
            v29 = [a2 position] + 8;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setRankingScore:v41];
            goto LABEL_70;
          }

          if (v13 == 5)
          {
            v21 = PBReaderReadData();
            [a1 setFallbackResultSection:v21];
            goto LABEL_69;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v21 = objc_alloc_init(_CPSearchResultForFeedback);
            v41 = 0.0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v21, a2))
            {
LABEL_88:

              return 0;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addResults:v21];
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadString();
            [a1 setIdentifier:v21];
LABEL_69:

            goto LABEL_70;
          }
        }
      }

      else if (v13 <= 7)
      {
        if (v13 == 6)
        {
          v21 = PBReaderReadString();
          [a1 setBundleIdentifier:v21];
          goto LABEL_69;
        }

        if (v13 == 7)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v41) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (LOBYTE(v41) & 0x7F) << v22;
            if ((LOBYTE(v41) & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_77:
          [a1 setKnownBundleIdentifier:v28];
          goto LABEL_70;
        }
      }

      else
      {
        switch(v13)
        {
          case 8:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              LOBYTE(v41) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (LOBYTE(v41) & 0x7F) << v31;
              if ((LOBYTE(v41) & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_79;
              }
            }

            v37 = (v33 != 0) & ~[a2 hasError];
LABEL_79:
            [a1 setIsInitiallyHidden:v37];
            goto LABEL_70;
          case 0xA:
            v21 = objc_alloc_init(_CPButtonForFeedback);
            v41 = 0.0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !_CPButtonForFeedbackReadFrom(v21, a2))
            {
              goto LABEL_88;
            }

            PBReaderRecallMark();
            [a1 setTitleButtonItem:v21];
            goto LABEL_69;
          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v41) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (LOBYTE(v41) & 0x7F) << v14;
              if ((LOBYTE(v41) & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_83;
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

LABEL_83:
            [a1 setTotalAvailableResults:v20];
            goto LABEL_70;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_70:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPErrorReadFrom(void *a1, void *a2)
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
      v28 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v28 & 0x7F) << v6;
      if ((v28 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v27 = 0.0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setCode:v27];
        continue;
      }

      if (v14 == 4)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v29 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v29 & 0x7F) << v16;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_43;
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

LABEL_43:
        [a1 setErrorCode:v22];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setDomain:v15];
        goto LABEL_36;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setReason:v15];
LABEL_36:

        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPQueryUnderstandingParseReadFrom(void *a1, void *a2)
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
      v148 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v148 & 0x7F) << v6;
      if ((v148 & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v148 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v148 & 0x7F) << v14;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_217:
            [a1 setQueryIntentType:v20];
            goto LABEL_234;
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

        goto LABEL_217;
      case 2u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          v148 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v148 & 0x7F) << v91;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_219;
          }
        }

        v97 = (v93 != 0) & ~[a2 hasError];
LABEL_219:
        [a1 setHasUnspecifiedTokens:v97];
        continue;
      case 3u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v148 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v148 & 0x7F) << v63;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_207;
          }
        }

        v69 = (v65 != 0) & ~[a2 hasError];
LABEL_207:
        [a1 setHasSortCriteriaTokens:v69];
        continue;
      case 4u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v148 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v148 & 0x7F) << v77;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_211;
          }
        }

        v83 = (v79 != 0) & ~[a2 hasError];
LABEL_211:
        [a1 setHasLocationTokens:v83];
        continue;
      case 5u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v148 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v148 & 0x7F) << v42;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_201;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_201:
        [a1 setHasActionTokens:v48];
        continue;
      case 6u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          v148 = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v148 & 0x7F) << v105;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_223;
          }
        }

        v111 = (v107 != 0) & ~[a2 hasError];
LABEL_223:
        [a1 setHasMediaTypeTokens:v111];
        continue;
      case 7u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          v148 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v148 & 0x7F) << v119;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v125 = 0;
            goto LABEL_227;
          }
        }

        v125 = (v121 != 0) & ~[a2 hasError];
LABEL_227:
        [a1 setHasVisualQualityTokens:v125];
        continue;
      case 8u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          v148 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v148 & 0x7F) << v84;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_213;
          }
        }

        v90 = (v86 != 0) & ~[a2 hasError];
LABEL_213:
        [a1 setHasNounTokens:v90];
        continue;
      case 9u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        while (1)
        {
          v148 = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v148 & 0x7F) << v140;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            v146 = 0;
            goto LABEL_233;
          }
        }

        v146 = (v142 != 0) & ~[a2 hasError];
LABEL_233:
        [a1 setHasTimeTokens:v146];
        continue;
      case 0xAu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v148 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v148 & 0x7F) << v56;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_205;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_205:
        [a1 setHasEventTokens:v62];
        continue;
      case 0xBu:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        while (1)
        {
          v148 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v148 & 0x7F) << v133;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v139 = 0;
            goto LABEL_231;
          }
        }

        v139 = (v135 != 0) & ~[a2 hasError];
LABEL_231:
        [a1 setHasGenericLocationTokens:v139];
        continue;
      case 0xCu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v148 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v148 & 0x7F) << v35;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_199;
          }
        }

        v41 = (v37 != 0) & ~[a2 hasError];
LABEL_199:
        [a1 setHasCaptureDeviceTokens:v41];
        continue;
      case 0xDu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v148 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v148 & 0x7F) << v49;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_203;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_203:
        [a1 setHasFavoritedTokens:v55];
        continue;
      case 0xEu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          v148 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v148 & 0x7F) << v112;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_225;
          }
        }

        v118 = (v114 != 0) & ~[a2 hasError];
LABEL_225:
        [a1 setHasSourceAppTokens:v118];
        continue;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v148 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v148 & 0x7F) << v28;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_197;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_197:
        [a1 setHasPersonTokens:v34];
        continue;
      case 0x10u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v148 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v148 & 0x7F) << v70;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_209;
          }
        }

        v76 = (v72 != 0) & ~[a2 hasError];
LABEL_209:
        [a1 setHasPersonSenderTokens:v76];
        continue;
      case 0x11u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v148 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v148 & 0x7F) << v21;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_195;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_195:
        [a1 setSpotlightQueryIntent:v27];
        continue;
      case 0x12u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          v148 = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v148 & 0x7F) << v98;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_221;
          }
        }

        v104 = (v100 != 0) & ~[a2 hasError];
LABEL_221:
        [a1 setIsUnsafeQuery:v104];
        continue;
      case 0x13u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
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
      v148 = 0;
      v129 = [a2 position] + 1;
      if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
      {
        v131 = [a2 data];
        [v131 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v128 |= (v148 & 0x7F) << v126;
      if ((v148 & 0x80) == 0)
      {
        break;
      }

      v126 += 7;
      v12 = v127++ >= 9;
      if (v12)
      {
        v132 = 0;
        goto LABEL_229;
      }
    }

    v132 = (v128 != 0) & ~[a2 hasError];
LABEL_229:
    [a1 setIsBlocklistedQuery:v132];
LABEL_234:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPPhotosRankingInfoReadFrom(void *a1, void *a2)
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
      v93 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v93 & 0x7F) << v6;
      if ((v93 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 5)
    {
      if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            v104 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v104 & 0x7F) << v43;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v12 = v44++ >= 9;
            if (v12)
            {
              v49 = 0;
              goto LABEL_136;
            }
          }

          if ([a2 hasError])
          {
            v49 = 0;
          }

          else
          {
            v49 = v45;
          }

LABEL_136:
          [a1 setTotalNumberOfAssetsIndexed:v49];
          continue;
        }

        if (v14 == 2)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v103 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v103 & 0x7F) << v36;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_140;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_140:
          [a1 setTotalNumberOfAssetsInLibrary:v42];
          continue;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v71 = 0;
            v72 = 0;
            v73 = 0;
            while (1)
            {
              v102 = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v102 & 0x7F) << v71;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v12 = v72++ >= 9;
              if (v12)
              {
                v77 = 0;
                goto LABEL_160;
              }
            }

            if ([a2 hasError])
            {
              v77 = 0;
            }

            else
            {
              v77 = v73;
            }

LABEL_160:
            [a1 setTotalNumberOfEmbeddingMatchedAssets:v77];
            continue;
          case 4:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              v101 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v101 & 0x7F) << v50;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v12 = v51++ >= 9;
              if (v12)
              {
                v56 = 0;
                goto LABEL_144;
              }
            }

            if ([a2 hasError])
            {
              v56 = 0;
            }

            else
            {
              v56 = v52;
            }

LABEL_144:
            [a1 setTotalNumberOfMetadataMatchedAssets:v56];
            continue;
          case 5:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v100 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v100 & 0x7F) << v22;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v12 = v23++ >= 9;
              if (v12)
              {
                v28 = 0;
                goto LABEL_156;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_156:
            [a1 setAssetEstimationOffAmount:v28];
            continue;
        }
      }
    }

    else if (v14 > 8)
    {
      switch(v14)
      {
        case 9:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          while (1)
          {
            v96 = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              v90 = [a2 data];
              [v90 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v96 & 0x7F) << v85;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v12 = v86++ >= 9;
            if (v12)
            {
              v91 = 0;
              goto LABEL_176;
            }
          }

          if ([a2 hasError])
          {
            v91 = 0;
          }

          else
          {
            v91 = v87;
          }

LABEL_176:
          [a1 setEmbeddedAssetsPercentage:v91];
          continue;
        case 0xA:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          while (1)
          {
            v95 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v95 & 0x7F) << v64;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v12 = v65++ >= 9;
            if (v12)
            {
              v70 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v70 = 0;
          }

          else
          {
            v70 = v66;
          }

LABEL_152:
          [a1 setAssetsRetrieved:v70];
          continue;
        case 0xB:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v94 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v94 & 0x7F) << v29;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_168:
          [a1 setCollectionsRetrieved:v35];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 6:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          while (1)
          {
            v99 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v99 & 0x7F) << v78;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v12 = v79++ >= 9;
            if (v12)
            {
              v84 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v84 = 0;
          }

          else
          {
            v84 = v80;
          }

LABEL_172:
          [a1 setIndexedAssetsPercentage:v84];
          continue;
        case 7:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v98 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v98 & 0x7F) << v57;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              v63 = 0;
              goto LABEL_148;
            }
          }

          if ([a2 hasError])
          {
            v63 = 0;
          }

          else
          {
            v63 = v59;
          }

LABEL_148:
          [a1 setAnalyzedAssetsPercentage:v63];
          continue;
        case 8:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v97 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v97 & 0x7F) << v15;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_164;
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

LABEL_164:
          [a1 setAnalyzedAndIndexedAssetsPercentage:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPEmbeddingStateReadFrom(void *a1, void *a2)
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
        LOBYTE(v73[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73[0] & 0x7F) << v5;
        if ((v73[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 6)
      {
        switch(v13)
        {
          case 7:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v73[0] & 0x7F) << v56;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v62 = 0;
                goto LABEL_119;
              }
            }

            v62 = (v58 != 0) & ~[a2 hasError];
LABEL_119:
            [a1 setHasKeywordResults:v62];
            goto LABEL_124;
          case 8:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v73[0] & 0x7F) << v64;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v70 = 0;
                goto LABEL_123;
              }
            }

            v70 = (v66 != 0) & ~[a2 hasError];
LABEL_123:
            [a1 setHasHybridResults:v70];
            goto LABEL_124;
          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v73[0] & 0x7F) << v14;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_121;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_121:
            [a1 setHasMetadataResults:v20];
            goto LABEL_124;
        }

        goto LABEL_104;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v73[0] & 0x7F) << v35;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_111;
            }
          }

          v41 = (v37 != 0) & ~[a2 hasError];
LABEL_111:
          [a1 setHasSuppressedResults:v41];
          goto LABEL_124;
        }

        goto LABEL_104;
      }

      v63 = objc_alloc_init(_CPSpotlightEmbeddingState);
      v73[0] = 0;
      v73[1] = 0;
      if (!PBReaderPlaceMark() || !_CPSpotlightEmbeddingStateReadFrom(v63, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setSpotlightEmbeddingState:v63];

LABEL_124:
      v71 = [a2 position];
      if (v71 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v73[0] & 0x7F) << v49;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_117;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_117:
        [a1 setHasEmbeddingResults:v55];
        goto LABEL_124;
      }

      if (v13 == 4)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v73[0] & 0x7F) << v28;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_109;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_109:
        [a1 setHasResults:v34];
        goto LABEL_124;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v73[0] & 0x7F) << v42;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_115:
        [a1 setQueryStatus:v48];
        goto LABEL_124;
      }

      if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v73[0] & 0x7F) << v21;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_107;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_107:
        [a1 setHasQueryEmbedding:v27];
        goto LABEL_124;
      }
    }

LABEL_104:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_124;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPSpotlightEmbeddingStateReadFrom(void *a1, void *a2)
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
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v40 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v40 & 0x7F) << v29;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_57:
      [a1 setEmbeddedPhotosAssetsCount:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v39 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v39 & 0x7F) << v22;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_53:
      [a1 setTotalPhotosAssetsCount:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v38 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38 & 0x7F) << v15;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_61;
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

LABEL_61:
      [a1 setEmbeddedPhotosAssetsPercentage:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPPerformEntityQueryCommandForFeedbackReadFrom(void *a1, void *a2)
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
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setTokenString:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
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

LABEL_35:
      [a1 setEntityType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPIndexStateForFeedbackReadFrom(void *a1, void *a2)
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
      v65 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v65 & 0x7F) << v6;
      if ((v65 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 3)
    {
      switch(v14)
      {
        case 1:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v72 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v72 & 0x7F) << v36;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_95;
            }
          }

          if ([a2 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_95:
          [a1 setPercentMessagesIndexed:v42];
          continue;
        case 2:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          while (1)
          {
            v71 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v71 & 0x7F) << v58;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v12 = v59++ >= 9;
            if (v12)
            {
              v64 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v64 = 0;
          }

          else
          {
            v64 = v60;
          }

LABEL_119:
          [a1 setPercentAttachmentsIndexed:v64];
          continue;
        case 3:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v70 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v70 & 0x7F) << v22;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_115;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_115:
          [a1 setSearchIndex:v28];
          continue;
      }
    }

    else if (v14 > 5)
    {
      if (v14 == 6)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          v67 = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v67 & 0x7F) << v51;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v57 = 0;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_103:
        [a1 setEmbeddedMessageCount:v57];
        continue;
      }

      if (v14 == 7)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v66 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v66 & 0x7F) << v29;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_111;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_111:
        [a1 setEmbeddedMessagePercentage:v35];
        continue;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v69 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v69 & 0x7F) << v44;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_99;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v46;
        }

LABEL_99:
        [a1 setTotalMessageCount:v50];
        continue;
      }

      if (v14 == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v68 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v68 & 0x7F) << v15;
          if ((v68 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_107;
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

LABEL_107:
        [a1 setIndexedMessageCount:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPNetworkTimingDataReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v173) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v173) & 0x7F) << v6;
      if ((LOBYTE(v173) & 0x80) == 0)
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
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 3u:
        v14 = PBReaderReadString();
        [a1 setInterfaceIdentifier:v14];
        goto LABEL_173;
      case 4u:
        v14 = PBReaderReadData();
        [a1 setPeerAddress:v14];
        goto LABEL_173;
      case 5u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (LOBYTE(v173) & 0x7F) << v85;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            v91 = 0;
            goto LABEL_275;
          }
        }

        v91 = (v87 != 0) & ~[a2 hasError];
LABEL_275:
        [a1 setConnectionRace:v91];
        goto LABEL_174;
      case 6u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (LOBYTE(v173) & 0x7F) << v120;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v126 = 0;
            goto LABEL_291;
          }
        }

        v126 = (v122 != 0) & ~[a2 hasError];
LABEL_291:
        [a1 setConnectionReused:v126];
        goto LABEL_174;
      case 7u:
        v14 = objc_alloc_init(_CPTCPInfo);
        v173 = 0.0;
        v174 = 0;
        if (!PBReaderPlaceMark() || !_CPTCPInfoReadFrom(v14, a2))
        {
          goto LABEL_318;
        }

        PBReaderRecallMark();
        [a1 setStartTimeCounts:v14];
        goto LABEL_173;
      case 8u:
        v14 = objc_alloc_init(_CPTCPInfo);
        v173 = 0.0;
        v174 = 0;
        if (PBReaderPlaceMark() && _CPTCPInfoReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setStopTimeCounts:v14];
LABEL_173:

LABEL_174:
          v4 = a2;
          continue;
        }

LABEL_318:

        return 0;
      case 9u:
        v14 = PBReaderReadString();
        [a1 setConnectionUUID:v14];
        goto LABEL_173;
      case 0xDu:
        v14 = PBReaderReadString();
        [a1 setNetworkProtocolName:v14];
        goto LABEL_173;
      case 0xEu:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (LOBYTE(v173) & 0x7F) << v134;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v140 = 0;
            goto LABEL_297;
          }
        }

        v140 = (v136 != 0) & ~[a2 hasError];
LABEL_297:
        [a1 setQUICWhitelistedDomain:v140];
        goto LABEL_174;
      case 0xFu:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (LOBYTE(v173) & 0x7F) << v127;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v133 = 0;
            goto LABEL_295;
          }
        }

        if ([a2 hasError])
        {
          v133 = 0;
        }

        else
        {
          v133 = v129;
        }

LABEL_295:
        [a1 setRedirectCount:v133];
        goto LABEL_174;
      case 0x10u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (LOBYTE(v173) & 0x7F) << v50;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_257;
          }
        }

        if ([a2 hasError])
        {
          v56 = 0;
        }

        else
        {
          v56 = v52;
        }

LABEL_257:
        [a1 setRedirectCountW3C:v56];
        goto LABEL_174;
      case 0x15u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (LOBYTE(v173) & 0x7F) << v92;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v98 = 0;
            goto LABEL_279;
          }
        }

        if ([a2 hasError])
        {
          v98 = 0;
        }

        else
        {
          v98 = v94;
        }

LABEL_279:
        [a1 setRequestHeaderSize:v98];
        goto LABEL_174;
      case 0x16u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (LOBYTE(v173) & 0x7F) << v71;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v77 = 0;
            goto LABEL_269;
          }
        }

        if ([a2 hasError])
        {
          v77 = 0;
        }

        else
        {
          v77 = v73;
        }

LABEL_269:
        [a1 setResponseBodyBytesDecoded:v77];
        goto LABEL_174;
      case 0x17u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (LOBYTE(v173) & 0x7F) << v29;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_245;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_245:
        [a1 setResponseBodyBytesReceived:v35];
        goto LABEL_174;
      case 0x1Au:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (LOBYTE(v173) & 0x7F) << v106;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v112 = 0;
            goto LABEL_287;
          }
        }

        if ([a2 hasError])
        {
          v112 = 0;
        }

        else
        {
          v112 = v108;
        }

LABEL_287:
        [a1 setResponseHeaderSize:v112];
        goto LABEL_174;
      case 0x1Bu:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (LOBYTE(v173) & 0x7F) << v113;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v119 = 0;
            goto LABEL_289;
          }
        }

        v119 = (v115 != 0) & ~[a2 hasError];
LABEL_289:
        [a1 setTFOSuccess:v119];
        goto LABEL_174;
      case 0x1Cu:
        v173 = 0.0;
        v148 = [a2 position] + 8;
        if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 8, v149 <= objc_msgSend(a2, "length")))
        {
          v171 = [a2 data];
          [v171 getBytes:&v173 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setTimingDataInit:v173];
        goto LABEL_174;
      case 0x1Fu:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            v146 = [a2 data];
            [v146 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (LOBYTE(v173) & 0x7F) << v141;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v12 = v142++ >= 9;
          if (v12)
          {
            v147 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v147 = 0;
        }

        else
        {
          v147 = v143;
        }

LABEL_301:
        [a1 setConnectStart:v147];
        goto LABEL_174;
      case 0x20u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (LOBYTE(v173) & 0x7F) << v15;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_237;
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

LABEL_237:
        [a1 setConnectEnd:v21];
        goto LABEL_174;
      case 0x21u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (LOBYTE(v173) & 0x7F) << v78;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v84 = 0;
            goto LABEL_273;
          }
        }

        if ([a2 hasError])
        {
          v84 = 0;
        }

        else
        {
          v84 = v80;
        }

LABEL_273:
        [a1 setDomainLookupStart:v84];
        goto LABEL_174;
      case 0x22u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (LOBYTE(v173) & 0x7F) << v150;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v156 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v156 = 0;
        }

        else
        {
          v156 = v152;
        }

LABEL_305:
        [a1 setDomainLookupEnd:v156];
        goto LABEL_174;
      case 0x23u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (LOBYTE(v173) & 0x7F) << v22;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_241;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_241:
        [a1 setFetchStart:v28];
        goto LABEL_174;
      case 0x24u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (LOBYTE(v173) & 0x7F) << v64;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v70 = 0;
            goto LABEL_265;
          }
        }

        if ([a2 hasError])
        {
          v70 = 0;
        }

        else
        {
          v70 = v66;
        }

LABEL_265:
        [a1 setRedirectStart:v70];
        goto LABEL_174;
      case 0x25u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (LOBYTE(v173) & 0x7F) << v43;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_253;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_253:
        [a1 setRedirectEnd:v49];
        goto LABEL_174;
      case 0x26u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (LOBYTE(v173) & 0x7F) << v99;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v105 = 0;
            goto LABEL_283;
          }
        }

        if ([a2 hasError])
        {
          v105 = 0;
        }

        else
        {
          v105 = v101;
        }

LABEL_283:
        [a1 setRequestStart:v105];
        goto LABEL_174;
      case 0x27u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (LOBYTE(v173) & 0x7F) << v36;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_249;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

LABEL_249:
        [a1 setRequestEnd:v42];
        goto LABEL_174;
      case 0x28u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (LOBYTE(v173) & 0x7F) << v164;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v170 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v170 = 0;
        }

        else
        {
          v170 = v166;
        }

LABEL_313:
        [a1 setResponseStart:v170];
        goto LABEL_174;
      case 0x29u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (LOBYTE(v173) & 0x7F) << v157;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v163 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v163 = 0;
        }

        else
        {
          v163 = v159;
        }

LABEL_309:
        [a1 setResponseEnd:v163];
        goto LABEL_174;
      case 0x2Au:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v173) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v173 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (LOBYTE(v173) & 0x7F) << v57;
          if ((LOBYTE(v173) & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v63 = 0;
            goto LABEL_261;
          }
        }

        if ([a2 hasError])
        {
          v63 = 0;
        }

        else
        {
          v63 = v59;
        }

LABEL_261:
        [a1 setSecureConnectStart:v63];
        goto LABEL_174;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_174;
    }
  }
}

uint64_t _CPTCPInfoReadFrom(void *a1, void *a2)
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
      v149 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v149 & 0x7F) << v6;
      if ((v149 & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v149 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v149 & 0x7F) << v14;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_236:
            [a1 setAvgRTT:v20];
            goto LABEL_269;
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

        goto LABEL_236;
      case 2u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          v149 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v149 & 0x7F) << v91;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_240;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_240:
        [a1 setCellRXPackets:v97];
        continue;
      case 3u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v149 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v149 & 0x7F) << v63;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_220;
          }
        }

        if ([a2 hasError])
        {
          v69 = 0;
        }

        else
        {
          v69 = v65;
        }

LABEL_220:
        [a1 setCellTXPackets:v69];
        continue;
      case 4u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v149 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v149 & 0x7F) << v77;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_228;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_228:
        [a1 setConnectAttempts:v83];
        continue;
      case 5u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v149 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v149 & 0x7F) << v42;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_208;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_208:
        [a1 setConnectSuccesses:v48];
        continue;
      case 6u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        while (1)
        {
          v149 = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v149 & 0x7F) << v106;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v112 = 0;
            goto LABEL_248;
          }
        }

        if ([a2 hasError])
        {
          v112 = 0;
        }

        else
        {
          v112 = v108;
        }

LABEL_248:
        [a1 setMinRTT:v112];
        continue;
      case 7u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          v149 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v149 & 0x7F) << v120;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v126 = 0;
            goto LABEL_256;
          }
        }

        if ([a2 hasError])
        {
          v126 = 0;
        }

        else
        {
          v126 = v122;
        }

LABEL_256:
        [a1 setRxBytes:v126];
        continue;
      case 8u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          v149 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v149 & 0x7F) << v84;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_232;
          }
        }

        if ([a2 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_232:
        [a1 setRxDuplicateBytes:v90];
        continue;
      case 9u:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        while (1)
        {
          v149 = 0;
          v138 = [a2 position] + 1;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
          {
            v140 = [a2 data];
            [v140 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v137 |= (v149 & 0x7F) << v135;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v12 = v136++ >= 9;
          if (v12)
          {
            v141 = 0;
            goto LABEL_264;
          }
        }

        if ([a2 hasError])
        {
          v141 = 0;
        }

        else
        {
          v141 = v137;
        }

LABEL_264:
        [a1 setRxOutOfOrderBytes:v141];
        continue;
      case 0xAu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v149 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v149 & 0x7F) << v56;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_216;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_216:
        [a1 setRxPackets:v62];
        continue;
      case 0xBu:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        while (1)
        {
          v149 = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v149 & 0x7F) << v128;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            v134 = 0;
            goto LABEL_260;
          }
        }

        if ([a2 hasError])
        {
          v134 = 0;
        }

        else
        {
          v134 = v130;
        }

LABEL_260:
        [a1 setTxBytes:v134];
        continue;
      case 0xCu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v149 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v149 & 0x7F) << v35;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_204;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_204:
        [a1 setTxPackets:v41];
        continue;
      case 0xDu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v149 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v149 & 0x7F) << v49;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_212;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_212:
        [a1 setTxRetransmitPackets:v55];
        continue;
      case 0xEu:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        while (1)
        {
          v149 = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v149 & 0x7F) << v113;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v119 = 0;
            goto LABEL_252;
          }
        }

        if ([a2 hasError])
        {
          v119 = 0;
        }

        else
        {
          v119 = v115;
        }

LABEL_252:
        [a1 setVarRTT:v119];
        continue;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v149 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v149 & 0x7F) << v28;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_200;
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

LABEL_200:
        [a1 setWifiRXPackets:v34];
        continue;
      case 0x10u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v149 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v149 & 0x7F) << v70;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_224;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_224:
        [a1 setWifiTXPackets:v76];
        continue;
      case 0x11u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v149 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v149 & 0x7F) << v21;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_196;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_196:
        [a1 setWiredRXPackets:v27];
        continue;
      case 0x12u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          v149 = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v149 & 0x7F) << v98;
          if ((v149 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_244;
          }
        }

        if ([a2 hasError])
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

LABEL_244:
        [a1 setWiredTXPackets:v104];
        continue;
      case 0x13u:
        v127 = PBReaderReadString();
        [a1 setStatsType:v127];

        continue;
      case 0x14u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
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
      v149 = 0;
      v145 = [a2 position] + 1;
      if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
      {
        v147 = [a2 data];
        [v147 getBytes:&v149 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v144 |= (v149 & 0x7F) << v142;
      if ((v149 & 0x80) == 0)
      {
        break;
      }

      v142 += 7;
      v12 = v143++ >= 9;
      if (v12)
      {
        v148 = 0;
        goto LABEL_268;
      }
    }

    if ([a2 hasError])
    {
      v148 = 0;
    }

    else
    {
      v148 = v144;
    }

LABEL_268:
    [a1 setTxRetransmitBytes:v148];
LABEL_269:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPClientSessionReadFrom(void *a1, void *a2)
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
      LOBYTE(v80) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (LOBYTE(v80) & 0x7F) << v5;
      if ((LOBYTE(v80) & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v7 = 0;
        goto LABEL_14;
      }
    }

    if ([a2 hasError])
    {
      v7 = 0;
    }

LABEL_14:
    if (([a2 hasError] & 1) != 0 || (v7 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v12 = v7 >> 3;
    v13 = [a1 feedbacks];
    v14 = [v13 count];

    if (v14 && v12 != 200)
    {
      return 0;
    }

    switch(v12)
    {
      case 1:
        v15 = PBReaderReadString();
        [a1 setAgent:v15];
        goto LABEL_141;
      case 2:
        v15 = PBReaderReadString();
        [a1 setUserGuidString:v15];
        goto LABEL_141;
      case 3:
        v80 = 0.0;
        v81 = 0;
        PBReaderPlaceMark();
        v46 = 0;
        while (1)
        {
          v82 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v82 & 0x80000000) == 0)
          {
            break;
          }

          v50 = v46++ > 8;
          if (v50)
          {
            goto LABEL_129;
          }
        }

        [a2 hasError];
LABEL_129:
        v15 = PBReaderReadString();
        v72 = 0;
        while (1)
        {
          v82 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v82 & 0x80000000) == 0)
          {
            break;
          }

          v50 = v72++ > 8;
          if (v50)
          {
            goto LABEL_139;
          }
        }

        [a2 hasError];
LABEL_139:
        v76 = PBReaderReadString();
        PBReaderRecallMark();
        if (([a2 hasError] & 1) == 0)
        {
          [a1 setResourceVersions:v76 forKey:v15];

LABEL_141:
LABEL_142:
          v77 = [a2 position];
          if (v77 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_158:
        return 0;
      case 4:
        v80 = 0.0;
        v44 = [a2 position] + 8;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
        {
          v78 = [a2 data];
          [v78 getBytes:&v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setSessionStart:v80];
        goto LABEL_142;
      case 5:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          LOBYTE(v80) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (LOBYTE(v80) & 0x7F) << v51;
          if ((LOBYTE(v80) & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v57 = 0;
            goto LABEL_147;
          }
        }

        if ([a2 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_147:
        [a1 setPreviousSessionEndReason:v57];
        goto LABEL_142;
      case 6:
      case 7:
      case 9:
      case 10:
      case 11:
        goto LABEL_26;
      case 8:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          LOBYTE(v80) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (LOBYTE(v80) & 0x7F) << v30;
          if ((LOBYTE(v80) & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_125;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_125:
        [a1 setRemoveTimestamps:v36];
        goto LABEL_142;
      case 12:
        v15 = PBReaderReadString();
        [a1 setParsecDeveloperID:v15];
        goto LABEL_141;
      case 13:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          LOBYTE(v80) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (LOBYTE(v80) & 0x7F) << v37;
          if ((LOBYTE(v80) & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_127;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_127:
        [a1 setDuEnabled:v43];
        goto LABEL_142;
      case 14:
        v15 = PBReaderReadString();
        [a1 setCountryCode:v15];
        goto LABEL_141;
      case 15:
        v15 = PBReaderReadString();
        [a1 setLocale:v15];
        goto LABEL_141;
      case 16:
        v15 = objc_alloc_init(_CPUsageSinceLookback);
        v80 = 0.0;
        v81 = 0;
        if (!PBReaderPlaceMark() || !_CPUsageSinceLookbackReadFrom(v15, a2))
        {
          goto LABEL_158;
        }

        PBReaderRecallMark();
        [a1 setUsageSinceLookback:v15];
        goto LABEL_141;
      case 17:
        v15 = objc_alloc_init(_CPUsageEnvelope);
        v80 = 0.0;
        v81 = 0;
        if (!PBReaderPlaceMark() || !_CPUsageEnvelopeReadFrom(v15, a2))
        {
          goto LABEL_158;
        }

        PBReaderRecallMark();
        [a1 setCohortsFeedback:v15];
        goto LABEL_141;
      case 18:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v80) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (LOBYTE(v80) & 0x7F) << v23;
          if ((LOBYTE(v80) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_123;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_123:
        [a1 setDevicePersistentD20:v29];
        goto LABEL_142;
      case 19:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (1)
        {
          LOBYTE(v80) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (LOBYTE(v80) & 0x7F) << v58;
          if ((LOBYTE(v80) & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v64 = 0;
            goto LABEL_151;
          }
        }

        if ([a2 hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v60;
        }

LABEL_151:
        [a1 setPrivateRelayStatus:v64];
        goto LABEL_142;
      case 20:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        while (1)
        {
          LOBYTE(v80) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (LOBYTE(v80) & 0x7F) << v65;
          if ((LOBYTE(v80) & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v71 = 0;
            goto LABEL_153;
          }
        }

        v71 = (v67 != 0) & ~[a2 hasError];
LABEL_153:
        [a1 setIsInternalCarry:v71];
        goto LABEL_142;
      case 21:
        v15 = objc_alloc_init(_CPExperimentInfo);
        v80 = 0.0;
        v81 = 0;
        if (!PBReaderPlaceMark() || !_CPExperimentInfoReadFrom(v15, a2))
        {
          goto LABEL_158;
        }

        PBReaderRecallMark();
        if (v15)
        {
          [a1 addExperimentInfo:v15];
        }

        goto LABEL_141;
      case 22:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v80) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (LOBYTE(v80) & 0x7F) << v16;
          if ((LOBYTE(v80) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_119;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_119:
        [a1 setSearchOptOut:v22];
        goto LABEL_142;
      default:
        if (v12 == 101)
        {
          v15 = PBReaderReadData();
          [a1 setJsonFeedback:v15];
          goto LABEL_141;
        }

        if (v12 != 200)
        {
LABEL_26:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_142;
        }

        v15 = objc_alloc_init(_CPFeedbackPayload);
        v80 = 0.0;
        v81 = 0;
        if (!PBReaderPlaceMark() || !_CPFeedbackPayloadReadFrom(v15, a2))
        {
          goto LABEL_158;
        }

        PBReaderRecallMark();
        if (v15)
        {
          [a1 addFeedback:v15];
        }

        goto LABEL_141;
    }
  }
}

uint64_t _CPUserReportFeedbackReadFrom(void *a1, void *a2)
{
  [a1 setTimestamp:0];
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
            v14 = PBReaderReadString();
            [a1 setUploadedDataIdentifier:v14];
            goto LABEL_61;
          }

          if (v13 == 8)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v31 & 0x7F) << v15;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_73;
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

LABEL_73:
            [a1 setReportType:v21];
            goto LABEL_62;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadData();
            [a1 setUuidBytes:v14];
LABEL_61:

            goto LABEL_62;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(_CPResultSectionForFeedback);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_CPResultSectionForFeedbackReadFrom(v14, a2))
            {
LABEL_76:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addSections:v14];
            }

            goto LABEL_61;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_CPPunchoutForFeedback);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_CPPunchoutForFeedbackReadFrom(v14, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          [a1 setUserSelection:v14];
          goto LABEL_61;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_CPCardSectionForFeedback);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_CPCardSectionForFeedbackReadFrom(v14, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          [a1 setCardSection:v14];
          goto LABEL_61;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_69:
          [a1 setTimestamp:v28];
          goto LABEL_62;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_CPSearchResultForFeedback);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_CPSearchResultForFeedbackReadFrom(v14, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          [a1 setResult:v14];
          goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PARLogHandleForCategory_block_invoke_1356()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_1358;
  PARLogHandleForCategory_logHandles_0_1358 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_1359;
  PARLogHandleForCategory_logHandles_1_1359 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_1350;
  PARLogHandleForCategory_logHandles_2_1350 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_1361;
  PARLogHandleForCategory_logHandles_3_1361 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_1362;
  PARLogHandleForCategory_logHandles_4_1362 = v8;

  PARLogHandleForCategory_logHandles_5_1363 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

id PARLogHandleForCategory_1454()
{
  if (PARLogHandleForCategory_onceToken_1456 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_1456, &__block_literal_global_1457);
  }

  v1 = PARLogHandleForCategory_logHandles_2_1458;

  return v1;
}

uint64_t __PARLogHandleForCategory_block_invoke_1461()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_1462;
  PARLogHandleForCategory_logHandles_0_1462 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_1463;
  PARLogHandleForCategory_logHandles_1_1463 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_1458;
  PARLogHandleForCategory_logHandles_2_1458 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_1464;
  PARLogHandleForCategory_logHandles_3_1464 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_1465;
  PARLogHandleForCategory_logHandles_4_1465 = v8;

  PARLogHandleForCategory_logHandles_5_1466 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _CPResultTypeToPQCType(int a1)
{
  if ((a1 - 1) > 0x1D)
  {
    return 0;
  }

  else
  {
    return qword_1B1135378[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __decodeSqf_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 parsec_stringForKey:@"prefix"];
    if ([v8 rangeOfString:*(a1 + 32) options:9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
    if (PARLogHandleForCategory_onceToken_1898 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
    }

    v9 = PARLogHandleForCategory_logHandles_2_1899;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1B1064000, v9, OS_LOG_TYPE_ERROR, "sqf element not a dictionary", v10, 2u);
    }
  }
}

void recursiveSetQueryId(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [v3 setQueryId:a2];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 cardSections];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 embeddedCards];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              recursiveSetQueryId(*(*(&v16 + 1) + 8 * v14++), a2);
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __PARLogHandleForCategory_block_invoke_1955()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_1958;
  PARLogHandleForCategory_logHandles_0_1958 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_1960;
  PARLogHandleForCategory_logHandles_1_1960 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_1899;
  PARLogHandleForCategory_logHandles_2_1899 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_1963;
  PARLogHandleForCategory_logHandles_3_1963 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_1965;
  PARLogHandleForCategory_logHandles_4_1965 = v8;

  PARLogHandleForCategory_logHandles_5_1967 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PARLogHandleForCategory_block_invoke_2171()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_2173;
  PARLogHandleForCategory_logHandles_0_2173 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_2175;
  PARLogHandleForCategory_logHandles_1_2175 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_2166;
  PARLogHandleForCategory_logHandles_2_2166 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_2177;
  PARLogHandleForCategory_logHandles_3_2177 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_2179;
  PARLogHandleForCategory_logHandles_4_2179 = v8;

  PARLogHandleForCategory_logHandles_5_2181 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

id fixQueryComponentEncoding(void *a1)
{
  v1 = a1;
  v2 = [v1 percentEncodedQuery];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"+" withString:@"%20"];
  [v1 setPercentEncodedQuery:v3];

  return v1;
}