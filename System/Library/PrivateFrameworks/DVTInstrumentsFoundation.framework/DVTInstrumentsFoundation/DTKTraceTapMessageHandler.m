@interface DTKTraceTapMessageHandler
- (DTKTraceTapMessageHandler)initWithConfig:(id)a3;
- (id)messageReceived:(id)a3;
@end

@implementation DTKTraceTapMessageHandler

- (DTKTraceTapMessageHandler)initWithConfig:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DTKTraceTapMessageHandler;
  v5 = [(DTTapMessageHandler *)&v13 initWithConfig:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    datastream = v5->_datastream;
    v5->_datastream = v6;

    if (!v5->_datastream)
    {
      sub_24802E734();
    }

    v8 = objc_opt_new();
    rawMessages = v5->_rawMessages;
    v5->_rawMessages = v8;

    openFile = v5->_openFile;
    v5->_openFile = 0;

    openFileURL = v5->_openFileURL;
    v5->_openFileURL = 0;

    v5->_canUseRawKtrace = [v4 canUseRawKtraceFile];
  }

  return v5;
}

- (id)messageReceived:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v75 = a3;
  v76 = self;
  v97.receiver = self;
  v97.super_class = DTKTraceTapMessageHandler;
  v4 = [(DTTapMessageHandler *)&v97 messageReceived:?];
  v5 = v4;
  if (v75 && !v4)
  {
    if (self->_canUseRawKtrace)
    {
      v90 = 0;
      v6 = v75;
      v7 = [v75 getBufferWithReturnedLength:&v90];
      if (v7)
      {
        v8 = self;
        if (!self->_openFile)
        {
          LODWORD(size) = -1;
          v9 = [DTKTraceSessionCreator getDefaultedRemotePath:&size];
          openFileURL = self->_openFileURL;
          self->_openFileURL = v9;

          v11 = objc_alloc(MEMORY[0x277CCA9F8]);
          v12 = [v11 initWithFileDescriptor:size closeOnDealloc:1];
          openFile = self->_openFile;
          self->_openFile = v12;

          v8 = self;
        }

        if (v90)
        {
          v14 = v8->_openFile;
          v15 = objc_alloc(MEMORY[0x277CBEA90]);
          v16 = [v15 initWithBytesNoCopy:v7 length:v90 deallocator:&unk_285A18810];
          v96 = 0;
          [(NSFileHandle *)v14 writeData:v16 error:&v96];
          v17 = v96;

          if (v17)
          {
            sub_24802E760();
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
      v18 = v75;
      if ([v75 getBufferWithReturnedLength:0])
      {
        [(NSMutableArray *)self->_rawMessages addObject:v75];
LABEL_12:
        v5 = 0;
        goto LABEL_66;
      }
    }

    v19 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v74 = [v75 objectWithAllowedClasses:v19];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_65:

      goto LABEL_66;
    }

    v73 = [(DTTapMessageHandler *)self config];
    v20 = [v74 kind];
    v5 = 0;
    if (v20 <= 6)
    {
      if (v20 <= 4)
      {
        if (v20)
        {
          if ((v20 - 1) < 4)
          {
            sub_24802E78C(v74);
          }
        }

        else
        {
          self->_triggerCount = [v74 triggerCount];
          self->_coreCount = [v74 coreCount];
          v44 = [v74 tapVersion];
          v5 = 0;
          if (v44)
          {
            v45 = v44;
          }

          else
          {
            v45 = 0x10000;
          }

          self->_tapVersion = v45;
        }
      }

      else if (v20 == 5)
      {
        v5 = objc_opt_new();
        [v5 setTapVersion:self->_tapVersion];
        [v5 setIsSession:1];
        [v5 setFinalMemo:1];
        [v5 setSupportsPeek:1];
        triggerCount = self->_triggerCount;
        [v5 setTriggerCount:triggerCount];
        v47 = self;
        triggerIDs = self->_triggerIDs;
        if (triggerIDs)
        {
          v49 = [MEMORY[0x277CBEA90] dataWithBytes:triggerIDs length:4 * triggerCount];
          [v5 setTriggerIDs:v49];

          v47 = self;
        }

        [v5 setDatastream:v47->_datastream];
        datastream = self->_datastream;
        self->_datastream = 0;
      }

      else
      {
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v21 = self->_rawMessages;
        v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v86 objects:v98 count:16];
        if (v22)
        {
          v23 = *v87;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v87 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v90 = 0;
              v91 = &v90;
              v92 = 0x3032000000;
              v93 = sub_247FAEB44;
              v94 = sub_247FAEB54;
              v95 = *(*(&v86 + 1) + 8 * i);
              size = 0;
              v25 = [v91[5] getBufferWithReturnedLength:&size];
              if (size)
              {
                v26 = v25;
                v27 = v76->_datastream;
                v28 = objc_alloc(MEMORY[0x277CBEA90]);
                v84[0] = MEMORY[0x277D85DD0];
                v84[1] = 3221225472;
                v84[2] = sub_247FAEB5C;
                v84[3] = &unk_278EF2B80;
                v84[4] = &v90;
                v29 = [v28 initWithBytesNoCopy:v26 length:size deallocator:v84];
                v83 = 0;
                [(DVTInputStream *)v27 write:v29 error:&v83];
                v30 = v83;

                if (v30)
                {
                  __assert_rtn("[DTKTraceTapMessageHandler messageReceived:]", "DTKTraceTapMessageHandler.m", 106, "error == nil");
                }
              }

              _Block_object_dispose(&v90, 8);
            }

            v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v86 objects:v98 count:16];
          }

          while (v22);
        }

        [(NSMutableArray *)v76->_rawMessages removeAllObjects];
        v5 = objc_opt_new();
        [v5 setTapVersion:v76->_tapVersion];
        [v5 setIsSession:1];
        [v5 setSupportsPeek:1];
        v31 = v76->_triggerCount;
        [v5 setTriggerCount:v31];
        v32 = v76;
        v33 = v76->_triggerIDs;
        if (v33)
        {
          v34 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:4 * v31];
          [v5 setTriggerIDs:v34];

          v32 = v76;
        }

        if (!v32->_datastream)
        {
          sub_24802E828();
        }

        [v5 setDatastream:?];
        v35 = v76->_datastream;
        v82 = 0;
        v36 = [(DVTInputStream *)v35 createNextStream:&v82];
        v37 = v82;
        v38 = v76->_datastream;
        v76->_datastream = v36;

        if (!v76->_datastream)
        {
          sub_24802E7FC();
        }
      }

      goto LABEL_64;
    }

    switch(v20)
    {
      case 7:
        v51 = self->_triggerIDs;
        if (v51)
        {
          free(v51);
          self->_triggerIDs = 0;
        }

        v52 = [v74 sessionMetadata];
        v53 = [v52 objectForKeyedSubscript:@"triggerIDs"];
        v54 = [v52 objectForKeyedSubscript:@"triggerUUIDs"];
        if ([v53 count])
        {
          v55 = [v53 count];
          if (v55 == [v54 count])
          {
            v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v54];
            v57 = malloc_type_malloc(4 * self->_triggerCount, 0x100004052888210uLL);
            self->_triggerIDs = v57;
            v58 = self->_triggerCount;
            if (v58 >= 1)
            {
              memset(v57, 255, 4 * v58);
            }

            v90 = 0;
            v91 = &v90;
            v92 = 0x2020000000;
            LODWORD(v93) = 0;
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = sub_247FAEB84;
            v77[3] = &unk_278EF2BA8;
            v59 = v56;
            v78 = v59;
            v79 = self;
            v80 = &v90;
            [v73 enumerateTriggerConfigs:v77];

            _Block_object_dispose(&v90, 8);
          }
        }

        [v73 _runningMetadataChanged:v52];

        break;
      case 1024:
        v90 = 0;
        v91 = &v90;
        v92 = 0x3032000000;
        v93 = sub_247FAEB44;
        v94 = sub_247FAEB54;
        v95 = [(NSMutableArray *)self->_rawMessages firstObject];
        size = 0;
        v60 = [v91[5] getBufferWithReturnedLength:&size];
        v61 = self;
        if (size)
        {
          destructor[0] = MEMORY[0x277D85DD0];
          destructor[1] = 3221225472;
          destructor[2] = sub_247FAEB70;
          destructor[3] = &unk_278EF1D40;
          destructor[4] = &v90;
          v62 = dispatch_data_create(v60, size, 0, destructor);
          v63 = xpc_data_create_with_dispatch_data(v62);
          v5 = objc_opt_new();
          [v5 setIsSession:0];
          [v5 setSupportsPeek:0];
          [v5 setStackshot:v63];

          v61 = self;
        }

        else
        {
          v5 = 0;
        }

        [(NSMutableArray *)v61->_rawMessages removeAllObjects];
        _Block_object_dispose(&v90, 8);

        goto LABEL_64;
      case 1025:
        v39 = [v74 localFilePath];

        if (v39)
        {
          v40 = objc_alloc(MEMORY[0x277CBEBC0]);
          v41 = [v74 localFilePath];
          v42 = [v40 initWithString:v41];
          v43 = self->_openFileURL;
          self->_openFileURL = v42;
        }

        if (self->_openFileURL)
        {
          v64 = [[DVTFileStream alloc] initWithURL:self->_openFileURL];
          [(NSMutableArray *)self->_rawMessages removeAllObjects];
          v5 = objc_opt_new();
          [v5 setTapVersion:self->_tapVersion];
          [v5 setIsSession:1];
          [v5 setIsRawKtraceFile:1];
          [v5 setSupportsPeek:0];
          v65 = self->_triggerCount;
          [v5 setTriggerCount:v65];
          v66 = self;
          v67 = self->_triggerIDs;
          if (v67)
          {
            v68 = [MEMORY[0x277CBEA90] dataWithBytes:v67 length:4 * v65];
            [v5 setTriggerIDs:v68];

            v66 = self;
          }

          if (!v66->_datastream)
          {
            sub_24802E7D0();
          }

          [v5 setDatastream:v64];
          v69 = self->_openFile;
          self->_openFile = 0;

          v70 = self->_openFileURL;
          self->_openFileURL = 0;

          goto LABEL_64;
        }

        break;
      default:
LABEL_64:

        goto LABEL_65;
    }

    v5 = 0;
    goto LABEL_64;
  }

LABEL_66:

  v71 = *MEMORY[0x277D85DE8];

  return v5;
}

@end