@interface IMDeliveryReceiptProcessingPipelineComponent
- (IMDeliveryReceiptProcessingPipelineComponent)initWithMessageStore:(id)a3;
- (id)_processDeliveryReceiptForMessage:(id)a3 date:(id)a4 isFromOffGridCapableDevice:(BOOL)a5 chat:(id)a6;
- (id)runIndividuallyWithInput:(id)a3;
- (void)_metricMessageGUIDDelivered:(id)a3 sendDate:(id)a4 deliveryDate:(id)a5;
- (void)_metricMessageGUIDSendToDelivered:(id)a3;
- (void)_reduceExpectedSatelliteDeliveriesOnMessage:(id)a3 chat:(id)a4;
@end

@implementation IMDeliveryReceiptProcessingPipelineComponent

- (IMDeliveryReceiptProcessingPipelineComponent)initWithMessageStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMDeliveryReceiptProcessingPipelineComponent;
  v6 = [(IMDeliveryReceiptProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 GUID];
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMDeliveryReceiptProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 GUID];
        *buf = 138412290;
        v27 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "    Ignoring delivery receipt for message: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
  }

  else
  {
    v10 = [v4 GUID];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "    Received Fresh Delivery Receipt For Message GUID: %@", buf, 0xCu);
      }
    }

    v12 = [(IMDMessageStore *)self->_messageStore messageWithGUID:v10];
    if (v12)
    {
      v13 = [(IMDMessageStore *)self->_messageStore chatForMessage:v12];
      v14 = MEMORY[0x277CBEAA8];
      v15 = [v4 timestamp];
      v16 = [v14 __im_iMessageDateFromTimeStamp:v15];
      v17 = [v4 senderRegistrationProperties];
      v18 = -[IMDeliveryReceiptProcessingPipelineComponent _processDeliveryReceiptForMessage:date:isFromOffGridCapableDevice:chat:](self, "_processDeliveryReceiptForMessage:date:isFromOffGridCapableDevice:chat:", v12, v16, [v17 containsObject:*MEMORY[0x277D18910]], v13);

      v25 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [v4 setMessageItems:v19];

      if (v13)
      {
        [v4 setChat:v13];
        v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v22 = [v21 initWithDomain:*MEMORY[0x277D18DF8] code:8 userInfo:0];
        v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v22];
      }
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v18 = [v20 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
      v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v18];
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_processDeliveryReceiptForMessage:(id)a3 date:(id)a4 isFromOffGridCapableDevice:(BOOL)a5 chat:(id)a6
{
  v7 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 guid];
  if (v10)
  {
    if ([v10 isDelivered])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "    Message was already marked as delivered, ignoring", &v31, 2u);
        }
      }

      if (v7 && [v10 expectedOffGridCapableDeliveries])
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v10 expectedOffGridCapableDeliveries];
            v31 = 134217984;
            v32 = v16;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "    Updating expected off grid capable deliveries (has %llu)", &v31, 0xCu);
          }
        }

        [(IMDeliveryReceiptProcessingPipelineComponent *)self _reduceExpectedSatelliteDeliveriesOnMessage:v10 chat:v12];
        v17 = [(IMDMessageStore *)self->_messageStore storeMessage:v10 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

LABEL_48:
        v10 = v17;
      }
    }

    else
    {
      if ([v10 errorCode] != 43)
      {
        if ([v10 needsRelay])
        {
          [v10 setNeedsRelay:0];
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              LOWORD(v31) = 0;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "   Message was delivered, no need for relay anymore", &v31, 2u);
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = v13;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "    Received delivery receipt for message: %@", &v31, 0xCu);
          }
        }

        [v10 setFlags:{objc_msgSend(v10, "flags") | 0x9000}];
        if (v11)
        {
          [v10 setTimeDelivered:v11];
        }

        else
        {
          v22 = [MEMORY[0x277CBEAA8] date];
          [v10 setTimeDelivered:v22];
        }

        [v10 setScheduleType:0];
        [v10 setScheduleState:0];
        if (v7 && [v10 expectedOffGridCapableDeliveries])
        {
          [(IMDeliveryReceiptProcessingPipelineComponent *)self _reduceExpectedSatelliteDeliveriesOnMessage:v10 chat:v12];
        }

        v23 = [v10 time];
        v24 = [v10 timeDelivered];
        [(IMDeliveryReceiptProcessingPipelineComponent *)self _metricMessageGUIDDelivered:v13 sendDate:v23 deliveryDate:v24];

        v25 = [v10 fileTransferGUIDs];
        LOBYTE(v24) = [v25 count] == 0;

        if ((v24 & 1) == 0)
        {
          [(IMDeliveryReceiptProcessingPipelineComponent *)self _metricMessageGUIDSendToDelivered:v10];
        }

        v26 = [v10 errorCode];
        if (v26)
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [v10 errorCode];
              v31 = 67109120;
              LODWORD(v32) = v28;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "    Message had error: %d", &v31, 8u);
            }
          }

          [v10 setErrorCode:0];
        }

        v17 = [(IMDMessageStore *)self->_messageStore storeMessage:v10 forceReplace:0 modifyError:v26 != 0 modifyFlags:1 flagMask:0x20000009009];

        goto LABEL_48;
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "   Message was already marked as black holed, ignoring", &v31, 2u);
        }
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "    Unable to find message to mark as delivered.", &v31, 2u);
      }
    }

    v10 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_reduceExpectedSatelliteDeliveriesOnMessage:(id)a3 chat:(id)a4
{
  v9 = a3;
  v5 = a4;
  [v9 setExpectedOffGridCapableDeliveries:{objc_msgSend(v9, "expectedOffGridCapableDeliveries") - 1}];
  if ([v9 isPendingSatelliteSend])
  {
    v6 = [v9 expectedOffGridCapableDeliveries] != 0;
  }

  else
  {
    v6 = 0;
  }

  [v9 setIsPendingSatelliteSend:v6];
  if (![v9 expectedOffGridCapableDeliveries])
  {
    v7 = +[IMDOffGridAvailabilityTracker sharedTracker];
    v8 = [v5 recipient];
    [v7 stopTrackingHandle:v8];
  }
}

- (void)_metricMessageGUIDDelivered:(id)a3 sendDate:(id)a4 deliveryDate:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    [v9 timeIntervalSinceDate:v8];
    v11 = v10;
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v23 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Delivery receipt time was: %f", buf, 0xCu);
      }
    }

    if (v11 > 0.0)
    {
      v13 = [MEMORY[0x277D1AAA8] sharedInstance];
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v13 trackEvent:*MEMORY[0x277D1A340] withStatistic:v14];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v20 = *MEMORY[0x277D1A088];
      v21 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v17 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v17 trackEvent:*MEMORY[0x277D1A108] withDictionary:v16];

      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v15, @"DeliveryDuration", v7, @"MessageGUID", 0}];
      if (qword_281422598 != -1)
      {
        sub_22B7D6898();
      }

      if (off_281422590)
      {
        off_281422590(7, @"iMessageDelivered Late Ack", v18, 0);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_metricMessageGUIDSendToDelivered:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v3 = +[IMDFileTransferCenter sharedInstance];
  v4 = [v58 fileTransferGUIDs];
  v5 = [v4 firstObject];
  v55 = [v3 transferForGUID:v5];

  v6 = [v58 timeDelivered];
  v7 = [v55 createdDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = [v58 fileTransferGUIDs];
  v11 = [v10 countByEnumeratingWithState:&v67 objects:v82 count:16];
  if (v11)
  {
    v57 = 0;
    v62 = 0;
    v59 = 0;
    v64 = 0;
    v65 = 0;
    v12 = 0;
    v13 = *v68;
    inConformsToUTI = *MEMORY[0x277CC2088];
    v61 = *MEMORY[0x277CC2158];
    v56 = *MEMORY[0x277D1AD88];
    v14 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v67 + 1) + 8 * i);
        v17 = +[IMDFileTransferCenter sharedInstance];
        v18 = [v17 transferForGUID:v16];

        v19 = [v18 totalBytes];
        v20 = [v18 type];
        v21 = UTTypeConformsTo(v20, @"public.heic");

        if (v21)
        {
          v12 = (v12 + 1);
        }

        else
        {
          v22 = [v18 type];
          v23 = UTTypeConformsTo(v22, @"public.png");

          if (v23)
          {
            ++HIDWORD(v65);
          }

          else
          {
            v24 = [v18 type];
            v25 = UTTypeConformsTo(v24, @"public.jpeg");

            if (v25)
            {
              LODWORD(v65) = v65 + 1;
            }

            else
            {
              v26 = [v18 type];
              v27 = UTTypeConformsTo(v26, inConformsToUTI);

              if (v27)
              {
                ++v64;
              }

              else
              {
                v28 = [v18 type];
                v29 = UTTypeConformsTo(v28, v61);

                if (v29)
                {
                  ++v62;
                }

                else
                {
                  v30 = [v18 type];
                  v31 = UTTypeConformsTo(v30, v56);

                  if (v31)
                  {
                    ++v59;
                  }

                  else
                  {
                    ++v57;
                  }
                }
              }
            }
          }
        }

        v14 = v14 + v19;
      }

      v11 = [v10 countByEnumeratingWithState:&v67 objects:v82 count:16];
    }

    while (v11);
  }

  else
  {
    v57 = 0;
    v62 = 0;
    v59 = 0;
    v64 = 0;
    v65 = 0;
    v12 = 0;
    v14 = 0.0;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v60 setObject:v32 forKey:*MEMORY[0x277D1A0E8]];

  v33 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v65)];
  [v60 setObject:v33 forKey:*MEMORY[0x277D1A1D8]];

  v34 = [MEMORY[0x277CCABB0] numberWithInt:v65];
  [v60 setObject:v34 forKey:*MEMORY[0x277D1A150]];

  v35 = [MEMORY[0x277CCABB0] numberWithInt:v64];
  [v60 setObject:v35 forKey:*MEMORY[0x277D1A0E0]];

  v36 = [MEMORY[0x277CCABB0] numberWithInt:v59];
  [v60 setObject:v36 forKey:*MEMORY[0x277D1A240]];

  v37 = [MEMORY[0x277CCABB0] numberWithInt:v62];
  [v60 setObject:v37 forKey:*MEMORY[0x277D1A200]];

  v38 = [MEMORY[0x277CCABB0] numberWithInt:v57];
  [v60 setObject:v38 forKey:*MEMORY[0x277D1A1D0]];

  *&v39 = v14;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  [v60 setObject:v40 forKey:*MEMORY[0x277D1A310]];

  v41 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [v60 setObject:v41 forKey:*MEMORY[0x277D1A308]];

  memset(v66, 0, sizeof(v66));
  v42 = [v58 fileTransferGUIDs];
  if ([v42 countByEnumeratingWithState:v66 objects:v81 count:16])
  {
    v43 = **(&v66[0] + 1);
    v44 = +[IMDFileTransferCenter sharedInstance];
    v45 = [v44 transferForGUID:v43];

    v46 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v45 isSending:1];
    v47 = [MEMORY[0x277CCABB0] numberWithBool:v46];
    [v60 setObject:v47 forKey:*MEMORY[0x277D1A2D8]];
  }

  if (IMOSLoggingEnabled())
  {
    v48 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = [v58 guid];
      v50 = [v55 createdDate];
      v51 = [v58 timeDelivered];
      *buf = 138413314;
      v72 = v49;
      v73 = 2048;
      v74 = v9;
      v75 = 2112;
      v76 = v50;
      v77 = 2112;
      v78 = v51;
      v79 = 2048;
      v80 = v14;
      _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "For message: %@ timeDuration: %f file create date: %@ delivered time: %@ total file Size: %f", buf, 0x34u);
    }
  }

  v52 = [MEMORY[0x277D1AAA8] sharedInstance];
  v53 = [v60 copy];
  [v52 trackEvent:*MEMORY[0x277D1A118] withDictionary:v53];

  v54 = *MEMORY[0x277D85DE8];
}

@end