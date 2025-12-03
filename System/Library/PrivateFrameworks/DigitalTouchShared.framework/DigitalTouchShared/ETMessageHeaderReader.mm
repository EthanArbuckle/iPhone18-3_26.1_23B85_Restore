@interface ETMessageHeaderReader
+ (double)sendTimeInArchive:(id)archive;
+ (id)identifierInArchive:(id)archive;
+ (unsigned)messageTypeInArchive:(id)archive;
+ (void)getSendTime:(double *)time type:(unsigned __int16 *)type inArchive:(id)archive;
@end

@implementation ETMessageHeaderReader

+ (id)identifierInArchive:(id)archive
{
  archiveCopy = archive;
  v4 = [objc_alloc(MEMORY[0x277D43170]) initWithData:archiveCopy];
  for (i = v4; ; v4 = i)
  {
    position = [v4 position];
    if (position >= [i length] || (objc_msgSend(i, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v16 = 0;
      v10 = [i position] + 1;
      if (v10 >= [i position] && (v11 = objc_msgSend(i, "position") + 1, v11 <= objc_msgSend(i, "length")))
      {
        data = [i data];
        [data getBytes:&v16 range:{objc_msgSend(i, "position"), 1}];

        [i setPosition:{objc_msgSend(i, "position") + 1}];
      }

      else
      {
        [i _setError];
      }

      v9 |= (v16 & 0x7F) << v7;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      if (v8++ >= 9)
      {
        LODWORD(v9) = 0;
        goto LABEL_15;
      }
    }

    if ([i hasError])
    {
      LODWORD(v9) = 0;
    }

LABEL_15:
    v14 = 0;
    if (([i hasError] & 1) != 0 || (v9 & 7) == 4)
    {
      goto LABEL_23;
    }

    if ((v9 & 0x7FFF8) == 0x28)
    {
      v14 = PBReaderReadString();
      if (![i hasError])
      {
        goto LABEL_23;
      }
    }

    else if (!PBReaderSkipValueWithTag())
    {
      break;
    }
  }

  v14 = 0;
LABEL_23:

  return v14;
}

+ (unsigned)messageTypeInArchive:(id)archive
{
  archiveCopy = archive;
  v4 = [objc_alloc(MEMORY[0x277D43170]) initWithData:archiveCopy];
  for (i = v4; ; v4 = i)
  {
    position = [v4 position];
    if (position >= [i length] || (objc_msgSend(i, "hasError") & 1) != 0)
    {
      v14 = -1;
      goto LABEL_35;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v23 = 0;
      v10 = [i position] + 1;
      if (v10 >= [i position] && (v11 = objc_msgSend(i, "position") + 1, v11 <= objc_msgSend(i, "length")))
      {
        data = [i data];
        [data getBytes:&v23 range:{objc_msgSend(i, "position"), 1}];

        [i setPosition:{objc_msgSend(i, "position") + 1}];
      }

      else
      {
        [i _setError];
      }

      v9 |= (v23 & 0x7F) << v7;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        LODWORD(v9) = 0;
        goto LABEL_15;
      }
    }

    if ([i hasError])
    {
      LODWORD(v9) = 0;
    }

LABEL_15:
    v14 = -1;
    if (([i hasError] & 1) != 0 || (v9 & 7) == 4)
    {
      goto LABEL_35;
    }

    if ((v9 & 0x7FFF8) == 8)
    {
      break;
    }

    if (!PBReaderSkipValueWithTag())
    {
      v14 = 0;
      goto LABEL_35;
    }

LABEL_33:
    ;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v24 = 0;
    v18 = [i position] + 1;
    if (v18 >= [i position] && (v19 = objc_msgSend(i, "position") + 1, v19 <= objc_msgSend(i, "length")))
    {
      data2 = [i data];
      [data2 getBytes:&v24 range:{objc_msgSend(i, "position"), 1}];

      [i setPosition:{objc_msgSend(i, "position") + 1}];
    }

    else
    {
      [i _setError];
    }

    v17 |= (v24 & 0x7F) << v15;
    if ((v24 & 0x80) == 0)
    {
      break;
    }

    v15 += 7;
    v13 = v16++ >= 9;
    if (v13)
    {
      v21 = 0;
      goto LABEL_32;
    }
  }

  if ([i hasError])
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

LABEL_32:
  if ([i hasError])
  {
    goto LABEL_33;
  }

  v14 = messageTypeFromETPMessageType(v21);
LABEL_35:

  return v14;
}

+ (void)getSendTime:(double *)time type:(unsigned __int16 *)type inArchive:(id)archive
{
  archiveCopy = archive;
  *type = -1;
  *time = 0.0;
  v8 = [objc_alloc(MEMORY[0x277D43170]) initWithData:archiveCopy];
  v9 = 0;
  v10 = 0;
  while (1)
  {
    position = [v8 position];
    if (position >= [v8 length] || (objc_msgSend(v8, "hasError") & 1) != 0)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v33 = 0;
      v15 = [v8 position] + 1;
      if (v15 >= [v8 position] && (v16 = objc_msgSend(v8, "position") + 1, v16 <= objc_msgSend(v8, "length")))
      {
        data = [v8 data];
        [data getBytes:&v33 range:{objc_msgSend(v8, "position"), 1}];

        [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
      }

      else
      {
        [v8 _setError];
      }

      v14 |= (v33 & 0x7F) << v12;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v12 += 7;
      v18 = v13++ >= 9;
      if (v18)
      {
        v19 = 0;
        goto LABEL_16;
      }
    }

    v19 = [v8 hasError] ? 0 : v14;
LABEL_16:
    if (([v8 hasError] & 1) != 0 || (v19 & 7) == 4)
    {
      break;
    }

    v20 = (v19 >> 3);
    if (v20 == 2)
    {
      v32 = 0;
      v28 = [v8 position] + 8;
      if (v28 >= [v8 position] && (v29 = objc_msgSend(v8, "position") + 8, v29 <= objc_msgSend(v8, "length")))
      {
        data2 = [v8 data];
        [data2 getBytes:&v32 range:{objc_msgSend(v8, "position"), 8}];

        [v8 setPosition:{objc_msgSend(v8, "position") + 8}];
      }

      else
      {
        [v8 _setError];
      }

      v31 = v32;
      if (([v8 hasError] & 1) == 0)
      {
        *time = v31 / 1000.0;
      }

      v10 = 1;
      if (v9)
      {
LABEL_46:
        if (v10)
        {
          break;
        }
      }
    }

    else
    {
      if (v20 == 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v34 = 0;
          v24 = [v8 position] + 1;
          if (v24 >= [v8 position] && (v25 = objc_msgSend(v8, "position") + 1, v25 <= objc_msgSend(v8, "length")))
          {
            data3 = [v8 data];
            [data3 getBytes:&v34 range:{objc_msgSend(v8, "position"), 1}];

            [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
          }

          else
          {
            [v8 _setError];
          }

          v23 |= (v34 & 0x7F) << v21;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v18 = v22++ >= 9;
          if (v18)
          {
            v27 = 0;
            goto LABEL_37;
          }
        }

        if ([v8 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_37:
        if (([v8 hasError] & 1) == 0)
        {
          *type = messageTypeFromETPMessageType(v27);
        }

        v9 = 1;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        break;
      }

      if (v9)
      {
        goto LABEL_46;
      }
    }
  }
}

+ (double)sendTimeInArchive:(id)archive
{
  archiveCopy = archive;
  v4 = [objc_alloc(MEMORY[0x277D43170]) initWithData:archiveCopy];
  position = [v4 position];
  v6 = [v4 length];
  v7 = 0.0;
  while (position < v6 && ([v4 hasError] & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v22 = 0;
      v11 = [v4 position] + 1;
      if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
      {
        data = [v4 data];
        [data getBytes:&v22 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v10 |= (v22 & 0x7F) << v8;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      if (v9++ >= 9)
      {
        v15 = 0;
        goto LABEL_16;
      }
    }

    v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
    if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    if ((*&v15 & 0x7FFF8) == 0x10)
    {
      v21 = 0;
      v16 = [v4 position] + 8;
      if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
      {
        data2 = [v4 data];
        [data2 getBytes:&v21 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v19 = v21;
      if (([v4 hasError] & 1) == 0)
      {
        v7 = v19 / 1000.0;
        break;
      }
    }

    else if (!PBReaderSkipValueWithTag())
    {
      break;
    }

    position = [v4 position];
    v6 = [v4 length];
  }

  return v7;
}

@end