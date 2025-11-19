@interface IPHPvDInfoRequestServer
- (IPHPvDInfoRequestServer)init;
- (__CFDictionary)createValidPvDAdditionalInfoDict:(id)a3 withID:(id)a4 andPrefixes:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)cancelRequest;
- (void)fetchPvDAdditionalInformationWithPvDID:(id)a3 prefixesArray:(id)a4 bindToInterface:(id)a5 andCompletionHandler:(id)a6;
- (void)scheduleParsingEventAbort;
- (void)scheduleParsingEventCompleteWithParsedJSON:(id)a3 pvdID:(id)a4 ipv6Prefixes:(id)a5;
@end

@implementation IPHPvDInfoRequestServer

- (IPHPvDInfoRequestServer)init
{
  v4.receiver = self;
  v4.super_class = IPHPvDInfoRequestServer;
  v2 = [(IPHPvDInfoRequestServer *)&v4 init];
  if (v2)
  {
    sub_100000DD8("Helper");
    [(IPHPvDInfoRequestServer *)v2 setValidFetch:1];
  }

  return v2;
}

- (void)cancelRequest
{
  v3 = [(IPHPvDInfoRequestServer *)self urlSession];

  if (v3)
  {
    v4 = sub_1000082A0();
    v5 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v8, 0, sizeof(v8));
      os_log_type_enabled(v4, v5);
      v6 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v6 != v8)
      {
        free(v6);
      }
    }

    v7 = [(IPHPvDInfoRequestServer *)self urlSession];
    [v7 invalidateAndCancel];

    [(IPHPvDInfoRequestServer *)self setUrlSession:0];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v6 = a6;
  v7 = sub_1000082A0();
  v8 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0uLL;
    v14 = 0uLL;
    os_log_type_enabled(v7, v8);
    v9 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v9 != &v13)
    {
      free(v9);
    }
  }

  v6[2](v6, 1, 0);
  v10 = sub_1000082A0();
  v11 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0uLL;
    v14 = 0uLL;
    os_log_type_enabled(v10, v11);
    v12 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v12 != &v13)
    {
      free(v12);
    }
  }
}

- (void)fetchPvDAdditionalInformationWithPvDID:(id)a3 prefixesArray:(id)a4 bindToInterface:(id)a5 andCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(IPHPvDInfoRequestServer *)self setXpcClientCompletionHandler:a6];
  v13 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v14 = [NSURLSession sessionWithConfiguration:v13 delegate:self delegateQueue:0];
  [(IPHPvDInfoRequestServer *)self setUrlSession:v14];

  v15 = [(IPHPvDInfoRequestServer *)self urlSession];

  if (v15)
  {
    v16 = [NSString stringWithFormat:@"%s%@%s", "https://", v10, "/.well-known/pvd"];
    v17 = [NSURL URLWithString:v16];
    v18 = [[NSMutableURLRequest alloc] initWithURL:v17];
    [v18 setHTTPMethod:@"GET"];
    [v18 setValue:@"application/pvd+json" forHTTPHeaderField:@"Content-Type"];
    [v18 setValue:@"application/pvd+json" forHTTPHeaderField:@"Accept"];
    [v18 setBoundInterfaceIdentifier:v12];
    v19 = [(IPHPvDInfoRequestServer *)self urlSession];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100001750;
    v27[3] = &unk_10000C3D0;
    v27[4] = self;
    v20 = v16;
    v28 = v20;
    v29 = v10;
    v30 = v11;
    v21 = [v19 dataTaskWithRequest:v18 completionHandler:v27];

    v22 = sub_1000082A0();
    v23 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      os_log_type_enabled(v22, v23);
      v31 = 138412290;
      v32 = v20;
      v24 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v24 != &v33)
      {
        free(v24);
      }
    }

    [v21 resume];
  }

  else
  {
    v20 = sub_1000082A0();
    v25 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      os_log_type_enabled(v20, v25);
      LOWORD(v31) = 0;
      v26 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v26 != &v33)
      {
        free(v26);
      }
    }
  }
}

- (void)scheduleParsingEventCompleteWithParsedJSON:(id)a3 pvdID:(id)a4 ipv6Prefixes:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002298;
  v10[3] = &unk_10000C3F8;
  v10[4] = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)scheduleParsingEventAbort
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002654;
  block[3] = &unk_10000C420;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (__CFDictionary)createValidPvDAdditionalInfoDict:(id)a3 withID:(id)a4 andPrefixes:(id)a5
{
  v8 = a3;
  v150 = a4;
  v148 = v8;
  v149 = a5;
  if (!v8)
  {
    v133 = sub_1000082A0();
    v134 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_175:
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      os_log_type_enabled(v133, v134);
      LOWORD(v185) = 0;
      v135 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v135 != &v194)
      {
        free(v135);
      }
    }

LABEL_177:

    theDict = 0;
    goto LABEL_178;
  }

  Mutable = CFDictionaryCreateMutable(0, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v133 = sub_1000082A0();
    v134 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_175;
    }

    goto LABEL_177;
  }

  theDict = Mutable;
  if (!sub_1000046E4(Mutable, v8, v150, v149))
  {
LABEL_178:
    v132 = 0;
LABEL_179:
    v136 = sub_1000082A0();
    v137 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v138 = self;
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v139 = v136;
      os_log_type_enabled(v139, v137);
      LOWORD(v185) = 0;
      v140 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v140 != &v194)
      {
        free(v140);
      }

      self = v138;
    }

    [(IPHPvDInfoRequestServer *)self setValidFetch:0];
    goto LABEL_184;
  }

  v10 = v8;
  v177 = 0;
  v172 = 0;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v11 = [&off_10000C780 countByEnumeratingWithState:&v181 objects:&v185 count:16];
  v147 = self;
  if (!v11)
  {
    goto LABEL_86;
  }

  v12 = v11;
  value = 0;
  v13 = 0;
  v14 = *v182;
  v160 = v10;
  v162 = *v182;
  do
  {
    v15 = 0;
    v164 = v12;
    do
    {
      if (*v182 != v14)
      {
        objc_enumerationMutation(&off_10000C780);
      }

      v16 = *(*(&v181 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      v18 = [v10 valueForKey:v16];
      if (v18)
      {
        if ([v16 isEqualToString:@"dnsZones"])
        {
          v19 = v13 == 0;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v32 = v16;
          v33 = v18;
          *&v173 = 0;
          theArraya = v17;
          if ([v33 count] > 9)
          {
            v34 = 10;
          }

          else
          {
            v34 = [v33 count];
          }

          v35 = sub_1000082A0();
          v36 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v35, v36);
            v37 = v35;
            v38 = objc_opt_class();
            LODWORD(v191[0]) = 138412802;
            *(v191 + 4) = v32;
            WORD2(v191[1]) = 2112;
            *(&v191[1] + 6) = v33;
            HIWORD(v191[2]) = 2112;
            v191[3] = v38;
            v39 = v38;
            LODWORD(v146) = 32;
            v145 = v191;
            v40 = _os_log_send_and_compose_impl();

            __SC_log_send2();
            if (v40 != &v194)
            {
              free(v40);
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = sub_1000082A0();
            v51 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v208 = 0u;
              v209 = 0u;
              v206 = 0u;
              v207 = 0u;
              v204 = 0u;
              v205 = 0u;
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v194 = 0uLL;
              v195 = 0uLL;
              os_log_type_enabled(v50, v51);
              LOWORD(v191[0]) = 0;
              LODWORD(v146) = 2;
              v145 = v191;
              v52 = _os_log_send_and_compose_impl();
              __SC_log_send2();
              if (v52 != &v194)
              {
                free(v52);
              }
            }

            v13 = 0;
            v41 = 0;
            goto LABEL_67;
          }

          v41 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
          *&v173 = v41;
          if (v34)
          {
            v42 = 0;
            while (1)
            {
              v43 = objc_autoreleasePoolPush();
              *v178 = 0;
              v210 = 0;
              v44 = [v33 objectAtIndex:v42];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v62 = sub_1000082A0();
                v63 = _SC_syslog_os_log_mapping();
                if (!__SC_log_enabled())
                {
                  goto LABEL_65;
                }

                v208 = 0u;
                v209 = 0u;
                v206 = 0u;
                v207 = 0u;
                v204 = 0u;
                v205 = 0u;
                v202 = 0u;
                v203 = 0u;
                v200 = 0u;
                v201 = 0u;
                v198 = 0u;
                v199 = 0u;
                v196 = 0u;
                v197 = 0u;
                v194 = 0uLL;
                v195 = 0uLL;
                os_log_type_enabled(v62, v63);
                v62 = v62;
                v64 = objc_opt_class();
                LODWORD(v191[0]) = 138412290;
                *(v191 + 4) = v64;
                v154 = v64;
                LODWORD(v146) = 12;
                v145 = v191;
                v65 = _os_log_send_and_compose_impl();

                goto LABEL_63;
              }

              *v178 = sub_100007FC8(v44);
              if (!*v178)
              {
                break;
              }

              sub_1000075DC(v178);
              Copy = CFStringCreateCopy(0, v44);
              v210 = Copy;
              if (!Copy)
              {
                goto LABEL_66;
              }

              CFArrayAppendValue(v41, Copy);
              sub_1000075DC(&v210);

              objc_autoreleasePoolPop(v43);
              if (v34 == ++v42)
              {
                goto LABEL_40;
              }
            }

            v62 = sub_1000082A0();
            v66 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_65;
            }

            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v62, v66);
            LODWORD(v191[0]) = 138412290;
            *(v191 + 4) = v44;
            LODWORD(v146) = 12;
            v145 = v191;
            v65 = _os_log_send_and_compose_impl();
LABEL_63:
            __SC_log_send2();
            if (v65 != &v194)
            {
              free(v65);
            }

LABEL_65:

LABEL_66:
            objc_autoreleasePoolPop(v43);
            v13 = 0;
LABEL_67:
            v49 = 0;
          }

          else
          {
LABEL_40:
            v177 = v41;
            v46 = sub_1000082A0();
            v47 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v208 = 0u;
              v209 = 0u;
              v206 = 0u;
              v207 = 0u;
              v204 = 0u;
              v205 = 0u;
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v194 = 0uLL;
              v195 = 0uLL;
              os_log_type_enabled(v46, v47);
              LODWORD(v191[0]) = 138412290;
              *(v191 + 4) = v41;
              LODWORD(v146) = 12;
              v145 = v191;
              v48 = _os_log_send_and_compose_impl();
              __SC_log_send2();
              if (v48 != &v194)
              {
                free(v48);
              }
            }

            v49 = 1;
            value = v41;
            v13 = v41;
          }

          v67 = sub_1000082A0();
          v68 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v67, v68);
            LODWORD(v191[0]) = 138412290;
            *(v191 + 4) = v32;
            LODWORD(v146) = 12;
            v145 = v191;
            v69 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v69 != &v194)
            {
              free(v69);
            }
          }

          if (!v41)
          {
            sub_1000075DC(&v173);
          }

          v17 = theArraya;
          if (v49)
          {
            v10 = v160;
            v14 = v162;
            v12 = v164;
            goto LABEL_82;
          }

          v21 = sub_1000082A0();
          v70 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v158 = v13;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v21, v70);
            LODWORD(v191[0]) = 138412546;
            *(v191 + 4) = v32;
            WORD2(v191[1]) = 2112;
            *(&v191[1] + 6) = v33;
            LODWORD(v146) = 22;
            v145 = v191;
            v71 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v71 != &v194)
            {
              free(v71);
            }

            v10 = v160;
            v14 = v162;
            v12 = v164;
            v17 = theArraya;
LABEL_79:
            v13 = v158;
          }

          else
          {
            v10 = v160;
            v14 = v162;
            v12 = v164;
          }

LABEL_81:

          goto LABEL_82;
        }

        if ([v16 isEqualToString:@"noInternet"] && v172 == 0)
        {
          theArray = v17;
          v21 = v16;
          v22 = v18;
          v23 = sub_1000082A0();
          v24 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v23, v24);
            v25 = v23;
            v26 = objc_opt_class();
            LODWORD(v191[0]) = 138412802;
            *(v191 + 4) = v21;
            WORD2(v191[1]) = 2112;
            *(&v191[1] + 6) = v22;
            HIWORD(v191[2]) = 2112;
            v191[3] = v26;
            v27 = v26;
            LODWORD(v146) = 32;
            v145 = v191;
            v28 = _os_log_send_and_compose_impl();

            __SC_log_send2();
            if (v28 != &v194)
            {
              free(v28);
            }

            v10 = v160;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [v22 isEqualToString:@"true"];
            v30 = &kCFBooleanTrue;
            if ((v29 & 1) != 0 || (v31 = [v22 isEqualToString:@"false"], v30 = &kCFBooleanFalse, v31))
            {
              v172 = *v30;

LABEL_58:
              v14 = v162;
              v12 = v164;
              v17 = theArray;
              goto LABEL_81;
            }
          }

          else
          {
            v53 = sub_1000082A0();
            v54 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v208 = 0u;
              v209 = 0u;
              v206 = 0u;
              v207 = 0u;
              v204 = 0u;
              v205 = 0u;
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v194 = 0uLL;
              v195 = 0uLL;
              os_log_type_enabled(v53, v54);
              v55 = v53;
              v56 = objc_opt_class();
              LODWORD(v191[0]) = 138412290;
              *(v191 + 4) = v56;
              v57 = v56;
              LODWORD(v146) = 12;
              v145 = v191;
              v58 = _os_log_send_and_compose_impl();

              __SC_log_send2();
              if (v58 != &v194)
              {
                free(v58);
              }

              v10 = v160;
            }
          }

          v59 = sub_1000082A0();
          v60 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v158 = v13;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v59, v60);
            LODWORD(v191[0]) = 138412546;
            *(v191 + 4) = v21;
            WORD2(v191[1]) = 2112;
            *(&v191[1] + 6) = v22;
            LODWORD(v146) = 22;
            v145 = v191;
            v61 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v61 != &v194)
            {
              free(v61);
            }

            v21 = v59;
            v14 = v162;
            v12 = v164;
            v17 = theArray;
            goto LABEL_79;
          }

          v21 = v59;
          goto LABEL_58;
        }
      }

LABEL_82:

      objc_autoreleasePoolPop(v17);
      v15 = v15 + 1;
    }

    while (v15 != v12);
    v12 = [&off_10000C780 countByEnumeratingWithState:&v181 objects:&v185 count:16];
  }

  while (v12);
  if (value)
  {
    CFDictionarySetValue(theDict, @"dnsZones", value);
    sub_1000075DC(&v177);
  }

LABEL_86:
  if (v172)
  {
    CFDictionarySetValue(theDict, @"noInternet", v172);
    sub_1000075DC(&v172);
  }

  v72 = v10;
  v177 = 0;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v73 = [&off_10000C798 countByEnumeratingWithState:&v173 objects:&v181 count:16];
  v153 = v72;
  if (v73)
  {
    v74 = v73;
    v75 = 0;
    v76 = 0;
    v77 = *v174;
    while (1)
    {
      v78 = 0;
      v155 = v74;
      do
      {
        if (*v174 != v77)
        {
          objc_enumerationMutation(&off_10000C798);
        }

        v79 = *(*(&v173 + 1) + 8 * v78);
        v80 = objc_autoreleasePoolPush();
        v81 = [v72 valueForKey:v79];
        if (!v81)
        {
          goto LABEL_142;
        }

        if (![v79 isEqualToString:@"proxies"] || v76 != 0)
        {
          goto LABEL_142;
        }

        v159 = v79;
        v83 = v81;
        v210 = 0;
        if ([v83 count] > 9)
        {
          v84 = 10;
        }

        else
        {
          v84 = [v83 count];
        }

        v85 = sub_1000082A0();
        v86 = _SC_syslog_os_log_mapping();
        v166 = v81;
        v163 = v84;
        if (__SC_log_enabled())
        {
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v194 = 0uLL;
          v195 = 0uLL;
          os_log_type_enabled(v85, v86);
          v87 = v85;
          v88 = objc_opt_class();
          v185 = 138412802;
          v186 = v159;
          v187 = 2112;
          v188 = v83;
          v189 = 2112;
          v190 = v88;
          v89 = v88;
          LODWORD(v146) = 32;
          v145 = &v185;
          v90 = _os_log_send_and_compose_impl();

          __SC_log_send2();
          if (v90 != &v194)
          {
            free(v90);
          }

          v72 = v153;
          v81 = v166;
          v84 = v163;
        }

        objc_opt_class();
        v161 = v83;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v106 = sub_1000082A0();
          v107 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v106, v107);
            LOWORD(v185) = 0;
            LODWORD(v146) = 2;
            v145 = &v185;
            v108 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v108 != &v194)
            {
              free(v108);
            }
          }

LABEL_132:
          v105 = 0;
          goto LABEL_133;
        }

        v210 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        theArrayb = v210;
        if (!v210)
        {
          goto LABEL_132;
        }

        if (!v84)
        {
LABEL_123:
          v75 = theArrayb;
          v177 = theArrayb;
          v102 = sub_1000082A0();
          v103 = _SC_syslog_os_log_mapping();
          v72 = v153;
          if (__SC_log_enabled())
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v102, v103);
            *v178 = 138412290;
            *&v178[4] = theArrayb;
            LODWORD(v146) = 12;
            v145 = v178;
            v104 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v104 != &v194)
            {
              free(v104);
            }

            v83 = v161;
          }

          v105 = 1;
          goto LABEL_133;
        }

        v91 = 0;
        v157 = v80;
        v156 = v75;
        while (1)
        {
          v92 = objc_autoreleasePoolPush();
          v93 = [v83 objectAtIndex:v91];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            CFArrayAppendValue(theArrayb, v93);
            goto LABEL_122;
          }

          objc_opt_class();
          v165 = v92;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          *&v194 = 0;
          *&v194 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!v194)
          {
            goto LABEL_149;
          }

          v94 = v77;
          v192 = 0u;
          v193 = 0u;
          memset(v191, 0, sizeof(v191));
          v95 = v93;
          v96 = [v95 countByEnumeratingWithState:v191 objects:&v185 count:16];
          if (v96)
          {
            v97 = v96;
            v98 = *v191[2];
            do
            {
              for (i = 0; i != v97; i = i + 1)
              {
                if (*v191[2] != v98)
                {
                  objc_enumerationMutation(v95);
                }

                v100 = *(v191[1] + 8 * i);
                v101 = [v95 objectForKey:{v100, v145, v146}];
                CFDictionaryAddValue(v194, v100, v101);
              }

              v97 = [v95 countByEnumeratingWithState:v191 objects:&v185 count:16];
            }

            while (v97);
          }

          CFArrayAppendValue(theArrayb, v194);
          sub_1000075DC(&v194);
          v77 = v94;
          v75 = v156;
          v80 = v157;
          v81 = v166;
          v83 = v161;
          v84 = v163;
          v92 = v165;
LABEL_122:

          objc_autoreleasePoolPop(v92);
          if (++v91 == v84)
          {
            goto LABEL_123;
          }
        }

        v112 = sub_1000082A0();
        v113 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v194 = 0uLL;
          v195 = 0uLL;
          os_log_type_enabled(v112, v113);
          v114 = v112;
          v115 = objc_opt_class();
          *v178 = 138412290;
          *&v178[4] = v115;
          v116 = v115;
          LODWORD(v146) = 12;
          v145 = v178;
          v117 = _os_log_send_and_compose_impl();

          __SC_log_send2();
          if (v117 != &v194)
          {
            free(v117);
          }

          v81 = v166;
          v83 = v161;
        }

        v80 = v157;
LABEL_149:

        objc_autoreleasePoolPop(v92);
        v105 = 0;
        v72 = v153;
LABEL_133:
        v74 = v155;
        if (!v75)
        {
          sub_1000075DC(&v210);
        }

        if ((v105 & 1) == 0)
        {
          v109 = sub_1000082A0();
          v110 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v109, v110);
            v185 = 138412546;
            v186 = v159;
            v187 = 2112;
            v188 = v83;
            LODWORD(v146) = 22;
            v145 = &v185;
            v111 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v111 != &v194)
            {
              free(v111);
            }

            v74 = v155;
            v72 = v153;
          }
        }

        v76 = v75;
LABEL_142:

        objc_autoreleasePoolPop(v80);
        v78 = v78 + 1;
      }

      while (v78 != v74);
      v118 = [&off_10000C798 countByEnumeratingWithState:&v173 objects:&v181 count:16];
      v74 = v118;
      if (!v118)
      {
        if (v75)
        {
          CFDictionarySetValue(theDict, @"proxies", v75);
          sub_1000075DC(&v177);
        }

        break;
      }
    }
  }

  v119 = [(__CFDictionary *)theDict allKeys:v145];
  v120 = [v119 count];
  memset(v191, 0, sizeof(v191));
  v192 = 0u;
  v193 = 0u;
  theArrayc = [v72 allKeys];
  v121 = [(__CFArray *)theArrayc countByEnumeratingWithState:v191 objects:&v185 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v191[2];
    v167 = v119;
LABEL_155:
    v124 = 0;
    while (1)
    {
      if (*v191[2] != v123)
      {
        objc_enumerationMutation(theArrayc);
      }

      if (v120 > 9)
      {
        break;
      }

      v125 = *(v191[1] + 8 * v124);
      if (([v119 containsObject:v125] & 1) == 0)
      {
        v126 = [v72 valueForKey:v125];
        v210 = v126;
        v127 = [NSArray arrayWithObjects:&v210 count:1];
        v128 = sub_100006AE8(v127, 0);

        if (v128)
        {
          CFDictionarySetValue(theDict, v125, v126);
          ++v120;
        }

        else
        {
          v129 = sub_1000082A0();
          v130 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0uLL;
            v195 = 0uLL;
            os_log_type_enabled(v129, v130);
            *v178 = 138412546;
            *&v178[4] = v125;
            v179 = 2112;
            v180 = v126;
            v131 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v131 != &v194)
            {
              free(v131);
            }

            v72 = v153;
            v119 = v167;
          }
        }
      }

      if (v122 == ++v124)
      {
        v122 = [(__CFArray *)theArrayc countByEnumeratingWithState:v191 objects:&v185 count:16];
        if (v122)
        {
          goto LABEL_155;
        }

        break;
      }
    }
  }

  if (CFDictionaryGetCount(theDict) < 3)
  {
    v132 = 0;
    self = v147;
    goto LABEL_179;
  }

  v132 = [(__CFDictionary *)theDict allValues];
  self = v147;
  if ((sub_100006AE8(v132, 0) & 1) == 0)
  {
    goto LABEL_179;
  }

  v142 = sub_1000082A0();
  v143 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    os_log_type_enabled(v142, v143);
    v185 = 138412290;
    v186 = theDict;
    v144 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v144 != &v194)
    {
      free(v144);
    }
  }

LABEL_184:
  return theDict;
}

@end