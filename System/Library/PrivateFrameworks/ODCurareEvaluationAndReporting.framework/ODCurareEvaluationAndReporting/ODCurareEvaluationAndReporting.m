uint64_t sub_25C7D3800()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C7D3838()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ODCurareReportFillerModelEvaluationReadFrom(uint64_t a1, void *a2)
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
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
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
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            v38 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v38 & 0x7F) << v26;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v28;
          }

LABEL_53:
          v32 = 28;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_57;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v37 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v37 & 0x7F) << v16;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_49;
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

LABEL_49:
          v32 = 24;
        }

        *(a1 + v32) = v22;
      }

      else if (v13 == 1)
      {
        v24 = PBReaderReadString();
        v25 = *(a1 + 16);
        *(a1 + 16) = v24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v35 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v35;
      }

LABEL_57:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerMetadataReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___ODCurareReportFillerMetadata__selectedModelName;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ODCurareReportFillerMetadata__date;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerDataSetStatsReadFrom(uint64_t a1, void *a2)
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
      if (v13 >= 0xA)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_2799B9B18[v13];
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

uint64_t ODCurareReportFillerReportReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(ODCurareReportFillerModelEvaluationSummary);
            [a1 addPersonalizationEvaluationSummaries:v14];
LABEL_38:
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerModelEvaluationSummaryReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_51;
            }

LABEL_45:
            PBReaderRecallMark();

            goto LABEL_49;
          case 6:
            v22 = PBReaderReadString();
            v23 = *(a1 + 8);
            *(a1 + 8) = v22;

            goto LABEL_49;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v26) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v26 & 0x7F) << v15;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_48;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_48:
            *(a1 + 48) = v21;
            goto LABEL_49;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(ODCurareReportFillerModelInformation);
            [a1 addModelInformationList:v14];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerModelInformationReadFrom(v14, a2))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_45;
          case 2:
            v14 = objc_alloc_init(ODCurareReportFillerMetadata);
            [a1 addMetadataList:v14];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerMetadataReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_45;
          case 3:
            v14 = objc_alloc_init(ODCurareReportFillerModelEvaluationSummary);
            [a1 addModelEvaluationSummaries:v14];
            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerDataSetSizeReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSamples;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSamples;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
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

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSessions;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSessions;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerModelInformationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 16;
LABEL_40:
          v24 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v23 = objc_alloc_init(ODCurareReportFillerModelHyperparameters);
            objc_storeStrong((a1 + 24), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerModelHyperparametersReadFrom(v23, a2))
            {
LABEL_47:

              return 0;
            }

            goto LABEL_38;
          case 4:
            v23 = objc_alloc_init(ODCurareReportFillerDataSet);
            objc_storeStrong((a1 + 8), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetReadFrom(&v23->super.super.isa, a2))
            {
              goto LABEL_47;
            }

LABEL_38:
            PBReaderRecallMark();

            goto LABEL_45;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v27) = 0;
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
                goto LABEL_44;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
            *(a1 + 40) = v20;
            goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerDataSetReadFrom(id *a1, void *a2)
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
          v15 = PBReaderReadString();
          v16 = 2;
LABEL_32:
          v14 = a1[v16];
          a1[v16] = v15;
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 1;
          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(ODCurareReportFillerDataSetSize);
          objc_storeStrong(a1 + 3, v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetSizeReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ODCurareReportFillerDataSetStats);
          [a1 addStats:v14];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetStatsReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

LABEL_30:
          PBReaderRecallMark();
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

uint64_t ODCurareReportFillerModelEvaluationSummaryReadFrom(id *a1, void *a2)
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
          v16 = objc_alloc_init(ODCurareReportFillerModelEvaluation);
          [a1 addModelEvaluationResults:v16];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerModelEvaluationReadFrom(v16, a2))
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
          v16 = objc_alloc_init(ODCurareReportFillerDataSet);
          objc_storeStrong(a1 + 1, v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetReadFrom(&v16->super.super.isa, a2))
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
          v15 = 4;
          goto LABEL_29;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 2;
LABEL_29:
          v16 = a1[v15];
          a1[v15] = v14;
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

uint64_t ODCurareReportFillerModelHyperparametersReadFrom(uint64_t a1, void *a2)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v14 == 2)
      {
        if (v13 != 2)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          while (1)
          {
            LOBYTE(v44) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v44 & 0x7F) << v34;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              goto LABEL_73;
            }
          }

          [a2 hasError];
LABEL_73:
          PBRepeatedUInt32Add();
          goto LABEL_76;
        }

        v44 = 0;
        v45 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v23 = [a2 position];
          if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v46) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v46 & 0x7F) << v24;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              goto LABEL_43;
            }
          }

          [a2 hasError];
LABEL_43:
          PBRepeatedUInt32Add();
        }

LABEL_55:
        PBReaderRecallMark();
        goto LABEL_76;
      }

      if (v14 == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v44 & 0x7F) << v15;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_59;
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

LABEL_59:
        *(a1 + 56) = v21;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_76:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 != 2)
    {
      LODWORD(v44) = 0;
      v40 = [a2 position] + 4;
      if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 4, v41 <= objc_msgSend(a2, "length")))
      {
        v42 = [a2 data];
        [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      PBRepeatedFloatAdd();
      goto LABEL_76;
    }

    v44 = 0;
    v45 = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v30 = [a2 position];
      if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        break;
      }

      v46 = 0;
      v31 = [a2 position] + 4;
      if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v46 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      PBRepeatedFloatAdd();
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_25C7DE944()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_25C7DE9D0(uint64_t a1, id *a2)
{
  result = sub_25C82E08C();
  *a2 = 0;
  return result;
}

uint64_t sub_25C7DEA48(uint64_t a1, id *a2)
{
  v3 = sub_25C82E09C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25C7DEAC8@<X0>(uint64_t *a1@<X8>)
{
  sub_25C82E0AC();
  v2 = sub_25C82E07C();

  *a1 = v2;
  return result;
}

BOOL sub_25C7DEB28(void *a1, uint64_t *a2)
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

uint64_t sub_25C7DEB80()
{
  v1 = *v0;
  v2 = sub_25C82E0AC();
  v3 = MEMORY[0x25F88F490](v2);

  return v3;
}

uint64_t sub_25C7DEBBC()
{
  v1 = *v0;
  sub_25C82E0AC();
  sub_25C82E10C();
}

uint64_t sub_25C7DEC10()
{
  v1 = *v0;
  sub_25C82E0AC();
  sub_25C82E57C();
  sub_25C82E10C();
  v2 = sub_25C82E59C();

  return v2;
}

uint64_t sub_25C7DEC90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25C82E0AC();
  v6 = v5;
  if (v4 == sub_25C82E0AC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25C82E4EC();
  }

  return v9 & 1;
}

uint64_t sub_25C7DED18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25C82E07C();

  *a2 = v5;
  return result;
}

uint64_t sub_25C7DED60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25C82E0AC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25C7DED8C(uint64_t a1)
{
  v2 = sub_25C7DEF10(&qword_27FC16030);
  v3 = sub_25C7DEF10(&qword_27FC16038);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27FC16010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FC16010);
    }
  }
}

uint64_t sub_25C7DEF10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ODCurareInterfaceModule.init(bundleIdentifier:evaluationInstance:personalizationInstance:pruningPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v120 = a3;
  v121 = a4;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v112 = &v95 - v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v109 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v95 - v13;
  v14 = sub_25C82DFBC();
  v96 = *(v14 - 8);
  v15 = v96;
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v14);
  v106 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_25C82DEAC();
  v97 = *(v98 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v100 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ODCurareFileSystemModelStore();
  swift_initStackObject();
  v20 = a5;

  v117 = sub_25C81D74C(a5, a1, a2);
  v123 = a1;
  v124 = a2;
  v21 = v20;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xEF61746164617465);
  v22 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v23 = sub_25C82E07C();

  v116 = [v22 init_];

  v111 = type metadata accessor for ODCurareFileSystemModelEvaluationSummaryStore();
  swift_initStackObject();
  v115 = v21;

  v114 = sub_25C812BD0(a5, a1, a2);
  v113 = type metadata accessor for ODCurareInterfaceModule();
  v24 = objc_allocWithZone(v113);
  v25 = *(v15 + 56);
  v99 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
  v95 = v14;
  v25(&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate], 1, 1, v14);
  v25(&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_lastPersonalizationSampleDate], 1, 1, v14);
  v103 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkEvaluationDate;
  v119 = v25;
  v25(&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkEvaluationDate], 1, 1, v14);
  *&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_defaultModelEvaluationSummary] = 0;
  v102 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata;
  *&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata] = 0;
  v26 = v97;
  v27 = *(v97 + 56);
  v107 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
  v28 = v98;
  v105 = v97 + 56;
  v104 = v27;
  v27(&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL], 1, 1, v98);
  v29 = &v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier];
  *v29 = a1;
  v29[1] = a2;
  v30 = v121;
  *&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_evaluationInstance] = v120;
  *&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationInstance] = v30;
  v101 = OBJC_IVAR___ODCurareInterfaceModuleInternal_pruningPolicy;
  *&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_pruningPolicy] = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31 = NSTemporaryDirectory();
  sub_25C82E0AC();

  v32 = v28;
  v33 = v100;
  v34 = v95;
  sub_25C82DDFC();
  v35 = v108;

  (*(v26 + 32))(&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_temporaryDirectory], v33, v28);
  v36 = v106;
  sub_25C82DFAC();
  (*(v96 + 32))(&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate], v36, v34);
  v37 = *v29;
  v38 = v29[1];

  sub_25C82B87C(v37, v38);
  v40 = v39;

  v41 = 1;
  if (v40 != 0.0)
  {
    sub_25C82DF2C();
    v41 = 0;
  }

  v42 = 1;
  v119(v35, v41, 1, v34);
  v43 = v99;
  swift_beginAccess();
  sub_25C7E6CC0(v35, &v24[v43], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v45 = *v29;
  v44 = v29[1];

  sub_25C82BDBC(v45, v44);
  v47 = v46;

  v48 = v109;
  if (v47 != 0.0)
  {
    sub_25C82DF2C();
    v42 = 0;
  }

  v119(v48, v42, 1, v34);
  v49 = v103;
  swift_beginAccess();
  sub_25C7E6CC0(v48, &v24[v49], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v50 = *&v24[v102];
  *&v24[v102] = 0;

  v51 = v112;
  v104(v112, 1, 1, v32);
  v52 = v107;
  swift_beginAccess();
  sub_25C7E6CC0(v51, &v24[v52], &qword_27FC16040, &unk_25C830480);
  swift_endAccess();
  v53 = MEMORY[0x277D84F90];
  *&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationModelEvaluationResults] = MEMORY[0x277D84F90];
  *&v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_historicalModelEvaluationResults] = v53;
  v54 = v101;
  v55 = *&v24[v101];
  v56 = *v29;
  v57 = v29[1];
  v58 = v110;
  swift_allocObject();
  v59 = v55;

  v60 = sub_25C81D74C(v55, v56, v57);
  v61 = &v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore];
  v61[3] = v58;
  v61[4] = &off_286E6AEB8;
  *v61 = v60;
  v62 = *&v24[v54];
  v64 = *v29;
  v63 = v29[1];
  v65 = type metadata accessor for ODCurareFileSystemMetadataStore();
  v66 = swift_allocObject();
  v123 = v64;
  v124 = v63;
  v67 = v62;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xEF61746164617465);
  v68 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v69 = sub_25C82E07C();

  v70 = [v68 init_];

  *(v66 + 16) = v70;
  *(v66 + 24) = v62;
  v71 = &v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore];
  v71[3] = v65;
  v71[4] = &off_286E6AE78;
  *v71 = v66;
  v72 = *&v24[v54];
  v73 = *v29;
  v74 = v29[1];
  v75 = v111;
  swift_allocObject();
  v76 = v72;

  v77 = sub_25C812BD0(v72, v73, v74);
  v78 = &v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore];
  v78[3] = v75;
  v78[4] = &off_286E6AEA0;
  *v78 = v77;
  v80 = *v29;
  v79 = v29[1];

  sub_25C829324(v80, v79);

  v82 = *v29;
  v81 = v29[1];

  v83 = sub_25C82950C(v82, v81);

  v24[OBJC_IVAR___ODCurareInterfaceModuleInternal_shouldReportFailure] = v83 > 99;
  if (v83 >= 100)
  {
    v85 = *v29;
    v84 = v29[1];

    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v86 = qword_281559838;
    sub_25C82E00C();

    v123 = v85;
    v124 = v84;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

    v87 = [objc_opt_self() standardUserDefaults];
    v88 = sub_25C82E22C();
    v89 = sub_25C82E07C();

    [v87 setValue:v88 forKey:v89];
  }

  v122.receiver = v24;
  v122.super_class = v113;
  v90 = objc_msgSendSuper2(&v122, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v91 = v118;
  swift_getObjectType();
  v92 = *((*MEMORY[0x277D85000] & *v91) + 0x30);
  v93 = *((*MEMORY[0x277D85000] & *v91) + 0x34);
  swift_deallocPartialClassInstance();
  return v90;
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

uint64_t sub_25C7DFC38(unint64_t a1, void *a2)
{
  v193 = a2;
  v3 = sub_25C82DEAC();
  v177 = *(v3 - 8);
  v4 = *(v177 + 64);
  MEMORY[0x28223BE20](v3);
  v179 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_25C82DFBC();
  v192 = *(v195 - 8);
  v6 = *(v192 + 64);
  v7 = MEMORY[0x28223BE20](v195);
  v178 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v181 = &v156 - v10;
  MEMORY[0x28223BE20](v9);
  v185 = (&v156 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v183 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v182 = (&v156 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v188 = (&v156 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v189 = &v156 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v156 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v156 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v190 = &v156 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v156 - v30;
  LOBYTE(v32) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v33 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v32))
    {
      v34 = v24;
      v35 = v33;

      v36 = swift_slowAlloc();
      *v36 = 134217984;
      if (a1 >> 62)
      {
        v37 = sub_25C82E43C();
      }

      else
      {
        v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v36 + 4) = v37;

      _os_log_impl(&dword_25C7D2000, v35, v32, "Start personalization, has %ld number of candidate models", v36, 0xCu);
      MEMORY[0x25F890110](v36, -1, -1);

      v24 = v34;
    }

    v38 = *&v201[OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationInstance];
    if (!v38)
    {
      sub_25C82E27C();
      v50 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      swift_allocError();
      v52 = 24;
LABEL_87:
      *v51 = v52;
      swift_willThrow();
      return v50;
    }

    v176 = *&v201[OBJC_IVAR___ODCurareInterfaceModuleInternal_evaluationInstance];
    if (!v176)
    {
      sub_25C82E27C();
      v50 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      swift_allocError();
      v52 = 22;
      goto LABEL_87;
    }

    v164 = v3;
    if (a1 >> 62)
    {
      if (!sub_25C82E43C())
      {
LABEL_86:
        sub_25C82E27C();
        v50 = qword_281559838;
        sub_25C82E00C();

        sub_25C7E7DEC();
        swift_allocError();
        v52 = 25;
        goto LABEL_87;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v198 = (a1 >> 62);
    v169 = v38;
    v170 = v24;
    v39 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
    v40 = v201;
    swift_beginAccess();
    v32 = &qword_27FC16048;
    sub_25C7E92DC(&v40[v39], v31, &qword_27FC16048, qword_25C8309D0);
    v41 = v192;
    v42 = *(v192 + 48);
    v43 = v195;
    v187 = v192 + 48;
    v186 = v42;
    v24 = v42(v31, 1, v195);
    sub_25C7E97F4(v31, &qword_27FC16048, qword_25C8309D0);
    v199 = v39;
    if (v24 == 1)
    {
      sub_25C82E25C();
      v44 = qword_281559838;
      sub_25C82E00C();

      v45 = v190;
      sub_25C82DF2C();
      v32 = *(v41 + 56);
      v46 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      (v32)(v45, 0, 1, v43);
      v47 = v201;
      swift_beginAccess();
      sub_25C7E6CC0(v45, &v47[v39], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
      v48 = v46;
      v49 = v32;
    }

    else
    {
      v49 = *(v41 + 56);
      v48 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    }

    v31 = v198;
    v166 = v49;
    v165 = v48;
    (v49)(v27, 1, 1, v43);
    v53 = v194;
    if (v31)
    {
      v54 = sub_25C82E43C();
    }

    else
    {
      v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v199;
    v171 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
    v184 = OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationModelEvaluationResults;
    v180 = v27;
    swift_beginAccess();
    if (!v54)
    {
LABEL_58:
      v112 = v53;
      v113 = v180;
      swift_beginAccess();
      v114 = v183;
      sub_25C7E92DC(v113, v183, &qword_27FC16048, qword_25C8309D0);
      v115 = v195;
      v116 = v186(v114, 1, v195);
      sub_25C7E97F4(v114, &qword_27FC16048, qword_25C8309D0);
      if (v116 == 1)
      {
        v117 = v190;
        sub_25C7E92DC(v199 + v201, v190, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E6CC0(v117, v113, &qword_27FC16048, qword_25C8309D0);
      }

      v50 = v201;
      sub_25C8296F4(v113, *&v201[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier], *&v201[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier + 8]);
      v118 = v184;
      swift_beginAccess();
      v119 = *&v50[v118];
      v120 = v192;
      if (*(v119 + 16))
      {
        v121 = *&v50[v118];

        v122 = v112;
        sub_25C81A8E4(v193, v119);
        v124 = v123;
        v126 = v125;
        v128 = v127;

        if (v122)
        {
LABEL_62:
          v129 = v113;
LABEL_69:
          sub_25C7E97F4(v129, &qword_27FC16048, qword_25C8309D0);
          return v50;
        }

        if (!v124)
        {
          v136 = sub_25C82E27C();
          v137 = qword_281559838;
          if (os_log_type_enabled(qword_281559838, v136))
          {
            v138 = v137;
            v50 = v201;
            v139 = v201;
            v140 = swift_slowAlloc();
            *v140 = 134217984;
            *(v140 + 4) = *(*&v50[v184] + 16);

            _os_log_impl(&dword_25C7D2000, v138, v136, "Unable to identify the best model even though there were %ld entries in self.newModelEvaluationResults.", v140, 0xCu);
            MEMORY[0x25F890110](v140, -1, -1);
          }

          sub_25C7E7DEC();
          swift_allocError();
          *v141 = 20;
          swift_willThrow();
          goto LABEL_62;
        }

        v130 = v201;
        sub_25C7E9180(&v201[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore], v200);
        v199 = __swift_project_boxed_opaque_existential_1(v200, v200[3]);
        v131 = [v126 modelURL];
        sub_25C82DE7C();

        (*(v120 + 16))(v178, &v130[v171], v115);
        v201 = [v126 modelInformation];
        v198 = [v124 modelConfiguration];
        v132 = [v124 CDModelDataStreamIdentifier];
        if (v132)
        {
          v133 = v132;
          v134 = sub_25C82E0AC();
          *&v196 = v135;
        }

        else
        {
          v134 = 0;
          *&v196 = 0;
        }

        v142 = [v124 BMModelDataStreamIdentifier];
        v197 = v126;
        if (v142)
        {
          v143 = v142;
          v144 = sub_25C82E0AC();
          v146 = v145;

          v147 = v144;
        }

        else
        {
          v147 = 0;
          v146 = 0;
        }

        v148 = v198;
        v149 = *v199;
        v150 = v179;
        v151 = v178;
        v152 = v201;
        sub_25C81D89C(v179, v178, v201, v198, v134, v196, v147, v146);

        (*(v192 + 8))(v151, v195);
        (*(v177 + 8))(v150, v164);
        __swift_destroy_boxed_opaque_existential_0Tm(v200);
        v113 = v180;
      }

      sub_25C82E25C();
      v153 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
      v50 = sub_25C82E29C();
      sub_25C7E97F4(v113, &qword_27FC16048, qword_25C8309D0);
      return v50;
    }

    v27 = 0;
    v197 = (a1 & 0xFFFFFFFFFFFFFF8);
    v198 = (a1 & 0xC000000000000001);
    v168 = (v192 + 8);
    v163 = (v192 + 16);
    v161 = (v192 + 32);
    *&v55 = 134217984;
    v196 = v55;
    *&v55 = 136315138;
    v162 = v55;
    v167 = a1;
    v191 = v54;
LABEL_23:
    if (v198)
    {
      v57 = MEMORY[0x25F88F6D0](v27, a1);
    }

    else
    {
      if (v27 >= *(v197 + 2))
      {
        goto LABEL_82;
      }

      v57 = *(a1 + 8 * v27 + 32);
    }

    v58 = v57;
    v31 = (v27 + 1);
    if (!__OFADD__(v27, 1))
    {
      break;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  v59 = sub_25C82E25C();
  v60 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v59))
  {
    v61 = v60;
    v62 = swift_slowAlloc();
    *v62 = v196;
    *(v62 + 4) = v27;
    _os_log_impl(&dword_25C7D2000, v61, v59, "Begin processing model at index %ld.", v62, 0xCu);
    v63 = v62;
    v3 = v199;
    MEMORY[0x25F890110](v63, -1, -1);
  }

  if ([v58 isDefaultModel])
  {
    LOBYTE(v32) = sub_25C82E25C();
    v24 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v32))
    {
      goto LABEL_21;
    }

    v24 = v24;
    v64 = swift_slowAlloc();
    *v64 = v196;
    *(v64 + 4) = v27;
    v65 = v32;
    v66 = v24;
    v67 = "Model at index %ld is the default model. This should not happen! Skipping.";
LABEL_20:
    _os_log_impl(&dword_25C7D2000, v66, v65, v67, v64, 0xCu);
    v56 = v64;
    v3 = v199;
    MEMORY[0x25F890110](v56, -1, -1);

LABEL_21:
LABEL_22:
    ++v27;
    if (v31 == v54)
    {
      goto LABEL_58;
    }

    goto LABEL_23;
  }

  if (([v58 isPersonalizableModel] & 1) == 0)
  {
    LOBYTE(v32) = sub_25C82E25C();
    v24 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v32))
    {
      goto LABEL_21;
    }

    v24 = v24;
    v64 = swift_slowAlloc();
    *v64 = v196;
    *(v64 + 4) = v27;
    v65 = v32;
    v66 = v24;
    v67 = "Model at index %ld is not personalizable. Skipping.";
    goto LABEL_20;
  }

  v50 = v201;
  swift_beginAccess();
  v68 = sub_25C8187FC(v58, v193, &v50[v3]);
  if (v53)
  {
    swift_endAccess();

LABEL_68:
    v129 = v180;
    goto LABEL_69;
  }

  v69 = v68;
  swift_endAccess();
  v54 = v191;
  if ((v69 & 1) == 0)
  {
    LOBYTE(v32) = sub_25C82E25C();
    v24 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v32))
    {
      goto LABEL_21;
    }

    v24 = v24;
    v64 = swift_slowAlloc();
    *v64 = v196;
    *(v64 + 4) = v27;
    v65 = v32;
    v66 = v24;
    v67 = "Not enough data to personalize model at index %ld.";
    goto LABEL_20;
  }

  v70 = &v201[v3];
  v71 = v170;
  sub_25C7E92DC(v70, v170, &qword_27FC16048, qword_25C8309D0);
  v72 = v195;
  v73 = v186(v71, 1, v195);
  v172 = (v27 + 1);
  if (v73 == 1)
  {
    v74 = 0;
  }

  else
  {
    v74 = sub_25C82DF4C();
    (*v168)(v71, v72);
  }

  v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v58 setStreamFilter:0 fromInclusive:0 toDate:v74 toInclusive:v75];

  v76 = v201;
  v77 = v189;
  sub_25C7E92DC(v199 + v201, v189, &qword_27FC16048, qword_25C8309D0);
  v78 = sub_25C819EA4(v58, v169, v176, &v76[v171], v77);
  v80 = v79;
  sub_25C7E97F4(v77, &qword_27FC16048, qword_25C8309D0);
  v81 = v201;
  v82 = v184;
  swift_beginAccess();
  v83 = *&v81[v82];
  v173 = v58;
  v175 = v78;
  v174 = v80;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v82] = v83;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v83 = sub_25C7E715C(0, v83[2] + 1, 1, v83);
    *&v201[v184] = v83;
  }

  v3 = v199;
  v31 = v172;
  v86 = v83[2];
  v85 = v83[3];
  v194 = 0;
  if (v86 >= v85 >> 1)
  {
    v83 = sub_25C7E715C((v85 > 1), v86 + 1, 1, v83);
  }

  v83[2] = v86 + 1;
  v87 = &v83[3 * v86];
  v88 = v173;
  v89 = v175;
  v87[4] = v173;
  v87[5] = v89;
  v90 = v174;
  v87[6] = v174;
  *&v201[v184] = v83;
  swift_endAccess();
  v32 = v188;
  v24 = qword_25C8309D0;
  sub_25C7E92DC(v180, v188, &qword_27FC16048, qword_25C8309D0);
  if (v186(v32, 1, v195) != 1)
  {

    sub_25C7E97F4(v32, &qword_27FC16048, qword_25C8309D0);
    v53 = v194;
    a1 = v167;
    v54 = v191;
    goto LABEL_22;
  }

  sub_25C7E97F4(v32, &qword_27FC16048, qword_25C8309D0);
  v91 = [v88 getDatesOfEventsForStream];
  v92 = v88;
  if (!v91)
  {
    sub_25C82E27C();
    v50 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v154 = 20;
    swift_willThrow();

    goto LABEL_68;
  }

  v93 = v91;
  v94 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = sub_25C7E916C(v94);
  }

  v95 = v194;
  v54 = v191;
  v96 = v94[2];
  v97 = v94 + ((*(v192 + 80) + 32) & ~*(v192 + 80));
  v200[0] = v97;
  v200[1] = v96;
  sub_25C7E7E40(v200);
  if (!v94[2])
  {

    sub_25C82E27C();
    v50 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v155 = 20;
    swift_willThrow();

    goto LABEL_68;
  }

  v194 = v95;
  v98 = *v163;
  v32 = v185;
  v99 = v195;
  (*v163)(v185, v97, v195);

  v100 = v190;
  v98(v190, v32, v99);
  v101 = v99;
  (v166)(v100, 0, 1, v99);
  v24 = v180;
  sub_25C7E6CC0(v100, v180, &qword_27FC16048, qword_25C8309D0);
  v102 = sub_25C82E27C();
  v103 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v102))
  {

    (*v168)(v32, v101);
    a1 = v167;
    v3 = v199;
    goto LABEL_56;
  }

  v160 = v102;
  v158 = v103;
  v104 = swift_slowAlloc();
  v159 = swift_slowAlloc();
  v200[0] = v159;
  *v104 = v162;
  v32 = v182;
  sub_25C7E92DC(v24, v182, &qword_27FC16048, qword_25C8309D0);
  result = v186(v32, 1, v101);
  a1 = v167;
  if (result != 1)
  {
    v106 = v181;
    (*v161)(v181, v32, v101);
    sub_25C7E97AC(&qword_27FC16078, MEMORY[0x277CC9578]);
    v107 = sub_25C82E4DC();
    v24 = v108;
    LOBYTE(v32) = v168;
    v157 = *v168;
    v157(v106, v101);
    v109 = sub_25C7E77E4(v107, v24, v200);

    *(v104 + 4) = v109;
    v110 = v158;
    _os_log_impl(&dword_25C7D2000, v158, v160, "Setting newPersonalizationDate to %s", v104, 0xCu);
    v111 = v159;
    __swift_destroy_boxed_opaque_existential_0Tm(v159);
    MEMORY[0x25F890110](v111, -1, -1);
    MEMORY[0x25F890110](v104, -1, -1);

    v157(v185, v101);
    v3 = v199;
    v54 = v191;
LABEL_56:
    v53 = v194;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_25C7E159C(unint64_t a1)
{
  v214 = sub_25C82DEAC();
  v196 = *(v214 - 8);
  isa = v196[8].isa;
  MEMORY[0x28223BE20](v214);
  v213 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_25C82DFBC();
  v206 = *(v219 - 8);
  v5 = v206[8].isa;
  v6 = MEMORY[0x28223BE20](v219);
  v192 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v194 = &v191 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v201 = &v191 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v204 = &v191 - v13;
  MEMORY[0x28223BE20](v12);
  v202 = (&v191 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v193 = &v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v195 = &v191 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v197 = &v191 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v198 = &v191 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v200 = &v191 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v211 = &v191 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v191 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v191 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v191 = &v191 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v199 = &v191 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v191 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v205 = (&v191 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v203 = (&v191 - v45);
  MEMORY[0x28223BE20](v44);
  v47 = &v191 - v46;
  LOBYTE(v48) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
LABEL_94:
    swift_once();
  }

  p_info = ODCurareEvaluationAndReportingModule.info;
  v50 = qword_281559838;
  v51 = os_log_type_enabled(qword_281559838, v48);
  v210 = a1 >> 62;
  v216 = v34;
  v220 = v1;
  if (v51)
  {
    v52 = v50;

    v53 = swift_slowAlloc();
    *v53 = 134217984;
    if (v210)
    {
      v54 = sub_25C82E43C();
    }

    else
    {
      v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v53 + 4) = v54;

    _os_log_impl(&dword_25C7D2000, v52, v48, "Start evaluation, has %ld number of evaluation models", v53, 0xCu);
    MEMORY[0x25F890110](v53, -1, -1);

    v1 = v220;
    p_info = ODCurareEvaluationAndReportingModule.info;
  }

  v55 = *&v1[OBJC_IVAR___ODCurareInterfaceModuleInternal_evaluationInstance];
  if (!v55)
  {
    sub_25C82E27C();
    v68 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    v70 = 21;
LABEL_98:
    *v69 = v70;
    swift_willThrow();
    return;
  }

  if (v210)
  {
    goto LABEL_96;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_97:
    sub_25C82E27C();
    v177 = p_info[263];
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    v70 = 23;
    goto LABEL_98;
  }

  while (1)
  {
    v207 = v31;
    v208 = a1;
    v209 = v55;
    v56 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkEvaluationDate;
    swift_beginAccess();
    v212 = v56;
    sub_25C7E92DC(&v1[v56], v47, &qword_27FC16048, qword_25C8309D0);
    a1 = &v206[6];
    v57 = v206[6].isa;
    v55 = v219;
    v58 = v57(v47, 1, v219);
    sub_25C7E97F4(v47, &qword_27FC16048, qword_25C8309D0);
    v217 = v57;
    v218 = a1;
    if (v58 == 1)
    {
      sub_25C82E25C();
      v59 = qword_281559838;
      sub_25C82E00C();

      v60 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
      swift_beginAccess();
      v61 = v203;
      sub_25C7E92DC(&v1[v60], v203, &qword_27FC16048, qword_25C8309D0);
      v62 = v57(v61, 1, v55);
      p_info = v216;
      if (v62 == 1)
      {
        a1 = v1;
        sub_25C7E97F4(v61, &qword_27FC16048, qword_25C8309D0);
        sub_25C82E25C();
        v63 = qword_281559838;
        sub_25C82E00C();

        v48 = v219;
        v64 = v205;
        sub_25C82DF2C();
        v65 = v206;
        (v206[7].isa)(v64, 0, 1, v48);
        v55 = v212;
        swift_beginAccess();
        v66 = v55 + v1;
        v67 = v64;
      }

      else
      {
        v48 = v55;
        v72 = v206;
        a1 = v206[4].isa;
        v73 = v202;
        (a1)(v202, v61, v48);
        v74 = sub_25C82E25C();
        v75 = qword_281559838;
        (v72[2].isa)(v204, v73, v48);
        if (os_log_type_enabled(v75, v74))
        {
          v203 = v75;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v221[0] = v77;
          *v76 = 136315138;
          sub_25C7E97AC(&qword_27FC16078, MEMORY[0x277CC9578]);
          v78 = v204;
          v79 = sub_25C82E4DC();
          v80 = a1;
          v82 = v81;
          (v72[1].isa)(v78, v219);
          v83 = v79;
          p_info = v216;
          v84 = sub_25C7E77E4(v83, v82, v221);
          a1 = v80;

          *(v76 + 4) = v84;
          v73 = v202;
          v85 = v203;
          _os_log_impl(&dword_25C7D2000, v203, v74, "Got last personalization date: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          MEMORY[0x25F890110](v77, -1, -1);
          v86 = v76;
          v48 = v219;
          MEMORY[0x25F890110](v86, -1, -1);
        }

        else
        {
          (v72[1].isa)(v204, v48);
        }

        v65 = v72;
        v55 = v205;
        (a1)(v205, v73, v48);
        (v65[7].isa)(v55, 0, 1, v48);
        v97 = v220;
        v98 = v212;
        swift_beginAccess();
        v66 = &v97[v98];
        v67 = v55;
      }

      sub_25C7E6CC0(v67, v66, &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
      goto LABEL_24;
    }

    v71 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
    swift_beginAccess();
    sub_25C7E92DC(&v1[v71], v41, &qword_27FC16048, qword_25C8309D0);
    v48 = v55;
    if (v57(v41, 1, v55) == 1)
    {
      sub_25C7E97F4(v41, &qword_27FC16048, qword_25C8309D0);
LABEL_20:
      p_info = v216;
      v65 = v206;
      goto LABEL_24;
    }

    v87 = v201;
    v88 = v41;
    v89 = v206 + 4;
    v204 = v206[4].isa;
    (v204)(v201, v88, v55);
    sub_25C82E25C();
    v55 = ODCurareEvaluationAndReportingModule.info;
    v90 = v1;
    v91 = qword_281559838;
    sub_25C82E00C();

    v92 = v199;
    sub_25C7E92DC(&v90[v212], v199, &qword_27FC16048, qword_25C8309D0);
    if (v57(v92, 1, v48) == 1)
    {
      __break(1u);
LABEL_110:
      __break(1u);
      return;
    }

    v93 = sub_25C82DF9C();
    a1 = v206[1].isa;
    (a1)(v92, v48);
    v94 = sub_25C82E25C();
    v95 = qword_281559838;
    if (v93 != -1)
    {
      v96 = qword_281559838;
      sub_25C82E00C();

      (a1)(v87, v48);
      goto LABEL_20;
    }

    v65 = v206;
    v152 = v194;
    (v206[2].isa)(v194, v87, v48);
    if (os_log_type_enabled(v95, v94))
    {
      v203 = v89;
      v202 = v95;
      v153 = v220;
      v154 = v220;
      v155 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v221[0] = v199;
      *v155 = 136315394;
      v156 = v191;
      sub_25C7E92DC(&v153[v212], v191, &qword_27FC16048, qword_25C8309D0);
      v157 = v217(v156, 1, v48);

      if (v157 == 1)
      {
        goto LABEL_110;
      }

      v158 = v192;
      (v204)(v192, v156, v48);
      sub_25C7E97AC(&qword_27FC16078, MEMORY[0x277CC9578]);
      v159 = sub_25C82E4DC();
      v161 = v160;
      (a1)(v158, v219);
      v162 = sub_25C7E77E4(v159, v161, v221);
      v48 = v219;

      *(v155 + 4) = v162;
      *(v155 + 12) = 2080;
      v163 = v194;
      v164 = sub_25C82E4DC();
      v166 = v165;
      (a1)(v163, v48);
      v167 = sub_25C7E77E4(v164, v166, v221);

      *(v155 + 14) = v167;
      v168 = v94;
      v169 = v202;
      _os_log_impl(&dword_25C7D2000, v202, v168, "frameworkEvaluationDate is being updated from %s to %s", v155, 0x16u);
      v170 = v199;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v170, -1, -1);
      MEMORY[0x25F890110](v155, -1, -1);

      v171 = v204;
      v65 = v206;
      v87 = v201;
    }

    else
    {
      (a1)(v152, v48);
      v171 = v204;
    }

    v55 = v205;
    (v171)(v205, v87, v48);
    (v65[7].isa)(v55, 0, 1, v48);
    v174 = v220;
    v175 = v212;
    swift_beginAccess();
    sub_25C7E6CC0(v55, &v174[v175], &qword_27FC16048, qword_25C8309D0);
    swift_endAccess();
    p_info = v216;
LABEL_24:
    v31 = v208;
    v221[0] = MEMORY[0x277D84F90];
    v223 = MEMORY[0x277D84F90];
    (v65[7].isa)(p_info, 1, 1, v48);
    if (!v210)
    {
      v1 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        break;
      }

      goto LABEL_26;
    }

    v1 = sub_25C82E43C();
    if (!v1)
    {
      break;
    }

LABEL_26:
    v41 = 0;
    v204 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
    v210 = v31 & 0xC000000000000001;
    v192 = (v31 & 0xFFFFFFFFFFFFFF8);
    v194 = &v65[1];
    v203 = "evaluateWithModel:]";
    v202 = v196 + 1;
    v47 = 0x2799B9000;
    v199 = MEMORY[0x277D84F90];
    v205 = MEMORY[0x277D84F90];
    v201 = v1;
    while (1)
    {
      if (v210)
      {
        v101 = MEMORY[0x25F88F6D0](v41, v31);
        goto LABEL_35;
      }

      if (v41 >= *(v192 + 2))
      {
        break;
      }

      v101 = *(v31 + 8 * v41 + 32);
LABEL_35:
      a1 = v101;
      v34 = (v41 + 1);
      v31 = v207;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_94;
      }

      sub_25C7E92DC(&v220[v212], v207, &qword_27FC16048, qword_25C8309D0);
      if (v217(v31, 1, v48) == 1)
      {
        v102 = 0;
      }

      else
      {
        v102 = sub_25C82DF4C();
        (*v194)(v31, v48);
      }

      v103 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [a1 setStreamFilter:v102 fromInclusive:v103 toDate:0 toInclusive:0];

      if (![a1 hasStreamFilter])
      {
        sub_25C82E27C();
        v125 = qword_281559838;
        sub_25C82E00C();
        v126 = 29;
        goto LABEL_82;
      }

      v104 = v209;
      if (([v209 respondsToSelector_] & 1) == 0 || (v105 = objc_msgSend(v104, *(v47 + 3464), a1)) == 0)
      {
        sub_25C82E27C();
        v125 = qword_281559838;
        sub_25C82E00C();
        v126 = 30;
LABEL_82:

        sub_25C7E7DEC();
        swift_allocError();
        *v151 = v126;
        swift_willThrow();
        sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);

        return;
      }

      v106 = v105;
      v107 = a1;
      a1 = v41 + 1;
      v55 = p_info;
      v108 = v211;
      sub_25C7E92DC(p_info, v211, &qword_27FC16048, qword_25C8309D0);
      v109 = v217(v108, 1, v219);
      sub_25C7E97F4(v108, &qword_27FC16048, qword_25C8309D0);
      if (v109 == 1)
      {
        v110 = v200;
        v111 = v215;
        sub_25C829A28(v107, v200);
        v215 = v111;
        if (v111)
        {
          sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);

          return;
        }

        sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E9274(v110, p_info, &qword_27FC16048, qword_25C8309D0);
      }

      v112 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v113 = sub_25C82E07C();
      [v112 setDateFormat_];

      v114 = sub_25C82DF4C();
      v115 = [v112 stringFromDate_];

      v47 = 0x2799B9000uLL;
      if (!v115)
      {
        sub_25C82E0AC();
        v115 = sub_25C82E07C();
      }

      [v106 setEvaluationDate_];
      v116 = [v107 modelURL];
      v117 = v213;
      sub_25C82DE7C();

      sub_25C82DE1C();
      (v202->isa)(v117, v214);
      v118 = sub_25C82E07C();

      [v106 setModelName_];

      LODWORD(v118) = [v107 isDefaultModel];
      v119 = v106;
      if (v118)
      {
        MEMORY[0x25F88F4D0]();
        p_info = v216;
        v31 = v208;
        if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v121 = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25C82E1EC();
          p_info = v216;
        }

        sub_25C82E20C();

        v99 = v223;
        v100 = &v224;
      }

      else
      {
        MEMORY[0x25F88F4D0]();
        p_info = v216;
        v31 = v208;
        if (*((v221[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v120 = *((v221[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25C82E1EC();
          p_info = v216;
        }

        sub_25C82E20C();

        v99 = v221[0];
        v100 = &v222;
      }

      *(v100 - 32) = v99;
      ++v41;
      v1 = v201;
      v48 = v219;
      if (a1 == v201)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_96:
    if (!sub_25C82E43C())
    {
      goto LABEL_97;
    }
  }

  v199 = MEMORY[0x277D84F90];
  v205 = MEMORY[0x277D84F90];
LABEL_53:
  v122 = v215;
  v123 = sub_25C829D9C(&v220[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore], &v220[OBJC_IVAR___ODCurareInterfaceModuleInternal_temporaryDirectory]);
  v124 = v122;
  if (v122)
  {
    sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);

LABEL_55:

    return;
  }

  v127 = v123;
  if (v123 >> 62)
  {
    goto LABEL_102;
  }

  v128 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v215 = 0;
  if (v128)
  {
LABEL_59:
    v129 = 0;
    v208 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
    v211 = v127 & 0xC000000000000001;
    v203 = (v127 & 0xFFFFFFFFFFFFFF8);
    v204 = &v206[1];
    v207 = "evaluateWithModel:]";
    v206 = v196 + 1;
    v210 = v127;
    do
    {
      if (v211)
      {
        v130 = MEMORY[0x25F88F6D0](v129, v127);
        v124 = v198;
        v131 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v124 = v198;
        if (v129 >= v203[2].isa)
        {
          goto LABEL_101;
        }

        v130 = *(v127 + 8 * v129 + 32);
        v131 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          v128 = sub_25C82E43C();
          v215 = v124;
          if (!v128)
          {
            break;
          }

          goto LABEL_59;
        }
      }

      sub_25C7E92DC(&v220[v212], v124, &qword_27FC16048, qword_25C8309D0);
      if (v217(v124, 1, v48) == 1)
      {
        v132 = 0;
      }

      else
      {
        v132 = sub_25C82DF4C();
        (*v204)(v124, v48);
      }

      v133 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v130 setStreamFilter:v132 fromInclusive:v133 toDate:0 toInclusive:0];

      if (![v130 hasStreamFilter])
      {
        sub_25C82E27C();
        v172 = qword_281559838;
        sub_25C82E00C();
        v173 = 29;
        goto LABEL_91;
      }

      v134 = v209;
      if (([v209 respondsToSelector_] & 1) == 0 || (v135 = objc_msgSend(v134, sel_evaluateWithModel_, v130)) == 0)
      {
        sub_25C82E27C();
        v172 = qword_281559838;
        sub_25C82E00C();
        v173 = 30;
LABEL_91:

        sub_25C7E7DEC();
        swift_allocError();
        *v176 = v173;
        swift_willThrow();
        sub_25C7E97F4(v216, &qword_27FC16048, qword_25C8309D0);

        return;
      }

      v136 = v135;
      v137 = v197;
      sub_25C7E92DC(v216, v197, &qword_27FC16048, qword_25C8309D0);
      v138 = v217(v137, 1, v219);
      sub_25C7E97F4(v137, &qword_27FC16048, qword_25C8309D0);
      if (v138 == 1)
      {
        v139 = v195;
        v140 = v215;
        sub_25C829A28(v130, v195);
        v215 = v140;
        if (v140)
        {
          sub_25C7E97F4(v216, &qword_27FC16048, qword_25C8309D0);

          return;
        }

        v141 = v216;
        sub_25C7E97F4(v216, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E9274(v139, v141, &qword_27FC16048, qword_25C8309D0);
      }

      v142 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v143 = sub_25C82E07C();
      [v142 setDateFormat_];

      v144 = sub_25C82DF4C();
      v145 = [v142 stringFromDate_];

      if (!v145)
      {
        sub_25C82E0AC();
        v145 = sub_25C82E07C();
      }

      [v136 setEvaluationDate_];
      v146 = [v130 modelURL];
      v147 = v213;
      sub_25C82DE7C();

      sub_25C82DE1C();
      (v206->isa)(v147, v214);
      v148 = sub_25C82E07C();

      [v136 setModelName_];

      v149 = v136;
      MEMORY[0x25F88F4D0]();
      if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v150 = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25C82E1EC();
      }

      sub_25C82E20C();

      v205 = v223;
      v129 = (v129 + 1);
      v48 = v219;
      v127 = v210;
    }

    while (v131 != v128);
  }

  v178 = v48;
  v179 = v216;
  v180 = v193;
  sub_25C7E92DC(v216, v193, &qword_27FC16048, qword_25C8309D0);
  LODWORD(v178) = v217(v180, 1, v178);
  sub_25C7E97F4(v180, &qword_27FC16048, qword_25C8309D0);
  sub_25C82E25C();
  v181 = qword_281559838;
  sub_25C82E00C();

  if (v178 == 1)
  {
    v182 = v215;
    v183 = v220;
  }

  else
  {
    v183 = v220;
    sub_25C82B334(v179, *&v220[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier], *&v220[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier + 8]);
    v182 = v215;
  }

  v184 = v205;
  v185 = &v183[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore];
  v186 = __swift_project_boxed_opaque_existential_1(&v183[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore], *&v183[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore + 24]);
  v187 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
  v188 = *v186;
  sub_25C812D1C(&v183[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate], v184, 1);
  if (v182)
  {
    sub_25C7E97F4(v179, &qword_27FC16048, qword_25C8309D0);

    goto LABEL_55;
  }

  v189 = *__swift_project_boxed_opaque_existential_1(v185, *(v185 + 3));
  sub_25C812D1C(&v183[v187], v199, 0);

  sub_25C82E25C();
  v190 = qword_281559838;
  sub_25C82E00C();

  sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
  sub_25C82E29C();
  sub_25C7E97F4(v179, &qword_27FC16048, qword_25C8309D0);
}

void sub_25C7E35E8(void *a1, void *a2)
{
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v5 = *(*(v246 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v246);
  v236 = &v231[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v237 = &v231[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v238 = &v231[-v11];
  MEMORY[0x28223BE20](v10);
  v243 = &v231[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v239 = &v231[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v231[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v231[-v21];
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  isa = v247[-1].isa;
  v23 = *(isa + 8);
  v24 = MEMORY[0x28223BE20](v247);
  v241 = &v231[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v231[-v27];
  MEMORY[0x28223BE20](v26);
  v245 = &v231[-v29];
  v254 = sub_25C82DEAC();
  v256 = *(v254 - 8);
  v30 = *(v256 + 64);
  v31 = MEMORY[0x28223BE20](v254);
  v242 = &v231[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v249 = &v231[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v253 = &v231[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v251 = &v231[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v248 = &v231[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v240 = &v231[-v42];
  MEMORY[0x28223BE20](v41);
  v252 = &v231[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v250 = &v231[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v231[-v49];
  MEMORY[0x28223BE20](v48);
  v258 = &v231[-v51];
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v52 = qword_281559838;
  sub_25C82E00C();

  if (a1 && a2)
  {
    v53 = a1;
    v54 = a2;
    sub_25C82E25C();
    v55 = qword_281559838;
    sub_25C82E00C();

    v56 = v255;
    sub_25C7E53C0(v53, v54);
    v57 = v2;

    if (v2)
    {
      return;
    }
  }

  else
  {
    v57 = v2;
    v56 = v255;
  }

  v235 = v18;
  v58 = v256;
  v59 = v254;
  v234 = *(v256 + 56);
  v234(v258, 1, 1, v254);
  v60 = *(v56 + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
  if (v60)
  {
    v61 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    v62 = v56 + v61;
    v58 = v256;
    sub_25C7E92DC(v62, v50, &qword_27FC16040, &unk_25C830480);
    if ((*(v58 + 48))(v50, 1, v59) == 1)
    {
      sub_25C7E97F4(v50, &qword_27FC16040, &unk_25C830480);
      v56 = v255;
      goto LABEL_11;
    }

    v67 = *(v58 + 32);
    v68 = v252;
    v247 = (v58 + 32);
    v245 = v67;
    (v67)(v252, v50, v59);
    v69 = v60;
    v70 = sub_25C82E25C();
    v71 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v70))
    {
      isa = v57;
      v72 = v69;
      v73 = v71;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v257[0] = v75;
      *v74 = 136315138;
      v76 = [v72 0x2799B9363];

      if (!v76)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v77 = sub_25C82E0AC();
      v79 = v78;

      v80 = sub_25C7E77E4(v77, v79, v257);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_25C7D2000, v73, v70, "Found selected model from current metadata: %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x25F890110](v75, -1, -1);
      MEMORY[0x25F890110](v74, -1, -1);

      v57 = isa;
      v59 = v254;
      v58 = v256;
      v68 = v252;
    }

    v81 = [v69 selectedModelName];
    if (v81)
    {
      v82 = v81;
      v83 = sub_25C82E0AC();
      v85 = v84;

      v86 = sub_25C82E0AC();
      if (v85)
      {
        if (v83 == v86 && v85 == v87)
        {

LABEL_40:
          sub_25C82E25C();
          v140 = qword_281559838;
          sub_25C82E00C();

          p_info = ODCurareEvaluationAndReportingModule.info;
          (*(v58 + 8))(v68, v59);
LABEL_41:
          v119 = 1;
          v109 = v258;
LABEL_44:
          v93 = v250;
          goto LABEL_45;
        }

        v139 = sub_25C82E4EC();

        if (v139)
        {
          goto LABEL_40;
        }

LABEL_26:
        v110 = sub_25C82DE1C();
        v112 = v111;
        v113 = [v69 selectedModelName];
        if (v113)
        {
          v114 = v113;
          v115 = sub_25C82E0AC();
          v117 = v116;

          if (v110 == v115 && v112 == v117)
          {

            v58 = v256;
            v93 = v250;
            v68 = v252;
LABEL_33:
            v109 = v258;
            sub_25C7E97F4(v258, &qword_27FC16040, &unk_25C830480);
            (v245)(v109, v68, v59);
            v234(v109, 0, 1, v59);
            v119 = 0;
            p_info = (ODCurareEvaluationAndReportingModule + 32);
            goto LABEL_45;
          }

          v118 = sub_25C82E4EC();

          v58 = v256;
          v68 = v252;
          if (v118)
          {

            v93 = v250;
            goto LABEL_33;
          }
        }

        else
        {
        }

        v120 = sub_25C82E25C();
        v121 = qword_281559838;
        v122 = v240;
        (*(v58 + 16))(v240, v68, v59);
        if (os_log_type_enabled(v121, v120))
        {
          isa = v57;
          v123 = v69;
          v247 = v121;
          v124 = swift_slowAlloc();
          v125 = v58;
          v126 = swift_slowAlloc();
          v257[0] = v126;
          *v124 = 136315394;
          v127 = sub_25C82DE1C();
          v128 = v122;
          v129 = v59;
          v131 = v130;
          v245 = *(v125 + 8);
          (v245)(v128, v129);
          v132 = sub_25C7E77E4(v127, v131, v257);

          *(v124 + 4) = v132;
          *(v124 + 12) = 2080;
          v133 = [v123 selectedModelName];

          if (!v133)
          {
LABEL_68:
            __break(1u);
            return;
          }

          v134 = sub_25C82E0AC();
          v136 = v135;

          v137 = sub_25C7E77E4(v134, v136, v257);

          *(v124 + 14) = v137;
          v138 = v247;
          _os_log_impl(&dword_25C7D2000, v247, v120, "Mismatch in state, selectedModelURL does not match metadata.selectedModelName. %s vs %s", v124, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F890110](v126, -1, -1);
          MEMORY[0x25F890110](v124, -1, -1);

          (v245)(v252, v129);
          v119 = 1;
          v57 = isa;
          v59 = v129;
          v58 = v256;
        }

        else
        {

          v141 = *(v58 + 8);
          v141(v122, v59);
          v141(v68, v59);
          v119 = 1;
        }

        v109 = v258;
        p_info = ODCurareEvaluationAndReportingModule.info;
        goto LABEL_44;
      }
    }

    else
    {
      sub_25C82E0AC();
    }

    goto LABEL_26;
  }

LABEL_11:
  v63 = *__swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore), *(v56 + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore + 24));
  sub_25C8081D4(v22);
  if (!v57)
  {
    v64 = v247;
    if ((*(isa + 6))(v22, 1, v247) != 1)
    {
      isa = 0;
      v88 = v22;
      v89 = v245;
      sub_25C7E9274(v88, v245, &qword_27FC16090, qword_25C8304A0);
      v90 = sub_25C82E25C();
      v91 = qword_281559838;
      sub_25C7E92DC(v89, v28, &qword_27FC16090, qword_25C8304A0);
      v92 = os_log_type_enabled(v91, v90);
      v93 = v250;
      if (v92)
      {
        v252 = v91;
        v94 = swift_slowAlloc();
        v233 = v94;
        v240 = swift_slowAlloc();
        v257[0] = v240;
        *v94 = 136315138;
        v95 = v241;
        sub_25C7E92DC(v28, v241, &qword_27FC16090, qword_25C8304A0);

        v96 = v256;
        v97 = v248;
        v59 = v254;
        (*(v256 + 32))(v248, v95, v254);
        sub_25C7E97AC(&qword_27FC16098, MEMORY[0x277CC9260]);
        v98 = sub_25C82E4DC();
        v232 = v90;
        v99 = v98;
        v101 = v100;
        (*(v96 + 8))(v97, v59);
        sub_25C7E97F4(v28, &qword_27FC16090, qword_25C8304A0);
        v102 = v99;
        v103 = v247;
        v104 = v95;
        v105 = sub_25C7E77E4(v102, v101, v257);

        v106 = v233;
        *(v233 + 1) = v105;
        v107 = v252;
        _os_log_impl(&dword_25C7D2000, v252, v232, "Loaded selected model from previous metadata: %s", v106, 0xCu);
        v108 = v240;
        __swift_destroy_boxed_opaque_existential_0Tm(v240);
        MEMORY[0x25F890110](v108, -1, -1);
        MEMORY[0x25F890110](v106, -1, -1);

        v109 = v258;
        sub_25C7E97F4(v258, &qword_27FC16040, &unk_25C830480);
      }

      else
      {
        sub_25C7E97F4(v28, &qword_27FC16090, qword_25C8304A0);
        v109 = v258;
        sub_25C7E97F4(v258, &qword_27FC16040, &unk_25C830480);
        v59 = v254;
        v103 = v64;
        v96 = v256;
        v104 = v241;
      }

      sub_25C7E9274(v245, v104, &qword_27FC16090, qword_25C8304A0);

      (*(v96 + 32))(v109, v104, v59);
      v234(v109, 0, 1, v59);
      v119 = 0;
      v57 = isa;
      v58 = v96;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
LABEL_45:
      sub_25C7E92DC(v109, v93, &qword_27FC16040, &unk_25C830480);
      if ((*(v58 + 48))(v93, 1, v59) == 1)
      {
        sub_25C7E97F4(v93, &qword_27FC16040, &unk_25C830480);
        sub_25C82E25C();
        v142 = p_info[263];
        sub_25C82E00C();

        v143 = 0;
LABEL_47:
        sub_25C82E25C();
        v144 = p_info[263];
        sub_25C82E00C();

        sub_25C82E0AC();
        v145 = v248;
        sub_25C82DE0C();

        v146 = objc_allocWithZone(ODCurareCandidateModel);
        v147 = sub_25C82DE2C();
        v148 = sub_25C82E07C();
        v149 = [v146 initWithModelURL:v147 withBiomeStreamIdentifier:v148 andMetadata:0];

        v255 = *(v58 + 8);
        (v255)(v145, v59);
LABEL_48:
        v150 = sub_25C82E25C();
        v151 = p_info[263];
        if (os_log_type_enabled(v151, v150))
        {
          v152 = v151;
          v153 = v149;
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v257[0] = v155;
          *v154 = 136315138;
          if (v153)
          {
            v156 = v155;

            v157 = [v153 modelURL];
            v158 = v242;
            sub_25C82DE7C();

            sub_25C7E97AC(&qword_27FC16098, MEMORY[0x277CC9260]);
            v159 = sub_25C82E4DC();
            v160 = v59;
            v162 = v161;
            (v255)(v158, v160);
            v163 = sub_25C7E77E4(v159, v162, v257);

            *(v154 + 4) = v163;
            _os_log_impl(&dword_25C7D2000, v152, v150, "Returning candidate model with URL: %s", v154, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v156);
            MEMORY[0x25F890110](v156, -1, -1);
            MEMORY[0x25F890110](v154, -1, -1);

            goto LABEL_56;
          }

          __break(1u);
        }

        else if (v149)
        {
          goto LABEL_56;
        }

        __break(1u);
        goto LABEL_67;
      }

      LODWORD(v250) = v119;
      v164 = v251;
      (*(v58 + 32))(v251, v93, v59);
      v165 = v255;
      sub_25C82DE5C();
      v166 = (v165 + OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore);
      v167 = __swift_project_boxed_opaque_existential_1((v165 + OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore), *(v165 + OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore + 24));
      v168 = sub_25C82DFBC();
      v169 = v59;
      v170 = v168[-1].isa;
      v171 = v170[7].isa;
      v172 = v235;
      v252 = v168;
      v255 = v171;
      v171(v235, 1, 1);
      v173 = *v167;
      v174 = v164;
      v175 = v253;
      sub_25C822E90(v174, v172, v253, v249);
      if (v57)
      {
        sub_25C7E97F4(v172, &qword_27FC16048, qword_25C8309D0);
        v176 = *(v58 + 8);
        v176(v175, v169);
        v176(v251, v169);
        goto LABEL_56;
      }

      v247 = v170;
      sub_25C7E97F4(v172, &qword_27FC16048, qword_25C8309D0);
      v177 = __swift_project_boxed_opaque_existential_1(v166, v166[3]);
      v178 = v246;
      v179 = v246[12];
      v180 = v239;
      (v255)(v239, 1, 1, v252);
      v181 = *v177;
      v182 = v243;
      sub_25C820990(v257, v243, &v243[v179], v251, v180);
      isa = 0;
      v255 = v257[0];
      v245 = v257[1];
      v183 = v257[2];
      v184 = v257[3];
      v185 = v257[4];
      v186 = v257[5];
      v187 = v178[16];
      v188 = v180;
      v189 = v246[20];
      v190 = &v182[v246[24]];
      v191 = &v182[v246[28]];
      sub_25C7E97F4(v188, &qword_27FC16048, qword_25C8309D0);
      *&v182[v187] = v255;
      *&v182[v189] = v245;
      v192 = v246;
      *v190 = v183;
      v190[1] = v184;
      *v191 = v185;
      v191[1] = v186;
      v193 = v238;
      sub_25C7E92DC(v182, v238, &qword_27FC16080, &qword_25C830490);
      v194 = v192[12];

      v195 = *&v193[v192[24] + 8];

      v196 = &v193[v192[28]];
      if (v196[1])
      {
        v197 = *v196;
        v198 = *(v256 + 8);
        v199 = v254;
        v198(&v193[v194], v254);
        v200 = v247[1].isa;
        ++v247;
        v245 = v200;
        (v200)(v193, v252);
        v201 = v237;
        sub_25C7E92DC(v243, v237, &qword_27FC16080, &qword_25C830490);
        v255 = v192[12];

        v241 = *&v201[v192[20]];
        v202 = *&v201[v192[24] + 8];

        v203 = *&v201[v192[28] + 8];

        v204 = objc_allocWithZone(ODCurareCandidateModel);
        v205 = v249;
        v206 = sub_25C82DE2C();
        v207 = sub_25C82E07C();

        v208 = v204;
        v209 = v241;
        v143 = [v208 initWithModelURL:v206 withCoreDuetStreamIdentifier:v207 andMetadata:v241];

        v58 = v256;
        sub_25C7E97F4(v243, &qword_27FC16080, &qword_25C830490);
        v198(v205, v199);
        v198(v253, v199);
        v198(v251, v199);
        v210 = &v201[v255];
        v255 = v198;
        v198(v210, v199);
        v59 = v199;
        (v245)(v201, v252);
        v149 = v143;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
      }

      else
      {
        v211 = *(v256 + 8);
        v212 = v254;
        v211(&v193[v194], v254);
        v213 = v247[1].isa;
        v214 = v252;
        ++v247;
        v245 = v213;
        (v213)(v193);
        v215 = v236;
        sub_25C7E92DC(v243, v236, &qword_27FC16080, &qword_25C830490);
        v216 = v192[12];

        v217 = &v215[v192[24]];
        v218 = v217[1];
        v255 = *v217;
        v219 = *&v215[v192[28] + 8];

        p_info = ODCurareEvaluationAndReportingModule.info;
        v220 = &v215[v216];
        if (!v218)
        {
          v211(v220, v212);
          (v245)(v215, v214);
          sub_25C82E27C();
          v230 = qword_281559838;
          sub_25C82E00C();

          sub_25C7E97F4(v243, &qword_27FC16080, &qword_25C830490);
          v211(v249, v212);
          v211(v253, v212);
          v211(v251, v212);
          v143 = 0;
          v59 = v212;
          v58 = v256;
          goto LABEL_47;
        }

        v211(v220, v212);
        (v245)(v215, v214);
        v221 = v192;
        v222 = v237;
        sub_25C7E92DC(v243, v237, &qword_27FC16080, &qword_25C830490);
        v241 = v221[12];

        v240 = *&v222[v221[20]];
        v223 = *&v222[v221[24] + 8];

        v224 = *&v222[v221[28] + 8];

        v225 = objc_allocWithZone(ODCurareCandidateModel);
        v226 = sub_25C82DE2C();
        v227 = sub_25C82E07C();

        v228 = v225;
        v229 = v240;
        v143 = [v228 initWithModelURL:v226 withBiomeStreamIdentifier:v227 andMetadata:v240];

        sub_25C7E97F4(v243, &qword_27FC16080, &qword_25C830490);
        v211(v249, v212);
        v211(v253, v212);
        v211(v251, v212);
        v255 = v211;
        v211(&v222[v241], v212);
        (v245)(v222, v252);
        v149 = v143;
        v59 = v212;
        v58 = v256;
      }

      if ((v250 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    sub_25C7E97F4(v22, &qword_27FC16088, &qword_25C830498);
    sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    v66 = qword_281559838;
    sub_25C82E00C();

    goto LABEL_41;
  }

LABEL_56:
  sub_25C7E97F4(v258, &qword_27FC16040, &unk_25C830480);
}

void sub_25C7E53C0(__objc2_class_ro **a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v197 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v190 = v171 - v9;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v188 = *(v189 - 8);
  v10 = *(v188 + 64);
  v11 = MEMORY[0x28223BE20](v189);
  v187 = v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v186 = v171 - v13;
  v14 = sub_25C82DEAC();
  v193 = *(v14 - 8);
  v15 = *(v193 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v191 = v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v192 = v171 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v196 = v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v209 = v171 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v211 = v171 - v27;
  MEMORY[0x28223BE20](v26);
  v208 = v171 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v194 = v171 - v31;
  v32 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  p_info = ODCurareEvaluationAndReportingModule.info;
  v34 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v32))
  {
    v35 = v34;
    v210 = v3;
    v36 = v19;
    v37 = v35;
    v38 = swift_slowAlloc();
    v39 = v14;
    v40 = v20;
    v41 = a1;
    v42 = v5;
    v43 = swift_slowAlloc();
    *v38 = 138412290;
    v44 = v197;
    *(v38 + 4) = v197;
    *v43 = v44;
    v45 = v44;
    _os_log_impl(&dword_25C7D2000, v37, v32, "Start selectModel with selectionPolicy: %@", v38, 0xCu);
    sub_25C7E97F4(v43, &qword_27FC16100, &qword_25C8305B8);
    v46 = v43;
    v5 = v42;
    a1 = v41;
    v20 = v40;
    v14 = v39;
    p_info = ODCurareEvaluationAndReportingModule.info;
    MEMORY[0x25F890110](v46, -1, -1);
    MEMORY[0x25F890110](v38, -1, -1);

    v19 = v36;
    v4 = v210;
  }

  if (([a1 isDefaultModel] & 1) == 0)
  {
    sub_25C82E27C();
    v51 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v52 = 26;
    swift_willThrow();
    return;
  }

  v47 = *__swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore], *&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore + 24]);
  v48 = sub_25C8131CC(1);
  if (v4)
  {
    return;
  }

  if (!(v48 >> 62))
  {
    v49 = v48;
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_36:
    sub_25C82E25C();
    v95 = p_info[263];
    sub_25C82E00C();

    v96 = *&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata];
    if (v96)
    {
      v97 = v96;

      [v97 setSelectedModelName_];

      sub_25C82E0AC();
      v98 = v194;
      sub_25C82DE9C();

      v99 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
      swift_beginAccess();
      sub_25C7E6CC0(v98, &v5[v99], &qword_27FC16040, &unk_25C830480);
      swift_endAccess();
      return;
    }

    goto LABEL_71;
  }

LABEL_35:
  v49 = v48;
  if (!sub_25C82E43C())
  {
    goto LABEL_36;
  }

LABEL_9:
  v213 = MEMORY[0x277D84F90];
  v50 = *__swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore], *&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore + 24]);
  v48 = sub_25C81EF2C();
  if (v4)
  {

    return;
  }

  v184 = v49;
  v185 = v14;
  v173 = 0;
  v171[0] = v5;
  v53 = *(v48 + 16);
  v172 = a1;
  v171[1] = v48;
  if (v53)
  {
    v183 = v19[12];
    v182 = v19[16];
    v181 = v19[20];
    v180 = &v208[v19[24]];
    v179 = &v208[v19[28]];
    v48 += (*(v20 + 80) + 32) & ~*(v20 + 80);
    v178 = *(v20 + 72);
    v177 = v209 + 8;
    v174 = v196 + 8;
    v176 = (v193 + 32);
    v54 = MEMORY[0x277D84F90];
    v55 = &qword_25C830490;
    v175 = (v193 + 8);
    do
    {
      v206 = v48;
      v207 = v53;
      v195 = v54;
      v59 = v208;
      sub_25C7E92DC(v48, v208, &qword_27FC16080, v55);
      v204 = *&v59[v182];
      v203 = *&v59[v181];
      v60 = *v180;
      v201 = *(v180 + 1);
      v202 = v60;
      v61 = *v179;
      v199 = *(v179 + 1);
      v200 = v61;
      v62 = v19[12];
      v198 = v19[16];
      v63 = v211;
      v64 = (v211 + v19[24]);
      v65 = (v211 + v19[28]);
      v66 = v19[20];
      v67 = sub_25C82DFBC();
      v205 = *(v67 - 1);
      v68 = *(v205 + 32);
      v210 = v67;
      v68(v63, v59);
      v69 = v63 + v62;
      v70 = &v59[v183];
      v14 = v55;
      a1 = v185;
      (*v176)(v69, v70, v185);
      v71 = v203;
      *(v63 + v198) = v204;
      *(v63 + v66) = v71;
      v72 = v201;
      *v64 = v202;
      v64[1] = v72;
      v73 = v199;
      *v65 = v200;
      v65[1] = v73;
      v74 = v209;
      sub_25C7E92DC(v63, v209, &qword_27FC16080, v14);
      v75 = v19[12];
      v76 = *&v74[v19[16]];

      v5 = v177;
      v77 = *&v177[v19[24]];

      v78 = *&v5[v19[28]];

      if (v76)
      {
        v204 = *v175;
        v204(&v74[v75], a1);
        v205 = *(v205 + 8);
        (v205)(v74, v210);
        v79 = v196;
        sub_25C7E92DC(v63, v196, &qword_27FC16080, v14);
        v14 = v19[12];
        v80 = *(v79 + v19[16]);
        v5 = v76;

        v81 = v174;
        v82 = *(v174 + v19[24]);

        v83 = *(v81 + v19[28]);

        v84 = objc_allocWithZone(ODCurareModelInformation);
        v85 = sub_25C82DE2C();
        v86 = [v84 initWithModelInformation:v5 modelURL:v85];

        v204((v79 + v14), a1);
        (v205)(v79, v210);
        v87 = v86;
        MEMORY[0x25F88F4D0]();
        if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v55 = &qword_25C830490;
        sub_25C7E97F4(v211, &qword_27FC16080, &qword_25C830490);
        v54 = v213;
        v57 = v206;
        v58 = v207;
      }

      else
      {
        (*v175)(&v74[v75], a1);
        (*(v205 + 8))(v74, v210);
        sub_25C82E25C();
        v56 = qword_281559838;
        sub_25C82E00C();

        sub_25C7E97F4(v63, &qword_27FC16080, v14);
        v54 = v195;
        v57 = v206;
        v58 = v207;
        v55 = v14;
      }

      v48 = v57 + v178;
      v53 = v58 - 1;
    }

    while (v53);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  if (v54 >> 62)
  {
    v48 = sub_25C82E43C();
    p_info = v48;
    if (v48)
    {
LABEL_24:
      v4 = 0;
      v210 = (v54 & 0xC000000000000001);
      v20 = v54 & 0xFFFFFFFFFFFFFF8;
      v211 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v210)
        {
          v48 = MEMORY[0x25F88F6D0](v4, v54);
        }

        else
        {
          if (v4 >= *(v20 + 16))
          {
            goto LABEL_34;
          }

          v48 = *(v54 + 8 * v4 + 32);
        }

        v5 = v48;
        a1 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v88 = v54;
        v89 = [v48 modelInformation];
        v90 = [v89 modelName];

        if (!v90)
        {
          break;
        }

        v91 = sub_25C82E0AC();
        v19 = v92;

        v14 = sub_25C80BF18(v184, v91, v19);

        v93 = v211;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v212 = v93;
        sub_25C7FC9EC(v14, v5, isUniquelyReferenced_nonNull_native);

        v211 = v212;
        ++v4;
        v54 = v88;
        if (a1 == p_info)
        {
          goto LABEL_40;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }
  }

  else
  {
    p_info = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (p_info)
    {
      goto LABEL_24;
    }
  }

  v211 = MEMORY[0x277D84F98];
LABEL_40:
  v100 = [objc_allocWithZone(ODCurareReportFillerModelInformation) init];
  if (!v100)
  {
    goto LABEL_72;
  }

  v101 = v100;
  v195 = v54;
  v102 = v172;
  v103 = [v172 modelURL];
  v104 = v192;
  sub_25C82DE7C();

  sub_25C82DE1C();
  v105 = v193 + 8;
  v106 = *(v193 + 8);
  v107 = v185;
  v106(v104, v185);
  v108 = sub_25C82E07C();

  [v101 setModelName_];

  [v101 setIsDefaultModel_];
  v109 = v101;
  v110 = [v102 modelURL];
  sub_25C82DE7C();

  v111 = objc_allocWithZone(ODCurareModelInformation);
  v112 = sub_25C82DE2C();
  v113 = [v111 initWithModelInformation:v109 modelURL:v112];

  v206 = v106;
  v207 = v105;
  v106(v104, v107);
  v209 = v109;
  v114 = [v109 modelName];
  if (!v114)
  {
    goto LABEL_73;
  }

  v115 = v114;
  v116 = sub_25C82E0AC();
  v118 = v117;

  v119 = sub_25C80BF18(v184, v116, v118);

  v120 = v211;
  v121 = v211 + 64;
  v122 = 1 << *(v211 + 32);
  v123 = -1;
  if (v122 < 64)
  {
    v123 = ~(-1 << v122);
  }

  v124 = v123 & *(v211 + 64);
  v125 = (v122 + 63) >> 6;
  v126 = v113;

  v127 = 0;
  v128 = v119;
  v208 = v126;
  v210 = v126;
  if (v124)
  {
LABEL_51:
    while (1)
    {
      v130 = (v127 << 9) | (8 * __clz(__rbit64(v124)));
      v131 = *(*(v120 + 56) + v130);
      v132 = *(*(v120 + 48) + v130);

      v134 = v173;
      v135 = sub_25C80EEBC(v133, v119, v197);
      v173 = v134;
      if (v134)
      {
        break;
      }

      v124 &= v124 - 1;
      if (v135 & 1) != 0 && (v136 = v173, v137 = sub_25C80EEBC(v131, v128, v197), v173 = v136, (v137))
      {

        v128 = v131;
        v210 = v132;
        if (!v124)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if (!v124)
        {
          goto LABEL_47;
        }
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_47:
      v129 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        __break(1u);
        goto LABEL_70;
      }

      if (v129 >= v125)
      {
        break;
      }

      v124 = *(v121 + 8 * v129);
      ++v127;
      if (v124)
      {
        v127 = v129;
        goto LABEL_51;
      }
    }

    v138 = [v210 modelURL];
    sub_25C82DE7C();

    v139 = [v172 modelURL];
    v140 = v192;
    sub_25C82DE7C();

    sub_25C7E97AC(&qword_281559830, MEMORY[0x277CC9260]);
    v141 = v185;
    LOBYTE(v139) = sub_25C82E06C();
    v142 = v206;
    v206(v140, v141);
    if (v139)
    {
      v143 = v171[0];
      v144 = *__swift_project_boxed_opaque_existential_1((v171[0] + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore), *(v171[0] + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore + 24));
      v145 = v190;
      v146 = v173;
      sub_25C8081D4(v190);
      v173 = v146;
      if (v146)
      {

        v142(v191, v141);

        return;
      }

      if ((*(v188 + 48))(v145, 1, v189) == 1)
      {
        sub_25C7E97F4(v145, &qword_27FC16088, &qword_25C830498);
        v155 = *(v143 + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
        if (!v155)
        {
          goto LABEL_75;
        }

        v156 = v155;

        [v156 setSelectedModelName_];

        sub_25C82E0AC();
        v157 = v194;
        sub_25C82DE9C();

        v158 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
      }

      else
      {
        v159 = v186;
        sub_25C7E9274(v145, v186, &qword_27FC16090, qword_25C8304A0);
        v160 = *(v143 + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
        if (!v160)
        {
          goto LABEL_76;
        }

        v161 = v160;

        v162 = v187;
        sub_25C7E92DC(v159, v187, &qword_27FC16090, qword_25C8304A0);
        v163 = v189;
        v164 = *(v162 + *(v189 + 48));
        v165 = [v164 selectedModelName];

        [v161 setSelectedModelName_];
        v166 = v206;
        v206(v162, v141);
        sub_25C7E9274(v159, v162, &qword_27FC16090, qword_25C8304A0);

        v167 = v193;
        v157 = v194;
        v168 = v162;
        v142 = v166;
        (*(v193 + 32))(v194, v168, v141);
        (*(v167 + 56))(v157, 0, 1, v141);
        v158 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
        v143 = v171[0];
      }

      swift_beginAccess();
      sub_25C7E6CC0(v157, v143 + v158, &qword_27FC16040, &unk_25C830480);
      swift_endAccess();
      v150 = v191;
    }

    else
    {
      v147 = v171[0];
      v148 = *(v171[0] + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
      if (!v148)
      {
        goto LABEL_74;
      }

      v149 = v148;

      v150 = v191;
      sub_25C82DE1C();
      v151 = sub_25C82E07C();

      [v149 setSelectedModelName_];

      v152 = v193;
      v153 = v194;
      (*(v193 + 16))(v194, v150, v141);
      (*(v152 + 56))(v153, 0, 1, v141);
      v154 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
      swift_beginAccess();
      sub_25C7E6CC0(v153, v147 + v154, &qword_27FC16040, &unk_25C830480);
      swift_endAccess();
    }

    v169 = v208;
    sub_25C82E25C();
    v170 = qword_281559838;
    sub_25C82E00C();

    v142(v150, v141);
  }
}

id ODCurareInterfaceModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ODCurareInterfaceModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODCurareInterfaceModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ODCurareInterfaceModule()
{
  result = qword_27FC160A0;
  if (!qword_27FC160A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C7E6CC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7E6D28(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

size_t sub_25C7E6D74(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B8, &qword_25C830570);
  v10 = *(sub_25C82DFBC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25C82DFBC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25C7E6F4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B0, &unk_25C8308E0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25C7E7050(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160E0, &qword_25C830598);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_25C7E715C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16110, &qword_25C8305C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16118, &unk_25C8305D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7E7310(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_25C7E7444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160D0, &qword_25C830588);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_25C7E7578(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_25C7E7788(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25C7E77E4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25C7E77E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C7E78B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_25C7E9854(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25C7E78B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25C7E79BC(a5, a6);
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
    result = sub_25C82E3CC();
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

uint64_t sub_25C7E79BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_25C7E7A08(a1, a2);
  sub_25C7E7B38(&unk_286E6AE28);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25C7E7A08(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25C7E7C24(v5, 0);
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

  result = sub_25C82E3CC();
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
        v10 = sub_25C82E15C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25C7E7C24(v10, 0);
        result = sub_25C82E39C();
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

uint64_t sub_25C7E7B38(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25C7E7C98(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25C7E7C24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16108, &qword_25C8305C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25C7E7C98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16108, &qword_25C8305C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_25C7E7D8C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_25C7E7D9C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25C7E7DBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_25C7E7DEC()
{
  result = qword_27FC16070;
  if (!qword_27FC16070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16070);
  }

  return result;
}

uint64_t sub_25C7E7E40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C7E81F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C7E7F6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C7E7F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      v26 = sub_25C82DF5C();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C7E81F0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v118 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v118 - v17;
  result = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_25C807028(a4);
    }

    v113 = v6;
    v141 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *(result + 16 * a4);
        v116 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_25C7E8BDC(*v10 + a3[9] * v115, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v113)
        {
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_25C807028(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_25C806F9C(a4 - 1);
        result = v141;
        a4 = *(v141 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v23 = v21;
    v126 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v131 = v20;
      v120 = v6;
      v128 = *a3;
      v24 = v128;
      v25 = v10[9];
      v5 = v128 + v25 * (v21 + 1);
      v26 = v10[2];
      v27 = v138;
      v26(v138, v5, v9);
      v28 = v24 + v25 * v23;
      v29 = v139;
      v130 = v26;
      v26(v139, v28, v9);
      LODWORD(v132) = sub_25C82DF5C();
      v30 = v9;
      v31 = v10[1];
      v31(v29, v30);
      v129 = v31;
      result = (v31)(v27, v30);
      v119 = v23;
      v32 = v23 + 2;
      v134 = v25;
      v33 = v128 + v25 * (v23 + 2);
      while (1)
      {
        v34 = v131;
        if (v131 == v32)
        {
          break;
        }

        v35 = v10;
        v36 = v138;
        v37 = v140;
        v38 = v130;
        (v130)(v138, v33, v140);
        v39 = v139;
        v38(v139, v5, v37);
        v40 = sub_25C82DF5C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v36;
        v10 = v35;
        result = v41(v42, v37);
        ++v32;
        v33 += v134;
        v5 += v134;
        if ((v132 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      a3 = v123;
      v22 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v23 = v119;
      if (v132)
      {
        if (v34 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v34)
        {
          v118 = v10;
          v43 = v134 * (v34 - 1);
          v44 = v34 * v134;
          v45 = v34;
          v46 = v119;
          v47 = v119 * v134;
          do
          {
            if (v46 != --v45)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v50 = v34;
              v5 = v49 + v47;
              v132 = *v135;
              (v132)(v125, v49 + v47, v140, v22);
              if (v47 < v43 || v5 >= v49 + v44)
              {
                v48 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v140;
                if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v49 + v43, v125, v48);
              a3 = v123;
              v22 = v126;
              v34 = v50;
            }

            ++v46;
            v43 -= v134;
            v44 -= v134;
            v47 += v134;
          }

          while (v46 < v45);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v23 = v119;
        }
      }
    }

    v51 = a3[1];
    if (v34 < v51)
    {
      if (__OFSUB__(v34, v23))
      {
        goto LABEL_126;
      }

      if (v34 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v23 + a4;
        }

        if (v52 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v52)
        {
          break;
        }
      }
    }

    v53 = v34;
    if (v34 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v126;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v126 + 2) + 1, 1, v126);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v54 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v54 >> 1)
    {
      result = sub_25C7E6F4C((v54 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v53;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v53;
    if (a4)
    {
      while (1)
      {
        v57 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v22 + 4);
          v59 = *(v22 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_114;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_117;
          }

          v80 = &v22[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_121;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v22[16 * v5];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_116;
        }

        v87 = &v22[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_119;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v57 - 1;
        if (v57 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v95 = v22;
        v96 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v57 + 40];
        sub_25C7E8BDC(*a3 + v10[9] * v96, *a3 + v10[9] * *&v22[16 * v57 + 32], *a3 + v10[9] * v5, v56);
        if (v6)
        {
        }

        if (v5 < v96)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_25C807028(v95);
        }

        if (a4 >= *(v95 + 2))
        {
          goto LABEL_111;
        }

        v97 = &v95[16 * a4];
        *(v97 + 4) = v96;
        *(v97 + 5) = v5;
        v141 = v95;
        result = sub_25C806F9C(v57);
        v22 = v141;
        v5 = *(v141 + 16);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v22[16 * v5 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_112;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_113;
      }

      v69 = &v22[16 * v5];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_115;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_118;
      }

      if (v73 >= v65)
      {
        v91 = &v22[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v94)
        {
          v57 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v127;
    a4 = v121;
    if (v127 >= v20)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v98 = *a3;
  v99 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v100 = v98 + v99 * (v34 - 1);
  v101 = -v99;
  v119 = v23;
  v102 = (v23 - v34);
  v132 = v98;
  v124 = v99;
  v5 = v98 + v34 * v99;
  v127 = v52;
LABEL_85:
  v130 = v100;
  v131 = v34;
  v128 = v5;
  v129 = v102;
  v103 = v100;
  while (1)
  {
    v104 = v138;
    v105 = v134;
    (v134)(v138, v5, v9, v22);
    v106 = v139;
    v105(v139, v103, v140);
    v107 = sub_25C82DF5C();
    a4 = v136;
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v34 = v131 + 1;
      v100 = &v130[v124];
      v102 = v129 - 1;
      v5 = v128 + v124;
      v53 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v23 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v110 = *v135;
    v111 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    v5 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_25C7E8BDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = sub_25C82DFBC();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = (a2 - a1) / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v19;
    if (v19 < 1)
    {
      v34 = a4 + v19;
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v19;
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = a2 + v31;
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = v32 + v31;
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = sub_25C82DF5C();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v18;
    v59 = a4 + v18;
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = sub_25C82DF5C();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = v50 + v24;
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  sub_25C80703C(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_25C7E9180(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25C7E9274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7E92DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_25C7E934C()
{
  v0 = sub_25C82DEAC();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_25C82DFBC();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_25C7E9660(319, &qword_281559820, MEMORY[0x277CC9578]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_25C7E9660(319, &qword_281559828, MEMORY[0x277CC9260]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_25C7E9660(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25C82E2FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25C7E96B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25C7E9748(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25C82E43C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_25C82E3BC();
}

uint64_t sub_25C7E97AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C7E97F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C7E9854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C7E98B4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_25C7E9918(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_25C7E98B0(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_25C7FD560(v4);
  *a1 = v2;
}

uint64_t sub_25C7E9990()
{
  sub_25C7E96B8(0, &qword_281559478, 0x277D86200);
  result = sub_25C82E2DC();
  qword_281559838 = result;
  return result;
}

id ODCurareEvaluationAndReportingModule.init(bundleIdentifier:dataProviderInstance:evaluationInstance:personalizationInstance:pruningPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v108 = a5;
  v107 = a4;
  v109 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v98 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v103 = &v84 - v16;
  v104 = sub_25C82DFBC();
  v105 = *(v104 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  v96 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_25C82DEAC();
  v91 = *(v106 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x28223BE20](v106);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ODCurareFileSystemModelStore();
  swift_allocObject();
  v21 = a6;

  v97 = sub_25C81D74C(a6, a1, a2);
  type metadata accessor for ODCurareDataBoundaryStore();
  v22 = swift_allocObject();
  v115 = a1;
  v116 = a2;
  v23 = v21;

  MEMORY[0x25F88F460](0xD000000000000018, 0x800000025C8329D0);
  v24 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v25 = sub_25C82E07C();

  v26 = [v24 init_];

  *(v22 + 16) = v26;
  *(v22 + 24) = a6;
  v101 = v22;
  v27 = type metadata accessor for ODCurareFileSystemModelEvaluationSummaryStore();
  swift_allocObject();
  v28 = v23;

  v85 = a1;
  v29 = sub_25C812BD0(a6, a1, a2);
  v30 = type metadata accessor for ODCurareFileSystemMetadataStore();
  v31 = swift_allocObject();
  v115 = a1;
  v116 = a2;
  v86 = v28;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xEF61746164617465);
  v32 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v33 = sub_25C82E07C();

  v34 = [v32 init_];

  *(v31 + 16) = v34;
  *(v31 + 24) = a6;
  v35 = a6;
  v117 = v99;
  v118 = &off_286E6AEB8;
  v115 = v97;
  v114[3] = v27;
  v114[4] = &off_286E6AEA0;
  v114[0] = v29;
  v113[3] = v30;
  v113[4] = &off_286E6AE78;
  v113[0] = v31;
  v99 = type metadata accessor for ODCurareEvaluationAndReportingModule();
  v36 = objc_allocWithZone(v99);
  v37 = *(v105 + 56);
  v87 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  v38 = v104;
  v37(&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate], 1, 1, v104);
  v37(&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_lastPersonalizationSampleDate], 1, 1, v38);
  v90 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkEvaluationDate;
  v88 = v37;
  v37(&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkEvaluationDate], 1, 1, v38);
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary] = 0;
  v89 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata] = 0;
  v39 = v91;
  v40 = v91 + 56;
  v41 = *(v91 + 56);
  v94 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
  v42 = v106;
  v41(&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL], 1, 1, v106);
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allUserDataDictionaryAdapted] = 0;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allUserDataDictionaryDefault] = 0;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary] = 0;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResult] = 0;
  v93 = v40;
  v92 = v41;
  v41(&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizedModelPath], 1, 1, v42);
  v43 = &v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier];
  *v43 = v85;
  v43[1] = a2;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance] = v107;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationInstance] = v108;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_dataProviderInstance] = v109;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_pruningPolicy] = v35;
  v97 = v86;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v44 = NSTemporaryDirectory();
  sub_25C82E0AC();

  v45 = v95;
  sub_25C82DDFC();

  (*(v39 + 32))(&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory], v45, v42);
  v46 = MEMORY[0x277D84F98];
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults] = MEMORY[0x277D84F98];
  v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_skipAdaptation] = 0;
  v47 = v96;
  sub_25C82DFAC();
  v48 = v104;
  (*(v105 + 32))(&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate], v47);
  v49 = *v43;
  v50 = v43[1];

  sub_25C82B87C(v49, v50);
  v52 = v51;

  v53 = 1;
  if (v52 != 0.0)
  {
    sub_25C82DF2C();
    v53 = 0;
  }

  v54 = 1;
  v55 = v103;
  v56 = v88;
  v88(v103, v53, 1, v48);
  v57 = v87;
  swift_beginAccess();
  sub_25C7E6CC0(v55, &v36[v57], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v59 = *v43;
  v58 = v43[1];

  sub_25C82BDBC(v59, v58);
  v61 = v60;

  v62 = v98;
  if (v61 != 0.0)
  {
    sub_25C82DF2C();
    v54 = 0;
  }

  v56(v62, v54, 1, v48);
  v63 = v90;
  swift_beginAccess();
  sub_25C7E6CC0(v62, &v36[v63], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v64 = *&v36[v89];
  *&v36[v89] = 0;

  v65 = v100;
  v92(v100, 1, 1, v106);
  v66 = v94;
  swift_beginAccess();
  sub_25C7E6CC0(v65, &v36[v66], &qword_27FC16040, &unk_25C830480);
  swift_endAccess();
  sub_25C7E9180(&v115, &v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore]);
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_boundaryList] = v101;
  sub_25C7E9180(v114, &v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore]);
  sub_25C7E9180(v113, &v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore]);
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary] = v46;
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResults] = v46;
  v67 = MEMORY[0x277D84F90];
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults] = MEMORY[0x277D84F90];
  *&v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_historicalModelEvaluationResults] = v67;
  v69 = *v43;
  v68 = v43[1];

  sub_25C829324(v69, v68);

  v71 = *v43;
  v70 = v43[1];

  v72 = sub_25C82950C(v71, v70);

  v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure] = v72 > 99;
  if (v72 >= 100)
  {
    v74 = *v43;
    v73 = v43[1];

    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v75 = qword_281559838;
    sub_25C82E00C();

    v111 = v74;
    v112 = v73;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

    v76 = [objc_opt_self() standardUserDefaults];
    v77 = sub_25C82E22C();
    v78 = sub_25C82E07C();

    [v76 setValue:v77 forKey:v78];
  }

  v36[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport] = 0;
  v110.receiver = v36;
  v110.super_class = v99;
  v79 = objc_msgSendSuper2(&v110, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v113);
  __swift_destroy_boxed_opaque_existential_0Tm(v114);
  __swift_destroy_boxed_opaque_existential_0Tm(&v115);
  v80 = v102;
  swift_getObjectType();
  v81 = *((*MEMORY[0x277D85000] & *v80) + 0x30);
  v82 = *((*MEMORY[0x277D85000] & *v80) + 0x34);
  swift_deallocPartialClassInstance();
  return v79;
}

void sub_25C7EA7A0()
{
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v1 = *(*(v276 - 1) + 64);
  v2 = MEMORY[0x28223BE20](v276);
  v264 = &v261 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v265 = &v261 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v266 = &v261 - v7;
  MEMORY[0x28223BE20](v6);
  v270 = &v261 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v267 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v277 = (&v261 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v261 - v16;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  isa = v278[-1].isa;
  v18 = isa[8];
  v19 = MEMORY[0x28223BE20](v278);
  v269 = (&v261 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v272 = (&v261 - v22);
  MEMORY[0x28223BE20](v21);
  v275 = (&v261 - v23);
  v24 = sub_25C82DEAC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v271 = &v261 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v280 = &v261 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v284 = (&v261 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v283 = (&v261 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v279 = &v261 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v268 = &v261 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v261 - v40;
  MEMORY[0x28223BE20](v39);
  v285 = (&v261 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v282 = (&v261 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v261 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v261 - v50;
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v52 = qword_281559838;
  sub_25C82E00C();

  v287 = v25;
  v288 = v51;
  v53 = *(v25 + 56);
  v286 = v24;
  v273 = v53;
  v53(v51, 1, 1, v24);
  v54 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
  v55 = v0;
  if (!v54)
  {
    goto LABEL_6;
  }

  v56 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
  swift_beginAccess();
  v281 = v0;
  sub_25C7E92DC(v0 + v56, v49, &qword_27FC16040, &unk_25C830480);
  v57 = v286;
  v58 = v287;
  if ((*(v287 + 48))(v49, 1, v286) == 1)
  {
    sub_25C7E97F4(v49, &qword_27FC16040, &unk_25C830480);
    v55 = v281;
LABEL_6:
    v59 = *__swift_project_boxed_opaque_existential_1((v55 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore), *(v55 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore + 24));
    v60 = v290;
    sub_25C8081D4(v17);
    v61 = v60;
    if (v60)
    {
      goto LABEL_51;
    }

    v62 = v278;
    v63 = (isa[6])(v17, 1, v278);
    v281 = v55;
    if (v63 != 1)
    {
      v104 = v275;
      sub_25C7E9274(v17, v275, &qword_27FC16090, qword_25C8304A0);
      v105 = sub_25C82E25C();
      v106 = qword_281559838;
      v107 = v104;
      v108 = v272;
      sub_25C7E92DC(v107, v272, &qword_27FC16090, qword_25C8304A0);
      if (os_log_type_enabled(v106, v105))
      {
        v285 = v106;
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v290 = 0;
        isa = v110;
        v289[0] = v110;
        *v109 = 136315138;
        v111 = v269;
        sub_25C7E92DC(v108, v269, &qword_27FC16090, qword_25C8304A0);

        v113 = v286;
        v112 = v287;
        v114 = v279;
        (*(v287 + 32))(v279, v111, v286);
        sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260]);
        v115 = sub_25C82E4DC();
        v117 = v116;
        (*(v112 + 8))(v114, v113);
        sub_25C7E97F4(v272, &qword_27FC16090, qword_25C8304A0);
        v118 = sub_25C7E77E4(v115, v117, v289);
        v119 = v111;

        *(v109 + 4) = v118;
        v120 = v285;
        _os_log_impl(&dword_25C7D2000, v285, v105, "Loaded selected model from previous metadata: %s", v109, 0xCu);
        v121 = isa;
        __swift_destroy_boxed_opaque_existential_0Tm(isa);
        v61 = v290;
        MEMORY[0x25F890110](v121, -1, -1);
        MEMORY[0x25F890110](v109, -1, -1);

        v122 = v278;
        v123 = v288;
        sub_25C7E97F4(v288, &qword_27FC16040, &unk_25C830480);
        v124 = v284;
        v125 = v282;
      }

      else
      {
        sub_25C7E97F4(v108, &qword_27FC16090, qword_25C8304A0);
        v123 = v288;
        sub_25C7E97F4(v288, &qword_27FC16040, &unk_25C830480);
        v122 = v62;
        v113 = v286;
        v112 = v287;
        v124 = v284;
        v125 = v282;
        v119 = v269;
      }

      sub_25C7E9274(v275, v119, &qword_27FC16090, qword_25C8304A0);

      (*(v112 + 32))(v123, v119, v113);
      v273(v123, 0, 1, v113);
      v66 = 0;
      v162 = v113;
      v68 = v112;
      v67 = v162;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
LABEL_42:
      sub_25C7E92DC(v123, v125, &qword_27FC16040, &unk_25C830480);
      v166 = (v68[6])(v125, 1, v67);
      v290 = v61;
      if (v166 == 1)
      {
        sub_25C7E97F4(v125, &qword_27FC16040, &unk_25C830480);
        sub_25C82E25C();
        v167 = p_info[263];
        sub_25C82E00C();

        v168 = 0;
LABEL_44:
        sub_25C82E25C();
        v169 = p_info[263];
        sub_25C82E00C();

        sub_25C82E0AC();
        v170 = v279;
        sub_25C82DE0C();

        v171 = objc_allocWithZone(ODCurareCandidateModel);
        v172 = sub_25C82DE2C();
        v173 = sub_25C82E07C();
        v174 = [v171 initWithModelURL:v172 withBiomeStreamIdentifier:v173 andMetadata:0];

        v175 = v68[1];
        v175(v170, v67);
LABEL_45:
        v176 = sub_25C82E25C();
        v177 = p_info[263];
        if (os_log_type_enabled(v177, v176))
        {
          v282 = v175;
          v178 = v177;
          v179 = v174;
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v289[0] = v181;
          *v180 = 136315138;
          if (v179)
          {
            v182 = v181;

            v183 = [v179 modelURL];
            v184 = v271;
            sub_25C82DE7C();

            sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260]);
            v185 = sub_25C82E4DC();
            v186 = v67;
            v188 = v187;
            v282(v184, v186);
            v189 = sub_25C7E77E4(v185, v188, v289);

            *(v180 + 4) = v189;
            _os_log_impl(&dword_25C7D2000, v178, v176, "Returning candidate model with URL: %s", v180, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v182);
            MEMORY[0x25F890110](v182, -1, -1);
            MEMORY[0x25F890110](v180, -1, -1);

LABEL_51:
            sub_25C7E97F4(v288, &qword_27FC16040, &unk_25C830480);
            return;
          }

          __break(1u);
        }

        else if (v174)
        {
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_63;
      }

      LODWORD(v278) = v66;
      v190 = v283;
      (v68[4])(v283, v125, v67);
      v191 = v281;
      sub_25C82DE5C();
      v192 = (v191 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore);
      v193 = __swift_project_boxed_opaque_existential_1((v191 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v191 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
      v194 = sub_25C82DFBC();
      v195 = v194[-1].isa;
      v196 = *(v195 + 7);
      v197 = v277;
      v285 = v194;
      v282 = v196;
      (v196)(v277, 1, 1);
      v198 = *v193;
      v199 = v290;
      sub_25C822E90(v190, v197, v124, v280);
      if (v199)
      {
        sub_25C7E97F4(v197, &qword_27FC16048, qword_25C8309D0);
        v200 = v68[1];
        v200(v124, v67);
        v200(v283, v67);
        goto LABEL_51;
      }

      v281 = v195;
      sub_25C7E97F4(v197, &qword_27FC16048, qword_25C8309D0);
      v201 = __swift_project_boxed_opaque_existential_1(v192, v192[3]);
      v202 = v276;
      v203 = v276[12];
      v204 = v267;
      (v282)(v267, 1, 1, v285);
      v205 = *v201;
      v206 = v270 + v203;
      v207 = v270;
      sub_25C820990(v289, v270, v206, v283, v204);
      v290 = 0;
      v282 = v289[0];
      v277 = v289[1];
      v208 = v204;
      v209 = v289[2];
      v210 = v289[3];
      v211 = v289[4];
      v212 = v289[5];
      v213 = v202[16];
      v214 = v276[20];
      v215 = (v207 + v276[24]);
      v216 = v207;
      v217 = (v207 + v276[28]);
      sub_25C7E97F4(v208, &qword_27FC16048, qword_25C8309D0);
      *(v216 + v213) = v282;
      *(v216 + v214) = v277;
      v218 = v276;
      *v215 = v209;
      v215[1] = v210;
      *v217 = v211;
      v217[1] = v212;
      v219 = v216;
      v220 = v266;
      sub_25C7E92DC(v216, v266, &qword_27FC16080, &qword_25C830490);
      v221 = v218[12];

      v222 = *(v220 + v218[24] + 8);

      v223 = (v220 + v218[28]);
      if (v223[1])
      {
        v224 = *v223;
        v225 = *(v287 + 8);
        v225(v220 + v221, v286);
        v282 = *(v281 + 1);
        v282(v220, v285);
        v226 = v265;
        sub_25C7E92DC(v219, v265, &qword_27FC16080, &qword_25C830490);
        v281 = v218[12];

        v277 = *(v226 + v218[20]);
        v227 = *(v226 + v218[24] + 8);

        v228 = *(v226 + v218[28] + 8);

        v229 = objc_allocWithZone(ODCurareCandidateModel);
        v230 = v280;
        v231 = sub_25C82DE2C();
        v232 = sub_25C82E07C();

        v233 = v229;
        v234 = v277;
        v168 = [v233 initWithModelURL:v231 withCoreDuetStreamIdentifier:v232 andMetadata:v277];

        sub_25C7E97F4(v270, &qword_27FC16080, &qword_25C830490);
        v235 = v230;
        v67 = v286;
        v68 = v287;
        v225(v235, v286);
        v225(v284, v67);
        v225(v283, v67);
        v225(v281 + v226, v67);
        v175 = v225;
        v282(v226, v285);
        v174 = v168;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
      }

      else
      {
        v236 = v286;
        v237 = *(v287 + 8);
        v237(v220 + v221, v286);
        v238 = *(v281 + 1);
        v281 = (v281 + 8);
        v277 = v238;
        (v238)(v220, v285);
        v239 = v264;
        sub_25C7E92DC(v219, v264, &qword_27FC16080, &qword_25C830490);
        v240 = v218[12];

        v241 = v239 + v218[24];
        v242 = *(v241 + 8);
        v275 = *v241;
        v243 = *(v239 + v218[28] + 8);

        v244 = v218;
        v245 = v280;
        v246 = v239 + v240;
        if (!v242)
        {
          v259 = v237;
          v237(v246, v236);
          (v277)(v239, v285);
          sub_25C82E27C();
          p_info = ODCurareEvaluationAndReportingModule.info;
          v260 = qword_281559838;
          sub_25C82E00C();

          sub_25C7E97F4(v219, &qword_27FC16080, &qword_25C830490);
          v259(v245, v236);
          v259(v284, v236);
          v259(v283, v236);
          v168 = 0;
          v68 = v287;
          v67 = v236;
          goto LABEL_44;
        }

        v282 = v237;
        v237(v246, v236);
        (v277)(v239, v285);
        v247 = v265;
        sub_25C7E92DC(v219, v265, &qword_27FC16080, &qword_25C830490);
        isa = v244[12];

        v273 = *(v247 + v244[20]);
        v248 = *(v247 + v244[24] + 8);

        v249 = *(v247 + v244[28] + 8);

        v250 = objc_allocWithZone(ODCurareCandidateModel);
        v251 = sub_25C82DE2C();
        v252 = sub_25C82E07C();

        v253 = v250;
        v254 = v286;
        v255 = v273;
        v168 = [v253 initWithModelURL:v251 withBiomeStreamIdentifier:v252 andMetadata:v273];

        sub_25C7E97F4(v219, &qword_27FC16080, &qword_25C830490);
        v256 = v245;
        v67 = v254;
        v257 = v254;
        v258 = v282;
        v282(v256, v257);
        v258(v284, v67);
        v258(v283, v67);
        v258((isa + v247), v67);
        v175 = v258;
        (v277)(v247, v285);
        v174 = v168;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        v68 = v287;
      }

      if ((v278 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    sub_25C7E97F4(v17, &qword_27FC16088, &qword_25C830498);
    sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    v65 = qword_281559838;
    sub_25C82E00C();

    v66 = 1;
    v67 = v286;
    v68 = v287;
    goto LABEL_39;
  }

  v69 = v58[4];
  v70 = v285;
  v269 = v58 + 4;
  v263 = v69;
  v69(v285, v49, v57);
  v71 = v54;
  v72 = sub_25C82E25C();
  p_info = ODCurareEvaluationAndReportingModule.info;
  v73 = qword_281559838;
  v74 = v58[2];
  isa = v58 + 2;
  v272 = v74;
  (v74)(v41, v70, v57);
  LODWORD(v275) = v72;
  v75 = os_log_type_enabled(v73, v72);
  v278 = v71;
  if (v75)
  {
    v76 = v71;
    v262 = v73;
    v77 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v289[0] = v261;
    *v77 = 136315394;
    v78 = [v76 selectedModelName];

    if (!v78)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v79 = sub_25C82E0AC();
    v81 = v80;

    v82 = sub_25C7E77E4(v79, v81, v289);

    *(v77 + 4) = v82;
    *(v77 + 12) = 2080;
    v83 = sub_25C82DDDC();
    v85 = v84;
    v87 = v286;
    v86 = v287;
    v88 = v41;
    v89 = *(v287 + 8);
    v89(v88, v286);
    v90 = sub_25C7E77E4(v83, v85, v289);

    *(v77 + 14) = v90;
    v91 = v262;
    _os_log_impl(&dword_25C7D2000, v262, v275, "Found selected model from current metadata: %s, frameworkExecutionSelectedModelURL: %s", v77, 0x16u);
    v92 = v261;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v92, -1, -1);
    v93 = v77;
    v67 = v87;
    v68 = v86;
    MEMORY[0x25F890110](v93, -1, -1);

    p_info = (ODCurareEvaluationAndReportingModule + 32);
  }

  else
  {
    v94 = v57;
    v68 = v58;
    v95 = v41;
    v89 = v58[1];
    v89(v95, v94);
    v67 = v94;
  }

  v275 = v89;
  v96 = [v278 selectedModelName];
  v97 = v285;
  if (!v96)
  {
    sub_25C82E0AC();
    goto LABEL_21;
  }

  v98 = v96;
  v99 = sub_25C82E0AC();
  v101 = v100;

  v102 = sub_25C82E0AC();
  if (!v101)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v99 == v102 && v101 == v103)
  {

LABEL_36:
    sub_25C82E25C();
    v164 = p_info[263];
    sub_25C82E00C();

    v275(v97, v67);
LABEL_38:
    v66 = 1;
    v61 = v290;
LABEL_39:
    v123 = v288;
    goto LABEL_40;
  }

  v163 = sub_25C82E4EC();

  if (v163)
  {
    goto LABEL_36;
  }

LABEL_22:
  v126 = sub_25C82DE1C();
  v128 = v127;
  v129 = 0x2799B9000uLL;
  v130 = v278;
  v131 = [v278 selectedModelName];
  if (v131)
  {
    v132 = v67;
    v133 = v130;
    v134 = v131;
    v135 = sub_25C82E0AC();
    v137 = v136;

    if (v126 == v135 && v128 == v137)
    {

      v123 = v288;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      v124 = v284;
      v67 = v132;
LABEL_29:
      sub_25C7E97F4(v123, &qword_27FC16040, &unk_25C830480);
      v263(v123, v285, v67);
      v273(v123, 0, 1, v67);
      v66 = 0;
      v61 = v290;
LABEL_41:
      v125 = v282;
      goto LABEL_42;
    }

    v138 = sub_25C82E4EC();

    p_info = (ODCurareEvaluationAndReportingModule + 32);
    v130 = v133;
    v67 = v132;
    v129 = 0x1FD6EB000;
    if (v138)
    {

      v123 = v288;
      v124 = v284;
      goto LABEL_29;
    }
  }

  else
  {
  }

  v139 = sub_25C82E25C();
  v140 = p_info[263];
  v141 = v268;
  v142 = v285;
  (v272)(v268, v285, v67);
  if (!os_log_type_enabled(v140, v139))
  {

    v165 = v275;
    v275(v141, v67);
    v165(v142, v67);
    goto LABEL_38;
  }

  LODWORD(isa) = v139;
  v143 = v130;
  v278 = v140;
  v144 = v68;
  v145 = v67;
  v146 = swift_slowAlloc();
  v147 = swift_slowAlloc();
  v289[0] = v147;
  *v146 = 136315394;
  v148 = v129;
  v149 = sub_25C82DE1C();
  v151 = v150;
  v152 = v141;
  v153 = v275;
  v273 = (v144 + 1);
  v275(v152, v145);
  v154 = sub_25C7E77E4(v149, v151, v289);

  *(v146 + 4) = v154;
  *(v146 + 12) = 2080;
  v155 = [v143 (v148 + 867)];

  if (v155)
  {
    v156 = v145;
    v157 = sub_25C82E0AC();
    v159 = v158;

    v160 = sub_25C7E77E4(v157, v159, v289);

    *(v146 + 14) = v160;
    v161 = v278;
    _os_log_impl(&dword_25C7D2000, v278, isa, "Mismatch in state, selectedModelURL does not match metadata.selectedModelName. %s vs %s", v146, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v147, -1, -1);
    MEMORY[0x25F890110](v146, -1, -1);

    v153(v285, v156);
    v66 = 1;
    v61 = v290;
    v67 = v156;
    v68 = v287;
    v123 = v288;
    p_info = (ODCurareEvaluationAndReportingModule + 32);
LABEL_40:
    v124 = v284;
    goto LABEL_41;
  }

LABEL_64:
  __break(1u);
}

void sub_25C7EC4B4(unint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  v65 = a2;
  v8 = sub_25C82DFBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  if (*(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    sub_25C82E29C();
    return;
  }

  v60 = v16;
  v61 = v12;
  v62 = v9;
  v63 = v8;
  v19 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v20 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v19))
  {

    v21 = v20;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 134218498;
    if (a1 >> 62)
    {
      v24 = sub_25C82E43C();
    }

    else
    {
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 4) = v24;

    *(v22 + 12) = 2112;
    v25 = v65;
    *(v22 + 14) = v65;
    *(v22 + 22) = 2112;
    *(v22 + 24) = a3;
    *v23 = v25;
    v23[1] = a3;
    v26 = v25;
    v27 = a3;
    _os_log_impl(&dword_25C7D2000, v21, v19, "Start trainAndEvaluateModels with %ld number of candidate models, personalizationPolicy %@, modelSelectionPolicy %@", v22, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16100, &qword_25C8305B8);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v23, -1, -1);
    MEMORY[0x25F890110](v22, -1, -1);
  }

  v64 = a3;
  v28 = [objc_allocWithZone(ODCurareReportFillerMetadata) init];
  v29 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata;
  v30 = *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
  *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata) = v28;
  v31 = v28;

  if (!v31)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v34 = sub_25C82E07C();
  [v33 setDateFormat_];

  v59 = v32;
  v35 = sub_25C82DF4C();
  v36 = [v33 stringFromDate_];

  if (!v36)
  {
    sub_25C82E0AC();
    v36 = sub_25C82E07C();
  }

  [v31 setDate_];
  v37 = *(v5 + v29);
  if (!v37)
  {
    goto LABEL_25;
  }

  [v37 setSelectedModelName_];
  sub_25C82E0AC();
  sub_25C82DE9C();

  v38 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
  swift_beginAccess();
  sub_25C7E6CC0(v18, v5 + v38, &qword_27FC16040, &unk_25C830480);
  swift_endAccess();
  v67 = a1;

  sub_25C800EB4(&v67);
  if (v4)
  {

    return;
  }

  v41 = v39;
  v42 = v40;
  v43 = sub_25C82E25C();
  v44 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v43))
  {
    v45 = v44;

    v46 = swift_slowAlloc();
    *v46 = 134217984;
    if (v42 >> 62)
    {
      v47 = sub_25C82E43C();
    }

    else
    {
      v47 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v46 + 4) = v47;

    _os_log_impl(&dword_25C7D2000, v45, v43, "Fetched default model and %ld number of models for shadow evaluation.", v46, 0xCu);
    MEMORY[0x25F890110](v46, -1, -1);
  }

  sub_25C7F67E4(v48, v65);

  sub_25C7F1764(v41, v42);
  sub_25C7F0118(v41, v64);
  v65 = v41;
  sub_25C7E9180(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore, v66);
  v49 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  (*(v62 + 16))(v61, v5 + v59, v63);
  v50 = v5 + v38;
  v51 = v60;
  sub_25C7E92DC(v50, v60, &qword_27FC16040, &unk_25C830480);
  v52 = sub_25C82DEAC();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    goto LABEL_26;
  }

  v54 = *(v5 + v29);
  if (v54)
  {
    v55 = v54;

    v56 = *v49;
    v58 = v60;
    v57 = v61;
    sub_25C8078B4(v61, v60, v55);

    (*(v62 + 8))(v57, v63);
    (*(v53 + 8))(v58, v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    sub_25C7EF3D0();
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    sub_25C82E29C();

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_25C7ECD40(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    return sub_25C82E29C();
  }

  v5 = v2;
  v8 = *(v2 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_dataProviderInstance);
  if (([v8 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(v8, sel_allUserDataDefault)) == 0)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v22 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v23 = 20;
    swift_willThrow();
    return v22;
  }

  v10 = v9;
  v11 = [v9 metadata];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
    v13 = sub_25C82E02C();

    v14 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
    swift_beginAccess();
    v15 = *(v5 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v5 + v14);
    *(v5 + v14) = 0x8000000000000000;
    sub_25C7FD034(v13, 0xD000000000000022, 0x800000025C832AF0, isUniquelyReferenced_nonNull_native);
    *(v5 + v14) = v25;
    swift_endAccess();
  }

  sub_25C7F82F4(v10);
  if (!*(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {
    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v24 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    goto LABEL_16;
  }

  v17 = sub_25C7F845C(a1, a2, v10, 1);
  if (!v3)
  {
    v18 = v17;
    v19 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults;
    swift_beginAccess();
    v20 = *(v5 + v19);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v5 + v19);
    *(v5 + v19) = 0x8000000000000000;
    sub_25C7FCE68(v18, a1, v21);
    *(v5 + v19) = v26;
    swift_endAccess();
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
LABEL_16:
    v22 = sub_25C82E29C();

    return v22;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_25C7ED28C(uint64_t a1, void *a2)
{
  v4 = sub_25C82DFBC();
  v294 = *(v4 - 8);
  v5 = *(v294 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v253 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v253 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v297 = *(v12 - 8);
  v298 = v12;
  v13 = *(v297 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v290 = &v253 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v289 = &v253 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v295 = &v253 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v291 = &v253 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v293 = &v253 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v292 = &v253 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v302 = (&v253 - v27);
  MEMORY[0x28223BE20](v26);
  v296 = &v253 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v253 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v253 - v34;
  v299 = sub_25C82DEAC();
  v36 = *(v299 - 8);
  isa = v36[8].isa;
  v38 = MEMORY[0x28223BE20](v299);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v253 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = (&v253 - v45);
  MEMORY[0x28223BE20](v44);
  v300 = v2;
  if (*(v2 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    sub_25C82E29C();
    return;
  }

  v286 = (&v253 - v47);
  v288 = v36;
  v279 = v50;
  v287 = v49;
  v277 = v48;
  v278 = v11;
  v276 = v7;
  v274 = a2;
  v51 = *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_dataProviderInstance);
  if (([v51 respondsToSelector_] & 1) == 0 || (v52 = objc_msgSend(v51, sel_allUserDataAdapted)) == 0)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
LABEL_74:
      swift_once();
    }

    v181 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v182 = 20;
    swift_willThrow();
    return;
  }

  v273 = v52;
  v53 = [v52 metadata];
  if (v53)
  {
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
    v285 = sub_25C82E02C();

    v55 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
    v56 = v300;
    swift_beginAccess();
    v57 = *(v56 + v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v304 = *(v56 + v55);
    *(v56 + v55) = 0x8000000000000000;
    sub_25C7FD034(v285, 0xD000000000000022, 0x800000025C832CB0, isUniquelyReferenced_nonNull_native);
    *(v56 + v55) = v304;
    swift_endAccess();
  }

  v59 = v300;
  sub_25C7F82F4(v273);
  if (!*(v59 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {
    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v183 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    goto LABEL_52;
  }

  if (*(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_skipAdaptation))
  {
    sub_25C82E25C();
    v60 = v4;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v61 = qword_281559838;
    sub_25C82E00C();
    v62 = v298;
  }

  else
  {
    v285 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary;
    v184 = *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationInstance);
    if (([v184 respondsToSelector_] & 1) == 0 || (v60 = v4, (v185 = objc_msgSend(v184, sel_personalize)) == 0))
    {
      sub_25C82E27C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v193 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      swift_allocError();
      *v194 = 20;
      swift_willThrow();
      goto LABEL_50;
    }

    v186 = *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResult);
    *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResult) = v185;
    v61 = v185;

    if ([v61 saveNewPersonalizedModel])
    {
      v187 = [v61 personalizedModelPath];
      sub_25C82DE7C();

      v188 = [v61 personalizedModelIdentifier];
      if (v188)
      {
        v189 = v188;
        v190 = sub_25C82E0AC();
        v192 = v191;
      }

      else
      {
        v190 = 0;
        v192 = 0;
      }

      v201 = v301;
      sub_25C7F9228(v46, v190, v192, v35);
      if (v201)
      {

        v202 = v288;
        v203 = v299;
        (v288[1].isa)(v46, v299);
        (v202[7].isa)(v35, 1, 1, v203);
        sub_25C7E97F4(v35, &qword_27FC16040, &unk_25C830480);
        v301 = 0;
        v62 = v298;
      }

      else
      {
        v301 = 0;
        v282 = v61;
        v204 = v288;
        v205 = v288[1].isa;
        v206 = v299;
        v284 = v288 + 1;
        v283 = v205;
        v205(v46, v299);

        v207 = v204[7].isa;
        v207(v35, 0, 1, v206);
        v208 = v286;
        (v204[4].isa)(v286, v35, v206);
        v209 = v204;
        v61 = v282;
        v280 = v209[2].isa;
        (v280)(v33, v208, v206);
        v207(v33, 0, 1, v206);
        v210 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizedModelPath;
        v211 = v300;
        swift_beginAccess();
        sub_25C7E6CC0(v33, v211 + v210, &qword_27FC16040, &unk_25C830480);
        swift_endAccess();
        v212 = *(&v285->isa + v211);
        if (v212)
        {
          v213 = *(&v285->isa + v211);

          v214 = [v61 metadata];
          if (v214)
          {
            v215 = v214;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
            v216 = sub_25C82E02C();
          }

          else
          {
            v216 = 0;
          }

          v217 = *(v212 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata);
          *(v212 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = v216;

          v218 = sub_25C82DE1C();
          v219 = (v212 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
          v220 = *(v212 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName + 8);
          *v219 = v218;
          v219[1] = v221;

          v222 = [v61 newPersonalizedModelIsSelected];
          *(v212 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = v222;
          v223 = [v61 currentlyUsedModelPath];
          v224 = v279;
          sub_25C82DE7C();

          v225 = sub_25C82DE1C();
          v227 = v226;
          v283(v224, v299);
          v228 = (v212 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
          v229 = *(v212 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName + 8);
          *v228 = v225;
          v228[1] = v227;

          v230 = *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_boundaryList);
          sub_25C8038B8(v212);
        }

        v231 = sub_25C82E25C();
        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v232 = qword_281559838;
        v233 = v299;
        (v280)(v42, v286, v299);
        if (os_log_type_enabled(v232, v231))
        {
          v285 = v232;
          v234 = swift_slowAlloc();
          v235 = swift_slowAlloc();
          v303 = v235;
          *v234 = 136315138;
          v236 = sub_25C82DE8C();
          LODWORD(v280) = v231;
          v238 = v237;
          v239 = v283;
          v283(v42, v233);
          v240 = sub_25C7E77E4(v236, v238, &v303);

          *(v234 + 4) = v240;
          v241 = v285;
          _os_log_impl(&dword_25C7D2000, v285, v280, "save personalized model in %s.", v234, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v235);
          MEMORY[0x25F890110](v235, -1, -1);
          MEMORY[0x25F890110](v234, -1, -1);
        }

        else
        {
          v239 = v283;
          v283(v42, v233);
        }

        v62 = v298;
        v242 = v300;
        v243 = *__swift_project_boxed_opaque_existential_1((v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
        v244 = v242 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
        v245 = v286;
        sub_25C81D89C(v286, v244, 0, 0, 0, 0, 0, 0);
        v239(v245, v233);
      }
    }

    else
    {
      v195 = sub_25C82E25C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v196 = qword_281559838;
      v197 = os_log_type_enabled(qword_281559838, v195);
      v62 = v298;
      if (v197)
      {
        v198 = v196;
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v303 = v200;
        *v199 = 136315138;
        *(v199 + 4) = sub_25C7E77E4(*(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier), *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8), &v303);
        _os_log_impl(&dword_25C7D2000, v198, v195, "Client %s specified to not save model.", v199, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v200);
        MEMORY[0x25F890110](v200, -1, -1);
        MEMORY[0x25F890110](v199, -1, -1);
      }
    }

    v246 = [v61 metadata];
    if (v246)
    {
      v247 = v246;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
      v248 = sub_25C82E02C();

      v249 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
      v250 = v300;
      swift_beginAccess();
      v251 = *(v250 + v249);
      v252 = swift_isUniquelyReferenced_nonNull_native();
      v304 = *(v250 + v249);
      *(v250 + v249) = 0x8000000000000000;
      sub_25C7FD034(v248, 0xD00000000000001ELL, 0x800000025C832C40, v252);
      *(v250 + v249) = v304;
      swift_endAccess();
    }
  }

  v63 = (v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore);
  v64 = *__swift_project_boxed_opaque_existential_1((v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v300 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
  v65 = v301;
  v66 = sub_25C81EF2C();
  if (v65)
  {
LABEL_50:

    return;
  }

  v301 = 0;
  v272 = v66[2];
  if (!v272)
  {
LABEL_51:

    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
LABEL_52:
    sub_25C82E29C();

    return;
  }

  v67 = 0;
  v270 = v296 + v62[24];
  v269 = (v296 + v62[28]);
  v268 = v66 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
  v267 = v62[12];
  v263 = v293 + 8;
  v261 = v292 + 8;
  v266 = v62[16];
  v283 = (v294 + 32);
  v265 = v288 + 4;
  v264 = v62[20];
  v280 = v288 + 1;
  v262 = (v294 + 8);
  v260 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory;
  v259 = (v294 + 56);
  v253 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults;
  *(&v68 + 1) = 2;
  v258 = xmmword_25C830640;
  *&v68 = 136315394;
  v255 = v68;
  v281 = v60;
  v275 = v63;
  v271 = v66;
  while (1)
  {
    if (v67 >= v66[2])
    {
      __break(1u);
      goto LABEL_74;
    }

    v69 = v296;
    sub_25C7E92DC(&v268[*(v297 + 72) * v67], v296, &qword_27FC16080, &qword_25C830490);
    v286 = *(v69 + v266);
    v285 = *(v69 + v264);
    v70 = *(v270 + 8);
    v284 = *v270;
    v294 = v67;
    v71 = *v269;
    v72 = v269[1];
    v73 = v62[12];
    v74 = v60;
    v75 = v62[16];
    v76 = v62[20];
    v77 = v62;
    v78 = (&v302->isa + v62[24]);
    v79 = (&v302->isa + v77[28]);
    v282 = *v283;
    v282(v302, v69, v74);
    v80 = v265->isa;
    v288 = v73;
    v81 = v69 + v267;
    v82 = v299;
    v80(v73 + v302, v81, v299);
    v83 = v285;
    *(&v302->isa + v75) = v286;
    *(&v302->isa + v76) = v83;
    v84 = v302;
    *v78 = v284;
    v78[1] = v70;
    *v79 = v71;
    v79[1] = v72;
    v85 = v294;
    if (v294 > 9)
    {
      break;
    }

    v86 = v279;
    sub_25C82DE5C();
    sub_25C82DE8C();
    v286 = v280->isa;
    v286(v86, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
    v87 = swift_allocObject();
    *(v87 + 16) = v258;
    *(v87 + 56) = MEMORY[0x277D83B88];
    *(v87 + 64) = MEMORY[0x277D83C10];
    *(v87 + 32) = v85;
    sub_25C82E0CC();

    v88 = v287;
    sub_25C82DE0C();

    v89 = __swift_project_boxed_opaque_existential_1(v275, v275[3]);
    v90 = v292;
    sub_25C7E92DC(v84, v292, &qword_27FC16080, &qword_25C830490);
    v62 = v298;
    v91 = v90 + v298[12];

    v92 = v261;
    v93 = *(v261 + v62[24]);

    v94 = *(v92 + v62[28]);

    v95 = v278;
    v96 = v90;
    v97 = v281;
    v282(v278, v96, v281);
    (*v259)(v95, 0, 1, v97);
    v98 = *v89;
    v99 = v277;
    v100 = v301;
    sub_25C822E90((v288 + v84), v95, v88, v277);
    v101 = v299;
    if (v100)
    {
      v285 = v100;
      sub_25C7E97F4(v95, &qword_27FC16048, qword_25C8309D0);
      v301 = 0;
      v286(v91, v101);
      v140 = sub_25C82E27C();
      v141 = v289;
      v142 = v290;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v143 = qword_281559838;
      sub_25C7E92DC(v84, v141, &qword_27FC16080, &qword_25C830490);
      sub_25C7E92DC(v84, v142, &qword_27FC16080, &qword_25C830490);
      if (os_log_type_enabled(v143, v140))
      {
        v284 = v143;
        v144 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v303 = v257;
        *v144 = v255;
        v145 = v293;
        sub_25C7E92DC(v141, v293, &qword_27FC16080, &qword_25C830490);
        LODWORD(v256) = v140;
        v146 = v62[12];

        v147 = v263;
        v148 = *(v263 + v62[24]);

        v149 = *(v147 + v62[28]);

        v150 = sub_25C82DE8C();
        v151 = v141;
        v153 = v152;
        sub_25C7E97F4(v151, &qword_27FC16080, &qword_25C830490);
        v286(v145 + v146, v299);
        v254 = *v262;
        v154 = v281;
        v254(v145, v281);
        v155 = sub_25C7E77E4(v150, v153, &v303);

        *(v144 + 4) = v155;
        *(v144 + 12) = 2080;
        sub_25C7E92DC(v142, v145, &qword_27FC16080, &qword_25C830490);
        v156 = v62[12];

        v157 = *(v147 + v62[24]);

        v158 = *(v147 + v62[28]);

        v159 = v276;
        v282(v276, v145, v154);
        v160 = v145 + v156;
        v84 = v302;
        v286(v160, v299);
        sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
        v161 = sub_25C82E4DC();
        v163 = v162;
        v164 = v159;
        v62 = v298;
        v254(v164, v154);
        sub_25C7E97F4(v142, &qword_27FC16080, &qword_25C830490);
        v165 = sub_25C7E77E4(v161, v163, &v303);

        *(v144 + 14) = v165;
        v166 = v284;
        _os_log_impl(&dword_25C7D2000, v284, v256, "invalid model in %s. %s", v144, 0x16u);
        v167 = v257;
        swift_arrayDestroy();
        MEMORY[0x25F890110](v167, -1, -1);
        MEMORY[0x25F890110](v144, -1, -1);
      }

      else
      {
        sub_25C7E97F4(v142, &qword_27FC16080, &qword_25C830490);
        sub_25C7E97F4(v141, &qword_27FC16080, &qword_25C830490);
      }

      v85 = v294;
      v168 = *__swift_project_boxed_opaque_existential_1(v275, v275[3]);
      v169 = v301;
      sub_25C826030(v288 + v84, v84);
      v301 = v169;
      if (v169)
      {
        goto LABEL_76;
      }

      v286(v287, v299);
      sub_25C7E97F4(v84, &qword_27FC16080, &qword_25C830490);
      v60 = v281;
      goto LABEL_34;
    }

    sub_25C7E97F4(v95, &qword_27FC16048, qword_25C8309D0);
    v286(v91, v101);
    v139 = sub_25C7F845C(v99, v274, v273, 0);
    v301 = 0;
    v288 = v139;
    v170 = v293;
    sub_25C7E92DC(v84, v293, &qword_27FC16080, &qword_25C830490);
    v171 = v62[12];

    v172 = v263;
    v173 = *(v263 + v62[24]);

    v174 = *(v172 + v62[28]);

    v175 = v300;
    v176 = v253;
    swift_beginAccess();
    v177 = *(v175 + v176);
    v178 = swift_isUniquelyReferenced_nonNull_native();
    v304 = *(v175 + v176);
    *(v175 + v176) = 0x8000000000000000;
    sub_25C7FCE68(v288, v170 + v171, v178);
    v179 = v170 + v171;
    v180 = v286;
    v286(v179, v101);
    *(v175 + v176) = v304;
    swift_endAccess();
    v180(v99, v101);
    v180(v287, v101);
    sub_25C7E97F4(v84, &qword_27FC16080, &qword_25C830490);
    v60 = v281;
    (*v262)(v170, v281);
    v66 = v271;
    v85 = v294;
LABEL_35:
    v67 = v85 + 1;
    if (v272 == v67)
    {
      goto LABEL_51;
    }
  }

  v102 = v281;
  v103 = sub_25C82E25C();
  v104 = v291;
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v105 = qword_281559838;
  sub_25C7E92DC(v84, v104, &qword_27FC16080, &qword_25C830490);
  v106 = v84;
  v107 = v295;
  sub_25C7E92DC(v106, v295, &qword_27FC16080, &qword_25C830490);
  v108 = os_log_type_enabled(v105, v103);
  v109 = v103;
  v110 = v102;
  v62 = v298;
  if (v108)
  {
    LODWORD(v285) = v109;
    v284 = v105;
    v111 = swift_slowAlloc();
    v286 = v111;
    v257 = swift_slowAlloc();
    v303 = v257;
    *v111 = v255;
    v112 = v293;
    sub_25C7E92DC(v104, v293, &qword_27FC16080, &qword_25C830490);
    v113 = v62[12];

    v114 = v263;
    v115 = *(v263 + v62[24]);

    v116 = *(v114 + v62[28]);

    v117 = sub_25C82DE8C();
    v119 = v118;
    sub_25C7E97F4(v104, &qword_27FC16080, &qword_25C830490);
    v120 = v280->isa;
    (v280->isa)(v112 + v113, v299);
    v256 = *v262;
    v256(v112, v110);
    v121 = sub_25C7E77E4(v117, v119, &v303);

    v122 = v286;
    *(v286 + 4) = v121;
    *(v122 + 12) = 2080;
    sub_25C7E92DC(v295, v112, &qword_27FC16080, &qword_25C830490);
    v123 = v62[12];

    v124 = *(v114 + v62[24]);

    v125 = *(v114 + v62[28]);

    v126 = v276;
    v282(v276, v112, v110);
    v120(v112 + v123, v299);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
    v127 = sub_25C82E4DC();
    v129 = v128;
    v130 = v126;
    v62 = v298;
    v102 = v110;
    v256(v130, v110);
    sub_25C7E97F4(v295, &qword_27FC16080, &qword_25C830490);
    v131 = sub_25C7E77E4(v127, v129, &v303);
    v85 = v294;

    v132 = v286;
    *(v286 + 14) = v131;
    v133 = v284;
    _os_log_impl(&dword_25C7D2000, v284, v285, "delete older model in %s. %s", v132, 0x16u);
    v134 = v257;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v134, -1, -1);
    MEMORY[0x25F890110](v132, -1, -1);
  }

  else
  {
    sub_25C7E97F4(v107, &qword_27FC16080, &qword_25C830490);
    sub_25C7E97F4(v104, &qword_27FC16080, &qword_25C830490);
  }

  v135 = v288;
  v136 = *__swift_project_boxed_opaque_existential_1(v275, v275[3]);
  v138 = v301;
  v137 = v302;
  sub_25C826030(v135 + v302, v302);
  v301 = v138;
  if (!v138)
  {
    sub_25C7E97F4(v137, &qword_27FC16080, &qword_25C830490);
    v60 = v102;
LABEL_34:
    v66 = v271;
    goto LABEL_35;
  }

  swift_unexpectedError();
  __break(1u);
LABEL_76:
  swift_unexpectedError();
  __break(1u);
}

void sub_25C7EF3D0()
{
  if (*(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport) == 1)
  {
    v1 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure);
    v2 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    v3 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v13 = v0;

      v6 = (v4 + 48);
      do
      {
        v7 = *(v6 - 2);
        v8 = *(v6 - 1);
        v9 = *v6;
        v10 = v7;
        v11 = v8;
        MEMORY[0x25F88F4D0]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v6 += 3;
        --v5;
      }

      while (v5);
      v2 = v14;

      v0 = v13;
    }

    sub_25C815754(*(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier), *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8), v2, (v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), (v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore), (v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore), v1);
  }
}

unint64_t sub_25C7EF5EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23[-v3];
  if (*(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    *(inited + 32) = 0xD00000000000001ELL;
    v6 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x800000025C830660;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000025C832CE0;
    v7 = sub_25C801A1C(inited);
    swift_setDeallocating();
    sub_25C7E97F4(v6, &qword_27FC16160, &unk_25C8306A0);
  }

  else
  {
    v8 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults;
    swift_beginAccess();
    v9 = *(v0 + v8);
    v10 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
    v13 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizedModelPath;
    swift_beginAccess();
    sub_25C7E92DC(v0 + v13, v4, &qword_27FC16040, &unk_25C830480);
    v14 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_boundaryList);
    v15 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_pruningPolicy);
    v17 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier);
    v16 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8);

    v7 = sub_25C8163D8(v9, v11, v0 + v12, v4, v14, v15, v17, v16);

    sub_25C7E97F4(v4, &qword_27FC16040, &unk_25C830480);
    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v18 = qword_281559838;
    sub_25C82E00C();

    v24 = v17;
    v25 = v16;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

    v19 = [objc_opt_self() standardUserDefaults];
    v20 = sub_25C82E22C();
    v21 = sub_25C82E07C();

    [v19 setValue:v20 forKey:v21];
  }

  return v7;
}

id ODCurareEvaluationAndReportingModule.__deallocating_deinit()
{
  v1 = v0;
  v3 = *&v0[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier];
  v2 = *&v0[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8];

  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v4 = qword_281559838;
  sub_25C82E00C();

  v10 = v3;
  v11 = v2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_25C82E22C();
  v7 = sub_25C82E07C();

  [v5 setValue:v6 forKey:v7];

  v9.receiver = v1;
  v9.super_class = type metadata accessor for ODCurareEvaluationAndReportingModule();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_25C7EFE54(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_25C7E98B0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_25C7EFEE4(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [v11 evaluationDate];
  if (v13)
  {
    v14 = v13;
    sub_25C82E0AC();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_25C82B668(v16, v10);

  v17 = sub_25C82DFBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  result = v19(v10, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = [v12 evaluationDate];
    if (v21)
    {
      v22 = v21;
      sub_25C82E0AC();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    sub_25C82B668(v24, v8);

    result = v19(v8, 1, v17);
    if (result != 1)
    {
      v25 = sub_25C82DF6C();
      v26 = *(v18 + 8);
      v26(v8, v17);
      v26(v10, v17);
      return v25 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25C7F0118(void *a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v190 = a2;
  v179 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v176 = &v167 - v8;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v174 = *(v175 - 8);
  v9 = *(v174 + 64);
  v10 = MEMORY[0x28223BE20](v175);
  v172 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v173 = &v167 - v12;
  v203 = sub_25C82DEAC();
  v180 = *(v203 - 8);
  v13 = *(v180 + 64);
  v14 = MEMORY[0x28223BE20](v203);
  v16 = (&v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v178 = &v167 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  isUniquelyReferenced_nonNull_native = *(v18 - 1);
  v20 = *(isUniquelyReferenced_nonNull_native + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v191 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v193 = &v167 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v167 - v26;
  MEMORY[0x28223BE20](v25);
  v192 = &v167 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = (&v167 - v31);
  LOBYTE(v2) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v33 = qword_281559838;
    v34 = os_log_type_enabled(qword_281559838, v2);
    i = v18;
    if (v34)
    {
      v35 = v33;
      v36 = swift_slowAlloc();
      v205 = isUniquelyReferenced_nonNull_native;
      v37 = v4;
      v38 = v27;
      v39 = v32;
      v40 = v36;
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v190;
      *(v40 + 4) = v190;
      *v41 = v42;
      v43 = v42;
      _os_log_impl(&dword_25C7D2000, v35, v2, "Start selectModel with selectionPolicy: %@", v40, 0xCu);
      sub_25C7E97F4(v41, &qword_27FC16100, &qword_25C8305B8);
      v44 = v41;
      v18 = i;
      MEMORY[0x25F890110](v44, -1, -1);
      v45 = v40;
      v32 = v39;
      v27 = v38;
      v4 = v37;
      isUniquelyReferenced_nonNull_native = v205;
      MEMORY[0x25F890110](v45, -1, -1);
    }

    v46 = *__swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore), *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore + 24));
    result = sub_25C8131CC(1);
    if (v4)
    {
      return result;
    }

    v4 = 0;
    if (result >> 62)
    {
LABEL_76:
      v48 = result;
      if (!sub_25C82E43C())
      {
LABEL_77:
        sub_25C82E25C();
        v161 = qword_281559838;
        sub_25C82E00C();

        v162 = *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
        if (v162)
        {
          v163 = v162;

          [v163 setSelectedModelName_];

          sub_25C82E0AC();
          sub_25C82DE9C();

          v164 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
          swift_beginAccess();
          sub_25C7E6CC0(v32, v5 + v164, &qword_27FC16040, &unk_25C830480);
          return swift_endAccess();
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    else
    {
      v48 = result;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }
    }

    v208 = MEMORY[0x277D84F90];
    v2 = *__swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
    v49 = sub_25C81EF2C();
    if (v4)
    {
    }

    v189 = v48;
    v167 = v32;
    v168 = v16;
    v169 = v5;
    v171 = 0;
    v50 = v49[2];
    v170 = v49;
    if (v50)
    {
      v188 = v18[12];
      v187 = v18[16];
      v186 = v18[20];
      v185 = (v192 + v18[24]);
      v184 = (v192 + v18[28]);
      v51 = v49 + ((*(isUniquelyReferenced_nonNull_native + 80) + 32) & ~*(isUniquelyReferenced_nonNull_native + 80));
      v183 = *(isUniquelyReferenced_nonNull_native + 72);
      v182 = v193 + 8;
      v177 = v191 + 8;
      v181 = (v180 + 32);
      v52 = MEMORY[0x277D84F90];
      v194 = (v180 + 8);
      do
      {
        v201 = v51;
        v202 = v50;
        v204 = v52;
        v54 = v192;
        sub_25C7E92DC(v51, v192, &qword_27FC16080, &qword_25C830490);
        v199 = *(v54 + v187);
        v198 = *(v54 + v186);
        v55 = v185[1];
        v197 = *v185;
        v56 = *v184;
        v195 = v184[1];
        v196 = v56;
        v57 = v18[12];
        v58 = i[16];
        v59 = (v27 + i[24]);
        v60 = (v27 + i[28]);
        v61 = i[20];
        v62 = sub_25C82DFBC();
        v200 = *(v62 - 8);
        v63 = *(v200 + 32);
        v205 = v62;
        v63(v27, v54);
        v64 = v27 + v57;
        v65 = v203;
        (*v181)(v64, v54 + v188, v203);
        v66 = v198;
        *(v27 + v58) = v199;
        v18 = i;
        *(v27 + v61) = v66;
        v67 = v196;
        *v59 = v197;
        v59[1] = v55;
        v32 = &qword_27FC16080;
        v68 = v195;
        *v60 = v67;
        v60[1] = v68;
        v69 = v193;
        sub_25C7E92DC(v27, v193, &qword_27FC16080, &qword_25C830490);
        v70 = v18[12];
        v71 = *(v69 + v18[16]);

        v72 = v182;
        v73 = *(v182 + v18[24]);

        v74 = *(v72 + v18[28]);

        if (v71)
        {
          v199 = *v194;
          v199(v69 + v70, v65);
          v200 = *(v200 + 8);
          (v200)(v69, v205);
          v75 = v191;
          sub_25C7E92DC(v27, v191, &qword_27FC16080, &qword_25C830490);
          v76 = v18[12];
          v77 = *(v75 + v18[16]);
          v78 = v71;

          v79 = v177;
          v80 = *(v177 + v18[24]);

          v81 = *(v79 + v18[28]);

          v82 = objc_allocWithZone(ODCurareModelInformation);
          v83 = sub_25C82DE2C();
          v84 = [v82 initWithModelInformation:v78 modelURL:v83];
          v204 = v78;

          v199(v75 + v76, v203);
          (v200)(v75, v205);
          v85 = v84;
          v2 = &v208;
          MEMORY[0x25F88F4D0]();
          if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25C82E1EC();
          }

          sub_25C82E20C();

          sub_25C7E97F4(v27, &qword_27FC16080, &qword_25C830490);
          v52 = v208;
          v18 = i;
          v32 = &qword_27FC16080;
        }

        else
        {
          (*v194)(v69 + v70, v65);
          (*(v200 + 8))(v69, v205);
          v2 = sub_25C82E25C();
          v53 = qword_281559838;
          sub_25C82E00C();

          sub_25C7E97F4(v27, &qword_27FC16080, &qword_25C830490);
          v52 = v204;
        }

        v51 = &v201[v183];
        v50 = v202 - 1;
      }

      while (v202 != 1);
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    if (v52 >> 62)
    {
      v165 = v52;
      v166 = sub_25C82E43C();
      v52 = v165;
      v16 = v166;
    }

    else
    {
      v16 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    isUniquelyReferenced_nonNull_native = v189;
    v204 = v52;
    if (v16)
    {
      v4 = 0;
      v205 = v52 & 0xFFFFFFFFFFFFFF8;
      i = (v52 & 0xC000000000000001);
      v5 = MEMORY[0x277D84F98];
      while (1)
      {
        if (i)
        {
          v87 = MEMORY[0x25F88F6D0](v4);
        }

        else
        {
          if (v4 >= *(v205 + 16))
          {
            goto LABEL_72;
          }

          v87 = *(v52 + 8 * v4 + 32);
        }

        v88 = v87;
        v18 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_71;
        }

        v89 = [v87 modelInformation];
        v2 = [v89 modelName];

        if (!v2)
        {
          break;
        }

        v90 = sub_25C82E0AC();
        v27 = v91;

        v32 = sub_25C80136C(isUniquelyReferenced_nonNull_native, v90, v27);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v207 = v5;
        LOBYTE(v2) = v5;
        result = sub_25C813A34(v88);
        v93 = *(v5 + 16);
        v94 = (v92 & 1) == 0;
        v95 = __OFADD__(v93, v94);
        v96 = v93 + v94;
        if (v95)
        {
          goto LABEL_73;
        }

        v27 = v92;
        if (*(v5 + 24) >= v96)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = &v207;
            v100 = result;
            sub_25C80470C();
            result = v100;
          }
        }

        else
        {
          sub_25C7FB3B8(v96, isUniquelyReferenced_nonNull_native);
          LOBYTE(v2) = v207;
          result = sub_25C813A34(v88);
          if ((v27 & 1) != (v97 & 1))
          {
            goto LABEL_87;
          }
        }

        isUniquelyReferenced_nonNull_native = v189;
        v5 = v207;
        if (v27)
        {
          v86 = *(v207 + 56);
          v2 = *(v86 + 8 * result);
          *(v86 + 8 * result) = v32;
        }

        else
        {
          *(v207 + 8 * (result >> 6) + 64) |= 1 << result;
          *(*(v5 + 48) + 8 * result) = v88;
          *(*(v5 + 56) + 8 * result) = v32;
          v98 = *(v5 + 16);
          v95 = __OFADD__(v98, 1);
          v99 = v98 + 1;
          if (v95)
          {
            __break(1u);
            goto LABEL_76;
          }

          *(v5 + 16) = v99;
        }

        ++v4;
        v52 = v204;
        if (v18 == v16)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_81;
    }

    v5 = MEMORY[0x277D84F98];
LABEL_40:
    v101 = [objc_allocWithZone(ODCurareReportFillerModelInformation) init];
    if (!v101)
    {
      goto LABEL_82;
    }

    v102 = v101;
    v103 = v179;
    v104 = [v179 modelURL];
    v105 = v178;
    sub_25C82DE7C();

    sub_25C82DE1C();
    v107 = v180 + 8;
    v106 = *(v180 + 8);
    v106(v105, v203);
    v108 = sub_25C82E07C();

    [v102 setModelName_];

    [v102 setIsDefaultModel_];
    v109 = v102;
    v110 = [v103 modelURL];
    sub_25C82DE7C();

    v111 = objc_allocWithZone(ODCurareModelInformation);
    v112 = sub_25C82DE2C();
    v113 = [v111 initWithModelInformation:v109 modelURL:v112];

    v200 = v107;
    v205 = v106;
    v106(v105, v203);
    v202 = v109;
    v114 = [v109 modelName];
    if (!v114)
    {
      goto LABEL_83;
    }

    v2 = v114;
    v4 = sub_25C82E0AC();
    v116 = v115;

    v32 = sub_25C80136C(isUniquelyReferenced_nonNull_native, v4, v116);

    v117 = 1 << *(v5 + 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    isUniquelyReferenced_nonNull_native = v118 & *(v5 + 64);
    v18 = ((v117 + 63) >> 6);
    v119 = v113;

    v27 = 0;
    v16 = v32;
    v201 = v119;
    for (i = v119; isUniquelyReferenced_nonNull_native; i = v2)
    {
      while (1)
      {
LABEL_52:
        v121 = (v27 << 9) | (8 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)));
        v4 = *(*(v5 + 56) + v121);
        v2 = *(*(v5 + 48) + v121);

        v123 = v171;
        v124 = sub_25C80EEBC(v122, v32, v190);
        if (v123)
        {
        }

        isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
        if (v124)
        {
          break;
        }

        v171 = 0;
LABEL_47:

        if (!isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_48;
        }
      }

      v125 = sub_25C80EEBC(v4, v16, v190);
      v171 = 0;
      if ((v125 & 1) == 0)
      {
        goto LABEL_47;
      }

      v16 = v4;
    }

LABEL_48:
    v120 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      break;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  if (v120 < v18)
  {
    isUniquelyReferenced_nonNull_native = *(v5 + 64 + 8 * v120);
    ++v27;
    if (isUniquelyReferenced_nonNull_native)
    {
      v27 = v120;
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v126 = [i modelURL];
  v127 = v168;
  sub_25C82DE7C();

  v128 = [v179 modelURL];
  v129 = v178;
  sub_25C82DE7C();

  sub_25C801324(&qword_281559830, MEMORY[0x277CC9260]);
  v130 = v203;
  LOBYTE(v128) = sub_25C82E06C();
  (v205)(v129, v130);
  if ((v128 & 1) == 0)
  {
    v135 = v169;
    v136 = *(v169 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
    if (!v136)
    {
      goto LABEL_84;
    }

    v137 = v136;

    sub_25C82DE1C();
    v138 = sub_25C82E07C();

    [v137 setSelectedModelName_];

    v139 = v180;
    v140 = v167;
    v141 = v203;
    (*(v180 + 16))(v167, v127, v203);
    (*(v139 + 56))(v140, 0, 1, v141);
    v142 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    v143 = v135 + v142;
    goto LABEL_62;
  }

  v131 = v169;
  v132 = *__swift_project_boxed_opaque_existential_1((v169 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore), *(v169 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore + 24));
  v133 = v176;
  v134 = v171;
  sub_25C8081D4(v176);
  v171 = v134;
  if (v134)
  {

    (v205)(v127, v203);
  }

  if ((*(v174 + 48))(v133, 1, v175) != 1)
  {
    v151 = v173;
    sub_25C7E9274(v133, v173, &qword_27FC16090, qword_25C8304A0);
    v152 = *(v131 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
    if (!v152)
    {
      goto LABEL_86;
    }

    v153 = v152;

    v154 = v172;
    sub_25C7E92DC(v151, v172, &qword_27FC16090, qword_25C8304A0);
    v155 = v175;
    v156 = v151;
    v157 = *(v154 + *(v175 + 48));
    v158 = [v157 selectedModelName];

    [v153 setSelectedModelName_];
    v141 = v203;
    (v205)(v154, v203);
    sub_25C7E9274(v156, v154, &qword_27FC16090, qword_25C8304A0);

    v159 = v180;
    v140 = v167;
    (*(v180 + 32))(v167, v154, v141);
    (*(v159 + 56))(v140, 0, 1, v141);
    v160 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    v143 = v131 + v160;
LABEL_62:
    sub_25C7E6CC0(v140, v143, &qword_27FC16040, &unk_25C830480);
    swift_endAccess();
LABEL_63:
    v145 = v201;
    v144 = v202;
    sub_25C82E25C();
    v146 = qword_281559838;
    sub_25C82E00C();

    return (v205)(v127, v141);
  }

  sub_25C7E97F4(v133, &qword_27FC16088, &qword_25C830498);
  v147 = *(v131 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
  if (v147)
  {
    v148 = v147;

    [v148 setSelectedModelName_];

    sub_25C82E0AC();
    v149 = v167;
    sub_25C82DE9C();

    v150 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    sub_25C7E6CC0(v149, v131 + v150, &qword_27FC16040, &unk_25C830480);
    swift_endAccess();
    v141 = v203;
    goto LABEL_63;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  sub_25C7E96B8(0, &qword_27FC16200, off_2799B9798);
  result = sub_25C82E51C();
  __break(1u);
  return result;
}

void sub_25C7F1764(void *a1, unint64_t a2)
{
  v417 = a2;
  v452 = a1;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v435 = *(v451 - 1);
  v3 = *(v435 + 64);
  v4 = MEMORY[0x28223BE20](v451);
  v447 = &v383 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v431 = &v383 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v411 = &v383 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v412 = &v383 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v423 = &v383 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v414 = &v383 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v421 = &v383 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v440 = (&v383 - v19);
  MEMORY[0x28223BE20](v18);
  v434 = &v383 - v20;
  v455 = sub_25C82DEAC();
  v429 = *(v455 - 8);
  v21 = *(v429 + 64);
  v22 = MEMORY[0x28223BE20](v455);
  v436 = &v383 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v448 = (&v383 - v25);
  MEMORY[0x28223BE20](v24);
  v441 = &v383 - v26;
  v27 = sub_25C82DFBC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v418 = &v383 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v437 = &v383 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v424 = &v383 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v426 = &v383 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v428 = &v383 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v433 = (&v383 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v432 = (&v383 - v43);
  MEMORY[0x28223BE20](v42);
  v445 = &v383 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v416 = (&v383 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x28223BE20](v47);
  v413 = &v383 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v420 = (&v383 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v450 = &v383 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v427 = (&v383 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v430 = (&v383 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v383 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v422 = &v383 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v442 = &v383 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = &v383 - v66;
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v68 = qword_281559838;
  sub_25C82E00C();

  v69 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkEvaluationDate;
  swift_beginAccess();
  v446 = v69;
  sub_25C7E92DC(&v2[v69], v67, &qword_27FC16048, qword_25C8309D0);
  v443 = v28;
  v70 = *(v28 + 48);
  v71 = v70(v67, 1, v27);
  sub_25C7E97F4(v67, &qword_27FC16048, qword_25C8309D0);
  v453 = v27;
  v444 = v2;
  v438 = v70;
  v72 = v2;
  v439 = v28 + 48;
  if (v71 == 1)
  {
    sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    v74 = qword_281559838;
    sub_25C82E00C();

    v75 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
    swift_beginAccess();
    v76 = v442;
    sub_25C7E92DC(&v72[v75], v442, &qword_27FC16048, qword_25C8309D0);
    v77 = v27;
    if (v70(v76, 1, v27) == 1)
    {
      sub_25C7E97F4(v76, &qword_27FC16048, qword_25C8309D0);
      sub_25C82E25C();
      v78 = qword_281559838;
      sub_25C82E00C();

      v79 = v422;
      sub_25C82DF2C();
      v80 = v443;
      (*(v443 + 56))(v79, 0, 1, v77);
      v81 = v446;
      swift_beginAccess();
      sub_25C7E6CC0(v79, &v72[v81], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
    }

    else
    {
      v80 = v443;
      v84 = v445;
      v442 = *(v443 + 32);
      (v442)(v445, v76, v27);
      v85 = sub_25C82E25C();
      v86 = qword_281559838;
      v87 = v432;
      (v80[2])(v432, v84, v77);
      if (os_log_type_enabled(v86, v85))
      {
        v88 = v86;
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v454[0] = v90;
        *v89 = 136315138;
        sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
        v91 = sub_25C82E4DC();
        v93 = v92;
        (v80[1])(v87, v453);
        v94 = sub_25C7E77E4(v91, v93, v454);
        p_info = (ODCurareEvaluationAndReportingModule + 32);

        *(v89 + 4) = v94;
        _os_log_impl(&dword_25C7D2000, v88, v85, "Got last personalization date: %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        MEMORY[0x25F890110](v90, -1, -1);
        v95 = v89;
        v77 = v453;
        MEMORY[0x25F890110](v95, -1, -1);
      }

      else
      {
        (v80[1])(v87, v77);
      }

      v81 = v446;
      v107 = v422;
      (v442)(v422, v445, v77);
      (v80[7])(v107, 0, 1, v77);
      v72 = v444;
      swift_beginAccess();
      sub_25C7E6CC0(v107, &v72[v81], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
    }

    goto LABEL_20;
  }

  v82 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  swift_beginAccess();
  sub_25C7E92DC(&v2[v82], v61, &qword_27FC16048, qword_25C8309D0);
  v77 = v27;
  v83 = v70;
  if (v70(v61, 1, v27) == 1)
  {
    sub_25C7E97F4(v61, &qword_27FC16048, qword_25C8309D0);
    v80 = v443;
    p_info = (ODCurareEvaluationAndReportingModule + 32);
    v81 = v446;
    goto LABEL_21;
  }

  v96 = v443;
  v97 = *(v443 + 32);
  v98 = v433;
  v445 = (v443 + 32);
  v442 = v97;
  (v97)(v433, v61, v27);
  sub_25C82E25C();
  v99 = qword_281559838;
  sub_25C82E00C();

  v100 = v430;
  sub_25C7E92DC(&v2[v446], v430, &qword_27FC16048, qword_25C8309D0);
  if (v83(v100, 1, v77) == 1)
  {
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v101 = sub_25C82DF9C();
  v102 = v96;
  v103 = *(v96 + 8);
  v103(v100, v77);
  v104 = sub_25C82E25C();
  v105 = qword_281559838;
  if (v101 == -1)
  {
    v108 = v428;
    (*(v102 + 16))(v428, v98, v77);
    if (!os_log_type_enabled(v105, v104))
    {
      v103(v108, v77);
      v115 = v442;
      goto LABEL_19;
    }

    v432 = v105;
    v109 = v444;
    v110 = v444;
    v111 = swift_slowAlloc();
    v430 = swift_slowAlloc();
    v454[0] = v430;
    *v111 = 136315394;
    v112 = v427;
    sub_25C7E92DC(v109 + v446, v427, &qword_27FC16048, qword_25C8309D0);
    LODWORD(v109) = v438(v112, 1, v77);

    if (v109 != 1)
    {
      v113 = v426;
      v114 = v112;
      v115 = v442;
      (v442)(v426, v114, v77);
      sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
      v116 = sub_25C82E4DC();
      v118 = v117;
      v103(v113, v453);
      v119 = sub_25C7E77E4(v116, v118, v454);
      v77 = v453;

      *(v111 + 4) = v119;
      *(v111 + 12) = 2080;
      v120 = v428;
      v121 = sub_25C82E4DC();
      v123 = v122;
      v103(v120, v77);
      v124 = sub_25C7E77E4(v121, v123, v454);

      *(v111 + 14) = v124;
      v125 = v432;
      _os_log_impl(&dword_25C7D2000, v432, v104, "frameworkEvaluationDate is being updated from %s to %s", v111, 0x16u);
      v126 = v430;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v126, -1, -1);
      MEMORY[0x25F890110](v111, -1, -1);

      v98 = v433;
LABEL_19:
      v127 = v422;
      v115(v422, v98, v77);
      v80 = v443;
      (*(v443 + 56))(v127, 0, 1, v77);
      v72 = v444;
      v81 = v446;
      swift_beginAccess();
      sub_25C7E6CC0(v127, &v72[v81], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
      p_info = ODCurareEvaluationAndReportingModule.info;
      goto LABEL_20;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v106 = qword_281559838;
  sub_25C82E00C();

  v103(v98, v77);
  v72 = v444;
  v80 = v102;
  p_info = (ODCurareEvaluationAndReportingModule + 32);
  v81 = v446;
LABEL_20:
  v83 = v438;
LABEL_21:
  v128 = v450;
  sub_25C7E92DC(&v72[v81], v450, &qword_27FC16048, qword_25C8309D0);
  if (v83(v128, 1, v77) == 1)
  {
    v129 = 0;
  }

  else
  {
    v129 = sub_25C82DF4C();
    (v80[1])(v128, v77);
  }

  v130 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v131 = v452;
  [v452 setStreamFilter:v129 fromInclusive:v130 toDate:0 toInclusive:0];

  v132 = [v131 getDatesOfEventsForStream];
  if (!v132)
  {
    sub_25C82E27C();
    v174 = p_info[263];
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v175 = 20;
    swift_willThrow();
    return;
  }

  v133 = v132;
  v134 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_113;
  }

LABEL_26:
  v135 = v449;
  v136 = v134[2];
  v137 = v134 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v454[0] = v137;
  v454[1] = v136;
  sub_25C7FD434(v454);
  v449 = v135;
  v138 = v134;
  v139 = sub_25C82E25C();
  v140 = p_info[263];
  if (os_log_type_enabled(v140, v139))
  {
    v141 = v140;
    v142 = swift_slowAlloc();
    *v142 = 134217984;
    *(v142 + 4) = v138[2];
    _os_log_impl(&dword_25C7D2000, v141, v139, "TIGER: got this many dates: %ld", v142, 0xCu);
    MEMORY[0x25F890110](v142, -1, -1);
  }

  v415 = v138;
  if (!v138[2])
  {
    goto LABEL_111;
  }

  v143 = v80[2];
  v144 = v424;
  v143(v424, v137, v77);
  v143(v437, v144, v77);
  v145 = *&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance];
  if (([v145 respondsToSelector_] & 1) == 0 || (v146 = objc_msgSend(v145, sel_evaluateWithModel_, v452)) == 0)
  {
    sub_25C82E27C();
    v176 = p_info[263];
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v177 = 20;
    swift_willThrow();
    goto LABEL_40;
  }

  v394 = v145;
  v388 = v143;
  v389 = v80 + 2;
  v147 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary;
  v148 = *&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary];
  *&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary] = v146;
  v149 = v146;

  v150 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
  v151 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v392 = "evaluateWithModel:]";
  v152 = sub_25C82E07C();
  [v151 setDateFormat_];

  v395 = v150;
  v153 = sub_25C82DF4C();
  v154 = [v151 stringFromDate_];

  if (!v154)
  {
    sub_25C82E0AC();
    v154 = sub_25C82E07C();
  }

  [v149 setEvaluationDate_];
  v391 = v149;

  v155 = *&v72[v147];
  if (!v155)
  {
    goto LABEL_119;
  }

  v156 = v155;
  v157 = [v452 modelURL];
  v158 = v441;
  sub_25C82DE7C();

  sub_25C82DE1C();
  v159 = v158;
  v160 = v429 + 8;
  v452 = *(v429 + 8);
  (v452)(v159, v455);
  v161 = sub_25C82E07C();

  [v156 setModelName_];

  v162 = *&v72[v147];
  if (!v162)
  {
    goto LABEL_120;
  }

  v163 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_historicalModelEvaluationResults;
  swift_beginAccess();
  v164 = v162;
  MEMORY[0x25F88F4D0]();
  v165 = v163;
  v166 = *((*&v72[v163] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v167 = *((*&v72[v163] & 0xFFFFFFFFFFFFFF8) + 0x18);
  v168 = v391;
  if (v166 >= v167 >> 1)
  {
LABEL_115:
    v382 = v165;
    sub_25C82E1EC();
    v165 = v382;
    v168 = v391;
  }

  v169 = v165;
  sub_25C82E20C();
  swift_endAccess();
  v170 = &v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore];
  v171 = *__swift_project_boxed_opaque_existential_1(&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore], *&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24]);
  v172 = v449;
  v173 = sub_25C81EF2C();
  v134 = v172;
  if (v172)
  {

    goto LABEL_40;
  }

  v419 = v170;
  v385 = v169;
  v179 = v173[2];
  v450 = v160;
  v409 = v179;
  if (v179)
  {
    v180 = 0;
    v408 = v434 + v451[12];
    v407 = v434 + v451[24];
    v406 = (v434 + v451[28]);
    v405 = &v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory];
    v404 = v173 + ((*(v435 + 80) + 32) & ~*(v435 + 80));
    v397 = v421 + 8;
    v390 = v414 + 8;
    v398 = v423 + 8;
    v403 = v451[16];
    v386 = v412 + 8;
    v384 = v411 + 8;
    v402 = v451[20];
    v181 = (v80 + 4);
    v401 = (v429 + 32);
    v396 = (v80 + 7);
    v410 = (v80 + 1);
    v80 = &qword_25C830490;
    *(&v182 + 1) = 2;
    v400 = xmmword_25C830640;
    *&v182 = 136315394;
    v393 = v182;
    *&v182 = 136315138;
    v387 = v182;
    v183 = v440;
    v433 = v181;
    v399 = v173;
    while (1)
    {
      if (v180 >= v173[2])
      {
        __break(1u);
LABEL_113:
        v134 = sub_25C7E916C(v134);
        goto LABEL_26;
      }

      v449 = v134;
      v184 = v434;
      sub_25C7E92DC(&v404[*(v435 + 72) * v180], v434, &qword_27FC16080, &qword_25C830490);
      v430 = *(v184 + v403);
      v185 = v430;
      v429 = *(v184 + v402);
      v186 = *(v407 + 8);
      v427 = *v407;
      v426 = v186;
      v187 = v77;
      v188 = v406[1];
      v428 = *v406;
      v425 = v188;
      v189 = v451[12];
      v190 = v451[16];
      v191 = v451[20];
      v192 = v183;
      v193 = (&v183->isa + v451[24]);
      v194 = v451[28];
      v445 = v180;
      v195 = (v192 + v194);
      v432 = *v181;
      (v432)(v192, v184, v187);
      v196 = *v401;
      v442 = v189;
      v197 = v455;
      v196(&v189[v192], v408, v455);
      *(&v192->isa + v190) = v185;
      *(&v192->isa + v191) = v429;
      v198 = v426;
      *v193 = v427;
      v193[1] = v198;
      v199 = v425;
      *v195 = v428;
      v195[1] = v199;
      v200 = v452;
      v201 = v441;
      sub_25C82DE5C();
      sub_25C82DE8C();
      v200(v201, v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
      v202 = swift_allocObject();
      *(v202 + 16) = v400;
      *(v202 + 56) = MEMORY[0x277D83B88];
      *(v202 + 64) = MEMORY[0x277D83C10];
      *(v202 + 32) = v445;
      sub_25C82E0CC();
      v204 = v203;

      v205 = v448;
      sub_25C82DDFC();
      if (!v430)
      {

        sub_25C82E27C();
        p_info = ODCurareEvaluationAndReportingModule.info;
        v218 = qword_281559838;
        sub_25C82E00C();

        sub_25C7E7DEC();
        v219 = swift_allocError();
        *v220 = 20;
        v449 = v219;
        swift_willThrow();
        v430 = 0;
        goto LABEL_76;
      }

      v206 = __swift_project_boxed_opaque_existential_1(v419, v419[3]);
      v207 = v421;
      sub_25C7E92DC(v192, v421, &qword_27FC16080, &qword_25C830490);
      v208 = v451;
      v209 = v451[12];

      v210 = v397;
      v211 = *(v397 + v208[24]);

      v212 = *(v210 + v208[28]);

      v213 = v420;
      v214 = v453;
      (v432)(v420, v207, v453);
      (*v396)(v213, 0, 1, v214);
      v215 = *v206;
      v216 = v449;
      sub_25C822E90(&v442[v192], v213, v205, v436);
      p_info = ODCurareEvaluationAndReportingModule.info;
      if (v216)
      {
        break;
      }

      v449 = 0;
      sub_25C7E97F4(v213, &qword_27FC16048, qword_25C8309D0);
      v221 = v207 + v209;
      v200 = v452;
      (v452)(v221, v197);
      v222 = v414;
      sub_25C7E92DC(v192, v414, &qword_27FC16080, &qword_25C830490);
      v223 = v451;
      v224 = v451[12];

      v225 = *(v390 + v223[24]);

      v226 = v222;
      v227 = (v222 + v223[28]);
      v228 = v227[1];
      v429 = v204;
      if (v228)
      {
        v229 = v200;
        v230 = *v227;
        v231 = v226 + v224;
        v232 = v226;
        v229(v231, v197);
        v430 = *v410;
        (v430)(v232, v453);
        v233 = sub_25C82E25C();
        v234 = qword_281559838;
        if (os_log_type_enabled(qword_281559838, v233))
        {
          v235 = v234;
          v236 = swift_slowAlloc();
          v237 = swift_slowAlloc();
          v454[0] = v237;
          *v236 = v387;
          *(v236 + 4) = sub_25C7E77E4(v230, v228, v454);
          _os_log_impl(&dword_25C7D2000, v235, v233, "Setting candidate model with coreduet stream %s", v236, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v237);
          MEMORY[0x25F890110](v237, -1, -1);
          MEMORY[0x25F890110](v236, -1, -1);
        }

        v238 = v423;
        sub_25C7E92DC(v440, v423, &qword_27FC16080, &qword_25C830490);
        v239 = v451;
        v240 = v451[12];

        v241 = *(v238 + v239[20]);
        v242 = v398;
        v243 = *(v398 + v239[24]);

        v244 = *(v242 + v239[28]);

        v245 = objc_allocWithZone(ODCurareCandidateModel);
        v246 = sub_25C82DE2C();
        v247 = sub_25C82E07C();

        v248 = [v245 initWithModelURL:v246 withCoreDuetStreamIdentifier:v247 andMetadata:v241];

        v200 = v452;
        (v452)(v238 + v240, v197);
        v249 = v453;
        v250 = v430;
        (v430)(v238, v453);
        v72 = v444;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        if (!v248)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v251 = v226;
        v200((v226 + v224), v197);
        v252 = v453;
        v430 = *v410;
        (v430)(v251, v453);
        v253 = v412;
        sub_25C7E92DC(v192, v412, &qword_27FC16080, &qword_25C830490);
        v254 = v451;
        v255 = v451[12];

        v256 = v253 + v254[24];
        v257 = *(v256 + 8);
        v427 = *v256;
        v258 = *(v386 + v254[28]);

        v428 = v257;
        v259 = (v253 + v255);
        if (!v257)
        {
          v200(v259, v197);
          (v430)(v253, v252);
LABEL_74:

          sub_25C82E27C();
          v308 = p_info[263];
          sub_25C82E00C();

          sub_25C7E7DEC();
          v309 = swift_allocError();
          *v310 = 20;
          v449 = v309;
          swift_willThrow();
LABEL_75:
          v200(v436, v455);
          v430 = 0;
          v192 = v440;
LABEL_76:
          v311 = sub_25C82E27C();
          v312 = p_info[263];
          v313 = v431;
          v80 = &qword_25C830490;
          sub_25C7E92DC(v192, v431, &qword_27FC16080, &qword_25C830490);
          v314 = v447;
          sub_25C7E92DC(v192, v447, &qword_27FC16080, &qword_25C830490);
          LODWORD(v429) = v311;
          if (os_log_type_enabled(v312, v311))
          {
            v427 = v312;
            v315 = swift_slowAlloc();
            v428 = v315;
            v426 = swift_slowAlloc();
            v454[0] = v426;
            *v315 = v393;
            v316 = v423;
            sub_25C7E92DC(v313, v423, &qword_27FC16080, &qword_25C830490);
            v317 = v313;
            v318 = v451;
            v319 = v451[12];

            v320 = v398;
            v321 = *(v398 + v318[24]);

            v322 = *(v320 + v318[28]);

            v323 = sub_25C82DE8C();
            v324 = v453;
            v326 = v325;
            sub_25C7E97F4(v317, &qword_27FC16080, &qword_25C830490);
            (v452)(v316 + v319, v455);
            v425 = *v410;
            (v425)(v316, v324);
            v327 = sub_25C7E77E4(v323, v326, v454);

            v328 = v428;
            *(v428 + 4) = v327;
            *(v328 + 6) = 2080;
            sub_25C7E92DC(v447, v316, &qword_27FC16080, &qword_25C830490);
            v329 = v318[12];

            v330 = *(v320 + v318[24]);

            v331 = *(v320 + v318[28]);

            v332 = v418;
            (v432)(v418, v316, v324);
            (v452)(v316 + v329, v455);
            v200 = v452;
            sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
            v333 = sub_25C82E4DC();
            v335 = v334;
            (v425)(v332, v324);
            p_info = (ODCurareEvaluationAndReportingModule + 32);
            v80 = &qword_25C830490;
            sub_25C7E97F4(v447, &qword_27FC16080, &qword_25C830490);
            v336 = sub_25C7E77E4(v333, v335, v454);

            v337 = v428;
            *(v428 + 14) = v336;
            v338 = v427;
            _os_log_impl(&dword_25C7D2000, v427, v429, "Pruning invalid model at: %s date: %s.", v337, 0x16u);
            v339 = v426;
            swift_arrayDestroy();
            MEMORY[0x25F890110](v339, -1, -1);
            v72 = v444;
            MEMORY[0x25F890110](v337, -1, -1);

            v340 = v419;
            v341 = v442;
          }

          else
          {
            sub_25C7E97F4(v314, &qword_27FC16080, &qword_25C830490);
            sub_25C7E97F4(v313, &qword_27FC16080, &qword_25C830490);
            v340 = v419;
            v341 = v442;
            v72 = v444;
          }

          v342 = *__swift_project_boxed_opaque_existential_1(v340, v340[3]);
          v183 = v440;
          v343 = v430;
          sub_25C826030(v341 + v440, v440);
          v134 = v343;
          if (v343)
          {
            goto LABEL_123;
          }

          v200(v448, v455);

          v77 = v453;
          goto LABEL_81;
        }

        v200(v259, v197);
        (v430)(v253, v252);
        v260 = v423;
        sub_25C7E92DC(v192, v423, &qword_27FC16080, &qword_25C830490);
        v261 = v451;
        v426 = v451[12];

        v262 = *(v260 + v261[20]);
        v263 = v398;
        v264 = *(v398 + v261[24]);

        v265 = *(v263 + v261[28]);

        v266 = objc_allocWithZone(ODCurareCandidateModel);
        v267 = sub_25C82DE2C();
        v268 = sub_25C82E07C();

        v248 = [v266 initWithModelURL:v267 withBiomeStreamIdentifier:v268 andMetadata:v262];

        v249 = v453;
        v200 = v452;
        (v452)(v260 + v426, v197);
        v250 = v430;
        (v430)(v260, v249);
        v72 = v444;
        p_info = ODCurareEvaluationAndReportingModule.info;
        if (!v248)
        {
          goto LABEL_74;
        }
      }

      v430 = v250;
      v269 = [v248 CDModelDataStreamIdentifier];
      if (v269)
      {
        v270 = v269;
        v271 = sub_25C82E0AC();
        v273 = v272;

        v274 = sub_25C82E25C();
        v275 = p_info[263];
        if (os_log_type_enabled(v275, v274))
        {
          v276 = v275;
          v277 = swift_slowAlloc();
          v278 = swift_slowAlloc();
          v454[0] = v278;
          *v277 = v387;
          v279 = sub_25C7E77E4(v271, v273, v454);

          *(v277 + 4) = v279;
          _os_log_impl(&dword_25C7D2000, v276, v274, "Candiate model has stream %s", v277, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v278);
          MEMORY[0x25F890110](v278, -1, -1);
          MEMORY[0x25F890110](v277, -1, -1);
        }

        else
        {
        }

        v200 = v452;
        v249 = v453;
      }

      v428 = v248;
      [v248 setIsPersonalizableModel_];
      v280 = v413;
      sub_25C7E92DC(&v72[v446], v413, &qword_27FC16048, qword_25C8309D0);
      if (v438(v280, 1, v249) == 1)
      {
        v281 = 0;
      }

      else
      {
        v281 = sub_25C82DF4C();
        (v430)(v280, v249);
      }

      v282 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v283 = v428;
      [v428 setStreamFilter:v281 fromInclusive:v282 toDate:0 toInclusive:0];

      v284 = v394;
      if (([v394 respondsToSelector_] & 1) == 0 || (v285 = objc_msgSend(v284, sel_evaluateWithModel_, v283)) == 0)
      {

        sub_25C82E27C();
        v305 = p_info[263];
        sub_25C82E00C();

        sub_25C7E7DEC();
        v306 = swift_allocError();
        *v307 = 20;
        v449 = v306;
        swift_willThrow();

        goto LABEL_75;
      }

      v286 = v285;
      v287 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v288 = sub_25C82E07C();
      [v287 setDateFormat_];

      v289 = sub_25C82DF4C();
      v290 = [v287 stringFromDate_];

      if (!v290)
      {
        sub_25C82E0AC();
        v290 = sub_25C82E07C();
      }

      [v286 setEvaluationDate_];
      v291 = v411;
      sub_25C7E92DC(v440, v411, &qword_27FC16080, &qword_25C830490);
      v292 = v451;
      v293 = *(v291 + v451[16]);

      v294 = v384;
      v295 = *(v384 + v292[24]);

      v296 = *(v294 + v292[28]);

      if (!v293)
      {
        goto LABEL_122;
      }

      v297 = v292[12];
      v298 = [v293 modelName];

      [v286 setModelName_];
      v299 = v291 + v297;
      v300 = v455;
      v301 = v452;
      (v452)(v299, v455);
      v302 = v291;
      v77 = v453;
      (v430)(v302, v453);
      v303 = v385;
      v304 = swift_beginAccess();
      MEMORY[0x25F88F4D0](v304);
      if (*((*&v72[v303] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v72[v303] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v344 = *((*&v72[v303] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25C82E1EC();
      }

      sub_25C82E20C();
      swift_endAccess();

      v301(v436, v300);
      v301(v448, v300);
      v183 = v440;
      v134 = v449;
      v80 = &qword_25C830490;
LABEL_81:
      v180 = (v445 + 1);
      sub_25C7E97F4(v183, &qword_27FC16080, &qword_25C830490);
      v173 = v399;
      v181 = v433;
      if (v409 == v180)
      {
        goto LABEL_82;
      }
    }

    sub_25C7E97F4(v213, &qword_27FC16048, qword_25C8309D0);

    v217 = v207 + v209;
    v200 = v452;
    (v452)(v217, v197);
    v430 = 0;
    v449 = v216;
    goto LABEL_76;
  }

LABEL_82:

  v454[0] = MEMORY[0x277D84F90];
  v345 = v417;
  if (v417 >> 62)
  {
    goto LABEL_117;
  }

  v346 = *((v417 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_84:
  v160 = v437;
  v80 = v443;
  if (v346)
  {
    v77 = 0;
    v451 = (v345 & 0xC000000000000001);
    v447 = v345 & 0xFFFFFFFFFFFFFF8;
    v448 = (v443 + 8);
    v449 = v346;
    while (1)
    {
      if (v451)
      {
        v347 = MEMORY[0x25F88F6D0](v77);
        v80 = v416;
        p_info = (v77 + 1);
        if (__OFADD__(v77, 1))
        {
          goto LABEL_114;
        }
      }

      else
      {
        v80 = v416;
        if (v77 >= *(v447 + 16))
        {
          __break(1u);
LABEL_117:
          v346 = sub_25C82E43C();
          v345 = v417;
          goto LABEL_84;
        }

        v347 = *(v345 + 8 * v77 + 32);
        p_info = (v77 + 1);
        if (__OFADD__(v77, 1))
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }
      }

      v348 = v134;
      sub_25C7E92DC(&v72[v446], v80, &qword_27FC16048, qword_25C8309D0);
      v349 = v453;
      if (v438(v80, 1, v453) == 1)
      {
        v350 = 0;
      }

      else
      {
        v350 = sub_25C82DF4C();
        (v448->isa)(v80, v349);
      }

      v351 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v347 setStreamFilter:v350 fromInclusive:v351 toDate:0 toInclusive:0];

      v352 = v394;
      if (([v394 respondsToSelector_] & 1) == 0 || (v353 = objc_msgSend(v352, sel_evaluateWithModel_, v347)) == 0)
      {

        sub_25C82E27C();
        v366 = qword_281559838;
        sub_25C82E00C();

        sub_25C7E7DEC();
        swift_allocError();
        *v367 = 20;
        swift_willThrow();

        isa = v448->isa;
        v369 = v453;
        (v448->isa)(v437, v453);
        isa(v424, v369);
        goto LABEL_41;
      }

      v354 = v353;
      v355 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v356 = sub_25C82E07C();
      [v355 setDateFormat_];

      v357 = sub_25C82DF4C();
      v358 = [v355 stringFromDate_];

      if (!v358)
      {
        sub_25C82E0AC();
        v358 = sub_25C82E07C();
      }

      [v354 setEvaluationDate_];
      v359 = [v347 modelURL];
      v360 = v441;
      sub_25C82DE7C();

      sub_25C82DE1C();
      (v452)(v360, v455);
      v361 = sub_25C82E07C();

      [v354 setModelName_];

      v362 = v354;
      MEMORY[0x25F88F4D0]();
      if (*((v454[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v454[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v365 = *((v454[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25C82E1EC();
      }

      sub_25C82E20C();

      v363 = v454[0];
      ++v77;
      v364 = p_info == v449;
      v160 = v437;
      v80 = v443;
      v345 = v417;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      v134 = v348;
      if (v364)
      {
        goto LABEL_106;
      }
    }
  }

  v363 = MEMORY[0x277D84F90];
LABEL_106:
  v449 = v134;
  v370 = v422;
  v77 = v453;
  v388(v422, v160, v453);
  (v80[7])(v370, 0, 1, v77);
  sub_25C82B334(v370, *&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier], *&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8]);
  sub_25C7E97F4(v370, &qword_27FC16048, qword_25C8309D0);
  v371 = &v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore];
  v372 = __swift_project_boxed_opaque_existential_1(&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore], *&v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore + 24]);
  v373 = *&v72[v385];
  v374 = *v372;

  v375 = v395;
  v376 = v449;
  sub_25C812D1C(&v72[v395], v373, 1);
  v449 = v376;
  if (v376)
  {

    v377 = v80[1];
    v377(v437, v77);
    v377(v424, v77);

    return;
  }

  v378 = *__swift_project_boxed_opaque_existential_1(v371, v371[3]);
  v379 = v449;
  sub_25C812D1C(&v72[v375], v363, 0);
  if (!v379)
  {
    v449 = 0;

    v380 = v80[1];
    v380(v437, v77);
    v380(v424, v77);
    v72[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport] = 1;
LABEL_111:
    sub_25C82E25C();
    v381 = p_info[263];
    sub_25C82E00C();

    return;
  }

LABEL_40:
  v178 = v80[1];
  v178(v437, v77);
  v178(v424, v77);
LABEL_41:
}