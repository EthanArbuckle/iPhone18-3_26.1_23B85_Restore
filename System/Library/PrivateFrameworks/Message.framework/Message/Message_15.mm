id _createPartForFileWrapper(void *a1, void *a2, __CFDictionary *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v6 preferredFilename];
  if (!v7)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v8 = [v6 isImageFile];
  v9 = @"attachment";
  if (v8)
  {
    v9 = @"inline";
  }

  v10 = v9;
  v7 = v7;
  v11 = v7;
  if ((MFStringCanBeConvertedLosslessly() & 1) == 0)
  {
    v12 = MFCreateDataWithString();
    v11 = v7;
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:1];
      v11 = [v13 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];
    }
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69AD720]) init];
  [v14 setDispositionParameter:v7 forKey:@"filename"];
  [v14 setDisposition:v10];
  if ([v6 isSymbolicLink])
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69AD720]) init];
    v16 = objc_opt_new();
    v26 = v7;
    _setMimeTypeFromWrapper(v15, &v26, v6);
    v17 = v26;

    appendHeadersToMessageHeaders(v5, v15, v16);
    CFDictionarySetValue(a3, v14, [v16 encodedHeaders]);
    [v14 setType:@"message"];
    [v14 setSubtype:@"external-body"];
    [v14 setBodyParameter:@"local-file" forKey:@"access-type"];
    v18 = [v6 symbolicLinkDestination];
    [v14 setBodyParameter:v18 forKey:@"name"];
  }

  else
  {
    if (![v6 isRegularFile])
    {
      v22 = _ef_log_MFMessageWriter();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v7;
        _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
      }

      CFDictionarySetValue(a3, v14, [MEMORY[0x1E695DEF0] data]);
      goto LABEL_25;
    }

    v15 = [v6 regularFileContents];
    if (!v15)
    {
      v15 = [MEMORY[0x1E695DEF0] data];
    }

    if ((v5[16] & 4) != 0)
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", objc_msgSend(v15, "length")];
      [v14 setDispositionParameter:v19 forKey:@"size"];
    }

    v20 = [v6 fileAttributes];
    v16 = [v20 objectForKey:*MEMORY[0x1E696A370]];

    CFDictionarySetValue(a3, v14, v15);
    v25 = v7;
    _setMimeTypeFromWrapper(v14, &v25, v6);
    v17 = v25;

    if (v16)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#o", objc_msgSend(v16, "intValue")];
      [v14 setBodyParameter:v21 forKey:@"x-unix-mode"];
    }

    v18 = [v6 URL];
    if (v18)
    {
      [v14 setBodyParameter:v18 forKey:*MEMORY[0x1E69AD630]];
    }

    [v14 setBodyParameter:v11 forKey:@"name"];
  }

  v7 = v17;
LABEL_25:

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

void appendHeadersToMessageHeaders(void *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v57 = v5;
  v58 = a3;
  WeakRetained = objc_loadWeakRetained(v5 + 3);
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    v8 = objc_loadWeakRetained(v5 + 3);
    [v8 messageWriter:v5 willGenerateHeadersForMimePart:v6];
  }

  v9 = [v6 type];
  v10 = [v9 isEqualToString:@"multipart"];

  if (v10)
  {
    v11 = [v6 bodyParameterForKey:@"boundary"];
    if (!v11)
    {
      v11 = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
      [v6 setBodyParameter:v11 forKey:@"boundary"];
    }
  }

  v54 = [v6 type];
  v55 = [v6 subtype];
  v12 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v13 = &stru_1F273A5E0;
  v14 = v54;
  if (!v54)
  {
    v14 = &stru_1F273A5E0;
  }

  if (v55)
  {
    v13 = v55;
  }

  v56 = [v12 initWithFormat:@"%@/%@", v14, v13];
  v15 = v6;
  v16 = [v15 dispositionParameterForKey:@"filename"];
  if (v16 && ([v15 bodyParameterForKey:@"name"], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v19 = [v16 mutableCopyWithZone:0];
    [v19 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v19, "length")}];
    [v19 replaceOccurrencesOfString:@"" withString:@"\\" options:0 range:{0, objc_msgSend(v19, "length"")}];
    [v19 insertString:@"" atIndex:0];
    [v19 appendString:@""];
    v20 = MFCreateDataWithString();
    if (v20 || (v20 = MFCreateDataWithString()) != 0 || (CFStringGetSystemEncoding(), (v20 = MFCreateDataWithString()) != 0) || (CFStringGetSystemEncoding(), (v20 = MFCreateDataWithString()) != 0))
    {
      strcpy(v69, ";\n\tname=");
      v18 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v20, "length") + 8}];
      [v18 appendBytes:v69 length:8];
      [v18 appendData:v20];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = [v15 bodyParameterKeys];
  if ([v21 count] || v18)
  {
    v22 = [v56 dataUsingEncoding:1 allowLossyConversion:1];
    v23 = [v22 mutableCopyWithZone:0];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v24 = v21;
    v25 = [v24 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v25)
    {
      v26 = *v64;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v64 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v63 + 1) + 8 * i);
          v29 = [v15 bodyParameterForKey:v28];
          [v23 mf_appendRFC2231CompliantValue:v29 forKey:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v25);
    }

    if (v18)
    {
      [v23 appendData:v18];
    }

    [v58 setHeader:v23 forKey:*MEMORY[0x1E699B0D0]];
  }

  else
  {
    [v58 setHeader:v56 forKey:*MEMORY[0x1E699B0D0]];
  }

  v30 = [v15 disposition];
  v31 = [v15 dispositionParameterKeys];
  v32 = [v31 count];
  if (v30 || v32)
  {
    if (v32)
    {
      v33 = [objc_allocWithZone(MEMORY[0x1E69AD730]) init];
      if ([v30 length])
      {
        v34 = [v30 dataUsingEncoding:1 allowLossyConversion:1];
        [v33 appendData:v34];
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v35 = v31;
      v36 = [v35 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v36)
      {
        v37 = *v60;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v60 != v37)
            {
              objc_enumerationMutation(v35);
            }

            v39 = *(*(&v59 + 1) + 8 * j);
            v40 = [v15 dispositionParameterForKey:v39];
            [v33 mf_appendRFC2231CompliantValue:v40 forKey:v39];
          }

          v36 = [v35 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v36);
      }

      [v58 setHeader:v33 forKey:*MEMORY[0x1E699B0A8]];
    }

    else
    {
      [v58 setHeader:v30 forKey:*MEMORY[0x1E699B0A8]];
    }
  }

  v41 = [v15 contentTransferEncoding];
  if (v41)
  {
    [v58 setHeader:v41 forKey:*MEMORY[0x1E699B0C8]];
  }

  v42 = [v15 contentDescription];
  if (v42)
  {
    [v58 setHeader:v42 forKey:*MEMORY[0x1E699B0A0]];
  }

  v43 = [v15 contentID];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 mutableCopyWithZone:0];
    [v58 setHeader:v45 forKey:*MEMORY[0x1E699B0B0]];
  }

  v46 = [v15 languages];
  v47 = v46;
  if (v46 && [v46 count])
  {
    v48 = [v47 componentsJoinedByString:@" "];
    [v58 setHeader:v48 forKey:*MEMORY[0x1E699B0B8]];
  }

  v49 = [v15 contentLocation];
  if (v49)
  {
    [v58 setHeader:v49 forKey:*MEMORY[0x1E699B0C0]];
  }

  v50 = objc_loadWeakRetained(v57 + 3);
  v51 = objc_opt_respondsToSelector();

  if (v51)
  {
    v52 = objc_loadWeakRetained(v57 + 3);
    [v52 messageWriter:v57 willEncodeHeaders:v58 forMimePart:v15];
  }

  v53 = *MEMORY[0x1E69E9840];
}

_MFOutgoingMessageBody *_makeOutgoingMessageBody(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(_MFOutgoingMessageBody);
  v3 = objc_alloc_init(v1[1]);
  [(MFMessageBody *)v2 setMessage:v3];
  [v3 setMessageBody:v2];

  return v2;
}

uint64_t _makeMimeHeadersConsistent(void *a1, void *a2, const __CFDictionary *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v63 = a1;
  key = a2;
  v59 = CFDictionaryGetValue(a3, key);
  v60 = [key type];
  if ([@"multipart" isEqualToString:?])
  {
    [key subparts];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v5 = v66 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v66;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v66 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v65 + 1) + 8 * v9);
          if ((_makeMimeHeadersConsistent(v63, v11, a3) & 1) == 0)
          {

            goto LABEL_26;
          }

          v12 = [v11 contentTransferEncoding];
          v7 = @"binary";
          if (([v12 isEqualToString:@"binary"] & 1) == 0)
          {
            if ([v12 isEqualToString:@"8bit"])
            {
              if ([(__CFString *)v10 isEqualToString:@"binary"])
              {
                v7 = v10;
              }

              else
              {
                v7 = @"8bit";
              }
            }

            else
            {
              v7 = v10;
            }
          }

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      if (v7)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v7 = @"7bit";
LABEL_30:
    [key setContentTransferEncoding:v7];

    goto LABEL_129;
  }

  if (!v59)
  {
    [key setContentTransferEncoding:@"7bit"];
    goto LABEL_129;
  }

  v13 = [key contentTransferEncoding];

  if (v13)
  {
LABEL_129:
    v19 = 1;
    goto LABEL_130;
  }

  v14 = [key isReadableText];
  strcpy(__s1, "From ");
  v15 = [v59 length];
  if (v14)
  {
    v16 = 2;
  }

  else
  {
    v16 = 6;
  }

  v57 = v16;
  v17 = [v59 bytes];
  v58 = v14;
  if ([v60 isEqualToString:@"message"])
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v18 = (v63[16] >> 1) & 1;
  }

  v20 = +[MFActivityMonitor currentMonitor];
  if (([v20 canBeCancelled] & 1) == 0)
  {

    v20 = 0;
  }

  v61 = v20;
  if (v15 < 1)
  {
    v37 = 0;
    goto LABEL_93;
  }

  v56 = 0;
  v21 = 0;
  v22 = 0;
  v55 = v15;
  v23 = &v17[v15];
  v24 = 1;
  v25 = 1;
  v26 = v17;
  do
  {
    v27 = *v17;
    if (v27 <= 0xD && ((1 << v27) & 0x2401) != 0)
    {
      v25 = 0;
    }

    if (v27 == 10)
    {
      v29 = 0;
      v30 = &v17[~v26];
      if (v21 > v30)
      {
        v30 = v21;
      }

      if (v17 > v26)
      {
        v21 = v30;
      }

      v26 = v17 + 1;
    }

    else
    {
      v31 = v58;
      if (v27 != 27)
      {
        v31 = 0;
      }

      if (v27 == 9 || v27 > 0x1F)
      {
        v33 = (v27 & 0x80u) == 0;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        v29 = 0;
        if (v17 == v26 && (v17 + 5) < v23)
        {
          if (!strncmp(__s1, v17, 5uLL))
          {
            LOBYTE(v18) = 0;
            v29 = 0;
            v56 = 1;
            v26 = v17;
            v21 = 998;
          }

          else
          {
            v29 = 0;
            v26 = v17;
          }
        }
      }

      else
      {
        v34 = v22 + v57;
        v35 = v63[16];
        if ((v35 & 3) != 0)
        {
          v22 += v57;
          v29 = 0;
        }

        else
        {
          if (v18)
          {
            v22 += v57;
            v29 = 0;
            ++v17;
            LOBYTE(v18) = 1;
            goto LABEL_77;
          }

          LOBYTE(v18) = 0;
          v22 += v57;
          if (((v55 > v34) & (v35 >> 3)) != 0)
          {
            v29 = 0;
          }

          else
          {
            v29 = @"base64";
          }
        }
      }
    }

    v36 = ++v17 - v26 < 999 && v21 < 999;
    if (!v36 && (v18 & 1) == 0)
    {
      if (v63[16] & 8) != 0 && ([v60 isEqualToString:@"text"])
      {
        LOBYTE(v18) = 0;
      }

      else
      {
        LOBYTE(v18) = 0;
        v29 = @"base64";
      }
    }

LABEL_77:
    if (v61)
    {
      v24 &= [v61 shouldCancel] ^ 1;
    }
  }

  while (!v29 && v17 < v23 && (v24 & 1) != 0);
  if ((v24 & 1) == 0)
  {

    goto LABEL_26;
  }

  v37 = ~v26 + v23;
  if (v21 > v37)
  {
    v37 = v21;
  }

  if (v23 <= v26)
  {
    v37 = v21;
  }

  v20 = v61;
  if (v29)
  {
    goto LABEL_106;
  }

  if (v56 & 1 | (v37 > 997))
  {
    goto LABEL_99;
  }

  if (!v22)
  {
LABEL_93:
    if (v37 >= 77)
    {
      v38 = [key type];
      if ([v38 isEqualToString:@"text"])
      {
        v39 = [key subtype];
        if ([v39 isEqualToString:@"plain"])
        {
          v40 = [MEMORY[0x1E695E000] standardUserDefaults];
          v41 = [v40 BOOLForKey:@"UseFormatFlowedForWrapping"];

          if ((v41 & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_105;
        }
      }
    }

LABEL_105:
    v29 = @"7bit";
    goto LABEL_106;
  }

  if ((((v63[16] & 3) != 0) & v25) != 0)
  {
    v29 = @"8bit";
    goto LABEL_106;
  }

LABEL_99:
  if (v56 & 1 | ((v18 & 1) == 0))
  {
    if ((v63[16] & 8) != 0 && [v59 length] > v22)
    {
LABEL_102:
      v29 = @"quoted-printable";
    }

    else
    {
      v29 = @"base64";
    }
  }

  else
  {
    v29 = @"binary";
  }

LABEL_106:
  [key setContentTransferEncoding:v29];
  if ([@"base64" isEqualToString:v29])
  {
    if (v58)
    {
      v42 = [key disposition];
      if ([v42 isEqual:@"attachment"])
      {
        v43 = 0;
        goto LABEL_119;
      }

      v52 = [v59 length];

      if (v52)
      {
        v43 = [v59 mf_dataByConvertingUnixNewlinesToNetwork];
        goto LABEL_123;
      }
    }

LABEL_122:
    v43 = 0;
    goto LABEL_123;
  }

  if (![@"quoted-printable" isEqualToString:v29])
  {
    goto LABEL_122;
  }

  v42 = objc_alloc_init(MEMORY[0x1E69AD698]);
  v44 = [objc_alloc(MEMORY[0x1E69AD760]) initWithConsumer:v42];
  [v44 setForTextPart:v58];
  v45 = [v59 length];
  v46 = [v59 bytes];
  v47 = 0;
  v48 = 0;
  if (v20)
  {
LABEL_112:
    if (([v20 shouldCancel] & 1) == 0)
    {
      goto LABEL_113;
    }
  }

  else
  {
LABEL_113:
    while (1)
    {
      v49 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v46 + v47 length:v45 - v47 freeWhenDone:0];
      v50 = [v44 appendData:v49];
      if (v50 < 0)
      {
        break;
      }

      v51 = v50 == 0;
      if (v48 && v51)
      {
        break;
      }

      v47 += v50;

      v48 = v51;
      v20 = v61;
      if (v61)
      {
        goto LABEL_112;
      }
    }

    v20 = v61;
  }

  [v44 done];
  [v42 done];
  v43 = [v42 data];

LABEL_119:
LABEL_123:
  if (!v20 || ([v20 shouldCancel] & 1) == 0)
  {
    if (v43)
    {
      CFDictionarySetValue(a3, key, v43);
    }

    goto LABEL_129;
  }

LABEL_26:
  v19 = 0;
LABEL_130:

  v53 = *MEMORY[0x1E69E9840];
  return v19;
}

id _stringByReplacingNonBreakingSpacesWithString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if ([v5 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _setMimeTypeFromWrapper(void *a1, id *a2, void *a3)
{
  v23 = a1;
  v5 = a3;
  v6 = *a2;
  v7 = objc_alloc_init(MEMORY[0x1E69AD778]);
  v8 = [v5 mimeType];
  [v7 setMimeType:v8];

  v9 = [v6 pathExtension];
  [v7 setPathExtension:v9];

  [v7 setFilename:v6];
  if ([v7 osType] == 1061109567)
  {
    [v7 setOsType:0];
  }

  v10 = [v7 mimeType];

  v11 = [v7 pathExtension];
  v12 = [&stru_1F273A5E0 isEqualToString:v11];

  if (v12)
  {
    [v7 setPathExtension:0];
  }

  v13 = [v7 pathExtension];

  if (v13)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = (v10 == 0) | 2;
  }

  if (v14)
  {
    MFGetTypeInfo();
    if (!v13 || v10)
    {
      v15 = [v7 pathExtension];

      if (v15)
      {
        v16 = *a2;
        v17 = [v7 pathExtension];
        *a2 = [v16 stringByAppendingPathExtension:v17];

        [v5 setPreferredFilename:*a2];
        [v5 setFilename:*a2];
      }
    }
  }

  v18 = [v7 mimeType];

  if (v18)
  {
    v19 = [v7 mimeType];
    v20 = [v19 componentsSeparatedByString:@"/"];

    if (v20 && [v20 count] == 2)
    {
      v21 = [v20 objectAtIndex:0];
      v22 = [v20 objectAtIndex:1];

      if (v21)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v22 = 0;
LABEL_20:

  v21 = @"application";
  v22 = @"octet-stream";
LABEL_21:
  [v23 setType:v21];
  [v23 setSubtype:v22];
}

id _ef_log_MFAccountAutoFetchController()
{
  if (_ef_log_MFAccountAutoFetchController_onceToken != -1)
  {
    _ef_log_MFAccountAutoFetchController_cold_1();
  }

  v1 = _ef_log_MFAccountAutoFetchController_log;

  return v1;
}

void sub_1B05B9798(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1B05B9F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFAccountStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05BB544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFActivityCondition;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05BB778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1B05BB914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05BBBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B05BC7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v22 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B05BC9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));

  _Unwind_Resume(a1);
}

void sub_1B05BD7B8(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_1B05BD9CC(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_1B05BDD18(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

id EFPromiseAttachmentDataHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __EFPromiseAttachmentDataHandler_block_invoke;
  v9[3] = &unk_1E7AA4C38;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = _Block_copy(v9);

  return v7;
}

__CFData *_stripPrivateFileMetadata(void *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = CGImageSourceCreateWithData(v1, 0);
  v3 = v2;
  v4 = v1;
  if (v2)
  {
    v5 = CGImageSourceCopyMetadataAtIndex(v2, 0, 0);
    v6 = v5;
    v4 = v1;
    if (v5)
    {
      MutableCopy = CGImageMetadataCreateMutableCopy(v5);
      v8 = MutableCopy;
      v4 = v1;
      if (MutableCopy)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = ___stripPrivateFileMetadata_block_invoke;
        v16[3] = &unk_1E7AA4C60;
        v18 = &v20;
        v19 = MutableCopy;
        v17 = &unk_1F2776150;
        CGImageMetadataEnumerateTagsUsingBlock(v6, 0, 0, v16);
        v4 = v1;
        if (*(v21 + 24) == 1)
        {
          v9 = [MEMORY[0x1E695DF88] data];
          Type = CGImageSourceGetType(v3);
          Count = CGImageSourceGetCount(v3);
          v12 = CGImageDestinationCreateWithData(v9, Type, Count, 0);
          v4 = v1;
          if (v12)
          {
            keys[0] = *MEMORY[0x1E696D348];
            values = v8;
            v13 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
            v4 = v1;
            if (v13)
            {
              v4 = v1;
              if (CGImageDestinationCopyImageSource(v12, v3, v13, 0))
              {
                v4 = v9;
              }

              CFRelease(v13);
            }

            CFRelease(v12);
          }
        }

        CFRelease(v8);

        _Block_object_dispose(&v20, 8);
      }

      CFRelease(v6);
    }

    CFRelease(v3);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1B05BF644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05C0990(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05C1E08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __EFPromiseAttachmentDataHandler_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    v6 = [*(a1 + 32) data];
    [*(a1 + 40) finishWithResult:v6];
  }

  else
  {
    [*(a1 + 40) finishWithError:v5];
  }
}

uint64_t ___stripPrivateFileMetadata_block_invoke(uint64_t a1, const __CFString *a2, CGImageMetadataTagRef tag)
{
  v6 = CGImageMetadataTagCopyPrefix(tag);
  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = CGImageMetadataTagCopyName(tag);
      if (v8 && [v7 containsObject:v8])
      {
        CGImageMetadataRemoveTagWithPath(*(a1 + 48), 0, a2);
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  return 1;
}

void sub_1B05C4C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1B05C511C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05C572C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_1B05C6B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFAttachmentCompositionContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05C7350(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05C839C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B05C9018(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05C926C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v11 + 6);

  _Unwind_Resume(a1);
}

void sub_1B05C9360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 6);

  _Unwind_Resume(a1);
}

void sub_1B05C9434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B05CB530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05CBA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  _Block_object_dispose(&a41, 8);

  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1B05CCFF8(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B05CD200(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B05CE5B0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B05CFD68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05D0794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFAttachmentSecurityScope;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05D0DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05D13CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05D4120(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05D44E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1B05D470C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = MFCategorySubsystem_iOS;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05D4A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

void sub_1B05D4F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v28 + 40));

  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);

  _Unwind_Resume(a1);
}

void sub_1B05D5670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1B05D5C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1B05D6028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, id location)
{
  objc_destroyWeak((v24 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B05D67AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);

  _Unwind_Resume(a1);
}

void sub_1B05D6DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B05D72AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFCertificateTrustInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05D84C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

dispatch_source_t MFCreateDiskSpaceObserverSource(NSObject *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_source_create(MEMORY[0x1E69E9718], 0, 0xC204uLL, a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MFCreateDiskSpaceObserverSource_block_invoke;
    v9[3] = &unk_1E7AA4EE0;
    v6 = v4;
    v10 = v6;
    v11 = v3;
    dispatch_source_set_event_handler(v6, v9);
    v7 = v6;
  }

  return v5;
}

uint64_t __MFCreateDiskSpaceObserverSource_block_invoke(uint64_t a1)
{
  dispatch_source_get_data(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1B05D92F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05D9FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MFCreateExternalConversationID(void *a1)
{
  v1 = [a1 conversationId];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mf_encodeBase64];
    v4 = MFCreateStringWithData();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1B05DB774(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05DC7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05DD048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  _Block_object_dispose((v20 - 144), 8);

  _Unwind_Resume(a1);
}

id copyRFC822DataForPlainTextMessage(void *a1, int a2, char a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v41 = a1;
  v4 = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
  v48 = v41;
  v45 = v4;
  v5 = objc_alloc_init(MEMORY[0x1E69AD740]);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multipart/alternative boundary=%@", v45];;
  [v5 setHeader:v6 forKey:*MEMORY[0x1E699B0D0]];

  v7 = [v48 subject];
  v8 = v5;
  v9 = v7;
  if (v9)
  {
    [v8 setHeader:v9 forKey:*MEMORY[0x1E699B178]];
  }

  v10 = [v48 from];
  [v8 setAddressListForSender:v10];

  v11 = [v48 to];
  [v8 setAddressListForTo:v11];

  v12 = [v48 cc];
  [v8 setAddressListForCc:v12];

  v13 = [v48 bcc];
  [v8 setAddressListForBcc:v13];

  v14 = [v8 encodedHeaders];

  v44 = [v14 mutableCopy];
  v46 = objc_alloc_init(MFMailMimePart);
  [(MFMailMimePart *)v46 setType:@"multipart"];
  [(MFMailMimePart *)v46 setSubtype:@"alternative"];
  [(MFMailMimePart *)v46 setBodyParameter:v45 forKey:@"boundary"];
  v51 = objc_alloc_init(MFMailMimePart);
  [(MFMailMimePart *)v51 setType:@"multipart"];
  [(MFMailMimePart *)v51 setSubtype:@"mixed"];
  v43 = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
  [MFMailMimePart setBodyParameter:v51 forKey:"setBodyParameter:forKey:"];
  [(MFMailMimePart *)v46 addSubpart:v51];
  v47 = objc_alloc_init(MFMailMimePart);
  [(MFMailMimePart *)v47 setType:@"text"];
  [(MFMailMimePart *)v47 setSubtype:@"plain"];
  if (a3)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = [v48 bodySize];
  }

  [(MFMailMimePart *)v47 setRange:0, v15];
  [(MFMailMimePart *)v51 addSubpart:v47];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = [v48 attachments];
  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v17)
  {
    v50 = *v54;
    do
    {
      v52 = v17;
      for (i = 0; i != v52; ++i)
      {
        if (*v54 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        v20 = objc_alloc_init(MFMailMimePart);
        v21 = objc_alloc_init(MEMORY[0x1E69AD778]);
        v22 = [v19 displayName];
        [v21 setFilename:v22];

        if (!MFGetTypeInfo())
        {
          goto LABEL_15;
        }

        v23 = [v21 mimeType];
        v24 = [v23 rangeOfString:@"/"];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }

        v25 = [v21 mimeType];
        v26 = [v25 length] > (v24 + 1);

        if (v26)
        {
          v27 = [v21 mimeType];
          v28 = [v27 substringToIndex:v24];

          v29 = [v21 mimeType];
          v30 = [v29 substringFromIndex:v24 + 1];
        }

        else
        {
LABEL_15:
          v30 = @"octet-stream";
          v28 = @"application";
        }

        [(MFMailMimePart *)v20 setType:v28];
        [(MFMailMimePart *)v20 setSubtype:v30];
        v31 = [v19 name];
        [(MFMailMimePart *)v20 setContentID:v31];

        [(MFMailMimePart *)v20 setDisposition:@"attachment"];
        v32 = [v19 displayName];
        [(MFMailMimePart *)v20 setDispositionParameter:v32 forKey:@"filename"];

        v33 = [v19 size];
        -[MFMailMimePart setRange:](v20, "setRange:", 0, [v33 integerValue]);

        if ([v19 isMostDefinitelyBase64ed])
        {
          [(MFMailMimePart *)v20 setContentTransferEncoding:@"base64"];
        }

        [(MFMailMimePart *)v51 addSubpart:v20];
      }

      v16 = obj;
      v17 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v17);
  }

  v34 = [v48 meetingRequestUUID];

  if (v34)
  {
    v35 = objc_alloc_init(MFMailMimePart);
    [(MFMailMimePart *)v35 setType:@"text"];
    [(MFMailMimePart *)v35 setSubtype:@"calendar"];
    [(MFMailMimePart *)v35 setContentID:@"191AF69B-0088-47D2-AD66-6C9D08949C46"];
    [(MFMailMimePart *)v35 setDisposition:@"attachment"];
    [(MFMailMimePart *)v35 setDispositionParameter:@"meeting.ics" forKey:@"filename"];
    [(MFMailMimePart *)v35 setRange:0, 0];
    [(MFMailMimePart *)v51 addSubpart:v35];
  }

  if (a2)
  {
    v36 = objc_alloc_init(MFMailMimePart);
    [(MFMailMimePart *)v36 setType:@"message"];
    [(MFMailMimePart *)v36 setSubtype:@"rfc822"];
    [(MFMailMimePart *)v36 setRange:0, 0x7FFFFFFFFFFFFFFFLL];
    [(MFMailMimePart *)v36 setIsGenerated:1];
    [(MFMailMimePart *)v46 addSubpart:v36];
  }

  v37 = objc_alloc_init(MFMessageWriter);
  v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  [(MFMessageWriter *)v37 appendDataForMimePart:v46 toData:v44 withPartData:v38];

  v39 = *MEMORY[0x1E69E9840];

  return v44;
}

void sub_1B05E0EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _MFDAMSBasicConsumer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05E1934(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    v26 = MFLogGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *(v22 - 256) = 138412290;
      *(v22 - 252) = v25;
      _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Caught exception %@", (v22 - 256), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B05E18F0);
  }

  _Unwind_Resume(a1);
}

uint64_t insertDAMessages(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v89 = *MEMORY[0x1E69E9840];
  v59 = a1;
  v63 = a2;
  v61 = a3;
  v57 = a4;
  v58 = [MEMORY[0x1E695DF90] dictionary];
  v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v70 = [v61 fetchLimits];
  v9 = [v63 persistence];
  v60 = [v9 hookRegistry];

  if (a5)
  {
    v62 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v62 = 0;
  }

  if ([v59 count])
  {
    [v60 persistenceWillAddNewMessages:v59];
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v59;
  v10 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (!v10)
  {

    v35 = 128;
    goto LABEL_49;
  }

  v65 = 0;
  v66 = *v80;
  do
  {
    v69 = v10;
    for (i = 0; i != v69; ++i)
    {
      if (*v80 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v79 + 1) + 8 * i);
      v13 = [v12 DAMailMessage];
      v14 = v13;
      if (a5)
      {
        v15 = [v13 longID];
        if (v15)
        {
          v65 = 1;
        }

        else
        {
          v16 = [v14 serverID];
          if (v16)
          {
            v15 = v16;
          }

          else
          {
            v15 = @"Unknown remote identifier. No valid longID or serverID found";
          }

          v65 |= v16 == 0;
        }

        [v62 addObject:v15];
      }

      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v67 setObject:v17 forKeyedSubscript:v12];
      v71 = [v14 body];
      if (v71 && [v14 smimeType] != 2)
      {
        v18 = objc_alloc_init(MFBasicMessageDataSection);
        v19 = MFCreateStringByCondensingWhitespace(v71);
        [(MFBasicMessageDataSection *)v18 setPartName:@"summary"];
        v20 = [(__CFString *)v19 dataUsingEncoding:4];
        [(MFBasicMessageDataSection *)v18 setData:v20];

        [(MFBasicMessageDataSection *)v18 setComplete:1];
        [(MFBasicMessageDataSection *)v18 setPartial:0];
        [v17 addObject:v18];
      }

      v21 = [v14 meetingRequestUUID];
      if (v21)
      {
        v22 = objc_alloc_init(MFBasicMessageDataSection);
        [(MFBasicMessageDataSection *)v22 setPartName:@"meeting"];
        v23 = [v21 dataUsingEncoding:4];
        [(MFBasicMessageDataSection *)v22 setData:v23];

        [(MFBasicMessageDataSection *)v22 setComplete:1];
        [(MFBasicMessageDataSection *)v22 setPartial:0];
        [v17 addObject:v22];
        v24 = [v14 meetingRequestMetaData];
        if (v24)
        {
          v25 = objc_alloc_init(MFBasicMessageDataSection);
          [(MFBasicMessageDataSection *)v25 setPartName:@"meeting data"];
          [(MFBasicMessageDataSection *)v25 setData:v24];
          [(MFBasicMessageDataSection *)v25 setComplete:1];
          [(MFBasicMessageDataSection *)v25 setPartial:0];
          [v17 addObject:v25];
        }

        v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (([v14 meetingRequestIsActionable] & 1) == 0)
        {
          [v26 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"shouldUseICSRepresentation"];
        }

        if ([v26 count])
        {
          v27 = objc_alloc_init(MFBasicMessageDataSection);
          [(MFBasicMessageDataSection *)v27 setPartName:@"meeting metadata"];
          v28 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v26 requiringSecureCoding:1 error:0];
          [(MFBasicMessageDataSection *)v27 setData:v28];

          [(MFBasicMessageDataSection *)v27 setComplete:1];
          [(MFBasicMessageDataSection *)v27 setPartial:0];
          [v17 addObject:v27];
        }

        if (a6)
        {
          if (([v14 read] & 1) == 0)
          {
            *a6 |= 1uLL;
            v29 = [v61 meetingStorePersistentID];
            v30 = v29 == 0;

            if (v30)
            {
              *a6 |= 8uLL;
            }
          }
        }

        v31 = MFLogGeneral();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v85 = v26;
          v86 = 2112;
          v87 = v12;
          _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "Inserting Exchange Calendar meeting Data %@ for message : %@", buf, 0x16u);
        }

LABEL_40:
        v33 = copyRFC822DataForPlainTextMessage(v14, v21 == 0, 0);
        if (v33)
        {
          v34 = objc_alloc_init(MFBasicMessageDataSection);
          [(MFBasicMessageDataSection *)v34 setPartName:0];
          [(MFBasicMessageDataSection *)v34 setData:v33];
          [(MFBasicMessageDataSection *)v34 setComplete:1];
          [(MFBasicMessageDataSection *)v34 setPartial:1];
          [v17 addObject:v34];
        }

        goto LABEL_43;
      }

      if (a6 && ([v14 read] & 1) == 0)
      {
        *a6 |= 9uLL;
      }

      v32 = [v12 messageSize];
      if (v32 > [v70 fetchMaxBytes])
      {
        goto LABEL_40;
      }

LABEL_43:
    }

    v10 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  }

  while (v10);

  v35 = 128;
  if (v65)
  {
    v35 = 0x100000080;
  }

LABEL_49:
  if (a5)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_alloc_init(MEMORY[0x1E699B608]);
  [v60 persistenceWillBeginUpdates];
  v38 = [v63 addMessages:obj withMailbox:v57 newMessagesByOldMessage:v58 remoteIDs:v62 setFlags:v36 addPOPUIDs:0 dataSectionsByMessage:v67 generationWindow:v37];
  if ([v38 count])
  {
    v39 = objc_opt_new();
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __insertDAMessages_block_invoke;
    v77[3] = &unk_1E7AA5468;
    v40 = v39;
    v78 = v40;
    [v58 enumerateKeysAndObjectsUsingBlock:v77];
    [v63 willStartPersistenceDidAddMessages:v40];
    [v60 persistenceDidAddMessages:v38 generationWindow:v37];
    [v63 didFinishPersistenceDidAddMessages:v40];
    v41 = [v63 persistence];
    v42 = [v41 messageChangeManager];
    [v42 didReflectNewMessages:v38];
  }

  [v60 persistenceDidFinishUpdates];
  v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-259200.0];
  [v43 timeIntervalSince1970];
  v45 = v44;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v46 = v38;
  v47 = [v46 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v47)
  {
    v48 = *v74;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v74 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v73 + 1) + 8 * j);
        v51 = [v50 messageSize];
        if (v51 > [v70 fetchMaxBytes])
        {
          v52 = [v50 headersIfAvailable];
          [v63 updateThreadingInfoForMessage:v50 fromHeaders:v52];
        }

        if (a6)
        {
          [v50 dateReceivedAsTimeIntervalSince1970];
          if (v53 > v45)
          {
            if ([v50 conversationFlags])
            {
              *a6 |= 4uLL;
            }

            if (([v50 messageFlags] & 0x1000000) != 0)
            {
              *a6 |= 2uLL;
            }
          }
        }
      }

      v47 = [v46 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v47);
  }

  v54 = [v46 count];
  v55 = *MEMORY[0x1E69E9840];
  return v54;
}

void sub_1B05E38C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(a1);
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v14;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Caught exception %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B05E3848);
  }

  _Unwind_Resume(a1);
}

void sub_1B05E3B70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___nextClientID_block_invoke()
{
  v0 = _nextClientID___clientID;
  _nextClientID___clientID = &unk_1F2775988;
}

void sub_1B05E5034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    NSLog(&cfstr_SDCaughtExcept.isa);
    objc_end_catch();
    JUMPOUT(0x1B05E4F3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B05E588C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05E5988(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05E6C1C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__CFString *MFDBJournalMergeResultString(uint64_t a1)
{
  if (a1)
  {
    v1 = &stru_1F273A5E0;
    v2 = a1;
    if ((a1 & 2) != 0)
    {
      v1 = [&stru_1F273A5E0 stringByAppendingString:@"Failures "];
    }

    if (v2)
    {
      v3 = [(__CFString *)v1 stringByAppendingString:@"Interrupted"];

      v1 = v3;
    }
  }

  else
  {
    v1 = @"Success";
  }

  return v1;
}

void sub_1B05E7328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFDbJournal;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05E7410(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1B05E7510(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *MFMessageDeliveryStatusString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"EMMessageDeliveryStatusFatalError";
  }

  else
  {
    return off_1E7AA5580[a1];
  }
}

uint64_t _intersectsFunction(uint64_t value, uint64_t a2)
{
  if ((*a2 & 1) == 0)
  {
    value = CFSetContainsValue(*(a2 + 8), value);
    *a2 = value != 0;
  }

  return value;
}

uint64_t _subsetFunction(uint64_t value, uint64_t a2)
{
  if (*a2 == 1)
  {
    value = CFSetContainsValue(*(a2 + 8), value);
    *a2 = value != 0;
  }

  return value;
}

uint64_t _intersectFunction(void *value, uint64_t a2)
{
  result = CFSetContainsValue(*(a2 + 8), value);
  if (!result)
  {
    v5 = *a2;

    return [v5 addObject:value];
  }

  return result;
}

id _copyEmailDescription(void *a1)
{
  v1 = [a1 description];

  return v1;
}

uint64_t _emailEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = 0;
    if (!a1 || !a2)
    {
      return result;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    _emailEqual_cold_2();
  }

  if (!a2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _emailEqual_cold_1();
  }

  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqualToEmail:a2];
  }
}

void sub_1B05EACB8(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void _setUserInfoObjectForKey(void *a1, void *a2, void *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock(v10 + 10);
  v7 = *&v10[12]._os_unfair_lock_opaque;
  if (v5)
  {
    if (!v7)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
      v9 = *&v10[12]._os_unfair_lock_opaque;
      *&v10[12]._os_unfair_lock_opaque = v8;

      v7 = *&v10[12]._os_unfair_lock_opaque;
    }

    [v7 setObject:v5 forKey:v6];
  }

  else if (v7)
  {
    [v7 removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(v10 + 10);
}

void sub_1B05EAE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10)
{
  v13 = v12;
  os_unfair_lock_unlock(&a10[v13]);

  _Unwind_Resume(a1);
}

void sub_1B05EAF70(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v3));

  _Unwind_Resume(a1);
}

void sub_1B05EB894(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B05EC750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFFileArchive;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _archive_write_callback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 readerBlock];
  if (v7)
  {
    v8 = [v6 writerBlock];

    if (v8)
    {
      v9 = [v6 outputData];
      v10 = [v9 length];

      if (v10)
      {
        v11 = [v6 writerBlock];
        v12 = [v6 outputData];
        (v11)[2](v11, 0, v12);

        v13 = [v6 outputData];
        [v13 setLength:0];
      }
    }
  }

  v14 = [v6 outputData];
  [v14 appendBytes:a3 length:a4];

  return a4;
}

uint64_t _archive_close_callback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 outputData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 outputData];
    v6 = [MFFileArchiveDirectory rangeOfCentralDirectoryInData:v5];
    v8 = v7;

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 4294967266;
      archive_set_error();
    }

    else
    {
      v9 = [v2 outputData];
      [v9 setLength:v6 + v8];

      v4 = 0;
    }

    v10 = [v2 readerBlock];
    if (v10)
    {
      v11 = [v2 writerBlock];

      if (v11)
      {
        v12 = [v2 writerBlock];
        v13 = [v2 outputData];
        (v12)[2](v12, 0, v13);

        v14 = [v2 outputData];
        [v14 setLength:0];

        v15 = [v2 writerBlock];
        v15[2](v15, 0, 0);
      }
    }
  }

  return v4;
}

void sub_1B05F0AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = v11;

  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _comparePartialFetchResults(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 startOffset];
  v5 = [v3 startOffset];
  if (v4 < v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5 != v4;
  }

  return v6;
}

unint64_t _lockedFindRangeOfDownloadsWithUid(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3[1];
  if (v4)
  {
    v5 = [(__CFArray *)v4 count];
    v19.location = 0;
    v19.length = v5;
    v6 = CFArrayBSearchValues(v3[1], v19, a2, _compareDownloadsByUid, a2);
    v7 = v6;
    v8 = v5 - v6;
    if (v5 > v6)
    {
      v9 = 0;
      v10 = v6 - v5;
      while (1)
      {
        v11 = [(__CFArray *)v3[1] objectAtIndex:v7 + v9];
        v12 = [v11 uid];

        if (v12 != a2)
        {
          break;
        }

        ++v9;
        if (!(v10 + v9))
        {
          v9 = v8;
          break;
        }
      }

      if (v9 && v7)
      {
        do
        {
          v13 = v7 - 1;
          v14 = [(__CFArray *)v3[1] objectAtIndex:v7 - 1];
          v15 = [v14 uid];

          if (v15 != a2)
          {
            break;
          }

          ++v9;
          --v7;
        }

        while (v13);
      }
    }
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = v3[1];
    v3[1] = v16;

    v7 = 0;
  }

  return v7;
}

MFIMAPSimpleDownload *_getDownload(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = a1;
  v14 = a3;
  v15 = a8;
  [v13 mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(v13, a2);
  v18 = RangeOfDownloadsWithUid;
  v19 = v17;
  if (a7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:v14 range:a6 consumer:a7, v15];
    goto LABEL_17;
  }

  if (RangeOfDownloadsWithUid >= v17)
  {
    goto LABEL_13;
  }

  v30 = RangeOfDownloadsWithUid;
  v20 = RangeOfDownloadsWithUid;
  do
  {
    v21 = [v13[1] objectAtIndex:v20];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v22 = [v21 section];
    v23 = [v22 isEqualToString:v14];

    if (!v23)
    {
      goto LABEL_9;
    }

    if (!v15 || ([v21 mainConsumer], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "consumers"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "containsObject:", v15), v25, v24, v26))
    {
      v27 = v21;
    }

    else
    {
LABEL_9:
      v27 = 0;
    }

    if (v27)
    {
      break;
    }

    ++v20;
  }

  while (v20 < v19);
  v18 = v30;
  a2 = a2;
  if (!v27)
  {
LABEL_13:
    if (a4 == 0xFFFFFFFFLL)
    {
      v28 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:v14 estimatedLength:a5 consumer:v15];
    }

    else
    {
      v28 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:v14 length:a4 consumer:v15];
    }

LABEL_17:
    v27 = v28;
    if (v28)
    {
      [v13[1] insertObject:v28 atIndex:v18 + v19];
    }
  }

  [v13 mf_unlock];

  return v27;
}

void _lockedUpdateDownloadsInRange(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v20 = a3;
  if (a3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = a2 + a3;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13 type] != 8 && a2 < v10)
          {
            v15 = v20;
            v16 = a2;
            do
            {
              v17 = [v7[1] objectAtIndex:v16];
              [v17 handleFetchResult:v13];

              ++v16;
              --v15;
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v8 = v19;
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t _compareDownloadsByUid(void *a1, void *a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  if (a1 != a3)
  {
    v5 = [a1 uid];
  }

  if (a2 != v3)
  {
    LODWORD(v3) = [a2 uid];
  }

  if (v5 < v3)
  {
    return -1;
  }

  else
  {
    return v5 != v3;
  }
}

id _ef_log_MFIMAPMessageDownload()
{
  if (_ef_log_MFIMAPMessageDownload_onceToken != -1)
  {
    _ef_log_MFIMAPMessageDownload_cold_1();
  }

  v1 = _ef_log_MFIMAPMessageDownload_log;

  return v1;
}

void *IMAPCreateArrayForMessageFlags(uint64_t a1, int a2, int a3)
{
  v6 = objc_opt_new();
  v7 = 0;
  do
  {
    v8 = &sMessageFlagsTable + v7;
    if ((*(&sMessageFlagsTable + v7 + 20) & ~a2) == 0 || (v8[16] == 1 ? (v9 = a3 == 0) : (v9 = 1), !v9))
    {
      if ((*(v8 + 1) & a1) != 0)
      {
        [v6 addObject:*v8];
      }
    }

    v10 = v7 >= 0x168;
    v7 += 24;
  }

  while (!v10);
  return v6;
}

uint64_t IMAPMessageFlagsFromArray(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 0;
          while (![v6 ef_caseInsensitiveIsEqualToString:{*(&sMessageFlagsTable + v7), v11}])
          {
            v8 = v7 >= 0x168;
            v7 += 24;
            if (v8)
            {
              goto LABEL_13;
            }
          }

          v2 |= *(&sMessageFlagsTable + v7 + 8);
        }

LABEL_13:
        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t IMAPPermanentFlagsFromArray(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 0;
          while (![v6 ef_caseInsensitiveIsEqualToString:{*(&sMessageFlagsTable + v7), v11}])
          {
            v8 = v7 > 0x167;
            v7 += 24;
            if (v8)
            {
              goto LABEL_13;
            }
          }

          v2 = *(&sMessageFlagsTable + v7 + 20) | v2;
        }

LABEL_13:
        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t mf_isIMAPAtom(unsigned int a1)
{
  if ((a1 & 0x80) != 0)
  {
    return 0;
  }

  else
  {
    return (mf_isIMAPAtom_atomicMask[a1 >> 5] >> a1) & 1;
  }
}

id _nullOrCFTypeRetain(uint64_t a1, void *a2)
{
  if (a2)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void _nullOrCFTypeRelease(uint64_t a1, void *a2)
{
  if (a2)
  {
  }
}

__CFString *_nullOrCFTypeCopyDescription(uint64_t a1)
{
  if (a1)
  {
    return (*(MEMORY[0x1E695E9C0] + 24))();
  }

  else
  {
    return @"NIL";
  }
}

uint64_t _nullOrCFTypeEqual(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 != 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

CFMutableArrayRef createFixedMutableArray(void *a1)
{
  v2 = [a1 count];
  if (v2)
  {

    return CFArrayCreateMutableCopy(0, v2, a1);
  }

  else if (a1)
  {
    v4 = [MEMORY[0x1E695DEC8] array];

    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t response(void *a1)
{
  v2 = [a1 lookAhead];
  if (v2 == 42)
  {
    [a1 increment];
LABEL_7:
    if (([a1 parseSpace] & 1) == 0)
    {
      [a1 emitWarning:@"Expected space"];
    }

    response_without_tag(a1);
    goto LABEL_10;
  }

  if (v2 == 43)
  {
    [a1 increment];
    [objc_msgSend(a1 "response")];
    resp_text(a1);
    goto LABEL_10;
  }

  v3 = [a1 copyAtom];
  if (v3)
  {
    v4 = v3;
    [objc_msgSend(a1 "response")];

    goto LABEL_7;
  }

LABEL_10:
  if (*([a1 response] + 8))
  {
    result = [a1 lookAhead];
    if (result)
    {

      return [a1 emitWarning:@"Junk at end of response"];
    }
  }

  else
  {

    return [a1 emitError:@"Incomplete response"];
  }

  return result;
}

uint64_t MFCreateArrayForMessageFlags(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = &(&IMAPMessageFlagsTable)[v5];
    if (((&IMAPMessageFlagsTable)[v5 + 1] & a1) != 0 && (*(v6 + 16) != 1 || a2 != 0))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithCString:*v6 encoding:1];
      if (v4)
      {
        [v4 addObject:v8];
      }

      else
      {
        v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
      }
    }

    v9 = v5 >= 45;
    v5 += 3;
  }

  while (!v9);
  if (v4)
  {
    return v4;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E695DEC8]);

  return [v11 init];
}

uint64_t MFMessageFlagsFromArray(void *a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  v11[0] = 0;
  v11[1] = 0;
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      while (1)
      {
        v5 = [objc_msgSend(a1 objectAtIndex:{--v3), "dataUsingEncoding:allowLossyConversion:", 1, 1}];
        v6 = [v5 bytes];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

LABEL_8:
        if (!v3)
        {
          goto LABEL_13;
        }
      }

      v7 = 0;
      v8 = &qword_1E7AA5AC0;
      while ((*(v11 + v7) & 1) != 0 || strncasecmp(v6, *(v8 - 1), [v5 length]))
      {
        ++v7;
        v8 += 3;
        if (v7 == 16)
        {
          goto LABEL_8;
        }
      }

      *(v11 + v7) = 1;
      v4 |= *v8;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

void resp_text(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  if (![a1 match:"["])
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_50;
  }

  v2 = memchr([a1 start], 93, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
  v3 = [a1 start];
  v4 = v2;
  if (!v2)
  {
    v4 = [a1 end];
  }

  v5 = memchr(v3, 32, v4 - [a1 start]);
  if ([a1 match:"ALERT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_47;
  }

  if ([a1 match:"UNAVAILABLE" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 17;
    goto LABEL_47;
  }

  if ([a1 match:"AUTHENTICATIONFAILED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 18;
    goto LABEL_47;
  }

  if ([a1 match:"AUTHORIZATIONFAILED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 19;
    goto LABEL_47;
  }

  if ([a1 match:"EXPIRED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 20;
    goto LABEL_47;
  }

  if ([a1 match:"PRIVACYREQUIRED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 21;
    goto LABEL_47;
  }

  if ([a1 match:"CONTACTADMIN" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 22;
    goto LABEL_47;
  }

  if ([a1 match:"NOPERM" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 23;
    goto LABEL_47;
  }

  if ([a1 match:"INUSE" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 24;
    goto LABEL_47;
  }

  if ([a1 match:"EXPUNGEISSUED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 25;
    goto LABEL_47;
  }

  if ([a1 match:"CORRUPTION" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 26;
    goto LABEL_47;
  }

  if ([a1 match:"SERVERBUG" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 27;
    goto LABEL_47;
  }

  if ([a1 match:"CANNOT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 29;
    goto LABEL_47;
  }

  if ([a1 match:"LIMIT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 30;
    goto LABEL_47;
  }

  if ([a1 match:"OVERQUOTA" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 31;
    goto LABEL_47;
  }

  if ([a1 match:"ALREADYEXISTS" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 32;
    goto LABEL_47;
  }

  if ([a1 match:"NONEXISTENT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 33;
    goto LABEL_47;
  }

  if (([a1 match:"BADCHARSET" upToSpecial:v5] & 1) == 0 && !objc_msgSend(a1, "match:upToSpecial:", "BADCHARSET", v2))
  {
    if ([a1 match:"NEWNAME" upToSpecial:v5])
    {
      [a1 parseSpace];
      v10 = mailbox(a1);
      values = v10;
      [a1 parseSpace];
      v11 = mailbox(a1);
      v6 = 0;
      v28 = v11;
      if (v10 && v11)
      {
        v6 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
        v10 = values;
      }

      v7 = 3;
      goto LABEL_47;
    }

    if ([a1 match:"PARSE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 4;
      goto LABEL_47;
    }

    if ([a1 match:"READ-ONLY" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 6;
      goto LABEL_47;
    }

    if ([a1 match:"READ-WRITE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 7;
      goto LABEL_47;
    }

    if ([a1 match:"TRYCREATE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 8;
      goto LABEL_47;
    }

    if ([a1 match:"UIDNEXT" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 9;
      goto LABEL_47;
    }

    if ([a1 match:"HIGHESTMODSEQ" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 12;
      goto LABEL_47;
    }

    if ([a1 match:"UIDVALIDITY" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 10;
      goto LABEL_47;
    }

    if ([a1 match:"NOMODSEQ" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 13;
      goto LABEL_47;
    }

    if ([a1 match:"UNSEEN" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 11;
      goto LABEL_47;
    }

    if ([a1 match:"PERMANENTFLAGS" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = flags_array(a1);
      v7 = 5;
      goto LABEL_47;
    }

    if ([a1 match:"CAPABILITY" upToSpecial:v5])
    {
      v12 = [a1 end];
      if (v2)
      {
        [a1 setEnd:v2];
      }

      v13 = capability_array(a1);
      [a1 setEnd:v12];
      if (!v2)
      {
        v2 = [a1 end];
      }

      [a1 setStart:v2];
      v7 = 14;
      v6 = v13;
      goto LABEL_47;
    }

    if ([a1 match:"APPENDUID" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v14 = [a1 copyNumber];
      if (v14)
      {
        if (([a1 parseSpace] & 1) == 0)
        {
          [a1 emitWarning:@"Expected space"];
        }

        v15 = [a1 copyNumber];
        if (v15)
        {
          v16 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{v14, v15, 0}];
          v7 = 15;
LABEL_117:

          v6 = v16;
          goto LABEL_47;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = 0;
      v7 = 0;
      goto LABEL_117;
    }

    if (![a1 match:"COPYUID" upToSpecial:v5])
    {
      if ([a1 match:"CLIENTBUG" upToSpecial:v2])
      {
        v20 = MFLogGeneral();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(values) = 0;
          _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_INFO, "We did something bad: we just got back a CLIENTBUG from the server.", &values, 2u);
        }

        v6 = 0;
        v7 = 0;
      }

      else
      {
        if (!v2)
        {
          v2 = [a1 end];
        }

        v21 = [a1 start];
        if (v5)
        {
          v22 = [a1 copyStringFrom:v21 to:v5 withCaseOption:1];
          v5 = [a1 copyStringFrom:&v5->isa + 1 to:v2 withCaseOption:0];
        }

        else
        {
          v22 = [a1 copyStringFrom:v21 to:v2 withCaseOption:1];
        }

        v23 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
        v24 = &stru_1F273A5E0;
        if (v5)
        {
          v24 = v5;
        }

        v25 = [v23 initWithObjects:{v22, v24, 0}];

        v26 = v2;
        v6 = v25;
        [a1 setStart:v26];
        v7 = 34;
      }

      goto LABEL_47;
    }

    if (([a1 parseSpace] & 1) == 0)
    {
      [a1 emitWarning:@"Expected space"];
    }

    v17 = [a1 copyNumber];
    if (v17)
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v18 = [a1 copyMessageSet];
      if (v18)
      {
        if (([a1 parseSpace] & 1) == 0)
        {
          [a1 emitWarning:@"Expected space"];
        }

        v19 = [a1 copyMessageSet];
        if (v19)
        {
          v6 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{v17, v18, v19, 0}];
          v7 = 16;
LABEL_125:

          goto LABEL_47;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_125;
  }

  if ([a1 parseSpace])
  {
    v6 = [a1 copyArray];
  }

  else
  {
    v6 = 0;
  }

  v7 = 2;
LABEL_47:
  if (([a1 match:"]"] & 1) == 0)
  {
    [a1 emitWarning:@"Expected ]"];
  }

  [a1 parseSpace];
LABEL_50:
  v8 = [objc_allocWithZone(MEMORY[0x1E69AD6B0]) initWithBytes:objc_msgSend(a1 length:{"start"), objc_msgSend(a1, "end") - objc_msgSend(a1, "start")}];
  [a1 setEnd:{objc_msgSend(a1, "start")}];
  [objc_msgSend(a1 "response")];

  v9 = *MEMORY[0x1E69E9840];
}

void capability_response(void *a1)
{
  v2 = capability_array(a1);
  [objc_msgSend(a1 "response")];
}

void id_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a1 match:"(")]
  {
    while (([a1 match:"]") & 1) == 0)
    {
      v2 = [a1 copyNilOrString];
      [a1 parseSpace];
      v3 = [a1 copyNilOrString];
      [a1 parseSpace];
      if (v2 && v3)
      {
        [v4 mf_addObject:v3 forKey:v2];
      }
    }
  }

  else if (([a1 match:"NIL"] & 1) == 0)
  {
    [a1 emitWarning:@"Expected list or NIL"];
  }

  [objc_msgSend(a1 "response")];
}

void flags_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = flags_array(a1);
  [objc_msgSend(a1 "response")];
  [objc_msgSend(a1 "response")];
}

void status_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = mailbox(a1);
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v3 = [a1 copyArray];
  if (!v3)
  {
    v6 = [a1 end] - 1;
    do
    {
      v7 = v6;
      if (v6 <= [a1 start])
      {
        break;
      }

      v6 = (v7 - 1);
    }

    while (*v7 != 41);
      ;
    }

    if (i <= [a1 start] || (objc_msgSend(a1, "setStart:", i), (v3 = objc_msgSend(a1, "copyArray")) == 0))
    {
      theDict = 0;
      goto LABEL_34;
    }
  }

  v4 = v3;
  v5 = [v3 count];
  if (v5 <= 1)
  {
    theDict = [MEMORY[0x1E695DF20] dictionary];
    goto LABEL_33;
  }

  v9 = v5;
  v18 = v2;
  theDict = CFDictionaryCreateMutable(0, v5 >> 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (j = 1; j < v9; j += 2)
  {
    v11 = [v4 objectAtIndex:{j - 1, v18}];
    v12 = [v4 objectAtIndex:j];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_29;
    }

    v13 = 0;
    do
    {
      v14 = status_response_KnownStatusCodes[v13];
      v15 = *v14;
      if (*v14 && [(__CFString *)v11 caseInsensitiveCompare:*v14])
      {
        v15 = 0;
      }

      if (v13 > 4)
      {
        break;
      }

      ++v13;
    }

    while (!v15);
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v16 = theDict;
      v17 = v15;
    }

    else
    {
LABEL_29:
      v16 = theDict;
      v17 = v11;
    }

    CFDictionarySetValue(v16, v17, v12);
  }

  v2 = v18;
LABEL_33:

LABEL_34:
  [objc_msgSend(a1 "response")];
}

void search_response(void *a1)
{
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  [objc_msgSend(a1 "response")];
  if ([a1 parseSpace])
  {
    do
    {
      v2 = [a1 copyNumber];
      if (!v2)
      {
        break;
      }

      v3 = v2;
      CFArrayAppendValue(theArray, v2);
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  [objc_msgSend(a1 "response")];
}

void list_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = flags_array(a1);
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v3 = [a1 copyNilOrString];
  if (![v3 length])
  {

    v3 = 0;
  }

  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v11 = mailbox(a1);
  if (v2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(__CFArray *)v2 count];
    if (v5)
    {
      v6 = 0;
      do
      {
        while (1)
        {
          v7 = [(__CFArray *)v2 objectAtIndex:--v5];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

LABEL_18:
          if (!v5)
          {
            goto LABEL_21;
          }
        }

        v8 = 0;
        while ([(__CFString *)*(&IMAPMailboxAttributeEntries + v8) compare:v7 options:1])
        {
          v9 = v8 > 0x5F;
          v8 += 16;
          if (v9)
          {
            [v4 insertObject:v7 atIndex:0];
            goto LABEL_18;
          }
        }

        v6 |= *(&IMAPMailboxAttributeEntries + v8 + 8);
      }

      while (v5);
LABEL_21:
      v5 = v6;
    }

    v10 = v4;
  }

  else
  {
    v10 = 0;
    v5 = 0;
  }

  [objc_msgSend(a1 "response")];
}

void fetch_response(void *a1)
{
  v66 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  if (([a1 match:"(") & 1] == 0)
  {
    [a1 emitError:@"Invalid FETCH response"];
  }

  v2 = [a1 start];
  if (v2 < [a1 end])
  {
    v4 = 0;
    v60 = v64;
    v5 = 1;
    v6 = ")";
    v7 = 0x1E695D000uLL;
    *&v3 = 138412290;
    v59 = v3;
    while (1)
    {
      if ([a1 match:{v6, v59, v60}])
      {
        goto LABEL_156;
      }

      if (v4)
      {
        if (([a1 parseSpace] & 1) == 0 && v5)
        {
          [a1 emitWarning:@"Expected space"];
          goto LABEL_156;
        }
      }

      else
      {
        v4 = objc_alloc_init(*(v7 + 3952));
      }

      v8 = memchr([a1 start], 32, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
      if (!v8)
      {
LABEL_154:
        v58 = @"Couldn't parse FETCH: no space character in input";
        goto LABEL_155;
      }

      v9 = v8;
      if ([a1 match:"BODYSTRUCTURE" upToSpecial:v8] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "BODY", v9))
      {
        break;
      }

      if ([a1 match:"ENVELOPE" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
        goto LABEL_17;
      }

      if ([a1 match:"UID" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 8;
        goto LABEL_17;
      }

      if ([a1 match:"X-GM-MSGID" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 9;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.SIZE" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 3;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 7;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.HEADER" upToSpecial:v9] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "HEADER", v9))
      {
        v10 = 0;
        v11 = 0;
        v12 = 4;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.TEXT" upToSpecial:v9] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "TEXT", v9))
      {
        v10 = 0;
        v11 = 0;
        v12 = 5;
        goto LABEL_17;
      }

      if ([a1 match:"FLAGS" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 10;
        goto LABEL_17;
      }

      if ([a1 match:"MODSEQ" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 11;
        goto LABEL_17;
      }

      if ([a1 match:"INTERNALDATE" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 2;
        goto LABEL_17;
      }

      if ([a1 match:"BODY["])
      {
        v49 = [a1 start];
        if ([a1 match:"HEADER."])
        {
          [a1 setStart:v9 + 1];
          v50 = [a1 copyArray];
          if (v50)
          {
          }

          else
          {
            [a1 emitWarning:@"Unable to parse header keys array"];
          }

          v54 = memchr([a1 start], 32, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
          if (!v54)
          {
            goto LABEL_154;
          }

          v9 = v54;
LABEL_145:
          v11 = 0;
          v12 = 4;
        }

        else
        {
          if ([a1 match:"HEADER" upToSpecial:v9])
          {
            goto LABEL_145;
          }

          v52 = memchr([a1 start], 93, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
          if (!v52)
          {
            v58 = @"Couldn't parse FETCH: no square brace character in input";
            goto LABEL_155;
          }

          v53 = v52;
          v11 = [a1 copyStringFrom:v49 to:v52 withCaseOption:1];
          [a1 setStart:v53 + 1];
          v12 = 7;
        }

        if ([a1 match:"<"])
        {
          *buf = 0xAAAAAAAAAAAAAAAALL;
          if ([a1 getNumber:buf])
          {
            v10 = *buf;
            v55 = [a1 match:">"];
            v56 = @"Expected >";
            if (v55)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v10 = 0;
            v56 = @"Expected number";
          }

          [a1 emitWarning:v56];
        }

        else
        {
          v10 = 0;
        }

LABEL_17:
        [a1 isValid];
        goto LABEL_18;
      }

      v51 = [a1 match:"X-APPLE-REMOTE-LINKS" upToSpecial:v9];
      if (v51)
      {
        v12 = 12;
      }

      else
      {
        v12 = 0;
      }

      v11 = 0;
      v10 = 0;
      if ([a1 isValid] && !v51)
      {
        v58 = @"Unrecognized FETCH key";
LABEL_155:
        [a1 emitError:v58];
        goto LABEL_156;
      }

LABEL_18:
      [a1 setStart:v9];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      [a1 logReadChars];
      v13 = [[MFIMAPFetchResult alloc] initWithType:v12];
      v5 = 1;
      if (v12 > 6)
      {
        if (v12 > 9)
        {
          if (v12 == 10)
          {
            if ([a1 match:{"(") && (objc_msgSend(a1, "match:", v6) & 1) == 0}]
            {
              v61 = v4;
              v62 = 0;
              v23 = 0;
              v29 = 1;
              do
              {
                if ((v29 & 1) == 0)
                {
                  while (1)
                  {
                    v30 = [a1 start];
                    if (v30 >= [a1 end] || (objc_msgSend(a1, "parseSpace") & 1) != 0 || objc_msgSend(a1, "lookAhead") == 41)
                    {
                      break;
                    }

                    [a1 increment];
                  }

                  if ([a1 match:v6])
                  {
                    break;
                  }
                }

                if ([a1 lookAhead] == 92)
                {
                  v31 = [a1 start] + 1;
                  if (v31 < [a1 end] && *(objc_msgSend(a1, "start") + 1) == 42)
                  {
                    v32 = ([a1 start] + 2);
                  }

                  else
                  {
                    v35 = [a1 start] + 1;
                    do
                    {
                      v32 = v35;
                      if (v35 >= [a1 end])
                      {
                        break;
                      }

                      ++v35;
                    }

                    while (mf_isIMAPAtom(*v32));
                  }

                  if (&v32[-[a1 start]] < 2)
                  {
                    break;
                  }

                  v33 = v6;
                  v36 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{v32, 0}];
                  [a1 setStart:v32];
                }

                else
                {
                  v33 = v6;
                  if ([a1 lookAhead] == 34)
                  {
                    v34 = [a1 copyQuotedString];
                  }

                  else
                  {
                    v34 = [a1 copyAtom];
                  }

                  v36 = v34;
                }

                if (!v36)
                {
                  v6 = v33;
                  v4 = v61;
                  break;
                }

                v37 = v23;
                v38 = v7;
                v39 = [v36 dataUsingEncoding:1 allowLossyConversion:1];
                v40 = [v39 bytes];
                v41 = [v39 length];
                v42 = &IMAPMessageFlagsTable;
                v43 = 15;
                do
                {
                  v44 = *v42;
                  v42 += 3;
                  v45 = strncasecmp(v40, v44, v41);
                  if (v45)
                  {
                    v46 = v43 == 0;
                  }

                  else
                  {
                    v46 = 1;
                  }

                  --v43;
                }

                while (!v46);
                if (v45)
                {
                  v7 = v38;
                  v23 = v37;
                  if (!v37)
                  {
                    v23 = objc_alloc_init(*(v7 + 3952));
                  }

                  [v23 addObject:v36];
                  v6 = v33;
                }

                else
                {
                  v62 |= *(v42 - 2);
                  v6 = v33;
                  v7 = v38;
                  v23 = v37;
                }

                v4 = v61;

                v47 = [a1 match:v6];
                v29 = 0;
              }

              while (!v47);
            }

            else
            {
              v23 = 0;
              v62 = 0;
            }

            [(MFIMAPFetchResult *)v13 setMessageFlags:v62];
            [(MFIMAPFetchResult *)v13 setCustomFlagsArray:v23];

            goto LABEL_112;
          }

          if (v12 == 11)
          {
            if (![a1 match:"(")]
            {
              goto LABEL_112;
            }

            v26 = [a1 copyNumber];
            -[MFIMAPFetchResult setModSequenceNumber:](v13, "setModSequenceNumber:", [v26 unsignedLongLongValue]);

            if ([a1 match:v6])
            {
              goto LABEL_112;
            }

            v27 = a1;
            v28 = @"Expected a right paren";
          }

          else
          {
            v17 = [a1 copyArray];
            if (v17 || ([a1 match:"NIL"] & 1) != 0)
            {
              v63[0] = MEMORY[0x1E69E9820];
              v63[1] = 3221225472;
              v64[0] = __fetch_response_block_invoke;
              v64[1] = &unk_1E7AA5CE0;
              v64[2] = a1;
              v18 = [v17 ef_compactMap:v63];

              [(MFIMAPFetchResult *)v13 setAppleRemoteLinks:v18];
              goto LABEL_112;
            }

            v27 = a1;
            v28 = @"Couldn't parse FETCH: X-APPLE-REMOTE-LINKS has invalid format";
          }

          [v27 emitError:v28];
          goto LABEL_112;
        }

        if (v12 != 7)
        {
          v14 = [a1 copyNumber];
          if (v12 == 8)
          {
            -[MFIMAPFetchResult setUid:](v13, "setUid:", [v14 unsignedIntValue]);
          }

          else
          {
            -[MFIMAPFetchResult setUniqueRemoteId:](v13, "setUniqueRemoteId:", [v14 unsignedLongLongValue]);
          }

          goto LABEL_61;
        }

        v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
        [v19 appendString:@"BODY.PEEK["];
        if (v11)
        {
          [v19 appendString:v11];
        }

        [v19 appendString:@"]"];
        v20 = body_data(a1, v11);
        if (v11)
        {
          [(MFIMAPFetchResult *)v13 setSection:v11];
        }

        if (v10)
        {
          [(MFIMAPFetchResult *)v13 setStartOffset:v10];
        }

LABEL_65:
        if (v20)
        {
          [(MFIMAPFetchResult *)v13 setFetchData:v20];
        }

        goto LABEL_112;
      }

      if (v12 > 3)
      {
        if (v12 == 4)
        {
          v21 = a1;
          v22 = @"HEADER";
        }

        else
        {
          if (v12 != 5)
          {
            v15 = [a1 copyArrayAllowingNulls:1];
            if (v15)
            {
              TypeID = CFArrayGetTypeID();
              if (TypeID != CFGetTypeID(v15))
              {

                v15 = 0;
              }
            }

            v5 = v15 != 0;
            [(MFIMAPFetchResult *)v13 setBodyStructure:v15];

            goto LABEL_113;
          }

          v21 = a1;
          v22 = @"TEXT";
        }

        v20 = body_data(v21, v22);
        if (v10)
        {
          [(MFIMAPFetchResult *)v13 setStartOffset:v10];
        }

        goto LABEL_65;
      }

      switch(v12)
      {
        case 1:
          v14 = [a1 copyArray];
          [(MFIMAPFetchResult *)v13 setEnvelope:v14];
          goto LABEL_61;
        case 2:
          v14 = [a1 copyDateTime];
          [(MFIMAPFetchResult *)v13 setInternalDate:v14];
          v24 = MFLogGeneral();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v14 description];
            *buf = v59;
            *&buf[4] = v25;
            _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_INFO, "#Power [Server Fetch Time] InternalDate=%@", buf, 0xCu);
          }

LABEL_61:

LABEL_112:
          v5 = 1;
          break;
        case 3:
          v14 = [a1 copyNumber];
          -[MFIMAPFetchResult setMessageSize:](v13, "setMessageSize:", [v14 unsignedIntValue]);
          goto LABEL_61;
      }

LABEL_113:
      [v4 addObject:v13];

      v48 = [a1 start];
      if (v48 >= [a1 end])
      {
        goto LABEL_156;
      }
    }

    v10 = 0;
    v11 = 0;
    v12 = 6;
    goto LABEL_17;
  }

  v4 = 0;
LABEL_156:
  [objc_msgSend(a1 "response")];
  if (v4)
  {
  }

  v57 = *MEMORY[0x1E69E9840];
}

void quotaroot_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if ([a1 parseSpace])
  {
    v2 = [a1 copyAString];
    if (v2 && [a1 parseSpace])
    {
      allocator = 0;
      v3 = MEMORY[0x1E695E9C0];
      do
      {
        v4 = [a1 copyAString];
        if (!v4)
        {
          break;
        }

        v5 = v4;
        Mutable = allocator;
        if (!allocator)
        {
          Mutable = CFArrayCreateMutable(0, 0, v3);
        }

        allocator = Mutable;
        [(__CFArray *)Mutable addObject:v5];
      }

      while (([a1 parseSpace] & 1) != 0);
    }

    else
    {
      allocator = 0;
    }
  }

  else
  {
    allocator = 0;
    v2 = 0;
  }

  [objc_msgSend(a1 "response")];
}

void quota_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = [a1 copyAString];
  if (v2 && [a1 parseSpace] && objc_msgSend(a1, "match:", "("))
  {
    allocator = 0;
    v3 = MEMORY[0x1E695E528];
    v4 = MEMORY[0x1E695E9E8];
    do
    {
      v5 = [a1 copyAtom];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v7 = [a1 copyNumber];
      if (v5)
      {
        Mutable = CFDictionaryCreateMutable(0, 3, v3, v4);
        [(__CFDictionary *)Mutable setObject:v5 forKey:@"_IMAPNameQuotaKey"];
        if (v6)
        {
          [(__CFDictionary *)Mutable setObject:v6 forKey:@"_IMAPCurrentUsageQuotaKey"];
        }

        if (v7)
        {
          [(__CFDictionary *)Mutable setObject:v7 forKey:@"_IMAPMaxUsageQuotaKey"];
        }

        v9 = allocator;
        if (!allocator)
        {
          v9 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        }

        allocator = v9;
        [(__CFArray *)v9 addObject:Mutable];
      }
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  else
  {
    allocator = 0;
  }

  [objc_msgSend(a1 "response")];
}

uint64_t esearch_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  v2 = [a1 connection];

  return [v2 parseESearchResponseWithContext:a1];
}

void push_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [a1 copyNilOrString];
  [a1 parseSpace];
  v3 = [a1 copyNilOrString];
  v4 = v3;
  if (v2 && v3)
  {
    do
    {
      [v6 mf_addObject:v4 forKey:v2];

      [a1 parseSpace];
      v2 = [a1 copyNilOrString];
      [a1 parseSpace];
      v5 = [a1 copyNilOrString];
      v4 = v5;
    }

    while (v2 && v5);
  }

  [objc_msgSend(a1 "response")];
}

void namespace_response(void *a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __namespace_response_block_invoke;
  v8 = &unk_1E7AA5D08;
  v9 = a1;
  v2 = __namespace_response_block_invoke(v6);
  v3 = v7(v6);
  v4 = v7(v6);
  v5 = [a1 response];
  [v5 setResponseType:22];
  [v5 setPrivateNamespaces:v2];
  [v5 setPublicNamespaces:v3];
  [v5 setSharedNamespaces:v4];
}

void other_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  [a1 parseSpace];
  v2 = [a1 copyAtom];
  if ([a1 parseSpace])
  {
    v8 = 0;
    while (1)
    {
      v3 = [a1 start];
      if (v3 >= [a1 end])
      {
        goto LABEL_19;
      }

      v4 = [a1 lookAhead];
      switch(v4)
      {
        case '""':
          v5 = [a1 copyQuotedString];
          break;
        case '(':
          v5 = [a1 copyArray];
          break;
        case '{':
          v5 = [a1 copyLiteralString];
          break;
        default:
          v6 = [a1 copyNumber];
          v7 = v8;
          if (v6)
          {
            goto LABEL_13;
          }

          v5 = [a1 copyAtom];
          break;
      }

      v6 = v5;
      v7 = v8;
      if (v6)
      {
LABEL_13:
        if (!v7)
        {
          v7 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
        }

        v8 = v7;
        [v7 addObject:v6];
      }

      if (([a1 parseSpace] & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = 0;
LABEL_19:
  [objc_msgSend(a1 "response")];
}

__CFString *mailbox(void *a1)
{
  v1 = [a1 copyAString];
  if (!v1 || [@"INBOX" caseInsensitiveCompare:v1])
  {
    return v1;
  }

  return @"INBOX";
}

__CFArray *flags_array(void *a1)
{
  if (![a1 match:"(")]
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  if (([a1 match:"]") & 1) == 0)
  {
    while (1)
    {
      if ([a1 lookAhead] == 92)
      {
        v3 = [a1 start] + 1;
        if (v3 < [a1 end] && *(objc_msgSend(a1, "start") + 1) == 42)
        {
          v4 = ([a1 start] + 2);
        }

        else
        {
          v6 = [a1 start] + 1;
          do
          {
            v4 = v6;
            if (v6 >= [a1 end])
            {
              break;
            }

            ++v6;
          }

          while (mf_isIMAPAtom(*v4));
        }

        if (&v4[-[a1 start]] < 2)
        {
          return v2;
        }

        v7 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{v4, 0}];
        [a1 setStart:v4];
        if (!v7)
        {
          return v2;
        }
      }

      else
      {
        if ([a1 lookAhead] == 34)
        {
          v5 = [a1 copyQuotedString];
        }

        else
        {
          v5 = [a1 copyAtom];
        }

        v7 = v5;
        if (!v5)
        {
          return v2;
        }
      }

      CFArrayAppendValue(v2, v7);

      if (![a1 match:"]"))
      {
        while (1)
        {
          v8 = [a1 start];
          if (v8 >= [a1 end] || (objc_msgSend(a1, "parseSpace") & 1) != 0 || objc_msgSend(a1, "lookAhead") == 41)
          {
            break;
          }

          [a1 increment];
        }

        if (([a1 match:"]") & 1) == 0)
        {
          continue;
        }
      }

      return v2;
    }
  }

  return v2;
}

void *capability_array(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  if ([a1 parseSpace])
  {
    do
    {
        ;
      }

      if (i > [a1 start])
      {
        v4 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{i, 1}];
        [a1 setStart:i];
        [v2 addObject:v4];
      }
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  return v2;
}

uint64_t body_data(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(a1 "response")];
  if (v4)
  {
    v5 = v4;
    if (([a1 literalWithResponseConsumer:v4 section:a2] & 1) == 0)
    {
      [v5 appendData:nilOrString(a1) forSection:a2];
    }

    return 0;
  }

  else
  {
    result = [a1 copyLiteral];
    if (!result)
    {

      return nilOrString(a1);
    }
  }

  return result;
}

uint64_t __fetch_response_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DFF8];

    return [v4 ef_urlWithString:a2];
  }

  else
  {
    [*(a1 + 32) emitWarning:@"X-APPLE-REMOTE-LINKS contains non-string value"];
    return 0;
  }
}

uint64_t nilOrString(void *a1)
{
  result = [a1 copyNilOrString];
  if (result)
  {
    v2 = result;
    v3 = MFCreateDataWithString();

    v4 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithImmutableData:v3];
    return v4;
  }

  return result;
}

void *__namespace_response_block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) parseSpace] & 1) == 0)
  {
    [*(a1 + 32) emitWarning:@"Expected space"];
  }

  v2 = [*(a1 + 32) copyArrayAllowingNulls:1];
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    if (Count >= 1)
    {
      v6 = 0;
      v23 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 == CFArrayGetTypeID())
          {
            v10 = CFArrayGetCount(v8);
            if (v10 >= 2)
            {
              v11 = v10;
              v12 = CFArrayGetValueAtIndex(v8, 0);
              v13 = CFArrayGetValueAtIndex(v8, 1);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                [*(a1 + 32) emitError:{@"couldn't parse namespace response: prefix and/or delimiter were not strings", v23}];

                v5 = 0;
              }

              v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
              [v14 setObject:v12 forKeyedSubscript:@"_IMAPNamespacePrefixKey"];
              if (v13)
              {
                [v14 setObject:v13 forKeyedSubscript:@"_IMAPNamespaceDelimiterKey"];
              }

              if (v11 == 2)
              {
                Count = v23;
              }

              else
              {
                if (v11)
                {
                  [*(a1 + 32) emitError:@"couldn't parse namespace response extensions: not enough values for keys"];
                  v20 = v5;
                  v5 = 0;
                }

                else
                {
                  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:(v11 >> 1) - 1];
                  v15 = 2;
                  do
                  {
                    v16 = CFArrayGetValueAtIndex(v8, v15);
                    v17 = v15 + 1;
                    v18 = CFArrayGetValueAtIndex(v8, v15 + 1);
                    if (v16 && (v19 = v18) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      [v24 setObject:v19 forKeyedSubscript:v16];
                    }

                    else
                    {
                      [*(a1 + 32) emitError:{@"couldn't parse namespace response extensions: invalid key or value", v23}];

                      v5 = 0;
                    }

                    v15 = v17 + 1;
                  }

                  while (v17 + 1 < v11);
                  v20 = v24;
                  if ([v24 count])
                  {
                    [v14 setObject:v24 forKeyedSubscript:@"_IMAPNamespaceExtensionsKey"];
                  }
                }

                Count = v23;
              }

              [v5 addObject:{v14, v23}];
            }
          }
        }

        ++v6;
      }

      while (v6 != Count);
    }

    CFRelease(v3);
  }

  else
  {
    v21 = [*(a1 + 32) copyAtom];
    if ([v21 caseInsensitiveCompare:@"NIL"])
    {
      [*(a1 + 32) emitError:@"couldn't parse NAMESPACE: unexpected atom"];
    }

    return 0;
  }

  return v5;
}

void *response_without_tag(void *a1)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (![a1 getNumber:&v7])
  {
    if ([objc_msgSend(a1 "response")])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    result = matchResponseTableEntry(a1, v6);
    if (!result)
    {
      return result;
    }

    v5 = result[2];
    if (!v5)
    {
      return result;
    }

    return v5(a1);
  }

  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = v7;
  matched = matchResponseTableEntry(a1, 4);
  result = [objc_msgSend(a1 "response")];
  if (matched)
  {
    v5 = matched[2];
    if (v5)
    {
      return v5(a1);
    }
  }

  return result;
}

void *matchResponseTableEntry(void *a1, int a2)
{
  v4 = [a1 nextSeparator];
  v5 = 0;
  v6 = 0;
  v7 = v4 - [a1 start];
  while (1)
  {
    if ((ResponseTypeTable[v6 + 3] & a2) == 0)
    {
      goto LABEL_6;
    }

    v8 = LODWORD(ResponseTypeTable[v6]);
    if (!v8)
    {
      break;
    }

    if (v7 == v8)
    {
      v9 = ResponseTypeTable[v6 + 1];
      if (!strncasecmp(v9, [a1 start], v7))
      {
        goto LABEL_10;
      }
    }

LABEL_6:
    ++v5;
    v10 = v6 >= 96;
    v6 += 4;
    if (v10)
    {
      return 0;
    }
  }

  v9 = ResponseTypeTable[v6 + 1];
LABEL_10:
  [a1 match:v9];
  [objc_msgSend(a1 "response")];
  return &ResponseTypeTable[v6];
}

id MFMailCopyEventWithExternalIdentifierAndPersistentStoreID(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v22 = a2;
  MFMailCopySharedEventStore();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = v30 = 0u;
  v3 = [v21 sources];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = *v28;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 externalID];
        v9 = [v8 isEqualToString:v22];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v21 calendarItemsWithExternalIdentifier:v20];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 calendar];
          v16 = [v15 source];
          v17 = [v16 isEqual:v4];

          if (v17)
          {
            v11 = v14;
            goto LABEL_22;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

id MFMailCopySharedEventStore()
{
  if (MFMailCopySharedEventStore_onceToken != -1)
  {
    MFMailCopySharedEventStore_cold_1();
  }

  v1 = MFMailCopySharedEventStore_sEventStore;

  return v1;
}

uint64_t MFMailGetEventUIDForUniqueIdentifierAndPersistentStoreID(void *a1, void *a2)
{
  v2 = MFMailCopyEventWithExternalIdentifierAndPersistentStoreID(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rowID];
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

void __MFMailCopySharedEventStore_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6966A18]);
  v1 = MFMailCopySharedEventStore_sEventStore;
  MFMailCopySharedEventStore_sEventStore = v0;
}

void sub_1B05FCFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = MFLegacyIMAPMailboxTaskManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05FF6A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  os_unfair_lock_unlock(v14 + 3);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 144), 8);

  _Unwind_Resume(a1);
}

void compactMessagesToUID(void *a1, uint64_t a2, unint64_t a3)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v36[0] = @"uid";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v36[1] = @"limit";
  v37[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v37[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [MFPowerController powerlog:@"compactMessagesToUID" eventData:v8];

  if (a2)
  {
    v9 = [v5 account];
    v10 = [v5 mailbox];
    v11 = [v9 storeForMailboxUid:v10];

    v12 = [v11 serverMessagePersistence];
    v13 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{1, a2}];
    v14 = [v12 serverMessagesForIMAPUIDs:v13 limit:*MEMORY[0x1E699B3A8] returnLastEntries:0];

    if ([v14 count] <= a3)
    {
      v21 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v5[11];
        v29 = 138543874;
        v30 = v22;
        v31 = 1024;
        *v32 = [v14 count];
        *&v32[4] = 1024;
        *&v32[6] = a3;
        _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Not compacting messages. Found %u (<= %u).", &v29, 0x18u);
      }

      goto LABEL_14;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v5[11];
        v29 = 138543874;
        v30 = v16;
        v31 = 1024;
        *v32 = [v14 count];
        *&v32[4] = 1024;
        *&v32[6] = a3;
        v17 = "%{public}@: Compacting all messages. Found %u (> %u).";
        v18 = v15;
        v19 = 24;
LABEL_12:
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, v17, &v29, v19);
      }
    }

    else
    {
      v15 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v5[11];
        v29 = 138544130;
        v30 = v23;
        v31 = 2048;
        *v32 = a2;
        *&v32[8] = 1024;
        v33 = [v14 count];
        v34 = 1024;
        v35 = a3;
        v17 = "%{public}@: Compacting messages with UIDs <= %lu. Found %u (> %u).";
        v18 = v15;
        v19 = 34;
        goto LABEL_12;
      }
    }

    v21 = [v14 valueForKey:@"remoteID"];
    v24 = [v5 library];
    v25 = [v24 messageChangeManager];
    v26 = [v5 mailbox];
    v27 = [v26 URL];
    [v25 reflectDeletedMessagesWithRemoteIDs:v21 mailboxURL:v27];

LABEL_14:
    goto LABEL_15;
  }

  v11 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v5[11];
    v29 = 138543362;
    v30 = v20;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: No messages to compact", &v29, 0xCu);
  }

LABEL_15:

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1B0600E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id fetchArgumentsForCriterion(void *a1, int a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v82 = a1;
  v3 = needUTF8ForCriterion(v82);
  v81 = [v82 expression];
  if ((v3 & a2) == 1)
  {
    [MEMORY[0x1E695DF70] arrayWithObjects:{@"CHARSET", @"UTF-8", 0}];
  }

  else
  {
    [MEMORY[0x1E695DF70] array];
  }
  v88 = ;
  v4 = [v82 criterionType];
  if (v4 > 27)
  {
    if (v4 <= 39)
    {
      if (v4 == 28)
      {
        v31 = [v82 expression];
        v32 = [v31 integerValue];

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v115[0] = @"$MailFlagBit0";
        v115[1] = @"$MailFlagBit1";
        v115[2] = @"$MailFlagBit2";
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
        obj = v33;
        v34 = [v33 countByEnumeratingWithState:&v89 objects:v116 count:16];
        if (v34)
        {
          v35 = 0;
          v36 = *v90;
          v37 = ~v32;
          do
          {
            v38 = 0;
            v84 = v35 + v34;
            do
            {
              if (*v90 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v89 + 1) + 8 * v38);
              v40 = [MEMORY[0x1E696AD60] string];
              v41 = v40;
              if (((1 << v35) & v37) != 0)
              {
                v42 = @"UNKEYWORD ";
              }

              else
              {
                v42 = @"KEYWORD ";
              }

              [v40 appendString:v42];
              [v41 appendString:v39];
              [v88 addObject:v41];

              LOBYTE(v35) = v35 + 1;
              ++v38;
            }

            while (v34 != v38);
            v33 = obj;
            v34 = [obj countByEnumeratingWithState:&v89 objects:v116 count:16];
            v35 = v84;
          }

          while (v34);
        }

        goto LABEL_143;
      }

      if (v4 == 33)
      {
        goto LABEL_40;
      }

      if (v4 != 35)
      {
        goto LABEL_146;
      }

      v12 = @"FROM";
    }

    else
    {
      if (v4 > 45)
      {
        if (v4 != 46 && v4 != 49)
        {
          goto LABEL_146;
        }

LABEL_37:
        v15 = MFLogGeneral();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v122 = v82;
          _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Ignoring criterion %@ IMAP search", buf, 0xCu);
        }

        goto LABEL_143;
      }

      if (v4 == 40)
      {
        v12 = @"TO";
      }

      else
      {
        if (v4 != 41)
        {
          goto LABEL_146;
        }

        v12 = @"CC";
      }
    }

    [v88 addObject:v12];
    addArgumentsForExpression(v81, v3, v88);
    goto LABEL_143;
  }

  if (v4 <= 10)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        if (v4 == 9)
        {
          objc_msgSend(v88, "addObject:", @"(OR TO");
          addArgumentsForExpression(v81, v3, v88);
          [v88 addObject:@"CC"];
          addArgumentsForExpression(v81, v3, v88);
          [v88 addObject:@""]);
          goto LABEL_143;
        }

        goto LABEL_146;
      }

LABEL_40:
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __fetchArgumentsForCriterion_block_invoke;
      v105[3] = &unk_1E7AA6108;
      v17 = v16;
      v106 = v17;
      [v82 tokenizeUsingTokenizationHandler:v105];
      v18 = v17;
      v19 = v88;
      v20 = [v18 count];
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = [v18 lastObject];
          [v19 addObjectsFromArray:v21];
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v83 = v18;
          v43 = [v83 countByEnumeratingWithState:&v111 objects:buf count:16];
          if (v43)
          {
            v85 = *v112;
            v44 = 1;
            do
            {
              obja = v43;
              for (i = 0; i != obja; i = i + 1)
              {
                if (*v112 != v85)
                {
                  objc_enumerationMutation(v83);
                }

                v46 = *(*(&v111 + 1) + 8 * i);
                if (v44)
                {
                  v109 = 0u;
                  v110 = 0u;
                  v107 = 0u;
                  v108 = 0u;
                  v47 = v46;
                  v48 = [v47 countByEnumeratingWithState:&v107 objects:v120 count:16];
                  v44 = v48 == 0;
                  if (v48)
                  {
                    v49 = *v108;
                    v50 = 1;
                    do
                    {
                      for (j = 0; j != v48; ++j)
                      {
                        if (*v108 != v49)
                        {
                          objc_enumerationMutation(v47);
                        }

                        if (v50)
                        {
                          v52 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@"), *(*(&v107 + 1) + 8 * j);
                          [v19 addObject:v52];
                        }

                        else
                        {
                          [v19 addObject:*(*(&v107 + 1) + 8 * j)];
                        }

                        v50 = 0;
                      }

                      v48 = [v47 countByEnumeratingWithState:&v107 objects:v120 count:16];
                      v50 = 0;
                    }

                    while (v48);
                  }
                }

                else
                {
                  [v19 addObjectsFromArray:v46];
                  v44 = 0;
                }
              }

              v43 = [v83 countByEnumeratingWithState:&v111 objects:buf count:16];
            }

            while (v43);
          }

          [v19 addObject:@""]);
        }
      }

      goto LABEL_143;
    }

    v29 = [v82 criterionIdentifier];
    if ([v29 isEqual:*MEMORY[0x1E699B178]])
    {
      v30 = @"SUBJECT";
    }

    else
    {
      if (![v29 isEqualToString:*MEMORY[0x1E699B130]])
      {
        v53 = MFLogGeneral();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v122 = v29;
          _os_log_impl(&dword_1B0389000, v53, OS_LOG_TYPE_DEFAULT, "#Warning unsupported header criterion type %@", buf, 0xCu);
        }

        goto LABEL_102;
      }

      [v88 addObject:@"HEADER"];
      if ([v82 qualifier] != 3)
      {
        __assert_rtn("fetchArgumentsForCriterion", "MFLegacyIMAPMailboxTaskManager.m", 955, "0 && Message ID header criterion must have a MessageRuleIsEqualTo qualifier");
      }

      v30 = @"Message-ID";
    }

    [v88 addObject:v30];
LABEL_102:
    addArgumentsForExpression(v81, v3, v88);

    goto LABEL_143;
  }

  if (v4 > 25)
  {
    if (v4 != 26)
    {
      v8 = [MEMORY[0x1E696AD60] string];
      if ([v82 qualifier] == 7)
      {
        [v8 appendString:@"NOT "];
      }

      if (fetchArgumentsForCriterion_onceToken != -1)
      {
        fetchArgumentsForCriterion_cold_1();
      }

      v13 = fetchArgumentsForCriterion_flagMap;
      v14 = [v82 expression];
      v10 = [v13 objectForKey:v14];

      if (!v10)
      {
        v78 = [MEMORY[0x1E696AAA8] currentHandler];
        v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id> *fetchArgumentsForCriterion(MFMessageCriterion *__strong, BOOL)"}];
        [v78 handleFailureInFunction:v79 file:@"MFLegacyIMAPMailboxTaskManager.m" lineNumber:1064 description:{@"could not map expression to flag: %@", v82}];
      }

      [v8 appendString:v10];
      [v88 addObject:v8];
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((v4 - 11) < 2)
  {
    if ([v82 qualifier] == 6)
    {
      v5 = @"SINCE";
    }

    else
    {
      v5 = @"BEFORE";
    }

    [v88 addObject:v5];
    v6 = MEMORY[0x1E695DF00];
    v7 = [v82 expression];
    [v7 doubleValue];
    v8 = [v6 dateWithTimeIntervalSince1970:?];

    v9 = MEMORY[0x1E696AEC0];
    v10 = MFIMAPDateSearchStringForDate(v8);
    v11 = [v9 stringWithFormat:@"%@", v10];
    [v88 addObject:v11];

LABEL_36:
    goto LABEL_143;
  }

  if (v4 != 25)
  {
LABEL_146:
    v80 = MFLogGeneral();
    fetchArgumentsForCriterion_cold_2(v80, v82);

    __assert_rtn("fetchArgumentsForCriterion", "MFLegacyIMAPMailboxTaskManager.m", 1112, "0 && Need to handle criterion for IMAP headers");
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v23 = [v82 criteria];
  v24 = [v23 countByEnumeratingWithState:&v101 objects:v119 count:16];
  if (v24)
  {
    v25 = *v102;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v102 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = fetchArgumentsForCriterion(*(*(&v101 + 1) + 8 * k), 0);
        if (v27)
        {
          [v22 addObject:v27];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v101 objects:v119 count:16];
    }

    while (v24);
  }

  v28 = [v22 count];
  if (v28 == 1)
  {
    v23 = [v22 objectAtIndex:0];
    if ([v23 count] == 1)
    {

      goto LABEL_108;
    }

    if ((a2 & 1) == 0)
    {

      goto LABEL_117;
    }
  }

  else if (!a2)
  {
    goto LABEL_117;
  }

  v54 = [v82 allCriteriaMustBeSatisfied];
  v55 = v54;
  if (v28 == 1)
  {

    if ((v55 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_108:
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v56 = v22;
    v57 = [v56 countByEnumeratingWithState:&v97 objects:v118 count:16];
    if (v57)
    {
      v58 = *v98;
      do
      {
        for (m = 0; m != v57; ++m)
        {
          if (*v98 != v58)
          {
            objc_enumerationMutation(v56);
          }

          [v88 addObjectsFromArray:*(*(&v97 + 1) + 8 * m)];
        }

        v57 = [v56 countByEnumeratingWithState:&v97 objects:v118 count:16];
      }

      while (v57);
    }

    goto LABEL_136;
  }

  if (v54)
  {
    goto LABEL_108;
  }

LABEL_117:
  if ([v82 allCriteriaMustBeSatisfied])
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v60 = v22;
    v61 = [v60 countByEnumeratingWithState:&v93 objects:v117 count:16];
    if (!v61)
    {
LABEL_136:

      goto LABEL_142;
    }

    LOBYTE(v62) = 0;
    v63 = *v94;
LABEL_120:
    v64 = 0;
    while (1)
    {
      if (*v94 != v63)
      {
        objc_enumerationMutation(v60);
      }

      v65 = *(*(&v93 + 1) + 8 * v64);
      if (v62)
      {
        [v88 addObjectsFromArray:*(*(&v93 + 1) + 8 * v64)];
      }

      else
      {
        v66 = [*(*(&v93 + 1) + 8 * v64) count];
        if (!v66)
        {
          v62 = 0;
          goto LABEL_130;
        }

        v67 = [v65 objectAtIndex:0];
        v68 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@"), v67;
        [v88 addObject:v68];

        if (v66 != 1)
        {
          v69 = [v65 subarrayWithRange:{1, v66 - 1}];
          [v88 addObjectsFromArray:v69];
        }
      }

      v62 = 1;
LABEL_130:
      if (v61 == ++v64)
      {
        v70 = [v60 countByEnumeratingWithState:&v93 objects:v117 count:16];
        v61 = v70;
        if (!v70)
        {

          if (v62)
          {
            [v88 addObject:@""]);
          }

          goto LABEL_142;
        }

        goto LABEL_120;
      }
    }
  }

  v71 = [v22 count];
  v72 = v71 - 1;
  if (v71 != 1)
  {
    v73 = 0;
    do
    {
      objc_msgSend(v88, "addObject:", @"(OR");
      v74 = [v22 objectAtIndex:v73];
      [v88 addObjectsFromArray:v74];

      ++v73;
    }

    while (v72 != v73);
  }

  v75 = [v22 lastObject];
  [v88 addObjectsFromArray:v75];

  for (; v72; --v72)
  {
    [v88 addObject:@""]);
  }

LABEL_142:

LABEL_143:
  v76 = *MEMORY[0x1E69E9840];

  return v88;
}

void sub_1B060213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B060241C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B0602AFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0602C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B060365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  v27 = v26;

  os_unfair_lock_unlock(v25 + 3);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B06040C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  _Block_object_dispose((v16 - 120), 8);

  _Unwind_Resume(a1);
}

void _compactMessageIfNoData(void *a1, void *a2, void *a3)
{
  v11 = a1;
  v5 = a2;
  v6 = a3;
  if ([v5 isComplete])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = +[MFActivityMonitor currentMonitor];
      v8 = [v7 error];

      if (!v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
        v10 = [v11 library];
        [v10 compactMessages:v9 permanently:1 notifyPersistence:0];
      }
    }
  }
}

void sub_1B06045E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1B06047F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B0605130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B0605448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B06067AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0606C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B06079CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

uint64_t needUTF8ForCriterion(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 criterionType] == 25)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [v1 criteria];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if (needUTF8ForCriterion(*(*(&v10 + 1) + 8 * i)))
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = [v1 expression];
    v7 = [v6 dataUsingEncoding:1];
    v3 = v7 == 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void __fetchArgumentsForCriterion_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 dataUsingEncoding:1];

  v4 = [MEMORY[0x1E695DF70] array];
  objc_msgSend(v4, "addObject:", @"(OR FROM");
  addArgumentsForExpression(v5, v3 == 0, v4);
  objc_msgSend(v4, "addObject:", @"(OR SUBJECT");
  addArgumentsForExpression(v5, v3 == 0, v4);
  objc_msgSend(v4, "addObject:", @"(OR TO");
  addArgumentsForExpression(v5, v3 == 0, v4);
  objc_msgSend(v4, "addObject:", @"(OR CC");
  addArgumentsForExpression(v5, v3 == 0, v4);
  [v4 addObject:@"BODY"];
  addArgumentsForExpression(v5, v3 == 0, v4);
  [v4 addObject:@"]))"));

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void addArgumentsForExpression(void *a1, int a2, void *a3)
{
  v7 = a1;
  v5 = a3;
  if (a2)
  {
    [v7 dataUsingEncoding:4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  }
  v6 = ;
  [v5 addObject:v6];
}

void __fetchArgumentsForCriterion_block_invoke_491()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"MessageIsFlagged";
  v4[1] = @"MessageIsDeleted";
  v5[0] = @"FLAGGED";
  v5[1] = @"DELETED";
  v4[2] = @"MessageIsRead";
  v4[3] = @"MessageWasRepliedTo";
  v5[2] = @"SEEN";
  v5[3] = @"ANSWERED";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v1 = [v0 copy];
  v2 = fetchArgumentsForCriterion_flagMap;
  fetchArgumentsForCriterion_flagMap = v1;

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B06083B8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0608534(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0609B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B060CAA4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B060CD70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B060D190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1B060D2E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1B060DBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1B060DE44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sanitizeStringForMarkup(void *a1)
{
  v1 = a1;
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"  " withString:@"&nbsp; " options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"\n" withString:@"<BR>" options:2 range:{0, objc_msgSend(v1, "length")}];
}

void sub_1B060E990(_Unwind_Exception *a1)
{
  v4 = *(v3 - 160);

  _Unwind_Resume(a1);
}

void sub_1B060EB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFLockStateMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B060ED04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B060F01C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B060F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v26 = v25;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B060F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B060FDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B061010C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B06101D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B06104F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B06107F0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0610D70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0611168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, void *a11, void *a12, int a13, char a14, void *a15)
{
  if (a14)
  {
  }

  if (!v21)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B0611E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  objc_sync_exit(v31);

  objc_destroyWeak(&a24);
  objc_destroyWeak((v34 - 144));

  _Unwind_Resume(a1);
}

id downloadConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695AC80] backgroundSessionConfigurationWithIdentifier:a1];
  [v3 set_sourceApplicationBundleIdentifier:*MEMORY[0x1E69B17F0]];
  [v3 setTimeoutIntervalForRequest:30.0];
  [v3 setTimeoutIntervalForResource:1800.0];
  [v3 setAllowsCellularAccess:a2];

  return v3;
}

void sub_1B06125C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1B0613FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);

  _Unwind_Resume(a1);
}

void sub_1B0615530(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1B0615730(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1B06161B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0618E00(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0618FB8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B06192A0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B0619400(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B06195D0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B0619B08(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0619C7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0619F3C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B061A6EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B061AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t performInsert(sqlite3_stmt *a1, void *a2)
{
  v4 = sqlite3_step(a1);
  sqlite3_reset(a1);
  if ((v4 - 100) < 2 || v4 == 0)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v4];
  v8 = v7;
  result = 0;
  *a2 = v7;
  return result;
}

void sub_1B061B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void rawAddress(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v5 = sqlite3_value_text(*a3);
    if (v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:sqlite3_value_bytes(*a3) encoding:4 freeWhenDone:0];
      v6 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:? cacheResults:?];
      if ([v6 length])
      {
        sqlite3_result_text(a1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_result_null(a1);
      }
    }

    else
    {

      sqlite3_result_null(a1);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E699B600] log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      rawAddress_cold_1(a2, v8);
    }
  }
}

void displayName(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v5 = sqlite3_value_text(*a3);
    if (v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:sqlite3_value_bytes(*a3) encoding:4 freeWhenDone:0];
      v6 = [MEMORY[0x1E699AFD0] displayNameFromAddress:? cacheResults:?];
      if ([v6 length] && (objc_msgSend(v6, "isEqualToString:", v9) & 1) == 0)
      {
        sqlite3_result_text(a1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_result_text(a1, "", 0, 0);
      }
    }

    else
    {

      sqlite3_result_null(a1);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E699B600] log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      displayName_cold_1(a2, v8);
    }
  }
}

void sub_1B061C050(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B061D1A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B061D404(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = objc_begin_catch(a1);
    v8 = EDLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__MFMailMessageLibraryLocalActionsTablesMigrationStep__offlineCacheOperations__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    objc_end_catch();
    JUMPOUT(0x1B061D3E8);
  }

  _Unwind_Resume(a1);
}

void sub_1B061D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B061ED3C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B061F64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59)
{
  _Block_object_dispose(&a30, 8);

  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);

  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v63 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_1B0620474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t _LibraryVersion(sqlite3 *a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(a1, "SELECT value FROM properties WHERE key = 'version'", -1, &ppStmt, 0))
  {
    return 0;
  }

  if (sqlite3_step(ppStmt) == 100)
  {
    v1 = sqlite3_column_int(ppStmt, 0);
  }

  else
  {
    v1 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v1;
}

void sub_1B06232D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t _InitializeSchema(sqlite3 *a1, void *a2)
{
  v3 = [a2 definitionWithDatabaseName:0];
  v4 = _ExecuteSQL(a1, v3, @"performing statements from schema definition");

  if (!v4)
  {
    return 0;
  }

  v5 = _SQLFromFile();
  if (v5)
  {
    v6 = _ExecuteSQL(a1, v5, @"performing statements from file triggers.sql");
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

BOOL _FixZeroedConversationHashes(sqlite3 *a1)
{
  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  v2 = sqlite3_prepare_v2(a1, "SELECT rowid FROM messages WHERE conversation_id = 0 or conversation_id is NULL", -1, &ppStmt, 0);
  v3 = v2 == 0;
  v4 = objc_alloc_init(MEMORY[0x1E699B810]);
  if (!v2 && ppStmt)
  {
    while (1)
    {
      v5 = sqlite3_step(ppStmt);
      if (v5 != 100)
      {
        break;
      }

      [v4 addIndex:{sqlite3_column_int64(ppStmt, 0)}];
    }

    _HandleSQLiteError(a1, @"gathering library ids of messages without conversation hashes");
    v3 = v5 == 101;
    sqlite3_finalize(ppStmt);
  }

  if (v3)
  {
    if ([v4 count])
    {
      v6 = [v4 firstIndex];
      v7 = sqlite3_prepare_v2(a1, "UPDATE messages SET conversation_id = ?, content_index_transaction_id = NULL WHERE rowid = ?", -1, &ppStmt, 0) == 0;
      while (v7 && v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = MFUniqueMessageIDHash();
        sqlite3_bind_int64(ppStmt, 1, v8);
        sqlite3_bind_int64(ppStmt, 2, v6);
        v9 = sqlite3_step(ppStmt);
        v7 = v9 == 101;
        if (v9 == 101)
        {
          sqlite3_reset(ppStmt);
        }

        v6 = [v4 indexGreaterThanIndex:v6];
      }

      _HandleSQLiteError(a1, @"updating messages with new conversation hashes");
      sqlite3_finalize(ppStmt);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL _DropMessageDeletedIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX message_deleted_index", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"dropping message deleted index");
  return v2;
}

BOOL _AddVIPSenderColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN sender_vip;", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding sender_vip column");
  return v2;
}

BOOL _AddUniqueRemoteIDColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN unique_id;", 0, 0, 0);
  _HandleSQLiteError(a1, @"adding unique_id column");
  return v2 == 0;
}

BOOL _AddContentTransactionIDColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN content_index_transaction_id INTEGER;", 0, 0, 0);
  _HandleSQLiteError(a1, @"adding content_index_transaction_id column");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "CREATE INDEX message_content_index_transaction_id_index ON messages(content_index_transaction_id);", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding content_index_transaction_id index");
  return v3;
}

BOOL _ImproveMessageConversationIndexes(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS message_conversation_id_index;\nCREATE INDEX message_conversation_id_index ON messages(conversation_id, mailbox, read, date_received);\nDROP INDEX IF EXISTS message_oldest_conversation_index;\nCREATE INDEX message_oldest_conversation_index on messages(mailbox, conversation_id, date_received);", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"replacing conversation indexes");
  return v2;
}

BOOL _AddSequenceIdentifierIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS message_sequence_identifier_index;\nCREATE INDEX message_sequence_identifier_index ON messages(mailbox, remote_id, sequence_identifier);", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding sequence identifier index");
  return v2;
}

uint64_t _AddFlaggedAndAttachmentColumnsAndTriggers(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE mailboxes ADD COLUMN flagged_count INTEGER DEFAULT 0; ALTER TABLE mailboxes ADD COLUMN attachment_count INTEGER DEFAULT 0;", 0, 0, 0);
  _HandleSQLiteError(a1, @"altering mailboxes table");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "update mailboxes set flagged_count = (select count(*) from messages where mailbox = mailboxes.rowid AND flags&16 > 0);", 0, 0, 0);
  _HandleSQLiteError(a1, @"updating flagged_count");
  if (v3)
  {
    return 0;
  }

  v4 = sqlite3_exec(a1, "update mailboxes set attachment_count = (select count(*) from messages where mailbox = mailboxes.rowid AND (((flags&(63<<10))>>10) BETWEEN 1 AND 62) AND flags&1 = 0);", 0, 0, 0);
  _HandleSQLiteError(a1, @"updating attachment_count");
  if (v4)
  {
    return 0;
  }

  v7 = _SQLFromFile();
  v5 = _ExecuteSQL(a1, v7, @"performing statements from file triggers.sql");

  return v5;
}

uint64_t _AddToCcCountColumnAndTriggers(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE mailboxes ADD COLUMN to_cc_count INTEGER DEFAULT 0;", 0, 0, 0);
  _HandleSQLiteError(a1, @"altering mailboxes table");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "INSERT OR REPLACE INTO properties (key, value) VALUES ('MaxRowIdForMigrationToVersion31', (SELECT MAX(rowid) FROM messages));", 0, 0, 0);
  _HandleSQLiteError(a1, @"adding maxrowid property");
  if (v3)
  {
    return 0;
  }

  v6 = _SQLFromFile();
  v4 = _ExecuteSQL(a1, v6, @"performing statements from file triggers.sql");

  return v4;
}

BOOL _AddServerOnlyUnreadCountColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE mailboxes ADD COLUMN server_unread_count INTEGER DEFAULT 0;", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"altering mailboxes table");
  return v2;
}

uint64_t _SochiFixFlaggedCount(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "UPDATE mailboxes SET flagged_count = (select count(*) FROM messages WHERE mailbox = mailboxes.rowid AND flags&16 > 0 AND flags&2 == 0);", 0, 0, 0);
  _HandleSQLiteError(a1, @"updating flagged_count");
  if (v2)
  {
    return 0;
  }

  v4 = _SQLFromFile();
  v3 = _ExecuteSQL(a1, v4, @"performing statements from file triggers.sql");

  return v3;
}

BOOL _AddConversationFlags(sqlite3 *a1)
{
  v2 = 0;
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = "CREATE TABLE conversations (conversation_id INTEGER PRIMARY KEY, flags INTEGER DEFAULT 0, sync_key TEXT);";
  v6[1] = "CREATE TABLE conversation_id_message_id (conversation_id INTEGER, message_id INTEGER, date_sent INTEGER DEFAULT 0, UNIQUE (conversation_id, message_id), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE);";
  v6[2] = "CREATE INDEX conversation_id_message_id_index ON conversation_id_message_id(conversation_id, message_id); CREATE INDEX message_id_conversation_id_index ON conversation_id_message_id(message_id, conversation_id);";
  v6[3] = "INSERT INTO conversations (conversation_id) SELECT DISTINCT(conversation_id) FROM messages;";
  v6[4] = "INSERT OR IGNORE INTO conversation_id_message_id (conversation_id,message_id,date_sent) SELECT conversation_id, message_id, date_sent FROM messages;";
  v6[5] = "INSERT OR IGNORE INTO conversation_id_message_id (conversation_id,message_id) SELECT messages.conversation_id, threads.reference FROM messages, threads WHERE messages.rowid = threads.message_id;";
  do
  {
    v3 = sqlite3_exec(a1, v6[v2], 0, 0, 0);
    _HandleSQLiteError(a1, @"creating conversations and conversation_id_message_id tables");
    if (v2 > 4)
    {
      break;
    }

    ++v2;
  }

  while (!v3);
  result = v3 == 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _AddJournaledColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN journaled DEFAULT '0';", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding journaled column");
  return v2;
}

BOOL _ResetStatusCountsForDrafts(sqlite3 *a1)
{
  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  v2 = sqlite3_prepare_v2(a1, "SELECT DISTINCT mailbox FROM messages WHERE flags&64 = 64;", -1, &ppStmt, 0);
  v3 = v2 == 0;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v2)
  {
    v5 = ppStmt;
    if (ppStmt)
    {
      while (1)
      {
        v6 = sqlite3_step(v5);
        if (v6 != 100)
        {
          break;
        }

        v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(ppStmt, 0)}];
        [v4 addObject:v7];

        v5 = ppStmt;
      }

      _HandleSQLiteError(a1, @"finding mailbox IDs of draft mailboxes");
      v3 = v6 == 101;
      sqlite3_finalize(ppStmt);
    }
  }

  if (v3)
  {
    v8 = [v4 componentsJoinedByString:{@", "}];
    v9 = [v8 UTF8String];

    v10 = sqlite3_mprintf("UPDATE mailboxes SET last_sync_status_count = 0, most_recent_status_count = 0 WHERE url LIKE 'imap:%%' AND rowid IN (%s)", v9);
    LODWORD(v9) = sqlite3_exec(a1, v10, 0, 0, 0);
    sqlite3_free(v10);
    v11 = v9 == 0;
    _HandleSQLiteError(a1, @"updating count columns for non-draft mailboxes");
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL _AddProtectedDataIndexes(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "CREATE INDEX IF NOT EXISTS messages_subject_index ON messages(subject);\nCREATE INDEX IF NOT EXISTS messages_summary_index ON messages(summary);\nCREATE INDEX IF NOT EXISTS recipients_address_index ON recipients(address);\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Creating indexes to protected data");
  return v2;
}

void _HandleSQLiteError(sqlite3 *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sqlite3_errcode(a1);
  v5 = v4;
  if ((v4 - 100) >= 2 && v4)
  {
    v6 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109634;
      v8[1] = v5;
      v9 = 2114;
      v10 = v3;
      v11 = 2082;
      v12 = sqlite3_errmsg(a1);
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Error %d %{public}@: %{public}s", v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t _MigratePropertiesToEmailAppGroup()
{
  v0 = [MEMORY[0x1E699B5F0] run];
  v1 = [MEMORY[0x1E699B5F0] propertiesToMigrate];
  [MFUserDefaultMigrator migrateDefaults:v1];

  return v0;
}

BOOL _AddThreadsSendersAndRecipientsIndexes(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "CREATE INDEX IF NOT EXISTS thread_senders_address_thread_index ON thread_senders(address, thread);\nCREATE INDEX IF NOT EXISTS thread_senders_thread_priority_date_index ON thread_senders(thread, priority, date);\nCREATE INDEX IF NOT EXISTS thread_recipients_address_thread_index ON thread_recipients(address, thread);\nCREATE INDEX IF NOT EXISTS thread_recipients_thread_priority_date_index ON thread_recipients(thread, priority, date);\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Creating indexes for thread_senders and thread_recipients");
  return v2;
}

BOOL _AddThreadsJournaledColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE threads ADD COLUMN journaled INTEGER NOT NULL DEFAULT 0;\nCREATE INDEX IF NOT EXISTS threads_journaled_scope_date_conversation_index ON threads(journaled, scope, date, conversation);\nCREATE INDEX IF NOT EXISTS threads_journaled_date_scope_conversation_index ON threads(journaled, date, scope, conversation) WHERE journaled = 1;\nDROP INDEX IF EXISTS threads_scope_read_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_flagged_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_red_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_orange_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_yellow_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_green_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_blue_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_purple_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_gray_flag_date_conversation_index;\nCREATE INDEX IF NOT EXISTS messages_mailbox_conversation_id_flag_color_date_received_journaled_index ON messages(mailbox, conversation_id, flag_color, date_received, journaled);\nDROP INDEX IF EXISTS messages_mailbox_conversation_id_flag_color_date_received_index;\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Adding threads.journaled and tweaking some indexes");
  return v2;
}

BOOL _AddMessageIndexesForThreadQueries(sqlite3 *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775238];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775250];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775268];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775280];
  v13[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];

  v7 = [v6 ef_map:&__block_literal_global_801];
  v8 = [v7 componentsJoinedByString:@"\n"];
  v9 = v8;
  v10 = [v8 UTF8String];

  LODWORD(v7) = sqlite3_exec(a1, v10, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating indexes for thread_senders and thread_recipients");

  v11 = *MEMORY[0x1E69E9840];
  return v7 == 0;
}

BOOL _AddMessageIDIndex(sqlite3 *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775298];
  v3 = [v2 definitionWithDatabaseName:0];
  v4 = [v3 UTF8String];

  LODWORD(v3) = sqlite3_exec(a1, v4, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_message_id_deleted_journaled_read_mailbox_index");

  return v3 == 0;
}

BOOL _AddSenderVIPUnreadCountQueryIndex(sqlite3 *a1)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699B8C8] column:@"sender_vip"];
  v3 = [v2 equalTo:&unk_1F2775A00];

  v4 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v5 = [v4 equalTo:&unk_1F2775A18];

  v6 = [MEMORY[0x1E699B8C8] column:@"deleted"];
  v7 = [v6 equalTo:&unk_1F2775A18];

  v8 = [MEMORY[0x1E699B8C8] column:@"read"];
  v9 = [v8 equalTo:&unk_1F2775A18];

  v10 = objc_alloc(MEMORY[0x1E699B898]);
  v19[0] = v3;
  v19[1] = v5;
  v19[2] = v7;
  v19[3] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v12 = [v10 initWithExpressions:v11];

  v13 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27752B0 where:v12 unique:0];
  v14 = [v13 definitionWithDatabaseName:0];
  v15 = v14;
  v16 = [v14 UTF8String];

  LODWORD(v14) = sqlite3_exec(a1, v16, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_sender_vip_deleted_journaled_read_message_id_index");

  v17 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

BOOL _UpdateDeletedMailboxIndex(sqlite3 *a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27752C8];
  v10[0] = @"DROP INDEX IF EXISTS messages_deleted_mailbox_index;";
  v3 = [v2 definitionWithDatabaseName:0];
  v10[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v5 = [v4 componentsJoinedByString:@"\n"];
  v6 = v5;
  v7 = [v5 UTF8String];

  LODWORD(v3) = sqlite3_exec(a1, v7, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_deleted_mailbox_date_received_index");

  v8 = *MEMORY[0x1E69E9840];
  return v3 == 0;
}

BOOL _AddJournaledUndeletedIndex(sqlite3 *a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v3 = [v2 equalTo:&unk_1F2775A00];

  v4 = [MEMORY[0x1E699B8C8] column:@"deleted"];
  v5 = [v4 equalTo:&unk_1F2775A18];

  v6 = objc_alloc(MEMORY[0x1E699B898]);
  v15[0] = v3;
  v15[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v6 initWithExpressions:v7];

  v9 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27752E0 where:v8 unique:0];
  v10 = [v9 definitionWithDatabaseName:0];
  v11 = v10;
  v12 = [v10 UTF8String];

  LODWORD(v10) = sqlite3_exec(a1, v12, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_journaled_deleted_date_received_index");

  v13 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

uint64_t _ReplaceCachedMetadataTable(sqlite3 *a1)
{
  v2 = executeQuery(1, a1, "DROP TABLE IF EXISTS message_metadata;", @"Dropping table message_metadata.");
  v3 = executeQuery(v2, a1, "CREATE TABLE message_metadata (message_id INTEGER PRIMARY KEY, timestamp INTEGER NOT NULL, json_values TEXT COLLATE BINARY NOT NULL);", @"Creating message_metadata table.");

  return executeQuery(v3, a1, "CREATE INDEX message_metadata_timestamp_index ON message_metadata(timestamp);", @"Creating message_metadata index.");
}

BOOL _AddThreadJournaledDateIndex(sqlite3 *a1)
{
  v2 = objc_alloc(MEMORY[0x1E699B900]);
  v3 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v4 = [v3 equalTo:&unk_1F2775A00];
  v5 = [v2 initWithTableName:@"threads" columnNames:&unk_1F27752F8 where:v4 unique:0];

  v6 = [v5 definitionWithDatabaseName:0];
  v7 = [v6 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v7, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating threads_journaled_date_scope_conversation_index");

  return v6 == 0;
}

uint64_t _AddUnreadCountJournalIndexes(sqlite3 *a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"conversations" columnNames:&unk_1F2775310];
  v14[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775328];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775340];
  v14[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  v6 = [v5 ef_map:&__block_literal_global_897];
  v7 = [v6 componentsJoinedByString:@"\n"];
  v8 = v7;
  v9 = [v7 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v9, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating indexes for conversations and message unread counts");
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v13[0] = "CREATE INDEX IF NOT EXISTS\n   messages_mailbox_deleted_journaled_read_sender_vip_flags_conversation_id_date_sent_message_id_date_received_rowid_index\n   ON messages(\n       mailbox, deleted, journaled, read, sender_vip, flags, conversation_id,\n       date_sent, message_id, date_received DESC, ROWID DESC);\n";
    v13[1] = "DROP INDEX IF EXISTS\n   messages_mailbox_deleted_journaled_sender_vip_flags_conversation_id_date_sent_message_id_date_received_rowid_index;\n";
    v10 = _ExecuteQueries(a1, v13, 2, @"Updating indexes for unread counts");
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL _AddAppBadgeCountIndexes(sqlite3 *a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775358];
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:{&unk_1F2775370, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"thread_mailboxes" columnNames:&unk_1F2775388];
  v13[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v6 = [v5 ef_map:&__block_literal_global_925];
  v7 = [v6 arrayByAddingObjectsFromArray:&unk_1F27753A0];
  v8 = [v7 componentsJoinedByString:@"\n"];
  v9 = v8;
  v10 = [v8 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v10, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating indexes for app badge count");

  v11 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

uint64_t _protectedIndexHasBeenInitialized(void *a1)
{
  v1 = a1;
  if (([v1 protectedDatabaseAttached] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _protectedIndexHasBeenInitialized(EDPersistenceDatabaseConnection *__strong)"];
    [v4 handleFailureInFunction:v5 file:@"MFMailMessageLibraryMigrator.m" lineNumber:3194 description:@"Protected database must be attached"];
  }

  v2 = [v1 tableExists:@"addresses" inDatabase:@"protected"];

  return v2;
}

void sub_1B062EB78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL _ResetSummary(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "UPDATE messages SET summary = NULL WHERE summary in (select rowid from protected.summaries where summary = 'This message has no content');\nDELETE FROM protected.summaries where summary = 'This message has no content'\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Deleting all summaries = 'This message has no content' in protected data");
  return v2;
}

BOOL _AddSenderVIPAndConversationIndexes(sqlite3 *a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27753B8];
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:{&unk_1F27753D0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27753E8];
  v12[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v6 = [v5 ef_map:&__block_literal_global_943];
  v7 = [v6 componentsJoinedByString:@"\n"];
  v8 = v7;
  v9 = [v7 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v9, 0, 0, 0);
  _HandleSQLiteError(a1, @"Adding sender_vip/conversation message indexes");

  v10 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

BOOL _AddDeletedToMessagesConversationIDIndexes(sqlite3 *a1)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775400];
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:{&unk_1F2775418, v2}];
  v15[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775430];
  v15[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775448];
  v15[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775460];
  v15[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];

  v8 = [v7 ef_map:&__block_literal_global_981];
  v9 = [v8 arrayByAddingObjectsFromArray:&unk_1F2775478];
  v10 = [v9 componentsJoinedByString:@"\n"];
  v11 = v10;
  v12 = [v10 UTF8String];

  LODWORD(v8) = sqlite3_exec(a1, v12, 0, 0, 0);
  _HandleSQLiteError(a1, @"Adding deleted to conversation_id indexes");

  v13 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

BOOL _AddFilterIndexesAndRemoveTriggers(sqlite3 *a1)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"mailbox"];
  v32 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"date_received"];
  v2 = [MEMORY[0x1E699B8C8] column:@"deleted"];
  v31 = [v2 equalTo:&unk_1F2775A18];

  v3 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v30 = [v3 equalTo:&unk_1F2775A18];

  v4 = [MEMORY[0x1E699B8C8] column:@"read"];
  v26 = a1;
  v29 = [v4 equalTo:&unk_1F2775A18];

  v5 = objc_alloc(MEMORY[0x1E699B900]);
  v36 = v32;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v6 = objc_alloc(MEMORY[0x1E699B898]);
  v35[0] = v31;
  v35[1] = v30;
  v35[2] = v29;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  v7 = [v6 initWithExpressions:?];
  v8 = [v5 initWithName:@"messages_date_received_deleted0_journaled0_read0_index" tableName:@"messages" indexedColumns:v28 where:v7 unique:0];
  v37[0] = v8;
  v9 = objc_alloc(MEMORY[0x1E699B900]);
  v34[0] = v27;
  v34[1] = v32;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v11 = objc_alloc(MEMORY[0x1E699B898]);
  v33[0] = v31;
  v33[1] = v30;
  v33[2] = v29;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v13 = [v11 initWithExpressions:v12];
  v14 = [v9 initWithName:@"messages_mailbox_date_received_deleted0_journaled0_read0_index" tableName:@"messages" indexedColumns:v10 where:v13 unique:0];
  v37[1] = v14;
  v15 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"threads" columnNames:&unk_1F2775490];
  v37[2] = v15;
  v16 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"threads" columnNames:&unk_1F27754A8];
  v37[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];

  v18 = [v17 ef_map:&__block_literal_global_1029];
  v19 = [v18 arrayByAddingObjectsFromArray:&unk_1F27754C0];
  v20 = [v19 componentsJoinedByString:@"\n"];
  v21 = v20;
  v22 = [v20 UTF8String];

  LODWORD(v18) = sqlite3_exec(v26, v22, 0, 0, 0);
  _HandleSQLiteError(v26, @"Creating indexes for unread filters and dropping triggers");

  v23 = *MEMORY[0x1E69E9840];
  return v18 == 0;
}

BOOL _ModifyMessagesSearchableMessageIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS messages_deleted_searchable_message_index;\nCREATE INDEX IF NOT EXISTS messages_searchable_message_deleted_index ON messages(searchable_message, deleted);\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Replacing messages_deleted_searchable_message_index with messages_searchable_message_deleted_index");
  return v2;
}

BOOL _AddMessagesMailboxDeletedDateReceivedIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "CREATE INDEX IF NOT EXISTS messages_mailbox_deleted_date_received_index ON messages(mailbox, deleted, date_received) WHERE journaled = 0;", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Adding messages_mailbox_deleted_date_received_index");
  return v2;
}

uint64_t _UpdateGlobalIDIndex(void *a1)
{
  v1 = a1;
  v2 = [v1 executeStatementString:@"DROP INDEX IF EXISTS messages_global_message_id_index;" errorMessage:@"Unable to drop index messages_global_message_id_index"];
  v3 = objc_alloc(MEMORY[0x1E699B900]);
  v4 = [MEMORY[0x1E699B5C0] messagesTableName];
  v5 = [v3 initWithTableName:v4 columnNames:&unk_1F27754D8];

  v6 = [v5 definitionWithDatabaseName:0];
  if (v2)
  {
    v2 = [v1 executeStatementString:v6 errorMessage:@"Unable to add index messages_global_message_id_mailbox_index"];
  }

  return v2;
}

BOOL _AddDisplayDateColumn(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x1E699B420] runWithConnection:v1])
  {
    v2 = 0;
  }

  else
  {
    v2 = sqlite3_exec([v1 sqlDB], "CREATE INDEX IF NOT EXISTS messages_mailbox_deleted_display_date_index ON messages(mailbox, deleted, display_date) WHERE journaled = 0;CREATE INDEX IF NOT EXISTS messages_deleted_conversation_id_display_date_index ON messages(deleted, conversation_id, display_date);", 0, 0, 0) == 0;
  }

  return v2;
}

void _resetLocalAccountMboxCache()
{
  v0 = +[LocalAccount localAccount];
  v1 = [v0 mailboxCachePath];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v3 = [v2 removeItemAtPath:v1 error:&v9];
  v4 = v9;

  if (v3)
  {
    [v0 resetMailboxCache];
    v5 = [v0 sendLaterFolder];
    v6 = [v0 transientDraftsFolder];
    v7 = +[MailAccount outboxMailboxUid];
  }

  else
  {
    v8 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _resetLocalAccountMboxCache_cold_1();
    }
  }
}

uint64_t _AddFilterPredicateToInboxThreadScopes(void *a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [v4 initWithResultColumn:*MEMORY[0x1E699B768] table:@"mailboxes"];
  v6 = [MEMORY[0x1E699B8C8] column:@"url"];
  v7 = [v6 endsWith:@"INBOX" caseSensitive:0];
  [v5 setWhere:v7];

  v8 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"thread_scopes" conflictResolution:4];
  v9 = [MEMORY[0x1E699B8C8] column:@"filter_predicate"];
  v10 = [MEMORY[0x1E699B8F8] ifNull:v9 second:&unk_1F2775A18];
  v11 = MEMORY[0x1E699B8B8];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v13 = [v11 or:v10 with:v12];
  [v8 setObject:v13 forKeyedSubscript:@"filter_predicate"];

  v14 = [MEMORY[0x1E699B8C8] column:@"mailbox_type"];
  v15 = [v14 equalTo:&unk_1F2775A30];

  v16 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v17 = [v16 in:v5];

  v18 = MEMORY[0x1E699B928];
  v24[0] = v15;
  v24[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v20 = [v18 combined:v19];
  [v8 setWhereClause:v20];

  v21 = [v3 executeUpdateStatement:v8 error:0];
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1B062FB34(_Unwind_Exception *a1)
{
  v10 = v6;

  _Unwind_Resume(a1);
}

BOOL _AddFollowUpWarningJsonStringForModelEvaluationForSuggestionsColumn(void *a1)
{
  v1 = a1;
  v2 = sqlite3_exec([v1 sqlDB], "ALTER TABLE message_global_data ADD COLUMN follow_up_jsonstringformodelevaluationforsuggestions TEXT COLLATE BINARY;CREATE INDEX IF NOT EXISTS message_global_data_follow_up_jsonstringformodelevaluationforsuggestions_index ON message_global_data(follow_up_jsonstringformodelevaluationforsuggestions);", 0, 0, 0) == 0;

  return v2;
}

BOOL _AddMessagesGlobalMessageIDUnreadUndeletedIndex(void *a1)
{
  v1 = a1;
  v2 = sqlite3_exec([v1 sqlDB], "CREATE INDEX IF NOT EXISTS messages_read_deleted_global_message_id_mailbox_read0_deleted0_index ON messages(read, deleted, global_message_id, mailbox) WHERE (read = 0 AND deleted = 0);", 0, 0, 0) == 0;

  return v2;
}

BOOL _addThreadNewestMessageColumn(void *a1)
{
  v1 = a1;
  v2 = sqlite3_exec([v1 sqlDB], "ALTER TABLE threads ADD COLUMN newest_message INTEGER REFERENCES messages(ROWID) ON DELETE SET NULL;CREATE INDEX IF NOT EXISTS threads_newest_message_index ON threads(newest_message);", 0, 0, 0) == 0;

  return v2;
}

void _removeUnsedIndices(void *a1)
{
  v1 = a1;
  sqlite3_exec([v1 sqlDB], "DROP INDEX IF EXISTS messages_message_id_mailbox_index;DROP INDEX IF EXISTS messages_date_last_viewed_index;DROP INDEX IF EXISTS messages_list_id_hash_index;DROP INDEX IF EXISTS messages_conversation_id_mailbox_sender_date_received_deleted_index;DROP INDEX IF EXISTS messages_mailbox_visible_date_received_rowid_index;DROP INDEX IF EXISTS messages_content_index_transaction_id_deleted_date_received_rowid_index;DROP INDEX IF EXISTS messages_mailbox_content_index_transaction_id_flags_date_received_index;DROP INDEX IF EXISTS messages_journaled_conversation_id_date_received_index;DROP INDEX IF EXISTS messages_deleted_sender_vip_date_received_index;DROP INDEX IF EXISTS messages_date_received_deleted0_journaled0_read0_index;DROP INDEX IF EXISTS messages_mailbox_date_received_deleted0_journaled0_read0_index;", 0, 0, 0);
}

void sub_1B06300BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0630370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B0630640(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t _ExecuteSQL(sqlite3 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && !sqlite3_exec(a1, [v5 UTF8String], 0, 0, 0))
  {
    v7 = 1;
  }

  else
  {
    _HandleSQLiteError(a1, v6);
    v7 = 0;
  }

  return v7;
}

id _SQLFromFile()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v0 pathForResource:@"triggers.sql" ofType:0];

  if (v1)
  {
    v8 = 0;
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:v1 encoding:4 error:&v8];
    v3 = v8;
    if (!v2)
    {
      v4 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 ef_publicDescription];
        *buf = 138412546;
        v10 = v1;
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "Error: failed to get contents of %@: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v3 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = @"triggers.sql";
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Error: failed to find %@", buf, 0xCu);
    }

    v2 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t _ExecuteQueries(sqlite3 *a1, const char **a2, int a3, void *a4)
{
  v7 = a4;
  if (a3 < 1)
  {
    v10 = 1;
  }

  else
  {
    v8 = a3;
    v9 = 1;
    do
    {
      v10 = executeQuery(1, a1, *a2, v7);
      v11 = v9 < v8;
      ++a2;
      ++v9;
    }

    while ((v11 & v10 & 1) != 0);
  }

  return v10;
}

uint64_t executeQuery(int a1, sqlite3 *a2, const char *a3, void *a4)
{
  LODWORD(v6) = a1;
  v7 = a4;
  LODWORD(a3) = sqlite3_exec(a2, a3, 0, 0, 0);
  _HandleSQLiteError(a2, v7);
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v6;
  }

  return v6;
}

void sub_1B0632880(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0632FAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0636F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B06386A0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void sub_1B06388C4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 2);

  _Unwind_Resume(a1);
}

void sub_1B06393F8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0639A2C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B063A278(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B063ABF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B063ADF8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B063DC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);

  _Unwind_Resume(a1);
}

void sub_1B063F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, _Unwind_Exception *exception_objecta, void *a35, void *a36)
{
  _Block_object_dispose(&STACK[0x2A0], 8);

  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B064029C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B06417AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1B0642E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19)
{
  objc_destroyWeak((v22 + 88));

  objc_destroyWeak((v23 - 72));
  _Unwind_Resume(a1);
}

void sub_1B06431A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  objc_destroyWeak((v35 + 104));

  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1B0643998(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0643AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);

  _Unwind_Resume(a1);
}

void sub_1B06446BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1B06457C4(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

__CFString *basicSearchExpressionFromCriterion(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 criterionType] == 25)
  {
    [v1 criteria];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v2 = v10 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = *v10;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = basicSearchExpressionFromCriterion(*(*(&v9 + 1) + 8 * v5));
        if (v6)
        {
          break;
        }

        if (v3 == ++v5)
        {
          v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          v6 = 0;
          break;
        }
      }
    }

    else
    {
      v6 = &stru_1F273A5E0;
    }
  }

  else
  {
    v6 = [v1 expression];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1B0649398(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B064A444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMessageLoadingContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B064AB34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _contentLoadedEmptyDocument(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 firstObject];
  if ([v3 count] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (a2)
    {
      v5 = [v4 isVisuallyEmpty];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B064D790(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B064EFA0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B064F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t MFErrorCodeWithDataStatus(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return -1;
  }

  else
  {
    return qword_1B0E977B8[a1 - 1];
  }
}

void sub_1B0651DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFNetworkController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0652C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v24 - 72));

  _Unwind_Resume(a1);
}

void sub_1B0653624(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0653AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFNWConnectionWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B065548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNNMKContentAttributedStringHTMLParserClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNNMKContentAttributedStringHTMLParserClass_softClass;
  v7 = getNNMKContentAttributedStringHTMLParserClass_softClass;
  if (!getNNMKContentAttributedStringHTMLParserClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNNMKContentAttributedStringHTMLParserClass_block_invoke;
    v3[3] = &unk_1E7AA65C8;
    v3[4] = &v4;
    __getNNMKContentAttributedStringHTMLParserClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B06598B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNNMKAttachmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNNMKAttachmentClass_softClass;
  v7 = getNNMKAttachmentClass_softClass;
  if (!getNNMKAttachmentClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNNMKAttachmentClass_block_invoke;
    v3[3] = &unk_1E7AA65C8;
    v3[4] = &v4;
    __getNNMKAttachmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B06599D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNNMKMessageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNNMKMessageClass_softClass;
  v7 = getNNMKMessageClass_softClass;
  if (!getNNMKMessageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNNMKMessageClass_block_invoke;
    v3[3] = &unk_1E7AA65C8;
    v3[4] = &v4;
    __getNNMKMessageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B0659B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0659C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0659D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0659F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __getNNMKContentAttributedStringHTMLParserClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKContentAttributedStringHTMLParser");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKContentAttributedStringHTMLParserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKContentAttributedStringHTMLParserClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:25 description:{@"Unable to find class %s", "NNMKContentAttributedStringHTMLParser"}];

    __break(1u);
  }
}

void NanoMailKitServerLibrary()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoMailKitServerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/NanoMailKitServer.framework/NanoMailKitServer";
    NanoMailKitServerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoMailKitServerLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __NanoMailKitServerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoMailKitServerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getNNMKAttachmentClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKAttachment");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKAttachmentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:28 description:{@"Unable to find class %s", "NNMKAttachment"}];

    __break(1u);
  }
}

void __getNNMKMessageClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKMessage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKMessageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:34 description:{@"Unable to find class %s", "NNMKMessage"}];

    __break(1u);
  }
}

void __getNNMKMessageContentClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKMessageContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKMessageContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKMessageContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:37 description:{@"Unable to find class %s", "NNMKMessageContent"}];

    __break(1u);
  }
}

void __getNNMKImageAttachmentClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKImageAttachment");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKImageAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKImageAttachmentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:31 description:{@"Unable to find class %s", "NNMKImageAttachment"}];

    __break(1u);
  }
}

void __getNNMKImageUtilityClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKImageUtility");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKImageUtilityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKImageUtilityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:40 description:{@"Unable to find class %s", "NNMKImageUtility"}];

    __break(1u);
  }
}

uint64_t __powerLogIdentifier_block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  powerLogIdentifier_identifier = result;
  return result;
}

void sub_1B065CB8C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1B065D21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B065D2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B065EE20(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B065F004(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B065F980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFPowerController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B065FDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void MFUnregisterPowerObserver(void *a1)
{
  v1 = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MFUnregisterPowerObserver_block_invoke;
  v4[3] = &unk_1E7AA25C0;
  v2 = v1;
  v5 = v2;
  v3 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v3 performBlock:v4];
}

void *__getPLShouldLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLShouldLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLShouldLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PowerLogLibrary()
{
  v5[9] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PowerLogLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v5[7] = 0;
    v5[8] = 0;
    v5[6] = "/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog";
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PowerLogLibraryCore_frameworkLibrary;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PowerLogLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"MFPowerController.m" lineNumber:38 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __PowerLogLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getPLLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B0662620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1B0662874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B066320C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0663418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0663D9C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0664E84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B06656A8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1B066653C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0666CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B06682F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFSecureMIMECompositionManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id checkCertificateExpiration(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  SecCertificateNotValidBefore();
  v6 = v5;
  SecCertificateNotValidAfter();
  if (Current >= v6)
  {
    v10 = v7;
    if (Current <= v7)
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v8 = MFLookupLocalizedString(@"MF_SMIME_CERTIFICATE_EXPIRED_FORMAT", @"The certificate for the address “%@” expired on %@.", @"Delayed");
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v10];
  }

  else
  {
    v8 = MFLookupLocalizedString(@"MF_SMIME_CERTIFICATE_NOT_YET_VALID_FORMAT", @"The certificate for the address “%@” is not valid until %@.", @"Delayed");
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v6];
  }

  v11 = v9;
  v12 = v8;
  if (!v8)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  if (!v9)
  {
    __assert_rtn("checkCertificateExpiration", "MFSecureMIMECompositionManager.m", 856, "date");
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v13 setDateStyle:3];
  [v13 setTimeStyle:3];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [v13 stringFromDate:v11];
  v16 = [v14 stringWithFormat:v12, v3, v15];

  v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v16];
  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v17 ef_publicDescription];
    *buf = 138412802;
    v23 = a1;
    v24 = 2112;
    v25 = v3;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "#SMIMEErrors Certificate %@ for address %@ is not currently valid: %{public}@", buf, 0x20u);
  }

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t MFHasAccountsEntitlement()
{
  if (MFHasAccountsEntitlement_once != -1)
  {
    MFHasAccountsEntitlement_cold_1();
  }

  return MFHasAccountsEntitlement___hasAccountsEntitlement;
}

void __MFHasAccountsEntitlement_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValuesForEntitlements(v0, &unk_1F27756E8, 0);
    CFRelease(v1);
    MFHasAccountsEntitlement___hasAccountsEntitlement = [(__CFDictionary *)v2 count]!= 0;
  }
}

void sub_1B066AF58(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B066B9D8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B066D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);

  _Unwind_Resume(a1);
}

id _createParameterStringFromBytes(const UInt8 **a1, unint64_t a2)
{
  v4 = *a1;
  v5 = MEMORY[0x1E69E9830];
  if (*a1 < a2)
  {
    while (1)
    {
      v6 = *v4;
      if ((v6 & 0x80000000) != 0)
      {
        if (!__maskrune(v6, 0x4000uLL))
        {
LABEL_8:
          v4 = *a1;
          break;
        }
      }

      else if ((*(v5 + 4 * v6 + 60) & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      *a1 = ++v4;
      if (v4 == a2)
      {
        v4 = a2;
        break;
      }
    }
  }

  v7 = (v4 + 1);
  if (v4 + 1 >= a2)
  {
    v8 = 0;
    v7 = a2;
  }

  else
  {
    v8 = 0;
    v9 = ~v4 + a2;
    do
    {
      v10 = *v7;
      if ((v10 & 0x80000000) != 0)
      {
        if (__maskrune(*v7, 0x4000uLL))
        {
          goto LABEL_23;
        }
      }

      else if ((*(v5 + 4 * v10 + 60) & 0x4000) != 0)
      {
        goto LABEL_23;
      }

      if (v8)
      {
        v8 = 1;
      }

      else
      {
        if ((v10 & 0x80000000) != 0)
        {
          v11 = __maskrune(v10, 0x1000uLL);
        }

        else
        {
          v11 = *(v5 + 4 * v10 + 60) & 0x1000;
        }

        v8 = v11 != 0;
      }

      ++v7;
      --v9;
    }

    while (v9);
    v7 = a2;
LABEL_23:
    v4 = *a1;
  }

  if (v4 >= v7)
  {
    v13 = 0;
  }

  else
  {
    v12 = CFStringCreateWithBytes(0, v4, &v7[-v4], 0x600u, 0);
    v13 = v12;
    if (v12 != 0 && v8)
    {
      v14 = [(__CFString *)v12 uppercaseString];

      v13 = v14;
    }
  }

  if ((v7 + 1) < a2)
  {
    v15 = v7 + 1;
  }

  else
  {
    v15 = a2;
  }

  *a1 = v15;

  return v13;
}

void sub_1B067151C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1B06718F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void probeMessageUpdate(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 >= 5)
  {
    v5 = sqlite3_context_db_handle(a1);
    v6 = sqlite3_value_int64(*a3);
    v7 = sqlite3_value_int64(a3[1]);
    v8 = sqlite3_value_int64(a3[2]);
    v9 = sqlite3_value_int64(a3[3]);
    v10 = sqlite3_value_int64(a3[4]);
    v23 = duplicateMessageIDs(v5, v9, v6, v10);
    v11 = unreadCountForMailbox(v5, v10);
    v12 = (v8 & 0x100080) == 0 && [v23 count] == 0;
    v13 = v11 + v12;
    if (v8)
    {
      v13 = v11;
    }

    v14 = v11 - v12;
    if ((v8 & 1) == 0)
    {
      v14 = v11;
    }

    if (v7)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v16 appendFormat:@"ROW: %lld; ", v6];
    [v16 appendFormat:@"Count: %ld -> %ld; ", v11, v15];
    objc_msgSend(v16, "appendFormat:", @"Flags: %llu -> %llu ("), v7, v8;
    v17 = NSStringFromBOOL();
    v18 = NSStringFromBOOL();
    [v16 appendFormat:@"R: %@ -> %@ | ", v17, v18];

    v19 = NSStringFromBOOL();
    v20 = NSStringFromBOOL();
    [v16 appendFormat:@"SR: %@ -> %@ | ", v19, v20];

    v21 = NSStringFromBOOL();
    v22 = NSStringFromBOOL();
    [v16 appendFormat:@"TSR: %@ -> %@; "], v21, v22);

    [v16 appendFormat:@"dup msgs: %lu;", objc_msgSend(v23, "count")];
    probUnreadLog(@"#Update", v16);
    sqlite3_result_null(a1);
  }
}

void probeMessageAdd(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 >= 4)
  {
    v5 = sqlite3_context_db_handle(a1);
    v6 = sqlite3_value_int64(*a3);
    v7 = sqlite3_value_int64(a3[1]);
    v8 = sqlite3_value_int64(a3[2]);
    v9 = sqlite3_value_int64(a3[3]);
    v16 = duplicateMessageIDs(v5, v8, v6, v9);
    v10 = unreadCountForMailbox(v5, v9);
    v11 = (v7 & 0x100081) == 0 && [v16 count] == 0;
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v12 appendFormat:@"ROW: %lld; ", v6];
    [v12 appendFormat:@"Count: %ld -> %ld; ", v10, v11 + v10];
    objc_msgSend(v12, "appendFormat:", @"Flags: %llu ("), v7;
    v13 = NSStringFromBOOL();
    [v12 appendFormat:@"R: %@ | ", v13];

    v14 = NSStringFromBOOL();
    [v12 appendFormat:@"SR: %@ | ", v14];

    v15 = NSStringFromBOOL();
    [v12 appendFormat:@"TSR: %@; "], v15);

    [v12 appendFormat:@"dup msgs: %lu;", objc_msgSend(v16, "count")];
    probUnreadLog(@"#Add", v12);
    sqlite3_result_null(a1);
  }
}

void probeMessageDelete(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 >= 4)
  {
    v5 = sqlite3_context_db_handle(a1);
    v6 = sqlite3_value_int64(*a3);
    v7 = sqlite3_value_int64(a3[1]);
    v8 = sqlite3_value_int64(a3[2]);
    v9 = sqlite3_value_int64(a3[3]);
    v16 = duplicateMessageIDs(v5, v8, v6, v9);
    v10 = unreadCountForMailbox(v5, v9);
    if ((v7 & 0x100081) != 0)
    {
      v11 = 0;
    }

    else if ([v16 count])
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v12 appendFormat:@"ROW: %lld; ", v6];
    [v12 appendFormat:@"Count: %ld -> %ld; ", v10, v11 + v10];
    objc_msgSend(v12, "appendFormat:", @"Flags: %llu ("), v7;
    v13 = NSStringFromBOOL();
    [v12 appendFormat:@"R: %@ | ", v13];

    v14 = NSStringFromBOOL();
    [v12 appendFormat:@"SR: %@ | ", v14];

    v15 = NSStringFromBOOL();
    [v12 appendFormat:@"TSR: %@; "], v15);

    [v12 appendFormat:@"dup msgs: %lu;", objc_msgSend(v16, "count")];
    probUnreadLog(@"#Delete", v12);
    sqlite3_result_null(a1);
  }
}

id duplicateMessageIDs(sqlite3 *a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  ppStmt = 0;
  sqlite3_prepare_v2(a1, "SELECT message_id FROM messages WHERE message_id = ? AND rowid != ? AND flags&2 > 0 AND mailbox = ? AND (flags&1 = 0 AND flags&128 = 0 AND flags&1048576 = 0)", -1, &ppStmt, 0);
  if (ppStmt)
  {
    sqlite3_bind_int64(ppStmt, 1, a2);
    sqlite3_bind_int64(ppStmt, 2, a3);
    sqlite3_bind_int64(ppStmt, 3, a4);
    while (sqlite3_step(ppStmt) == 100)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(ppStmt, 0)}];
      [v8 addObject:v9];
    }

    sqlite3_finalize(ppStmt);
  }

  return v8;
}

uint64_t unreadCountForMailbox(sqlite3 *a1, sqlite3_int64 a2)
{
  ppStmt = 0;
  sqlite3_prepare_v2(a1, "SELECT unread_count FROM mailboxes WHERE ROWID = ?", -1, &ppStmt, 0);
  if (!ppStmt)
  {
    return 0;
  }

  sqlite3_bind_int64(ppStmt, 1, a2);
  if (sqlite3_step(ppStmt) == 100)
  {
    v3 = sqlite3_column_int(ppStmt, 0);
  }

  else
  {
    v3 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

void probUnreadLog(__CFString *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = &stru_1F273A5E0;
  if (a1)
  {
    v4 = a1;
  }

  v5 = v4;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2080;
    v11 = [v3 UTF8String];
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#UnreadCount [UnreadCount] %@ %s", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B0673558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void _removeDestructionHandler(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  v4 = objc_getAssociatedObject(object, v3);
  [v4 setCache:0];
  objc_setAssociatedObject(object, v3, 0, 1);
}

BOOL _releaseTopStackEntry(uint64_t a1)
{
  v2 = _peekCommandStackEntry(a1);
  v3 = v2;
  if (v2)
  {
    if ([**v2 isEqualToString:@"nofill"])
    {
      *(a1 + 208) = *(a1 + 208) & 0xC0000000 | (*(a1 + 208) - 1) & 0x3FFFFFFF;
    }

    v4 = *(a1 + 224);
    Count = CFArrayGetCount(v4);
    CFArrayRemoveValueAtIndex(v4, Count - 1);
    v6 = v3[1];
    if (v6)
    {
    }

    free(v3);
  }

  return v3 != 0;
}

CFIndex _currentAttributeOfType(uint64_t a1, int a2)
{
  result = CFArrayGetCount(*(a1 + 224));
  if (result)
  {
    v5 = result - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 224), v5);
      if (((*(*ValueAtIndex + 8) >> 3) & 3) == a2)
      {
        result = ValueAtIndex[1];
      }

      else
      {
        result = 0;
      }

      v7 = v5-- != 0;
    }

    while (v7 && !result);
  }

  return result;
}

CFStringRef _copyNextToken(uint64_t a1, CFCharacterSetRef theSet)
{
  v4 = *(a1 + 192);
  if (v4 < *(a1 + 200))
  {
    if (v4 < 0)
    {
      if (CFCharacterSetIsCharacterMember(theSet, 0))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v5 = a1 + 8;
      v6 = *(a1 + 168);
      if (v6 <= v4)
      {
        v8 = 0;
      }

      else
      {
        v7 = *(a1 + 144);
        if (v7)
        {
          v8 = *(v7 + 2 * *(a1 + 160) + 2 * v4);
        }

        else
        {
          v28 = *(a1 + 152);
          if (v28)
          {
            v8 = *(v28 + *(a1 + 160) + v4);
          }

          else
          {
            if (*(a1 + 184) <= v4 || (v30 = *(a1 + 176), v30 > v4))
            {
              v31 = v4 - 4;
              if (v4 < 4)
              {
                v31 = 0;
              }

              if (v31 + 64 < v6)
              {
                v6 = v31 + 64;
              }

              *(a1 + 176) = v31;
              *(a1 + 184) = v6;
              v36.length = v6 - v31;
              v36.location = *(a1 + 160) + v31;
              CFStringGetCharacters(*(a1 + 136), v36, (a1 + 8));
              v30 = *(a1 + 176);
            }

            v8 = *(v5 + 2 * (v4 - v30));
          }
        }
      }

      if (CFCharacterSetIsCharacterMember(theSet, v8))
      {
        v9 = *(a1 + 168);
        if (v9 > v4)
        {
          v10 = *(a1 + 144);
          if (v10)
          {
            v11 = *(v10 + 2 * *(a1 + 160) + 2 * v4);
          }

          else
          {
            v29 = *(a1 + 152);
            if (v29)
            {
              v11 = *(v29 + *(a1 + 160) + v4);
            }

            else
            {
              if (*(a1 + 184) <= v4 || (v32 = *(a1 + 176), v32 > v4))
              {
                v33 = v4 - 4;
                if (v4 < 4)
                {
                  v33 = 0;
                }

                if (v33 + 64 < v9)
                {
                  v9 = v33 + 64;
                }

                *(a1 + 176) = v33;
                *(a1 + 184) = v9;
                v37.length = v9 - v33;
                v37.location = *(a1 + 160) + v33;
                CFStringGetCharacters(*(a1 + 136), v37, (a1 + 8));
                v32 = *(a1 + 176);
              }

              v11 = *(v5 + 2 * (v4 - v32));
            }
          }

          goto LABEL_41;
        }

LABEL_40:
        v11 = 0;
LABEL_41:
        ++v4;
        chars = v11;
        result = CFStringCreateWithCharacters(0, &chars, 1);
        goto LABEL_44;
      }
    }
  }

  if (v4 >= *(a1 + 200))
  {
    result = 0;
    goto LABEL_44;
  }

  v12 = -v4;
  v13 = v4 + 64;
  v14 = v4;
  do
  {
    if (v14 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v14;
    }

    if (v14 < 0 || (v16 = *(a1 + 168), v16 <= v14))
    {
      v19 = 0;
    }

    else
    {
      v17 = *(a1 + 144);
      if (v17)
      {
        v18 = v17 + 2 * *(a1 + 160);
      }

      else
      {
        v20 = *(a1 + 152);
        if (v20)
        {
          v19 = *(v20 + *(a1 + 160) + v14);
          goto LABEL_24;
        }

        if (*(a1 + 184) <= v14 || (v21 = *(a1 + 176), v21 > v14))
        {
          v22 = -v15;
          v23 = v15 + v12;
          v24 = v13 - v15;
          v25 = v14 + v22;
          v26 = v25 + 64;
          if (v25 + 64 >= v16)
          {
            v26 = *(a1 + 168);
          }

          *(a1 + 176) = v25;
          *(a1 + 184) = v26;
          if (v16 >= v24)
          {
            v16 = v24;
          }

          v35.location = v25 + *(a1 + 160);
          v35.length = v16 + v23;
          CFStringGetCharacters(*(a1 + 136), v35, (a1 + 8));
          v21 = *(a1 + 176);
        }

        v18 = a1 + 8 - 2 * v21;
      }

      v19 = *(v18 + 2 * v14);
    }

LABEL_24:
    if (CFCharacterSetIsCharacterMember(theSet, v19))
    {
      break;
    }

    ++v14;
    --v12;
    ++v13;
  }

  while (v14 < *(a1 + 200));
  if (v14 <= v4)
  {
    result = 0;
  }

  else
  {
    v38.location = v4;
    v38.length = v14 - v4;
    result = CFStringCreateWithSubstring(0, *(a1 + 136), v38);
  }

  v4 = v14;
LABEL_44:
  *(a1 + 192) = v4;
  return result;
}

const void *_peekCommandStackEntry(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 224));
  v3 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v4 = *(a1 + 224);

  return CFArrayGetValueAtIndex(v4, v3);
}

id MFMimeDataCreateStringFromHeaderBytes()
{
  v0 = _MFCreateStringFromHeaderBytes();

  return v0;
}

void sub_1B0676528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B067662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t EFBreakIfInDebugger()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[8] = 0;
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = getpid();
  v2 = 648;
  result = sysctl(v4, 4u, __b, &v2, 0, 0);
  if (!result && (__b[8] & 0x800) != 0)
  {
    __debugbreak();
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B0678B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0678CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MFCreateStringByCondensingWhitespace(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MFGetMappedAllocator();
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = [(__CFString *)a1 length];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v5;
  v34 = v5;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  *buffer = v5;
  v28 = v5;
  v35 = a1;
  v38 = 0;
  v39 = v4;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v37 = CStringPtr;
  v40 = 0;
  v41 = 0;
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    for (i = 64; ; ++i)
    {
      if (v10 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v10;
      }

      if (v10 < 0 || (v13 = v39, v39 <= v10))
      {
        chars = 0;
        goto LABEL_15;
      }

      if (v36)
      {
        break;
      }

      if (!v37)
      {
        if (v41 <= v10 || (v19 = v40, v40 > v10))
        {
          v20 = -v12;
          v21 = v12 + v8;
          v22 = i - v12;
          v23 = v10 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v39)
          {
            v24 = v39;
          }

          v40 = v23;
          v41 = v24;
          if (v39 >= v22)
          {
            v13 = v22;
          }

          v42.location = v23 + v38;
          v42.length = v13 + v21;
          CFStringGetCharacters(v35, v42, buffer);
          v19 = v40;
        }

        v14 = &buffer[-v19];
        goto LABEL_13;
      }

      v15 = v37[v38 + v10];
LABEL_18:
      chars = v15;
      v16 = v15;
      v17 = (1 << v15) & 0x100002600;
      if (v16 <= 0x20 && v17 != 0)
      {
        if (!((v10 == 0) | v9 & 1))
        {
          CFStringAppend(Mutable, @" ");
        }

        v9 = 1;
        goto LABEL_25;
      }

LABEL_15:
      CFStringAppendCharacters(Mutable, &chars, 1);
      v9 = 0;
LABEL_25:
      ++v10;
      --v8;
      if (v4 == v10)
      {
        return Mutable;
      }
    }

    v14 = &v36[v38];
LABEL_13:
    v15 = v14[v10];
    goto LABEL_18;
  }

  return Mutable;
}

uint64_t MFCopyResponseDataForURLRequest(void *a1)
{
  v1 = a1;
  v2 = MFUserAgent();
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 sourceApplicationBundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  v4 = EFCopyResponseDataForURLRequest();

  return v4;
}

void sub_1B067DC6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _ExtractContentWithTag(uint64_t a1, int a2)
{
  v3 = SecCmsMessageContentLevelCount();
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    SecCmsMessageContentLevel();
    if (SecCmsContentInfoGetContentTypeTag() == a2)
    {
      result = SecCmsContentInfoGetContent();
      if (result)
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B0681F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _MFSecCMSDecoder;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0682B08(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}