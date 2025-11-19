@interface SMTUserData
+ (id)checkDataAmountQuickly:(unint64_t)a3;
+ (id)getDictationEventsWithMaxAge:(double)a3 minAge:(double)a4;
+ (int64_t)getDataTypeFromDictationEvent:(id)a3 sentMessageTime:(double)a4;
+ (void)enumerateCoreDuetSentMessagesWithLimit:(unint64_t)a3 block:(id)a4;
+ (void)enumerateDocumentSources:(id)a3 limit:(unint64_t)a4 maxAge:(double)a5 minAge:(double)a6 block:(id)a7;
+ (void)enumerateSentMessagesWithLimit:(unint64_t)a3 maxAge:(double)a4 minAge:(double)a5 block:(id)a6;
+ (void)initialize;
@end

@implementation SMTUserData

+ (id)checkDataAmountQuickly:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001BB10;
    v9[3] = &unk_100039100;
    v9[4] = &v10;
    v9[5] = a3;
    v4 = objc_retainBlock(v9);
    v5 = objc_autoreleasePoolPush();
    [SMTUserData enumerateSentMessagesWithLimit:10 * v3 maxAge:v4 minAge:0.0 block:0.0];
    objc_autoreleasePoolPop(v5);
    if (v11[3] >= v3)
    {

      _Block_object_dispose(&v10, 8);
      v3 = 0;
    }

    else
    {
      v6 = [NSString stringWithFormat:@"Insufficient data (%lu)", v11[3]];
      v14 = NSLocalizedDescriptionKey;
      v15 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v3 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:2 userInfo:v7];

      _Block_object_dispose(&v10, 8);
    }
  }

  return v3;
}

+ (void)enumerateSentMessagesWithLimit:(unint64_t)a3 maxAge:(double)a4 minAge:(double)a5 block:(id)a6
{
  v9 = a6;
  v60 = a3;
  if (a3)
  {
    v10 = [objc_opt_class() getDictationEventsWithMaxAge:a4 minAge:a5];
    if (a4 <= 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = [NSDate dateWithTimeIntervalSinceNow:-a4];
      v12 = qword_10003FF50;
      if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v69 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Filtering for messages after date %@", buf, 0xCu);
      }
    }

    if (a5 <= 0.0)
    {
      v13 = 0;
    }

    else
    {
      v13 = [NSDate dateWithTimeIntervalSinceNow:-a5];
      v14 = qword_10003FF50;
      if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v69 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Filtering for messages before date %@", buf, 0xCu);
      }
    }

    if (qword_10003FF58 != -1)
    {
      dispatch_once(&qword_10003FF58, &stru_1000390D8);
    }

    if (qword_10003FF68)
    {
      v15 = objc_alloc_init(qword_10003FF68);
      v16 = v15;
      if (!v15)
      {
        v45 = qword_10003FF50;
        if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Failed to load Messages plugin data source", buf, 2u);
        }

        goto LABEL_62;
      }

      v66 = 0;
      v17 = [v15 lastDatabaseRowID];
      if (v17 < 1)
      {
        goto LABEL_62;
      }

      v18 = v17;
      v19 = 0;
      v20 = 0;
      v49 = EARDocumentDataTypeKey;
      v52 = v16;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        if (v18 <= 0x3E9)
        {
          v21 = 1001;
        }

        else
        {
          v21 = v18;
        }

        v51 = v21;
        [v16 setNextRowID:v21 - 1000];
        v22 = [v16 nextOutgoingMessageBatch];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v55 = v22;
        v23 = [v22 reverseObjectEnumerator];
        v24 = [v23 countByEnumeratingWithState:&v62 objects:v67 count:16];
        if (!v24)
        {
          goto LABEL_52;
        }

        v25 = v24;
        v61 = *v63;
        v58 = v13;
        v59 = v11;
        v57 = v23;
        while (2)
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v63 != v61)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v62 + 1) + 8 * i);
            if ((v19 & 1) == 0)
            {
              v28 = v27;
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {

LABEL_59:
                v46 = qword_10003FF50;
                if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Incompatible Messages plugin message", buf, 2u);
                }

LABEL_61:

                objc_autoreleasePoolPop(context);
                v13 = v58;
                v11 = v59;
                v16 = v52;
                goto LABEL_62;
              }

              v29 = objc_opt_respondsToSelector();

              if ((v29 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            if ([v27 rowID] <= v18)
            {
              v30 = [v27 dateSent];
              if (!v30)
              {
                goto LABEL_48;
              }

              v31 = v30;
              v32 = [v27 body];
              if (!v32 || ![v27 fromMe])
              {
                goto LABEL_47;
              }

              if (v59)
              {
                v50 = [v27 dateSent];
                v33 = [v50 earlierDate:v59];
                v54 = v33 == v59;
                if (v33 == v59)
                {
                  v23 = v57;
                  if (!v58)
                  {
LABEL_40:
                    v53 = v33;

                    if (!v54)
                    {
                      goto LABEL_48;
                    }

LABEL_46:
                    v38 = [v27 dateSent];
                    [v38 timeIntervalSinceReferenceDate];
                    v40 = v39;

                    v41 = [objc_opt_class() getDataTypeFromDictationEvent:v10 sentMessageTime:v40];
                    v31 = +[NSMutableDictionary dictionary];
                    v42 = [NSNumber numberWithInteger:v41];
                    [v31 setObject:v42 forKey:v49];

                    v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Message_%lu", [v27 rowID]);
                    v43 = [v27 body];
                    v9[2](v9, v32, v43, v31, &v66);

                    v23 = v57;
LABEL_47:

LABEL_48:
                    if (++v20 >= v60 || (v66 & 1) != 0)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_50;
                  }

LABEL_37:
                  v53 = v33;
                  v47 = v10;
                  v48 = v9;
                  v34 = [v27 dateSent];
                  v35 = [v34 earlierDate:v58];
                  v36 = [v27 dateSent];
                  v54 = v35 == v36;

                  if (!v59)
                  {

                    v37 = v35 == v36;
                    v10 = v47;
                    v9 = v48;
                    v23 = v57;
                    if (!v37)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_46;
                  }

                  v10 = v47;
                  v9 = v48;
                  v33 = v53;
                }

                v23 = v57;
                goto LABEL_40;
              }

              if (!v58)
              {

                goto LABEL_46;
              }

              v33 = v53;
              goto LABEL_37;
            }

LABEL_50:
            v19 = 1;
          }

          v25 = [v23 countByEnumeratingWithState:&v62 objects:v67 count:16];
          v13 = v58;
          v11 = v59;
          if (v25)
          {
            continue;
          }

          break;
        }

LABEL_52:

        objc_autoreleasePoolPop(context);
        v18 = v51 - 1001;
        v16 = v52;
        if (v51 <= 1001)
        {
LABEL_62:

          goto LABEL_63;
        }
      }
    }

    v44 = qword_10003FF50;
    if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "No Messages plugin data source", buf, 2u);
    }

LABEL_63:
  }
}

+ (void)enumerateCoreDuetSentMessagesWithLimit:(unint64_t)a3 block:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v47 = [objc_opt_class() getDictationEventsWithMaxAge:0.0 minAge:0.0];
    v6 = +[_DKKnowledgeStore knowledgeStore];
    v7 = +[_DKIntentMetadataKey intentClass];
    v46 = [_DKQuery predicateForObjectsWithMetadataKey:v7 inValues:&off_10003B290];

    v45 = [_DKEventQuery startDateSortDescriptorAscending:0];
    v8 = 0;
    v44 = EARDocumentDataTypeKey;
    v48 = v5;
    v40 = a3;
    v42 = v6;
    do
    {
      context = objc_autoreleasePoolPush();
      if (a3 - v8 >= 0x3E8)
      {
        v9 = 1000;
      }

      else
      {
        v9 = a3 - v8;
      }

      v10 = +[_DKSystemEventStreams appIntentsStream];
      v60 = v10;
      v11 = [NSArray arrayWithObjects:&v60 count:1];
      v59 = v45;
      v12 = [NSArray arrayWithObjects:&v59 count:1];
      v13 = [_DKEventQuery eventQueryWithPredicate:v46 eventStreams:v11 offset:v8 limit:v9 sortDescriptors:v12];

      v55 = 0;
      v14 = [v6 executeQuery:v13 error:&v55];
      v15 = v55;
      if (v15)
      {
        v16 = qword_10003FF50;
        if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v58 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Could not get messages from CoreDuet %@", buf, 0xCu);
        }
      }

      else if (v14)
      {
        v41 = v14;
        v43 = v13;
        buf[0] = 0;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = v14;
        v17 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        v18 = &_s10Foundation22_convertErrorToNSErrorySo0E0Cs0C0_pF_ptr;
        if (v17)
        {
          v19 = v17;
          v20 = *v52;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v52 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v51 + 1) + 8 * i);
              v23 = [v22 interaction];
              v24 = INTypedInteractionWithInteraction();
              v25 = [v24 intent];

              v26 = v18[237];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v25;
                v28 = [v27 sender];
                v29 = [v28 isMe];

                if (v29)
                {
                  v30 = [v22 startDate];
                  [v30 timeIntervalSinceReferenceDate];
                  v32 = v31;

                  v33 = [objc_opt_class() getDataTypeFromDictationEvent:v47 sentMessageTime:v32];
                  v34 = +[NSMutableDictionary dictionary];
                  v35 = [NSNumber numberWithInteger:v33];
                  [v34 setObject:v35 forKey:v44];

                  v36 = [v22 source];
                  v37 = [v36 itemID];
                  v38 = [v27 content];
                  v48[2](v48, v37, v38, v34, buf);

                  v18 = &_s10Foundation22_convertErrorToNSErrorySo0E0Cs0C0_pF_ptr;
                }
              }

              v39 = buf[0];

              if (v39)
              {

                objc_autoreleasePoolPop(context);
                v5 = v48;
                v6 = v42;
                goto LABEL_26;
              }
            }

            v19 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v5 = v48;
        a3 = v40;
        v15 = 0;
        v6 = v42;
        v13 = v43;
        v14 = v41;
      }

      objc_autoreleasePoolPop(context);
      v8 += 1000;
    }

    while (v8 < a3);
LABEL_26:
  }
}

+ (void)enumerateDocumentSources:(id)a3 limit:(unint64_t)a4 maxAge:(double)a5 minAge:(double)a6 block:(id)a7
{
  v11 = a3;
  v12 = a7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v22;
    *&v14 = 138412290;
    v20 = v14;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if ([v18 isEqualToString:{@"coreduet-sent-messages", v20}])
        {
          [objc_opt_class() enumerateCoreDuetSentMessagesWithLimit:a4 block:v12];
        }

        else if ([v18 isEqualToString:@"sent-messages"])
        {
          [objc_opt_class() enumerateSentMessagesWithLimit:a4 maxAge:v12 minAge:a5 block:a6];
        }

        else
        {
          v19 = qword_10003FF50;
          if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v26 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Ignoring unknown document source: %@", buf, 0xCu);
          }
        }
      }

      v15 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v15);
  }
}

+ (int64_t)getDataTypeFromDictationEvent:(id)a3 sentMessageTime:(double)a4
{
  v5 = a3;
  if (CFAbsoluteTimeGetCurrent() + -15552000.0 <= a4)
  {
    v7 = [v5 count] - 1;
    if (v7 < 0)
    {
LABEL_14:
      v6 = 2;
    }

    else
    {
      v8 = 0;
      v6 = 1;
      while (1)
      {
        v9 = v8 + &v7[-v8] / 2;
        v10 = [v5 objectAtIndexedSubscript:v9];
        [v10 absoluteTimestamp];
        v12 = v11;

        if (v12 <= a4 && a4 - v12 <= 30.0)
        {
          break;
        }

        if (v12 > a4)
        {
          v7 = (v9 - 1);
        }

        else
        {
          v8 = v9 + 1;
        }

        if (v8 > v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getDictationEventsWithMaxAge:(double)a3 minAge:(double)a4
{
  v6 = objc_alloc_init(NSMutableArray);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = 0.0;
  if (a3 > 0.0)
  {
    v9 = CFAbsoluteTimeGetCurrent();
    if (a3 <= 15552000.0)
    {
      v8 = v9 - a3;
    }

    else
    {
      v8 = v9 + -15552000.0;
    }
  }

  v10 = 15552000.0;
  if (a4 <= 15552000.0)
  {
    v10 = a4;
  }

  v11 = Current - v10;
  if (a4 <= a3)
  {
    v12 = v11;
  }

  else
  {
    v12 = Current;
  }

  v13 = objc_opt_new();
  v14 = qword_10003FF50;
  if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v29 = v8;
    v30 = 2048;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Biome Dictation: Fetching dictation events from startTime=%f to endTime=%f", buf, 0x16u);
  }

  v15 = [v13 publisherFromStartTime:v8];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10001CC74;
  v25 = &unk_100039098;
  v27 = v12;
  v16 = v6;
  v26 = v16;
  v17 = [v15 sinkWithCompletion:&stru_100039070 receiveInput:&v22];
  v18 = qword_10003FF50;
  if (os_log_type_enabled(qword_10003FF50, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = COERCE_DOUBLE([v16 count]);
    *buf = 134217984;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Biome Dictation: Fetched %zu dictation events in total", buf, 0xCu);
  }

  return v16;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10003FF50 = os_log_create("com.apple.speech.speechmodeltraining", "SMTUserData");

    _objc_release_x1();
  }
}

@end