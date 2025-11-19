@interface IDSLocalDeliveryMessage
+ (id)socketPairMessageWithCommand:(int64_t)a3 streamID:(unsigned __int16)a4 sequenceNumber:(unsigned int)a5 messageID:(unsigned int)a6 expectsPeerResponse:(BOOL)a7 wantsAppAck:(BOOL)a8 compressPayload:(BOOL)a9 compressed:(BOOL)a10 didWakeHint:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 payload:(id)a14 protobuf:(id)a15 resourcePath:(id)a16 resourceMetadata:(id)a17 expiryDate:(id)a18;
+ (unsigned)_niceToSocketCommand:(int64_t)a3;
- (IDSLocalDeliveryMessage)init;
- (id)socketPairMessage;
- (void)kickProgressBlock;
- (void)setCompletionBlock:(id)a3;
@end

@implementation IDSLocalDeliveryMessage

- (IDSLocalDeliveryMessage)init
{
  v3.receiver = self;
  v3.super_class = IDSLocalDeliveryMessage;
  result = [(IDSLocalDeliveryMessage *)&v3 init];
  if (result)
  {
    result->_messageState = 1;
  }

  return result;
}

- (id)socketPairMessage
{
  p_underlyingSocketPairMessage = &self->_underlyingSocketPairMessage;
  underlyingSocketPairMessage = self->_underlyingSocketPairMessage;
  *(p_underlyingSocketPairMessage + 8) = 1;
  p_underlyingSocketPairMessage[12] = 2;
  if (underlyingSocketPairMessage)
  {
    [(IDSSocketPairMessage *)underlyingSocketPairMessage setContext:self];
    v5 = self->_underlyingSocketPairMessage;
  }

  else
  {
    if (self->_shouldEnforceRemoteTimeout)
    {
      v26 = [(IDSLocalDeliveryMessage *)self expirationDate];
    }

    else
    {
      v26 = 0;
    }

    v23 = objc_opt_class();
    v25 = [(IDSLocalDeliveryMessage *)self command];
    v22 = [v25 integerValue];
    v24 = [(IDSLocalDeliveryMessage *)self domainHash];
    v21 = [v24 unsignedShortValue];
    v20 = [(IDSLocalDeliveryMessage *)self messageID];
    v6 = [(IDSLocalDeliveryMessage *)self messageID];
    expectsPeerResponse = self->_expectsPeerResponse;
    v19 = v6;
    v16 = *&self->_compressPayload;
    wantsAppAck = self->_wantsAppAck;
    didWakeHint = self->_didWakeHint;
    peerResponseIdentifier = self->_peerResponseIdentifier;
    messageUUID = self->_messageUUID;
    v10 = [(IDSLocalDeliveryMessage *)self payload];
    v11 = [(IDSLocalDeliveryMessage *)self protobuf];
    v12 = [(IDSLocalDeliveryMessage *)self resourcePath];
    v13 = [(IDSLocalDeliveryMessage *)self resourceMetadata];
    BYTE2(v15) = didWakeHint;
    LOWORD(v15) = v16;
    v5 = [v23 socketPairMessageWithCommand:v22 streamID:v21 sequenceNumber:v20 messageID:v19 expectsPeerResponse:expectsPeerResponse wantsAppAck:wantsAppAck compressPayload:v15 compressed:peerResponseIdentifier didWakeHint:messageUUID peerResponseIdentifier:v10 messageUUID:v11 payload:v12 protobuf:v13 resourcePath:v26 resourceMetadata:? expiryDate:?];

    [(IDSSocketPairMessage *)v5 setContext:self];
    objc_storeStrong(p_underlyingSocketPairMessage, v5);
  }

  return v5;
}

- (void)setCompletionBlock:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004C6534;
    v8[3] = &unk_100BDE528;
    v9 = v4;
    v10 = v11;
    v5 = objc_retainBlock(v8);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != self->_completionBlock)
  {
    v6 = [v5 copy];
    completionBlock = self->_completionBlock;
    self->_completionBlock = v6;
  }

  _Block_object_dispose(v11, 8);
}

- (void)kickProgressBlock
{
  if (self->_progressBlock)
  {
    if (self->_isSending)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = self->_underlyingSocketPairMessage;
        v7 = objc_alloc_init(IDSDeliveryContext);
        [v7 setIdsResponseCode:0];
        [v7 setLastCall:0];
        progressBlock = self->_progressBlock;
        v5 = [NSNumber numberWithUnsignedLongLong:[(IDSSocketPairMessage *)v3 nextByte]];
        v6 = [NSNumber numberWithUnsignedLongLong:[(IDSSocketPairMessage *)v3 totalBytes]];
        (*(progressBlock + 2))(progressBlock, v7, v5, v6, 0, 0);
      }
    }
  }
}

+ (unsigned)_niceToSocketCommand:(int64_t)a3
{
  result = 58;
  if (a3 > 180)
  {
    if (a3 <= 194)
    {
      v4 = 51;
      if (a3 == 190)
      {
        v5 = 35;
      }

      else
      {
        v5 = 58;
      }

      if (a3 == 182)
      {
        v6 = 45;
      }

      else
      {
        v6 = v5;
      }

      v7 = a3 == 181;
LABEL_18:
      if (v7)
      {
        return v4;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      switch(a3)
      {
        case 227:
          result = 6;
          break;
        case 228:
          result = 25;
          break;
        case 229:
          result = 26;
          break;
        case 230:
        case 231:
        case 239:
        case 240:
        case 241:
          return result;
        case 232:
          result = 8;
          break;
        case 233:
          result = 9;
          break;
        case 234:
          result = 10;
          break;
        case 235:
          result = 11;
          break;
        case 236:
          result = 12;
          break;
        case 237:
          result = 13;
          break;
        case 238:
          result = 41;
          break;
        case 242:
          result = 0;
          break;
        case 243:
          result = 3;
          break;
        case 244:
          result = 7;
          break;
        case 245:
          result = 22;
          break;
        default:
          v4 = 36;
          if (a3 == 196)
          {
            v6 = 40;
          }

          else
          {
            v6 = 58;
          }

          v7 = a3 == 195;
          goto LABEL_18;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 100:
        result = 27;
        break;
      case 101:
        result = 28;
        break;
      case 102:
        result = 29;
        break;
      case 103:
      case 108:
      case 109:
      case 110:
      case 114:
      case 115:
      case 121:
      case 122:
      case 123:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 135:
      case 136:
      case 137:
      case 142:
      case 145:
      case 148:
        return result;
      case 104:
        result = 30;
        break;
      case 105:
        result = 31;
        break;
      case 106:
        result = 32;
        break;
      case 107:
        result = 33;
        break;
      case 111:
        result = 46;
        break;
      case 112:
        result = 47;
        break;
      case 113:
        result = 48;
        break;
      case 116:
        result = 42;
        break;
      case 117:
        result = 43;
        break;
      case 118:
        result = 44;
        break;
      case 119:
        result = 49;
        break;
      case 120:
        result = 38;
        break;
      case 124:
        result = 53;
        break;
      case 125:
        result = 54;
        break;
      case 126:
        result = 55;
        break;
      case 127:
        result = 56;
        break;
      case 134:
        result = 52;
        break;
      case 138:
        result = 57;
        break;
      case 139:
        result = 50;
        break;
      case 140:
        result = 14;
        break;
      case 141:
        result = 15;
        break;
      case 143:
        result = 16;
        break;
      case 144:
        result = 17;
        break;
      case 146:
        result = 18;
        break;
      case 147:
        result = 19;
        break;
      case 149:
        result = 20;
        break;
      default:
        if (a3 == 180)
        {
          result = 34;
        }

        else
        {
          result = 58;
        }

        break;
    }
  }

  return result;
}

+ (id)socketPairMessageWithCommand:(int64_t)a3 streamID:(unsigned __int16)a4 sequenceNumber:(unsigned int)a5 messageID:(unsigned int)a6 expectsPeerResponse:(BOOL)a7 wantsAppAck:(BOOL)a8 compressPayload:(BOOL)a9 compressed:(BOOL)a10 didWakeHint:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 payload:(id)a14 protobuf:(id)a15 resourcePath:(id)a16 resourceMetadata:(id)a17 expiryDate:(id)a18
{
  v33 = a7;
  v34 = a8;
  v36 = a4;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v24 = a16;
  v25 = a17;
  v26 = a18;
  v27 = [a1 _niceToSocketCommand:a3];
  v28 = 0;
  switch(v27)
  {
    case 0u:
      v29 = IDSSocketPairDataMessage;
      goto LABEL_50;
    case 3u:
      v30 = [[IDSSocketPairProtobufMessage alloc] initWithSequenceNumber:a5 streamID:v36 expectsPeerResponse:v33 wantsAppAck:v34 compressed:a10 didWakeHint:a11 peerResponseIdentifier:v20 messageUUID:v21 expiryDate:v26 protobuf:v23];
      goto LABEL_51;
    case 6u:
      v29 = IDSSocketPairDictionaryMessage;
      goto LABEL_50;
    case 7u:
      v30 = [[IDSSocketPairAppAckMessage alloc] initWithSequenceNumber:a5 streamID:v36 peerResponseIdentifier:v20];
      goto LABEL_51;
    case 8u:
      v29 = IDSSocketPairSessionInvitationMessage;
      goto LABEL_50;
    case 9u:
      v29 = IDSSocketPairSessionAcceptMessage;
      goto LABEL_50;
    case 0xAu:
      v29 = IDSSocketPairSessionDeclineMessage;
      goto LABEL_50;
    case 0xBu:
      v29 = IDSSocketPairSessionCancelMessage;
      goto LABEL_50;
    case 0xCu:
      v29 = IDSSocketPairSessionMessage;
      goto LABEL_50;
    case 0xDu:
      v29 = IDSSocketPairSessionEndMessage;
      goto LABEL_50;
    case 0xEu:
      v29 = IDSSocketPairSMSTextMessage;
      goto LABEL_50;
    case 0xFu:
      v29 = IDSSocketPairSMSTextDownloadMessage;
      goto LABEL_50;
    case 0x10u:
      v29 = IDSSocketPairSMSOutgoing;
      goto LABEL_50;
    case 0x11u:
      v29 = IDSSocketPairSMSDownloadOutgoing;
      goto LABEL_50;
    case 0x12u:
      v29 = IDSSocketPairSMSDeliveryReceipt;
      goto LABEL_50;
    case 0x13u:
      v29 = IDSSocketPairSMSReadReceipt;
      goto LABEL_50;
    case 0x14u:
      v29 = IDSSocketPairSMSFailure;
      goto LABEL_50;
    case 0x16u:
      BYTE2(v32) = a11;
      LOWORD(v32) = __PAIR16__(a10, a9);
      v30 = [[IDSSocketPairResourceTransferSender alloc] initWithResourceAtPath:v24 metadata:v25 sequenceNumber:a5 streamID:v36 expectsPeerResponse:v33 wantsAppAck:v34 compressPayload:v32 compressed:v20 didWakeHint:v21 peerResponseIdentifier:v26 messageUUID:? expiryDate:?];
      goto LABEL_51;
    case 0x19u:
      v29 = IDSSocketPairProxyOutgoingNiceMessage;
      goto LABEL_50;
    case 0x1Au:
      v29 = IDSSocketPairProxyIncomingNiceMessage;
      goto LABEL_50;
    case 0x1Bu:
      v29 = IDSSocketPairTextMessage;
      goto LABEL_50;
    case 0x1Cu:
      v29 = IDSSocketPairDeliveryReceipt;
      goto LABEL_50;
    case 0x1Du:
      v29 = IDSSocketPairReadReceipt;
      goto LABEL_50;
    case 0x1Eu:
      v29 = IDSSocketPairAttachmentMessage;
      goto LABEL_50;
    case 0x1Fu:
      v29 = IDSSocketPairPlayedReceipt;
      goto LABEL_50;
    case 0x20u:
      v29 = IDSSocketPairSavedReceipt;
      goto LABEL_50;
    case 0x21u:
      v29 = IDSSocketPairReflectedDeliveryReceipt;
      goto LABEL_50;
    case 0x22u:
      v29 = IDSSocketPairGenericCommandMessage;
      goto LABEL_50;
    case 0x23u:
      v29 = IDSSocketPairGenericGroupMessageCommand;
      goto LABEL_50;
    case 0x24u:
      v29 = IDSSocketPairLocationShareOfferCommand;
      goto LABEL_50;
    case 0x26u:
      v29 = IDSSocketPairErrorMessage;
      goto LABEL_50;
    case 0x29u:
      v29 = IDSSocketPairSessionReinitiateMessage;
      goto LABEL_50;
    case 0x2Au:
      v29 = IDSSocketPairSyndicationAction;
      goto LABEL_50;
    case 0x2Bu:
      v29 = IDSSocketPairRetractMessage;
      goto LABEL_50;
    case 0x2Cu:
      v29 = IDSSocketPairEditMessage;
      goto LABEL_50;
    case 0x2Du:
      v29 = IDSSocketPairRecoverSyncMessage;
      goto LABEL_50;
    case 0x2Eu:
      v29 = IDSSocketPairMarkAsUnreadMessage;
      goto LABEL_50;
    case 0x2Fu:
      v29 = IDSSocketPairDeliveredQuietlyMessage;
      goto LABEL_50;
    case 0x30u:
      v29 = IDSSocketPairNotifyRecipientMessage;
      goto LABEL_50;
    case 0x31u:
      v29 = IDSSocketPairRecoverJunkMessage;
      goto LABEL_50;
    case 0x32u:
      v29 = IDSSocketPairSMSFilteringSettingsMessage;
      goto LABEL_50;
    case 0x33u:
      v29 = IDSSocketPairDeleteSyncMessage;
      goto LABEL_50;
    case 0x34u:
      v29 = IDSSocketPairScheduledMessageUpdate;
      goto LABEL_50;
    case 0x35u:
      v29 = IDSSocketPairAcceptChat;
      goto LABEL_50;
    case 0x36u:
      v29 = IDSSocketPairJunkChat;
      goto LABEL_50;
    case 0x37u:
      v29 = IDSSocketPairPriorityMessage;
      goto LABEL_50;
    case 0x38u:
      v29 = IDSSocketPairMarkAsReviewed;
      goto LABEL_50;
    case 0x39u:
      v29 = IDSSocketPairTranscriptBackground;
LABEL_50:
      v30 = [[v29 alloc] initWithSequenceNumber:a5 streamID:v36 expectsPeerResponse:v33 wantsAppAck:v34 compressed:a10 didWakeHint:a11 peerResponseIdentifier:v20 messageUUID:v21 data:v22 expiryDate:v26];
LABEL_51:
      v28 = v30;
      break;
    default:
      break;
  }

  return v28;
}

@end