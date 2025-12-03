@interface IMDeliveryReceiptProcessingPipelineComponent
- (IMDeliveryReceiptProcessingPipelineComponent)initWithMessageStore:(id)store;
- (id)_processDeliveryReceiptForMessage:(id)message date:(id)date isFromOffGridCapableDevice:(BOOL)device chat:(id)chat;
- (id)runIndividuallyWithInput:(id)input;
- (void)_metricMessageGUIDDelivered:(id)delivered sendDate:(id)date deliveryDate:(id)deliveryDate;
- (void)_metricMessageGUIDSendToDelivered:(id)delivered;
- (void)_reduceExpectedSatelliteDeliveriesOnMessage:(id)message chat:(id)chat;
@end

@implementation IMDeliveryReceiptProcessingPipelineComponent

- (IMDeliveryReceiptProcessingPipelineComponent)initWithMessageStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = IMDeliveryReceiptProcessingPipelineComponent;
  v6 = [(IMDeliveryReceiptProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, store);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v28 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      v27 = gUID;
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
        gUID2 = [inputCopy GUID];
        *buf = 138412290;
        v27 = gUID2;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "    Ignoring delivery receipt for message: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  else
  {
    gUID3 = [inputCopy GUID];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = gUID3;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "    Received Fresh Delivery Receipt For Message GUID: %@", buf, 0xCu);
      }
    }

    v12 = [(IMDMessageStore *)self->_messageStore messageWithGUID:gUID3];
    if (v12)
    {
      v13 = [(IMDMessageStore *)self->_messageStore chatForMessage:v12];
      v14 = MEMORY[0x277CBEAA8];
      timestamp = [inputCopy timestamp];
      v16 = [v14 __im_iMessageDateFromTimeStamp:timestamp];
      senderRegistrationProperties = [inputCopy senderRegistrationProperties];
      v18 = -[IMDeliveryReceiptProcessingPipelineComponent _processDeliveryReceiptForMessage:date:isFromOffGridCapableDevice:chat:](self, "_processDeliveryReceiptForMessage:date:isFromOffGridCapableDevice:chat:", v12, v16, [senderRegistrationProperties containsObject:*MEMORY[0x277D18910]], v13);

      v25 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [inputCopy setMessageItems:v19];

      if (v13)
      {
        [inputCopy setChat:v13];
        v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
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

- (id)_processDeliveryReceiptForMessage:(id)message date:(id)date isFromOffGridCapableDevice:(BOOL)device chat:(id)chat
{
  deviceCopy = device;
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dateCopy = date;
  chatCopy = chat;
  guid = [messageCopy guid];
  if (messageCopy)
  {
    if ([messageCopy isDelivered])
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

      if (deviceCopy && [messageCopy expectedOffGridCapableDeliveries])
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            expectedOffGridCapableDeliveries = [messageCopy expectedOffGridCapableDeliveries];
            v31 = 134217984;
            v32 = expectedOffGridCapableDeliveries;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "    Updating expected off grid capable deliveries (has %llu)", &v31, 0xCu);
          }
        }

        [(IMDeliveryReceiptProcessingPipelineComponent *)self _reduceExpectedSatelliteDeliveriesOnMessage:messageCopy chat:chatCopy];
        v17 = [(IMDMessageStore *)self->_messageStore storeMessage:messageCopy forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

LABEL_48:
        messageCopy = v17;
      }
    }

    else
    {
      if ([messageCopy errorCode] != 43)
      {
        if ([messageCopy needsRelay])
        {
          [messageCopy setNeedsRelay:0];
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
            v32 = guid;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "    Received delivery receipt for message: %@", &v31, 0xCu);
          }
        }

        [messageCopy setFlags:{objc_msgSend(messageCopy, "flags") | 0x9000}];
        if (dateCopy)
        {
          [messageCopy setTimeDelivered:dateCopy];
        }

        else
        {
          date = [MEMORY[0x277CBEAA8] date];
          [messageCopy setTimeDelivered:date];
        }

        [messageCopy setScheduleType:0];
        [messageCopy setScheduleState:0];
        if (deviceCopy && [messageCopy expectedOffGridCapableDeliveries])
        {
          [(IMDeliveryReceiptProcessingPipelineComponent *)self _reduceExpectedSatelliteDeliveriesOnMessage:messageCopy chat:chatCopy];
        }

        time = [messageCopy time];
        timeDelivered = [messageCopy timeDelivered];
        [(IMDeliveryReceiptProcessingPipelineComponent *)self _metricMessageGUIDDelivered:guid sendDate:time deliveryDate:timeDelivered];

        fileTransferGUIDs = [messageCopy fileTransferGUIDs];
        LOBYTE(timeDelivered) = [fileTransferGUIDs count] == 0;

        if ((timeDelivered & 1) == 0)
        {
          [(IMDeliveryReceiptProcessingPipelineComponent *)self _metricMessageGUIDSendToDelivered:messageCopy];
        }

        errorCode = [messageCopy errorCode];
        if (errorCode)
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              errorCode2 = [messageCopy errorCode];
              v31 = 67109120;
              LODWORD(v32) = errorCode2;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "    Message had error: %d", &v31, 8u);
            }
          }

          [messageCopy setErrorCode:0];
        }

        v17 = [(IMDMessageStore *)self->_messageStore storeMessage:messageCopy forceReplace:0 modifyError:errorCode != 0 modifyFlags:1 flagMask:0x20000009009];

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

    messageCopy = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return messageCopy;
}

- (void)_reduceExpectedSatelliteDeliveriesOnMessage:(id)message chat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  [messageCopy setExpectedOffGridCapableDeliveries:{objc_msgSend(messageCopy, "expectedOffGridCapableDeliveries") - 1}];
  if ([messageCopy isPendingSatelliteSend])
  {
    v6 = [messageCopy expectedOffGridCapableDeliveries] != 0;
  }

  else
  {
    v6 = 0;
  }

  [messageCopy setIsPendingSatelliteSend:v6];
  if (![messageCopy expectedOffGridCapableDeliveries])
  {
    v7 = +[IMDOffGridAvailabilityTracker sharedTracker];
    recipient = [chatCopy recipient];
    [v7 stopTrackingHandle:recipient];
  }
}

- (void)_metricMessageGUIDDelivered:(id)delivered sendDate:(id)date deliveryDate:(id)deliveryDate
{
  v24 = *MEMORY[0x277D85DE8];
  deliveredCopy = delivered;
  dateCopy = date;
  deliveryDateCopy = deliveryDate;
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    [deliveryDateCopy timeIntervalSinceDate:dateCopy];
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
      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A340] withStatistic:v14];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v20 = *MEMORY[0x277D1A088];
      v21 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8]2 trackEvent:*MEMORY[0x277D1A108] withDictionary:v16];

      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v15, @"DeliveryDuration", deliveredCopy, @"MessageGUID", 0}];
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

- (void)_metricMessageGUIDSendToDelivered:(id)delivered
{
  v83 = *MEMORY[0x277D85DE8];
  deliveredCopy = delivered;
  v3 = +[IMDFileTransferCenter sharedInstance];
  fileTransferGUIDs = [deliveredCopy fileTransferGUIDs];
  firstObject = [fileTransferGUIDs firstObject];
  v55 = [v3 transferForGUID:firstObject];

  timeDelivered = [deliveredCopy timeDelivered];
  createdDate = [v55 createdDate];
  [timeDelivered timeIntervalSinceDate:createdDate];
  v9 = v8;

  v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  fileTransferGUIDs2 = [deliveredCopy fileTransferGUIDs];
  v11 = [fileTransferGUIDs2 countByEnumeratingWithState:&v67 objects:v82 count:16];
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
          objc_enumerationMutation(fileTransferGUIDs2);
        }

        v16 = *(*(&v67 + 1) + 8 * i);
        v17 = +[IMDFileTransferCenter sharedInstance];
        v18 = [v17 transferForGUID:v16];

        totalBytes = [v18 totalBytes];
        type = [v18 type];
        v21 = UTTypeConformsTo(type, @"public.heic");

        if (v21)
        {
          v12 = (v12 + 1);
        }

        else
        {
          type2 = [v18 type];
          v23 = UTTypeConformsTo(type2, @"public.png");

          if (v23)
          {
            ++HIDWORD(v65);
          }

          else
          {
            type3 = [v18 type];
            v25 = UTTypeConformsTo(type3, @"public.jpeg");

            if (v25)
            {
              LODWORD(v65) = v65 + 1;
            }

            else
            {
              type4 = [v18 type];
              v27 = UTTypeConformsTo(type4, inConformsToUTI);

              if (v27)
              {
                ++v64;
              }

              else
              {
                type5 = [v18 type];
                v29 = UTTypeConformsTo(type5, v61);

                if (v29)
                {
                  ++v62;
                }

                else
                {
                  type6 = [v18 type];
                  v31 = UTTypeConformsTo(type6, v56);

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

        v14 = v14 + totalBytes;
      }

      v11 = [fileTransferGUIDs2 countByEnumeratingWithState:&v67 objects:v82 count:16];
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
  fileTransferGUIDs3 = [deliveredCopy fileTransferGUIDs];
  if ([fileTransferGUIDs3 countByEnumeratingWithState:v66 objects:v81 count:16])
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
      guid = [deliveredCopy guid];
      createdDate2 = [v55 createdDate];
      timeDelivered2 = [deliveredCopy timeDelivered];
      *buf = 138413314;
      v72 = guid;
      v73 = 2048;
      v74 = v9;
      v75 = 2112;
      v76 = createdDate2;
      v77 = 2112;
      v78 = timeDelivered2;
      v79 = 2048;
      v80 = v14;
      _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "For message: %@ timeDuration: %f file create date: %@ delivered time: %@ total file Size: %f", buf, 0x34u);
    }
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  v53 = [v60 copy];
  [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A118] withDictionary:v53];

  v54 = *MEMORY[0x277D85DE8];
}

@end