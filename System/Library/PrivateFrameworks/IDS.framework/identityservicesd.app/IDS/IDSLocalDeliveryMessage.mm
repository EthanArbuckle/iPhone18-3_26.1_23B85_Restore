@interface IDSLocalDeliveryMessage
+ (id)socketPairMessageWithCommand:(int64_t)command streamID:(unsigned __int16)d sequenceNumber:(unsigned int)number messageID:(unsigned int)iD expectsPeerResponse:(BOOL)response wantsAppAck:(BOOL)ack compressPayload:(BOOL)payload compressed:(BOOL)self0 didWakeHint:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 payload:(id)self4 protobuf:(id)self5 resourcePath:(id)self6 resourceMetadata:(id)self7 expiryDate:(id)self8;
+ (unsigned)_niceToSocketCommand:(int64_t)command;
- (IDSLocalDeliveryMessage)init;
- (id)socketPairMessage;
- (void)kickProgressBlock;
- (void)setCompletionBlock:(id)block;
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
      expirationDate = [(IDSLocalDeliveryMessage *)self expirationDate];
    }

    else
    {
      expirationDate = 0;
    }

    v23 = objc_opt_class();
    command = [(IDSLocalDeliveryMessage *)self command];
    integerValue = [command integerValue];
    domainHash = [(IDSLocalDeliveryMessage *)self domainHash];
    unsignedShortValue = [domainHash unsignedShortValue];
    messageID = [(IDSLocalDeliveryMessage *)self messageID];
    messageID2 = [(IDSLocalDeliveryMessage *)self messageID];
    expectsPeerResponse = self->_expectsPeerResponse;
    v19 = messageID2;
    v16 = *&self->_compressPayload;
    wantsAppAck = self->_wantsAppAck;
    didWakeHint = self->_didWakeHint;
    peerResponseIdentifier = self->_peerResponseIdentifier;
    messageUUID = self->_messageUUID;
    payload = [(IDSLocalDeliveryMessage *)self payload];
    protobuf = [(IDSLocalDeliveryMessage *)self protobuf];
    resourcePath = [(IDSLocalDeliveryMessage *)self resourcePath];
    resourceMetadata = [(IDSLocalDeliveryMessage *)self resourceMetadata];
    BYTE2(v15) = didWakeHint;
    LOWORD(v15) = v16;
    v5 = [v23 socketPairMessageWithCommand:integerValue streamID:unsignedShortValue sequenceNumber:messageID messageID:v19 expectsPeerResponse:expectsPeerResponse wantsAppAck:wantsAppAck compressPayload:v15 compressed:peerResponseIdentifier didWakeHint:messageUUID peerResponseIdentifier:payload messageUUID:protobuf payload:resourcePath protobuf:resourceMetadata resourcePath:expirationDate resourceMetadata:? expiryDate:?];

    [(IDSSocketPairMessage *)v5 setContext:self];
    objc_storeStrong(p_underlyingSocketPairMessage, v5);
  }

  return v5;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  if (blockCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004C6534;
    v8[3] = &unk_100BDE528;
    v9 = blockCopy;
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

+ (unsigned)_niceToSocketCommand:(int64_t)command
{
  result = 58;
  if (command > 180)
  {
    if (command <= 194)
    {
      v4 = 51;
      if (command == 190)
      {
        v5 = 35;
      }

      else
      {
        v5 = 58;
      }

      if (command == 182)
      {
        v6 = 45;
      }

      else
      {
        v6 = v5;
      }

      v7 = command == 181;
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
      switch(command)
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
          if (command == 196)
          {
            v6 = 40;
          }

          else
          {
            v6 = 58;
          }

          v7 = command == 195;
          goto LABEL_18;
      }
    }
  }

  else
  {
    switch(command)
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
        if (command == 180)
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

+ (id)socketPairMessageWithCommand:(int64_t)command streamID:(unsigned __int16)d sequenceNumber:(unsigned int)number messageID:(unsigned int)iD expectsPeerResponse:(BOOL)response wantsAppAck:(BOOL)ack compressPayload:(BOOL)payload compressed:(BOOL)self0 didWakeHint:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 payload:(id)self4 protobuf:(id)self5 resourcePath:(id)self6 resourceMetadata:(id)self7 expiryDate:(id)self8
{
  responseCopy = response;
  ackCopy = ack;
  dCopy = d;
  identifierCopy = identifier;
  uIDCopy = uID;
  v22 = a14;
  protobufCopy = protobuf;
  pathCopy = path;
  metadataCopy = metadata;
  dateCopy = date;
  v27 = [self _niceToSocketCommand:command];
  v28 = 0;
  switch(v27)
  {
    case 0u:
      v29 = IDSSocketPairDataMessage;
      goto LABEL_50;
    case 3u:
      v30 = [[IDSSocketPairProtobufMessage alloc] initWithSequenceNumber:number streamID:dCopy expectsPeerResponse:responseCopy wantsAppAck:ackCopy compressed:compressed didWakeHint:hint peerResponseIdentifier:identifierCopy messageUUID:uIDCopy expiryDate:dateCopy protobuf:protobufCopy];
      goto LABEL_51;
    case 6u:
      v29 = IDSSocketPairDictionaryMessage;
      goto LABEL_50;
    case 7u:
      v30 = [[IDSSocketPairAppAckMessage alloc] initWithSequenceNumber:number streamID:dCopy peerResponseIdentifier:identifierCopy];
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
      BYTE2(v32) = hint;
      LOWORD(v32) = __PAIR16__(compressed, payload);
      v30 = [[IDSSocketPairResourceTransferSender alloc] initWithResourceAtPath:pathCopy metadata:metadataCopy sequenceNumber:number streamID:dCopy expectsPeerResponse:responseCopy wantsAppAck:ackCopy compressPayload:v32 compressed:identifierCopy didWakeHint:uIDCopy peerResponseIdentifier:dateCopy messageUUID:? expiryDate:?];
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
      v30 = [[v29 alloc] initWithSequenceNumber:number streamID:dCopy expectsPeerResponse:responseCopy wantsAppAck:ackCopy compressed:compressed didWakeHint:hint peerResponseIdentifier:identifierCopy messageUUID:uIDCopy data:v22 expiryDate:dateCopy];
LABEL_51:
      v28 = v30;
      break;
    default:
      break;
  }

  return v28;
}

@end