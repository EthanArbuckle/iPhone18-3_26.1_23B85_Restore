@interface ThreadBRFinder
- (BOOL)disPatchStartScanToMatchListOfPreferredNetworkEntries:(id)entries;
- (BOOL)dispatchStartScan:(id)scan extendedPanIdToFind:(id)find borderAgentIdToFind:(id)toFind;
- (BOOL)matchTheListWithServer:(id)server;
- (BOOL)matchTheRecord:(id)record;
- (id)dataFromHexString:(id)string;
- (id)getAgentDescriptionForIndex:(unint64_t)index;
- (id)getBorderAgentForIndex:(unint64_t)index;
- (int64_t)findNWs;
- (void)agentResolved:(id)resolved;
- (void)clear;
- (void)startScan:(id)scan queue:(id)queue timeInSec:(unsigned __int8)sec;
- (void)stopScan;
@end

@implementation ThreadBRFinder

- (BOOL)disPatchStartScanToMatchListOfPreferredNetworkEntries:(id)entries
{
  entriesCopy = entries;
  v6 = dispatch_semaphore_create(0);
  baFinderSemaphore = self->_baFinderSemaphore;
  self->_baFinderSemaphore = v6;

  v8 = self->_baFinderSemaphore;
  if (v8)
  {
    objc_storeStrong(&self->_preferredList, entries);
    preferredRecord = self->_preferredRecord;
    self->_preferredRecord = 0;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000478AC;
    block[3] = &unk_1000792C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    NSLog(@"%s:%d: Failed to create semaphore, unexpected scenario", "[ThreadBRFinder disPatchStartScanToMatchListOfPreferredNetworkEntries:]", 21);
  }

  return v8 != 0;
}

- (BOOL)dispatchStartScan:(id)scan extendedPanIdToFind:(id)find borderAgentIdToFind:(id)toFind
{
  scanCopy = scan;
  findCopy = find;
  toFindCopy = toFind;
  v12 = dispatch_semaphore_create(0);
  baFinderSemaphore = self->_baFinderSemaphore;
  self->_baFinderSemaphore = v12;

  v14 = self->_baFinderSemaphore;
  if (v14)
  {
    preferredList = self->_preferredList;
    self->_preferredList = 0;

    preferredRecord = self->_preferredRecord;
    self->_preferredRecord = 0;

    objc_storeStrong(&self->_extendedPANIDToFind, find);
    objc_storeStrong(&self->_networkNameToFind, scan);
    objc_storeStrong(&self->_borderAgentIdToFind, toFind);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100047A7C;
    block[3] = &unk_1000792C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    NSLog(@"%s:%d: Failed to create semaphore, unexpected scenario", "[ThreadBRFinder dispatchStartScan:extendedPanIdToFind:borderAgentIdToFind:]", 46);
  }

  return v14 != 0;
}

- (void)startScan:(id)scan queue:(id)queue timeInSec:(unsigned __int8)sec
{
  secCopy = sec;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047BD0;
  block[3] = &unk_1000792C0;
  block[4] = self;
  queueCopy = queue;
  scanCopy = scan;
  dispatch_async(&_dispatch_main_q, block);
  NSLog(@"Starting dispatch After");
  v9 = dispatch_time(0, 1000000000 * secCopy);
  dispatch_after(v9, queueCopy, scanCopy);
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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047CD8;
  block[3] = &unk_1000792C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
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

- (BOOL)matchTheListWithServer:(id)server
{
  serverCopy = server;
  v5 = serverCopy;
  if (!serverCopy)
  {
    NSLog(@"Error:Empty Server");
LABEL_16:
    v17 = 0;
    goto LABEL_81;
  }

  addresses = [serverCopy addresses];

  if (!addresses)
  {
    v18 = sub_10001B194(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000497B4();
    }

    goto LABEL_16;
  }

  tXTRecordData = [v5 TXTRecordData];
  v8 = [NSNetService dictionaryFromTXTRecordData:tXTRecordData];

  if (!v8)
  {
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100049738();
    }

    v19 = 0;
    v16 = 0;
    v20 = 0;
    v17 = 0;
    goto LABEL_80;
  }

  v9 = [v8 objectForKey:@"nn"];
  v10 = [v8 objectForKey:@"xp"];
  v11 = [v8 objectForKey:@"sb"];
  v12 = v11;
  if (!v9 || !v10 || !v11)
  {
    v21 = sub_10001B194(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100049388();
    }

    v64 = 0;
    v65 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_79;
  }

  v70 = 0;
  v60 = v11;
  [v11 getBytes:&v70 length:4];
  v13 = bswap32(v70);
  v70 = v13;
  v14 = sub_10001B194(1);
  v15 = v14;
  if ((v13 & 0x10) == 0)
  {
    p_super = v14;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000496A8(&v70);
    }

    v64 = 0;
    v65 = 0;
    v16 = 0;
    v17 = 0;
LABEL_11:
    v12 = v60;
    goto LABEL_78;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v72 = "[ThreadBRFinder matchTheListWithServer:]";
    v73 = 1024;
    v74 = 234;
    v75 = 1024;
    LODWORD(v76) = v70;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %d: state bit map indicates thread n/w is UP :0x%x", buf, 0x18u);
  }

  v12 = v60;
  v65 = [[NSString alloc] initWithData:v9 encoding:4];
  if (!v65)
  {
    p_super = sub_10001B194(1);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_10004962C();
    }

    v64 = 0;
    v65 = 0;
    goto LABEL_73;
  }

  v61 = [v10 length];
  if (v61 == 16)
  {
    v57 = v8;
    v58 = v5;
    v22 = sub_10001B194(1);
    v63 = v10;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v10 length];
      *buf = 136315650;
      v72 = "[ThreadBRFinder matchTheListWithServer:]";
      v73 = 1024;
      v74 = 247;
      v75 = 2048;
      v76 = v23;
      v24 = "%s:%d XpanID is of OLD format (string based) with length : %lu";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v24, buf, 0x1Cu);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v25 = [v10 length];
  v26 = sub_10001B194(1);
  v22 = v26;
  if (v25 != 8)
  {
    p_super = v26;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100049404(v10);
    }

    v64 = 0;
LABEL_73:
    v16 = 0;
    v17 = 0;
    goto LABEL_78;
  }

  v57 = v8;
  v58 = v5;
  v63 = v10;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v10 length];
    *buf = 136315650;
    v72 = "[ThreadBRFinder matchTheListWithServer:]";
    v73 = 1024;
    v74 = 251;
    v75 = 2048;
    v76 = v27;
    v24 = "%s:%d XpanID is of NEW format (binary based) with length : %lu";
    goto LABEL_35;
  }

LABEL_36:
  v28 = v65;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v29 = self->_preferredList;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v66 objects:v79 count:16];
  p_super = &v29->super;
  if (!v30)
  {
    v64 = 0;
    v16 = 0;
    v17 = 0;
    v8 = v57;
    v5 = v58;
    v10 = v63;
    goto LABEL_78;
  }

  v31 = v30;
  selfCopy = self;
  v56 = v9;
  v64 = 0;
  v16 = 0;
  v32 = *v67;
LABEL_38:
  v33 = 0;
  while (1)
  {
    if (*v67 != v32)
    {
      objc_enumerationMutation(v29);
    }

    v34 = *(*(&v66 + 1) + 8 * v33);
    if (!v34)
    {
      goto LABEL_56;
    }

    network = [*(*(&v66 + 1) + 8 * v33) network];
    networkName = [network networkName];
    v37 = [networkName isEqualToString:v28];

    v38 = sub_10001B194(1);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (!v37)
    {
      if (v39)
      {
        network2 = [v34 network];
        networkName2 = [network2 networkName];
        *buf = 136315906;
        v72 = "[ThreadBRFinder matchTheListWithServer:]";
        v73 = 1024;
        v74 = 300;
        v75 = 2112;
        v76 = networkName2;
        v77 = 2112;
        v78 = v65;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s : %d: Preferred Network to find :%@ does not match with mdns record :%@", buf, 0x26u);

        v28 = v65;
        v29 = p_super;
      }

      v40 = v16;
      goto LABEL_53;
    }

    if (v39)
    {
      network3 = [v34 network];
      networkName3 = [network3 networkName];
      *buf = 136315906;
      v72 = "[ThreadBRFinder matchTheListWithServer:]";
      v73 = 1024;
      v74 = 267;
      v75 = 2112;
      v76 = networkName3;
      v77 = 2112;
      v78 = v28;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s : %d: Network name to find :%@ does match with mdns record name :%@", buf, 0x26u);
    }

    if (v61 != 16)
    {
      network4 = [v34 network];
      extendedPANID = [network4 extendedPANID];
      v48 = [extendedPANID isEqualToData:v63];

      if (v48)
      {
        v54 = sub_10001B194(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v10 = v63;
          sub_1000494A4(v34);
          v42 = v64;
        }

        else
        {
          v10 = v63;
          v42 = v64;
        }

        v40 = v16;
        v8 = v57;
        v5 = v58;
        v9 = v56;
        v41 = selfCopy;
        v12 = v60;
        goto LABEL_77;
      }

      goto LABEL_55;
    }

    v40 = [[NSString alloc] initWithData:v63 encoding:4];

    if (!v40)
    {
      v38 = sub_10001B194(1);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v72 = "[ThreadBRFinder matchTheListWithServer:]";
        v73 = 1024;
        v74 = 274;
        v75 = 2112;
        v76 = v58;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s : %d xpanid nsstring conversion failure, server : %@", buf, 0x1Cu);
      }

      v40 = 0;
      goto LABEL_53;
    }

    v41 = selfCopy;
    v42 = [(ThreadBRFinder *)selfCopy dataFromHexString:v40];

    if (v42)
    {
      break;
    }

    v38 = sub_10001B194(1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v72 = "[ThreadBRFinder matchTheListWithServer:]";
      v73 = 1024;
      v74 = 280;
      v75 = 2112;
      v76 = v58;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s : %d hex string conversion to nsdata failure for server : %@", buf, 0x1Cu);
    }

    v64 = 0;
LABEL_53:

    v16 = v40;
LABEL_56:
    if (v31 == ++v33)
    {
      v53 = [(NSArray *)v29 countByEnumeratingWithState:&v66 objects:v79 count:16];
      v31 = v53;
      if (!v53)
      {
        v17 = 0;
        v8 = v57;
        v5 = v58;
        v9 = v56;
        v10 = v63;
        goto LABEL_11;
      }

      goto LABEL_38;
    }
  }

  network5 = [v34 network];
  extendedPANID2 = [network5 extendedPANID];
  v45 = [extendedPANID2 isEqualToData:v42];

  if (!v45)
  {
    v64 = v42;
    v16 = v40;
LABEL_55:
    v29 = p_super;
    v28 = v65;
    goto LABEL_56;
  }

  v54 = sub_10001B194(1);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    sub_100049568(v34);
  }

  v8 = v57;
  v5 = v58;
  v9 = v56;
  v10 = v63;
  v12 = v60;
LABEL_77:

  objc_storeStrong(&v41->_preferredRecord, v34);
  v17 = 1;
  v64 = v42;
  v16 = v40;
LABEL_78:

LABEL_79:
  v19 = v64;
  v20 = v65;
LABEL_80:

LABEL_81:
  return v17;
}

- (BOOL)matchTheRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (recordCopy)
  {
    addresses = [recordCopy addresses];

    if (addresses)
    {
      tXTRecordData = [v5 TXTRecordData];
      v8 = [NSNetService dictionaryFromTXTRecordData:tXTRecordData];

      if (!v8)
      {
        v9 = sub_10001B194(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100049ED4();
        }

        LOBYTE(v15) = 0;
        goto LABEL_26;
      }

      v9 = [v8 objectForKey:@"nn"];
      v10 = [v8 objectForKey:@"xp"];
      v11 = [v8 objectForKey:@"xa"];
      v12 = [v8 objectForKey:@"sb"];
      v13 = sub_10001B194(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v54 = "[ThreadBRFinder matchTheRecord:]";
        v55 = 1024;
        v56 = 339;
        v57 = 2112;
        v58 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d BorderAgent MDNS Text Record Data : %@", buf, 0x1Cu);
      }

      preferredList = self->_preferredList;
      if (preferredList && [(NSArray *)preferredList count])
      {
        LOBYTE(v15) = [(ThreadBRFinder *)self matchTheListWithServer:v5];
LABEL_22:

LABEL_26:
        goto LABEL_27;
      }

      p_networkNameToFind = &self->_networkNameToFind;
      if ((!self->_networkNameToFind || v9) && ((p_extendedPANIDToFind = &self->_extendedPANIDToFind, !self->_extendedPANIDToFind) || v10) && (!v11 ? (v21 = self->_borderAgentIdToFind == 0) : (v21 = 1), v21 && v12))
      {
        p_borderAgentIdToFind = &self->_borderAgentIdToFind;
        v50 = [v10 length];
        if (v50 == 16)
        {
          v22 = sub_10001B194(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [v10 length];
            *buf = 136315650;
            v54 = "[ThreadBRFinder matchTheRecord:]";
            v55 = 1024;
            v56 = 355;
            v57 = 2048;
            v58 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of OLD format (string based) with length : %lu", buf, 0x1Cu);
          }
        }

        else
        {
          v46 = v12;
          v24 = [v10 length];
          v25 = sub_10001B194(1);
          v22 = v25;
          if (v24 != 8)
          {
            v12 = v46;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1000498AC(v10, v11);
            }

            goto LABEL_93;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [v10 length];
            *buf = 136315650;
            v54 = "[ThreadBRFinder matchTheRecord:]";
            v55 = 1024;
            v56 = 359;
            v57 = 2048;
            v58 = v26;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s:%d BorderAgent ID and XpanID are of NEW format (binary based) with length : %lu", buf, 0x1Cu);
          }

          v12 = v46;
        }

        if (!*p_networkNameToFind)
        {
          v22 = 0;
          goto LABEL_47;
        }

        v27 = [[NSString alloc] initWithData:v9 encoding:4];
        if (v27)
        {
          v22 = v27;
          if (([*p_networkNameToFind isEqualToString:v27] & 1) == 0)
          {
            v28 = sub_10001B194(1);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_10004996C(p_networkNameToFind);
            }

            goto LABEL_92;
          }

LABEL_47:
          v29 = *p_extendedPANIDToFind;
          if (v50 == 16)
          {
            if (!v29)
            {
              v51 = 0;
              v31 = 0;
LABEL_64:
              if (*p_borderAgentIdToFind)
              {
                v35 = [[NSString alloc] initWithData:v11 encoding:4];
                if (!v35)
                {
                  v28 = v31;
                  v33 = sub_10001B194(1);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    sub_100049DC8();
                  }

                  goto LABEL_88;
                }

                v36 = v35;
                v37 = [(ThreadBRFinder *)self dataFromHexString:v35];
                if (!v37)
                {
                  v28 = v31;
                  v43 = sub_10001B194(1);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    sub_100049D4C();
                  }

                  goto LABEL_92;
                }

                v34 = v37;
                v47 = v31;
                if (([*p_borderAgentIdToFind isEqualToData:v37] & 1) == 0)
                {
                  v44 = sub_10001B194(1);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    sub_100049CD0(p_borderAgentIdToFind);
                  }

                  goto LABEL_93;
                }

                v45 = v36;
                v49 = v22;
              }

              else
              {
                v47 = v31;
                v49 = v22;
                v34 = 0;
                v45 = 0;
              }

LABEL_77:
              v52 = 0;
              [v12 getBytes:&v52 length:4];
              v39 = bswap32(v52);
              v52 = v39;
              v15 = (v39 >> 4) & 1;
              v40 = sub_10001B194(1);
              v41 = v40;
              if ((v39 & 0x10) != 0)
              {
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v54 = "[ThreadBRFinder matchTheRecord:]";
                  v55 = 1024;
                  v56 = 444;
                  v57 = 1024;
                  LODWORD(v58) = v52;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s : %d: state bit map indicates thread n/w is UP :0x%x", buf, 0x18u);
                }
              }

              else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_100049E44(&v52);
              }

              goto LABEL_22;
            }

            v30 = [[NSString alloc] initWithData:v10 encoding:4];
            if (v30)
            {
              v31 = v30;
              v32 = [(ThreadBRFinder *)self dataFromHexString:v30];
              if (!v32)
              {
                v28 = v31;
                v42 = sub_10001B194(1);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  sub_100049BD8();
                }

                goto LABEL_92;
              }

              v51 = v32;
              if (([*p_extendedPANIDToFind isEqualToData:?] & 1) == 0)
              {
                v28 = v31;
                v33 = sub_10001B194(1);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  sub_100049B5C(p_extendedPANIDToFind);
                }

LABEL_88:

LABEL_92:
                goto LABEL_93;
              }

              goto LABEL_64;
            }

            v38 = sub_10001B194(1);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_100049C54();
            }
          }

          else if (v29 && ([v29 isEqualToData:v10] & 1) == 0)
          {
            v38 = sub_10001B194(1);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_100049A64(&self->_extendedPANIDToFind);
            }
          }

          else
          {
            if (!*p_borderAgentIdToFind || ([*p_borderAgentIdToFind isEqualToData:v11] & 1) != 0)
            {
              v49 = v22;
              v51 = 0;
              v34 = 0;
              v45 = 0;
              v47 = 0;
              goto LABEL_77;
            }

            v38 = sub_10001B194(1);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_100049AE0(p_borderAgentIdToFind);
            }
          }

LABEL_93:
          goto LABEL_21;
        }

        v19 = sub_10001B194(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000499E8();
        }
      }

      else
      {
        v19 = sub_10001B194(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100049830();
        }
      }

LABEL_21:
      LOBYTE(v15) = 0;
      goto LABEL_22;
    }

    v16 = sub_10001B194(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100049F50();
    }
  }

  else
  {
    NSLog(@"Error:Empty Server");
  }

  LOBYTE(v15) = 0;
LABEL_27:

  return v15;
}

- (void)agentResolved:(id)resolved
{
  resolvedCopy = resolved;
  NSLog(@"Agent Resolved");
  if (resolvedCopy)
  {
    if (self->_baFinderSemaphore)
    {
      if ([(ThreadBRFinder *)self matchTheRecord:resolvedCopy])
      {
        baFinderSemaphore = [(ThreadBRFinder *)self baFinderSemaphore];
        dispatch_semaphore_signal(baFinderSemaphore);
      }
    }

    else
    {
      NSLog(@"%s:%d: Returning no semaphore initialized, Agent Resolved : %@", "[ThreadBRFinder agentResolved:]", 461, resolvedCopy);
    }
  }

  else
  {
    NSLog(@"Agent Resolved, server is nil");
  }
}

- (id)dataFromHexString:(id)string
{
  lowercaseString = [string lowercaseString];
  v4 = objc_opt_new();
  v15 = 0;
  v5 = [lowercaseString length];
  if (v5 >= 2)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      v8 = v6 + 1;
      v9 = [lowercaseString characterAtIndex:v6];
      if (v9 >= 48)
      {
        v10 = v9 & 0x7F;
        v11 = v9 <= 0x39u || v10 >= 0x61;
        v12 = !v11;
        if (v10 <= 0x66 && !v12)
        {
          __str[0] = v9;
          __str[1] = [lowercaseString characterAtIndex:v8];
          HIBYTE(v15) = strtol(__str, 0, 16);
          [v4 appendBytes:&v15 + 1 length:1];
          v8 = v6 + 2;
        }
      }

      v6 = v8;
    }

    while (v8 < v7);
  }

  return v4;
}

@end