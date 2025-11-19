void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id ATXHeroDataXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286480350];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_donateHeroAppPredictions_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t ATXPBHeroAppPredictionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v68) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 2u;
          v68 = 0;
          v13 = [a2 position] + 8;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v61 = v68;
          v62 = 16;
          goto LABEL_114;
        case 2u:
          *(a1 + 116) |= 8u;
          v68 = 0;
          v41 = [a2 position] + 8;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v61 = v68;
          v62 = 32;
          goto LABEL_114;
        case 3u:
          v19 = PBReaderReadString();
          v20 = 80;
          goto LABEL_70;
        case 4u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 116) |= 0x200u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v68 & 0x7F) << v28;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v34) = 0;
              goto LABEL_90;
            }
          }

          v34 = (v30 != 0) & ~[a2 hasError];
LABEL_90:
          *(a1 + 112) = v34;
          goto LABEL_115;
        case 5u:
          *(a1 + 116) |= 0x100u;
          v68 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v61 = v68;
          v62 = 72;
          goto LABEL_114;
        case 6u:
          v19 = PBReaderReadString();
          v20 = 104;
          goto LABEL_70;
        case 7u:
          v19 = PBReaderReadData();
          v20 = 88;
          goto LABEL_70;
        case 8u:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 116) |= 1u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v68 & 0x7F) << v35;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v37;
          }

LABEL_94:
          v59 = 8;
          goto LABEL_103;
        case 9u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 116) |= 0x80u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v68 & 0x7F) << v52;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v54;
          }

LABEL_102:
          v59 = 64;
          goto LABEL_103;
        case 0xAu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 116) |= 0x40u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v68 & 0x7F) << v21;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_88;
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

LABEL_88:
          v59 = 56;
          goto LABEL_103;
        case 0xBu:
          *(a1 + 116) |= 4u;
          v68 = 0;
          v50 = [a2 position] + 8;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v61 = v68;
          v62 = 24;
          goto LABEL_114;
        case 0xCu:
          *(a1 + 116) |= 0x10u;
          v68 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v68 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v61 = v68;
          v62 = 40;
LABEL_114:
          *(a1 + v62) = v61;
          goto LABEL_115;
        case 0xDu:
          v19 = PBReaderReadString();
          v20 = 96;
LABEL_70:
          v49 = *(a1 + v20);
          *(a1 + v20) = v19;

          goto LABEL_115;
        case 0xEu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 116) |= 0x20u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_115;
      }

      while (1)
      {
        LOBYTE(v68) = 0;
        v46 = [a2 position] + 1;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v45 |= (v68 & 0x7F) << v43;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v43 += 7;
        v11 = v44++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_98;
        }
      }

      v27 = [a2 hasError] ? 0 : v45;
LABEL_98:
      v59 = 48;
LABEL_103:
      *(a1 + v59) = v27;
LABEL_115:
      v67 = [a2 position];
    }

    while (v67 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}