@interface ThreadNetworkfinder
- (id)getAgentDescriptionForIndex:(unint64_t)index;
- (id)getBorderAgentForIndex:(unint64_t)index;
- (int64_t)findNWs;
- (void)agentChanged;
- (void)agentResolved:(id)resolved;
- (void)clear;
- (void)printServer:(id)server;
- (void)startScan:(id)scan queue:(id)queue timeInSec:(unsigned __int8)sec;
- (void)stopScan;
@end

@implementation ThreadNetworkfinder

- (void)startScan:(id)scan queue:(id)queue timeInSec:(unsigned __int8)sec
{
  secCopy = sec;
  scanCopy = scan;
  queueCopy = queue;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__ThreadNetworkfinder_startScan_queue_timeInSec___block_invoke;
  block[3] = &unk_1004C87F0;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Starting dispatch After", v12, 2u);
  }

  v11 = dispatch_time(0, 1000000000 * secCopy);
  dispatch_after(v11, queueCopy, scanCopy);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __49__ThreadNetworkfinder_startScan_queue_timeInSec___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_opt_new();
  v3 = WeakRetained[1];
  WeakRetained[1] = v2;

  v4 = WeakRetained[1];
  if (v4)
  {
    [v4 setDelegate:*(a1 + 32)];
    [WeakRetained[1] start];
  }
}

- (void)stopScan
{
  borderAgentFinder = self->_borderAgentFinder;
  if (borderAgentFinder)
  {
    [(THBorderAgentFinder *)borderAgentFinder stop];
  }
}

- (void)clear
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __28__ThreadNetworkfinder_clear__block_invoke;
  v2[3] = &unk_1004C8818;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __28__ThreadNetworkfinder_clear__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[1];
  if (v2)
  {
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (int64_t)findNWs
{
  result = self->_borderAgentFinder;
  if (result)
  {
    return [result getNumberOfBorderAgents];
  }

  return result;
}

- (id)getBorderAgentForIndex:(unint64_t)index
{
  borderAgentFinder = self->_borderAgentFinder;
  if (borderAgentFinder)
  {
    borderAgentFinder = [borderAgentFinder getBorderAgentAtIndex:index];
    v3 = vars8;
  }

  return borderAgentFinder;
}

- (id)getAgentDescriptionForIndex:(unint64_t)index
{
  borderAgentFinder = self->_borderAgentFinder;
  if (borderAgentFinder)
  {
    borderAgentFinder = [borderAgentFinder getAgentDescription:index];
    v3 = vars8;
  }

  return borderAgentFinder;
}

- (void)agentChanged
{
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Agent Changed", v3, 2u);
  }
}

- (void)printServer:(id)server
{
  serverCopy = server;
  addresses = [serverCopy addresses];

  if (addresses)
  {
    tXTRecordData = [serverCopy TXTRecordData];
    v6 = [NSNetService dictionaryFromTXTRecordData:tXTRecordData];

    if (!v6)
    {
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkfinder printServer:];
      }

      goto LABEL_41;
    }

    v7 = [v6 objectForKey:@"nn"];
    v8 = [v6 objectForKey:@"xp"];
    v9 = [v6 objectForKey:@"xa"];
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v20 = 136315650;
      v21 = "[ThreadNetworkfinder printServer:]";
      v22 = 1024;
      v23 = 104;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%d BorderAgent MDNS Text Record Data : %@", &v20, 0x1Cu);
    }

    if (!v7 || !v8 || !v9)
    {
      v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkfinder printServer:];
      }

      goto LABEL_40;
    }

    if (-[NSObject length](v8, "length") == 16 && [v9 length] == 16)
    {
      v11 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v8 length];
        v20 = 136315650;
        v21 = "[ThreadNetworkfinder printServer:]";
        v22 = 1024;
        v23 = 112;
        v24 = 2048;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of OLD format (string based) with length : %lu", &v20, 0x1Cu);
      }

      v13 = 0;
    }

    else
    {
      if (-[NSObject length](v8, "length") != 8 || [v9 length] != 8)
      {
        v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          -[ThreadNetworkfinder printServer:].cold.2(&v20, -[NSObject length](v8, "length"), [v9 length], v14);
        }

        goto LABEL_40;
      }

      v11 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      v13 = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = [v8 length];
        v20 = 136315650;
        v21 = "[ThreadNetworkfinder printServer:]";
        v22 = 1024;
        v23 = 116;
        v24 = 2048;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of NEW format (binary based) with length : %lu", &v20, 0x1Cu);
      }
    }

    v14 = [[NSString alloc] initWithData:v7 encoding:4];
    if (v14)
    {
      if (v13)
      {
        v16 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v20 = 136316162;
          v21 = "[ThreadNetworkfinder printServer:]";
          v22 = 1024;
          v23 = 144;
          v24 = 2112;
          v25 = v14;
          v26 = 2112;
          v27 = v8;
          v28 = 2112;
          v29 = v9;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d: mdns (network name:%@, xpanid:%@, baid : %@)", &v20, 0x30u);
        }
      }

      else
      {
        v16 = [[NSString alloc] initWithData:v8 encoding:4];
        v17 = [[NSString alloc] initWithData:v9 encoding:4];
        v18 = v17;
        if (v16 && v17)
        {
          v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = 136316162;
            v21 = "[ThreadNetworkfinder printServer:]";
            v22 = 1024;
            v23 = 140;
            v24 = 2112;
            v25 = v14;
            v26 = 2112;
            v27 = v16;
            v28 = 2112;
            v29 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s:%d: network name str : %@, xpan id str : %@, baid str : %@", &v20, 0x30u);
          }
        }

        else
        {
          v19 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [ThreadNetworkfinder printServer:];
          }
        }
      }
    }

    else
    {
      v16 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ThreadNetworkfinder printServer:];
      }
    }

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  v6 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ThreadNetworkfinder printServer:];
  }

LABEL_42:
}

- (void)agentResolved:(id)resolved
{
  resolvedCopy = resolved;
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = resolvedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Agent Resolved ! Server : %@", &v7, 0xCu);
  }

  if (resolvedCopy)
  {
    [(ThreadNetworkfinder *)self printServer:resolvedCopy];
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "commissioning");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkfinder agentResolved:];
    }
  }
}

- (void)printServer:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)printServer:(uint64_t)a3 .cold.2(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "[ThreadNetworkfinder printServer:]";
  *(buf + 6) = 1024;
  *(buf + 14) = 120;
  *(buf + 9) = 2048;
  *(buf + 20) = a2;
  *(buf + 14) = 2048;
  *(buf + 30) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s:%d Continuing... BorderAgent ID and XpanID length mismatch !!! xpan id length : %lu, border agent id length : %lu", buf, 0x26u);
}

- (void)printServer:.cold.3()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)printServer:.cold.4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)printServer:.cold.5()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end