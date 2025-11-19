uint64_t start(int a1, char *const *a2)
{
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(FinHealthTestDelegate);
  v5 = qword_10000CAF8;
  qword_10000CAF8 = v4;

  v6 = [qword_10000CAF8 searchSuggestionController];
  v7 = qword_10000CB00;
  qword_10000CB00 = v6;

  v8 = objc_alloc_init(FHPaymentRingSuggestionController);
  v9 = qword_10000CB08;
  qword_10000CB08 = v8;

  objc_storeStrong(&qword_10000CB10, &_dispatch_main_q);
  printf("FHLibraryGitRevision: %s\n", "git-a946ecbf68ea");
  v10 = FinHealthLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [NSString stringWithUTF8String:"git-a946ecbf68ea"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "FHLibraryGitRevision: %@", &buf, 0xCu);
  }

  v103 = 0;
  v111 = 0;
  v112 = 0uLL;
  v108 = 0;
  v109 = 0;
  v104 = 0;
  v105 = 0;
  v110 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v106 = 0;
  v107 = 0;
  v15 = 0;
  v102 = 0;
  v16 = 0.0;
  v113 = 120;
  while (2)
  {
    LODWORD(buf) = 0;
    v17 = getopt_long(a1, a2, "a:g:x:wefpmrsht:ldb:j:u:kv:y:i", &off_10000C758, &buf);
    v18 = 1;
    switch(v17)
    {
      case 'a':
        v16 = atof(optarg);
        goto LABEL_27;
      case 'b':
        *(&v112 + 1) = optarg;
        goto LABEL_27;
      case 'c':
      case 'h':
      case 'o':
      case 'q':
        goto LABEL_26;
      case 'd':
        v13 = 1;
        goto LABEL_27;
      case 'e':
        BYTE4(v108) = 1;
        goto LABEL_27;
      case 'f':
        BYTE4(v107) = 1;
        goto LABEL_27;
      case 'g':
        v102 = optarg;
        goto LABEL_27;
      case 'i':
        v103 = 1;
        goto LABEL_27;
      case 'j':
        *&v112 = optarg;
        goto LABEL_27;
      case 'k':
        v110 = 1;
        goto LABEL_27;
      case 'l':
        LOBYTE(v108) = 1;
        goto LABEL_27;
      case 'm':
        v106 = 1;
        goto LABEL_27;
      case 'n':
        v14 = 1;
        goto LABEL_27;
      case 'p':
        LOBYTE(v107) = 1;
        goto LABEL_27;
      case 'r':
        LOBYTE(v104) = 1;
        goto LABEL_27;
      case 's':
        BYTE4(v104) = 1;
        goto LABEL_27;
      case 't':
        v105 = optarg;
        goto LABEL_27;
      case 'u':
        v12 = optarg;
        goto LABEL_27;
      case 'v':
        v109 = optarg;
        goto LABEL_27;
      case 'w':
        goto LABEL_28;
      case 'x':
        v113 = atoi(optarg);
        goto LABEL_27;
      case 'y':
        v111 = optarg;
        goto LABEL_27;
      default:
        if (v17 != -1)
        {
LABEL_26:
          sub_100001FA0();
LABEL_27:
          v18 = v15;
LABEL_28:
          v15 = v18;
          continue;
        }

        if (v14)
        {
          v19 = objc_alloc_init(FHPaymentRingSuggestionRequest);
          v20 = objc_alloc_init(FHStatementDetails);
          v21 = [NSDecimalNumber decimalNumberWithString:@"10000.00"];
          [v20 setCreditLimit:v21];

          v22 = [NSDecimalNumber decimalNumberWithString:@"5000.00"];
          [v20 setCurrentBalance:v22];

          v23 = [NSDecimalNumber decimalNumberWithString:@"3000.00"];
          [v20 setStatementBalance:v23];

          v24 = [NSDecimalNumber decimalNumberWithString:@"3000.00"];
          [v20 setRemainingStatementBalance:v24];

          v25 = [NSDecimalNumber decimalNumberWithString:@"25.00"];
          [v20 setRemainingMinimumPayment:v25];

          v26 = [NSDecimalNumber decimalNumberWithString:@"25.00"];
          [v20 setMinimumDue:v26];

          [v20 setCurrentStatementIdentifier:@"VWXYZ"];
          [v20 setIsMonthZero:0];
          [v20 setIsMonthOne:1];
          [v19 setPreviousStatement:0];
          [v19 setCurrentStatement:v20];
          v27 = [qword_10000CB08 generatePaymentRingSuggestion:v19];
          v28 = [v27 description];
          v29 = v28;
          printf("Payment Ring suggestions: %s\n", [v28 UTF8String]);

          v30 = dispatch_time(0, 10000000000);
          dispatch_after(v30, &_dispatch_main_q, &stru_1000085F8);
        }

        v31 = &FinHealthTestUtils__metaData;
        if (*(&v112 + 1))
        {
          v32 = strtok(*(&v112 + 1), off_10000C750[0]);
          if (v32)
          {
            v33 = v32;
            v34 = 0;
            v35 = 0;
            v36 = 1;
            v37 = &FinHealthTestUtils__metaData;
            do
            {
              v38 = v35;
              v39 = v36;
              if (v36)
              {
                v34 = v33;
              }

              v35 = strtok(0, *&v37[26].flags);
              if (!v35)
              {
                break;
              }

              v36 = 0;
              v33 = v35;
              v37 = &FinHealthTestUtils__metaData;
            }

            while ((v39 & 1) != 0);
          }

          else
          {
            v34 = 0;
            v38 = 0;
          }

          v40 = objc_alloc_init(NSDateFormatter);
          v41 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
          [v40 setTimeZone:v41];

          [v40 setDateFormat:@"YYYY-MM-dd"];
          v42 = [NSString stringWithUTF8String:v34];
          v101 = [v40 dateFromString:v42];

          v43 = [NSString stringWithUTF8String:v38];
          v99 = [v40 dateFromString:v43];

          *&buf = 0;
          *(&buf + 1) = &buf;
          v135 = 0x3032000000;
          v136 = sub_10000204C;
          v137 = sub_10000205C;
          v138 = objc_opt_new();
          v44 = dispatch_semaphore_create(0);
          v98 = objc_alloc_init(FHSearchSuggestionController);
          v130[0] = _NSConcreteStackBlock;
          v130[1] = 3221225472;
          v130[2] = sub_100002064;
          v130[3] = &unk_1000082D8;
          p_buf = &buf;
          v45 = v44;
          v131 = v45;
          [v98 paymentRingSuggestionsFromSearchFeatures:@"Payment Ring" startDate:v101 endDate:v99 completion:v130];
          dispatch_semaphore_wait(v45, 0xFFFFFFFFFFFFFFFFLL);
          v46 = [*(*(&buf + 1) + 40) description];
          v47 = v46;
          v48 = [v46 UTF8String];
          v49 = [v101 description];
          v50 = v49;
          printf("Payment Ring Suggestions: %s [startMonthPtr: %s, startMonth: %s]\n", v48, v34, [v49 UTF8String]);

          v51 = dispatch_time(0, 1000000000 * v113);
          dispatch_after(v51, &_dispatch_main_q, &stru_1000085F8);

          _Block_object_dispose(&buf, 8);
          v31 = &FinHealthTestUtils__metaData;
        }

        if (v13)
        {
          puts("Deleting data");
          v52 = dispatch_semaphore_create(0);
          v53 = qword_10000CB00;
          v128[0] = _NSConcreteStackBlock;
          v128[1] = 3221225472;
          v128[2] = sub_1000020AC;
          v128[3] = &unk_100008300;
          v129 = v52;
          v54 = v52;
          [v53 deleteAllData:v128];
          dispatch_semaphore_wait(v54, 0xFFFFFFFFFFFFFFFFLL);

          v31 = &FinHealthTestUtils__metaData;
        }

        if (v112)
        {
          v55 = [NSString stringWithUTF8String:v112];
          v56 = [FinHealthTestUtils transactionsFromJsonFile:v55];

          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v57 = v56;
          v58 = [v57 countByEnumeratingWithState:&v124 objects:v133 count:16];
          if (v58)
          {
            v59 = *v125;
            do
            {
              for (i = 0; i != v58; i = i + 1)
              {
                if (*v125 != v59)
                {
                  objc_enumerationMutation(v57);
                }

                v61 = *(*(&v124 + 1) + 8 * i);
                v119 = _NSConcreteStackBlock;
                v120 = 3221225472;
                v121 = sub_100002150;
                v122 = &unk_100008350;
                v123 = v61;
                [qword_10000CB00 transactionUpdated:? deferFeatureComputation:? completion:?];
              }

              v58 = [v57 countByEnumeratingWithState:&v124 objects:v133 count:16];
            }

            while (v58);
          }

          v62 = dispatch_time(0, 1000000000 * v113);
          dispatch_after(v62, &_dispatch_main_q, &stru_1000085F8);

          v31 = &FinHealthTestUtils__metaData;
        }

        if (v12)
        {
          puts("Retrieving PeerPayment forecasting Signals.");
          v63 = objc_alloc_init(NSDateFormatter);
          v64 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
          [v63 setTimeZone:v64];

          [v63 setDateFormat:@"YYYY-MM-dd"];
          v65 = [NSString stringWithUTF8String:v12];
          v66 = [v63 dateFromString:v65];

          v67 = [v66 description];
          v68 = v67;
          printf("PeerPayment forecasting date provided = %s\n", [v67 UTF8String]);

          [qword_10000CB00 peerPaymentForecastingSignals:v66 withCompletion:&stru_100008390];
          printf("%s end\n", "int main(int, char **)");

          v31 = &FinHealthTestUtils__metaData;
        }

        if (v110)
        {
          v69 = dispatch_semaphore_create(0);
          v70 = qword_10000CB00;
          v71 = [NSDecimalNumber decimalNumberWithString:@"1000.00"];
          v117[0] = _NSConcreteStackBlock;
          v117[1] = 3221225472;
          v117[2] = sub_1000023D8;
          v117[3] = &unk_100008300;
          v72 = v69;
          v118 = v72;
          [v70 updatePeerPaymentForecastingSuggestionStatus:1 counterpartHandle:@"joe@gmail.com" amount:v71 completion:v117];

          v73 = qword_10000CB00;
          v74 = [NSDecimalNumber decimalNumberWithString:@"2000.00"];
          v115[0] = _NSConcreteStackBlock;
          v115[1] = 3221225472;
          v115[2] = sub_10000247C;
          v115[3] = &unk_100008300;
          v116 = v72;
          v75 = v72;
          [v73 updatePeerPaymentForecastingSuggestionStatus:1 counterpartHandle:0 amount:v74 completion:v115];

          printf("%s end\n", "int main(int, char **)");
          v31 = &FinHealthTestUtils__metaData;
        }

        if (v109)
        {
          v76 = strtok(v109, *&v31[26].flags);
          if (v76)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            do
            {
              if (!v80)
              {
                v79 = v76;
              }

              if (v80 == 1)
              {
                v78 = v76;
              }

              if (v80 == 2)
              {
                v77 = v76;
              }

              v76 = strtok(0, off_10000C750[0]);
              if (v76)
              {
                v81 = v80 >= 2;
              }

              else
              {
                v81 = 1;
              }

              ++v80;
            }

            while (!v81);
          }

          else
          {
            v79 = 0;
            v78 = 0;
            v77 = 0;
          }

          printf("transactionSourceIdentifier passed in = %s\n", v79);
          printf("amount passed in = %s\n", v78);
          printf("currencyCode passed in = %s\n", v77);
          v82 = qword_10000CB00;
          v83 = [NSString stringWithUTF8String:v79];
          v84 = [NSString stringWithUTF8String:v78];
          v85 = [NSDecimalNumber decimalNumberWithString:v84];
          v86 = [NSString stringWithUTF8String:v77];
          [v82 updatePeerPaymentAccountBalanceWithTransactionSourceId:v83 amount:v85 currencyCode:v86 completion:&stru_1000083D0];
        }

        if (v111)
        {
          v87 = objc_alloc_init(NSMutableSet);
          v88 = [NSString stringWithUTF8String:v111];
          [v87 addObject:v88];

          [qword_10000CB00 deleteDataForPassesWithSourceIdentifiers:v87 completion:&stru_1000083F0];
          v89 = dispatch_time(0, 1000000000 * v113);
          dispatch_after(v89, &_dispatch_main_q, &stru_1000085F8);

          goto LABEL_83;
        }

        if ((v108 & 0x100000000) != 0)
        {
          [qword_10000CB00 aggregateFeaturesWithHandler:&stru_100008430];
          if (v108)
          {
            v90 = qword_10000CAF8;
            qword_10000CAF8 = 0;

            v91 = qword_10000CB00;
            qword_10000CB00 = 0;

            puts("In a separate tab (within 2 minutes) run 'leaks FinHealthXPCServices'.");
          }

          goto LABEL_82;
        }

        if ((v107 & 0x100000000) != 0)
        {
          [qword_10000CB00 featuresWithCompletion:&stru_100008498];
LABEL_82:
          v92 = dispatch_time(0, 1000000000 * v113);
          dispatch_after(v92, &_dispatch_main_q, &stru_1000085F8);
          goto LABEL_83;
        }

        if (v107)
        {
          [qword_10000CB00 featuresForApplication:@"Messaging" withCompletion:&stru_1000084B8];
          [qword_10000CB00 fetchUserProperties:&off_100008F90 withParameters:&__NSDictionary0__struct completion:&stru_1000084D8];
          goto LABEL_82;
        }

        if (v106)
        {
          [qword_10000CB00 featureResponsesForApplication:0 withCompletion:&stru_1000084F8];
          goto LABEL_83;
        }

        if (v105)
        {
          v94 = qword_10000CB00;
          v95 = [NSString stringWithUTF8String:?];
          v114[0] = _NSConcreteStackBlock;
          v114[1] = 3221225472;
          v114[2] = sub_100002C80;
          v114[3] = &unk_100008518;
          v114[4] = v105;
          [v94 getDisputeDocumentSuggestionsForTransactionId:v95 completion:v114];

          v96 = 3;
LABEL_93:
          sub_100002004(v96);
          goto LABEL_83;
        }

        if ((v104 & 0x100000000) != 0)
        {
          v97 = &stru_100008558;
LABEL_92:
          dispatch_async(&_dispatch_main_q, v97);
          v96 = v113;
          goto LABEL_93;
        }

        if (v104)
        {
          v97 = &stru_100008578;
          goto LABEL_92;
        }

        if (v103)
        {
          [qword_10000CB00 getTopTransactionCategoriesWithTimeWindow:0 completion:&stru_1000085B8];
          [qword_10000CB00 getTopTransactionCategoriesWithCountryCode:@"US" timeWindow:0 minRegularTransactionRatio:0 discretizedTimeOfDay:&stru_1000085D8 completion:0.0];
          v96 = 2;
          goto LABEL_93;
        }

        if (v112 == 0)
        {
          if (v102)
          {
            sub_100002EF4(qword_10000CB00, v102, v113, v15 & 1, v16);
          }

          else
          {
            sub_100002EF4(qword_10000CB00, &unk_100005C0E, v113, v15 & 1, v16);
          }
        }

LABEL_83:
        CFRunLoopRun();
        objc_autoreleasePoolPop(context);
        return 0;
    }
  }
}

uint64_t sub_100001FA0()
{
  puts("=============================================================================================================================================================================================================");
  printf("See if service is running:   %s --ping hello world!\n\n", [@"/System/Library/PrivateFrameworks/FinHealth.framework/finhealth_client" UTF8String]);

  return puts("=============================================================================================================================================================================================================");
}

void sub_100002004(int a1)
{
  v1 = dispatch_time(0, 1000000000 * a1);
  v2 = qword_10000CB10;

  dispatch_after(v1, v2, &stru_1000085F8);
}

uint64_t sub_10000204C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100002064(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:a2];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_1000020AC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = @"Succeeded";
  }

  else
  {
    v6 = @"Failed";
  }

  v7 = [(__CFString *)v6 UTF8String];
  v8 = [v5 localizedDescription];

  printf("status: %s, error :%s\n", v7, [v8 UTF8String]);
  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

void sub_100002150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = qword_10000CB10;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000021F0;
  v8[3] = &unk_100008328;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_sync(v5, v8);
}

void sub_1000021F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = [v2 description];
    v3 = v6;
    v4 = [v6 UTF8String];
    v5 = [*(a1 + 40) description];
    printf("Error: %s, transaction :%s\n", v4, [v5 UTF8String]);
  }
}

void sub_10000228C(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_10000CB10;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002350;
  v9[3] = &unk_100008328;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_100002350(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 description];
    v4 = "Error: %s\n";
  }

  else
  {
    v3 = [*(a1 + 40) description];
    v4 = "Feature values for Test Client: %s\n";
  }

  v6 = v3;
  v5 = v3;
  printf(v4, [v6 UTF8String]);
}

intptr_t sub_1000023D8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = @"Succeeded";
  }

  else
  {
    v6 = @"Failed";
  }

  v7 = [(__CFString *)v6 UTF8String];
  v8 = [v5 localizedDescription];

  printf("status: %s, error :%s\n", v7, [v8 UTF8String]);
  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

intptr_t sub_10000247C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = @"Succeeded";
  }

  else
  {
    v6 = @"Failed";
  }

  v7 = [(__CFString *)v6 UTF8String];
  v8 = [v5 localizedDescription];

  printf("status: %s, error :%s\n", v7, [v8 UTF8String]);
  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

void sub_100002520(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v3)
  {
    v5 = @"Succeeded";
  }

  else
  {
    v5 = @"Failed";
  }

  v6 = [(__CFString *)v5 UTF8String];
  v8 = [(NSError *)v4 localizedDescription];

  v7 = v8;
  printf("status: %s, error :%s\n", v6, [v8 UTF8String]);
}

void sub_1000025B8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v3)
  {
    v5 = @"Succeeded";
  }

  else
  {
    v5 = @"Failed";
  }

  v6 = [(__CFString *)v5 UTF8String];
  v8 = [(NSError *)v4 localizedDescription];

  v7 = v8;
  printf("status: %s, error :%s\n", v6, [v8 UTF8String]);
}

void sub_100002650(id a1, NSString *a2, NSError *a3)
{
  v3 = a2;
  v4 = qword_10000CB10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026E8;
  block[3] = &unk_100008458;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_100002720(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_10000CB10;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000027E4;
  v9[3] = &unk_100008328;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t sub_1000027E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 description];
    v4 = "Error: %s\n";
  }

  else
  {
    v3 = [*(a1 + 40) description];
    v4 = "Feature values for Test Client: %s\n";
  }

  printf(v4, [v3 UTF8String]);

  return printf("%s end\n", "int main(int, char **)_block_invoke_14");
}

void sub_100002878(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_10000CB10;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000293C;
  v9[3] = &unk_100008328;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t sub_10000293C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 description];
    v4 = "Error: %s\n";
  }

  else
  {
    v3 = [*(a1 + 40) description];
    v4 = "Feature values for AMS Plugin from featuresForApplication: API %s\n";
  }

  printf(v4, [v3 UTF8String]);

  return printf("%s end\n", "int main(int, char **)_block_invoke_16");
}

void sub_1000029D0(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_10000CB10;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002A94;
  v9[3] = &unk_100008328;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t sub_100002A94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 description];
    v4 = "Error: %s\n";
  }

  else
  {
    v3 = [*(a1 + 40) description];
    v4 = "Feature values for AMS Plugin from fetchUserProperties API: %s\n";
  }

  printf(v4, [v3 UTF8String]);

  return printf("%s end\n", "int main(int, char **)_block_invoke_18");
}

void sub_100002B28(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_10000CB10;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002BEC;
  v9[3] = &unk_100008328;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t sub_100002BEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 description];
    v4 = "Error: %s\n";
  }

  else
  {
    v3 = [*(a1 + 40) description];
    v4 = "Transaction Features for Test Client: %s\n";
  }

  printf(v4, [v3 UTF8String]);

  return printf("%s end\n", "int main(int, char **)_block_invoke_20");
}

void sub_100002C80(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 description];
    [v5 UTF8String];
    printf("Error: %s\n");
  }

  else
  {
    v5 = [a2 description];
    [v5 UTF8String];
    v4 = *(a1 + 32);
    printf("Dispute document suggestions: %s\n for transaction id: %s \n");
  }
}

void sub_100002D2C(id a1, FHTransactionStatistics *a2, NSError *a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v9 = [(NSError *)a3 description];
    v6 = [v9 UTF8String];
    v7 = [(FHTransactionStatistics *)v5 description];

    printf("%s Error: %s\n FHStatistics: %s\n", "int main(int, char **)_block_invoke_24", v6, [v7 UTF8String]);
  }

  else
  {
    v9 = [(FHTransactionStatistics *)v4 description];

    v8 = v9;
    printf("getTopTransactionCategoriesWithTimeWindow:completion FHStatistics: %s\n", [v9 UTF8String]);
  }
}

void sub_100002E10(id a1, FHTransactionStatistics *a2, NSError *a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v9 = [(NSError *)a3 description];
    v6 = [v9 UTF8String];
    v7 = [(FHTransactionStatistics *)v5 description];

    printf("%s Error: %s\n FHStatistics: %s\n", "int main(int, char **)_block_invoke_25", v6, [v7 UTF8String]);
  }

  else
  {
    v9 = [(FHTransactionStatistics *)v4 description];

    v8 = v9;
    printf("getTopTransactionCategoriesWithCountryCode:timeWindow:minRegularTransactionRatio:discretizedTimeOfDay:completion FHStatistics %s\n", [v9 UTF8String]);
  }
}

void sub_100002EF4(void *a1, char *a2, int a3, char a4, float a5)
{
  v9 = a1;
  v10 = strtok(a2, off_10000C750[0]);
  if (v10)
  {
    v11 = 0.0;
    v12 = 1;
    v13 = 0.0;
    do
    {
      v14 = v12;
      v15 = atof(v10);
      if (v14)
      {
        v11 = v15;
      }

      else
      {
        v13 = v15;
      }

      v10 = strtok(0, off_10000C750[0]);
      if (!v10)
      {
        break;
      }

      v12 = 0;
    }

    while ((v14 & 1) != 0);
  }

  else
  {
    v13 = 0.0;
    v11 = 0.0;
  }

  printf("latitude: %f\n", v11);
  printf("longitude: %f\n", v13);
  v16 = sub_100003534();
  if (a5 == 0.0)
  {
    a5 = (arc4random_uniform(0x2EE0u) + 10) / 100.0;
  }

  v52 = objc_alloc_init(NSDateFormatter);
  [v52 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v17 = +[NSDate date];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18 - arc4random_uniform(0x93A80u);

  v51 = [NSDate dateWithTimeIntervalSinceReferenceDate:v19];
  v20 = [[CLLocation alloc] initWithLatitude:v11 longitude:v13];
  v53 = a3;
  if (a4)
  {
    v50 = v9;
    puts("Sending transaction directly to PKPaymentService");
    v21 = objc_alloc_init(PKPaymentService);
    v22 = objc_alloc_init(PKPaymentTransaction);
    v23 = +[PKPassLibrary sharedInstance];
    v24 = v21;
    v25 = [v21 defaultPaymentPassUniqueIdentifier];
    v48 = v23;
    v49 = v25;
    if (v25)
    {
      v26 = [v23 passWithUniqueID:v25];
      v27 = [v26 paymentPass];
    }

    else
    {
      v27 = 0;
    }

    [v22 setOriginatedByDevice:1];
    [v22 setTransactionStatus:1];
    v40 = [NSString stringWithFormat:@"%f", a5];
    v47 = [NSDecimalNumber decimalNumberWithString:v40];

    [v22 setAmount:v47];
    [v22 setCurrencyCode:@"USD"];
    v41 = +[NSDate date];
    [v22 setTransactionDate:v41];

    [v22 setLocation:v20];
    [v22 setLocationHorizontalAccuracy:100.0];
    v29 = v51;
    [v22 setLocationDate:v51];
    [v22 setAccountType:2];
    [v22 setHasNotificationServiceData:1];
    [v22 setProcessedForLocation:1];
    [v22 setProcessedForMerchantCleanup:0];
    v42 = objc_alloc_init(PKMerchant);
    v43 = [v16 objectAtIndexedSubscript:0];
    [v42 setRawName:v43];
    [v42 setName:v43];
    [v22 setMerchant:v42];
    printf("merchantName: {%s}\n", [v43 UTF8String]);
    v44 = [v27 uniqueID];
    v45 = [v27 devicePrimaryPaymentApplication];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000039A4;
    v54[3] = &unk_100008690;
    v55 = v22;
    v56 = v53;
    v46 = v22;
    [v24 insertOrUpdatePaymentTransaction:v46 forPassUniqueIdentifier:v44 paymentApplication:v45 completion:v54];

    v9 = v50;
  }

  else
  {
    v28 = 0;
    v29 = v51;
    do
    {
      v30 = objc_alloc_init(FHTransaction);
      v31 = sub_1000037AC(15);
      [v30 setIdentifier:v31];

      v32 = [NSDecimalNumber alloc];
      *&v33 = a5;
      v34 = [v32 initWithFloat:v33];
      [v30 setAmount:v34];

      [v30 setTransactionDate:v51];
      [v30 setLocation:v20];
      v35 = [v16 objectAtIndexedSubscript:0];
      [v30 setDisplayName:v35];

      v36 = [v16 objectAtIndexedSubscript:1];
      [v30 setMerchantUniqueIdentifier:v36];

      v37 = [v16 objectAtIndexedSubscript:2];
      [v30 setCategory:{objc_msgSend(v37, "intValue")}];

      v38 = +[NSTimeZone systemTimeZone];
      [v30 setTimeZone:v38];

      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100003850;
      v57[3] = &unk_100008640;
      v58 = v28;
      [v9 transactionUpdated:v30 deferFeatureComputation:0 completion:v57];

      ++v28;
    }

    while (v28 != 3000);
    v39 = dispatch_time(0, 1000000000 * a3);
    dispatch_after(v39, qword_10000CB10, &stru_1000085F8);
  }
}

void sub_10000350C(id a1)
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

id sub_100003534()
{
  v0 = [NSNumber numberWithInteger:1];
  v18[0] = v0;
  v1 = [NSNumber numberWithInteger:7];
  v18[1] = v1;
  v2 = [NSNumber numberWithInteger:4];
  v18[2] = v2;
  v3 = [NSNumber numberWithInteger:1];
  v18[3] = v3;
  v4 = [NSNumber numberWithInteger:2];
  v18[4] = v4;
  v5 = [NSNumber numberWithInteger:4];
  v18[5] = v5;
  v6 = [NSNumber numberWithInteger:1];
  v18[6] = v6;
  v7 = [NSNumber numberWithInteger:1];
  v18[7] = v7;
  v8 = [NSArray arrayWithObjects:v18 count:8];

  v9 = arc4random_uniform([&off_100009068 count]);
  v10 = [&off_100009068 objectAtIndexedSubscript:v9];
  LODWORD(v6) = arc4random_uniform([v10 count] - 1) + 1;

  v11 = [&off_100009068 objectAtIndexedSubscript:v9];
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [&off_100009068 objectAtIndexedSubscript:v9];
  v14 = [v13 objectAtIndexedSubscript:v6];
  v15 = [v8 objectAtIndexedSubscript:v9];
  v16 = [NSArray arrayWithObjects:v12, v14, v15, 0];

  return v16;
}

id sub_1000037AC(int a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithCapacity:a1];
  if (v1 >= 1)
  {
    do
    {
      [v2 appendFormat:@"%C", objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789=/+", "characterAtIndex:", arc4random_uniform(objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789=/+", "length")))];
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_100003850(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = qword_10000CB10;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000038F4;
  v7[3] = &unk_100008620;
  v8 = v4;
  v9 = *(a1 + 32);
  v6 = v4;
  dispatch_async(v5, v7);
}

void sub_1000038F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = [v2 description];
    v3 = v6;
    printf("Error: %s\n", [v6 UTF8String]);
  }

  else
  {
    v4 = *(a1 + 40);
    HIDWORD(v5) = 652835029 * v4 + 17179868;
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 2) <= 0x83126E)
    {
      printf("Processed %i of %i\n", v4, 3000);
    }
  }
}

void sub_1000039A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_10000CB10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003A64;
  block[3] = &unk_100008668;
  v7 = *(a1 + 32);
  v8 = v3;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_100003A64(uint64_t a1)
{
  v2 = [*(a1 + 32) description];
  printf("paymentTransaction: {%s}\n", [v2 UTF8String]);

  v3 = [*(a1 + 40) description];
  printf("resultingTransaction: {%s}\n", [v3 UTF8String]);

  v4 = dispatch_time(0, 1000000000 * *(a1 + 48));
  v5 = qword_10000CB10;

  dispatch_after(v4, v5, &stru_1000085F8);
}

void sub_100003DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003DF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003E08(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [[FHTransaction alloc] initWithDictionary:v3];

  v4 = [v8 amount];
  v5 = [v4 stringValue];
  v6 = [NSDecimalNumber decimalNumberWithString:v5];

  [v8 setAmount:v6];
  v7 = +[NSTimeZone defaultTimeZone];
  [v8 setTimeZone:v7];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
}