uint64_t SGM2PerfXPCLatencyReadFrom(uint64_t a1, void *a2)
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
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
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

uint64_t SGM2CustomResponsesHarvestReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231EB25F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3352(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void processTree(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 == 1)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      if (xmlStrEqual(*(a2 + 16), "head") || xmlStrEqual(v7, "script") || xmlStrEqual(v7, "style"))
      {
        goto LABEL_188;
      }

      v8 = *(a2 + 16);
      if (v8)
      {
        if (xmlStrEqual(*(a2 + 16), "p") || xmlStrEqual(v8, "div"))
        {
LABEL_12:
          if (*(a1 + 16) != 2)
          {
            bufAddChar(a1, 10);
            v9 = *(a1 + 16);
            v10 = v9 == 1;
            v11 = v9 == 1 ? 2 : 1;
            *(a1 + 16) = v11;
            if (!v10)
            {
              bufAddChar(a1, 10);
              if (*(a1 + 16) == 1)
              {
                v12 = 2;
              }

              else
              {
                v12 = 1;
              }

              *(a1 + 16) = v12;
            }
          }

          if (*(a1 + 32) < 1)
          {
            v14 = 1;
          }

          else
          {
            v13 = 0;
            do
            {
              toBuf(a1, "> ");
              ++v13;
              v14 = 1;
            }

            while (v13 < *(a1 + 32));
          }

LABEL_42:
          if (xmlStrEqual(*(a2 + 16), "b") || xmlStrEqual(*(a2 + 16), "strong"))
          {
            v20 = *(a1 + 20);
            if (!v20)
            {
              *(a1 + 44) = *(a1 + 8);
            }

            *(a1 + 20) = v20 + 1;
            goto LABEL_47;
          }

          if (xmlStrEqual(*(a2 + 16), "i") || xmlStrEqual(*(a2 + 16), "em"))
          {
            v24 = *(a1 + 24);
            if (!v24)
            {
              *(a1 + 48) = *(a1 + 8);
            }

            *(a1 + 24) = v24 + 1;
            goto LABEL_47;
          }

          v27 = xmlStrlen(*(a2 + 16));
          v28 = *(a2 + 16);
          if (v27 == 2 && *v28 == 104)
          {
            v29 = *(a1 + 36);
            if (!v29)
            {
              *(a1 + 60) = *(a1 + 8);
            }

            *(a1 + 36) = v29 + 1;
            goto LABEL_47;
          }

          if (xmlStrEqual(v28, "tt") || xmlStrEqual(*(a2 + 16), "pre"))
          {
            v34 = *(a1 + 28);
            if (!v34)
            {
              *(a1 + 52) = *(a1 + 8);
            }

            *(a1 + 28) = v34 + 1;
            goto LABEL_47;
          }

          if (xmlStrEqual(*(a2 + 16), "ol"))
          {
            *(a1 + 68) = 1;
          }

          else if (xmlStrEqual(*(a2 + 16), "li"))
          {
            li(a1);
          }

          else
          {
            if (xmlStrEqual(*(a2 + 16), "a"))
            {
              v39 = *(a1 + 40);
              if (!v39)
              {
                *(a1 + 64) = *(a1 + 8);
              }

              *(a1 + 40) = v39 + 1;
              goto LABEL_47;
            }

            if (xmlStrEqual(*(a2 + 16), "br"))
            {
              if (*(a1 + 16) != 2)
              {
                bufAddChar(a1, 10);
                if (*(a1 + 16) == 1)
                {
                  v49 = 2;
                }

                else
                {
                  v49 = 1;
                }

                *(a1 + 16) = v49;
              }

              if (*(a1 + 32) >= 1)
              {
                v50 = 0;
                do
                {
                  toBuf(a1, "> ");
                  ++v50;
                }

                while (v50 < *(a1 + 32));
              }

              goto LABEL_47;
            }

            if (*(a1 + 88) == 1 && (xmlStrEqual(*(a2 + 16), "table") || xmlStrEqual(*(a2 + 16), "tr") || xmlStrEqual(*(a2 + 16), "td") || xmlStrEqual(*(a2 + 16), "th")))
            {
              if (xmlStrEqual(*(a2 + 16), "table"))
              {
                ++*(a1 + 84);
              }

              toBuf(a1, "[");
              toBuf(a1, *(a2 + 16));
              toBufInt(a1, *(a1 + 84));
              v52 = "] ";
            }

            else
            {
              if (!xmlStrEqual(*(a2 + 16), "sup") && !xmlStrEqual(*(a2 + 16), "sub"))
              {
                goto LABEL_47;
              }

              if ((*(a1 + 16) - 1) >= 3)
              {
                bufAddChar(a1, 32);
                *(a1 + 16) = 3;
              }

              v52 = "(";
            }

            toBuf(a1, v52);
          }

LABEL_47:
          for (i = *(a2 + 24); i; i = *(i + 48))
          {
            processTree(a1, i);
          }

          if (xmlStrEqual(*(a2 + 16), "b") || xmlStrEqual(*(a2 + 16), "strong"))
          {
            v22 = *(a1 + 20);
            if (v22 <= 1)
            {
              v22 = 1;
            }

            v23 = v22 - 1;
            *(a1 + 20) = v23;
            if (!v23 && (*(a1 + 44) & 0x80000000) == 0)
            {
              *(a1 + 44) = -1;
            }
          }

          else if (xmlStrEqual(*(a2 + 16), "i") || xmlStrEqual(*(a2 + 16), "em"))
          {
            v25 = *(a1 + 24);
            if (v25 <= 1)
            {
              v25 = 1;
            }

            v26 = v25 - 1;
            *(a1 + 24) = v26;
            if (!v26 && (*(a1 + 48) & 0x80000000) == 0)
            {
              *(a1 + 48) = -1;
            }
          }

          else
          {
            v30 = xmlStrlen(*(a2 + 16));
            v31 = *(a2 + 16);
            if (v30 == 2 && *v31 == 104)
            {
              v32 = *(a1 + 36);
              if (v32 <= 1)
              {
                v32 = 1;
              }

              v33 = v32 - 1;
              *(a1 + 36) = v33;
              if (!v33 && (*(a1 + 60) & 0x80000000) == 0)
              {
                *(a1 + 60) = -1;
              }
            }

            else if (xmlStrEqual(v31, "tt") || xmlStrEqual(*(a2 + 16), "pre"))
            {
              v35 = *(a1 + 28);
              if (v35 <= 1)
              {
                v35 = 1;
              }

              v36 = v35 - 1;
              *(a1 + 28) = v36;
              if (!v36 && (*(a1 + 52) & 0x80000000) == 0)
              {
                *(a1 + 52) = -1;
              }
            }

            else if (xmlStrEqual(*(a2 + 16), "ol"))
            {
              *(a1 + 68) = 0;
            }

            else if (xmlStrEqual(*(a2 + 16), "a"))
            {
              v60 = v14;
              Prop = xmlGetProp(a2, "href");
              free(*(a1 + 72));
              if (Prop)
              {
                v38 = strdup(Prop);
              }

              else
              {
                v38 = 0;
              }

              *(a1 + 72) = v38;
              v40 = *(a1 + 40);
              if (v40 <= 1)
              {
                v40 = 1;
              }

              v41 = v40 - 1;
              *(a1 + 40) = v41;
              if (!v41 && (*(a1 + 64) & 0x80000000) == 0)
              {
                *(a1 + 64) = -1;
              }

              if (Prop && *Prop)
              {
                v42 = strlen(Prop);
                if (v42 < 7 || (v43 = 7, strncmp(Prop, "mailto:", 7uLL)))
                {
                  v43 = 0;
                }

                v44 = &Prop[v43];
                v45 = strlen(v44);
                v46 = *a1;
                v47 = *(a1 + 8);
                if (!bufEndswith(*a1, v47, v44, v45) && (v42 < 7 || strncmp(Prop, "http://", 7uLL) || !bufEndswith(v46, v47, v44 + 7, v45 - 7)))
                {
                  if ((*(a1 + 16) - 1) >= 3)
                  {
                    bufAddChar(a1, 32);
                    *(a1 + 16) = 3;
                  }

                  toBuf(a1, "<");
                  if (*(a1 + 89))
                  {
                    v48 = "_link_";
                  }

                  else
                  {
                    v48 = Prop;
                  }

                  toBuf(a1, v48);
                  toBuf(a1, ">");
                  if ((*(a1 + 16) - 1) >= 3)
                  {
                    bufAddChar(a1, 32);
                    *(a1 + 16) = 3;
                  }
                }
              }

              free(Prop);
              v14 = v60;
            }
          }

          if (xmlStrEqual(*(a2 + 16), "table") || xmlStrEqual(*(a2 + 16), "tr") || xmlStrEqual(*(a2 + 16), "td") || xmlStrEqual(*(a2 + 16), "th"))
          {
            if (*(a1 + 88) == 1)
            {
              toBuf(a1, " [/");
              toBuf(a1, *(a2 + 16));
              v53 = *(a1 + 84);
              *__s = 0u;
              v62 = 0u;
              __sprintf_chk(__s, 0, 0x20uLL, "%i", v53);
              toBuf(a1, __s);
              toBuf(a1, "]");
            }

            else if ((*(a1 + 16) - 1) >= 3)
            {
              bufAddChar(a1, 32);
              *(a1 + 16) = 3;
            }

            if (xmlStrEqual(*(a2 + 16), "table"))
            {
              --*(a1 + 84);
            }
          }

          else if (xmlStrEqual(*(a2 + 16), "sup") || xmlStrEqual(*(a2 + 16), "sub"))
          {
            toBuf(a1, ")");
          }

          if (v14)
          {
            if (*(a1 + 16) != 2)
            {
              bufAddChar(a1, 10);
              v54 = *(a1 + 16);
              v55 = v54 == 1;
              v56 = v54 == 1 ? 2 : 1;
              *(a1 + 16) = v56;
              if (!v55)
              {
                bufAddChar(a1, 10);
                if (*(a1 + 16) == 1)
                {
                  v57 = 2;
                }

                else
                {
                  v57 = 1;
                }

                *(a1 + 16) = v57;
              }
            }

            if (*(a1 + 32) >= 1)
            {
              v58 = 0;
              do
              {
                toBuf(a1, "> ");
                ++v58;
              }

              while (v58 < *(a1 + 32));
            }
          }

          goto LABEL_188;
        }

        if (!xmlStrEqual(v8, "b") && !xmlStrEqual(v8, "i") && !xmlStrEqual(v8, "br") && !xmlStrEqual(v8, "a") && !xmlStrEqual(v8, "span"))
        {
          if (xmlStrEqual(v8, "blockquote"))
          {
            goto LABEL_12;
          }

          if (*v8 == 104)
          {
            if (xmlStrEqual(v8, "h1") || xmlStrEqual(v8, "h2") || xmlStrEqual(v8, "h3") || xmlStrEqual(v8, "h4") || xmlStrEqual(v8, "h5") || xmlStrEqual(v8, "h6") || xmlStrEqual(v8, "hr") || xmlStrEqual(v8, "header"))
            {
              goto LABEL_12;
            }

            v51 = "hgroup";
          }

          else
          {
            if (xmlStrEqual(v8, "li") || xmlStrEqual(v8, "ol") || xmlStrEqual(v8, "ul") || xmlStrEqual(v8, "table") || xmlStrEqual(v8, "address") || xmlStrEqual(v8, "article") || xmlStrEqual(v8, "details") || xmlStrEqual(v8, "dl") || xmlStrEqual(v8, "dt") || xmlStrEqual(v8, "fieldset") || xmlStrEqual(v8, "figcaption") || xmlStrEqual(v8, "footer") || xmlStrEqual(v8, "form") || xmlStrEqual(v8, "nav") || xmlStrEqual(v8, "noscript") || xmlStrEqual(v8, "pre") || xmlStrEqual(v8, "section"))
            {
              goto LABEL_12;
            }

            v51 = "summary";
          }

          if (xmlStrEqual(v8, v51))
          {
            goto LABEL_12;
          }
        }
      }
    }

    v14 = 0;
    goto LABEL_42;
  }

  if (v4 != 3)
  {
LABEL_188:
    v59 = *MEMORY[0x277D85DE8];
    return;
  }

  Content = xmlNodeGetContent(a2);
  v6 = Content;
  if (*(a1 + 28) <= 0)
  {
    v15 = Content;
    while (1)
    {
      while (1)
      {
        v16 = 0;
        v18 = *v15++;
        v17 = v18;
        if (v18 > 0x20)
        {
          goto LABEL_30;
        }

        if (((1 << v17) & 0x100002600) != 0)
        {
          break;
        }

        if (!v17)
        {
          goto LABEL_32;
        }

LABEL_30:
        bufAddChar(a1, v17);
        *(a1 + 16) = v16;
      }

      if ((*(a1 + 16) - 1) >= 3)
      {
        v16 = 3;
        LOBYTE(v17) = 32;
        goto LABEL_30;
      }
    }
  }

  toBuf(a1, Content);
LABEL_32:
  v19 = *MEMORY[0x277D85DE8];

  free(v6);
}

uint64_t toBuf(uint64_t result, char *__s)
{
  if (__s)
  {
    v3 = result;
    result = strlen(__s);
    v4 = result;
    if (result)
    {
      v5 = *__s;
      if (*__s)
      {
        v6 = __s + 1;
        do
        {
          result = bufAddChar(v3, v5);
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v8 = __s[v4 - 1];
      if (v8 != 32)
      {
        if (v8 == 10)
        {
          if (v4 >= 2 && __s[v4 - 2] == 10 || *(v3 + 16) == 1)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_16;
        }

        if (v8 != 9)
        {
          *(v3 + 16) = 0;
          return result;
        }
      }

      v9 = 3;
LABEL_16:
      *(v3 + 16) = v9;
    }
  }

  return result;
}

void *bufAddChar(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  result = *a1;
  if (v4 >= v5)
  {
    v7 = (v5 & 1) + v5 + (v5 >> 1);
    *(a1 + 12) = v7;
    result = reallocf(result, v7);
    if (!result)
    {
      v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v8);
    }

    *a1 = result;
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  *(result + v4) = a2;
  return result;
}

void li(uint64_t a1)
{
  if (*(a1 + 68) < 1)
  {

    toBuf(a1, "* ");
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v3 = *(a1 + 68);
    *(a1 + 68) = v3 + 1;
    v5 = [v2 initWithFormat:@"%i. ", v3];
    v4 = v5;
    toBuf(a1, [v5 UTF8String]);
  }
}

uint64_t toBufInt(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *__s = 0u;
  v6 = 0u;
  __sprintf_chk(__s, 0, 0x20uLL, "%i", a2);
  result = toBuf(a1, __s);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL bufEndswith(uint64_t a1, int a2, char *__s2, int a4)
{
  result = 0;
  if (__s2 && a1 && a2 >= a4)
  {
    return strncmp((a1 + a2 - a4), __s2, a4) == 0;
  }

  return result;
}

uint64_t _sgmDocumentTypeOfMessage(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v3 = MEMORY[0x277D02330];
  if ((isKindOfClass & 1) == 0)
  {
    v3 = MEMORY[0x277D02328];
  }

  return *v3;
}

void SGPETAddValueForScalarKey(void *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_new();
  [v4 setKey:v3];
  v5 = [MEMORY[0x277D41DA8] sharedInstance];
  [v5 trackScalarForMessage:v4 count:a2];

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v6 initWithFormat:@"%@.%@", *MEMORY[0x277D02470], v3];

  v11 = @"count";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  AnalyticsSendEvent();
  v10 = *MEMORY[0x277D85DE8];
}

void logIngestEvent(int a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sgLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a1)
  {
    if (v5)
    {
      *buf = 134217984;
      v12 = a2;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Starting ingest of %lu messages", buf, 0xCu);
    }
  }

  else if (v5)
  {
    *buf = 134217984;
    v12 = a2;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Ending ingest of %lu messages", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a2, @"count"}];
  v10 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  PLLogRegisteredEvent();
  v8 = *MEMORY[0x277D85DE8];
}

void logDissectionEvent(int a1, void *a2, unint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = sgLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a1)
  {
    if (v7)
    {
      *buf = 134218240;
      v17 = [v5 contentLength];
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "Starting dissection, len=%tu, ctx=%i", buf, 0x12u);
    }
  }

  else if (v7)
  {
    *buf = 134218240;
    v17 = [v5 contentLength];
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "Ending dissection, len=%tu, ctx=%i", buf, 0x12u);
  }

  v14[0] = @"bodySize";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "contentLength")}];
  v14[1] = @"context";
  v15[0] = v8;
  if (a3 >= 4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *dissectionContextName(SGDPowerLogDissectionContext)"];
    [v10 handleFailureInFunction:v11 file:@"SGDPowerLog.m" lineNumber:49 description:{@"Invalid dissection context: %lu", a3}];

    v9 = 0;
  }

  else
  {
    v9 = off_27894B650[a3];
  }

  v15[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  PLLogRegisteredEvent();
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__4008(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231EBD27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EBD84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___serialQueueForTitleGeneration_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:*MEMORY[0x277D02498]];
  v2 = _serialQueueForTitleGeneration__pasExprOnceResult;
  _serialQueueForTitleGeneration__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_231EBEDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _PASValidatedFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v19[1] = &a9;
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v19[0] = 0;
  v11 = [[v9 alloc] initWithValidatedFormat:v10 validFormatSpecifiers:@"%@" locale:0 arguments:&a9 error:v19];

  v12 = v19[0];
  if (!v11)
  {
    v13 = objc_alloc(MEMORY[0x277CBEAD8]);
    v14 = *MEMORY[0x277CBE660];
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = [v13 initWithName:v14 reason:@"An error occurred while formatting the string." userInfo:v15];

    [v16 raise];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_231ECB1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_231ECDB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231ED0368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231ED24F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  SGRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_231ED51E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_destroyWeak((v48 + 32));
  objc_destroyWeak((v50 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak(&a47);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231ED64BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void __getEntityMappingDispatchQueue_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);
  v3 = dispatch_queue_create("com.apple.suggestions.ml.datadetector", v2);
  v4 = getEntityMappingDispatchQueue__pasExprOnceResult;
  getEntityMappingDispatchQueue__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

uint64_t SGMIMetricsAggregatedAccuracyLogReadFrom(uint64_t a1, void *a2)
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
        v65 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65 & 0x7F) << v5;
        if ((v65 & 0x80) == 0)
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
      if ((v12 >> 3) <= 21)
      {
        if (v13 > 12)
        {
          if (v13 == 13)
          {
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 44) |= 0x40u;
            while (1)
            {
              v72 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v72 & 0x7F) << v43;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__salientPredictedAsIgnorable;
                goto LABEL_124;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__salientPredictedAsIgnorable;
            goto LABEL_121;
          }

          if (v13 == 21)
          {
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 44) |= 0x20u;
            while (1)
            {
              v71 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v71 & 0x7F) << v28;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__neutralPredictedAsSalient;
                goto LABEL_124;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__neutralPredictedAsSalient;
LABEL_121:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_124:
            *(a1 + *v22) = v21;
            goto LABEL_125;
          }
        }

        else
        {
          if (v13 == 11)
          {
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 44) |= 0x100u;
            while (1)
            {
              v74 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v74 & 0x7F) << v38;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__salientPredictedAsSalient;
                goto LABEL_124;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__salientPredictedAsSalient;
            goto LABEL_121;
          }

          if (v13 == 12)
          {
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 44) |= 0x80u;
            while (1)
            {
              v73 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v73 & 0x7F) << v23;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__salientPredictedAsNeutral;
                goto LABEL_124;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__salientPredictedAsNeutral;
            goto LABEL_121;
          }
        }
      }

      else if (v13 <= 30)
      {
        if (v13 == 22)
        {
          v53 = 0;
          v54 = 0;
          v16 = 0;
          *(a1 + 44) |= 0x10u;
          while (1)
          {
            v70 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v70 & 0x7F) << v53;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v20 = v54++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__neutralPredictedAsNeutral;
              goto LABEL_124;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__neutralPredictedAsNeutral;
          goto LABEL_121;
        }

        if (v13 == 23)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            v69 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v69 & 0x7F) << v33;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__neutralPredictedAsIgnorable;
              goto LABEL_124;
            }
          }

          v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__neutralPredictedAsIgnorable;
          goto LABEL_121;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x1F:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v68 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v68 & 0x7F) << v48;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__ignorablePredictedAsSalient;
                goto LABEL_124;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__ignorablePredictedAsSalient;
            goto LABEL_121;
          case 0x20:
            v58 = 0;
            v59 = 0;
            v16 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              v67 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v67 & 0x7F) << v58;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v20 = v59++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__ignorablePredictedAsNeutral;
                goto LABEL_124;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__ignorablePredictedAsNeutral;
            goto LABEL_121;
          case 0x21:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v66 = 0;
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
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__ignorablePredictedAsIgnorable;
                goto LABEL_124;
              }
            }

            v22 = &OBJC_IVAR___SGMIMetricsAggregatedAccuracyLog__ignorablePredictedAsIgnorable;
            goto LABEL_121;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_125:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231EDAF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  SGRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

uint64_t SGM2HarvestCostReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
        if (v13 != 1)
        {
          if (v13 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_86;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 8u;
          while (1)
          {
            v55 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v55 & 0x7F) << v21;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_84;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_84:
          v47 = 17;
          goto LABEL_85;
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v52 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v52 & 0x7F) << v40;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
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
          v20 = v42;
        }

LABEL_77:
        v48 = 8;
      }

      else
      {
        if (v13 == 3)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 20) |= 0x10u;
          while (1)
          {
            v54 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v54 & 0x7F) << v28;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_71;
            }
          }

          v27 = (v30 != 0) & ~[a2 hasError];
LABEL_71:
          v47 = 18;
          goto LABEL_85;
        }

        if (v13 == 4)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 20) |= 4u;
          while (1)
          {
            v53 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v53 & 0x7F) << v34;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_73;
            }
          }

          v27 = (v36 != 0) & ~[a2 hasError];
LABEL_73:
          v47 = 16;
LABEL_85:
          *(a1 + v47) = v27;
          goto LABEL_86;
        }

        if (v13 != 5)
        {
          goto LABEL_68;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v51 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v51 & 0x7F) << v14;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
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

LABEL_81:
        v48 = 12;
      }

      *(a1 + v48) = v20;
LABEL_86:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __SGNotUserInitiated_block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeDependency:v3];

  v4 = waitGroup();
  dispatch_group_leave(v4);
}

void __waitGroup_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_group_create();
  v2 = waitGroup__pasExprOnceResult;
  waitGroup__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __SGNotUserInitiated_block_invoke_5()
{
  v0 = waitGroup();
  dispatch_group_leave(v0);
}

void __SGNotUserInitiated_block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = SGNotUserInitiated__pasExprOnceResult_5;
  SGNotUserInitiated__pasExprOnceResult_5 = v1;

  objc_autoreleasePoolPop(v0);
}

void __SGNotUserInitiated_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = SGNotUserInitiated__pasExprOnceResult;
  SGNotUserInitiated__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void SGNotUserInitiatedWaitUntilAllOperationsAreFinished()
{
  v0 = waitGroup();
  dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_231EDF168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void sub_231EE0670(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE07B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSUSummarizationAnalyticsClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!ProactiveSummarizationLibraryCore_frameworkLibrary)
  {
    ProactiveSummarizationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PSUSummarizationAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPSUSummarizationAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ProactiveSummarizationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ProactiveSummarizationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231EE0A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE0D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_231EE0EF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE1AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE1E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  SGRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_231EE2150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE22B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EE2474(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE2518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SGRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_231EE2830(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE293C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SGRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_231EE2A40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE2C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE33D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE3660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE3CBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_231EE603C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x231EE6048);
}

id getMailAccountClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMailAccountClass_softClass;
  v7 = getMailAccountClass_softClass;
  if (!getMailAccountClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMailAccountClass_block_invoke;
    v3[3] = &unk_278955BF0;
    v3[4] = &v4;
    __getMailAccountClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231EE7028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMailAccountClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MessageLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MessageLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_27894C350;
    v9 = 0;
    MessageLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MessageLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MessageLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGCalendarAttachmentDissector.m" lineNumber:47 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MailAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMailAccountClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"SGCalendarAttachmentDissector.m" lineNumber:48 description:{@"Unable to find class %s", "MailAccount"}];

LABEL_10:
    __break(1u);
  }

  getMailAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MessageLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MessageLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __removeAttachments_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ([*(a1 + 32) bytes] + a2);
  if (a2 + a3 >= [*(a1 + 32) length] || (result = 0, v8 = v6[a3], v8 != 9) && v8 != 32)
  {
    if (a3 >= 6 && !strncmp(v6, "ATTACH", 6uLL))
    {
      v9 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
      [*(a1 + 40) addObject:v9];
    }

    return 1;
  }

  return result;
}

void sub_231EE7D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EE81A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5348(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id convertDateComponentsToLocalTimeZone(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = [v4 dateFromComponents:v2];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBB0] localTimeZone];
    v7 = [v4 componentsInTimeZone:v6 fromDate:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_231EEB478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id normalizeName(void *a1)
{
  v1 = a1;
  if ([v1 canBeConvertedToEncoding:1])
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 precomposedStringWithCanonicalMapping];
  }

  v3 = v2;

  return v3;
}

uint64_t re2::Prog::SearchOnePass(uint64_t a1, uint64_t a2, __int128 *a3, int a4, int a5, uint64_t a6, int a7)
{
  v9 = a5;
  v55[19] = *MEMORY[0x277D85DE8];
  if (a4 != 1 && a5 != 2)
  {
    LOBYTE(v48) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Cannot use SearchOnePass for unanchored matches.", 48);
    LogMessage::Flush(&v48);
    *&v49 = *MEMORY[0x277D82828];
    *(&v50[-2].__locale_ + *(v49 - 24)) = *(MEMORY[0x277D82828] + 24);
    *(&v49 + 1) = MEMORY[0x277D82878] + 16;
    if (v54 < 0)
    {
      operator delete(v53);
    }

    *(&v49 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v50);
    std::ostream::~ostream();
    MEMORY[0x23837FDA0](v55);
    goto LABEL_52;
  }

  v13 = 2 * a7;
  v52 = 0;
  v51 = 0u;
  if (2 * a7 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  memset(v50, 0, sizeof(v50));
  v49 = 0uLL;
  bzero(&v48, 8 * v14);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  bzero(&v45, 8 * v14);
  v44 = *a3;
  v15 = v44;
  if (!v44)
  {
    v15 = *a2;
    *&v44 = *a2;
    DWORD2(v44) = *(a2 + 8);
  }

  v16 = *a2;
  if (*a1 == 1 && v15 != v16)
  {
    goto LABEL_52;
  }

  if (*(a1 + 1))
  {
    v17 = &v15[SDWORD2(v44)];
    v18 = *(a2 + 8);
    v19 = v18;
    if (v17 != &v16[v18])
    {
LABEL_52:
      result = 0;
      goto LABEL_53;
    }

    v39 = v13;
    v38 = a6;
    v9 = 2;
  }

  else
  {
    v39 = v13;
    v38 = a6;
    v18 = *(a2 + 8);
    v19 = v18;
  }

  v20 = *(a1 + 576);
  v41 = *(a1 + 568);
  v43 = *(a1 + 28);
  v45 = *a2;
  v48 = v16;
  v21 = *v20;
  if (v18 >= 1)
  {
    v40 = 0;
    v42 = &v16[v19];
    if (v39 <= 3)
    {
      v22 = 3;
    }

    else
    {
      v22 = v39;
    }

    __n = 8 * (v22 - 2);
    while (1)
    {
      v23 = v21;
      v24 = v20[*(a1 + 304 + *v16) + 1];
      if ((v24 & 0x3F) != 0 && (v24 & 0x3F & ~re2::Prog::EmptyFlags(&v44, v16)) != 0)
      {
        v20 = 0;
        v21 = 48;
        if (v9 != 2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = (v41 + v43 * HIWORD(v24));
        v21 = *v20;
        if (v9 != 2)
        {
LABEL_28:
          if (v23 != 48 && v24 & 0x40 | v21 & 0x3F && ((v23 & 0x3F) == 0 || (v23 & 0x3F & ~re2::Prog::EmptyFlags(&v44, v16)) == 0))
          {
            if (a7 >= 2)
            {
              memcpy(v46 + 8, &v49 + 8, __n);
              if ((v23 & 0x7F80) != 0)
              {
                v25 = 2;
                do
                {
                  if (((v23 >> v25) & 0x20) != 0)
                  {
                    (&v45)[v25] = v16;
                  }

                  ++v25;
                }

                while (v14 != v25);
              }
            }

            *&v46[0] = v16;
            v40 = 1;
            if (!v9 && (v24 & 0x40) != 0)
            {
              goto LABEL_66;
            }
          }
        }
      }

      if (!v20)
      {
        goto LABEL_51;
      }

      if (a7 >= 2 && (v24 & 0x7F80) != 0)
      {
        v26 = 2;
        do
        {
          if (((v24 >> v26) & 0x20) != 0)
          {
            (&v48)[v26] = v16;
          }

          ++v26;
        }

        while (v14 != v26);
      }

      if (++v16 >= v42)
      {
        goto LABEL_48;
      }
    }
  }

  v40 = 0;
LABEL_48:
  v27 = *v20;
  if (*v20 == 48 || (v27 & 0x3F) != 0 && (v27 & 0x3F & ~re2::Prog::EmptyFlags(&v44, v16)) != 0)
  {
LABEL_51:
    if ((v40 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (a7 >= 2 && (v27 & 0x7F80) != 0)
    {
      v30 = 2;
      do
      {
        if (((v27 >> v30) & 0x20) != 0)
        {
          (&v48)[v30] = v16;
        }

        ++v30;
      }

      while (v14 != v30);
    }

    if (a7 >= 2)
    {
      if (v39 <= 3)
      {
        v31 = 3;
      }

      else
      {
        v31 = v39;
      }

      memcpy(v46 + 8, &v49 + 8, 8 * (v31 - 2));
    }

    *&v46[0] = v16;
  }

LABEL_66:
  if (a7 >= 1)
  {
    v32 = a7;
    v33 = v46;
    v34 = (v38 + 8);
    do
    {
      v35 = *(v33 - 1);
      v36 = *v33;
      v33 += 4;
      *(v34 - 1) = v35;
      *v34 = v36 - v35;
      v34 += 4;
      --v32;
    }

    while (v32);
  }

  result = 1;
LABEL_53:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231EEC9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x23837FD50](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_231EECBBC(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v4;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x23837FDA0](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v21[0] = 0;
  v21[1] = 0;
  MEMORY[0x23837FCD0](v21, a1);
  if (LOBYTE(v21[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_28;
    }

    if (v16 >= 1)
    {
      __b.__locale_ = 0;
      v23 = 0;
      v24 = 0;
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v24) = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v24 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (SHIBYTE(v24) < 0)
      {
        v19 = v18;
        operator delete(__b.__locale_);
        if (v19 != v16)
        {
LABEL_28:
          std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
          goto LABEL_29;
        }
      }

      else if (v18 != v16)
      {
        goto LABEL_28;
      }
    }

    if (v11 - v12 >= 1 && (*(*v7 + 96))(v7, v12, v11 - v12) != v11 - v12)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x23837FCE0](v21);
  return a1;
}

void sub_231EECEC8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23837FCE0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x231EECE9CLL);
}

void LogMessage::Flush(LogMessage *this)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 1, "\n", 1);
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  std::stringbuf::str();
  write(2, __p, 0);
  *this = 1;
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_231EECFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LogMessage::~LogMessage(std::locale *this)
{
  if ((this->__locale_ & 1) == 0)
  {
    LogMessage::Flush(this);
  }

  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  this[1].__locale_ = *MEMORY[0x277D82828];
  *(this + *(v3 - 24) + 8) = v2[3];
  this[2].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[12].__locale_) < 0)
  {
    operator delete(this[10].__locale_);
  }

  this[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 3);
  std::ostream::~ostream();
  MEMORY[0x23837FDA0](&this[15]);
}

{
  if ((this->__locale_ & 1) == 0)
  {
    LogMessage::Flush(this);
  }

  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  this[1].__locale_ = *MEMORY[0x277D82828];
  *(this + *(v3 - 24) + 8) = v2[3];
  this[2].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[12].__locale_) < 0)
  {
    operator delete(this[10].__locale_);
  }

  this[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 3);
  std::ostream::~ostream();
  MEMORY[0x23837FDA0](&this[15]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27894AB98, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

BOOL re2::Prog::IsOnePass(re2::Prog *this)
{
  if (*(this + 3) == 1)
  {
    return *(this + 72) != 0;
  }

  *(this + 3) = 1;
  if (*(this + 1))
  {
    v2 = *(this + 4);
    if (v2 <= 64997 && *(this + 32) / 4 / (4 * *(this + 5) + 4) >= v2 + 2)
    {
      v3 = *(this + 3);
      operator new[]();
    }
  }

  return 0;
}

void sub_231EED8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  re2::SparseSet::~SparseSet(va);
  re2::SparseSet::~SparseSet(va1);
  _Unwind_Resume(a1);
}

void re2::SparseSet::~SparseSet(re2::SparseSet *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x23837FDC0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x23837FDC0](v3, 0x1000C8052888210);
  }
}

void finishSuggestionsSetup(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __finishSuggestionsSetup_block_invoke;
  v8[3] = &unk_278955830;
  v9 = v3;
  v10 = v4;
  v5 = finishSuggestionsSetup_onceFlag;
  v6 = v4;
  v7 = v3;
  if (v5 != -1)
  {
    dispatch_once(&finishSuggestionsSetup_onceFlag, v8);
  }
}

uint64_t retrySuggestionsInitializationWhenUnlocked()
{
  v0 = [MEMORY[0x277D42598] registerForLockStateChangeNotifications:&__block_literal_global_62];
  v1 = retrySuggestionsInitializationWhenUnlocked_lockStateToken;
  retrySuggestionsInitializationWhenUnlocked_lockStateToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id sharedSpotlightReceiver()
{
  if (sharedSpotlightReceiver__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedSpotlightReceiver__pasOnceToken2, &__block_literal_global_64);
  }

  v1 = sharedSpotlightReceiver__pasExprOnceResult;

  return v1;
}

void __sharedSpotlightReceiver_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedSpotlightReceiver__pasExprOnceResult;
  sharedSpotlightReceiver__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __retrySuggestionsInitializationWhenUnlocked_block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v5 = +[SGSqlEntityStore defaultHarvestStore];
    v3 = +[SGSqlEntityStore defaultStore];
    if (v5)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      [MEMORY[0x277D42598] unregisterForLockStateChangeNotifications:retrySuggestionsInitializationWhenUnlocked_lockStateToken];
      finishSuggestionsSetup(v5, v3);
    }
  }
}

void __finishSuggestionsSetup_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v21 = v3;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "Running finishSuggestionsSetup (harvestStore=%@, defaultStore=%@)", buf, 0x16u);
  }

  v5 = +[SGDManagerForCTS sharedSingletonInstance];
  v6 = [[SGDSuggestManager alloc] initWithStore:*(a1 + 32)];
  [(SGDSuggestManager *)v6 registerForCoreSpotlightIndexing];
  v7 = [[SGDSuggestManager alloc] initWithStore:*(a1 + 40)];
  [MEMORY[0x277D02118] setInProcessSuggestManager:v7];
  [MEMORY[0x277D41DF8] addContentAdmissionObserver:v7];
  [(SGDSuggestManager *)v6 registerForProactiveHarvesting];
  v8 = +[SGDocumentUnderstandingConsumer sharedInstance];
  v9 = +[SGAutonamingConsumer sharedInstance];
  [*(a1 + 32) registerCachePrecomputationWithCTS];
  v10 = MEMORY[0x277D425A0];
  v11 = dispatch_get_global_queue(-32768, 0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __finishSuggestionsSetup_block_invoke_47;
  v18[3] = &unk_278954A30;
  v19 = v5;
  v12 = v5;
  [v10 runAsyncOnQueue:v11 afterDelaySeconds:v18 block:5.0];

  v13 = sharedSpotlightReceiver();
  [v13 setSuggestManager:v6];

  HVBatteryMonitoringStart();
  v14 = +[SGDCloudKitSync sharedInstance];
  [v14 setReadyForNewEntities:1];

  v15 = MEMORY[0x277D425A0];
  v16 = dispatch_get_global_queue(5, 0);
  [v15 runAsyncOnQueue:v16 afterDelaySeconds:&__block_literal_global_49 block:6.0];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __finishSuggestionsSetup_block_invoke_47()
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = ___registerEnableDisablePreferenceChangeListener_block_invoke;
  v1[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = 1;
  return [MEMORY[0x277D02098] registerBlockOnSuggestionsSettingsChange:v1];
}

void sub_231EF1954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231EF1B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SGDExit(uint64_t a1)
{
  if (atomic_exchange(SGDExit_exitFlag, 1u))
  {
    while (1)
    {
      pause();
    }
  }

  v2 = objc_opt_new();
  [v2 setExitCode:a1];
  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  [v3 trackScalarForMessage:v2];

  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = *MEMORY[0x277D02470];
  v6 = [v2 key];
  [v4 initWithFormat:@"%@.%@", v5, v6];

  v7 = [v2 dictionaryRepresentation];
  AnalyticsSendEvent();

  usleep(0x7A120u);
  _exit(a1);
}

uint64_t re2::Compiler::Copy(uint64_t a1)
{
  LOBYTE(v3.__locale_) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Compiler::Copy called!", 22);
  LogMessage::~LogMessage(&v3);
  *(a1 + 32) = 1;
  return 0;
}

unint64_t re2::Compiler::PostVisit(unint64_t this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unint64_t *a5, int a6)
{
  if ((*(this + 32) & 1) == 0)
  {
    v7 = this;
    LODWORD(v6) = 0;
    LODWORD(this) = 0;
    switch(*a2)
    {
      case 1u:
        return this | (v6 << 32);
      case 2u:
        goto LABEL_55;
      case 3u:
        this = re2::Compiler::Literal(v7, *(a2 + 6), *(a2 + 1) & 1);
        v6 = HIDWORD(this);
        return this | (v6 << 32);
      case 4u:
        v25 = *(a2 + 6);
        if (v25)
        {
          if (v25 < 1)
          {
            goto LABEL_2;
          }

          this = re2::Compiler::Literal(v7, **(a2 + 4), *(a2 + 1) & 1);
          v6 = HIDWORD(this);
          if (*(a2 + 6) >= 2)
          {
            v27 = a2;
            v28 = 1;
            do
            {
              v29 = this;
              v30 = re2::Compiler::Literal(v7, *(*(v27 + 4) + 4 * v28), *(v27 + 1) & 1);
              this = re2::Compiler::Cat(v7, v29 | (v6 << 32), v30);
              v27 = a2;
              v6 = HIDWORD(this);
              ++v28;
            }

            while (v28 < *(a2 + 6));
          }
        }

        else
        {
LABEL_55:
          this = re2::Compiler::Nop(v7);
          v6 = HIDWORD(this);
        }

        return this | (v6 << 32);
      case 5u:
        if (!a5)
        {
          LOBYTE(v43.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "kRegexpConcat: child_frags is NULL", 34);
          goto LABEL_84;
        }

        this = *a5;
        if (a6 >= 2)
        {
          v31 = a6 - 1;
          v32 = a5 + 1;
          do
          {
            v33 = *v32++;
            this = re2::Compiler::Cat(v7, this, v33);
            --v31;
          }

          while (v31);
        }

        goto LABEL_64;
      case 6u:
        if (!a5)
        {
          LOBYTE(v43.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "kRegexpAlternate child_frags is NULL", 36);
          goto LABEL_84;
        }

        this = *a5;
        if (a6 >= 2)
        {
          v18 = a6 - 1;
          v19 = a5 + 1;
          do
          {
            v20 = *v19++;
            this = re2::Compiler::Alt(v7, this, v20);
            --v18;
          }

          while (v18);
        }

        goto LABEL_64;
      case 7u:
        if (a5)
        {
          this = re2::Compiler::Star(v7, *a5, (*(a2 + 1) >> 6) & 1);
          v6 = HIDWORD(this);
          return this | (v6 << 32);
        }

        LOBYTE(v43.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "kRegexpStar child_frags is NULL", 31);
        goto LABEL_84;
      case 8u:
        if (a5)
        {
          v22 = *a5;
          v23 = re2::Compiler::Star(v7, *a5, (*(a2 + 1) >> 6) & 1);
          LODWORD(this) = v22;
          v6 = HIDWORD(v23);
          return this | (v6 << 32);
        }

        LOBYTE(v43.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "kRegexpPlus child_frags is NULL", 31);
        goto LABEL_84;
      case 9u:
        if (a5)
        {
          this = re2::Compiler::Quest(v7, *a5, (*(a2 + 1) & 0x40) != 0);
          v6 = HIDWORD(this);
          return this | (v6 << 32);
        }

        LOBYTE(v43.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "kRegexpQuest child_frags is NULL", 32);
        goto LABEL_84;
      case 0xBu:
        if (a5)
        {
          v34 = *(a2 + 6);
          this = *a5;
          if ((v34 & 0x80000000) == 0)
          {
            this = re2::Compiler::Capture(v7, *a5, v34);
          }

LABEL_64:
          v6 = HIDWORD(this);
        }

        else
        {
          LOBYTE(v43.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "kRegexpCapture child_frags is NULL", 34);
LABEL_84:
          LogMessage::~LogMessage(&v43);
          LODWORD(v6) = 0;
          LODWORD(this) = 0;
          *(v7 + 32) = 1;
        }

        return this | (v6 << 32);
      case 0xCu:
        std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*(v7 + 10));
        *(v7 + 9) = v7 + 80;
        *(v7 + 5) = 0u;
        *(v7 + 12) = 0;
        if (*(v7 + 9) == 2)
        {
          v17 = re2::Compiler::RuneByteSuffix(v7, 0, 0xFFu, 0, 0);
          re2::Compiler::AddSuffix(v7, v17);
        }

        else
        {
          re2::Compiler::AddRuneRangeUTF8(v7, 0, 1114111, 0);
        }

        goto LABEL_75;
      case 0xDu:
        this = re2::Compiler::ByteRange(v7, 0, 0xFFu, 0);
        v6 = HIDWORD(this);
        return this | (v6 << 32);
      case 0xEu:
        if (*(v7 + 40))
        {
          v16 = 2;
        }

        else
        {
          v16 = 1;
        }

        goto LABEL_72;
      case 0xFu:
        if (*(v7 + 40))
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        goto LABEL_72;
      case 0x10u:
        v24 = v7;
        v16 = 16;
        goto LABEL_73;
      case 0x11u:
        v24 = v7;
        v16 = 32;
        goto LABEL_73;
      case 0x12u:
        v35 = *(v7 + 40) == 0;
        v36 = 4;
        v37 = 8;
        goto LABEL_69;
      case 0x13u:
        v35 = *(v7 + 40) == 0;
        v36 = 8;
        v37 = 4;
LABEL_69:
        if (v35)
        {
          v16 = v36;
        }

        else
        {
          v16 = v37;
        }

LABEL_72:
        v24 = v7;
LABEL_73:
        this = re2::Compiler::EmptyWidth(v24, v16);
        v6 = HIDWORD(this);
        return this | (v6 << 32);
      case 0x14u:
        v8 = *(a2 + 3);
        if (!*(v8 + 1))
        {
          LOBYTE(v43.__locale_) = 0;
          std::ostringstream::basic_ostringstream[abi:ne200100](v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "No ranges in char class", 23);
          LogMessage::~LogMessage(&v43);
          LODWORD(this) = 0;
          *(v7 + 32) = 1;
          LODWORD(v6) = 0;
          return this | (v6 << 32);
        }

        v9 = *v8;
        std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*(v7 + 10));
        *(v7 + 9) = v7 + 80;
        *(v7 + 5) = 0u;
        *(v7 + 12) = 0;
        if (!*(v8 + 4))
        {
          LODWORD(this) = 0;
          LODWORD(v6) = 0;
          return this | (v6 << 32);
        }

        v10 = *(v8 + 1);
        break;
      case 0x15u:
        this = re2::Compiler::Match(v7, *(a2 + 6));
        if (*(v7 + 26) == 2)
        {
          LODWORD(v6) = 0;
        }

        else
        {
          v38 = this;
          v39 = re2::Compiler::DotStar(v7);
          v40 = re2::Compiler::EmptyWidth(v7, 8);
          v41 = re2::Compiler::Cat(v7, v40, v38);
          this = re2::Compiler::Cat(v7, v39, v41);
          v6 = HIDWORD(this);
        }

        return this | (v6 << 32);
      default:
        LOBYTE(v43.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Missing case in Compiler: ", 26);
        MEMORY[0x23837FD10](v44, *a2);
        goto LABEL_84;
    }

    while (1)
    {
      v11 = *v10;
      if (!v9)
      {
        break;
      }

      if (v11 < 65)
      {
        goto LABEL_14;
      }

      if (v10[1] >= 91)
      {
        break;
      }

LABEL_9:
      v10 += 2;
      if (v10 == (*(v8 + 1) + 8 * *(v8 + 4)))
      {
LABEL_75:
        this = *(v7 + 12);
        v6 = HIDWORD(this);
        return this | (v6 << 32);
      }
    }

    if (v11 >= 66)
    {
      v12 = v10[1];
      if (v11 <= 122)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_14:
      v12 = v10[1];
      if (v12 <= 121)
      {
LABEL_17:
        v13 = v9;
        if (v12 > 64)
        {
          goto LABEL_19;
        }
      }
    }

    v13 = 0;
LABEL_19:
    if (*(v7 + 9) == 2)
    {
      if (v11 <= 255 && v11 <= v12)
      {
        if (v12 >= 255)
        {
          v14 = -1;
        }

        else
        {
          v14 = v12;
        }

        v15 = re2::Compiler::RuneByteSuffix(v7, *v10, v14, v13, 0);
        re2::Compiler::AddSuffix(v7, v15);
      }
    }

    else
    {
      re2::Compiler::AddRuneRangeUTF8(v7, v11, v12, v13);
    }

    goto LABEL_9;
  }

LABEL_2:
  LODWORD(v6) = 0;
  LODWORD(this) = 0;
  return this | (v6 << 32);
}

uint64_t re2::Compiler::Nop(re2::Compiler *this)
{
  if ((*(this + 32) & 1) != 0 || (v1 = *(this + 14), v1 >= *(this + 11)))
  {
    v4 = 0;
    v3 = 0;
    *(this + 32) = 1;
  }

  else
  {
    v2 = *(this + 15);
    if (v1 >= v2)
    {
      if (!v2)
      {
        v2 = 8;
        *(this + 15) = 8;
      }

      if (v1 >= v2)
      {
        do
        {
          v2 *= 2;
        }

        while (v1 >= v2);
        *(this + 15) = v2;
      }

      operator new[]();
    }

    *(this + 14) = v1 + 1;
    if ((v1 & 0x80000000) != 0)
    {
      v4 = 0;
      v3 = 0;
    }

    else
    {
      v3 = v1;
      *(*(this + 6) + 8 * v1) = *(*(this + 6) + 8 * v1) & 0xFFFFFFF8 | 6;
      v4 = v1 << 33;
    }
  }

  return v3 | v4;
}

uint64_t re2::Compiler::Match(re2::Compiler *this, unsigned int a2)
{
  if ((*(this + 32) & 1) != 0 || (v3 = *(this + 14), v3 >= *(this + 11)))
  {
    result = 0;
    *(this + 32) = 1;
  }

  else
  {
    v4 = *(this + 15);
    if (v3 >= v4)
    {
      if (v4)
      {
        if (v3 < v4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v4 = 8;
        *(this + 15) = 8;
        if (v3 < 8)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v4 *= 2;
      }

      while (v3 >= v4);
      *(this + 15) = v4;
LABEL_11:
      operator new[]();
    }

    *(this + 14) = v3 + 1;
    if (v3 < 0)
    {
      return 0;
    }

    else
    {
      result = v3;
      v6 = (*(this + 6) + 8 * v3);
      *v6 = *v6 & 0xFFFFFFF8 | 5;
      v6[1] = a2;
    }
  }

  return result;
}

unint64_t re2::Compiler::DotStar(re2::Compiler *this)
{
  v2 = re2::Compiler::ByteRange(this, 0, 0xFFu, 0);

  return re2::Compiler::Star(this, v2, 1);
}

uint64_t re2::Compiler::EmptyWidth(uint64_t a1, int a2)
{
  if ((*(a1 + 32) & 1) != 0 || (v3 = *(a1 + 56), v3 >= *(a1 + 44)))
  {
    v5 = 0;
    v6 = 0;
    *(a1 + 32) = 1;
  }

  else
  {
    v4 = *(a1 + 60);
    if (v3 >= v4)
    {
      if (v4)
      {
        if (v3 < v4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 8;
        *(a1 + 60) = 8;
        if (v3 < 8)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v4 *= 2;
      }

      while (v3 >= v4);
      *(a1 + 60) = v4;
LABEL_12:
      operator new[]();
    }

    *(a1 + 56) = v3 + 1;
    if ((v3 & 0x80000000) != 0)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v8 = (*(a1 + 48) + 8 * v3);
      *v8 = 4;
      v8[1] = a2;
      if ((a2 & 3) != 0)
      {
        *(*(a1 + 24) + 272) |= 0x600u;
      }

      v6 = v3;
      if ((a2 & 0x30) != 0)
      {
        v9 = 0;
        while (2)
        {
          while (2)
          {
            v10 = v9;
            v13 = v9 - 48 < 0xA || (v9 & 0xDFu) - 65 < 0x1A || v9 == 95;
            if (v9 <= 255)
            {
              v14 = 255;
            }

            else
            {
              v14 = v9;
            }

            do
            {
              if (v14 == v9)
              {
                v21 = *(a1 + 24);
                if ((v10 - 1) > 0xFE)
                {
                  if (v10 > 255)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {
                  *(v21 + 4 * ((v10 - 1) >> 5) + 272) |= 1 << (v10 - 1);
                }

                *(v21 + 4 * (v14 >> 5) + 272) |= 1 << v14;
                goto LABEL_53;
              }

              v15 = v9++;
              v18 = v9 - 48 < 0xA || (v9 & 0xDFu) - 65 < 0x1A || v9 == 95;
            }

            while (v13 == v18);
            v19 = *(a1 + 24);
            v20 = v10 - 1;
            if (v20 <= 0xFE)
            {
              *(v19 + 4 * (v20 >> 5) + 272) |= 1 << v20;
              if (v15 > 0xFF)
              {
LABEL_43:
                if (v15 < 255)
                {
                  continue;
                }

                goto LABEL_53;
              }
            }

            else if (v15 > 0xFF)
            {
              goto LABEL_43;
            }

            break;
          }

          *(v19 + 4 * (v15 >> 5) + 272) |= 1 << v15;
          if (v15 < 255)
          {
            continue;
          }

          break;
        }
      }

LABEL_53:
      v5 = v3 << 33;
    }
  }

  return v6 | v5;
}

unint64_t re2::Compiler::Cat(uint64_t a1, unint64_t a2, unint64_t a3)
{
  LODWORD(v3) = 0;
  v4 = 0;
  if (a2 && a3)
  {
    v5 = HIDWORD(a2);
    v3 = HIDWORD(a3);
    v6 = *(a1 + 48);
    if (*(v6 + 8 * a2) == 6 && 2 * a2 == HIDWORD(a2))
    {
      if (v5)
      {
        do
        {
          while (1)
          {
            v9 = (v6 + 8 * (v5 >> 1));
            if ((v5 & 1) == 0)
            {
              break;
            }

            LODWORD(v5) = v9[1];
            v9[1] = a3;
            if (!v5)
            {
              goto LABEL_19;
            }
          }

          LODWORD(v5) = *v9 >> 3;
          *v9 = *v9 & 7 | (8 * a3);
        }

        while (v5);
      }

      goto LABEL_19;
    }

    if (*(a1 + 40) == 1)
    {
      if (v3)
      {
        do
        {
          while (1)
          {
            v8 = (v6 + 8 * (v3 >> 1));
            if ((v3 & 1) == 0)
            {
              break;
            }

            LODWORD(v3) = v8[1];
            v8[1] = a2;
            if (!v3)
            {
              goto LABEL_13;
            }
          }

          LODWORD(v3) = *v8 >> 3;
          *v8 = *v8 & 7 | (8 * a2);
        }

        while (v3);
      }

LABEL_13:
      v3 = HIDWORD(a2);
LABEL_19:
      v4 = a3;
      return v4 | (v3 << 32);
    }

    if (v5)
    {
      do
      {
        while (1)
        {
          v10 = (v6 + 8 * (v5 >> 1));
          if (v5)
          {
            break;
          }

          LODWORD(v5) = *v10 >> 3;
          *v10 = *v10 & 7 | (8 * a3);
          if (!v5)
          {
            goto LABEL_25;
          }
        }

        LODWORD(v5) = v10[1];
        v10[1] = a3;
      }

      while (v5);
    }

LABEL_25:
    v4 = a2;
  }

  return v4 | (v3 << 32);
}

unint64_t re2::Compiler::Alt(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v3 = HIDWORD(a2);
    if (a3)
    {
      if ((*(a1 + 32) & 1) != 0 || (v4 = *(a1 + 56), v4 >= *(a1 + 44)))
      {
        v3 = 0;
        v4 = 0;
        *(a1 + 32) = 1;
      }

      else
      {
        v5 = *(a1 + 60);
        if (v4 >= v5)
        {
          if (!v5)
          {
            v5 = 8;
            *(a1 + 60) = 8;
          }

          if (v4 >= v5)
          {
            do
            {
              v5 *= 2;
            }

            while (v4 >= v5);
            *(a1 + 60) = v5;
          }

          operator new[]();
        }

        *(a1 + 56) = v4 + 1;
        if (v4 < 0)
        {
          v3 = 0;
          v4 = 0;
        }

        else
        {
          v6 = (*(a1 + 48) + 8 * v4);
          *v6 = 8 * a2;
          v6[1] = a3;
          if (v3)
          {
            if (HIDWORD(a3))
            {
              v8 = HIDWORD(a2);
              do
              {
                while (1)
                {
                  v9 = v8;
                  v10 = (*(a1 + 48) + 8 * (v8 >> 1));
                  if (v8)
                  {
                    break;
                  }

                  v8 = *v10 >> 3;
                  if (!v8)
                  {
                    goto LABEL_25;
                  }
                }

                v8 = v10[1];
              }

              while (v10[1]);
LABEL_25:
              if (v9)
              {
                v10[1] = HIDWORD(a3);
              }

              else
              {
                *v10 = *v10 & 7 | (8 * HIDWORD(a3));
              }
            }
          }

          else
          {
            v3 = HIDWORD(a3);
          }
        }
      }
    }

    else
    {
      v4 = a2;
    }
  }

  else
  {
    v3 = HIDWORD(a3);
    v4 = a3;
  }

  return v4 | (v3 << 32);
}

unint64_t re2::Compiler::Star(uint64_t a1, unint64_t a2, int a3)
{
  if ((*(a1 + 32) & 1) != 0 || (v3 = *(a1 + 56), v3 >= *(a1 + 44)))
  {
    v5 = 0;
    v3 = 0;
    *(a1 + 32) = 1;
  }

  else
  {
    v4 = *(a1 + 60);
    if (v3 >= v4)
    {
      if (v4)
      {
        if (v3 < v4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 8;
        *(a1 + 60) = 8;
        if (v3 < 8)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v4 *= 2;
      }

      while (v3 >= v4);
      *(a1 + 60) = v4;
LABEL_12:
      operator new[]();
    }

    *(a1 + 56) = v3 + 1;
    if (v3 < 0)
    {
      v5 = 0;
      v3 = 0;
    }

    else
    {
      *(*(a1 + 48) + 8 * v3) = 0;
      v7 = *(a1 + 48);
      v8 = HIDWORD(a2);
      if (HIDWORD(a2))
      {
        do
        {
          while (1)
          {
            v9 = (v7 + 8 * (v8 >> 1));
            if (v8)
            {
              break;
            }

            LODWORD(v8) = *v9 >> 3;
            *v9 = *v9 & 7 | (8 * v3);
            if (!v8)
            {
              goto LABEL_19;
            }
          }

          LODWORD(v8) = v9[1];
          v9[1] = v3;
        }

        while (v8);
LABEL_19:
        v7 = *(a1 + 48);
      }

      if (a3)
      {
        *(v7 + 8 * v3 + 4) = a2;
        v5 = (2 * v3);
      }

      else
      {
        *(v7 + 8 * v3) = *(v7 + 8 * v3) & 7 | (8 * a2);
        v5 = (2 * v3) | 1u;
      }
    }
  }

  return v3 | (v5 << 32);
}

unint64_t re2::Compiler::Quest(uint64_t a1, unint64_t a2, char a3)
{
  if (!a2)
  {
    v7 = re2::Compiler::Nop(a1);
    v6 = HIDWORD(v7);
    v3 = v7;
    return v3 | (v6 << 32);
  }

  if ((*(a1 + 32) & 1) != 0 || (v3 = *(a1 + 56), v3 >= *(a1 + 44)))
  {
    v6 = 0;
    v3 = 0;
    *(a1 + 32) = 1;
    return v3 | (v6 << 32);
  }

  v4 = *(a1 + 60);
  if (v3 >= v4)
  {
    if (!v4)
    {
      v4 = 8;
      *(a1 + 60) = 8;
    }

    if (v3 >= v4)
    {
      do
      {
        v4 *= 2;
      }

      while (v3 >= v4);
      *(a1 + 60) = v4;
    }

    operator new[]();
  }

  *(a1 + 56) = v3 + 1;
  if ((v3 & 0x80000000) != 0)
  {
    v6 = 0;
    v3 = 0;
    return v3 | (v6 << 32);
  }

  v5 = (*(a1 + 48) + 8 * v3);
  if (a3)
  {
    *v5 = 0;
    v5[1] = a2;
    v6 = HIDWORD(a2);
    if (!v3)
    {
      return v3 | (v6 << 32);
    }

    v6 = 2 * v3;
  }

  else
  {
    *v5 = (8 * a2);
    v6 = (2 * v3) | 1;
  }

  if (HIDWORD(a2))
  {
    v9 = *(a1 + 48);
    v10 = v6;
    do
    {
      while (1)
      {
        v11 = v10;
        v12 = v10;
        v13 = (v9 + ((4 * v10) & 0x3FFFFFFF8));
        if (v12)
        {
          break;
        }

        v10 = *v13 >> 3;
        if (!v10)
        {
          goto LABEL_25;
        }
      }

      v10 = v13[1];
    }

    while (v10);
LABEL_25:
    v14 = (v9 + 8 * (v11 >> 1));
    if (v11)
    {
      v14[1] = HIDWORD(a2);
    }

    else
    {
      *v14 = *v14 & 7 | (8 * HIDWORD(a2));
    }
  }

  return v3 | (v6 << 32);
}

unint64_t re2::Compiler::Literal(re2::Compiler *this, unsigned int a2, int a3)
{
  v4 = *(this + 9);
  if (v4 == 1)
  {
    if (a2 > 127)
    {
      if (a2 > 0x7FF)
      {
        if (HIWORD(a2) <= 0x10u)
        {
          v13 = a2;
        }

        else
        {
          v13 = 65533;
        }

        v14 = HIWORD(v13);
        v15 = (v13 >> 18) | 0xF0;
        v16 = v13 >> 12;
        v17 = (v13 >> 6) & 0x3F | 0x80;
        v18 = v13 & 0x3F | 0x80;
        v19 = (v13 >> 12) | 0xE0;
        v20 = v13 >> 6;
        if (v14)
        {
          v8 = v18;
        }

        else
        {
          v8 = 0;
        }

        if (v14)
        {
          v9 = v17;
        }

        else
        {
          v9 = v18;
        }

        if (v14)
        {
          v12 = v16;
        }

        else
        {
          v12 = v20;
        }

        if (v14)
        {
          LOBYTE(v11) = v15;
        }

        else
        {
          LOBYTE(v11) = v19;
        }

        v10 = v14 == 0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (a2 >> 6) | 0xC0;
        v12 = a2;
      }

      v22 = re2::Compiler::ByteRange(this, v11, v11, 0);
      v23 = re2::Compiler::ByteRange(this, v12 & 0x3F | 0x80u, v12 & 0x3F | 0x80u, 0);
      v24 = this;
      v6 = re2::Compiler::Cat(this, v22, v23);
      if (a2 > 0x7FF)
      {
        v25 = v6;
        v26 = re2::Compiler::ByteRange(v24, v9, v9, 0);
        v6 = re2::Compiler::Cat(v24, v25, v26);
        if (!v10)
        {
          v27 = v6;
          v28 = re2::Compiler::ByteRange(v24, v8, v8, 0);
          v6 = re2::Compiler::Cat(v24, v27, v28);
        }
      }

      goto LABEL_6;
    }

LABEL_5:
    v6 = re2::Compiler::ByteRange(this, a2, a2, a3);
LABEL_6:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 2)
  {
    goto LABEL_5;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  return v6 | v5;
}

void std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

unint64_t re2::Compiler::AddRuneRangeUTF8(unint64_t this, int a2, int a3, unsigned int a4)
{
  if (a2 > a3)
  {
    return this;
  }

  v6 = this;
  v7 = a3 & 0x7FFFFFC0;
  v8 = a3 & 0x3F;
  v9 = a3 & 0x7FFFF000;
  v25 = a3 & 0xFFF;
  v10 = a3 & 0x7FFC0000;
  v11 = a3 & 0x3FFFF;
  while (a2 != 128 || a3 != 1114111)
  {
    if (a2 > 127 || a3 <= 127)
    {
      goto LABEL_10;
    }

    v12 = 127;
LABEL_27:
    this = re2::Compiler::AddRuneRangeUTF8(v6, a2, v12, a4);
    a2 = v12 + 1;
LABEL_28:
    if (a2 > a3)
    {
      return this;
    }
  }

  if ((*(v6 + 40) & 1) == 0)
  {

    return re2::Compiler::Add_80_10ffff(v6);
  }

LABEL_10:
  if (a2 <= 2047 && a3 > 2047)
  {
    v12 = 2047;
    goto LABEL_27;
  }

  if (a2 < 0x10000 && a3 >= 0x10000)
  {
    v12 = 0xFFFF;
    goto LABEL_27;
  }

  if (a3 >= 128)
  {
    if ((a2 & 0xFFFFFFC0) == v7)
    {
      goto LABEL_18;
    }

    if ((a2 & 0x3F) != 0)
    {
      v13 = 63;
LABEL_26:
      v12 = a2 | v13;
      goto LABEL_27;
    }

    v14 = v7;
    if (v8 != 63)
    {
      goto LABEL_35;
    }

LABEL_18:
    if ((a2 & 0xFFFFF000) != v9)
    {
      if ((a2 & 0xFFF) != 0)
      {
        v13 = 4095;
        goto LABEL_26;
      }

      v14 = v9;
      if (v25 != 4095)
      {
        goto LABEL_35;
      }
    }

    if ((a2 & 0xFFFC0000) == v10)
    {
      goto LABEL_42;
    }

    if ((a2 & 0x3FFFF) == 0)
    {
      v14 = v10;
      if (v11 == 0x3FFFF)
      {
LABEL_42:
        *v26 = 0;
        if (a2 > 0x7F)
        {
          if (a2 > 0x7FF)
          {
            if (a2 <= 0x10FFFF)
            {
              v19 = a2;
            }

            else
            {
              v19 = 65533;
            }

            v16 = 0;
            if (HIWORD(v19))
            {
              v17 = 0;
              v26[4] = (v19 >> 18) | 0xF0;
              v26[5] = (v19 >> 12) & 0x3F | 0x80;
              v26[6] = (v19 >> 6) & 0x3F | 0x80;
              v26[7] = v19 & 0x3F | 0x80;
              v18 = 4;
            }

            else
            {
              v26[4] = (v19 >> 12) | 0xE0;
              v26[5] = (v19 >> 6) & 0x3F | 0x80;
              v26[6] = v19 & 0x3F | 0x80;
              v17 = 1;
              v18 = 3;
            }
          }

          else
          {
            v17 = 0;
            v26[4] = (a2 >> 6) | 0xC0;
            v26[5] = a2 & 0x3F | 0x80;
            v16 = 1;
            v18 = 2;
          }
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v26[4] = a2;
          v18 = 1;
        }

        if (a3 > 0x7FF)
        {
          if (a3 <= 0x10FFFF)
          {
            v20 = a3;
          }

          else
          {
            v20 = 65533;
          }

          if (HIWORD(v20))
          {
            v26[0] = (v20 >> 18) | 0xF0;
            v26[1] = (v20 >> 12) & 0x3F | 0x80;
            v26[2] = (v20 >> 6) & 0x3F | 0x80;
            v26[3] = v20 & 0x3F | 0x80;
          }

          else
          {
            v26[0] = (v20 >> 12) | 0xE0;
            v26[1] = (v20 >> 6) & 0x3F | 0x80;
            v26[2] = v20 & 0x3F | 0x80;
          }
        }

        else
        {
          v26[0] = (a3 >> 6) | 0xC0;
          v26[1] = a3 & 0x3F | 0x80;
        }

        v21 = a2;
        if (*(v6 + 40) == 1)
        {
          v22 = re2::Compiler::RuneByteSuffix(v6, v26[4], v26[0], 0, 0);
          if (v21 >= 0x80)
          {
            v22 = re2::Compiler::RuneByteSuffix(v6, v26[5], v26[1], 0, v22);
            if ((v16 & 1) == 0)
            {
              v22 = re2::Compiler::RuneByteSuffix(v6, v26[6], v26[2], 0, v22);
              if ((v17 & 1) == 0)
              {
                v23 = v26[7];
                v24 = v26[3];
                goto LABEL_69;
              }
            }
          }
        }

        else
        {
          v22 = re2::Compiler::RuneByteSuffix(v6, v26[v18 + 3], v26[v18 - 1], 0, 0);
          if (v21 >= 0x80)
          {
            v22 = re2::Compiler::RuneByteSuffix(v6, v26[v18 + 2], v26[v18 - 2], 0, v22);
            if ((v18 - 1) >= 2)
            {
              v22 = re2::Compiler::RuneByteSuffix(v6, v26[v18 + 1], v26[v18 - 3], 0, v22);
              if ((v18 - 2) >= 2)
              {
                v23 = v26[v18];
                v24 = v26[v18 - 4];
LABEL_69:
                v22 = re2::Compiler::RuneByteSuffix(v6, v23, v24, 0, v22);
              }
            }
          }
        }

        return re2::Compiler::AddSuffix(v6, v22);
      }

LABEL_35:
      this = re2::Compiler::AddRuneRangeUTF8(v6, a2, v14 - 1, a4);
      a2 = v14;
      goto LABEL_28;
    }

    v13 = 0x3FFFF;
    goto LABEL_26;
  }

  v15 = re2::Compiler::RuneByteSuffix(v6, a2, a3, a4, 0);

  return re2::Compiler::AddSuffix(v6, v15);
}

unint64_t re2::Compiler::RuneByteSuffix(re2::Compiler *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v7 = *(this + 9);
  if (v7 == 2 || v7 == 1 && (*(this + 40) & 1) == 0 && ((a2 & 0x80) == 0 || a3 >= 0xC0))
  {
    v20 = re2::Compiler::ByteRange(this, a2, a3, a4);
    v21 = *(this + 6);
    v22 = HIDWORD(v20);
    if (a5)
    {
      if (v22)
      {
        do
        {
          while (1)
          {
            v23 = (v21 + 8 * (v22 >> 1));
            if ((v22 & 1) == 0)
            {
              break;
            }

            LODWORD(v22) = v23[1];
            v23[1] = a5;
            if (!v22)
            {
              return v20;
            }
          }

          LODWORD(v22) = *v23 >> 3;
          *v23 = *v23 & 7 | (8 * a5);
        }

        while (v22);
      }
    }

    else
    {
      LODWORD(v30) = *(this + 25);
      if (v30)
      {
        if (v22)
        {
          v31 = *(this + 25);
          do
          {
            while (1)
            {
              v32 = v31;
              v33 = v31;
              v34 = (v21 + ((4 * v31) & 0x3FFFFFFF8));
              if (v33)
              {
                break;
              }

              v31 = *v34 >> 3;
              if (!v31)
              {
                goto LABEL_42;
              }
            }

            v31 = v34[1];
          }

          while (v31);
LABEL_42:
          v35 = (v21 + 8 * (v32 >> 1));
          if (v32)
          {
            v35[1] = HIDWORD(v20);
          }

          else
          {
            *v35 = *v35 & 7 | (8 * HIDWORD(v20));
          }
        }
      }

      else
      {
        v30 = HIDWORD(v20);
      }

      *(this + 25) = v30;
    }

    return v20;
  }

  else
  {
    v8 = (a2 << 9) | (a5 << 17) | (2 * a3) | a4;
    v10 = this + 80;
    v9 = *(this + 10);
    if (!v9)
    {
      goto LABEL_14;
    }

    v11 = this + 80;
    do
    {
      v12 = *(v9 + 4);
      v13 = v12 >= v8;
      v14 = v12 < v8;
      if (v13)
      {
        v11 = v9;
      }

      v9 = *&v9[8 * v14];
    }

    while (v9);
    if (v11 != v10 && v8 >= *(v11 + 4))
    {
      return *(v11 + 10);
    }

    else
    {
LABEL_14:
      v15 = re2::Compiler::ByteRange(this, a2, a3, a4);
      v16 = v15;
      v17 = *(this + 6);
      v18 = HIDWORD(v15);
      if (a5)
      {
        if (v18)
        {
          do
          {
            while (1)
            {
              v19 = (v17 + 8 * (v18 >> 1));
              if ((v18 & 1) == 0)
              {
                break;
              }

              LODWORD(v18) = v19[1];
              v19[1] = a5;
              if (!v18)
              {
                goto LABEL_49;
              }
            }

            LODWORD(v18) = *v19 >> 3;
            *v19 = *v19 & 7 | (8 * a5);
          }

          while (v18);
        }
      }

      else
      {
        LODWORD(v24) = *(this + 25);
        if (v24)
        {
          if (v18)
          {
            v25 = *(this + 25);
            do
            {
              while (1)
              {
                v26 = v25;
                v27 = v25;
                v28 = (v17 + ((4 * v25) & 0x3FFFFFFF8));
                if (v27)
                {
                  break;
                }

                v25 = *v28 >> 3;
                if (!v25)
                {
                  goto LABEL_34;
                }
              }

              v25 = v28[1];
            }

            while (v25);
LABEL_34:
            v29 = (v17 + 8 * (v26 >> 1));
            if (v26)
            {
              v29[1] = HIDWORD(v15);
            }

            else
            {
              *v29 = *v29 & 7 | (8 * HIDWORD(v15));
            }
          }
        }

        else
        {
          v24 = HIDWORD(v15);
        }

        *(this + 25) = v24;
      }

LABEL_49:
      v36 = *v10;
      if (!*v10)
      {
LABEL_55:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v37 = v36;
          v38 = v36[4];
          if (v8 >= v38)
          {
            break;
          }

          v36 = *v37;
          if (!*v37)
          {
            goto LABEL_55;
          }
        }

        if (v38 >= v8)
        {
          break;
        }

        v36 = v37[1];
        if (!v36)
        {
          goto LABEL_55;
        }
      }

      *(v37 + 10) = v15;
    }
  }

  return v16;
}

uint64_t re2::Compiler::AddSuffix(uint64_t this, int a2)
{
  if (*(this + 96))
  {
    if ((*(this + 32) & 1) != 0 || (v2 = *(this + 56), v2 >= *(this + 44)))
    {
      v2 = 0;
      *(this + 32) = 1;
    }

    else
    {
      v3 = *(this + 60);
      if (v2 >= v3)
      {
        if (!v3)
        {
          v3 = 8;
          *(this + 60) = 8;
        }

        if (v2 >= v3)
        {
          do
          {
            v3 *= 2;
          }

          while (v2 >= v3);
          *(this + 60) = v3;
        }

        operator new[]();
      }

      *(this + 56) = v2 + 1;
      if (v2 < 0)
      {
        v2 = 0;
      }

      else
      {
        v4 = (*(this + 48) + 8 * v2);
        *v4 = 8 * *(this + 96);
        v4[1] = a2;
      }
    }
  }

  else
  {
    v2 = a2;
  }

  *(this + 96) = v2;
  return this;
}

uint64_t re2::Compiler::ByteRange(re2::Compiler *this, int a2, unsigned int a3, int a4)
{
  if ((*(this + 32) & 1) != 0 || (v4 = *(this + 14), v4 >= *(this + 11)))
  {
    v6 = 0;
    v7 = 0;
    *(this + 32) = 1;
  }

  else
  {
    v5 = *(this + 15);
    if (v4 >= v5)
    {
      if (v5)
      {
        if (v4 < v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v5 = 8;
        *(this + 15) = 8;
        if (v4 < 8)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v5 *= 2;
      }

      while (v4 >= v5);
      *(this + 15) = v5;
LABEL_12:
      operator new[]();
    }

    *(this + 14) = v4 + 1;
    if ((v4 & 0x80000000) != 0)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v9 = *(this + 6) + 8 * v4;
      *v9 = 2;
      *(v9 + 4) = a2;
      *(v9 + 5) = a3;
      *(v9 + 6) = a4;
      v10 = *(this + 3);
      ++*(v10 + 16);
      if ((a2 - 1) <= 0xFE)
      {
        *(v10 + 4 * ((a2 - 1) >> 5) + 272) |= 1 << (a2 - 1);
      }

      if (a3 <= 0xFF)
      {
        *(v10 + 4 * (a3 >> 5) + 272) |= 1 << a3;
      }

      v7 = v4;
      if (a2 <= 122 && a3 >= 97 && a4)
      {
        v11 = a2 <= 97 ? 97 : a2;
        v12 = a3 >= 0x7A ? 122 : a3;
        if (v11 <= v12)
        {
          v13 = v10 + 272;
          *(v13 + 4 * ((v11 - 33) >> 5)) |= 1 << (v11 - 33);
          *(v13 + 4 * ((v12 - 32) >> 5)) |= 1 << v12;
        }
      }

      v6 = v4 << 33;
    }
  }

  return v7 | v6;
}

uint64_t re2::Compiler::Capture(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a1 + 32) & 1) != 0 || (v3 = *(a1 + 56), v4 = v3 + 2, (v3 + 2) > *(a1 + 44)))
  {
    v5 = 0;
    v6 = 0;
    *(a1 + 32) = 1;
  }

  else
  {
    v8 = *(a1 + 60);
    if (v4 > v8)
    {
      if (!v8)
      {
        v8 = 8;
        *(a1 + 60) = 8;
      }

      if (v4 > v8)
      {
        do
        {
          v8 *= 2;
        }

        while (v4 > v8);
        *(a1 + 60) = v8;
      }

      operator new[]();
    }

    *(a1 + 56) = v4;
    if ((v3 & 0x80000000) != 0)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = v3;
      v9 = (*(a1 + 48) + 8 * v3);
      *v9 = (8 * a2) | 3;
      v9[1] = 2 * a3;
      v10 = v3 + 1;
      v11 = (*(a1 + 48) + 8 * v10);
      *v11 = 3;
      v11[1] = (2 * a3) | 1;
      v12 = HIDWORD(a2);
      if (HIDWORD(a2))
      {
        v13 = *(a1 + 48);
        do
        {
          while (1)
          {
            v14 = (v13 + 8 * (v12 >> 1));
            if (v12)
            {
              break;
            }

            LODWORD(v12) = *v14 >> 3;
            *v14 = *v14 & 7 | (8 * v10);
            if (!v12)
            {
              goto LABEL_20;
            }
          }

          LODWORD(v12) = v14[1];
          v14[1] = v10;
        }

        while (v12);
      }

LABEL_20:
      v5 = v10 << 33;
    }
  }

  return v6 | v5;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          *(v4 + 16) = v19;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v13[2] = v3;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

unint64_t re2::Compiler::Add_80_10ffff(re2::Compiler *this)
{
  v2 = 0;
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  do
  {
    v3 = (&re2::prog_80_10ffff + 12 * v2);
    v4 = *v3;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v18 + v4);
    }

    v6 = *(v3 + 4);
    result = re2::Compiler::ByteRange(this, v6, *(v3 + 8), 0);
    v8 = *(this + 6);
    v9 = HIDWORD(result);
    if (v5)
    {
      if (v9)
      {
        do
        {
          while (1)
          {
            v10 = (v8 + 8 * (v9 >> 1));
            if ((v9 & 1) == 0)
            {
              break;
            }

            LODWORD(v9) = v10[1];
            v10[1] = v5;
            if (!v9)
            {
              goto LABEL_24;
            }
          }

          LODWORD(v9) = *v10 >> 3;
          *v10 = *v10 & 7 | (8 * v5);
        }

        while (v9);
      }
    }

    else
    {
      LODWORD(v11) = *(this + 25);
      if (v11)
      {
        if (v9)
        {
          v12 = *(this + 25);
          do
          {
            while (1)
            {
              v13 = v12;
              v14 = v12;
              v15 = (v8 + ((4 * v12) & 0x3FFFFFFF8));
              if (v14)
              {
                break;
              }

              v12 = *v15 >> 3;
              if (!v12)
              {
                goto LABEL_19;
              }
            }

            v12 = v15[1];
          }

          while (v12);
LABEL_19:
          v16 = (v8 + 8 * (v13 >> 1));
          if (v13)
          {
            v16[1] = HIDWORD(result);
          }

          else
          {
            *v16 = *v16 & 7 | (8 * HIDWORD(result));
          }
        }
      }

      else
      {
        v11 = HIDWORD(result);
      }

      *(this + 25) = v11;
    }

LABEL_24:
    *(v18 + v2) = result;
    if ((v6 & 0xC0) != 0x80)
    {
      result = re2::Compiler::AddSuffix(this, result);
    }

    ++v2;
  }

  while (v2 != 12);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re2::Compiler::PreVisit(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) == 1)
  {
    *a4 = 1;
  }

  return 0;
}

void re2::Compiler::~Compiler(re2::Compiler *this)
{
  re2::Compiler::~Compiler(this);

  JUMPOUT(0x23837FDE0);
}

{
  *this = &unk_2846FF5C8;
  v2 = *(this + 3);
  if (v2)
  {
    re2::Prog::~Prog(v2);
    MEMORY[0x23837FDE0]();
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x23837FDC0](v3, 0x1000C8000313F17);
  }

  std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*(this + 10));
  *this = &unk_2846FF630;
  re2::Regexp::Walker<re2::Frag>::Reset(this);
  v4 = *(this + 1);
  if (v4)
  {
    v5 = std::deque<re2::WalkState<re2::Frag>>::~deque[abi:ne200100](v4);
    MEMORY[0x23837FDE0](v5, 0x1080C40BE8D5F09);
  }
}

void re2::Regexp::Walker<re2::Frag>::Reset(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*(v1 + 40))
    {
      LOBYTE(v15.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Stack not empty.", 16);
      LogMessage::~LogMessage(&v15);
      v3 = *(a1 + 8);
      v4 = v3[5];
      while (v4)
      {
        v5 = v3[4];
        v6 = v4 + v5 - 1;
        v7 = v3[1];
        v8 = *(*(v7 + 8 * (v6 / 0x55)) + 48 * (v6 % 0x55) + 40);
        if (v8)
        {
          MEMORY[0x23837FDE0](v8, 0x1000C4000313F17);
          v3 = *(a1 + 8);
          v5 = v3[4];
          v7 = v3[1];
        }

        v9 = v3[2];
        v11 = v9 - v7;
        v10 = v11 == 0;
        v12 = 85 * (v11 >> 3) - 1;
        v13 = v3[5];
        if (v10)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        v4 = v13 - 1;
        v3[5] = v13 - 1;
        if ((v14 - (v13 + v5) + 1) >= 0xAA)
        {
          operator delete(*(v9 - 8));
          v3[2] -= 8;
          v3 = *(a1 + 8);
          v4 = v3[5];
        }
      }
    }
  }
}

uint64_t std::deque<re2::WalkState<re2::Frag>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 85;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t re2::PatchList::Deref(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 8 * (a2 >> 1));
  if (a2)
  {
    return v2[1];
  }

  else
  {
    return *v2 >> 3;
  }
}

uint64_t re2::PatchList::Patch(uint64_t result, unsigned int a2, int a3)
{
  for (; a2; v3[1] = a3)
  {
    while (1)
    {
      v3 = (result + 8 * (a2 >> 1));
      if (a2)
      {
        break;
      }

      a2 = *v3 >> 3;
      *v3 = *v3 & 7 | (8 * a3);
      if (!a2)
      {
        return result;
      }
    }

    a2 = v3[1];
  }

  return result;
}

uint64_t re2::PatchList::Append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  if (!a3)
  {
    return a2;
  }

  v3 = a2;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = v3;
      v6 = (a1 + ((4 * v3) & 0x3FFFFFFF8));
      if (v5)
      {
        break;
      }

      v3 = *v6 >> 3;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v3 = v6[1];
  }

  while (v3);
LABEL_7:
  v7 = (a1 + 8 * (v4 >> 1));
  if ((v4 & 1) == 0)
  {
    *v7 = *v7 & 7 | (8 * a3);
    return a2;
  }

  v7[1] = a3;
  return a2;
}

void sub_231EF4BC8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*(v1 + 80));
  re2::Regexp::Walker<re2::Frag>::~Walker(v1);
  _Unwind_Resume(a1);
}

void *re2::Regexp::Walker<re2::Frag>::~Walker(void *a1)
{
  *a1 = &unk_2846FF630;
  re2::Regexp::Walker<re2::Frag>::Reset(a1);
  v2 = a1[1];
  if (v2)
  {
    v3 = std::deque<re2::WalkState<re2::Frag>>::~deque[abi:ne200100](v2);
    MEMORY[0x23837FDE0](v3, 0x1080C40BE8D5F09);
  }

  return a1;
}

uint64_t re2::Compiler::AllocInst(re2::Compiler *this, int a2)
{
  if ((*(this + 32) & 1) == 0)
  {
    v2 = *(this + 14);
    v3 = v2 + a2;
    if (v2 + a2 <= *(this + 11))
    {
      v4 = *(this + 15);
      if (v3 <= v4)
      {
        *(this + 14) = v3;
        return v2;
      }

      if (v4)
      {
        if (v3 <= v4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v4 = 8;
        *(this + 15) = 8;
        if (v3 <= 8)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v4 *= 2;
      }

      while (v3 > v4);
      *(this + 15) = v4;
LABEL_11:
      operator new[]();
    }
  }

  *(this + 32) = 1;
  return 0xFFFFFFFFLL;
}

uint64_t re2::Compiler::Trim(uint64_t this)
{
  if (*(this + 56) < *(this + 60))
  {
    operator new[]();
  }

  return this;
}

double re2::Compiler::BeginRange(re2::Compiler *this)
{
  v1 = this + 80;
  std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*(this + 10));
  result = 0.0;
  *(v1 - 1) = v1;
  *v1 = 0u;
  *(v1 + 2) = 0;
  return result;
}

unint64_t re2::Compiler::UncachedRuneByteSuffix(re2::Compiler *this, int a2, unsigned int a3, int a4, int a5)
{
  result = re2::Compiler::ByteRange(this, a2, a3, a4);
  v8 = *(this + 6);
  v9 = HIDWORD(result);
  if (a5)
  {
    if (v9)
    {
      do
      {
        while (1)
        {
          v10 = (v8 + 8 * (v9 >> 1));
          if ((v9 & 1) == 0)
          {
            break;
          }

          LODWORD(v9) = v10[1];
          v10[1] = a5;
          if (!v9)
          {
            return result;
          }
        }

        LODWORD(v9) = *v10 >> 3;
        *v10 = *v10 & 7 | (8 * a5);
      }

      while (v9);
    }
  }

  else
  {
    LODWORD(v11) = *(this + 25);
    if (v11)
    {
      if (v9)
      {
        v12 = *(this + 25);
        do
        {
          while (1)
          {
            v13 = v12;
            v14 = v12;
            v15 = (v8 + ((4 * v12) & 0x3FFFFFFF8));
            if (v14)
            {
              break;
            }

            v12 = *v15 >> 3;
            if (!v12)
            {
              goto LABEL_14;
            }
          }

          v12 = v15[1];
        }

        while (v12);
LABEL_14:
        v16 = (v8 + 8 * (v13 >> 1));
        if (v13)
        {
          v16[1] = HIDWORD(result);
        }

        else
        {
          *v16 = *v16 & 7 | (8 * HIDWORD(result));
        }
      }
    }

    else
    {
      v11 = HIDWORD(result);
    }

    *(this + 25) = v11;
  }

  return result;
}

_DWORD *re2::Compiler::AddRuneRange(_DWORD *this, int a2, int a3, unsigned int a4)
{
  if (this[9] == 2)
  {
    if (a2 <= 255 && a2 <= a3)
    {
      if (a3 >= 255)
      {
        v5 = -1;
      }

      else
      {
        v5 = a3;
      }

      v6 = this;
      v7 = re2::Compiler::RuneByteSuffix(this, a2, v5, a4, 0);

      return re2::Compiler::AddSuffix(v6, v7);
    }
  }

  else
  {

    return re2::Compiler::AddRuneRangeUTF8(this, a2, a3, a4);
  }

  return this;
}

re2::Compiler *re2::Compiler::AddRuneRangeLatin1(re2::Compiler *this, int a2, int a3, unsigned int a4)
{
  if (a2 <= 255 && a2 <= a3)
  {
    if (a3 >= 255)
    {
      v5 = -1;
    }

    else
    {
      v5 = a3;
    }

    v6 = this;
    v7 = re2::Compiler::RuneByteSuffix(this, a2, v5, a4, 0);

    return re2::Compiler::AddSuffix(v6, v7);
  }

  return this;
}

uint64_t re2::Compiler::Setup(uint64_t result, int a2, uint64_t a3, int a4)
{
  *(*(result + 24) + 24) = a2;
  if ((a2 & 0x20) != 0)
  {
    *(result + 36) = 2;
  }

  *(result + 64) = a3;
  if ((a3 - 584) >> 27)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = (a3 - 584) >> 3;
  }

  if (a3 < 0x249)
  {
    v4 = 0;
  }

  if (a3 >= 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 100000;
  }

  *(result + 44) = v5;
  *(result + 104) = a4;
  return result;
}

void re2::Compiler::Compile(re2::Compiler *this, re2::Regexp *a2)
{
  v5 = 0u;
  v6 = 0u;
  *__src = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  re2::Compiler::Compiler(v2);
}

void sub_231EF53B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re2::Compiler::~Compiler(va);
  _Unwind_Resume(a1);
}

uint64_t re2::IsAnchorStart(re2 *this, re2::Regexp **a2)
{
  v4 = 0;
  if (a2 <= 3)
  {
    v23[7] = v2;
    v23[8] = v3;
    v5 = *this;
    if (*this)
    {
      v6 = *v5;
      if (v6 == 18)
      {
        v20 = *(v5 + 1);
        v13 = this;
        v19 = mallocRegexp();
        *v19 = 2;
        *(v19 + 1) = v20;
        *(v19 + 2) = 1;
        *(v19 + 6) = 0u;
        *(v19 + 22) = 0u;
        *(v19 + 19) = 0;
      }

      else
      {
        if (v6 != 11)
        {
          if (v6 != 5 || !*(v5 + 3))
          {
            return 0;
          }

          v7 = a2;
          v8 = (v5 + 8);
          if (*(v5 + 3) != 1)
          {
            v8 = *(v5 + 1);
          }

          v23[0] = re2::Regexp::Incref(*v8);
          if (re2::IsAnchorStart(v23, (v7 + 1), v9))
          {
            v10 = *(v5 + 3);
            operator new[]();
          }

          v21 = v23[0];
LABEL_19:
          re2::Regexp::Decref(v21);
          return 0;
        }

        v11 = (v5 + 8);
        v12 = a2;
        v13 = this;
        if (*(v5 + 3) >= 2u)
        {
          v11 = *v11;
        }

        v23[0] = re2::Regexp::Incref(*v11);
        IsAnchorStart = re2::IsAnchorStart(v23, (v12 + 1), v14);
        v16 = v23[0];
        if (!IsAnchorStart)
        {
          v21 = v23[0];
          goto LABEL_19;
        }

        v17 = *(v5 + 1);
        v18 = *(v5 + 6);
        v19 = mallocRegexp();
        *v19 = 11;
        *(v19 + 1) = v17;
        *(v19 + 1) = 65537;
        *(v19 + 3) = 0;
        *(v19 + 4) = 0;
        *(v19 + 1) = v16;
        *(v19 + 2) = 0;
        *(v19 + 6) = v18;
      }

      *v13 = v19;
      re2::Regexp::Decref(v5);
      return 1;
    }
  }

  return v4;
}

uint64_t re2::IsAnchorEnd(re2 *this, re2::Regexp **a2)
{
  v4 = 0;
  if (a2 > 3)
  {
    return v4;
  }

  v23[7] = v2;
  v23[8] = v3;
  v5 = *this;
  if (!*this)
  {
    return v4;
  }

  v6 = *v5;
  if (v6 == 19)
  {
    v20 = *(v5 + 1);
    v13 = this;
    v19 = mallocRegexp();
    *v19 = 2;
    *(v19 + 1) = v20;
    *(v19 + 2) = 1;
    *(v19 + 6) = 0u;
    *(v19 + 22) = 0u;
    *(v19 + 19) = 0;
LABEL_16:
    *v13 = v19;
    re2::Regexp::Decref(v5);
    return 1;
  }

  if (v6 == 11)
  {
    v11 = (v5 + 8);
    v12 = a2;
    v13 = this;
    if (*(v5 + 3) >= 2u)
    {
      v11 = *v11;
    }

    v23[0] = re2::Regexp::Incref(*v11);
    IsAnchorEnd = re2::IsAnchorEnd(v23, (v12 + 1), v14);
    v16 = v23[0];
    if (!IsAnchorEnd)
    {
      v21 = v23[0];
LABEL_19:
      re2::Regexp::Decref(v21);
      return 0;
    }

    v17 = *(v5 + 1);
    v18 = *(v5 + 6);
    v19 = mallocRegexp();
    *v19 = 11;
    *(v19 + 1) = v17;
    *(v19 + 1) = 65537;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    *(v19 + 1) = v16;
    *(v19 + 2) = 0;
    *(v19 + 6) = v18;
    goto LABEL_16;
  }

  if (v6 != 5)
  {
    return 0;
  }

  v4 = *(v5 + 3);
  if (*(v5 + 3))
  {
    v7 = a2;
    v8 = v5 + 8;
    if (v4 != 1)
    {
      v8 = *(v5 + 1);
    }

    v23[0] = re2::Regexp::Incref(*&v8[8 * v4 - 8]);
    if (re2::IsAnchorEnd(v23, (v7 + 1), v9))
    {
      v10 = *(v5 + 3);
      operator new[]();
    }

    v21 = v23[0];
    goto LABEL_19;
  }

  return v4;
}

uint64_t re2::Regexp::Walker<re2::Frag>::WalkInternal(void *a1, uint64_t a2)
{
  re2::Regexp::Walker<re2::Frag>::Reset(a1);
  if (a2)
  {
    v4 = a1[1];
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 8);
    v8 = 85 * ((v6 - v7) >> 3) - 1;
    if (v6 == v7)
    {
      v8 = 0;
    }

    v9 = *(v4 + 40) + *(v4 + 32);
    if (v8 == v9)
    {
      std::deque<re2::WalkState<re2::Frag>>::__add_back_capacity(a1[1]);
      v7 = *(v4 + 8);
      v9 = *(v4 + 40) + *(v4 + 32);
    }

    v10 = *(v7 + 8 * (v9 / 0x55)) - 4080 * (v9 / 0x55) + 48 * v9;
    *v10 = a2;
    *(v10 + 8) = -1;
    *(v10 + 40) = 0;
    *(v10 + 12) = 0;
    *(v10 + 28) = 0;
    *(v10 + 20) = 0;
    ++*(v4 + 40);
    while (1)
    {
      while (1)
      {
        v12 = a1[1];
        v13 = v12[5] + v12[4] - 1;
        v14 = *(v12[1] + 8 * (v13 / 0x55)) - 4080 * (v13 / 0x55) + 48 * v13;
        v15 = *v14;
        if (*(v14 + 8) == -1)
        {
          v27 = *(a1 + 5);
          *(a1 + 5) = v27 - 1;
          if (v27 <= 0)
          {
            *(a1 + 16) = 1;
            v28 = (*(*a1 + 40))(a1, v15, *(v14 + 12));
LABEL_29:
            v29 = v28;
            goto LABEL_30;
          }

          LOBYTE(v40.__locale_) = 0;
          v28 = (*(*a1 + 16))(a1, v15, *(v14 + 12), &v40);
          *(v14 + 20) = v28;
          if (v40.__locale_)
          {
            goto LABEL_29;
          }

          *(v14 + 8) = 0;
          *(v14 + 40) = 0;
          if (*(v15 + 6))
          {
            if (*(v15 + 6) != 1)
            {
              operator new[]();
            }

            *(v14 + 40) = v14 + 28;
          }
        }

        v16 = *(v15 + 6);
        if (*(v15 + 6))
        {
          break;
        }

        v18 = *(v14 + 8);
LABEL_25:
        v29 = (*(*a1 + 24))(a1, v15, *(v14 + 12), *(v14 + 20), *(v14 + 40), v18);
        if (*(v15 + 6) >= 2u)
        {
          v30 = *(v14 + 40);
          if (v30)
          {
            MEMORY[0x23837FDC0](v30, 0x1000C8000313F17);
          }
        }

LABEL_30:
        v31 = a1[1];
        v32 = v31[2];
        v34 = v31[4];
        v33 = v31[5];
        if (v32 == v31[1])
        {
          v35 = 0;
        }

        else
        {
          v35 = 85 * ((v32 - v31[1]) >> 3) - 1;
        }

        v36 = v33 - 1;
        v31[5] = v33 - 1;
        if ((v35 - (v33 + v34) + 1) >= 0xAA)
        {
          operator delete(*(v32 - 8));
          v31[2] -= 8;
          v31 = a1[1];
          v36 = v31[5];
        }

        if (!v36)
        {
          return v29;
        }

        v37 = *(v31[1] + 8 * ((v36 + v31[4] - 1) / 0x55uLL)) - 4080 * ((v36 + v31[4] - 1) / 0x55uLL) + 48 * (v36 + v31[4] - 1);
        v38 = *(v37 + 40);
        if (v38)
        {
          v11 = (v38 + 8 * *(v37 + 8));
        }

        else
        {
          v11 = (v37 + 28);
        }

        *v11 = v29;
        ++*(v37 + 8);
      }

      v17 = (v15 + 8);
      if (v16 != 1)
      {
        v17 = *v17;
      }

      v18 = *(v14 + 8);
      if (v18 >= v16)
      {
        goto LABEL_25;
      }

      v19 = a1[1];
      v20 = *(v19 + 8);
      v21 = *(v19 + 8);
      v22 = 85 * ((*(v19 + 16) - v21) >> 3) - 1;
      v23 = v17[v18];
      v24 = *(v14 + 20);
      if (*(v19 + 16) == v21)
      {
        v22 = 0;
      }

      v25 = *(v19 + 40) + *(v19 + 32);
      if (v22 == v25)
      {
        std::deque<re2::WalkState<re2::Frag>>::__add_back_capacity(a1[1]);
        v21 = *(v19 + 8);
        v25 = *(v19 + 40) + *(v19 + 32);
      }

      v26 = *(v21 + 8 * (v25 / 0x55)) - 4080 * (v25 / 0x55) + 48 * v25;
      *v26 = v23;
      *(v26 + 8) = -1;
      *(v26 + 12) = v24;
      *(v26 + 28) = 0;
      *(v26 + 20) = 0;
      *(v26 + 40) = 0;
      ++*(v19 + 40);
    }
  }

  LOBYTE(v40.__locale_) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Walk NULL", 9);
  LogMessage::~LogMessage(&v40);
  return 0;
}

void sub_231EF5C00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t re2::Compiler::Finish(re2::Compiler *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v2 = *(this + 3);
    if (!*(v2 + 4))
    {
      *(this + 14) = 1;
    }

    v3 = *(this + 14);
    if (v3 < *(this + 15))
    {
      operator new[]();
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    *(v2 + 32) = *(this + 6);
    *(v2 + 12) = v3;
    *(this + 6) = 0;
    while (1)
    {
      if ((v4 & 0x1F) == 0)
      {
        v5 = *(v2 + 272 + 4 * (v4 >> 5));
      }

      *(v2 + 304 + v4) = v6;
      v6 += v5 & 1;
      v5 >>= 1;
      if (++v4 == 256)
      {
        *(v2 + 20) = *(v2 + 559) + 1;
        operator new[]();
      }
    }
  }

  return 0;
}

void *std::deque<re2::WalkState<re2::Frag>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<re2::WalkState<re2::Frag> *,std::allocator<re2::WalkState<re2::Frag> *>>::emplace_back<re2::WalkState<re2::Frag> *&>(a1, &v10);
}

void sub_231EF63AC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<re2::WalkState<re2::Frag> *,std::allocator<re2::WalkState<re2::Frag> *>>::emplace_back<re2::WalkState<re2::Frag> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_231EF6754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re2::Compiler::~Compiler(va);
  _Unwind_Resume(a1);
}

void re2::FilteredRE2::FilteredRE2(re2::FilteredRE2 *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 24) = 0;
  *(this + 2) = 0;
  operator new();
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 24) = 0;
  *(this + 2) = 0;
  operator new();
}

void sub_231EF67EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_231EF6878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void re2::FilteredRE2::~FilteredRE2(re2::FilteredRE2 *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        re2::RE2::~RE2(v2[v5]);
        MEMORY[0x23837FDE0]();
        v2 = *this;
        v3 = *(this + 1);
      }

      ++v5;
    }

    while (v5 < v3 - v2);
  }

  if (*(this + 4))
  {
    re2::PrefilterTree::~PrefilterTree(*(this + 4));
    MEMORY[0x23837FDE0]();
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void sub_231EF6B68(_Unwind_Exception *a1)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  MEMORY[0x23837FDE0](v1, v2);
  _Unwind_Resume(a1);
}

unint64_t re2::FilteredRE2::SlowFirstMatch(re2::FilteredRE2 *this, const re2::StringPiece *a2)
{
  v2 = *this;
  if (*(this + 1) == *this)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  while ((re2::RE2::DoMatch(*(v2 + 8 * v5), a2, 0, 0, 0, 0) & 1) == 0)
  {
    ++v5;
    v2 = *this;
    if (v5 >= (*(this + 1) - *this) >> 3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

void sub_231EF7B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231EF9E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SGMIMetricsMailIntelligenceForMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
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
      if ((v12 >> 3) > 11)
      {
        if (v13 > 14)
        {
          switch(v13)
          {
            case 0xF:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 80) |= 8u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v62 & 0x7F) << v43;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_121;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v45;
              }

LABEL_121:
              v58 = 64;
              goto LABEL_126;
            case 0x14:
              v23 = objc_alloc_init(SGMIMetricsInferenceAndGroundTruth);
              v24 = 8;
              goto LABEL_97;
            case 0x15:
              v23 = objc_alloc_init(SGMIMetricsInferenceAndGroundTruth);
              v24 = 16;
LABEL_97:
              objc_storeStrong((a1 + v24), v23);
              v62 = 0;
              v63 = 0;
              if (!PBReaderPlaceMark() || !SGMIMetricsInferenceAndGroundTruthReadFrom(v23, a2))
              {
LABEL_132:

                return 0;
              }

              goto LABEL_99;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xC:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 80) |= 2u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v62 & 0x7F) << v31;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_113;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v33;
              }

LABEL_113:
              v58 = 56;
              goto LABEL_126;
            case 0xD:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              *(a1 + 80) |= 4u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v62 & 0x7F) << v50;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v11 = v51++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_125;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v52;
              }

LABEL_125:
              v58 = 60;
              goto LABEL_126;
            case 0xE:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 80) |= 0x10u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v62 & 0x7F) << v16;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_105;
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

LABEL_105:
              v58 = 68;
              goto LABEL_126;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 80) |= 0x40u;
            while (1)
            {
              LOBYTE(v62) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v62 & 0x7F) << v37;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_117;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v39;
            }

LABEL_117:
            v58 = 76;
            goto LABEL_126;
          case 0xA:
            *(a1 + 80) |= 0x20u;
            LODWORD(v62) = 0;
            v56 = [a2 position] + 4;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 4, v57 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 72) = v62;
            goto LABEL_127;
          case 0xB:
            v23 = objc_alloc_init(SGMIMetricsMailAttachmentHistogram);
            [a1 addMailAttachmentHistogram:v23];
            v62 = 0;
            v63 = 0;
            if (!PBReaderPlaceMark() || !SGMIMetricsMailAttachmentHistogramReadFrom(v23, a2))
            {
              goto LABEL_132;
            }

LABEL_99:
            PBReaderRecallMark();

            goto LABEL_127;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v62) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v62 & 0x7F) << v25;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_109;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v27;
            }

LABEL_109:
            v58 = 24;
LABEL_126:
            *(a1 + v58) = v22;
            goto LABEL_127;
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_83;
          case 3:
            v14 = PBReaderReadString();
            v15 = 32;
LABEL_83:
            v49 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_127;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_127:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id appendFeatureSuffix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@__%@", v3, v4];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

void __lastnames_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v0 pathForResource:@"lastnames" ofType:@"trie" inDirectory:@"/"];

  if (!v7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_PASCFBurstTrie *lastnames(void)_block_invoke"];
    [v3 handleFailureInFunction:v4 file:@"SGNameMappingTransformer.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v1 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v7];
  v2 = lastnames_trie;
  lastnames_trie = v1;

  if (!lastnames_trie)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_PASCFBurstTrie *lastnames(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"SGNameMappingTransformer.m" lineNumber:55 description:{@"Could not load lastnames trie: %@", v7}];
  }
}

void __firstnames_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v0 pathForResource:@"firstnames" ofType:@"trie" inDirectory:@"/"];

  if (!v7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_PASCFBurstTrie *firstnames(void)_block_invoke"];
    [v3 handleFailureInFunction:v4 file:@"SGNameMappingTransformer.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v1 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v7];
  v2 = firstnames_trie;
  firstnames_trie = v1;

  if (!firstnames_trie)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_PASCFBurstTrie *firstnames(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"SGNameMappingTransformer.m" lineNumber:43 description:{@"Could not load firstnames trie: %@", v7}];
  }
}

double re2::RE2::Set::Set(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 1;
  *(a1 + 4) = 0;
  *(a1 + 6) = 1;
  *(a1 + 8) = 0x800000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 24) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

{
  *a1 = 1;
  *(a1 + 4) = 0;
  *(a1 + 6) = 1;
  *(a1 + 8) = 0x800000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 24) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

void re2::RE2::Set::~Set(re2::RE2::Set *this)
{
  v3 = (this + 32);
  v2 = *(this + 4);
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      re2::Regexp::Decref(v2[v4++]);
      v2 = *(this + 4);
    }

    while (v4 < (*(this + 5) - v2) >> 3);
  }

  if (*(this + 7))
  {
    re2::Prog::~Prog(*(this + 7));
    MEMORY[0x23837FDE0]();
    v2 = *(this + 4);
  }

  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

{
  v3 = (this + 32);
  v2 = *(this + 4);
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      re2::Regexp::Decref(v2[v4++]);
      v2 = *(this + 4);
    }

    while (v4 < (*(this + 5) - v2) >> 3);
  }

  if (*(this + 7))
  {
    re2::Prog::~Prog(*(this + 7));
    MEMORY[0x23837FDE0]();
    v2 = *(this + 4);
  }

  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void re2::RegexpStatus::~RegexpStatus(re2::RegexpStatus *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x23837FDE0](v1, 0x1012C40EC159624);
  }
}

uint64_t re2::RE2::Set::Compile(re2::RE2::Set *this)
{
  if (*(this + 64) == 1)
  {
    LOBYTE(v7.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "RE2::Set::Compile multiple times", 32);
LABEL_3:
    LogMessage::~LogMessage(&v7);
    return 0;
  }

  *(this + 64) = 1;
  v3 = re2::RE2::Options::ParseFlags(this);
  v4 = re2::Regexp::ConcatOrAlternate(6, *(this + 4), (*(this + 5) - *(this + 4)) >> 3, v3, 1);
  *(this + 5) = *(this + 4);
  v5 = re2::Regexp::Simplify(v4);
  re2::Regexp::Decref(v4);
  if (v5)
  {
    v6 = *(this + 6);
    re2::Compiler::CompileSet();
  }

  if (*(this + 6) == 1)
  {
    LOBYTE(v7.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Error simplifying during Compile.", 33);
    goto LABEL_3;
  }

  return 0;
}

_DWORD *re2::Prog::Inst::InitAlt(_DWORD *this, int a2, int a3)
{
  *this = 8 * a2;
  this[1] = a3;
  return this;
}

uint64_t re2::Prog::Inst::InitByteRange(uint64_t this, char a2, char a3, char a4, int a5)
{
  *this = (8 * a5) | 2;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 6) = a4;
  return this;
}

int *re2::Prog::Inst::InitCapture(int *this, int a2, int a3)
{
  *this = (8 * a3) | 3;
  this[1] = a2;
  return this;
}

int *re2::Prog::Inst::InitEmptyWidth(int *result, int a2, int a3)
{
  *result = (8 * a3) | 4;
  result[1] = a2;
  return result;
}

unsigned int *re2::Prog::Inst::InitMatch(unsigned int *this, unsigned int a2)
{
  *this = *this & 0xFFFFFFF8 | 5;
  this[1] = a2;
  return this;
}

std::string *re2::Prog::Inst::Dump@<X0>(re2::Prog::Inst *this@<X0>, std::string *a2@<X8>)
{
  v2 = *this;
  v3 = *this & 7;
  if (v3 > 3)
  {
    if ((*this & 7u) > 5)
    {
      if (v3 == 6)
      {
        return re2::StringPrintf("nop -> %d", a2, v2 >> 3);
      }

      else
      {

        return re2::StringPrintf("fail", a2);
      }
    }

    else if (v3 == 4)
    {
      return re2::StringPrintf("emptywidth %#x -> %d", a2, *(this + 1), v2 >> 3);
    }

    else
    {
      return re2::StringPrintf("match! %d", a2, *(this + 1));
    }
  }

  else if ((*this & 7u) > 1)
  {
    if (v3 == 2)
    {
      v6 = "/i";
      if (!*(this + 6))
      {
        v6 = "";
      }

      return re2::StringPrintf("byte%s [%02x-%02x] -> %d", a2, v6, *(this + 4), *(this + 5), v2 >> 3);
    }

    else
    {
      return re2::StringPrintf("capture %d -> %d", a2, *(this + 1), v2 >> 3);
    }
  }

  else
  {
    v4 = v2 >> 3;
    if (v3)
    {
      return re2::StringPrintf("altmatch -> %d | %d", a2, v4, *(this + 1));
    }

    else
    {
      return re2::StringPrintf("alt -> %d | %d", a2, v4, *(this + 1));
    }
  }
}

re2::Prog *re2::Prog::Prog(re2::Prog *this)
{
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (pthread_rwlock_init((this + 40), 0))
  {
    abort();
  }

  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  return this;
}

{
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (pthread_rwlock_init((this + 40), 0))
  {
    abort();
  }

  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  return this;
}

void re2::Prog::~Prog(re2::Prog *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    if (*(this + 30))
    {
      v2(*(this + 30));
    }

    if (*(this + 31))
    {
      (*(this + 33))(*(this + 31));
    }
  }

  v3 = *(this + 71);
  if (v3)
  {
    MEMORY[0x23837FDC0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x23837FDC0](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 70);
  if (v5)
  {
    MEMORY[0x23837FDC0](v5, 0x1000C8077774924);
  }

  if (pthread_rwlock_destroy((this + 40)))
  {
    abort();
  }
}

void re2::Prog::Dump(re2::Prog *this)
{
  *__s = 0;
  v2 = 0;
  v3 = 0;
  *(this + 3);
  operator new[]();
}

void sub_231EFEE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  re2::SparseSet::~SparseSet(&a15);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void re2::ProgToString(std::string *this, re2::Prog *a2, re2::SparseSet *a3)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  if (*a3)
  {
    v6 = *(a3 + 2);
    do
    {
      v8 = *v6;
      v9 = (*(a2 + 4) + 8 * v8);
      re2::Prog::Inst::Dump(v9, &__p);
      re2::StringAppendF(this, "%d. %s\n", v10, v11, v12, v13, v14, v15, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = *v9;
      if (v7 >= 8)
      {
        v16 = v7 >> 3;
        if (*(a3 + 1) > *v9 >> 3)
        {
          v17 = *(a3 + 1);
          v18 = *(a3 + 2);
          v19 = *(v17 + 4 * v16);
          v20 = *a3;
          if (v19 >= *a3 || *(v18 + 4 * v19) != v16)
          {
            *(v17 + 4 * v16) = v20;
            *(v18 + 4 * v20) = v16;
            ++*a3;
            LODWORD(v7) = *v9;
          }
        }
      }

      if ((v7 & 6) == 0)
      {
        v21 = *(v9 + 1);
        if (v21)
        {
          if (*(a3 + 1) > v21)
          {
            v22 = *(a3 + 1);
            v23 = *(a3 + 2);
            v24 = *(v22 + 4 * v21);
            v25 = *a3;
            if (v24 >= *a3 || *(v23 + 4 * v24) != v21)
            {
              *(v22 + 4 * v21) = v25;
              *(v23 + 4 * v25) = v21;
              ++*a3;
            }
          }
        }
      }

      ++v6;
    }

    while (v6 != (*(a3 + 2) + 4 * *a3));
  }
}

void sub_231EFF030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((*(v17 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v17);
  _Unwind_Resume(exception_object);
}

uint64_t re2::Prog::EmptyFlags(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    v14 = &v2[*(a1 + 8)];
    if (v14 == a2)
    {
      v4 = 15;
      return ~(2 * v4) & 0x20 | v4;
    }

    v4 = 5;
    if (v14 <= a2)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v3 = *(a2 - 1);
  v4 = v3 == 10;
  v5 = &v2[*(a1 + 8)];
  if (v5 == a2)
  {
    if ((v3 & 0xFFFFFFDF) - 65 < 0x1A || (v3 - 48) < 0xA || v3 == 95)
    {
      v17 = 26;
    }

    else
    {
      v17 = 10;
    }

    v4 |= v17;
    return ~(2 * v4) & 0x20 | v4;
  }

  if (v5 > a2)
  {
LABEL_4:
    if (*a2 == 10)
    {
      v4 |= 2u;
    }
  }

LABEL_6:
  if (v2 == a2)
  {
    v18 = *a2;
    if ((v18 & 0xFFFFFFDF) - 65 < 0x1A || (v18 - 48) < 0xA || v18 == 95)
    {
      v4 |= 0x10u;
    }
  }

  else
  {
    v6 = *(a2 - 1);
    v9 = (v6 - 48) < 0xA || (v6 & 0xFFFFFFDF) - 65 < 0x1A || v6 == 95;
    v10 = *a2;
    v13 = (v10 - 48) < 0xA || (v10 & 0xFFFFFFDF) - 65 < 0x1A || v10 == 95;
    if (v9 != v13)
    {
      v4 |= 0x10u;
    }
  }

  return ~(2 * v4) & 0x20 | v4;
}

uint64_t re2::Prog::MarkByteRange(uint64_t this, int a2, unsigned int a3)
{
  if ((a2 - 1) > 0xFE)
  {
    if (a3 > 0xFF)
    {
      return this;
    }

LABEL_5:
    *(this + 4 * (a3 >> 5) + 272) |= 1 << a3;
    return this;
  }

  *(this + 4 * ((a2 - 1) >> 5) + 272) |= 1 << (a2 - 1);
  if (a3 <= 0xFF)
  {
    goto LABEL_5;
  }

  return this;
}

void re2::Prog::ComputeByteMap(re2::Prog *this)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  while (1)
  {
    if ((v1 & 0x1F) == 0)
    {
      v2 = *(this + (v1 >> 5) + 68);
    }

    *(this + v1 + 304) = v3;
    v3 += v2 & 1;
    v2 >>= 1;
    if (++v1 == 256)
    {
      *(this + 5) = *(this + 559) + 1;
      operator new[]();
    }
  }
}

uint64_t __Block_byref_object_copy__7526(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231F00504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 248), 8);
  _Unwind_Resume(a1);
}

BOOL __enumerateMyNameInstances_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v7 = 5;
  while (1)
  {
    v8 = a2[2];
    if (!v8)
    {
      goto LABEL_9;
    }

    if (*a2 == 0x7FFFFFFFFFFFFFFFLL || a2[1] == 0)
    {
      goto LABEL_9;
    }

    if (!strcmp(a2[2], "name"))
    {
      break;
    }

    v6 |= strcmp(v8, "strong_phrase") == 0;
LABEL_9:
    a2 += 3;
    if (!--v7)
    {
      v10 = 1;
      goto LABEL_12;
    }
  }

  v15 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) substringWithRange:{*a2, a2[1]}];
  (*(v12 + 16))(v12, v13, *a2, a2[1], v5, v6 & 1, &v15);

  objc_autoreleasePoolPop(v11);
  v10 = (v15 & 1) == 0;
LABEL_12:

  return v10;
}

double re2::Regexp::Regexp(uint64_t a1, char a2, __int16 a3)
{
  *a1 = a2;
  *(a1 + 1) = 0;
  *(a1 + 2) = a3;
  *(a1 + 4) = 1;
  result = 0.0;
  *(a1 + 6) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 38) = 0;
  return result;
}

{
  *a1 = a2;
  *(a1 + 1) = 0;
  *(a1 + 2) = a3;
  *(a1 + 4) = 1;
  result = 0.0;
  *(a1 + 6) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 38) = 0;
  return result;
}

void re2::Regexp::~Regexp(re2::Regexp *this)
{
  if (*(this + 3))
  {
    LOBYTE(v7.__locale_) = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Regexp not destroyed.", 21);
    LogMessage::~LogMessage(&v7);
  }

  v2 = *this;
  switch(v2)
  {
    case 4:
      v6 = *(this + 4);
      if (v6)
      {
        MEMORY[0x23837FDC0](v6, 0x1000C8052888210);
      }

      break;
    case 20:
      v5 = *(this + 3);
      if (v5)
      {
        MEMORY[0x23837FDC0](v5, 0x1000C8077774924);
      }

      v3 = *(this + 4);
      if (v3)
      {
        std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::destroy(*(v3 + 24));
        v4 = 0x1020C4098A2B122;
LABEL_14:
        MEMORY[0x23837FDE0](v3, v4);
      }

      break;
    case 11:
      v3 = *(this + 4);
      if (v3)
      {
        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        v4 = 0x1012C40EC159624;
        goto LABEL_14;
      }

      break;
  }
}

uint64_t re2::CharClass::Delete(uint64_t this)
{
  if (this)
  {
    JUMPOUT(0x23837FDC0);
  }

  return this;
}

BOOL re2::Regexp::QuickDestroy(re2::Regexp *this)
{
  v1 = *(this + 3);
  if (this && !*(this + 3))
  {
    re2::Regexp::~Regexp(this);
    freeRegexp(v2);
  }

  return v1 == 0;
}

uint64_t re2::Regexp::Ref(re2::Regexp *this)
{
  result = *(this + 2);
  if (result == 0xFFFF)
  {
    pthread_mutex_lock(&re2::ref_mutex);
    if (re2::ref_map)
    {
      v3 = *(re2::ref_map + 8);
      if (!v3)
      {
LABEL_9:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v4 = v3;
          v5 = v3[4];
          if (v5 <= this)
          {
            break;
          }

          v3 = *v4;
          if (!*v4)
          {
            goto LABEL_9;
          }
        }

        if (v5 >= this)
        {
          break;
        }

        v3 = v4[1];
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      v6 = *(v4 + 10);
    }

    else
    {
      v6 = 0;
    }

    pthread_mutex_unlock(&re2::ref_mutex);
    return v6;
  }

  return result;
}

re2::Regexp *re2::Regexp::Incref(re2::Regexp *this)
{
  v2 = *(this + 2);
  if (v2 < 0xFFFE)
  {
    *(this + 2) = v2 + 1;
  }

  else
  {
    pthread_mutex_lock(&re2::ref_mutex);
    if (!re2::ref_map)
    {
      operator new();
    }

    v3 = *(re2::ref_map + 8);
    if (*(this + 2) == -1)
    {
      if (!v3)
      {
LABEL_21:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v6 = v3;
          v7 = v3[4];
          if (v7 <= this)
          {
            break;
          }

          v3 = *v6;
          if (!*v6)
          {
            goto LABEL_21;
          }
        }

        if (v7 >= this)
        {
          break;
        }

        v3 = v6[1];
        if (!v3)
        {
          goto LABEL_21;
        }
      }

      ++*(v6 + 10);
    }

    else
    {
      if (!v3)
      {
LABEL_13:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v4 = v3;
          v5 = v3[4];
          if (v5 <= this)
          {
            break;
          }

          v3 = *v4;
          if (!*v4)
          {
            goto LABEL_13;
          }
        }

        if (v5 >= this)
        {
          break;
        }

        v3 = v4[1];
        if (!v3)
        {
          goto LABEL_13;
        }
      }

      *(v4 + 10) = 0xFFFF;
      *(this + 2) = -1;
    }

    pthread_mutex_unlock(&re2::ref_mutex);
  }

  return this;
}

void re2::Regexp::Decref(re2::Regexp *this)
{
  v2 = *(this + 2);
  if (v2 == 0xFFFF)
  {
    pthread_mutex_lock(&re2::ref_mutex);
    v4 = *(re2::ref_map + 8);
    if (!v4)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v5 = v4;
        v6 = v4[4];
        if (v6 <= this)
        {
          break;
        }

        v4 = *v5;
        if (!*v5)
        {
          goto LABEL_10;
        }
      }

      if (v6 >= this)
      {
        break;
      }

      v4 = v5[1];
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    v7 = *(v5 + 10);
    v8 = v7 - 1;
    if (v7 >= 0x10000)
    {
      v18 = *(re2::ref_map + 8);
      if (!v18)
      {
LABEL_32:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v20 <= this)
          {
            break;
          }

          v18 = *v19;
          if (!*v19)
          {
            goto LABEL_32;
          }
        }

        if (v20 >= this)
        {
          break;
        }

        v18 = v19[1];
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      *(v19 + 10) = v8;
    }

    else
    {
      *(this + 2) = v8;
      v9 = re2::ref_map;
      v10 = *(re2::ref_map + 8);
      if (v10)
      {
        v11 = (re2::ref_map + 8);
        v12 = *(re2::ref_map + 8);
        do
        {
          v13 = *(v12 + 32);
          v14 = v13 >= this;
          v15 = v13 < this;
          if (v14)
          {
            v11 = v12;
          }

          v12 = *(v12 + 8 * v15);
        }

        while (v12);
        if (v11 != (re2::ref_map + 8) && v11[4] <= this)
        {
          v16 = v11[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            v21 = v11;
            do
            {
              v17 = v21[2];
              v22 = *v17 == v21;
              v21 = v17;
            }

            while (!v22);
          }

          if (*re2::ref_map == v11)
          {
            *re2::ref_map = v17;
          }

          --*(v9 + 16);
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v11);
          operator delete(v11);
        }
      }
    }

    pthread_mutex_unlock(&re2::ref_mutex);
  }

  else
  {
    v3 = v2 - 1;
    *(this + 2) = v3;
    if (!v3)
    {

      re2::Regexp::Destroy(this);
    }
  }
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v9[*v9 != a2] = v3;
    v3[2] = v9;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_64:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_64;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_26:
    v7 = *(v12[2] + 8 * (*v12[2] == v12));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      *(v22 + 16) = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_68;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_58:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_26;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_68:
    v26 = v7;
    goto LABEL_69;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_69:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void re2::Regexp::Destroy(re2::Regexp *this)
{
  v1 = this;
  v2 = *(this + 3);
  if (this && !*(this + 3))
  {
    re2::Regexp::~Regexp(this);
    freeRegexp(v3);
    return;
  }

  if (*(this + 3))
  {
    *(this + 2) = 0;
    while (1)
    {
      if (!v1)
      {
        return;
      }

      v5 = *(v1 + 2);
      if (*(v1 + 2))
      {
        LOBYTE(v13.__locale_) = 0;
        std::ostringstream::basic_ostringstream[abi:ne200100](v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad reference count ", 20);
        MEMORY[0x23837FD30](v14, *(v1 + 2));
        LogMessage::~LogMessage(&v13);
      }

      if (*(v1 + 3))
      {
        break;
      }

LABEL_7:
      re2::Regexp::~Regexp(v1);
      freeRegexp(v4);
      v1 = v5;
    }

    v6 = (v1 + 8);
    if (*(v1 + 3) != 1)
    {
      v6 = *v6;
    }

    v7 = 0;
    while (1)
    {
      v9 = v6[v7];
      if (v9)
      {
        v10 = *(v9 + 4);
        if (v10 == 0xFFFF)
        {
          re2::Regexp::Decref(v6[v7]);
          if (!*(v9 + 4))
          {
LABEL_22:
            if (*(v9 + 6))
            {
              *(v9 + 16) = v5;
              v5 = v9;
            }

            else
            {
              re2::Regexp::~Regexp(v9);
              freeRegexp(v12);
            }
          }
        }

        else
        {
          v11 = v10 - 1;
          *(v9 + 4) = v11;
          if (!v11)
          {
            goto LABEL_22;
          }
        }
      }

      ++v7;
      v8 = *(v1 + 3);
      if (v7 >= v8)
      {
        if (v8 >= 2)
        {
          MEMORY[0x23837FDC0](v6, 0x20C8093837F09);
        }

        *(v1 + 3) = 0;
        goto LABEL_7;
      }
    }
  }
}

uint64_t re2::Regexp::AddRuneToString(uint64_t this, int a2)
{
  v2 = *(this + 24);
  if (!v2.i32[0])
  {
    operator new[]();
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v2.i32[0] >= 8 && v3.i32[0] <= 1u)
  {
    v5 = *(this + 32);
    operator new[]();
  }

  v6 = *(this + 32);
  v7 = *(this + 24);
  *(this + 24) = v7 + 1;
  *(v6 + 4 * v7) = a2;
  return this;
}

double re2::Regexp::HaveMatch(int a1, __int16 a2)
{
  v4 = mallocRegexp();
  *v4 = 21;
  *(v4 + 1) = a2;
  *(v4 + 2) = 1;
  result = 0.0;
  *(v4 + 22) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 19) = 0;
  *(v4 + 6) = a1;
  return result;
}

_WORD *re2::Regexp::Plus(_WORD *a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if (*a1 != 8 || a1[1] != a2)
  {
    v4 = mallocRegexp();
    *v4 = 8;
    v4[1] = v2;
    *(v4 + 1) = 65537;
    *(v4 + 1) = v3;
    *(v4 + 2) = 0;
    v3 = v4;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
  }

  return v3;
}

_WORD *re2::Regexp::Star(_WORD *a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if (*a1 != 7 || a1[1] != a2)
  {
    v4 = mallocRegexp();
    *v4 = 7;
    v4[1] = v2;
    *(v4 + 1) = 65537;
    *(v4 + 1) = v3;
    *(v4 + 2) = 0;
    v3 = v4;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
  }

  return v3;
}

_WORD *re2::Regexp::Quest(_WORD *a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if (*a1 != 9 || a1[1] != a2)
  {
    v4 = mallocRegexp();
    *v4 = 9;
    v4[1] = v2;
    *(v4 + 1) = 65537;
    *(v4 + 1) = v3;
    *(v4 + 2) = 0;
    v3 = v4;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
  }

  return v3;
}

char *re2::Regexp::ConcatOrAlternate(int a1, _OWORD *a2, uint64_t a3, __int16 a4, int a5)
{
  if (a3 == 1)
  {
    return *a2;
  }

  v9 = a1;
  if (a1 == 6 && a5)
  {
    operator new[]();
  }

  if (a3 >= 0x10000)
  {
    v10 = mallocRegexp();
    *v10 = v9;
    v10[1] = 0;
    *(v10 + 1) = a4;
    *(v10 + 2) = 1;
    *(v10 + 6) = 0u;
    *(v10 + 22) = 0u;
    *(v10 + 19) = 0;
    re2::Regexp::AllocSub(v10, (a3 + 65534) / 0xFFFFuLL);
    if (*(v10 + 3) >= 2u)
    {
      v11 = *(v10 + 1);
    }

    v12 = mallocRegexp();
    *v12 = v9;
    v12[1] = 0;
    *(v12 + 1) = a4;
    *(v12 + 2) = 1;
    *(v12 + 6) = 0u;
    *(v12 + 22) = 0u;
    *(v12 + 19) = 0;
    operator new[]();
  }

  v6 = mallocRegexp();
  *v6 = v9;
  v6[1] = 0;
  *(v6 + 1) = a4;
  *(v6 + 2) = 1;
  *(v6 + 6) = 0u;
  *(v6 + 22) = 0u;
  *(v6 + 19) = 0;
  re2::Regexp::AllocSub(v6, a3);
  v13 = v6 + 8;
  if (*(v6 + 3) >= 2u)
  {
    v13 = *v13;
  }

  if (a3 >= 1)
  {
    v14 = 0;
    if (a3 < 4)
    {
      goto LABEL_18;
    }

    if ((v13 - a2) <= 0x1F)
    {
      goto LABEL_18;
    }

    v14 = a3 & 0x7FFFFFFC;
    v15 = v13 + 2;
    v16 = a2 + 1;
    v17 = v14;
    do
    {
      v18 = *v16;
      *(v15 - 1) = *(v16 - 1);
      *v15 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != a3)
    {
LABEL_18:
      v19 = a3 - v14;
      v20 = v14;
      v21 = &v13[v20];
      v22 = (a2 + v20 * 8);
      do
      {
        v23 = *v22++;
        *v21++ = v23;
        --v19;
      }

      while (v19);
    }
  }

  return v6;
}

uint64_t re2::Regexp::AllocSub(uint64_t this, uint64_t a2)
{
  if (a2 >= 0x10000)
  {
    LogMessage::LogMessage(&v3, "/Library/Caches/com.apple.xbs/Sources/Suggestions/re2/re2/re2_regexp.h", 496);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Cannot AllocSub ", 16);
    MEMORY[0x23837FD10](v4, a2);
    LogMessage::Flush(&v3);
    abort();
  }

  if (a2 >= 2)
  {
    operator new[]();
  }

  *(this + 6) = a2;
  return this;
}

void LogMessage::LogMessage(LogMessage *this, const char *a2, uint64_t a3)
{
  *this = 0;
  v5 = (this + 8);
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 8);
  v6 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ":", 1);
  v7 = MEMORY[0x23837FD10](v5, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
}

void sub_231F05D4C(_Unwind_Exception *a1)
{
  std::ostringstream::~ostringstream(v2);
  MEMORY[0x23837FDA0](v1 + 120);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

_WORD *re2::Regexp::Capture(uint64_t a1, __int16 a2, int a3)
{
  result = mallocRegexp();
  *result = 11;
  result[1] = a2;
  *(result + 1) = 65537;
  *(result + 3) = 0;
  *(result + 4) = 0;
  *(result + 1) = a1;
  *(result + 2) = 0;
  *(result + 6) = a3;
  return result;
}

_WORD *re2::Regexp::Repeat(uint64_t a1, __int16 a2, int a3, int a4)
{
  result = mallocRegexp();
  *result = 10;
  result[1] = a2;
  *(result + 1) = 65537;
  *(result + 3) = 0;
  *(result + 4) = 0;
  *(result + 1) = a1;
  *(result + 2) = 0;
  *(result + 6) = a4;
  *(result + 7) = a3;
  return result;
}

double re2::Regexp::NewLiteral(int a1, __int16 a2)
{
  v4 = mallocRegexp();
  *v4 = 3;
  *(v4 + 1) = a2;
  *(v4 + 2) = 1;
  result = 0.0;
  *(v4 + 22) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 19) = 0;
  *(v4 + 6) = a1;
  return result;
}

char *re2::Regexp::LiteralString(int *a1, int a2, __int16 a3)
{
  if (a2 <= 0)
  {
    v6 = mallocRegexp();
    *v6 = 2;
    *(v6 + 1) = a3;
    *(v6 + 2) = 1;
    *(v6 + 6) = 0u;
    *(v6 + 22) = 0u;
    *(v6 + 19) = 0;
  }

  else if (a2 == 1)
  {
    v5 = *a1;
    v6 = mallocRegexp();
    *v6 = 3;
    *(v6 + 1) = a3;
    *(v6 + 2) = 1;
    *(v6 + 22) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 19) = 0;
    *(v6 + 6) = v5;
  }

  else
  {
    v6 = mallocRegexp();
    v9 = 0;
    *v6 = 4;
    *(v6 + 1) = a3;
    *(v6 + 2) = 1;
    *(v6 + 6) = 0u;
    *(v6 + 22) = 0u;
    *(v6 + 19) = 0;
    do
    {
      v11 = a1[v9];
      v12 = *(v6 + 6);
      if (!v12.i32[0])
      {
        operator new[]();
      }

      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = *(v6 + 4);
      if (v12.i32[0] >= 8 && v13.i32[0] <= 1u)
      {
        operator new[]();
      }

      v10 = *(v6 + 6);
      *(v6 + 6) = v10 + 1;
      *(v14 + 4 * v10) = v11;
      ++v9;
    }

    while (v9 != a2);
  }

  return v6;
}

double re2::Regexp::NewCharClass(uint64_t a1, __int16 a2)
{
  v4 = mallocRegexp();
  *v4 = 20;
  *(v4 + 1) = a2;
  *(v4 + 2) = 1;
  result = 0.0;
  *(v4 + 22) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 19) = 0;
  *(v4 + 3) = a1;
  return result;
}

__n128 re2::Regexp::Swap(re2::Regexp *this, re2::Regexp *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = *this;
  v3 = *(this + 1);
  v4 = *(this + 4);
  v5 = *(a2 + 4);
  v6 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v6;
  *(this + 4) = v5;
  *(a2 + 4) = v4;
  *a2 = result;
  *(a2 + 1) = v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL re2::Regexp::Equal(re2::Regexp *this, re2::Regexp *a2, re2::Regexp *a3)
{
  v3 = a2;
  v4 = this;
  if (!this || !a2)
  {
    return this == a2;
  }

  result = re2::TopEqual(this, a2, a3);
  if (!result)
  {
    return result;
  }

  v7 = *v4;
  if ((v7 - 5) > 6)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    while (v7 - 7 < 5)
    {
      v9 = (v4 + 8);
      if (*(v4 + 3) >= 2u)
      {
        v9 = *v9;
      }

      v10 = (v3 + 8);
      if (*(v3 + 3) >= 2u)
      {
        v10 = *v10;
      }

      v4 = *v9;
      v3 = *v10;
      if (!re2::TopEqual(*v9, *v10, v6))
      {
        return 0;
      }

LABEL_10:
      LOBYTE(v7) = *v4;
    }

    if (v7 - 5 < 2 && *(v4 + 3))
    {
      break;
    }

    if ((v8 & 0x7FFFFFFF8) == 0)
    {
      return 1;
    }

    v16 = (v8 << 29) - 0x200000000;
    v17 = v16 >> 32;
    v18 = v16 >> 29;
    v4 = *v18;
    v3 = *(((v8 << 29) - 0x100000000) >> 29);
    v19 = v17 - (v8 >> 3);
    if (v17 <= v8 >> 3)
    {
      if (v17 < v8 >> 3)
      {
        v8 = v18;
      }

      goto LABEL_10;
    }

    if (v19 > -v8 >> 3)
    {
      if (!(v17 >> 61))
      {
        operator new();
      }

      std::vector<re2::RE2 *>::__throw_length_error[abi:ne200100]();
    }

    bzero(v8, 8 * v19);
    v8 += 8 * v19;
    LOBYTE(v7) = *v4;
  }

  v11 = (v4 + 8);
  if (*(v4 + 3) >= 2u)
  {
    v11 = *(v4 + 1);
  }

  v12 = (v3 + 8);
  if (*(v3 + 3) >= 2u)
  {
    v12 = *(v3 + 1);
  }

  v13 = *v11;
  result = re2::TopEqual(*v11, *v12, v6);
  if (result)
  {
    v14 = v8;
    v15 = v8 >> 3;
    if (!((v15 + 1) >> 61))
    {
      if (v15 != -1)
      {
        if (!((v15 + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFF8] = v13;
      memcpy(0, 0, v14);
      operator new();
    }

    std::vector<re2::RE2 *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL re2::TopEqual(re2 *this, re2::Regexp *a2, re2::Regexp *a3)
{
  v3 = *this;
  if (v3 != *a2)
  {
    return 0;
  }

  v4 = 1;
  if (*this > 0xAu)
  {
    if (*this <= 0x12u)
    {
      if ((v3 - 12) < 7)
      {
        return v4;
      }

      if (v3 == 11)
      {
        if (*(this + 6) == *(a2 + 6))
        {
          return *(this + 4) == *(a2 + 4);
        }

        return 0;
      }

LABEL_37:
      LOBYTE(v17.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unexpected op in Regexp::Equal: ", 32);
      MEMORY[0x23837FD10](v18, *this);
      LogMessage::~LogMessage(&v17);
      return 0;
    }

    if (v3 != 21)
    {
      if (v3 != 20)
      {
        if (v3 == 19)
        {
          return ((*(a2 + 1) ^ *(this + 1)) & 0x8000u) == 0;
        }

        goto LABEL_37;
      }

      v12 = *(this + 3);
      v13 = *(a2 + 3);
      if (*(v12 + 4) != *(v13 + 4))
      {
        return 0;
      }

      v14 = *(v12 + 16);
      if (v14 != *(v13 + 16))
      {
        return 0;
      }

      v9 = 8 * v14;
      v8 = *(v13 + 8);
      v7 = *(v12 + 8);
      return memcmp(v7, v8, v9) == 0;
    }

    goto LABEL_32;
  }

  if (*this > 4u)
  {
    if ((v3 - 7) < 3)
    {
      return ((*(a2 + 1) ^ *(this + 1)) & 0x40) == 0;
    }

    if ((v3 - 5) < 2)
    {
      v10 = *(this + 3);
      v11 = *(a2 + 3);
      return v10 == v11;
    }

    if (v3 != 10)
    {
      goto LABEL_37;
    }

    if (((*(a2 + 1) ^ *(this + 1)) & 0x40) != 0 || *(this + 7) != *(a2 + 7))
    {
      return 0;
    }

LABEL_32:
    v10 = *(this + 6);
    v11 = *(a2 + 6);
    return v10 == v11;
  }

  if ((v3 - 1) < 2)
  {
    return v4;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      goto LABEL_37;
    }

    v6 = *(this + 6);
    if (v6 != *(a2 + 6) || ((*(a2 + 1) ^ *(this + 1)) & 1) != 0)
    {
      return 0;
    }

    v7 = *(this + 4);
    v8 = *(a2 + 4);
    v9 = 4 * v6;
    return memcmp(v7, v8, v9) == 0;
  }

  if (*(this + 6) != *(a2 + 6))
  {
    return 0;
  }

  return ((*(a2 + 1) ^ *(this + 1)) & 1) == 0;
}

size_t re2::RegexpStatus::CodeText@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0xD)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  v4 = re2::kErrorStrings[v3];
  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  return result;
}

std::string *re2::RegexpStatus::Text@<X0>(const std::string::value_type **this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 4))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v4 = *this;
    if (*this > 0xDu)
    {
      v4 = 1;
    }

    v5 = re2::kErrorStrings[v4];
    v6 = strlen(v5);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v15 = v6;
    if (v6)
    {
      memmove(__dst, v5, v6);
    }

    *(__dst + v7) = 0;
    if ((v15 & 0x80u) == 0)
    {
      v12 = __dst;
    }

    else
    {
      v12 = __dst[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v13 = v15;
    }

    else
    {
      v13 = __dst[1];
    }

    std::string::append(a2, v12, v13);
    if (v15 < 0)
    {
      operator delete(__dst[0]);
    }

    std::string::append(a2, ": ");
    return std::string::append(a2, this[1], *(this + 4));
  }

  else
  {
    v8 = *this;
    if (*this > 0xDu)
    {
      v8 = 1;
    }

    v9 = re2::kErrorStrings[v8];
    result = strlen(v9);
    if (result > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = result;
    if (result)
    {
      result = memmove(a2, v9, result);
    }

    v11->__r_.__value_.__s.__data_[a2] = 0;
  }

  return result;
}

void sub_231F06B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

uint64_t re2::RegexpStatus::Copy(uint64_t this, const re2::RegexpStatus *a2)
{
  *this = *a2;
  v2 = *(a2 + 1);
  *(this + 16) = *(a2 + 4);
  *(this + 8) = v2;
  return this;
}

void re2::Regexp::NumCaptures(re2::Regexp *this)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v1 = &unk_284700F40;
  operator new();
}

void re2::Regexp::Walker<int>::WalkInternal(void *a1, uint64_t a2, int a3, char a4)
{
  re2::Regexp::Walker<int>::Reset(a1);
  if (a2)
  {
    v8 = a1[1];
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = *(v8 + 8);
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 16 * (v10 - v11) - 1;
    }

    v13 = *(v8 + 40);
    v14 = v13 + *(v8 + 32);
    if (v12 == v14)
    {
      std::deque<re2::WalkState<int>>::__add_back_capacity(a1[1]);
      v11 = *(v8 + 8);
      v13 = *(v8 + 40);
      v14 = v13 + *(v8 + 32);
    }

    v15 = *(v11 + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F);
    *v15 = a2;
    *(v15 + 8) = -1;
    *(v15 + 12) = a3;
    *(v15 + 24) = 0;
    *(v8 + 40) = v13 + 1;
    while (1)
    {
      while (1)
      {
        v17 = a1[1];
        v18 = v17[5] + v17[4] - 1;
        v19 = *(v17[1] + ((v18 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v18 & 0x7F);
        v20 = *v19;
        if (*(v19 + 8) == -1)
        {
          v26 = *(a1 + 5);
          *(a1 + 5) = v26 - 1;
          if (v26 <= 0)
          {
            *(a1 + 16) = 1;
            v27 = (*(*a1 + 40))(a1, v20, *(v19 + 12));
LABEL_29:
            v28 = v27;
            goto LABEL_30;
          }

          LOBYTE(v48.__locale_) = 0;
          v27 = (*(*a1 + 16))(a1, v20, *(v19 + 12), &v48);
          *(v19 + 16) = v27;
          if (v48.__locale_)
          {
            goto LABEL_29;
          }

          *(v19 + 8) = 0;
          *(v19 + 24) = 0;
          if (*(v20 + 6))
          {
            if (*(v20 + 6) != 1)
            {
              operator new[]();
            }

            *(v19 + 24) = v19 + 20;
          }
        }

        v21 = *(v20 + 6);
        if (*(v20 + 6))
        {
          break;
        }

        v23 = *(v19 + 8);
LABEL_25:
        v28 = (*(*a1 + 24))(a1, v20, *(v19 + 12), *(v19 + 16), *(v19 + 24), v23);
        if (*(v20 + 6) >= 2u)
        {
          v29 = *(v19 + 24);
          if (v29)
          {
            MEMORY[0x23837FDC0](v29, 0x1000C8052888210);
          }
        }

LABEL_30:
        v30 = a1[1];
        v31 = v30[1];
        v32 = v30[2];
        v33 = 16 * (v32 - v31) - 1;
        v35 = v30[4];
        v34 = v30[5];
        if (v32 == v31)
        {
          v33 = 0;
        }

        v36 = v34 - 1;
        v30[5] = v34 - 1;
        if ((v33 - (v34 + v35) + 1) >= 0x100)
        {
          operator delete(*(v32 - 8));
          v30[2] -= 8;
          v30 = a1[1];
          v36 = v30[5];
        }

        if (!v36)
        {
          return;
        }

        v37 = *(v30[1] + (((v36 + v30[4] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v36 + v30[4] - 1) & 0x7F);
        v38 = *(v37 + 24);
        if (v38)
        {
          v16 = (v38 + 4 * *(v37 + 8));
        }

        else
        {
          v16 = (v37 + 20);
        }

        *v16 = v28;
        ++*(v37 + 8);
      }

      v22 = (v20 + 8);
      if (v21 != 1)
      {
        v22 = *v22;
      }

      v23 = *(v19 + 8);
      if (v23 >= v21)
      {
        goto LABEL_25;
      }

      v24 = v23 - 1;
      if (v23 >= 1 && (a4 & 1) != 0)
      {
        v25 = v22[v23];
        if (v22[v24] != v25)
        {
          goto LABEL_38;
        }

        *(*(v19 + 24) + 4 * (*(v19 + 8))++) = (*(*a1 + 32))(a1, *(*(v19 + 24) + 4 * v24));
      }

      else
      {
        v25 = v22[v23];
LABEL_38:
        v39 = a1[1];
        v40 = *(v39 + 8);
        v41 = *(v39 + 16);
        v42 = *(v39 + 8);
        v43 = *(v19 + 16);
        if (v41 == v42)
        {
          v44 = 0;
        }

        else
        {
          v44 = 16 * (v41 - v42) - 1;
        }

        v45 = *(v39 + 40);
        v46 = v45 + *(v39 + 32);
        if (v44 == v46)
        {
          std::deque<re2::WalkState<int>>::__add_back_capacity(a1[1]);
          v42 = *(v39 + 8);
          v45 = *(v39 + 40);
          v46 = v45 + *(v39 + 32);
        }

        v47 = *(v42 + ((v46 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v46 & 0x7F);
        *v47 = v25;
        *(v47 + 8) = -1;
        *(v47 + 12) = v43;
        *(v47 + 24) = 0;
        *(v39 + 40) = v45 + 1;
      }
    }
  }

  LOBYTE(v48.__locale_) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "Walk NULL", 9);
  LogMessage::~LogMessage(&v48);
}

void re2::Regexp::Walker<int>::Reset(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*(v1 + 40))
    {
      LOBYTE(v12.__locale_) = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Stack not empty.", 16);
      LogMessage::~LogMessage(&v12);
      v3 = *(a1 + 8);
      v4 = v3[5];
      while (v4)
      {
        v5 = v3[4];
        v6 = v4 + v5 - 1;
        v7 = v3[1];
        v8 = *(*(v7 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F) + 24);
        if (v8)
        {
          MEMORY[0x23837FDE0](v8, 0x1000C4052888210);
          v3 = *(a1 + 8);
          v5 = v3[4];
          v7 = v3[1];
        }

        v9 = v3[2];
        v10 = 16 * (v9 - v7) - 1;
        v11 = v3[5];
        if (v9 == v7)
        {
          v10 = 0;
        }

        v4 = v11 - 1;
        v3[5] = v11 - 1;
        if ((v10 - (v11 + v5) + 1) >= 0x100)
        {
          operator delete(*(v9 - 8));
          v3[2] -= 8;
          v3 = *(a1 + 8);
          v4 = v3[5];
        }
      }
    }
  }
}

uint64_t std::deque<re2::WalkState<int>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void re2::NumCapturesWalker::~NumCapturesWalker(re2::NumCapturesWalker *this)
{
  *this = &unk_284700F40;
  re2::Regexp::Walker<int>::Reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::deque<re2::WalkState<int>>::~deque[abi:ne200100](v2);
    MEMORY[0x23837FDE0](v3, 0x1080C40BE8D5F09);
  }
}

{
  *this = &unk_284700F40;
  re2::Regexp::Walker<int>::Reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::deque<re2::WalkState<int>>::~deque[abi:ne200100](v2);
    MEMORY[0x23837FDE0](v3, 0x1080C40BE8D5F09);
  }

  JUMPOUT(0x23837FDE0);
}

{
  *this = &unk_284700F40;
  re2::Regexp::Walker<int>::Reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::deque<re2::WalkState<int>>::~deque[abi:ne200100](v2);
    MEMORY[0x23837FDE0](v3, 0x1080C40BE8D5F09);
  }
}