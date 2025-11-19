@interface CKLStreamTrafficObserver
- (CKLStreamTrafficObserver)initWithLogTypes:(unint64_t)a3;
- (id)parserFromConfigurationMessage:(id)a3;
- (void)eventMatched:(id)a3;
- (void)finish;
- (void)parseRequestArrayAndPrint:(id)a3;
@end

@implementation CKLStreamTrafficObserver

- (CKLStreamTrafficObserver)initWithLogTypes:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = CKLStreamTrafficObserver;
  v3 = [(CKLStreamObserver *)&v12 initWithLogTypes:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestDictionary = v3->_requestDictionary;
    v3->_requestDictionary = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.cloudkitlog.parseandprint", v6);
    printQueue = v3->_printQueue;
    v3->_printQueue = v7;

    v9 = objc_alloc_init(CKDTrafficLogParser);
    parser = v3->_parser;
    v3->_parser = v9;
  }

  return v3;
}

- (void)eventMatched:(id)a3
{
  v120[1] = *MEMORY[0x277D85DE8];
  v103 = a3;
  v102 = objc_msgSend_category(v103, v4, v5);
  v8 = objc_msgSend_composedMessage(v103, v6, v7);
  if ((objc_msgSend_isEqualToString_(v102, v9, @"LogFacilityTraffic") & 1) != 0 || objc_msgSend_isEqualToString_(v102, v10, @"Traffic"))
  {
    if (objc_msgSend_hasPrefix_(v8, v10, @"SIM: "))
    {
      v12 = objc_msgSend_substringFromIndex_(v8, v11, 5);

      v8 = v12;
    }

    hasPrefix = objc_msgSend_hasPrefix_(v8, v11, @"traff-cont: ");
    v16 = objc_msgSend_printQueue(self, v14, v15);
    if (hasPrefix)
    {
      v17 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22519F2A4;
      block[3] = &unk_278545A00;
      v8 = v8;
      block[4] = v8;
      dispatch_async(v16, block);
    }

    else
    {
      v17 = v117;
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = sub_22519F334;
      v117[3] = &unk_278545A00;
      v8 = v8;
      v117[4] = v8;
      dispatch_async(v16, v117);
    }

    v18 = v17[4];
    goto LABEL_9;
  }

  if ((objc_msgSend_isEqualToString_(v102, v10, @"LogFacilityTrafficBinary") & 1) != 0 || objc_msgSend_isEqualToString_(v102, v20, @"TrafficBinary"))
  {
    v22 = [CKLTrafficLogMessageFragment alloc];
    v25 = objc_msgSend_composedMessage(v103, v23, v24);
    v18 = objc_msgSend_initWithMessage_(v22, v26, v25);

    if (v18)
    {
      v29 = objc_msgSend_requestDictionary(self, v27, v28);
      v32 = objc_msgSend_uuid(v18, v30, v31);
      v34 = objc_msgSend_objectForKeyedSubscript_(v29, v33, v32);

      if (v34)
      {
        if (objc_msgSend_type(v18, v35, v36) == 6)
        {
          v115[0] = 0;
          v115[1] = v115;
          v115[2] = 0x3032000000;
          v115[3] = sub_225073FC0;
          v115[4] = sub_22507356C;
          v37 = self;
          v116 = v37;
          v40 = objc_msgSend_printQueue(v37, v38, v39);
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = sub_22519F3A4;
          v112[3] = &unk_278546448;
          v114 = v115;
          v113 = v34;
          dispatch_async(v40, v112);

          v43 = objc_msgSend_requestDictionary(v37, v41, v42);
          v46 = objc_msgSend_uuid(v18, v44, v45);
          objc_msgSend_removeObjectForKey_(v43, v47, v46);

          _Block_object_dispose(v115, 8);
        }

        else
        {
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v110[2] = sub_22519F3B4;
          v110[3] = &unk_2785486A0;
          v78 = v18;
          v111 = v78;
          v80 = objc_msgSend_indexOfObjectWithOptions_passingTest_(v34, v79, 2, v110);
          if (v80 == 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_msgSend_insertObject_atIndex_(v34, v81, v78, 0);
          }

          else
          {
            objc_msgSend_insertObject_atIndex_(v34, v81, v78, v80 + 1);
          }
        }
      }

      else
      {
        v68 = objc_alloc(MEMORY[0x277CBEB18]);
        v70 = objc_msgSend_initWithObjects_(v68, v69, v18, 0);
        v73 = objc_msgSend_requestDictionary(self, v71, v72);
        v76 = objc_msgSend_uuid(v18, v74, v75);
        objc_msgSend_setObject_forKeyedSubscript_(v73, v77, v70, v76);
      }
    }

    goto LABEL_9;
  }

  if (!objc_msgSend_isEqualToString_(v102, v21, @"TrafficCompressed"))
  {
    goto LABEL_10;
  }

  v50 = objc_msgSend_parser(self, v48, v49);
  v120[0] = v8;
  v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, v120, 1);
  v109 = 0;
  v54 = objc_msgSend_parse_error_(v50, v53, v52, &v109);
  v18 = v109;

  if (v54)
  {
    v57 = objc_msgSend_parser(self, v55, v56);
    v108 = v18;
    v101 = objc_msgSend_consumeParsedTrafficLogsAndReturnError_(v57, v58, &v108);
    v100 = v108;

    if (v100)
    {
      v61 = objc_alloc(MEMORY[0x277CCACA8]);
      v63 = objc_msgSend_initWithFormat_(v61, v62, @"cloudkitlog consume parsed logs error: %@", v100);
      v64 = v63;
      v67 = objc_msgSend_UTF8String(v63, v65, v66);
      puts(v67);
    }

    else
    {
      v18 = objc_msgSend_requestParsedBlock(self, v59, v60);

      if (!v18)
      {
        goto LABEL_29;
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v63 = v101;
      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v88, &v104, v119, 16);
      if (v91)
      {
        v92 = *v105;
        do
        {
          for (i = 0; i != v91; ++i)
          {
            if (*v105 != v92)
            {
              objc_enumerationMutation(v63);
            }

            v94 = *(*(&v104 + 1) + 8 * i);
            v95 = objc_msgSend_logMessageFilter(self, v89, v90);
            if (v95)
            {
              v96 = objc_msgSend_logMessageFilter(self, v89, v90);
              v98 = objc_msgSend_evaluateWithObject_(v96, v97, v94);

              if (!v98)
              {
                continue;
              }
            }

            v99 = objc_msgSend_requestParsedBlock(self, v89, v90);
            v99[2](v99, v94);
          }

          v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v89, &v104, v119, 16);
        }

        while (v91);
      }
    }

    v18 = v100;
  }

  else
  {
    v82 = objc_alloc(MEMORY[0x277CCACA8]);
    v101 = objc_msgSend_initWithFormat_(v82, v83, @"cloudkitlog parse error: %@", v18);
    v84 = v101;
    v87 = objc_msgSend_UTF8String(v101, v85, v86);
    puts(v87);
  }

LABEL_29:

LABEL_9:
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)parseRequestArrayAndPrint:(id)a3
{
  v202 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v176 = self;
  v7 = objc_msgSend_printQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v10 = objc_msgSend_firstObject(v4, v8, v9);
  v173 = objc_msgSend_uuid(v10, v11, v12);

  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v177 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [CKDProtobufResponseBodyParser alloc];
  v17 = objc_opt_class();
  v19 = objc_msgSend_initWithQoS_messageClass_parsingStandaloneMessage_(v16, v18, 25, v17, 0);
  v199[0] = MEMORY[0x277D85DD0];
  v199[1] = 3221225472;
  v199[2] = sub_22519FE88;
  v199[3] = &unk_2785486C8;
  v180 = v15;
  v200 = v180;
  v186 = v19;
  objc_msgSend_setObjectParsedBlock_(v19, v20, v199);
  v183 = objc_opt_new();
  v174 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  obj = v4;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v195, v201, 16);
  if (v22)
  {
    v25 = v22;
    v26 = 0;
    v184 = 0;
    v178 = v14;
    v179 = 0;
    v181 = 0;
    v182 = 0;
    v27 = *v196;
    v175 = 0;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v196 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v195 + 1) + 8 * i);
        if (objc_msgSend_seqNum(v29, v23, v24) != v26)
        {
          v32 = objc_alloc(MEMORY[0x277CCACA8]);
          v35 = objc_msgSend_uuid(v29, v33, v34);
          v38 = objc_msgSend_seqNum(v29, v36, v37);
          v40 = objc_msgSend_initWithFormat_(v32, v39, @"cloudkitlog parse error: A traffic log packet for request %@ was likely dropped. Was expecting sequence number %li but received %li. Will attempt to parse but might be unsuccessful", v35, v26, v38, context);
          v41 = v40;
          v44 = objc_msgSend_UTF8String(v41, v42, v43);
          puts(v44);

          v26 = objc_msgSend_seqNum(v29, v45, v46);
        }

        v47 = objc_msgSend_dataString(v29, v30, v31);
        v50 = objc_msgSend_length(v47, v48, v49);

        v53 = objc_msgSend_type(v29, v51, v52);
        if (v53 > 3)
        {
          switch(v53)
          {
            case 4:
              objc_msgSend_setString_(v14, v54, &stru_28385ED00);
              v117 = objc_msgSend_dataString(v29, v115, v116);
              v119 = objc_msgSend_parserFromConfigurationMessage_(v176, v118, v117);

              v191[0] = MEMORY[0x277D85DD0];
              v191[1] = 3221225472;
              v191[2] = sub_22519FF50;
              v191[3] = &unk_2785486C8;
              v192 = v177;
              objc_msgSend_setObjectParsedBlock_(v119, v120, v191);
              v61 = v192;
              v184 = v119;
              break;
            case 5:
              v86 = objc_msgSend_dataString(v29, v54, v55);
              objc_msgSend_appendString_(v14, v87, v86);

              v88 = objc_alloc(MEMORY[0x277CBEA90]);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v88, v89, v14, 0);
              if (v61)
              {
                objc_msgSend_setString_(v14, v90, &stru_28385ED00);
                objc_msgSend_processData_completionHandler_(v184, v91, v61, 0);
                objc_msgSend_appendData_(v174, v92, v61);
              }

              BYTE4(v175) = 1;
              break;
            case 7:
              ++v179;
              v64 = objc_alloc_init(MEMORY[0x277CBEB18]);

              v61 = v186;
              v65 = [CKDProtobufResponseBodyParser alloc];
              v68 = objc_msgSend_messageClass(v61, v66, v67);
              v71 = objc_msgSend_parsingStandaloneMessage(v61, v69, v70);
              v72 = v65;
              v14 = v178;
              v74 = objc_msgSend_initWithQoS_messageClass_parsingStandaloneMessage_(v72, v73, 25, v68, v71);

              v193[0] = MEMORY[0x277D85DD0];
              v193[1] = 3221225472;
              v193[2] = sub_22519FEEC;
              v193[3] = &unk_2785486C8;
              v180 = v64;
              v194 = v180;
              v186 = v74;
              objc_msgSend_setObjectParsedBlock_(v74, v75, v193);
              v76 = objc_opt_new();

              v183 = v76;
              break;
            default:
LABEL_49:
              __assert_rtn("[CKLStreamTrafficObserver parseRequestArrayAndPrint:]", "CKLStreamTrafficObserver.m", 276, "false");
          }
        }

        else
        {
          switch(v53)
          {
            case 1:
              v93 = v13;
              v94 = objc_alloc(MEMORY[0x277CBEA90]);
              v97 = objc_msgSend_dataString(v29, v95, v96);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v94, v98, v97, 0);

              v99 = MEMORY[0x277CCAAC8];
              v100 = objc_opt_class();
              v102 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v99, v101, v100, v61, 0);

              v105 = objc_msgSend_requestClassName(v102, v103, v104);
              v106 = v105;
              v107 = @"CKDPRequestOperation";
              if (v105)
              {
                v107 = v105;
              }

              v108 = v107;

              v110 = NSClassFromString(v108);
              if (!v110)
              {
                v110 = objc_opt_class();
              }

              objc_msgSend_setMessageClass_(v186, v109, v110);
              v113 = objc_msgSend_parsingStandaloneMessage(v102, v111, v112);
              objc_msgSend_setParsingStandaloneMessage_(v186, v114, v113);

              v181 = v102;
              v13 = v93;
              v14 = v178;
              break;
            case 2:
              v77 = objc_alloc(MEMORY[0x277CBEA90]);
              v80 = objc_msgSend_dataString(v29, v78, v79);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v77, v81, v80, 0);

              v82 = MEMORY[0x277CCAAC8];
              v83 = objc_opt_class();
              v85 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v82, v84, v83, v61, 0);

              v182 = v85;
              break;
            case 3:
              v56 = objc_msgSend_dataString(v29, v54, v55);
              objc_msgSend_appendString_(v13, v57, v56);

              v58 = objc_alloc(MEMORY[0x277CBEA90]);
              v61 = objc_msgSend_initWithBase64EncodedString_options_(v58, v59, v13, 0);
              if (v61)
              {
                objc_msgSend_setString_(v13, v60, &stru_28385ED00);
                objc_msgSend_processData_completionHandler_(v186, v62, v61, 0);
                objc_msgSend_appendData_(v183, v63, v61);
              }

              LOBYTE(v175) = 1;
              break;
            default:
              goto LABEL_49;
          }
        }

        v26 += v50;
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v195, v201, 16);
    }

    while (v25);
  }

  else
  {
    v175 = 0;
    v184 = 0;
    v179 = 0;
    v181 = 0;
    v182 = 0;
  }

  objc_autoreleasePoolPop(context);
  v121 = dispatch_group_create();
  dispatch_group_enter(v121);
  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = sub_22519FFB4;
  v189[3] = &unk_2785470C0;
  v122 = v121;
  v190 = v122;
  objc_msgSend_finishWithCompletion_(v186, v123, v189);
  v124 = v184;
  if (v184)
  {
    dispatch_group_enter(v122);
    v187[0] = MEMORY[0x277D85DD0];
    v187[1] = 3221225472;
    v187[2] = sub_2251A0004;
    v187[3] = &unk_2785470C0;
    v188 = v122;
    objc_msgSend_finishWithCompletion_(v184, v125, v187);
  }

  v126 = dispatch_time(0, 5000000000);
  v129 = v180;
  if (dispatch_group_wait(v122, v126))
  {
    v130 = objc_alloc(MEMORY[0x277CCACA8]);
    v132 = objc_msgSend_initWithFormat_(v130, v131, @"cloudkitlog parse error: request object parser timed out for request %@. Likely lost some request object data logs.", v173);
    v133 = v132;
    v136 = objc_msgSend_UTF8String(v133, v134, v135);
    puts(v136);
  }

  if ((v175 & 1) != 0 && !objc_msgSend_count(v180, v127, v128))
  {
    v137 = objc_alloc(MEMORY[0x277CCACA8]);
    v139 = objc_msgSend_initWithFormat_(v137, v138, @"cloudkitlog parse error: received request object data for request %@ but wasn't able to parse a single request object", v173);
    v140 = v139;
    v143 = objc_msgSend_UTF8String(v140, v141, v142);
    puts(v143);

    v145 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v144, @"/tmp/%@.request.dat", v173);
    objc_msgSend_writeToFile_atomically_(v183, v146, v145, 0);
    NSLog(&cfstr_WroteRawReques.isa, v145);
  }

  if ((v175 & 0x100000000) != 0 && !objc_msgSend_count(v177, v127, v128))
  {
    v147 = objc_alloc(MEMORY[0x277CCACA8]);
    v149 = objc_msgSend_initWithFormat_(v147, v148, @"cloudkitlog parse error: received response object data for request %@ but wasn't able to parse a single response object", v173);
    v150 = v149;
    v153 = objc_msgSend_UTF8String(v150, v151, v152);
    puts(v153);

    v155 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v154, @"/tmp/%@.response.dat", v173);
    objc_msgSend_writeToFile_atomically_(v174, v156, v155, 0);
    NSLog(&cfstr_WroteRawRespon.isa, v155);
  }

  v157 = objc_msgSend_requestParsedBlock(v176, v127, v128);

  if (v157)
  {
    v158 = [CKLTrafficLogMessage alloc];
    v160 = objc_msgSend_initWithUuid_requestMetadata_requestObjects_bodyStreamResetCount_responseMetadata_responseObjects_(v158, v159, v173, v181, v180, v179, v182, v177);
    v163 = objc_msgSend_logMessageFilter(v176, v161, v162);
    if (!v163 || (v166 = v163, objc_msgSend_logMessageFilter(v176, v164, v165), v167 = objc_claimAutoreleasedReturnValue(), v169 = objc_msgSend_evaluateWithObject_(v167, v168, v160), v167, v129 = v180, v166, v169))
    {
      v170 = objc_msgSend_requestParsedBlock(v176, v164, v165);
      (v170)[2](v170, v160);
    }

    v124 = v184;
  }

  v171 = *MEMORY[0x277D85DE8];
}

- (void)finish
{
  v3 = objc_msgSend_printQueue(self, a2, v2);
  dispatch_sync(v3, &unk_28385D320);
}

- (id)parserFromConfigurationMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEA90]);
  v6 = objc_msgSend_initWithBase64EncodedString_options_(v4, v5, v3, 0);
  v7 = MEMORY[0x277CCAAC8];
  v8 = objc_opt_class();
  v10 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0);
  v12 = objc_msgSend_substringWithRange_(v10, v11, 0, 1);
  v15 = objc_msgSend_integerValue(v12, v13, v14);

  if (v15 <= 1)
  {
    if (!v15)
    {
LABEL_9:
      v18 = objc_msgSend_substringFromIndex_(v10, v16, 2);
      v19 = v18;
      if (v18)
      {
        v20 = NSClassFromString(v18);
        v21 = [CKDProtobufResponseBodyParser alloc];
        v23 = objc_msgSend_initWithQoS_messageClass_parsingStandaloneMessage_(v21, v22, 25, v20, v15 == 4);
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_16;
    }

    if (v15 != 1)
    {
      goto LABEL_19;
    }

    v17 = CKDJSONResponseBodyParser;
  }

  else
  {
    switch(v15)
    {
      case 2:
        v17 = CKDPlistResponseBodyParser;
        break;
      case 3:
        v17 = CKDPlaintextResponseBodyParser;
        break;
      case 4:
        goto LABEL_9;
      default:
LABEL_19:
        __assert_rtn("[CKLStreamTrafficObserver parserFromConfigurationMessage:]", "CKLStreamTrafficObserver.m", 366, "false");
    }
  }

  v24 = [v17 alloc];
  v23 = objc_msgSend_initWithQoS_(v24, v25, 25);
LABEL_16:

  return v23;
}

@end