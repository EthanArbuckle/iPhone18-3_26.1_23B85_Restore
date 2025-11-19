void sub_1000743B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 _hasResultProviderID])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = [*(a1 + 32) _mapItemsFromGEOMapItems:v7 mapItemSource:0];
  (*(*(a1 + 40) + 16))();
}

id sub_1000751E0(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  sub_10006B998(*(a1 + 32), v2);

  return v2;
}

void sub_10007578C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = v8;

  v10 = [*(a1 + 40) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000758B4;
  block[3] = &unk_1000A95D0;
  v19 = v9;
  v16 = v6;
  v14 = *(a1 + 48);
  v11 = v14;
  v18 = v14;
  v17 = v5;
  v12 = v5;
  v13 = v6;
  dispatch_async(v10, block);
}

uint64_t sub_1000758B4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 64);
      v5 = *(a1 + 32);
      v9 = 138412802;
      v10 = v3;
      v11 = 2048;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@, training completed, latency, %.2f, error, %@", &v9, 0x20u);
    }
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  return (*(*(a1 + 48) + 16))();
}

void sub_100075B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v7 = [*(a1 + 40) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075C60;
  block[3] = &unk_1000A95F8;
  v14 = v6;
  v12 = v3;
  v10 = *(a1 + 48);
  v8 = v10;
  v13 = v10;
  v9 = v3;
  dispatch_async(v7, block);
}

uint64_t sub_100075C60(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = sub_1000011A0(&qword_1000B29B8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = *(a1 + 56);
      v5 = *(a1 + 32);
      v7 = 138412802;
      v8 = v3;
      v9 = 2048;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@, interrupt complete with latency, %.2f, error, %@", &v7, 0x20u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t RTPAccessPointMappingReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
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
        if ((v12 & 7) == 2)
        {
          v30[0] = 0;
          v30[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v31 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v31 & 0x7F) << v17;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_34;
              }
            }

            [a2 hasError];
LABEL_34:
            PBRepeatedUInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v30[0] & 0x7F) << v23;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              goto LABEL_48;
            }
          }

          [a2 hasError];
LABEL_48:
          PBRepeatedUInt64Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 32);
        *(a1 + 32) = v13;
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

uint64_t RTPBluepoiConfigReadFrom(uint64_t a1, void *a2)
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
          v24 = &OBJC_IVAR___RTPBluepoiConfig__lowConfidenceJurassic;
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
          v24 = &OBJC_IVAR___RTPBluepoiConfig__higConfidenceJurassic;
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
          v24 = &OBJC_IVAR___RTPBluepoiConfig__xgboostLowThreshold;
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
          v24 = &OBJC_IVAR___RTPBluepoiConfig__xgboostHighThreshold;
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

uint64_t RTPCalibrationParameterReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 48) |= 0x10u;
          v33 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v25 = v33;
          v26 = &OBJC_IVAR___RTPCalibrationParameter__lowThresholdBeforeCalibration;
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          *(a1 + 48) |= 2u;
          v33 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v25 = v33;
          v26 = &OBJC_IVAR___RTPCalibrationParameter__highThresholdBeforeCalibration;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            *(a1 + 48) |= 8u;
            v33 = 0;
            v18 = [a2 position] + 8;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v25 = v33;
            v26 = &OBJC_IVAR___RTPCalibrationParameter__lowThresholdAfterCalibration;
            goto LABEL_50;
          case 4:
            *(a1 + 48) |= 1u;
            v33 = 0;
            v20 = [a2 position] + 8;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v25 = v33;
            v26 = &OBJC_IVAR___RTPCalibrationParameter__highThresholdAfterCalibration;
            goto LABEL_50;
          case 5:
            *(a1 + 48) |= 4u;
            v33 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v25 = v33;
            v26 = &OBJC_IVAR___RTPCalibrationParameter__highestScore;
LABEL_50:
            *(a1 + *v26) = v25;
            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RTPHashedAccessPointMappingReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
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
        if ((v12 & 7) == 2)
        {
          v30[0] = 0;
          v30[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v31 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v31 & 0x7F) << v17;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_34;
              }
            }

            [a2 hasError];
LABEL_34:
            PBRepeatedUInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v30[0] & 0x7F) << v23;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              goto LABEL_48;
            }
          }

          [a2 hasError];
LABEL_48:
          PBRepeatedUInt64Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 32);
        *(a1 + 32) = v13;
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

uint64_t RTPLatLngReadFrom(uint64_t a1, void *a2)
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
        v19 = &OBJC_IVAR___RTPLatLng__lat;
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
    v19 = &OBJC_IVAR___RTPLatLng__lng;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t RTPModelReadFrom(char *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadData();
          v16 = 8;
LABEL_31:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_32:

          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadData();
          v16 = 40;
          goto LABEL_31;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addFeature:v14];
            }

            goto LABEL_32;
          case 4:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addLabel:v14];
            }

            goto LABEL_32;
          case 5:
            v14 = PBReaderReadData();
            if (v14)
            {
              [a1 addHashedFeature:v14];
            }

            goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RTPModelTileReadFrom(uint64_t a1, void *a2)
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
          v16 = objc_alloc_init(RTPModel);
          [a1 addModel:v16];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !RTPModelReadFrom(v16, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(RTPAccessPointMapping);
          [a1 addApMapping:v16];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !RTPAccessPointMappingReadFrom(v16, a2))
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
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 1u;
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
            *(a1 + 8) = v23;
            goto LABEL_48;
          case 4:
            v16 = objc_alloc_init(RTPHashedAccessPointMapping);
            [a1 addHashedApMapping:v16];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !RTPHashedAccessPointMappingReadFrom(v16, a2))
            {
              goto LABEL_50;
            }

LABEL_41:
            PBReaderRecallMark();

            goto LABEL_48;
          case 5:
            v14 = PBReaderReadData();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;

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

uint64_t RTPPoiMetadataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &selRef_forceEventModelRefreshWithReply_;
    v6 = &selRef_forceEventModelRefreshWithReply_;
    v7 = &selRef_forceEventModelRefreshWithReply_;
    v8 = &selRef_forceEventModelRefreshWithReply_;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v67) = 0;
        v12 = [a2 position] + 1;
        if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
        {
          v14 = [a2 data];
          [v14 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v11 |= (v67 & 0x7F) << v9;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) <= 4)
      {
        switch(v17)
        {
          case 1:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + *(v5 + 404)) |= 1u;
            while (1)
            {
              LOBYTE(v67) = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v67 & 0x7F) << v34;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v15 = v35++ >= 9;
              if (v15)
              {
                v40 = 0;
                goto LABEL_87;
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

LABEL_87:
            *(a1 + *(v6 + 405)) = v40;
            goto LABEL_95;
          case 3:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + *(v5 + 404)) |= 2u;
            while (1)
            {
              LOBYTE(v67) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v67 & 0x7F) << v50;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v15 = v51++ >= 9;
              if (v15)
              {
                LOBYTE(v24) = 0;
                goto LABEL_93;
              }
            }

            v24 = (v52 != 0) & ~[a2 hasError];
LABEL_93:
            v56 = *(v7 + 406);
            goto LABEL_94;
          case 4:
            v25 = PBReaderReadData();
            v26 = *(v8 + 407);
            v27 = *(a1 + v26);
            *(a1 + v26) = v25;

            goto LABEL_95;
        }

        goto LABEL_55;
      }

      if (v17 > 7)
      {
        break;
      }

      if (v17 != 5)
      {
        if (v17 == 6)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + *(v5 + 404)) |= 8u;
          while (1)
          {
            LOBYTE(v67) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v67 & 0x7F) << v18;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v15 = v19++ >= 9;
            if (v15)
            {
              LOBYTE(v24) = 0;
              goto LABEL_89;
            }
          }

          v24 = (v20 != 0) & ~[a2 hasError];
LABEL_89:
          v56 = 58;
LABEL_94:
          *(a1 + v56) = v24;
          goto LABEL_95;
        }

LABEL_55:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_95;
      }

      v41 = objc_alloc_init(RTPLatLng);
      objc_storeStrong((a1 + 40), v41);
      v67 = 0;
      v68 = 0;
      if (!PBReaderPlaceMark() || !RTPLatLngReadFrom(v41, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_95:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v17 == 8)
    {
      if ((v16 & 7) == 2)
      {
        v67 = 0;
        v68 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v43 = [a2 position];
          if (v43 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

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
            v15 = v45++ >= 9;
            if (v15)
            {
              goto LABEL_74;
            }
          }

          [a2 hasError];
LABEL_74:
          PBRepeatedUInt64Add();
        }

        PBReaderRecallMark();
      }

      else
      {
        v58 = v5;
        v59 = v7;
        v60 = v6;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        while (1)
        {
          LOBYTE(v67) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v67 & 0x7F) << v61;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v15 = v62++ >= 9;
          if (v15)
          {
            goto LABEL_108;
          }
        }

        [a2 hasError];
LABEL_108:
        PBRepeatedUInt64Add();
        v6 = v60;
        v7 = v59;
        v5 = v58;
        v8 = &selRef_forceEventModelRefreshWithReply_;
      }

      goto LABEL_95;
    }

    if (v17 == 9)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + *(v5 + 404)) |= 4u;
      while (1)
      {
        LOBYTE(v67) = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v67 & 0x7F) << v28;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v15 = v29++ >= 9;
        if (v15)
        {
          LOBYTE(v24) = 0;
          goto LABEL_91;
        }
      }

      v24 = (v30 != 0) & ~[a2 hasError];
LABEL_91:
      v56 = 57;
      goto LABEL_94;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

void sub_100083828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::overflow_error a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100083894(char *a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = "Cause unknown: error caused by bad argument with value %1%";
  }

  sub_10000D63C(&v27, "boost::math::cdf(const chi_squared_distribution<%1%>&, %1%)");
  sub_10000D63C(&v26, v3);
  sub_10000D63C(&v25, "Error in function ");
  v4 = 0;
  v5 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  size = v27.__r_.__value_.__l.__size_;
  v7 = v27.__r_.__value_.__r.__words[0];
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v27;
  }

  else
  {
    v9 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v27.__r_.__value_.__l.__size_;
  }

  do
  {
    v10 = v5 - v4;
    if ((v5 - v4) < 3)
    {
      break;
    }

    v11 = v9 + v5;
    v12 = v9 + v4;
    while (1)
    {
      v13 = memchr(v12, 37, v10 - 2);
      if (!v13)
      {
        goto LABEL_26;
      }

      if (*v13 == 12581 && v13[2] == 37)
      {
        break;
      }

      v12 = v13 + 1;
      v10 = v11 - v12;
      if (v11 - v12 < 3)
      {
        goto LABEL_26;
      }
    }

    if (v13 == v11)
    {
      break;
    }

    v15 = v13 - v9;
    if (v15 == -1)
    {
      break;
    }

    std::string::replace(&v27, v15, 3uLL, "double");
    v4 = v15 + 6;
    v5 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    v6 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    size = v27.__r_.__value_.__l.__size_;
    v7 = v27.__r_.__value_.__r.__words[0];
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v27;
    }

    else
    {
      v9 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v27.__r_.__value_.__l.__size_;
    }
  }

  while (v5 >= v4);
LABEL_26:
  if ((v6 & 0x80u) == 0)
  {
    v16 = &v27;
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 0x80u) == 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = size;
  }

  std::string::append(&v25, v16, v17);
  std::string::append(&v25, ": ");
  sub_100083DB0(&v28);
  *(&v31[0].__locale_ + *(v29 - 24)) = 17;
  v18 = *a2;
  std::ostream::operator<<();
  std::stringbuf::str();
  v29 = v19;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v24 >= 0)
  {
    v20 = &v23;
  }

  else
  {
    v20 = v23;
  }

  sub_100083C6C(&v26, v20);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v26;
  }

  else
  {
    v21 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v26.__r_.__value_.__l.__size_;
  }

  std::string::append(&v25, v21, v22);
  std::logic_error::logic_error(&v28, &v25);
  sub_100083D70(&v28);
}

void sub_100083BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::domain_error a33)
{
  std::domain_error::~domain_error(&a33);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_100083C6C(std::string *a1, char *__s)
{
  result = strlen(__s);
  v5 = result;
  v6 = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

LABEL_6:
  v9 = size - v6;
  if ((size - v6) >= 3)
  {
    v10 = (v8 + size);
    result = &v6[v8];
    do
    {
      result = memchr(result, 37, v9 - 2);
      if (!result)
      {
        break;
      }

      if (*result == 12581 && result[2] == 37)
      {
        if (result != v10)
        {
          v12 = &result[-v8];
          if (v12 != -1)
          {
            result = std::string::replace(a1, v12, 3uLL, __s);
            v6 = &v5[v12];
            size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
            v8 = (size & 0x80u) == 0 ? a1 : a1->__r_.__value_.__r.__words[0];
            if ((size & 0x80u) != 0)
            {
              size = a1->__r_.__value_.__l.__size_;
            }

            if (size >= v6)
            {
              goto LABEL_6;
            }
          }
        }

        return result;
      }

      ++result;
      v9 = v10 - result;
    }

    while (v10 - result >= 3);
  }

  return result;
}

void sub_100083D70(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_1000841A8(exception, a1);
}

void (__cdecl ***sub_100083DB0(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_10000D26C((a1 + 3), 24);
  return a1;
}

void sub_10008402C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100084054(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000841A8(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1000A8FE8;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1000A9698;
  *(a1 + 8) = off_1000A96C8;
  *(a1 + 24) = off_1000A96F0;
  return a1;
}

uint64_t sub_100084254(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::domain_error::~domain_error((a1 + 8));
  return a1;
}

void sub_100084478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10002DB54(&a9);
  sub_10002DB54(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1000844E4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100084754(exception, a1);
}

void sub_100084540(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::domain_error::~domain_error((a1 + 8));

  operator delete();
}

void sub_1000845B4(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));

  std::domain_error::~domain_error(a1);
}

void sub_100084610(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));
  std::domain_error::~domain_error(a1);

  operator delete();
}

void sub_100084688(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);

  std::domain_error::~domain_error(v1);
}

void sub_1000846E0(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);
  std::domain_error::~domain_error(v1);

  operator delete();
}

uint64_t sub_100084754(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1000A8FE8;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1000A9040;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1000A9698;
  *(a1 + 8) = off_1000A96C8;
  *(a1 + 24) = off_1000A96F0;
  return a1;
}

void sub_100084890(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_1000848D0(exception, a1);
}

uint64_t sub_1000848D0(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_1000A8FE8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1000A9758;
  *(a1 + 8) = off_1000A9788;
  *(a1 + 24) = off_1000A97B0;
  return a1;
}

uint64_t sub_10008497C(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::overflow_error::~overflow_error((a1 + 8));
  return a1;
}

void sub_100084BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10002DB54(&a9);
  sub_10002DB54(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_100084C0C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100084E7C(exception, a1);
}

void sub_100084C68(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::overflow_error::~overflow_error((a1 + 8));

  operator delete();
}

void sub_100084CDC(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));

  std::overflow_error::~overflow_error(a1);
}

void sub_100084D38(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));
  std::overflow_error::~overflow_error(a1);

  operator delete();
}

void sub_100084DB0(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);

  std::overflow_error::~overflow_error(v1);
}

void sub_100084E08(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);
  std::overflow_error::~overflow_error(v1);

  operator delete();
}

uint64_t sub_100084E7C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1000A8FE8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1000A9040;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1000A9758;
  *(a1 + 8) = off_1000A9788;
  *(a1 + 24) = off_1000A97B0;
  return a1;
}

double sub_100084FB8(double a1, double a2)
{
  v2 = a2 - a1 + 1.0;
  v3 = v2 + 2.0;
  if (v2 + 2.0 == 0.0)
  {
    v4 = 3.56011817e-307;
  }

  else
  {
    v4 = v2 + 2.0;
  }

  v5 = 0.0;
  v6 = 2;
  v7 = v4;
  do
  {
    v3 = v3 + 2.0;
    v8 = (a1 - v6) * v6;
    v9 = v3 + v8 * v5;
    v7 = v3 + v8 / v7;
    if (v7 == 0.0)
    {
      v7 = 3.56011817e-307;
    }

    if (v9 == 0.0)
    {
      v5 = 2.80889552e306;
    }

    else
    {
      v5 = 1.0 / v9;
    }

    v4 = v4 * (v5 * v7);
  }

  while (fabs(v5 * v7 + -1.0) > 2.22044605e-16 && v6++ != 0);
  return 1.0 / (v2 + (a1 + -1.0) / v4);
}

void sub_100085068(double a1, double a2)
{
  v5 = 0.0;
  v6 = 1.0;
  v7 = 1000000;
  do
  {
    v5 = v6 + v5;
    if (fabs(v5 * 2.22044605e-16) >= fabs(v6))
    {
      break;
    }

    a1 = a1 + 1.0;
    v6 = v6 * (a2 / a1);
    --v7;
  }

  while (v7);
  v8 = 1000000 - v7;
  if (v8 >= 0xF4240)
  {
    v9[1] = v2;
    v9[2] = v3;
    *v9 = v8;
    sub_100085E48("boost::math::detail::lower_gamma_series<%1%>(%1%)", v9);
  }
}

double sub_1000850F4(double a1, long double a2)
{
  result = 0.0;
  if (a2 >= 1.79769313e308)
  {
    return result;
  }

  if (a1 >= 1.0)
  {
    v16 = a1 + 6.02468004 + -0.5;
    if (a1 > 150.0)
    {
      v17 = (a2 - a1 + -6.02468004 + 0.5) / v16;
      if (fabs(v17 * v17 * a1) <= 100.0)
      {
        v57 = (a2 - a1 + -6.02468004 + 0.5) / v16;
        if (v17 < -1.0)
        {
          sub_100085A1C("boost::math::log1pmx<%1%>(%1%)", "log1pmx(x) requires x > -1, but got x = %1%.", &v57);
        }

        if (v17 == -1.0)
        {
          sub_100086A38("boost::math::log1pmx<%1%>(%1%)", "Overflow Error");
        }

        v18 = fabs(v17);
        if (v18 <= 0.949999988)
        {
          v49 = -v17;
          if (v18 >= 2.22044605e-16)
          {
            v19 = 0.0;
            v53 = 2;
            v54 = 1000000;
            do
            {
              v17 = v17 * v49;
              v55 = v17 / v53;
              v19 = v19 + v55;
              if (fabs(v19 * 2.22044605e-16) >= fabs(v55))
              {
                break;
              }

              ++v53;
              --v54;
            }

            while (v54);
            if (v54 > 0xF4240)
            {
              v58 = (1000000 - v54);
              sub_100085E48("boost::math::log1pmx<%1%>(%1%)", &v58);
            }
          }

          else
          {
            v19 = v17 * v49 * 0.5;
          }
        }

        else
        {
          v19 = log(v17 + 1.0) - v17;
        }

        v56 = a2 * -5.52468004 / v16 + a1 * v19;
        goto LABEL_47;
      }
    }

    v20 = log(a2 / v16);
    v21 = v20 * a1;
    v22 = a1 - a2;
    if (a1 - a2 >= v20 * a1)
    {
      v23 = v20 * a1;
    }

    else
    {
      v23 = a1 - a2;
    }

    if (v23 <= -708.0 || (v21 >= v22 ? (v24 = v21) : (v24 = a1 - a2), v24 >= 709.0))
    {
      if (v23 * 0.5 <= -708.0 || (v21 >= v22 ? (v43 = v21) : (v43 = a1 - a2), v43 * 0.5 >= 709.0))
      {
        if (v23 * 0.25 <= -708.0 || (v21 >= v22 ? (v46 = v21) : (v46 = a1 - a2), a1 >= a2 || v46 * 0.25 >= 709.0))
        {
          v50 = v22 / a1;
          if (v22 / a1 > -708.0 && v50 < 709.0)
          {
            v51 = exp(v50);
            v52 = pow(v51 * a2 / v16, a1);
LABEL_48:
            v33 = v52;
            return v33 * (sqrt(v16 / 2.71828183) / sub_100087BB8(dbl_100093530, dword_100093598, a1, v26, v27, v28, v29, v30, v31, v32));
          }

          v56 = v22 + v21;
LABEL_47:
          v52 = exp(v56);
          goto LABEL_48;
        }

        v47 = pow(a2 / v16, a1 * 0.25);
        v48 = exp(v22 * 0.25);
        v45 = v47 * v48 * (v47 * v48);
      }

      else
      {
        v44 = pow(a2 / v16, a1 * 0.5);
        v45 = v44 * exp(v22 * 0.5);
      }

      v33 = v45 * v45;
    }

    else
    {
      v25 = pow(a2 / v16, a1);
      v33 = exp(v22) * v25;
    }

    return v33 * (sqrt(v16 / 2.71828183) / sub_100087BB8(dbl_100093530, dword_100093598, a1, v26, v27, v28, v29, v30, v31, v32));
  }

  v5 = -a2;
  if (a2 <= -708.0)
  {
    v34 = a1 * log(a2) - a2;
    v42 = v34 - sub_100086808(a1, v35, v36, v37, v38, v39, v40, v41);

    return exp(v42);
  }

  else
  {
    v6 = pow(a2, a1);
    v7 = v6 * exp(v5);
    sub_100086ED8(a1, v8, v9, v10, v11, v12, v13, v14);
    return v7 / v15;
  }
}

double sub_1000854C8(double a1, double a2)
{
  v3 = (a2 - a1) / a1;
  v31 = v3;
  if (v3 < -1.0)
  {
    sub_100085A1C("boost::math::log1pmx<%1%>(%1%)", "log1pmx(x) requires x > -1, but got x = %1%.", &v31);
  }

  if (v3 == -1.0)
  {
    sub_100086A38("boost::math::log1pmx<%1%>(%1%)", "Overflow Error");
  }

  v5 = fabs(v3);
  if (v5 <= 0.949999988)
  {
    v7 = -v3;
    if (v5 >= 2.22044605e-16)
    {
      v6 = 0.0;
      v8 = 2;
      v9 = 1000000;
      do
      {
        v3 = v3 * v7;
        v10 = v3 / v8;
        v6 = v6 + v10;
        if (fabs(v6 * 2.22044605e-16) >= fabs(v10))
        {
          break;
        }

        ++v8;
        --v9;
      }

      while (v9);
      if (v9 > 0xF4240)
      {
        v32 = (1000000 - v9);
        sub_100085E48("boost::math::log1pmx<%1%>(%1%)", &v32);
      }
    }

    else
    {
      v6 = v3 * v7 * 0.5;
    }
  }

  else
  {
    v6 = log(v3 + 1.0) - v3;
  }

  v11 = -(v6 * a1);
  v12 = sub_100087DE4(1, sqrt(v11));
  if (fabs(v12) > 1.79769313e308)
  {
    sub_100086A38("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
  }

  v13 = sqrt(v6 * -2.0);
  v14 = exp(-v11);
  if (a2 >= a1)
  {
    v15 = v13;
  }

  else
  {
    v15 = -v13;
  }

  v16 = 1.0 / a1;
  v17.f64[0] = v15 * v15 * -0.000109765822 + -0.000334931611;
  v18.f64[0] = v15 * v15 * 0.000281269515 + 0.0000517179091;
  v19.f64[0] = v15 * v15 * (v15 * v15 * -0.00000229148118 + -0.0000135940482) + 0.0000679778048;
  v20.f64[0] = v15 * v15 * (v15 * v15 * 0.00000801847026 + 0.000000141906292) + -0.000199325705;
  v21.f64[0] = v15 * v15 * 0.00000142309007 + 0.0000110826541;
  v22.f64[0] = v15 * v15 * -0.00000567495283 + -0.000000239650511;
  v23.f64[0] = v15 * v15 * 0.0000000119516286 + 0.000000137863345;
  v24.f64[0] = v15 * v15 * -0.000000057525456 + 0.0000000046471278;
  v17.f64[1] = v15 * v15 * (v15 * v15 * -0.0000183291166 + -0.0000815396937) + 0.00027087821;
  v18.f64[1] = v15 * v15 * (v15 * v15 * 0.0000561168275 + 0.000000790235323) + -0.000592166437;
  v25 = vaddq_f64(vmulq_n_f64(v18, v15), vaddq_f64(vmulq_n_f64(v17, v15 * v15), xmmword_100092A70));
  v26 = &unk_100092970;
  *&v17.f64[0] = *&vld1q_dup_f64(v26);
  v17.f64[1] = (v15 * -0.000438297099 + 0.000839498721) * v15 + -0.000652623919;
  v19.f64[1] = v15 * v15 * 0.000011375727 + 0.0000664149822;
  v20.f64[1] = v15 * v15 * -0.0000396836505 + -0.00000146384526;
  v21.f64[1] = v15 * v15 * (v15 * v15 * 0.000000142806142 + 0.00000137219573) + -0.0000127606352;
  v22.f64[1] = v15 * v15 * (v15 * v15 * -0.000000629899214 + 0.0000000342357873) + 0.0000529234488;
  v23.f64[1] = v15 * v15 * (v15 * v15 * 9.14769958e-10 + 0.0000000102618098) + -0.000000176659527;
  v24.f64[1] = v15 * v15 * (v15 * v15 * -0.00000000438203602 + 0.00000000670785354) + 0.000000829671134;
  v27 = vaddq_f64(vmulq_n_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v22, v15 * v15), xmmword_100092AE0), v15 * v15), xmmword_100092AF0), v15), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v21, v15 * v15), xmmword_100092AB0), v15 * v15), xmmword_100092AC0), v15 * v15), xmmword_100092AD0)), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v25, v17, v16 * v16), v16 * v16), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v20, v15 * v15), xmmword_100092AA0), v15), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v19, v15 * v15), xmmword_100092A80), v15 * v15), xmmword_100092A90))), v16 * v16)), v16 * v16), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v24, v15 * v15), xmmword_100092B50), v15 * v15), xmmword_100092B60), v15 * v15), xmmword_100092B70), v15 * v15), xmmword_100092B80), v15), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v23, v15 * v15), xmmword_100092B00), v15 * v15), xmmword_100092B10), v15 * v15), xmmword_100092B20), v15 * v15), xmmword_100092B30), v15 * v15), xmmword_100092B40)));
  v28 = v14 / sqrt(a1 * 6.28318531) * (1.0 / a1 * v27.f64[0] + v27.f64[1]);
  v29 = -v28;
  if (a2 >= a1)
  {
    v29 = v28;
  }

  return v12 * 0.5 + v29;
}

void sub_100085A1C(char *a1, char *a2, uint64_t *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  sub_10000D63C(&v28, v4);
  sub_10000D63C(&v27, v5);
  sub_10000D63C(&v26, "Error in function ");
  v6 = 0;
  v7 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  size = v28.__r_.__value_.__l.__size_;
  v9 = v28.__r_.__value_.__r.__words[0];
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v28.__r_.__value_.__l.__size_;
  }

  do
  {
    v12 = v7 - v6;
    if ((v7 - v6) < 3)
    {
      break;
    }

    v13 = v11 + v7;
    v14 = v11 + v6;
    while (1)
    {
      v15 = memchr(v14, 37, v12 - 2);
      if (!v15)
      {
        goto LABEL_28;
      }

      if (*v15 == 12581 && v15[2] == 37)
      {
        break;
      }

      v14 = v15 + 1;
      v12 = v13 - v14;
      if (v13 - v14 < 3)
      {
        goto LABEL_28;
      }
    }

    if (v15 == v13)
    {
      break;
    }

    v17 = v15 - v11;
    if (v17 == -1)
    {
      break;
    }

    std::string::replace(&v28, v17, 3uLL, "long double");
    v6 = v17 + 11;
    v7 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    v8 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    size = v28.__r_.__value_.__l.__size_;
    v9 = v28.__r_.__value_.__r.__words[0];
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v28;
    }

    else
    {
      v11 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v28.__r_.__value_.__l.__size_;
    }
  }

  while (v7 >= v6);
LABEL_28:
  if ((v8 & 0x80u) == 0)
  {
    v18 = &v28;
  }

  else
  {
    v18 = v9;
  }

  if ((v8 & 0x80u) == 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = size;
  }

  std::string::append(&v26, v18, v19);
  std::string::append(&v26, ": ");
  sub_100085C88(v24, a3);
  if (v25 >= 0)
  {
    v20 = v24;
  }

  else
  {
    v20 = v24[0];
  }

  sub_100083C6C(&v27, v20);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v27;
  }

  else
  {
    v21 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v27.__r_.__value_.__l.__size_;
  }

  std::string::append(&v26, v21, v22);
  std::logic_error::logic_error(&v23, &v26);
  sub_100083D70(&v23);
}

void sub_100085C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100085C88(uint64_t a1, uint64_t *a2)
{
  sub_100083DB0(v6);
  *(&v9[0].__locale_ + *(v7 - 24)) = 17;
  v3 = *a2;
  std::ostream::operator<<();
  std::stringbuf::str();
  v7 = v4;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100085E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084054(va);
  _Unwind_Resume(a1);
}

void sub_100085E48(char *a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = "Unknown function operating on type %1%";
  }

  sub_10000D63C(&v26, v3);
  sub_10000D63C(&v25, "Series evaluation exceeded %1% iterations, giving up now.");
  sub_10000D63C(&v24, "Error in function ");
  v4 = 0;
  v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  size = v26.__r_.__value_.__l.__size_;
  v7 = v26.__r_.__value_.__r.__words[0];
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v26;
  }

  else
  {
    v9 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v26.__r_.__value_.__l.__size_;
  }

  do
  {
    v10 = v5 - v4;
    if ((v5 - v4) < 3)
    {
      break;
    }

    v11 = v9 + v5;
    v12 = v9 + v4;
    while (1)
    {
      v13 = memchr(v12, 37, v10 - 2);
      if (!v13)
      {
        goto LABEL_26;
      }

      if (*v13 == 12581 && v13[2] == 37)
      {
        break;
      }

      v12 = v13 + 1;
      v10 = v11 - v12;
      if (v11 - v12 < 3)
      {
        goto LABEL_26;
      }
    }

    if (v13 == v11)
    {
      break;
    }

    v15 = v13 - v9;
    if (v15 == -1)
    {
      break;
    }

    std::string::replace(&v26, v15, 3uLL, "long double");
    v4 = v15 + 11;
    v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    v6 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    size = v26.__r_.__value_.__l.__size_;
    v7 = v26.__r_.__value_.__r.__words[0];
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v26;
    }

    else
    {
      v9 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v26.__r_.__value_.__l.__size_;
    }
  }

  while (v5 >= v4);
LABEL_26:
  if ((v6 & 0x80u) == 0)
  {
    v16 = &v26;
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 0x80u) == 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = size;
  }

  std::string::append(&v24, v16, v17);
  std::string::append(&v24, ": ");
  sub_100085C88(v22, a2);
  if (v23 >= 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = v22[0];
  }

  sub_100083C6C(&v25, v18);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v25;
  }

  else
  {
    v19 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v25.__r_.__value_.__l.__size_;
  }

  std::string::append(&v24, v19, v20);
  std::runtime_error::runtime_error(&v21, &v24);
  v21.__vftable = &off_1000A97D0;
  sub_1000860A4(&v21);
}

void sub_100086024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000860A4(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_100086120(exception, a1);
}

void sub_1000860E8(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_100086120(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_1000A8FE8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1000A9858;
  *(a1 + 8) = off_1000A9888;
  *(a1 + 24) = off_1000A98B0;
  return a1;
}

uint64_t sub_1000861CC(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1000863F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10002DB54(&a9);
  sub_10002DB54(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10008645C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000866CC(exception, a1);
}

void sub_1000864B8(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_10008652C(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_100086588(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_100086600(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_100086658(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_1000866CC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1000A8FE8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_1000A97D0;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1000A9040;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1000A9858;
  *(a1 + 8) = off_1000A9888;
  *(a1 + 24) = off_1000A98B0;
  return a1;
}

double sub_100086808(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1;
  v29 = a1;
  if (a1 <= -0.0000000149011612)
  {
    if (floor(a1) != a1)
    {
      v11 = -a1;
      v12 = floor(-a1);
      v13 = v12 + 1.0 + v8;
      v14 = -v8 - v12;
      if (vcvtmd_s64_f64(-v8))
      {
        v14 = v13;
      }

      else
      {
        v8 = -v8;
      }

      if (v14 > 0.5)
      {
        v14 = 1.0 - v14;
      }

      v15 = v8 * sin(v14 * 3.14159265);
      if (v15 >= 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = -v15;
      }

      v17 = 1.14472989 - sub_100086808(v11);
      return v17 - log(v16);
    }

    v28 = "Evaluation of lgamma at a negative integer %1%.";
    goto LABEL_34;
  }

  if (a1 < 0.0000000149011612)
  {
    if (a1 != 0.0)
    {
      v9 = fabs(a1);
      if (v9 * 4.0 < 2.22044605e-16)
      {
        return -log(v9);
      }

      v27 = fabs(1.0 / v8 + -0.577215665);
LABEL_29:

      return log(v27);
    }

    v28 = "Evaluation of lgamma at %1%.";
LABEL_34:
    sub_100085A1C("boost::math::lgamma<%1%>(%1%)", v28, &v29);
  }

  if (a1 >= 15.0)
  {
    if (a1 < 3.0 || a1 >= 100.0)
    {
      v10 = (a1 + -0.5) * (log(a1 + 6.02468004 + -0.5) + -1.0);
      if (v10 * 2.22044605e-16 < 20.0)
      {
        v26 = sub_100087BB8(dbl_100093530, dword_100093598, v8, 20.0, v20, v21, v22, v23, v24, v25);
        return v10 + log(v26);
      }

      return v10;
    }

    sub_100086ED8(a1, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_29;
  }

  sub_100086C20(a1, a1 + -1.0, a1 + -2.0);
  return result;
}

void sub_100086A38(char *a1, const std::string::value_type *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown";
  }

  sub_10000D63C(&v20, v2);
  sub_10000D63C(&v19, "Error in function ");
  v4 = 0;
  v5 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  size = v20.__r_.__value_.__l.__size_;
  v7 = v20.__r_.__value_.__r.__words[0];
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v20;
  }

  else
  {
    v9 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v20.__r_.__value_.__l.__size_;
  }

  do
  {
    v10 = v5 - v4;
    if ((v5 - v4) < 3)
    {
      break;
    }

    v11 = v9 + v5;
    v12 = v9 + v4;
    while (1)
    {
      v13 = memchr(v12, 37, v10 - 2);
      if (!v13)
      {
        goto LABEL_28;
      }

      if (*v13 == 12581 && v13[2] == 37)
      {
        break;
      }

      v12 = v13 + 1;
      v10 = v11 - v12;
      if (v11 - v12 < 3)
      {
        goto LABEL_28;
      }
    }

    if (v13 == v11)
    {
      break;
    }

    v15 = v13 - v9;
    if (v15 == -1)
    {
      break;
    }

    std::string::replace(&v20, v15, 3uLL, "long double");
    v4 = v15 + 11;
    v5 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    v6 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    size = v20.__r_.__value_.__l.__size_;
    v7 = v20.__r_.__value_.__r.__words[0];
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v20;
    }

    else
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v20.__r_.__value_.__l.__size_;
    }
  }

  while (v5 >= v4);
LABEL_28:
  if ((v6 & 0x80u) == 0)
  {
    v16 = &v20;
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 0x80u) == 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = size;
  }

  std::string::append(&v19, v16, v17);
  std::string::append(&v19, ": ");
  std::string::append(&v19, v3);
  std::runtime_error::runtime_error(&v18, &v19);
  sub_100084890(&v18);
}

void sub_100086BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100086C20(long double a1, double a2, double a3)
{
  v3 = a1;
  if (a1 >= 2.22044605e-16)
  {
    if (a2 != 0.0 && a3 != 0.0)
    {
      if (a1 <= 2.0)
      {
        if (a1 < 1.0)
        {
          log(a1);
        }
      }

      else
      {
        v4 = 0.0;
        if (a1 >= 3.0)
        {
          do
          {
            v3 = v3 + -1.0;
            v4 = v4 + log(v3);
          }

          while (v3 >= 3.0);
        }
      }
    }
  }

  else
  {
    log(a1);
  }
}

void sub_100086ED8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1;
  v26 = a1;
  v9 = 1.0;
  if (a1 <= 0.0)
  {
    if (floor(a1) == a1)
    {
      sub_100085A1C("boost::math::tgamma<%1%>(%1%)", "Evaluation of tgamma at a negative integer %1%.", &v26);
    }

    if (a1 <= -20.0)
    {
      v15 = -a1;
      v16 = sub_100086ED8(-a1);
      v17 = floor(-v8);
      v18 = v17 + 1.0 + v8;
      v19 = -v8 - v17;
      if (vcvtmd_s64_f64(-v8))
      {
        v19 = v18;
        v15 = v8;
      }

      if (v19 > 0.5)
      {
        v19 = 1.0 - v19;
      }

      v20 = fabs(v15 * sin(v19 * 3.14159265) * v16);
      if (v20 >= 1.0 || v20 * 1.79769313e308 >= 3.14159265)
      {
        return;
      }

LABEL_35:
      sub_100086A38("boost::math::tgamma<%1%>(%1%)", "Result of tgamma is too large to represent.");
    }

    if (a1 < 0.0)
    {
      do
      {
        v9 = v9 / v8;
        v8 = v8 + 1.0;
      }

      while (v8 < 0.0);
    }
  }

  v10 = floor(v8);
  if (v8 < 170.0 && v10 == v8)
  {
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v27 = v8;
      v25 = "boost::math::trunc<%1%>(%1%)";
    }

    else
    {
      v12 = ceil(v8);
      if (v8 < 0.0)
      {
        v10 = v12;
      }

      if (v10 <= 2147483650.0 && v10 >= -2147483650.0)
      {
        v14 = qword_100092EE8[v10 - 1];
        return;
      }

      v27 = v8;
      v25 = "boost::math::itrunc<%1%>(%1%)";
    }

    sub_1000871F8(v25, &v27);
  }

  if (v8 < 0.0000000149011612)
  {
    if (v8 < COERCE_DOUBLE(0x4000000000000))
    {
      sub_100086A38("boost::math::tgamma<%1%>(%1%)", "Overflow Error");
    }

    return;
  }

  v21 = v9 * sub_100087BB8(dbl_100093490, dword_1000934F8, v8, 170.0, a3, a4, a5, a6, a7, a8);
  v22 = v8 + 6.02468004 + -0.5;
  v23 = v8 * log(v22);
  if (v23 <= 709.0)
  {
    pow(v8 + 6.02468004 + -0.5, v8 + -0.5);
    exp(v22);
    return;
  }

  if (v23 * 0.5 > 709.0)
  {
    goto LABEL_35;
  }

  v24 = pow(v8 + 6.02468004 + -0.5, v8 * 0.5 + -0.25);
  if (1.79769313e308 / v24 < v21 * (v24 / exp(v22)))
  {
    goto LABEL_35;
  }
}

void sub_1000871F8(char *a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = "Unknown function operating on type %1%";
  }

  sub_10000D63C(&v26, v3);
  sub_10000D63C(&v25, "Value %1% can not be represented in the target integer type.");
  sub_10000D63C(&v24, "Error in function ");
  v4 = 0;
  v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  size = v26.__r_.__value_.__l.__size_;
  v7 = v26.__r_.__value_.__r.__words[0];
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v26;
  }

  else
  {
    v9 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v26.__r_.__value_.__l.__size_;
  }

  do
  {
    v10 = v5 - v4;
    if ((v5 - v4) < 3)
    {
      break;
    }

    v11 = v9 + v5;
    v12 = v9 + v4;
    while (1)
    {
      v13 = memchr(v12, 37, v10 - 2);
      if (!v13)
      {
        goto LABEL_26;
      }

      if (*v13 == 12581 && v13[2] == 37)
      {
        break;
      }

      v12 = v13 + 1;
      v10 = v11 - v12;
      if (v11 - v12 < 3)
      {
        goto LABEL_26;
      }
    }

    if (v13 == v11)
    {
      break;
    }

    v15 = v13 - v9;
    if (v15 == -1)
    {
      break;
    }

    std::string::replace(&v26, v15, 3uLL, "long double");
    v4 = v15 + 11;
    v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    v6 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    size = v26.__r_.__value_.__l.__size_;
    v7 = v26.__r_.__value_.__r.__words[0];
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v26;
    }

    else
    {
      v9 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v26.__r_.__value_.__l.__size_;
    }
  }

  while (v5 >= v4);
LABEL_26:
  if ((v6 & 0x80u) == 0)
  {
    v16 = &v26;
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 0x80u) == 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = size;
  }

  std::string::append(&v24, v16, v17);
  std::string::append(&v24, ": ");
  sub_100085C88(v22, a2);
  if (v23 >= 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = v22[0];
  }

  sub_100083C6C(&v25, v18);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v25;
  }

  else
  {
    v19 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v25.__r_.__value_.__l.__size_;
  }

  std::string::append(&v24, v19, v20);
  std::runtime_error::runtime_error(&v21, &v24);
  v21.__vftable = &off_1000A98D0;
  sub_100087454(&v21);
}

void sub_1000873D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_100087454(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_1000874D0(exception, a1);
}

void sub_100087498(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1000874D0(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_1000A8FE8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1000A9958;
  *(a1 + 8) = off_1000A9988;
  *(a1 + 24) = off_1000A99B0;
  return a1;
}

uint64_t sub_10008757C(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1000877A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10002DB54(&a9);
  sub_10002DB54(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10008780C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100087A7C(exception, a1);
}

void sub_100087868(uint64_t a1)
{
  *(a1 + 24) = &off_1000A9040;
  sub_10002DB54((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_1000878DC(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_100087938(uint64_t a1)
{
  *(a1 + 16) = &off_1000A9040;
  sub_10002DB54((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_1000879B0(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_100087A08(void *a1)
{
  *a1 = &off_1000A9040;
  v1 = (a1 - 2);
  sub_10002DB54(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_100087A7C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1000A8FE8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_1000A98D0;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1000A9040;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1000A9958;
  *(a1 + 8) = off_1000A9988;
  *(a1 + 24) = off_1000A99B0;
  return a1;
}

double sub_100087BB8(float64_t *a1, _DWORD *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = 1.0;
  if (a3 <= 1.0)
  {
    v41.f64[0] = a1[11];
    v42.f64[0] = a1[12];
    v44.f64[0] = a1[9];
    v43.f64[0] = a1[10];
    LODWORD(a9) = a2[11];
    LODWORD(a8) = a2[12];
    v45 = *&a8;
    LODWORD(a8) = a2[10];
    v46 = *&a8;
    v47 = *&a9;
    LODWORD(a9) = a2[8];
    LODWORD(a8) = a2[9];
    v48 = *&a8;
    v50.f64[0] = a1[7];
    v49.f64[0] = a1[8];
    v51 = *&a9;
    LODWORD(a9) = a2[6];
    LODWORD(a8) = a2[7];
    v52 = *&a8;
    v54.f64[0] = a1[5];
    v53.f64[0] = a1[6];
    v55 = *&a9;
    LODWORD(a10) = a2[4];
    LODWORD(a9) = a2[5];
    v56 = *&a9;
    v58.f64[0] = a1[3];
    v57.f64[0] = a1[4];
    v59 = *&a10;
    LODWORD(v10) = a2[2];
    LODWORD(a9) = a2[3];
    v60 = *&a9;
    v62.f64[0] = a1[1];
    v61.f64[0] = a1[2];
    v63 = v10;
    LODWORD(v10) = *a2;
    LODWORD(a9) = a2[1];
    v64 = *&a9;
    v65.f64[0] = *a1;
    v42.f64[1] = v45;
    v43.f64[1] = v46;
    v41.f64[1] = v47;
    v44.f64[1] = v48;
    v49.f64[1] = v51;
    v50.f64[1] = v52;
    v53.f64[1] = v55;
    v54.f64[1] = v56;
    v57.f64[1] = v59;
    v58.f64[1] = v60;
    v61.f64[1] = v63;
    v62.f64[1] = v64;
    v65.f64[1] = v10;
    v40 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v44, v41, a3 * a3), a3 * a3), v50), a3 * a3), v54), a3 * a3), v58), a3 * a3), v62), a3), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v43, v42, a3 * a3), a3 * a3), v49), a3 * a3), v53), a3 * a3), v57), a3 * a3), v61), a3 * a3), v65));
  }

  else
  {
    v13 = 1.0 / a3;
    v14 = 1.0 / (a3 * a3);
    v16.f64[0] = *a1;
    v15.f64[0] = a1[1];
    v17.f64[0] = a1[2];
    v18.f64[0] = a1[3];
    LODWORD(v12) = *a2;
    LODWORD(a8) = a2[1];
    v19 = v12;
    LODWORD(v12) = a2[2];
    LODWORD(a10) = a2[3];
    v20 = v12;
    v21 = *&a8;
    v22 = *&a10;
    v24.f64[0] = a1[4];
    v23.f64[0] = a1[5];
    LODWORD(v12) = a2[4];
    LODWORD(a8) = a2[5];
    v25 = v12;
    v26 = *&a8;
    v27.f64[0] = a1[6];
    v28.f64[0] = a1[7];
    LODWORD(v12) = a2[6];
    LODWORD(a8) = a2[7];
    v29 = v12;
    v30 = *&a8;
    v32.f64[0] = a1[8];
    v31.f64[0] = a1[9];
    LODWORD(v12) = a2[8];
    LODWORD(a8) = a2[9];
    v33 = v12;
    v34 = *&a8;
    v36.f64[0] = a1[10];
    v35.f64[0] = a1[11];
    LODWORD(a8) = a2[10];
    LODWORD(v11) = a2[11];
    v37 = *&a8;
    v38 = v11;
    v39.f64[0] = a1[12];
    LODWORD(v11) = a2[12];
    v16.f64[1] = v19;
    v17.f64[1] = v20;
    v15.f64[1] = v21;
    v18.f64[1] = v22;
    v24.f64[1] = v25;
    v23.f64[1] = v26;
    v27.f64[1] = v29;
    v28.f64[1] = v30;
    v32.f64[1] = v33;
    v31.f64[1] = v34;
    v36.f64[1] = v37;
    v35.f64[1] = v38;
    v39.f64[1] = v11;
    v40 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v18, v15, v14), v14), v23), v14), v28), v14), v31), v14), v35), v13), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v17, v16, v14), v14), v24), v14), v27), v14), v32), v14), v36), v14), v39));
  }

  *&result = *&vdivq_f64(v40, vdupq_laneq_s64(v40, 1));
  return result;
}

double sub_100087DE4(int a1, long double a2)
{
  v3 = a1;
  if (a2 < 0.0)
  {
    if ((a1 & 1) == 0)
    {
      return -sub_100087DE4(0, -a2);
    }

    v4 = -a2;
    if (a2 >= -0.5)
    {
      return sub_100087DE4(0, v4) + 1.0;
    }

    else
    {
      return 2.0 - sub_100087DE4(1, v4);
    }
  }

  if (a2 < 0.5)
  {
    if (a2 >= 1.0e-10)
    {
      v8 = vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092DC0, xmmword_100092DB0, a2 * a2 * (a2 * a2)), a2 * a2), vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092DA0, xmmword_100092D90, a2 * a2 * (a2 * a2)), a2 * a2 * (a2 * a2)), xmmword_100092DD0));
      v6 = (vdivq_f64(v8, vdupq_laneq_s64(v8, 1)).f64[0] + 1.04494858) * a2;
    }

    else
    {
      v6 = 0.0;
      if (a2 != 0.0)
      {
        v6 = a2 * 0.0033791671 + a2 * 1.125;
      }
    }

    goto LABEL_25;
  }

  if (a1)
  {
    v7 = 28.0;
  }

  else
  {
    v7 = 5.92999983;
  }

  v3 = a1 ^ 1;
  if (a2 >= v7)
  {
    v6 = 0.0;
    goto LABEL_25;
  }

  if (a2 < 1.5)
  {
    v9 = a2 + -0.5;
    v10.f64[0] = v9 * v9 * 0.0195049001 + 0.191003696;
    v10.f64[1] = v9 * v9 * (v9 * v9 * 0.00000337511472 + 0.123850975) + 1.42628005;
    v11 = vaddq_f64(vaddq_f64(vmulq_n_f64(v10, v9 * v9), xmmword_100092D80), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092D60, xmmword_100092D50, v9 * v9), v9 * v9), xmmword_100092D70), a2 + -0.5));
    v6 = exp(-(a2 * a2)) / a2 * (vdivq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0] + 0.405935764);
    goto LABEL_25;
  }

  if (a2 < 2.5)
  {
    v12 = a2 + -1.5;
    v13 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092D20, xmmword_100092D10, v12 * v12), v12 * v12), xmmword_100092D40), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092D00, xmmword_100092CF0, v12 * v12), v12 * v12), xmmword_100092D30), a2 + -1.5));
    v14 = vdivq_f64(v13, vdupq_laneq_s64(v13, 1)).f64[0] + 0.506728172;
    v15 = frexp(a2, &__e);
    v16 = __e;
LABEL_23:
    v19 = ldexp(v15, 26);
    v20 = ldexp(floor(v19), v16 - 26);
    v21 = a2 - v20;
    v22 = v20 * v20 - a2 * a2 + (v20 + v20) * (a2 - v20);
    v23 = exp(-(a2 * a2));
    v6 = v14 * (v23 * exp(-(v22 + v21 * v21)) / a2);
    goto LABEL_25;
  }

  if (a2 < 4.5)
  {
    v17 = a2 + -3.5;
    v18 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092CC0, xmmword_100092CB0, v17 * v17), v17 * v17), xmmword_100092CE0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092CA0, xmmword_100092C90, v17 * v17), v17 * v17), xmmword_100092CD0), a2 + -3.5));
    v14 = vdivq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0] + 0.540575027;
    v15 = frexp(a2, &v35);
    v16 = v35;
    goto LABEL_23;
  }

  v24 = sub_1000871B8(dbl_1000935D0, 1.0 / a2);
  v25 = v24 / sub_1000871B8(dbl_100093608, 1.0 / a2) + 0.557909012;
  v26 = frexp(a2, &v36);
  v27 = v36;
  v28 = ldexp(v26, 26);
  v29 = ldexp(floor(v28), v27 - 26);
  v30 = a2 - v29;
  v31 = v29 * v29 - a2 * a2 + (v29 + v29) * (a2 - v29);
  v32 = exp(-(a2 * a2));
  v6 = v32 * exp(-(v31 + v30 * v30)) / a2 * v25;
LABEL_25:
  if (v3)
  {
    return 1.0 - v6;
  }

  else
  {
    return v6;
  }
}

double sub_10008821C(double result)
{
  v1 = fabs(result);
  if (v1 <= 0.5)
  {
    if (v1 >= 2.22044605e-16)
    {
      v2 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092E10, xmmword_100092E00, result * result), result * result), xmmword_100092E30), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_100092DF0, xmmword_100092DE0, result * result), result * result), xmmword_100092E20), result));
      return result * v2.f64[0] / v2.f64[1] + result * 1.02812767;
    }
  }

  else if (v1 >= 709.0)
  {
    v3 = result <= 0.0;
    result = -1.0;
    if (!v3)
    {
      sub_100086A38("boost::math::expm1<%1%>(%1%)", "Overflow Error");
    }
  }

  else
  {
    return exp(result) + -1.0;
  }

  return result;
}

uint64_t sub_100088828(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = sub_1000011A0(&qword_1000B29A0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "handle SIGTERM", v4, 2u);
    }
  }

  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100088DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100088DD0(uint64_t a1)
{
  [*(a1 + 32) _extendLifetime];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 40) invoke];
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    v4 = +[NSDate date];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_1000011A0(&qword_1000B2988);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 32);
        v12 = NSStringFromSelector([*(a1 + 40) selector]);
        *buf = 138412546;
        *&buf[4] = v11;
        v47 = 2112;
        v48 = v12;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "client, %@, called, %@", buf, 0x16u);
      }
    }

    v6 = [*(a1 + 40) target];
    v7 = [*(*(a1 + 32) + 16) protocol];
    v8 = [v6 conformsToProtocol:v7];

    if (v8)
    {
      v9 = [*(a1 + 48) exportedInterface];
      v10 = [v9 replyBlockSignatureForSelector:{objc_msgSend(*(a1 + 40), "selector")}];
    }

    else
    {
      v10 = 0;
    }

    v13 = [RTXPC executablePathOfConnection:*(a1 + 48)];
    v14 = [v13 lastPathComponent];

    v15 = [*(*(a1 + 32) + 24) containsObject:v14];
    v16 = [*(*(a1 + 32) + 16) clientConnection:*(a1 + 48) satisfiesEntitlementRequirementsForInvocation:*(a1 + 40)];
    if (v10)
    {
      if (v16)
      {
        if (v15)
        {
          v17 = [*(a1 + 40) blockArgumentIndex];
          *buf = 0;
          [*(a1 + 40) getArgument:buf atIndex:v17];
          v18 = NSStringFromSelector([*(a1 + 40) selector]);
          v19 = [*buf copy];
          v20 = v10;
          [v10 UTF8String];
          v38 = v18;
          v39 = v4;
          v40 = v19;
          v21 = v19;
          v22 = v18;
          v41 = __NSMakeSpecialForwardingCaptureBlock();
          [*(a1 + 40) setArgument:&v41 atIndex:v17];
          [*(a1 + 40) invoke];
          v23 = *(*(a1 + 56) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = 0;
        }

        else
        {
          v42 = NSLocalizedDescriptionKey;
          v33 = [NSString stringWithFormat:@"This operation is unavailable for %@.", v14];
          v43 = v33;
          v34 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];

          v35 = [NSError errorWithDomain:RTErrorDomain code:2 userInfo:v34];
          [*(a1 + 48) rejectInvocation:*(a1 + 40) withError:v35 replyTypes:v10];
          v36 = *(*(a1 + 56) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = 0;
        }
      }

      else
      {
        v44 = NSLocalizedDescriptionKey;
        v27 = [NSString stringWithFormat:@"%@ is not entitled for this operation.", v14];
        v45 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];

        v29 = [NSError alloc];
        v30 = [v29 initWithDomain:RTErrorDomain code:3 userInfo:v28];
        [*(a1 + 48) rejectInvocation:*(a1 + 40) withError:v30 replyTypes:v10];
        v31 = *(*(a1 + 56) + 8);
        v32 = *(v31 + 40);
        *(v31 + 40) = 0;
      }
    }

    else
    {
      if (v16 && [*(*(a1 + 32) + 24) containsObject:v14])
      {
        [*(a1 + 40) invoke];
      }

      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = 0;
    }
  }
}

void sub_100089310(void *a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = sub_1000011A0(&qword_1000B2988);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = +[NSDate date];
      [v6 timeIntervalSinceDate:a1[5]];
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending reply for request %@, latency, %.2f", &v8, 0x16u);
    }
  }

  [v3 setTarget:a1[6]];
  [v3 invoke];
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  std::domain_error::~domain_error(this);
}

{
  std::domain_error::~domain_error(this);
}

void std::overflow_error::~overflow_error(std::overflow_error *this)
{
  std::overflow_error::~overflow_error(this);
}

{
  std::overflow_error::~overflow_error(this);
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}