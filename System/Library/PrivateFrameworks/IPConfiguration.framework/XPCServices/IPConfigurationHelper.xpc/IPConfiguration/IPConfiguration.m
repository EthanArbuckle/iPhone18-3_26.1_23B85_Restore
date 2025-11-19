void sub_100000DD8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100000E60;
  block[3] = &unk_10000C3A8;
  block[4] = a1;
  if (qword_100010990 != -1)
  {
    dispatch_once(&qword_100010990, block);
  }
}

uint64_t sub_100000E60(uint64_t a1)
{
  v1 = os_log_create("com.apple.IPConfiguration", *(a1 + 32));

  return sub_100008294(v1);
}

void sub_100001750(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_1000082A0();
    v11 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      os_log_type_enabled(v10, v11);
      v48 = 138412290;
      v49 = v9;
      LODWORD(v46) = 12;
      v45 = &v48;
      v12 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v12 != &v52)
      {
        free(v12);
      }
    }

    v13 = [v9 domain];
    if ([v13 isEqualToString:kCFErrorDomainCFNetwork])
    {
      v14 = [v9 code];

      if (v14 == -1009)
      {
        v15 = sub_1000082A0();
        v16 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          os_log_type_enabled(v15, v16);
          LOWORD(v48) = 0;
          LODWORD(v46) = 2;
          v45 = &v48;
          v17 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v17 != &v52)
          {
            free(v17);
          }
        }

        goto LABEL_26;
      }

LABEL_25:
      [*(a1 + 32) setValidFetch:{0, v45, v46}];
LABEL_26:
      v18 = 0;
LABEL_27:
      v21 = 0;
      v22 = 0;
      v20 = 0;
      goto LABEL_28;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!v8)
  {
    v13 = sub_1000082A0();
    v26 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      os_log_type_enabled(v13, v26);
      LOWORD(v48) = 0;
      LODWORD(v46) = 2;
      v45 = &v48;
      v27 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v27 != &v52)
      {
        free(v27);
      }
    }

    goto LABEL_24;
  }

  v18 = v8;
  v19 = [v18 statusCode];
  if ((v19 - 200) >= 0xC8)
  {
    v30 = v19;
    v31 = sub_1000082A0();
    v32 = _SC_syslog_os_log_mapping();
    v33 = __SC_log_enabled();
    if (v30 >= 400)
    {
      if (!v33)
      {
        goto LABEL_43;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      os_log_type_enabled(v31, v32);
      v34 = v31;
      v35 = [NSHTTPURLResponse localizedStringForStatusCode:v30];
      v48 = 134218242;
      v49 = v30;
      v50 = 2112;
      v51 = v35;
      LODWORD(v46) = 22;
      v45 = &v48;
      v36 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v36 == &v52)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!v33)
    {
LABEL_43:

      [*(a1 + 32) setValidFetch:0];
      goto LABEL_27;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    os_log_type_enabled(v31, v32);
    v48 = 134217984;
    v49 = v30;
    LODWORD(v46) = 12;
    v45 = &v48;
LABEL_41:
    v36 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v36 != &v52)
    {
LABEL_42:
      free(v36);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  if (!v7)
  {
    v31 = sub_1000082A0();
    v37 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_43;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    os_log_type_enabled(v31, v37);
    v38 = *(a1 + 40);
    v48 = 138412290;
    v49 = v38;
    LODWORD(v46) = 12;
    v45 = &v48;
    goto LABEL_41;
  }

  v47 = 0;
  v20 = [NSJSONSerialization JSONObjectWithData:v7 options:16 error:&v47];
  v21 = v47;
  if (v21 || !v20)
  {
    v39 = sub_1000082A0();
    v40 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      os_log_type_enabled(v39, v40);
      v48 = 138412290;
      v49 = v21;
      LODWORD(v46) = 12;
      v45 = &v48;
      v41 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v41 != &v52)
      {
        free(v41);
      }
    }

    [*(a1 + 32) setValidFetch:0];
    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = sub_1000082A0();
    v43 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      os_log_type_enabled(v42, v43);
      LOWORD(v48) = 0;
      LODWORD(v46) = 2;
      v45 = &v48;
      v44 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v44 != &v52)
      {
        free(v44);
      }
    }

    [*(a1 + 32) setValidFetch:0];
    v21 = 0;
LABEL_52:
    v22 = 0;
    goto LABEL_28;
  }

  v22 = v20;
  v23 = sub_1000082A0();
  v24 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    os_log_type_enabled(v23, v24);
    v48 = 138412290;
    v49 = v22;
    LODWORD(v46) = 12;
    v45 = &v48;
    v25 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v25 != &v52)
    {
      free(v25);
    }
  }

  v21 = 0;
  v20 = v22;
LABEL_28:
  v28 = [*(a1 + 32) validFetch];
  v29 = *(a1 + 32);
  if (v28 && v22)
  {
    [v29 scheduleParsingEventCompleteWithParsedJSON:v22 pvdID:*(a1 + 48) ipv6Prefixes:*(a1 + 56)];
  }

  else
  {
    [v29 scheduleParsingEventAbort];
  }
}

void sub_100002298(uint64_t a1)
{
  v20 = 0;
  v2 = [*(a1 + 32) urlSession];

  if (v2)
  {
    v3 = sub_1000082A0();
    v4 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(v3, v4);
      v19 = 0;
      LODWORD(v17) = 2;
      v15 = &v19;
      v5 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v5 != &v21)
      {
        free(v5);
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = [*(a1 + 32) createValidPvDAdditionalInfoDict:*(a1 + 40) withID:*(a1 + 48) andPrefixes:*(a1 + 56)];
    v20 = v7;
    if (!v7)
    {
      [*(a1 + 32) setValidFetch:0];
    }

    v8 = [*(a1 + 32) validFetch];
    v9 = &kCFBooleanTrue;
    if (!v8)
    {
      v9 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"valid_fetch", *v9);
    if ([*(a1 + 32) validFetch] && v7)
    {
      v10 = sub_1000082A0();
      v11 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(v10, v11);
        v19 = 0;
        LODWORD(v18) = 2;
        v16 = &v19;
        v12 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v12 != &v21)
        {
          free(v12);
        }
      }

      CFDictionarySetValue(Mutable, @"additional_information", v7);
    }

    v13 = [*(a1 + 32) urlSession];
    [v13 finishTasksAndInvalidate];

    [*(a1 + 32) setUrlSession:0];
    v14 = [*(a1 + 32) xpcClientCompletionHandler];
    (v14)[2](v14, Mutable);
  }

  sub_1000075DC(&v20);
}

void sub_100002654(uint64_t a1)
{
  v2 = [*(a1 + 32) urlSession];

  if (v2)
  {
    v3 = sub_1000082A0();
    v4 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v11, 0, sizeof(v11));
      os_log_type_enabled(v3, v4);
      v5 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v5 != v11)
      {
        free(v5);
      }
    }

    v6 = [*(a1 + 32) urlSession];
    [v6 invalidateAndCancel];

    [*(a1 + 32) setUrlSession:0];
    Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = [*(a1 + 32) validFetch];
    v9 = &kCFBooleanTrue;
    if (!v8)
    {
      v9 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"valid_fetch", *v9);
    v10 = [*(a1 + 32) xpcClientCompletionHandler];
    (v10)[2](v10, Mutable);
  }
}

BOOL sub_1000046E4(__CFDictionary *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v165 = a4;
  StringWithDate = 0;
  v188 = 0;
  v186 = 0;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v178 = [&off_10000C768 countByEnumeratingWithState:&v182 objects:v199 count:16];
  if (!v178)
  {
    v10 = 0;
    value = 0;
    v9 = 0;
    goto LABEL_135;
  }

  value = 0;
  v9 = 0;
  v10 = 0;
  v161 = 0;
  v179 = *v183;
  v173 = v8;
  v174 = v7;
  theDict = a1;
LABEL_3:
  v160 = v10;
  v11 = 0;
  while (1)
  {
    if (*v183 != v179)
    {
      objc_enumerationMutation(&off_10000C768);
    }

    v12 = *(*(&v182 + 1) + 8 * v11);
    v13 = objc_autoreleasePoolPush();
    v14 = [v7 valueForKey:v12];
    if (!v14)
    {
      v145 = sub_1000082A0();
      v119 = _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_173;
      }

      v120 = v13;
      v225 = 0u;
      v224 = 0u;
      v223 = 0u;
      v222 = 0u;
      v221 = 0u;
      v220 = 0u;
      v219 = 0u;
      v218 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0uLL;
      v211 = 0uLL;
      os_log_type_enabled(v145, v119);
      v204 = 138412290;
      v205 = v12;
      v121 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v121 != &v210)
      {
        v122 = v121;
        goto LABEL_170;
      }

LABEL_171:
      v7 = v174;
      v13 = v120;
      goto LABEL_173;
    }

    if ([(__CFString *)v12 isEqualToString:@"identifier"]&& v9 == 0)
    {
      break;
    }

    if ([(__CFString *)v12 isEqualToString:@"expires"])
    {
      v16 = value == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v172 = v9;
      v168 = v12;
      v78 = v14;
      v203[0] = 0;
      *&v193 = 0;
      *&v189 = 0;
      *v200 = 0;
      v79 = sub_1000082A0();
      v80 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v181 = v11;
        v81 = v8;
        v82 = v14;
        v225 = 0u;
        v224 = 0u;
        v223 = 0u;
        v222 = 0u;
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0uLL;
        v211 = 0uLL;
        os_log_type_enabled(v79, v80);
        v83 = v79;
        v84 = objc_opt_class();
        v204 = 138412802;
        v205 = v168;
        v206 = 2112;
        v207 = v78;
        v208 = 2112;
        v209 = v84;
        v85 = v84;
        LODWORD(v150) = 32;
        v149 = &v204;
        v86 = _os_log_send_and_compose_impl();

        __SC_log_send2();
        if (v86 != &v210)
        {
          free(v86);
        }

        v14 = v82;
        v8 = v81;
        v11 = v181;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v135 = sub_1000082A0();
        v136 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v225 = 0u;
          v224 = 0u;
          v223 = 0u;
          v222 = 0u;
          v221 = 0u;
          v220 = 0u;
          v219 = 0u;
          v218 = 0u;
          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v210 = 0uLL;
          v211 = 0uLL;
          os_log_type_enabled(v135, v136);
          v135 = v135;
          v137 = objc_opt_class();
          v204 = 138412290;
          v205 = v137;
          v138 = v137;
          v139 = _os_log_send_and_compose_impl();

          __SC_log_send2();
          if (v139 != &v210)
          {
            free(v139);
          }
        }

        goto LABEL_166;
      }

      v87 = CFLocaleCreate(0, @"en_US_POSIX");
      *&v193 = v87;
      if (!v87)
      {
        goto LABEL_167;
      }

      v88 = CFDateFormatterCreate(0, v87, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      v203[0] = v88;
      if (!v88)
      {
        goto LABEL_167;
      }

      v89 = v88;
      CFDateFormatterSetFormat(v88, @"yyyy-MM-dd'T'HH:mm:ss'Z'");
      DateFromString = CFDateFormatterCreateDateFromString(0, v89, v78, 0);
      *&v189 = DateFromString;
      if (!DateFromString || (v91 = DateFromString, Current = CFAbsoluteTimeGetCurrent(), v93 = CFDateCreate(0, Current), (*v200 = v93) == 0))
      {
LABEL_167:
        sub_1000075DC(&v193);
        sub_1000075DC(v203);
        sub_1000075DC(&v189);
        sub_1000075DC(v200);

        v145 = sub_1000082A0();
        v142 = _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          v7 = v174;
          goto LABEL_173;
        }

        v120 = v13;
        v225 = 0u;
        v224 = 0u;
        v223 = 0u;
        v222 = 0u;
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0uLL;
        v211 = 0uLL;
        os_log_type_enabled(v145, v142);
        v204 = 138412546;
        v205 = v168;
        v206 = 2112;
        v207 = v78;
        v143 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v143 != &v210)
        {
          v122 = v143;
LABEL_170:
          free(v122);
        }

        goto LABEL_171;
      }

      if (CFDateCompare(v91, v93, 0) == kCFCompareGreaterThan)
      {
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v89, v91);
        value = StringWithDate;
        if (StringWithDate)
        {
          sub_1000075DC(&v193);
          sub_1000075DC(v203);
          sub_1000075DC(&v189);
          sub_1000075DC(v200);
          v9 = v172;
          goto LABEL_89;
        }

        v135 = sub_1000082A0();
        v140 = _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_166;
        }
      }

      else
      {
        v135 = sub_1000082A0();
        v140 = _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
LABEL_166:

          goto LABEL_167;
        }
      }

      v225 = 0u;
      v224 = 0u;
      v223 = 0u;
      v222 = 0u;
      v221 = 0u;
      v220 = 0u;
      v219 = 0u;
      v218 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0uLL;
      v211 = 0uLL;
      os_log_type_enabled(v135, v140);
      LOWORD(v204) = 0;
      v141 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v141 != &v210)
      {
        free(v141);
      }

      goto LABEL_166;
    }

    if ([(__CFString *)v12 isEqualToString:@"prefixes"])
    {
      v17 = v161 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      goto LABEL_90;
    }

    v180 = v11;
    v166 = v12;
    v18 = v14;
    v157 = v165;
    v198 = 0;
    v19 = [(__CFString *)v18 count];
    v20 = v19;
    v21 = 10;
    if (v19 < 0xA)
    {
      v21 = v19;
    }

    v158 = v21;
    theArray = 0;
    v22 = sub_1000082A0();
    v23 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v169 = v9;
      v24 = v7;
      v225 = 0u;
      v224 = 0u;
      v223 = 0u;
      v222 = 0u;
      v221 = 0u;
      v220 = 0u;
      v219 = 0u;
      v218 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v25 = v18;
      v210 = 0uLL;
      v211 = 0uLL;
      os_log_type_enabled(v22, v23);
      v26 = v22;
      v27 = objc_opt_class();
      v204 = 138412802;
      v205 = v166;
      v206 = 2112;
      v28 = v25;
      v207 = v25;
      v208 = 2112;
      v209 = v27;
      v29 = v27;
      LODWORD(v150) = 32;
      v149 = &v204;
      v30 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v30 != &v210)
      {
        free(v30);
      }

      v7 = v24;
      v9 = v169;
      v18 = v28;
      v8 = v173;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v94 = sub_1000082A0();
      v95 = _SC_syslog_os_log_mapping();
      v34 = v166;
      if (__SC_log_enabled())
      {
        v225 = 0u;
        v224 = 0u;
        v223 = 0u;
        v222 = 0u;
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0uLL;
        v211 = 0uLL;
        os_log_type_enabled(v94, v95);
        LOWORD(v204) = 0;
        LODWORD(v150) = 2;
        v149 = &v204;
        v96 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v96 != &v210)
        {
          free(v96);
        }

        v34 = v166;
      }

      goto LABEL_127;
    }

    v31 = +[NSMutableArray array];
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v33 = 0;
    v198 = Mutable;
    v34 = v166;
    v162 = v31;
    if (!v31 || !Mutable)
    {
      goto LABEL_67;
    }

    if (!v20)
    {
LABEL_44:
      sub_1000075DC(&theArray);
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      obj = v157;
      v154 = [obj countByEnumeratingWithState:&v193 objects:&v204 count:16];
      if (v154)
      {
        v153 = *v194;
        v163 = v13;
        v176 = v14;
        v170 = v9;
        v151 = v18;
        while (2)
        {
          v47 = 0;
          while (2)
          {
            if (*v194 != v153)
            {
              objc_enumerationMutation(obj);
            }

            v156 = v47;
            v159 = [*(*(&v193 + 1) + 8 * v47) componentsSeparatedByString:{@"::", v149, v150}];
            v48 = [v159 firstObject];
            v189 = 0u;
            v190 = 0u;
            v191 = 0u;
            v192 = 0u;
            v49 = v162;
            v50 = [v49 countByEnumeratingWithState:&v189 objects:v203 count:16];
            if (!v50)
            {
LABEL_97:

              v97 = sub_1000082A0();
              v98 = _SC_syslog_os_log_mapping();
              v8 = v173;
              v13 = v163;
              v14 = v176;
              if (__SC_log_enabled())
              {
                v225 = 0u;
                v224 = 0u;
                v223 = 0u;
                v222 = 0u;
                v221 = 0u;
                v220 = 0u;
                v219 = 0u;
                v218 = 0u;
                v216 = 0u;
                v217 = 0u;
                v214 = 0u;
                v215 = 0u;
                v212 = 0u;
                v213 = 0u;
                v210 = 0uLL;
                v211 = 0uLL;
                os_log_type_enabled(v97, v98);
                *v200 = 138412546;
                *&v200[4] = v48;
                v201 = 2112;
                v202 = v49;
                LODWORD(v150) = 22;
                v149 = v200;
                v99 = _os_log_send_and_compose_impl();
                __SC_log_send2();
                if (v99 != &v210)
                {
                  free(v99);
                }
              }

              v33 = 0;
              v7 = v174;
              v9 = v170;
              v34 = v166;
              v18 = v151;
              goto LABEL_128;
            }

            v51 = v50;
            v52 = *v190;
LABEL_51:
            v53 = 0;
            while (1)
            {
              if (*v190 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = [*(*(&v189 + 1) + 8 * v53) componentsSeparatedByString:@"::"];
              v55 = [v54 firstObject];
              v56 = [v48 lowercaseString];
              v57 = [v55 lowercaseString];
              v58 = [v56 containsString:v57];

              if (v58)
              {
                break;
              }

              if (v51 == ++v53)
              {
                v51 = [v49 countByEnumeratingWithState:&v189 objects:v203 count:16];
                if (v51)
                {
                  goto LABEL_51;
                }

                goto LABEL_97;
              }
            }

            v59 = sub_1000082A0();
            v60 = _SC_syslog_os_log_mapping();
            v8 = v173;
            v13 = v163;
            if (__SC_log_enabled())
            {
              v225 = 0u;
              v224 = 0u;
              v223 = 0u;
              v222 = 0u;
              v221 = 0u;
              v220 = 0u;
              v219 = 0u;
              v218 = 0u;
              v216 = 0u;
              v217 = 0u;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v210 = 0uLL;
              v211 = 0uLL;
              os_log_type_enabled(v59, v60);
              *v200 = 138412546;
              *&v200[4] = v48;
              v201 = 2112;
              v202 = v55;
              LODWORD(v150) = 22;
              v149 = v200;
              v61 = _os_log_send_and_compose_impl();
              __SC_log_send2();
              if (v61 != &v210)
              {
                free(v61);
              }
            }

            v47 = v156 + 1;
            if ((v156 + 1) != v154)
            {
              continue;
            }

            break;
          }

          v14 = v176;
          v9 = v170;
          v34 = v166;
          v18 = v151;
          v154 = [obj countByEnumeratingWithState:&v193 objects:&v204 count:16];
          if (v154)
          {
            continue;
          }

          break;
        }
      }

      v160 = v198;
      v186 = v198;
      v62 = sub_1000082A0();
      v63 = _SC_syslog_os_log_mapping();
      v7 = v174;
      if (__SC_log_enabled())
      {
        v225 = 0u;
        v224 = 0u;
        v223 = 0u;
        v222 = 0u;
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0uLL;
        v211 = 0uLL;
        os_log_type_enabled(v62, v63);
        *v200 = 138412290;
        *&v200[4] = v160;
        LODWORD(v150) = 12;
        v149 = v200;
        v64 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v64 != &v210)
        {
          free(v64);
        }
      }

      v33 = 1;
LABEL_67:
      v49 = v162;
      goto LABEL_128;
    }

    v35 = 0;
    while (1)
    {
      v36 = objc_autoreleasePoolPush();
      v203[1] = 0;
      v203[0] = 0;
      LODWORD(v189) = 0;
      *&v193 = 0;
      v37 = [(__CFString *)v18 objectAtIndex:v35];
      TypeID = CFStringGetTypeID();
      if (!v37 || CFGetTypeID(v37) != TypeID)
      {
        v100 = v9;
        v101 = sub_1000082A0();
        v102 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v42 = v36;
          v43 = v18;
          v225 = 0u;
          v224 = 0u;
          v223 = 0u;
          v222 = 0u;
          v221 = 0u;
          v220 = 0u;
          v219 = 0u;
          v218 = 0u;
          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v210 = 0uLL;
          v211 = 0uLL;
          os_log_type_enabled(v101, v102);
          v101 = v101;
          v103 = CFStringGetTypeID();
          v104 = CFCopyTypeIDDescription(v103);
          v105 = CFGetTypeID(v37);
          v106 = CFCopyTypeIDDescription(v105);
          v204 = 138412546;
          v205 = v104;
          v206 = 2112;
          v207 = v106;
          LODWORD(v150) = 22;
          v149 = &v204;
          v107 = _os_log_send_and_compose_impl();

          __SC_log_send2();
          if (v107 != &v210)
          {
            free(v107);
          }

          v9 = v100;
          goto LABEL_118;
        }

        v9 = v100;
LABEL_120:
        v34 = v166;
        goto LABEL_121;
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v37, @"/");
      theArray = ArrayBySeparatingStrings;
      if (!ArrayBySeparatingStrings || CFArrayGetCount(ArrayBySeparatingStrings) != 2)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v41 = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v41)
      {
        v101 = sub_1000082A0();
        v108 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_112;
        }

        goto LABEL_120;
      }

      if ((sub_10000769C(ValueAtIndex, v203) & 1) == 0)
      {
        v101 = sub_1000082A0();
        v108 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_112;
        }

        goto LABEL_120;
      }

      v42 = v36;
      v43 = v18;
      v44 = CFArrayGetValueAtIndex(theArray, 1);
      v45 = CFStringGetTypeID();
      if (!v44 || CFGetTypeID(v44) != v45)
      {
        v101 = sub_1000082A0();
        v109 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_116:
          v225 = 0u;
          v224 = 0u;
          v223 = 0u;
          v222 = 0u;
          v221 = 0u;
          v220 = 0u;
          v219 = 0u;
          v218 = 0u;
          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v210 = 0uLL;
          v211 = 0uLL;
          os_log_type_enabled(v101, v109);
          LOWORD(v204) = 0;
          LODWORD(v150) = 2;
          v149 = &v204;
          v113 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v113 != &v210)
          {
            free(v113);
          }
        }

LABEL_118:
        v34 = v166;
        v18 = v43;
        v36 = v42;
        v8 = v173;
        goto LABEL_121;
      }

      if (!sub_100007754(v44, &v189) || v189 >= 0x81)
      {
        v101 = sub_1000082A0();
        v109 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_116;
        }

        goto LABEL_118;
      }

      v46 = CFStringCreateWithFormat(0, 0, @"%@/%@", ValueAtIndex, v44);
      *&v193 = v46;
      v34 = v166;
      v36 = v42;
      v8 = v173;
      if (!v46)
      {
        goto LABEL_122;
      }

      CFArrayAppendValue(v198, v46);
      [v162 addObject:v37];
      sub_1000075DC(&theArray);
      sub_1000075DC(&v193);
      objc_autoreleasePoolPop(v36);
      if (v158 == ++v35)
      {
        goto LABEL_44;
      }
    }

    v101 = sub_1000082A0();
    v108 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_121;
    }

LABEL_112:
    v110 = v36;
    v111 = v18;
    v225 = 0u;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v220 = 0u;
    v219 = 0u;
    v218 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0uLL;
    v211 = 0uLL;
    os_log_type_enabled(v101, v108);
    LOWORD(v204) = 0;
    LODWORD(v150) = 2;
    v149 = &v204;
    v112 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v112 != &v210)
    {
      free(v112);
    }

    v34 = v166;
    v18 = v111;
    v36 = v110;
LABEL_121:

LABEL_122:
    objc_autoreleasePoolPop(v36);
    sub_1000075DC(&theArray);
    v114 = sub_1000082A0();
    v115 = _SC_syslog_os_log_mapping();
    v7 = v174;
    if (__SC_log_enabled())
    {
      v225 = 0u;
      v224 = 0u;
      v223 = 0u;
      v222 = 0u;
      v221 = 0u;
      v220 = 0u;
      v219 = 0u;
      v218 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0uLL;
      v211 = 0uLL;
      os_log_type_enabled(v114, v115);
      LOWORD(v204) = 0;
      LODWORD(v150) = 2;
      v149 = &v204;
      v116 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v116 != &v210)
      {
        free(v116);
      }

      v34 = v166;
    }

    sub_1000075DC(&v198);
LABEL_127:
    v33 = 0;
    v49 = 0;
LABEL_128:
    if (!v160)
    {
      sub_1000075DC(&v198);
    }

    v161 = v160;
    v11 = v180;
    if ((v33 & 1) == 0)
    {
      v145 = sub_1000082A0();
      v146 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v225 = 0u;
        v224 = 0u;
        v223 = 0u;
        v222 = 0u;
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0uLL;
        v211 = 0uLL;
        os_log_type_enabled(v145, v146);
        v204 = 138412546;
        v205 = v34;
        v206 = 2112;
        v207 = v18;
        v148 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v148 != &v210)
        {
          free(v148);
        }
      }

      goto LABEL_173;
    }

LABEL_90:

    objc_autoreleasePoolPop(v13);
    if (++v11 == v178)
    {
      v117 = [&off_10000C768 countByEnumeratingWithState:&v182 objects:v199 count:16];
      a1 = theDict;
      v10 = v160;
      v178 = v117;
      if (!v117)
      {
LABEL_135:
        CFDictionarySetValue(a1, @"identifier", v9);
        CFDictionarySetValue(a1, @"expires", value);
        CFDictionarySetValue(a1, @"prefixes", v10);
        v118 = CFDictionaryGetCount(a1) == 3;
        goto LABEL_174;
      }

      goto LABEL_3;
    }
  }

  v171 = v12;
  v177 = v14;
  v65 = v14;
  v66 = v8;
  v67 = sub_1000082A0();
  v68 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v167 = v66;
    v225 = 0u;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v220 = 0u;
    v219 = 0u;
    v218 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0uLL;
    v211 = 0uLL;
    os_log_type_enabled(v67, v68);
    v69 = v67;
    v70 = objc_opt_class();
    v204 = 138412802;
    v205 = v171;
    v206 = 2112;
    v207 = v65;
    v208 = 2112;
    v209 = v70;
    v71 = v70;
    LODWORD(v150) = 32;
    v149 = &v204;
    v72 = _os_log_send_and_compose_impl();

    __SC_log_send2();
    if (v72 != &v210)
    {
      free(v72);
    }

    v66 = v167;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v164 = v13;
    v123 = sub_1000082A0();
    v124 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v225 = 0u;
      v224 = 0u;
      v223 = 0u;
      v222 = 0u;
      v221 = 0u;
      v220 = 0u;
      v219 = 0u;
      v218 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0uLL;
      v211 = 0uLL;
      os_log_type_enabled(v123, v124);
      v123 = v123;
      v125 = objc_opt_class();
      v204 = 138412290;
      v205 = v125;
      v126 = v125;
      v127 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      v128 = v171;
      if (v127 == &v210)
      {
        goto LABEL_152;
      }

      goto LABEL_146;
    }

LABEL_151:
    v128 = v171;
    goto LABEL_152;
  }

  v73 = [(__CFString *)v65 lowercaseString];
  v74 = [v66 lowercaseString];
  v75 = [v73 isEqualToString:v74];

  if ((v75 & 1) == 0)
  {
    v164 = v13;
    v123 = sub_1000082A0();
    v129 = _SC_syslog_os_log_mapping();
    v128 = v171;
    if (__SC_log_enabled())
    {
      goto LABEL_148;
    }

    goto LABEL_152;
  }

  v76 = sub_100007FC8(v65);
  if (!v76)
  {
    v164 = v13;
    v123 = sub_1000082A0();
    v130 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v225 = 0u;
      v224 = 0u;
      v223 = 0u;
      v222 = 0u;
      v221 = 0u;
      v220 = 0u;
      v219 = 0u;
      v218 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0uLL;
      v211 = 0uLL;
      os_log_type_enabled(v123, v130);
      v204 = 138412290;
      v128 = v171;
      v205 = v171;
      v127 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v127 == &v210)
      {
        goto LABEL_152;
      }

LABEL_146:
      v131 = v127;
      goto LABEL_150;
    }

    goto LABEL_151;
  }

  CFRelease(v76);
  Copy = CFStringCreateCopy(0, v65);
  v188 = Copy;
  if (Copy)
  {
    v9 = Copy;

    v14 = v177;
    v8 = v173;
LABEL_89:

    v7 = v174;
    goto LABEL_90;
  }

  v164 = v13;
  v123 = sub_1000082A0();
  v129 = _SC_syslog_os_log_mapping();
  v128 = v171;
  if (__SC_log_enabled())
  {
LABEL_148:
    v225 = 0u;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v220 = 0u;
    v219 = 0u;
    v218 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0uLL;
    v211 = 0uLL;
    os_log_type_enabled(v123, v129);
    LOWORD(v204) = 0;
    v132 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v132 != &v210)
    {
      v131 = v132;
LABEL_150:
      free(v131);
    }
  }

LABEL_152:

  v145 = sub_1000082A0();
  v133 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v225 = 0u;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v220 = 0u;
    v219 = 0u;
    v218 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0uLL;
    v211 = 0uLL;
    os_log_type_enabled(v145, v133);
    v204 = 138412546;
    v205 = v128;
    v206 = 2112;
    v207 = v65;
    v134 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    v14 = v177;
    v8 = v173;
    if (v134 != &v210)
    {
      free(v134);
    }

    v7 = v174;
    v13 = v164;
  }

  else
  {
    v13 = v164;
    v14 = v177;
    v8 = v173;
    v7 = v174;
  }

LABEL_173:

  objc_autoreleasePoolPop(v13);
  v118 = 0;
LABEL_174:
  sub_1000075DC(&v188);
  sub_1000075DC(&StringWithDate);
  sub_1000075DC(&v186);

  return v118;
}

uint64_t sub_100006AE8(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || [v3 count] > 0xA)
  {
LABEL_40:
    v5 = sub_1000082A0();
    v25 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      os_log_type_enabled(v5, v25);
      v36 = 136315650;
      v37 = "enforce_proper_boundaries";
      v38 = 1024;
      v39 = a2;
      v40 = 2112;
      v41 = v4;
      v26 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v26 != &v44)
      {
        free(v26);
      }
    }

    v10 = 0;
    goto LABEL_44;
  }

  if (a2 == 2)
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (!sub_100006FF4(*(*(&v32 + 1) + 8 * v9)))
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v32 objects:v43 count:16];
          v10 = 1;
          if (v7)
          {
            goto LABEL_6;
          }

          goto LABEL_44;
        }
      }

LABEL_39:

      goto LABEL_40;
    }

LABEL_33:
    v10 = 1;
    goto LABEL_44;
  }

  v30 = 0uLL;
  v31 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v5 = v4;
  v11 = [v5 countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = v11;
  v13 = *v29;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v28 + 1) + 8 * i);
      if (sub_100006FF4(v15))
      {
        v16 = 0;
        goto LABEL_30;
      }

      v16 = v15;
      if (!v16 || (TypeID = CFArrayGetTypeID(), CFGetTypeID(v16) != TypeID) && (v18 = CFDictionaryGetTypeID(), CFGetTypeID(v16) != v18))
      {
        v22 = sub_1000082A0();
        v23 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          os_log_type_enabled(v22, v23);
          v36 = 138412290;
          v37 = v16;
          v24 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v24 != &v44)
          {
            free(v24);
          }
        }

LABEL_38:
        goto LABEL_39;
      }

      v19 = CFArrayGetTypeID();
      if (CFGetTypeID(v16) == v19)
      {
        v20 = v16;
LABEL_27:
        v16 = v20;
        goto LABEL_29;
      }

      v21 = CFDictionaryGetTypeID();
      if (CFGetTypeID(v16) == v21)
      {
        v20 = [v16 allValues];
        goto LABEL_27;
      }

      v16 = 0;
LABEL_29:
      if (!sub_100006AE8(v16, (a2 + 1)))
      {
        goto LABEL_38;
      }

LABEL_30:
    }

    v12 = [v5 countByEnumeratingWithState:&v28 objects:v42 count:16];
    v10 = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_44:

  return v10;
}

uint64_t sub_100006FF4(void *a1)
{
  v1 = a1;
  if (v1 && ((TypeID = CFBooleanGetTypeID(), CFGetTypeID(v1) == TypeID) || (v3 = CFNumberGetTypeID(), CFGetTypeID(v1) == v3) || (v4 = CFStringGetTypeID(), CFGetTypeID(v1) == v4) || (v5 = CFDateGetTypeID(), CFGetTypeID(v1) == v5) || (v6 = CFDataGetTypeID(), CFGetTypeID(v1) == v6)))
  {
    v7 = 1;
  }

  else
  {
    v8 = sub_1000082A0();
    v9 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v12, 0, sizeof(v12));
      os_log_type_enabled(v8, v9);
      v10 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v10 != v12)
      {
        free(v10);
      }
    }

    v7 = 0;
  }

  return v7;
}

int main(int argc, const char **argv, const char **envp)
{
  if (geteuid() || !seteuid(0xFFFFFFFE))
  {
    v3 = objc_opt_new();
    v4 = +[NSXPCListener serviceListener];
    [v4 setDelegate:v3];
    [v4 activate];
  }

  else
  {
    v3 = sub_1000082A0();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v8, 0, sizeof(v8));
      os_log_type_enabled(v3, v6);
      v7 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v7 != v8)
      {
        free(v7);
      }
    }
  }

  return 0;
}

void sub_1000075DC(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_100007614(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

uint64_t sub_10000769C(const __CFString *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_pton(30, buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_100007754(const __CFString *a1, _DWORD *a2)
{
  sub_100007614(a1, __str, 64, 0);
  v3 = strtoul(__str, 0, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  if (*__error() == 34)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

UInt8 *sub_1000077F4(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x6F79A892uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

UInt8 *sub_1000078AC(const __CFString *a1, CFStringEncoding a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return sub_1000077F4(a1, v4, a2);
}

void *sub_1000078F4(uint64_t a1, int a2, void *a3, _DWORD *a4, char a5, char a6)
{
  v6 = a4;
  v7 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

  v8 = a1;
  v9 = *a4;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (!a3)
  {
    *&v74 = 0;
    v73 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v9 = 128;
    v10 = &v65;
    v65 = 0uLL;
    v66 = 0uLL;
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_87;
  }

  v73 = 0uLL;
  *&v74 = 0;
  v71 = 0uLL;
  v72 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v10 = a3;
  LOBYTE(v73) = 1;
LABEL_7:
  *(&v73 + 1) = v10;
  DWORD1(v74) = v9;
  *(&v74 + 1) = 0;
  *&v75 = 0;
  BYTE8(v75) = a5;
  if (a2 >= 1)
  {
    v12 = 0;
    v57 = a2;
    while (1)
    {
      v13 = *(v8 + 8 * v12);
      v61 = v74;
      v14 = strlen(v13);
      v15 = malloc_type_malloc(v14 + 26, 0x10300409B68AA8EuLL);
      v16 = malloc_type_malloc(0x30uLL, 0x101004044458BAAuLL);
      if (v16)
      {
        *(v16 + 28) = 0u;
        *v16 = 0u;
        v16[1] = 0u;
        *(v16 + 11) = 8;
        *(v16 + 4) = v16;
      }

      *v15 = v16;
      *(v15 + 1) = v15 + 24;
      if ((v14 & 0x80000000) == 0)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = v14 & 0x7FFFFFFF;
        v23 = (v14 + 1);
        while (1)
        {
          if (v17 == v22 || (v24 = v13[v17], v24 == 46))
          {
            if (!v21)
            {
              goto LABEL_22;
            }

            if (v21 > 63)
            {
              v53 = (v8 + 8 * v12);
              fprintf(__stderrp, "label length %d > %d\n", v21, 63);
              sub_100008244(v15);
              free(v15);
              if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
              {
                fprintf(__stderrp, "trying to set used to %d\n", v61);
              }

              else
              {
                LODWORD(v74) = v61;
              }

              goto LABEL_82;
            }

            sub_1000080B8(*v15, v19);
            *(*(v15 + 1) + v19) = v21;
            v20 += v21 + 1;
            v25 = v17 + 1;
            v19 = v17 + 1;
            v21 = 0;
          }

          else
          {
            *(*(v15 + 1) + v17 + 1) = v24;
            ++v21;
            v25 = v17 + 1;
          }

          v18 = v17 >= v22;
          v17 = v25;
          if (v25 == v23)
          {
            goto LABEL_22;
          }
        }
      }

      v20 = 0;
      v18 = 1;
LABEL_22:
      v59 = v12;
      if ((a6 & 1) != 0 && ((a6 & 2) == 0 || v18))
      {
        *(v15 + 4) = v20;
      }

      else
      {
        *(v15 + 4) = v20 + 1;
        *(*(v15 + 1) + v20) = 0;
      }

      if (BYTE8(v75) == 1)
      {
        break;
      }

      if ((sub_100008154(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_68:
      sub_100008244(v15);
      free(v15);
      v8 = a1;
      v12 = v59 + 1;
      if (v59 + 1 == v57)
      {
        v11 = v74;
        v7 = a3;
        v6 = a4;
        goto LABEL_71;
      }
    }

    v63 = v75;
    if (v75 < 1)
    {
      v28 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v62 = *(&v74 + 1);
      v29 = *(&v73 + 1);
      do
      {
        v30 = *(v62 + 8 * v26);
        if (!v30)
        {
          break;
        }

        v31 = 0;
        v32 = *(v30 + 40);
        v33 = *v15;
        v34 = *(*v15 + 40);
        do
        {
          v35 = v31;
          if (v32 < 1)
          {
            break;
          }

          if (v34 < 1)
          {
            break;
          }

          v36 = (v29 + *(*(v30 + 32) + 4 * v32 - 4));
          v37 = *v36;
          v38 = (*(v15 + 1) + *(v33[4] + 4 * v34 - 4));
          if (v37 != *v38)
          {
            break;
          }

          v39 = memcmp(v36 + 1, v38 + 1, v37);
          v31 = v35 + 1;
          --v32;
          --v34;
        }

        while (!v39);
        v40 = v35 > v28;
        if (v35 > v28)
        {
          v28 = v35;
        }

        if (v40)
        {
          v27 = v30;
        }

        ++v26;
      }

      while (v26 != v63);
      if (v27)
      {
        v41 = 0;
        v42 = *(v27 + 40) - v28;
LABEL_47:
        v43 = *v15;
        v44 = *(*v15 + 40);
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = v44 - v28;
          do
          {
            if (v45 >= v46)
            {
              v49 = *(*(v27 + 32) + 4 * v42);
              if (v46 == v45)
              {
                __src = bswap32(v49 | 0xC000) >> 16;
                if (!sub_100008154(&v65, &__src, 2))
                {
                  goto LABEL_76;
                }
              }

              ++v42;
              v47 = *v15;
            }

            else
            {
              v47 = *v15;
              v48 = *(*(*v15 + 32) + 4 * v45);
              if ((v41 & 1) == 0)
              {
                if (!sub_100008154(&v65, (*(v15 + 1) + v48), *(*(v15 + 1) + v48) + 1))
                {
                  goto LABEL_76;
                }

                v47 = *v15;
              }

              v49 = v48 + v61;
            }

            if (v45 > *(v47 + 10))
            {
              fprintf(__stderrp, "attempt to set offset 0x%x at index %d\n", v49, v45);
            }

            *(v47[4] + 4 * v45++) = v49;
          }

          while (v44 != v45);
          v43 = *v15;
        }

        v50 = SDWORD1(v75);
        if (DWORD1(v75) == v75)
        {
          if (DWORD1(v75))
          {
            DWORD1(v75) *= 2;
            v51 = reallocf(*(&v74 + 1), 16 * v50);
          }

          else
          {
            DWORD1(v75) = 8;
            v51 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
          }

          *(&v74 + 1) = v51;
        }

        else
        {
          v51 = *(&v74 + 1);
        }

        v52 = v75;
        LODWORD(v75) = v75 + 1;
        v51[v52] = v43;
        *v15 = 0;
        goto LABEL_68;
      }
    }

    if ((sub_100008154(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
    {
LABEL_76:
      v53 = (a1 + 8 * v59);
      if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
      {
        fprintf(__stderrp, "trying to set used to %d\n", v61);
      }

      else
      {
        LODWORD(v74) = v61;
      }

      sub_100008244(v15);
      free(v15);
LABEL_82:
      v6 = a4;
      fprintf(__stderrp, "failed to add %s\n", *v53);
      if (a3)
      {
        v11 = v74;
      }

      else
      {
        v11 = 0;
      }

      v7 = 0;
      goto LABEL_86;
    }

    v27 = 0;
    v42 = 0;
    v41 = 1;
    goto LABEL_47;
  }

  v11 = 0;
LABEL_71:
  if (!v7)
  {
    v7 = malloc_type_malloc(v11, 0x7FF68011uLL);
    memcpy(v7, *(&v73 + 1), v11);
  }

LABEL_86:
  sub_10000800C(&v65);
LABEL_87:
  *v6 = v11;
  return v7;
}

const UInt8 *sub_100007F58(uint64_t a1)
{
  *&length[1] = a1;
  length[0] = 0;
  result = sub_1000078F4(&length[1], 1, 0, length, 0, 3);
  if (result)
  {
    v2 = result;
    v3 = CFDataCreate(0, result, length[0]);
    free(v2);
    return v3;
  }

  return result;
}

UInt8 *sub_100007FC8(const __CFString *a1)
{
  result = sub_1000078AC(a1, 0x8000100u);
  if (result)
  {
    v2 = result;
    v3 = sub_100007F58(result);
    free(v2);
    return v3;
  }

  return result;
}

void sub_10000800C(_OWORD *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v2 = *(a1 + 17);
    if (v2 && v2 != a1)
    {
      free(v2);
    }
  }

  *(a1 + 18) = 0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v5 = a1 + 19;
  v4 = *(a1 + 19);
  if (v4)
  {
    if (*(a1 + 40) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        sub_100008244((*(a1 + 19) + v6));
        ++v7;
        v6 += 8;
      }

      while (v7 < *(a1 + 40));
      v4 = *v5;
    }

    free(v4);
  }

  *v5 = 0;
  *(a1 + 20) = 0;
}

int *sub_1000080B8(int *result, size_t size)
{
  v2 = size;
  v3 = result;
  v4 = result[11];
  if (v4 == result[10])
  {
    result[11] = 2 * v4;
    v5 = *(result + 4);
    v6 = 8 * v4;
    if (v5 == v3)
    {
      v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
      *(v3 + 32) = v7;
      result = memmove(v7, v3, 4 * *(v3 + 40));
    }

    else
    {
      result = reallocf(v5, v6);
      *(v3 + 32) = result;
    }
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(v3 + 40) = v9 + 1;
  *(v8 + 4 * v9) = v2;
  return result;
}

uint64_t sub_100008154(uint64_t a1, void *__src, int a3)
{
  v6 = *(a1 + 148);
  v7 = v6 - *(a1 + 144);
  if (v7 < a3)
  {
    if (*(a1 + 128) == 1)
    {
      fprintf(__stderrp, "user-supplied buffer failed to add data with length %d (> %d)\n", a3, v7);
      return 0;
    }

    if (a3 <= 128)
    {
      v9 = 128;
    }

    else
    {
      v9 = a3;
    }

    v10 = v6 + v9;
    *(a1 + 148) = v10;
    v11 = *(a1 + 136);
    if (v11 == a1)
    {
      v12 = malloc_type_malloc(v10, 0xDF09CD32uLL);
      *(a1 + 136) = v12;
      memcpy(v12, a1, *(a1 + 144));
    }

    else
    {
      *(a1 + 136) = reallocf(v11, v10);
    }
  }

  memcpy((*(a1 + 136) + *(a1 + 144)), __src, a3);
  *(a1 + 144) += a3;
  return 1;
}

void sub_100008244(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = v3 == v2;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        free(v3);
      }

      free(v2);
      *a1 = 0;
    }
  }
}