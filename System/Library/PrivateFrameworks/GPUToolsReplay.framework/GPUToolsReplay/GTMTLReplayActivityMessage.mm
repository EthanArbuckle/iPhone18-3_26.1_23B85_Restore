@interface GTMTLReplayActivityMessage
- (GTMTLReplayActivityMessage)initWithMessage:(id)message;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (id)summary;
- (void)outputToLog:(id)log;
@end

@implementation GTMTLReplayActivityMessage

- (void)outputToLog:(id)log
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    message = self->_message;
    logCopy = log;
    LODWORD(message) = [(GTTransportMessage_replayer *)message serial];
    activityType = self->super._activityType;
    kind = [(GTTransportMessage_replayer *)self->_message kind];
    attributes = [(GTTransportMessage_replayer *)self->_message attributes];
    v11[0] = 67109890;
    v11[1] = message;
    v12 = 2114;
    v13 = activityType;
    v14 = 1024;
    v15 = kind;
    v16 = 2114;
    v17 = attributes;
    _os_log_impl(&dword_24D764000, logCopy, OS_LOG_TYPE_INFO, "%u. %{public}@(%u):\t%{public}@", v11, 0x22u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v21[4] = *MEMORY[0x277D85DE8];
  payload = [(GTTransportMessage_replayer *)self->_message payload];
  v4 = [payload base64EncodedStringWithOptions:1];

  v5 = MEMORY[0x277CCAAA0];
  attributes = [(GTTransportMessage_replayer *)self->_message attributes];
  if ([v5 isValidJSONObject:attributes])
  {
    attributes2 = [(GTTransportMessage_replayer *)self->_message attributes];
  }

  else
  {
    attributes2 = 0;
  }

  v21[0] = self->super._activityType;
  v20[0] = @"activityType";
  v20[1] = @"message";
  v18[0] = @"kind";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[GTTransportMessage_replayer kind](self->_message, "kind")}];
  v19[0] = v17;
  v18[1] = @"serial";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[GTTransportMessage_replayer serial](self->_message, "serial")}];
  v19[1] = v8;
  v18[2] = @"attributes";
  null = attributes2;
  if (!attributes2)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v19[2] = null;
  v18[3] = @"payload";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v19[3] = null2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v21[1] = v11;
  v20[2] = @"activityStartTime";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v21[2] = v12;
  v20[3] = @"activityEndTime";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v21[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  if (v4)
  {
    if (attributes2)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (attributes2)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)summary
{
  v2 = MEMORY[0x277CCACA8];
  kind = [(GTTransportMessage_replayer *)self->_message kind];
  if (kind <= 1791)
  {
    if (kind > 1029)
    {
      switch(kind)
      {
        case 1536:
          v4 = "kDYMessageInferiorLaunched";
          break;
        case 1537:
          v4 = "kDYMessageInferiorSignalInterposeSemaphore";
          break;
        case 1538:
          v4 = "kDYMessageGuestAppCSSignature";
          break;
        case 1539:
          v4 = "kDYMessageGuestAppTimebase";
          break;
        case 1540:
          v4 = "kDYMessageGuestAppInvalidateSavePointerAliases";
          break;
        case 1541:
          v4 = "kDYMessageGuestAppProfilingData";
          break;
        case 1542:
          v4 = "kDYMessageGuestAppGLContextsInfo";
          break;
        case 1543:
          v4 = "kDYMessageGuestAppCADisplayLinkEvent";
          break;
        case 1544:
          v4 = "kDYMessageGuestAppMultitaskingSuspensionState";
          break;
        case 1545:
          v4 = "kDYMessageGuestAppLockGraphics";
          break;
        case 1546:
          v4 = "kDYMessageGuestAppUnlockGraphics";
          break;
        case 1547:
          v4 = "kDYMessageGuestAppMTLCommandQueuesInfo";
          break;
        case 1548:
          v4 = "kDYMessageGuestAppMTLCommandBuffersCaptured";
          break;
        case 1549:
          v4 = "kDYMessageGuestAppMTLCaptureScopesInfo";
          break;
        case 1550:
          v4 = "kDYMessageGuestAppCAMetalLayersInfo";
          break;
        case 1551:
          v4 = "kDYMessageGuestAppMTLDevicesInfo";
          break;
        default:
          if (kind != 1030)
          {
            goto LABEL_60;
          }

          v4 = "kDYGenerateShaderDebuggerTrace";
          break;
      }

      goto LABEL_122;
    }

    if (kind > 266)
    {
      if (kind > 1024)
      {
        if (kind <= 1026)
        {
          if (kind == 1025)
          {
            v4 = "kDYMessageFetchResourceList";
          }

          else
          {
            v4 = "kDYMessageFetchResourceObject";
          }
        }

        else if (kind == 1027)
        {
          v4 = "kDYMessageFetchState";
        }

        else if (kind == 1028)
        {
          v4 = "kDYMessageUpdateResourceObject";
        }

        else
        {
          v4 = "kDYMessageClearResourceOverrides";
        }

        goto LABEL_122;
      }

      if (kind <= 511)
      {
        if (kind == 267)
        {
          v4 = "kDYMessageCaptureSentAllMetadata";
          goto LABEL_122;
        }

        if (kind == 271)
        {
          v4 = "kDYMessageCaptureDataChunk";
          goto LABEL_122;
        }
      }

      else
      {
        switch(kind)
        {
          case 512:
            v4 = "kDYMessageBreakpoint";
            goto LABEL_122;
          case 513:
            v4 = "kDYMessageBreakpointContinue";
            goto LABEL_122;
          case 1024:
            v4 = "kDYMessageCurrentDrawFramebufferImage";
            goto LABEL_122;
        }
      }
    }

    else
    {
      if (kind > 261)
      {
        if (kind <= 263)
        {
          if (kind == 262)
          {
            v4 = "kDYMessageCaptureDataReferenceCounts";
          }

          else
          {
            v4 = "kDYMessageCaptureSentAllData";
          }
        }

        else if (kind == 264)
        {
          v4 = "kDYMessageCaptureActivateSession";
        }

        else if (kind == 265)
        {
          v4 = "kDYMessageCaptureInvalidateSession";
        }

        else
        {
          v4 = "kDYMessageCaptureSentUsedData";
        }

        goto LABEL_122;
      }

      if (kind <= 257)
      {
        if (kind == 256)
        {
          v4 = "kDYMessageCaptureStart";
          goto LABEL_122;
        }

        if (kind == 257)
        {
          v4 = "kDYMessageCaptureStarted";
          goto LABEL_122;
        }
      }

      else
      {
        switch(kind)
        {
          case 258:
            v4 = "kDYMessageCaptureData";
            goto LABEL_122;
          case 259:
            v4 = "kDYMessageCaptureCreateAlias";
            goto LABEL_122;
          case 260:
            v4 = "kDYMessageCaptureStop";
            goto LABEL_122;
        }
      }
    }

LABEL_60:
    v4 = GTMessageKindAsString_str();
    snprintf(v4, 0x40uLL, "Unrecognized message: %d", v5);
    goto LABEL_122;
  }

  if (kind <= 4095)
  {
    if (kind <= 2303)
    {
      if (kind <= 1793)
      {
        if (kind == 1792)
        {
          v4 = "kDYMessageTraceBufferedFstreamData";
        }

        else
        {
          v4 = "kDYMessageTraceConfiguration";
        }

        goto LABEL_122;
      }

      switch(kind)
      {
        case 1794:
          v4 = "kDYMessageTraceOverridesConfiguration";
          goto LABEL_122;
        case 1795:
          v4 = "kDYMessageTraceFlushBuffers";
          goto LABEL_122;
        case 1796:
          v4 = "kDYMessageTraceModeChanged";
          goto LABEL_122;
      }
    }

    else
    {
      if (kind <= 2306)
      {
        if (kind == 2304)
        {
          v4 = "kDYMessageFSStreamInitializeTransfer";
        }

        else if (kind == 2305)
        {
          v4 = "kDYMessageFSStreamInitializeTransferAck";
        }

        else
        {
          v4 = "kDYMessageFSStreamItemData";
        }

        goto LABEL_122;
      }

      switch(kind)
      {
        case 2307:
          v4 = "kDYMessageFSStreamFinishedSending";
          goto LABEL_122;
        case 2308:
          v4 = "kDYMessageFSStreamFinishedSendingAck";
          goto LABEL_122;
        case 2309:
          v4 = "kDYMessageFSStreamAbort";
          goto LABEL_122;
      }
    }

    goto LABEL_60;
  }

  switch(kind)
  {
    case 4096:
      v4 = "kDYMessageReplayerAppReady";
      break;
    case 4097:
    case 4123:
    case 4124:
    case 4125:
    case 4126:
    case 4127:
    case 4128:
      goto LABEL_60;
    case 4098:
      v4 = "kDYMessageReplayerReplayArchive";
      break;
    case 4099:
      v4 = "kDYMessageReplayerExperimentResult";
      break;
    case 4100:
      v4 = "kDYMessageReplayerReplayFinished";
      break;
    case 4101:
      v4 = "kDYMessageReplayerSetBackgroundImage";
      break;
    case 4102:
      v4 = "kDYMessageReplayerDeleteAllArchives";
      break;
    case 4103:
      v4 = "kDYMessageReplayerBeginDebugArchive";
      break;
    case 4104:
      v4 = "kDYMessageReplayerEndDebugArchive";
      break;
    case 4105:
      v4 = "kDYMessageReplayerDebugStatus";
      break;
    case 4106:
      v4 = "kDYMessageReplayerDebugFuncStop";
      break;
    case 4107:
      v4 = "kDYMessageReplayerDebugEnableWireframePresent";
      break;
    case 4108:
      v4 = "kDYMessageReplayerDebugEnableDrawCallPresent";
      break;
    case 4109:
      v4 = "kDYMessageReplayerDebugWireframeLineWidth";
      break;
    case 4110:
      v4 = "kDYMessageReplayerDebugWireframeLineColor";
      break;
    case 4111:
      v4 = "kDYMessageReplayerDebugDisableFunctions";
      break;
    case 4112:
      v4 = "kDYMessageReplayerDebugEnableFunctions";
      break;
    case 4113:
      v4 = "kDYMessageReplayerSetBackgroundImageData";
      break;
    case 4114:
      v4 = "kDYMessageReplayerLoadArchives";
      break;
    case 4115:
      v4 = "kDYMessageReplayerQueryLoadedArchivesInfo";
      break;
    case 4116:
      v4 = "kDYMessageReplayerArchivesDirectoryPath";
      break;
    case 4117:
      v4 = "kDYMessageReplayerQueryShaderInfo";
      break;
    case 4118:
      v4 = "kDYMessageReplayerDerivedCounterData";
      break;
    case 4119:
      v4 = "kDYMessageReplayerGenerateThumbnails";
      break;
    case 4120:
      v4 = "kDYMessageReplayerGenerateDependencyGraphThumbnails";
      break;
    case 4121:
      v4 = "kDYMessageFetchResourceObjectBatch";
      break;
    case 4122:
      v4 = "kDYMessageReplayerDebugEnableOutlinePresent";
      break;
    case 4129:
      v4 = "kGTMessageReplayerResourcesUsedForFunctionIndex";
      break;
    default:
      if (kind == 4353)
      {
        v4 = "kGTMessageDiagnosticsReceivedData";
      }

      else
      {
        if (kind != 4865)
        {
          goto LABEL_60;
        }

        v4 = "kGTMessageRunnablePID";
      }

      break;
  }

LABEL_122:
  v6 = [v2 stringWithUTF8String:v4];
  v7 = [v2 stringWithFormat:@"Responding to: %@", v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityMessage;
  v4 = [(GTMTLReplayActivity *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_message);
  }

  return v5;
}

- (GTMTLReplayActivityMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = GTMTLReplayActivityMessage;
  v6 = [(GTMTLReplayActivity *)&v9 initWithType:@"message"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

@end