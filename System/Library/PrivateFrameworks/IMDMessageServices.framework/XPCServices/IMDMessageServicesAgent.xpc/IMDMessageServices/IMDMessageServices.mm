id sub_100001018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = IMGetXPCIntFromDictionary();
  v7 = IMGetXPCStringFromDictionary();
  v8 = IMGetXPCStringFromDictionary();
  v9 = IMGetXPCArrayFromDictionary();
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000011E4;
  v16 = &unk_100010500;
  v17 = a3;
  v18 = a4;
  if (!v6)
  {
    return [[IMDMessageServicesAgentController checkForPendingRoutingWithHandler:v13 sharedInstance:v14], "checkForPendingRoutingWithHandler:", &v13];
  }

  v10 = v9;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Handling routing request for GUID:%@  chatGUID:%@  error:%d", buf, 0x1Cu);
    }
  }

  return [+[IMDMessageServicesAgentController chooseRouteForMessage:v13], "chooseRouteForMessage:downgradableServices:withError:inChat:handler:", v7, v10, v6, v8, &v13];
}

uint64_t sub_1000011E4(uint64_t a1, void *a2, double a3)
{
  if (a2 && [a2 count])
  {
    v5 = *(a1 + 32);
    [IMDMessageServicesRoutingDictionaryKey UTF8String];
    IMInsertDictionariesToXPCDictionary();
  }

  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);
    [IMDMessageServicesCallbackIntervalKey UTF8String];
    IMInsertIntsToXPCDictionary();
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

id sub_1000012C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = IMGetXPCStringFromDictionary();
  v7 = [IMDMessageServicesAgentController sharedInstance:_NSConcreteStackBlock];
  if (v6)
  {
    return [(IMDMessageServicesAgentController *)v7 checkExpireStateForMessage:v6 handler:&v9];
  }

  else
  {
    return [(IMDMessageServicesAgentController *)v7 checkExpireStateWithHandler:&v9];
  }
}

uint64_t sub_100001378(uint64_t a1, void *a2, double a3)
{
  if (a2 && [a2 count])
  {
    v5 = *(a1 + 32);
    [IMDMessageServicesExpireStateDictionaryKey UTF8String];
    IMInsertDictionariesToXPCDictionary();
  }

  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);
    [IMDMessageServicesCallbackIntervalKey UTF8String];
    IMInsertIntsToXPCDictionary();
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

id sub_100001454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = IMGetXPCStringFromDictionary();
  v7 = [IMDMessageServicesAgentController sharedInstance:_NSConcreteStackBlock];
  if (v6)
  {
    return [(IMDMessageServicesAgentController *)v7 checkWatchdogForMessage:v6 handler:&v9];
  }

  else
  {
    return [(IMDMessageServicesAgentController *)v7 checkWatchdogWithHandler:&v9];
  }
}

uint64_t sub_10000150C(uint64_t a1, void *a2, double a3)
{
  if (a2 && [a2 count])
  {
    v5 = *(a1 + 32);
    [IMDMessageServicesWatchdogDictionaryKey UTF8String];
    IMInsertDictionariesToXPCDictionary();
  }

  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);
    [IMDMessageServicesCallbackIntervalKey UTF8String];
    IMInsertIntsToXPCDictionary();
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

id sub_1000015E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = IMGetXPCStringFromDictionary();
  v7 = [IMDMessageServicesAgentController sharedInstance:_NSConcreteStackBlock];
  if (v6)
  {
    return [(IMDMessageServicesAgentController *)v7 checkScheduledMessageForGUID:v6 handler:&v9];
  }

  else
  {
    return [(IMDMessageServicesAgentController *)v7 checkScheduledMessageWithHandler:&v9];
  }
}

uint64_t sub_1000016A0(uint64_t a1, void *a2, double a3)
{
  if (a2 && [a2 count])
  {
    v5 = *(a1 + 32);
    [IMDMessageServicesScheduledMessagesDictionaryKey UTF8String];
    IMInsertDictionariesToXPCDictionary();
  }

  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);
    [IMDMessageServicesCallbackIntervalKey UTF8String];
    IMInsertIntsToXPCDictionary();
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void start()
{
  xpc_track_activity();
  IMSetEmbeddedTempDirectory();
  xpc_main(sub_1000017A4);
}

void sub_1000017A4(_xpc_connection_s *a1)
{
  xpc_connection_set_target_queue(a1, &_dispatch_main_q);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001834;
  handler[3] = &unk_100010528;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
}

void sub_100001834(uint64_t a1, void *a2)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  xpc_connection_get_audit_token();
  HasEntitlement = IMDAuditTokenTaskHasEntitlement();
  v7 = *v5;
  if (HasEntitlement)
  {
    if (xpc_get_type(a2) != &_xpc_type_error)
    {
      xpc_retain(a2);
      xpc_retain(v7);
      v8 = xpc_copy_description(a2);
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = xpc_connection_get_pid(v7);
          *&buf[8] = 2080;
          *&buf[10] = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", buf, 0x12u);
        }
      }

      free(v8);
      ++dword_100014C88;
      v10 = os_transaction_create();
      reply = xpc_dictionary_create_reply(a2);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100001B30;
      v17 = &unk_100010590;
      v18 = v7;
      v19 = reply;
      v20 = a2;
      v21 = v10;
      v12 = [buf copy];
      if (qword_100014C98 != -1)
      {
        sub_100007E8C();
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001D1C;
      block[3] = &unk_1000105D8;
      block[4] = a2;
      block[5] = v7;
      block[6] = reply;
      block[7] = v12;
      dispatch_async(qword_100014C90, block);
    }
  }

  else
  {
    pid = xpc_connection_get_pid(v7);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = @"com.apple.private.imcore.imdmessageservices";
        *&buf[12] = 2112;
        *&buf[14] = IMProcessNameForPid();
        *&buf[22] = 1024;
        LODWORD(v17) = pid;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Denying xpc connection, task does not have entitlement: %@  (%@:%d)", buf, 0x1Cu);
      }
    }

    xpc_connection_cancel(*(a1 + 32));
  }
}

void sub_100001AFC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10000193CLL);
  }

  _Unwind_Resume(a1);
}

void sub_100001B30(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001BA8;
  v2[3] = &unk_100010590;
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_100001BA8(uint64_t a1)
{
  xpc_connection_send_message(*(a1 + 32), *(a1 + 40));
  xpc_release(*(a1 + 40));
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 48));

  --dword_100014C88;
  v2.n128_u64[0] = 30.0;

  return _im_dispatch_after(&stru_100010568, v2);
}

void sub_100001C20(id a1)
{
  if (dword_100014C88 <= 0)
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Idle exiting, we're done here", v2, 2u);
      }
    }

    exit(0);
  }
}

void sub_100001CC0(id a1)
{
  v1 = dispatch_queue_create("IMDMessageServicesAgentQueue", 0);
  qword_100014C90 = v1;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v1, global_queue);
}

id sub_100001D1C(void *a1)
{
  v2 = a1[4];
  v3 = IMGetXPCStringFromDictionary();
  v4 = [v3 isEqualToString:@"route"];
  if (v4)
  {
    v5 = a1[4];
    v6 = a1[6];
    v7 = a1[7];

    return sub_100001018(v4, v5, v6, v7);
  }

  else
  {
    v9 = [v3 isEqualToString:@"expire"];
    if (v9)
    {
      v10 = a1[4];
      v11 = a1[6];
      v12 = a1[7];

      return sub_1000012C0(v9, v10, v11, v12);
    }

    else
    {
      v13 = [v3 isEqualToString:@"watchdog"];
      if (v13)
      {
        v14 = a1[4];
        v15 = a1[6];
        v16 = a1[7];

        return sub_100001454(v13, v14, v15, v16);
      }

      else
      {
        v17 = [v3 isEqualToString:@"scheduled"];
        if (v17)
        {
          v18 = a1[4];
          v19 = a1[6];
          v20 = a1[7];

          return sub_1000015E8(v17, v18, v19, v20);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = 138412290;
              v23 = v3;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Unknown command: %@", &v22, 0xCu);
            }
          }

          return (*(a1[7] + 16))();
        }
      }
    }
  }
}

id sub_1000026B0(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Found message for routing with GUID:%@ inChat:%@ -- %@", &v7, 0x20u);
    }
  }

  return [*(a1 + 56) _chooseRouteForMessage:*(a1 + 48) downgradableServices:*(a1 + 64) error:*(a1 + 80) handler:*(a1 + 72)];
}

void sub_100002BB0(uint64_t a1, void *a2, double a3)
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found routable messages: %@", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v9 = *v19;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [*(a1 + 32) _routingDictionaryForService:IMServiceNameSMS extraFlags:0x80000 updateProperties:{1, v17}];
        if (v12)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v17;
              v24 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "  Adding route: %@", buf, 0xCu);
            }
          }

          [*(a1 + 40) setObject:v12 forKey:{objc_msgSend(v11, "GUID")}];
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if (a3 > 0.0)
  {
    v14 = *(*(a1 + 56) + 8);
    if (*(v14 + 24))
    {
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 24);
      if (v16 >= a3)
      {
        v16 = a3;
      }

      *(v15 + 24) = v16;
    }

    else
    {
      *(v14 + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = a3;
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100002E34(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(*(*(a1 + 56) + 8) + 24));
  }

  dispatch_release(*(a1 + 40));
  v3 = *(a1 + 32);
}

uint64_t sub_100003108(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = 138412290;
        v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of expire state check: %@", &v3, 0xCu);
      }
    }

    return (*(*(v1 + 32) + 16))(0.0);
  }

  return result;
}

uint64_t sub_1000031EC(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 32);
        v5 = 138412290;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of expire state check: %@", &v5, 0xCu);
      }
    }

    v4 = *(v1 + 32);
    return (*(*(v1 + 40) + 16))(*(v1 + 48));
  }

  return result;
}

uint64_t sub_1000035BC(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 32);
        v5 = 138412290;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of expire state check: %@", &v5, 0xCu);
      }
    }

    v4 = *(v1 + 32);
    return (*(*(v1 + 40) + 16))(*(v1 + 48));
  }

  return result;
}

uint64_t sub_1000038D0(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = 138412290;
        v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of schedule message: %@", &v3, 0xCu);
      }
    }

    return (*(*(v1 + 32) + 16))(0.0);
  }

  return result;
}

uint64_t sub_1000039B4(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 32);
        v5 = 138412290;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of schedule message check : %@", &v5, 0xCu);
      }
    }

    v4 = *(v1 + 32);
    return (*(*(v1 + 40) + 16))(*(v1 + 48));
  }

  return result;
}

void sub_100003B24(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = IMDMessageServicesScheduledDateKey;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = IMDMessageRecordCopyGUIDForMessage();
        Date = IMDMessageRecordGetDate();
        if (v11)
        {
          v13 = Date;
          v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", Date), v7, 0}];
          [v3 setObject:v14 forKey:v11];
          [+[NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:](NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{v13), "timeIntervalSinceNow"}];
          v16 = v15;
        }

        else
        {
          v16 = 0.0;
        }

        if (v8 >= v16 || v8 <= 0.0)
        {
          v18 = v16;
        }

        else
        {
          v18 = v8;
        }

        if (v16 > 0.0)
        {
          v8 = v18;
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D58;
  block[3] = &unk_1000106C0;
  v19 = *(a1 + 32);
  block[4] = v3;
  block[5] = v19;
  *&block[6] = v8;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100003D58(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 32);
        v5 = 138412290;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of scheduled messages check: %@", &v5, 0xCu);
      }
    }

    v4 = *(v1 + 32);
    return (*(*(v1 + 40) + 16))(*(v1 + 48));
  }

  return result;
}

uint64_t sub_100004080(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = 138412290;
        v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of watchdog check: %@", &v3, 0xCu);
      }
    }

    return (*(*(v1 + 32) + 16))(0.0);
  }

  return result;
}

uint64_t sub_100004164(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 32);
        v5 = 138412290;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of watchdog check: %@", &v5, 0xCu);
      }
    }

    v4 = *(v1 + 32);
    return (*(*(v1 + 40) + 16))(*(v1 + 48));
  }

  return result;
}

uint64_t sub_100004508(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 32);
        v5 = 138412290;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Results of watchdog check: %@", &v5, 0xCu);
      }
    }

    v4 = *(v1 + 32);
    return (*(*(v1 + 40) + 16))(*(v1 + 48));
  }

  return result;
}

uint64_t sub_1000045F0(uint64_t result, uint64_t *a2, _BYTE *a3, double *a4, void *a5, void *a6)
{
  if (!result)
  {
    return result;
  }

  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  IMDMessageRecordBulkCopy();
  v11 = [v29 unsignedLongLongValue];
  v12 = [v29 unsignedLongLongValue];
  v13 = v28;
  if ((v12 & 0x1000000) == 0)
  {
    v14 = 0.0;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"YES";
        if ((v11 & 4) == 0)
        {
          v16 = @"NO";
        }

        *buf = 134219522;
        v35 = v33;
        v36 = 2112;
        v37 = v32;
        v38 = 2112;
        v39 = @"NO";
        v40 = 2112;
        v41 = v16;
        v42 = 2048;
        v43 = v28;
        v44 = 2048;
        v45 = v31;
        v46 = 2048;
        v47 = v30;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Ignoring non-expirable message with rowID: %lld, guid: %@, is_expirable: %@, from_me: %@, expire_state: %lld, date: %lld, date_played: %lld", buf, 0x48u);
      }
    }

    v17 = 0;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v28 <= 2)
  {
    if (v31)
    {
      [NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v31];
    }

    if (v30)
    {
      [NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v30];
    }

    IMMessageItemExpireStateExpiredDuration();
    v22 = v21;
    IMMessageItemExpireStateExpiringDuration();
    v24 = v23;
    IMMessageItemTimeIntervalSinceStartedExpiringForTimes();
    v26 = v24 - v25;
    v27 = 2;
    if (v25 <= v24)
    {
      v27 = v13;
    }

    else
    {
      v26 = v22 - v25;
    }

    v17 = v25 > v22;
    if (v25 <= v22)
    {
      v13 = v27;
    }

    else
    {
      v26 = 0.0;
      v13 = 2;
    }

    v14 = fmax(v26, 0.0);
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v17 = 0;
  v14 = 0.0;
  if (a2)
  {
LABEL_14:
    *a2 = v13;
  }

LABEL_15:
  if (a3)
  {
    *a3 = v17;
  }

  if (a4)
  {
    *a4 = v14;
  }

  if (a5)
  {
    *a5 = v33;
  }

  v18 = v32;
  if (a6)
  {
    *a6 = v32;
  }

  v19 = v18;
  v20 = v29;
  return v28 != v13 || v17;
}

uint64_t sub_100004904()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = IMGetDomainIntForKey();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000049D8;
  block[3] = &unk_100010710;
  block[4] = &v3;
  if (qword_100014CB0 != -1)
  {
    dispatch_once(&qword_100014CB0, block);
  }

  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_1000049D8(uint64_t a1)
{
  result = IMDMessageRecordGetMessagesSequenceNumber();
  if (result >= 1)
  {
    v3 = *(*(a1 + 32) + 8);
    if (*(v3 + 24) > result)
    {
      *(v3 + 24) = 0;
      v4 = *(*(*(a1 + 32) + 8) + 24);

      return IMSetDomainIntForKey();
    }
  }

  return result;
}

id sub_100004F60(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isSticker];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100005770(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100005740);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100005794(IMDRoutingAgent *self, SEL a2, id a3)
{
  v4 = [a3 chatProperties];
  if (![v4 objectForKey:kFZChatPropertyLastDowngradedMessageTime])
  {
    return 0;
  }

  v5 = [v4 objectForKey:kFZChatPropertyManuallyDowngradedMessageCount];
  v6 = [v4 objectForKey:kFZChatPropertyAutoDowngradedMessageCount];
  if ([v5 integerValue] <= 0 && objc_msgSend(v6, "integerValue") < 1)
  {
    return 0;
  }

  if (!IMOSLoggingEnabled())
  {
    return 1;
  }

  v7 = OSLogHandleForIMFoundationCategory();
  v8 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412802;
    v11 = [a3 GUID];
    v12 = 1024;
    v13 = [v5 integerValue];
    v14 = 1024;
    v15 = [v6 integerValue];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Message with GUID {%@} has %d manual and %d auto downgrade markers. Shortening downgrade interval.", &v10, 0x18u);
  }

  return v8;
}

double sub_100005924(IMDRoutingAgent *self, SEL a2, id a3)
{
  v5 = IMGetCachedDomainValueForKey();
  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 134218242;
        v15 = v7;
        v16 = 2112;
        v17 = [a3 GUID];
        v9 = "Using defaults-overridden downgrade interval (%f) for message with GUID {%@}";
LABEL_5:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v14, 0x16u);
      }
    }
  }

  else
  {
    v11 = [a3 service];
    if ([v11 isEqualToString:IMServiceNameiMessage])
    {
      if ([(IMDRoutingAgent *)self _messageHasDowngradeMarkers:a3])
      {
        v7 = [(IMDRoutingAgent *)self _bagValueForKey:@"md-auto-resend-as-sms-timeout-shortened" defaultValue:25 minimumValue:20];
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v14 = 134218242;
            v15 = v7;
            v16 = 2112;
            v17 = [a3 GUID];
            v9 = "Using short downgrade interval (%f) for message with GUID {%@}";
            goto LABEL_5;
          }
        }
      }

      else
      {
        v7 = [(IMDRoutingAgent *)self _bagValueForKey:@"md-auto-resend-as-sms-timeout-lower" defaultValue:300 minimumValue:20];
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v14 = 134218242;
            v15 = v7;
            v16 = 2112;
            v17 = [a3 GUID];
            v9 = "Using long downgrade interval (%f) for message with GUID {%@}";
            goto LABEL_5;
          }
        }
      }
    }

    else
    {
      v12 = [a3 service];
      if ([v12 isEqualToString:IMServiceNameRCS])
      {
        [objc_msgSend(+[IMCTRCSUtilitiesManager sharedManager](IMCTRCSUtilitiesManager "sharedManager")];
        v7 = v13;
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v14 = 134218242;
            v15 = v7;
            v16 = 2112;
            v17 = [a3 GUID];
            v9 = "Using RCS downgrade interval (%f) for message with GUID {%@}";
            goto LABEL_5;
          }
        }
      }

      else
      {
        v7 = 300.0;
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v14 = 138412546;
            v15 = COERCE_DOUBLE([a3 service]);
            v16 = 2112;
            v17 = [a3 GUID];
            v9 = "Can't find downgrade interval for unknown service %@ for message with GUID {%@}";
            goto LABEL_5;
          }
        }
      }
    }
  }

  return v7;
}

void sub_100005C5C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1000059E4);
  }

  _Unwind_Resume(a1);
}

void sub_100005E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100005E18(uint64_t a1)
{
  result = IMDMessageRecordGetMessagesSequenceNumber();
  if (result >= 1)
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v3 + 24) > result)
    {
      *(v3 + 24) = 0;
      v4 = *(a1 + 32);
      v5 = *(*(*(a1 + 40) + 8) + 24);

      return [v4 _updateUndeliveredMessageWaterMark:v5];
    }
  }

  return result;
}

uint64_t sub_100006434(uint64_t a1, _BYTE *a2, double *a3, void *a4, void *a5)
{
  if (!a1)
  {
    return 0;
  }

  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  IMDMessageRecordBulkCopy();
  v9 = [v32 unsignedLongLongValue];
  v10 = [v32 unsignedLongLongValue];
  if (v33)
  {
    v11 = v10;
    v12 = [NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v33];
    if (v31 == 2)
    {
      if (v30)
      {
        v13 = [NSDictionary dictionaryWithMessageSummaryInfoData:?];
        v14 = [(NSDictionary *)v13 objectForKey:IMMessageSummaryInfoScheduledMessageLastModifiedTime];
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v12 = v14;
      }
    }

    v16 = v34;
    if ([v34 isEqualToString:IMServiceNameiMessageLite])
    {
      v17 = 3600.0;
    }

    else
    {
      v18 = [v16 isEqualToString:IMServiceNameSatelliteSMS];
      v17 = 600.0;
      if (v18)
      {
        v17 = 3600.0;
      }
    }

    sub_100006A78(v16, v17);
    v19 = IMGetCachedDomainIntForKeyWithDefaultValue();
    if ((v11 & 0x200000000) != 0)
    {
      v20 = sub_100006A78(@"Stewie", 3600.0);
    }

    else
    {
      v20 = v19;
    }

    [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
    v22 = v21;
    [v12 timeIntervalSinceReferenceDate];
    v24 = v22 - v23;
    if (v24 <= v20)
    {
      v15 = 0;
      v25 = v20 - v24;
      if (!a2)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if ((v9 & 0x8000) == 0)
    {
      v15 = 1;
      goto LABEL_26;
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v35;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Watchdog wants to fail message with guid %@ but message is sent", buf, 0xCu);
      }
    }
  }

  v15 = 0;
LABEL_26:
  v25 = 0.0;
  if (a2)
  {
LABEL_27:
    *a2 = v15;
  }

LABEL_28:
  if (a3)
  {
    *a3 = fmax(v25, 0.0);
  }

  if (a4)
  {
    *a4 = v36;
  }

  v27 = v35;
  if (a5)
  {
    *a5 = v35;
  }

  v28 = v27;

  return v15;
}

uint64_t sub_1000067A4(int a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Updating watchdog message watermark to %d", v4, 8u);
    }
  }

  return IMSetDomainIntForKey();
}

uint64_t sub_100006880()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = IMGetDomainIntForKey();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006954;
  block[3] = &unk_100010710;
  block[4] = &v3;
  if (qword_100014CC0 != -1)
  {
    dispatch_once(&qword_100014CC0, block);
  }

  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_100006954(uint64_t a1)
{
  result = IMDMessageRecordGetMessagesSequenceNumber();
  if (result >= 1)
  {
    v3 = result;
    if (*(*(*(a1 + 32) + 8) + 24) > result)
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = *(*(*(a1 + 32) + 8) + 24);
          v6[0] = 67109376;
          v6[1] = v5;
          v7 = 1024;
          v8 = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Watchdog watermark (%d) was greater than sequence number (%d) - resetting", v6, 0xEu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      return sub_1000067A4(*(*(*(a1 + 32) + 8) + 24));
    }
  }

  return result;
}

double sub_100006A78(uint64_t a1, double a2)
{
  v4 = [+[FTServerBag sharedInstanceForBagType:](FTServerBag sharedInstanceForBagType:{1), "objectForKey:", @"md-watchdog-duration"}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  v5 = [v4 objectForKeyedSubscript:a1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  [v5 doubleValue];
  if (v6 == 0.0)
  {
    return a2;
  }

  [v5 doubleValue];
  return result;
}

void sub_100007524(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1000074E0);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(exc_buf);
}

void sub_1000075C8(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x100007110);
  }

  JUMPOUT(0x10000759CLL);
}

BOOL sub_1000075E4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (([*(a1 + 32) _attachmentCanBeSentViaMMS:?] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = [a3 GUID];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attachment (%@) cannot be sent via MMS", &v11, 0xCu);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = [a3 UTIType];
  result = sub_100001FEC(v8);
  if (result)
  {
    v10 = 48;
  }

  else
  {
    result = sub_100001F68(v8);
    if (result)
    {
      v10 = 56;
    }

    else
    {
      result = sub_100001F94(v8);
      if (!result)
      {
        goto LABEL_13;
      }

      v10 = 64;
    }
  }

  ++*(*(*(a1 + v10) + 8) + 24);
LABEL_13:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1000077B4(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got candidate messages: %@", buf, 0xCu);
    }
  }

  v41 = objc_alloc_init(NSMutableArray);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (!v5)
  {
    v9 = 0.0;
    v7 = 0x7FFFFFFFLL;
    if (a2)
    {
      goto LABEL_53;
    }

LABEL_58:
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Updating watermark because we received no candidate messages", buf, 2u);
      }
    }

    v7 = IMDMessageRecordCountMessages();
    goto LABEL_62;
  }

  v42 = 0;
  v7 = 0x7FFFFFFFLL;
  v8 = *v44;
  v9 = 0.0;
  *&v6 = 138412546;
  v40 = v6;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v44 != v8)
      {
        objc_enumerationMutation(a2);
      }

      v11 = *(*(&v43 + 1) + 8 * i);
      if (([objc_msgSend(objc_msgSend(v11 participants] & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v11 GUID];
            *buf = 138412290;
            v48 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Message (%@) is not to a phone number, not downgrading", buf, 0xCu);
          }
        }

        [v11 senderLogin];
        goto LABEL_19;
      }

      v12 = [v11 senderLogin];
      if ([v12 length] && (objc_msgSend(v12, "hasPrefix:", @"p:") & 1) == 0 && (objc_msgSend(v12, "hasPrefix:", @"P:") & 1) == 0)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_19;
        }

        v35 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v36 = [v11 GUID];
        *buf = v40;
        v48 = v36;
        v49 = 2112;
        v50 = *&v12;
        v30 = v35;
        v31 = "Message (%@) is not from a phone number (sender:'%@'), not downgrading to SMS";
        v32 = 22;
        goto LABEL_46;
      }

      if ([*(a1 + 32) canSendMessage:v11])
      {
        v13 = 1;
        goto LABEL_20;
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v11 GUID];
          *buf = 138412290;
          v48 = v29;
          v30 = v28;
          v31 = "Message (%@) cannot be sent via SMS/MMS, not downgrading";
          v32 = 12;
LABEL_46:
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v31, buf, v32);
        }
      }

LABEL_19:
      v13 = 0;
LABEL_20:
      [*(a1 + 32) _upperDowngradeIntervalForMessage:v11];
      v17 = v16;
      [v11 timeSinceSent];
      v19 = v18;
      if (v17 > 0.0 && v18 < v17)
      {
        if (v13)
        {
          [*(a1 + 32) _lowerDowngradeIntervalForMessage:v11];
          v24 = v23;
          v25 = v23 - v19;
          if (v23 - v19 <= 0.0)
          {
            if (IMOSLoggingEnabled())
            {
              v33 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = [v11 GUID];
                *buf = 138412802;
                v48 = v34;
                v49 = 2048;
                v50 = v24;
                v51 = 2048;
                v52 = v19;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Message with GUID: (%@) is ready to be sent immediately (downgradeInterval:%7.3f  timeSinceSent:%7.3f)", buf, 0x20u);
              }
            }

            [v41 addObject:v11];
          }

          else
          {
            if ((v42 & (v9 < v25)) == 0)
            {
              v9 = v23 - v19;
            }

            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              v42 = 1;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v11 GUID];
                *buf = v40;
                v48 = v27;
                v49 = 2048;
                v50 = v25;
                v42 = 1;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Scheduling message with GUID: (%@) to fire in %7.3f seconds", buf, 0x16u);
              }
            }

            else
            {
              v42 = 1;
            }
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v11 GUID];
            *buf = 138412802;
            v48 = v22;
            v49 = 2048;
            v50 = v19;
            v51 = 2048;
            v52 = v17;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Message (%@) was sent %f seconds ago, skipping since it's over %f seconds old", buf, 0x20u);
          }
        }

        if ([v11 rowID] <= v7)
        {
          v7 = [v11 rowID];
        }
      }
    }

    v5 = [a2 countByEnumeratingWithState:&v43 objects:v53 count:16];
  }

  while (v5);
  if (!a2)
  {
    goto LABEL_58;
  }

LABEL_53:
  if (![a2 count])
  {
    goto LABEL_58;
  }

  if (v7 != 0x7FFFFFFF)
  {
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Updating watermark to lowestIgnoredMessageDueToAge", buf, 2u);
      }
    }

LABEL_62:
    [*(a1 + 32) _updateUndeliveredMessageWaterMark:v7];
  }

  v39 = *(a1 + 40);
  if (v39)
  {
    (*(v39 + 16))(v39, v41, v9);
  }
}