@interface NMMessage
- (BOOL)decompressArguments;
- (BOOL)isEqual:(id)equal;
- (id)argumentForTag:(int)tag;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)shortDebugDescription;
- (int)StringAsPriority:(id)priority;
- (int)StringAsType:(id)type;
- (int)priority;
- (int)type;
- (int64_t)IDSMessagePriority;
- (unint64_t)hash;
- (void)addArgument:(id)argument;
- (void)addCompressedArgument:(id)argument;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPriority:(BOOL)priority;
- (void)setHasSentTimestamp:(BOOL)timestamp;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NMMessage

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (id)shortDebugDescription
{
  v3 = [NMMessageLogger shortDebugDescriptionForMessage:self];
  v4 = [NSString stringWithFormat:@"<%p: %@>", self, v3];

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FETCH_TILES"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CANCEL_TILES"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"REPORT_CORRUPT_TILE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"FETCHED_TILE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"START_INITIAL_SYNC"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"FETCH_CURRENT_COUNTRY_CODE"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"FETCH_EXPERIMENTS_CONFIG"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"DID_CHANGE_EXPERIMENTS_CONFIG"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"SYNC_UP_NEXT_ITEMS"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"REQUEST_UP_NEXT_ITEMS"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"SYNC_CONFIG_STORE"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"CHECKIN_WITH_CONFIG_STORE"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"REQUEST_ANALYTIC_IDENTIFIERS"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"CHECKIN_WITH_SUBSCRIPTION_INFO"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"SYNC_SUBSCRIPTION_INFO"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"UPDATE_SUBSCRIPTION_STATE"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"START_STOP_SUBSCRIPTION_DOWNLOAD"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY"])
  {
    v4 = 65;
  }

  else if ([typeCopy isEqualToString:@"SET_SUBSCRIPTION_STATE_SUMMARY"])
  {
    v4 = 66;
  }

  else if ([typeCopy isEqualToString:@"SET_SUBSCRIPTION_SHOULD_SYNC"])
  {
    v4 = 67;
  }

  else if ([typeCopy isEqualToString:@"CHECKIN_WITH_TILE_GROUP"])
  {
    v4 = 100;
  }

  else if ([typeCopy isEqualToString:@"FORCE_UPDATE_MANIFEST"])
  {
    v4 = 101;
  }

  else if ([typeCopy isEqualToString:@"DID_CHANGE_ACTIVE_TILE_GROUP"])
  {
    v4 = 102;
  }

  else if ([typeCopy isEqualToString:@"FETCH_RESOURCE"])
  {
    v4 = 103;
  }

  else if ([typeCopy isEqualToString:@"START_LOCATION_UPDATE"])
  {
    v4 = 200;
  }

  else if ([typeCopy isEqualToString:@"STOP_LOCATION_UPDATE"])
  {
    v4 = 201;
  }

  else if ([typeCopy isEqualToString:@"UPDATED_LOCATION"])
  {
    v4 = 202;
  }

  else if ([typeCopy isEqualToString:@"FAILED_TO_UPDATE_LOCATION"])
  {
    v4 = 203;
  }

  else if ([typeCopy isEqualToString:@"DID_PAUSE_LOCATION_UPDATES"])
  {
    v4 = 204;
  }

  else if ([typeCopy isEqualToString:@"DID_RESUME_LOCATION_UPDATES"])
  {
    v4 = 205;
  }

  else if ([typeCopy isEqualToString:@"APPLY_LOCATION_AUTHORIZATION"])
  {
    v4 = 206;
  }

  else if ([typeCopy isEqualToString:@"UPDATE_NAV_ROUTE_DETAILS"])
  {
    v4 = 300;
  }

  else if ([typeCopy isEqualToString:@"UPDATE_NAV_ROUTE_STATUS"])
  {
    v4 = 301;
  }

  else if ([typeCopy isEqualToString:@"START_NAV"])
  {
    v4 = 302;
  }

  else if ([typeCopy isEqualToString:@"STOP_NAV"])
  {
    v4 = 303;
  }

  else if ([typeCopy isEqualToString:@"PREVIEW_NAV"])
  {
    v4 = 304;
  }

  else if ([typeCopy isEqualToString:@"CLEAR_NAV_PREVIEW"])
  {
    v4 = 305;
  }

  else if ([typeCopy isEqualToString:@"SET_WANTS_ALL_NAV_STATUS_UPDATES"])
  {
    v4 = 306;
  }

  else if ([typeCopy isEqualToString:@"DISMISS_NAV_SAFETY_ALERT"])
  {
    v4 = 307;
  }

  else if ([typeCopy isEqualToString:@"AVAILABLE_ROUTE"])
  {
    v4 = 308;
  }

  else if ([typeCopy isEqualToString:@"SELECTED_ROUTE"])
  {
    v4 = 309;
  }

  else if ([typeCopy isEqualToString:@"REQUEST_NAVIGATION_UPDATE"])
  {
    v4 = 310;
  }

  else if ([typeCopy isEqualToString:@"UPDATE_NAV_ROUTE_UPDATE"])
  {
    v4 = 311;
  }

  else if ([typeCopy isEqualToString:@"AVAILABLE_ROUTE_UPDATE"])
  {
    v4 = 312;
  }

  else if ([typeCopy isEqualToString:@"PAUSE_NAV"])
  {
    v4 = 313;
  }

  else if ([typeCopy isEqualToString:@"RESUME_NAV"])
  {
    v4 = 314;
  }

  else if ([typeCopy isEqualToString:@"SET_DISPLAYED_STEP"])
  {
    v4 = 315;
  }

  else if ([typeCopy isEqualToString:@"OPEN_URL"])
  {
    v4 = 401;
  }

  else if ([typeCopy isEqualToString:@"PLACE_DATA_MUID_LOOKUP"])
  {
    v4 = 500;
  }

  else if ([typeCopy isEqualToString:@"PLACE_DATA_IDENTIFIER_LOOKUP"])
  {
    v4 = 501;
  }

  else if ([typeCopy isEqualToString:@"SERVICE_REQUEST"])
  {
    v4 = 502;
  }

  else if ([typeCopy isEqualToString:@"FETCH_ROUTE_GENIUS"])
  {
    v4 = 600;
  }

  else if ([typeCopy isEqualToString:@"PING"])
  {
    v4 = 1000;
  }

  else if ([typeCopy isEqualToString:@"DEBUG_FETCH_CONFIGURATION_INFO"])
  {
    v4 = 1500;
  }

  else if ([typeCopy isEqualToString:@"DEBUG_FETCH_DIAGNOSTICS_STRING"])
  {
    v4 = 1501;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addArgument:(id)argument
{
  argumentCopy = argument;
  arguments = self->_arguments;
  v8 = argumentCopy;
  if (!arguments)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_arguments;
    self->_arguments = v6;

    argumentCopy = v8;
    arguments = self->_arguments;
  }

  [(NSMutableArray *)arguments addObject:argumentCopy];
}

- (void)addCompressedArgument:(id)argument
{
  argumentCopy = argument;
  compressedArguments = self->_compressedArguments;
  v8 = argumentCopy;
  if (!compressedArguments)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_compressedArguments;
    self->_compressedArguments = v6;

    argumentCopy = v8;
    compressedArguments = self->_compressedArguments;
  }

  [(NSMutableArray *)compressedArguments addObject:argumentCopy];
}

- (int)priority
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_priority;
  }

  else
  {
    return 100;
  }
}

- (void)setHasPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPriority:(id)priority
{
  priorityCopy = priority;
  if ([priorityCopy isEqualToString:@"Sync"])
  {
    v4 = 100;
  }

  else if ([priorityCopy isEqualToString:@"Default"])
  {
    v4 = 200;
  }

  else if ([priorityCopy isEqualToString:@"Urgent"])
  {
    v4 = 300;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (void)setHasSentTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NMMessage;
  v3 = [(NMMessage *)&v7 description];
  dictionaryRepresentation = [(NMMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 8) != 0)
  {
    type = self->_type;
    if (type > 202)
    {
      if (type <= 400)
      {
        if (type <= 205)
        {
          if (type == 203)
          {
            v5 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (type == 204)
          {
            v5 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v5 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(type)
          {
            case 300:
              v5 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v5 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v5 = @"START_NAV";
              break;
            case 303:
              v5 = @"STOP_NAV";
              break;
            case 304:
              v5 = @"PREVIEW_NAV";
              break;
            case 305:
              v5 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v5 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v5 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v5 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v5 = @"SELECTED_ROUTE";
              break;
            case 310:
              v5 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v5 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v5 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v5 = @"PAUSE_NAV";
              break;
            case 314:
              v5 = @"RESUME_NAV";
              break;
            case 315:
              v5 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (type != 206)
              {
                goto LABEL_51;
              }

              v5 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_91;
      }

      if (type > 599)
      {
        if (type > 1499)
        {
          if (type == 1500)
          {
            v5 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_91;
          }

          if (type == 1501)
          {
            v5 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_91;
          }
        }

        else
        {
          if (type == 600)
          {
            v5 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_91;
          }

          if (type == 1000)
          {
            v5 = @"PING";
            goto LABEL_91;
          }
        }

        goto LABEL_51;
      }

      if (type > 500)
      {
        if (type == 501)
        {
          v5 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_91;
        }

        if (type == 502)
        {
          v5 = @"SERVICE_REQUEST";
          goto LABEL_91;
        }

        goto LABEL_51;
      }

      if (type == 401)
      {
        v5 = @"OPEN_URL";
        goto LABEL_91;
      }

      if (type != 500)
      {
        goto LABEL_51;
      }

      v5 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (type <= 99)
      {
        if (type > 3)
        {
          switch(type)
          {
            case '2':
              v5 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v5 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v5 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v5 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v5 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v5 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v5 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v5 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v5 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v5 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v5 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v5 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_51;
            case '?':
              v5 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v5 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v5 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v5 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v5 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (type != 4)
              {
                goto LABEL_51;
              }

              v5 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_91;
        }

        switch(type)
        {
          case 1:
            v5 = @"FETCH_TILES";
            goto LABEL_91;
          case 2:
            v5 = @"CANCEL_TILES";
            goto LABEL_91;
          case 3:
            v5 = @"REPORT_CORRUPT_TILE";
            goto LABEL_91;
        }

LABEL_51:
        v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
        goto LABEL_91;
      }

      if (type <= 102)
      {
        if (type == 100)
        {
          v5 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v5 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v5 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_91;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v5 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v5 = @"UPDATED_LOCATION";
        }

        goto LABEL_91;
      }

      if (type == 103)
      {
        v5 = @"FETCH_RESOURCE";
        goto LABEL_91;
      }

      if (type != 200)
      {
        goto LABEL_51;
      }

      v5 = @"START_LOCATION_UPDATE";
    }

LABEL_91:
    [v3 setObject:v5 forKey:@"type"];
  }

  if ([(NSMutableArray *)self->_arguments count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_arguments, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = self->_arguments;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"argument"];
  }

  if ([(NSMutableArray *)self->_compressedArguments count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_compressedArguments, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_compressedArguments;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"compressedArgument"];
  }

  senderUUID = self->_senderUUID;
  if (senderUUID)
  {
    [v3 setObject:senderUUID forKey:@"senderUUID"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    priority = self->_priority;
    switch(priority)
    {
      case 100:
        v23 = @"Sync";
        break;
      case 300:
        v23 = @"Urgent";
        break;
      case 200:
        v23 = @"Default";
        break;
      default:
        v23 = [NSString stringWithFormat:@"(unknown: %i)", self->_priority];
        break;
    }

    [v3 setObject:v23 forKey:@"priority"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v24 = [NSNumber numberWithDouble:self->_sentTimestamp];
    [v3 setObject:v24 forKey:@"sentTimestamp"];

    has = self->_has;
  }

  if (has)
  {
    v25 = [NSNumber numberWithDouble:self->_enqueuedTimeInterval];
    [v3 setObject:v25 forKey:@"enqueuedTimeInterval"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_arguments;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_compressedArguments;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  if (self->_senderUUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:
    sentTimestamp = self->_sentTimestamp;
    PBDataWriterWriteDoubleField();
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  priority = self->_priority;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (has)
  {
LABEL_22:
    enqueuedTimeInterval = self->_enqueuedTimeInterval;
    PBDataWriterWriteDoubleField();
  }

LABEL_23:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    toCopy[14] = self->_type;
    *(toCopy + 60) |= 8u;
  }

  v14 = toCopy;
  if ([(NMMessage *)self argumentsCount])
  {
    [v14 clearArguments];
    argumentsCount = [(NMMessage *)self argumentsCount];
    if (argumentsCount)
    {
      v6 = argumentsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NMMessage *)self argumentAtIndex:i];
        [v14 addArgument:v8];
      }
    }
  }

  if ([(NMMessage *)self compressedArgumentsCount])
  {
    [v14 clearCompressedArguments];
    compressedArgumentsCount = [(NMMessage *)self compressedArgumentsCount];
    if (compressedArgumentsCount)
    {
      v10 = compressedArgumentsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NMMessage *)self compressedArgumentAtIndex:j];
        [v14 addCompressedArgument:v12];
      }
    }
  }

  if (self->_senderUUID)
  {
    [v14 setSenderUUID:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v14 + 10) = self->_priority;
    *(v14 + 60) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_15:
      if ((has & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

  *(v14 + 2) = *&self->_sentTimestamp;
  *(v14 + 60) |= 2u;
  if (*&self->_has)
  {
LABEL_16:
    *(v14 + 1) = *&self->_enqueuedTimeInterval;
    *(v14 + 60) |= 1u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    v5[14] = self->_type;
    *(v5 + 60) |= 8u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_arguments;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) copyWithZone:zone];
        [v6 addArgument:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_compressedArguments;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v23 + 1) + 8 * j) copyWithZone:{zone, v23}];
        [v6 addCompressedArgument:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = [(NSString *)self->_senderUUID copyWithZone:zone];
  v20 = *(v6 + 6);
  *(v6 + 6) = v19;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    *(v6 + 2) = *&self->_sentTimestamp;
    *(v6 + 60) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v6;
    }

    goto LABEL_20;
  }

  *(v6 + 10) = self->_priority;
  *(v6 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (has)
  {
LABEL_20:
    *(v6 + 1) = *&self->_enqueuedTimeInterval;
    *(v6 + 60) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = *(equalCopy + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_type != *(equalCopy + 14))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
LABEL_27:
    v9 = 0;
    goto LABEL_28;
  }

  arguments = self->_arguments;
  if (arguments | *(equalCopy + 3) && ![(NSMutableArray *)arguments isEqual:?])
  {
    goto LABEL_27;
  }

  compressedArguments = self->_compressedArguments;
  if (compressedArguments | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)compressedArguments isEqual:?])
    {
      goto LABEL_27;
    }
  }

  senderUUID = self->_senderUUID;
  if (senderUUID | *(equalCopy + 6))
  {
    if (![(NSString *)senderUUID isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_priority != *(equalCopy + 10))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_sentTimestamp != *(equalCopy + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_27;
  }

  v9 = (*(equalCopy + 60) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_enqueuedTimeInterval != *(equalCopy + 1))
    {
      goto LABEL_27;
    }

    v9 = 1;
  }

LABEL_28:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_arguments hash];
  v5 = [(NSMutableArray *)self->_compressedArguments hash];
  v6 = [(NSString *)self->_senderUUID hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_priority;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  sentTimestamp = self->_sentTimestamp;
  if (sentTimestamp < 0.0)
  {
    sentTimestamp = -sentTimestamp;
  }

  *v7.i64 = floor(sentTimestamp + 0.5);
  v11 = (sentTimestamp - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v7 = vbslq_s8(vnegq_f64(v12), v8, v7);
  v13 = 2654435761u * *v7.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_12:
  if (*&self->_has)
  {
    enqueuedTimeInterval = self->_enqueuedTimeInterval;
    if (enqueuedTimeInterval < 0.0)
    {
      enqueuedTimeInterval = -enqueuedTimeInterval;
    }

    *v7.i64 = floor(enqueuedTimeInterval + 0.5);
    v16 = (enqueuedTimeInterval - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v8, v7).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((*(fromCopy + 60) & 8) != 0)
  {
    self->_type = *(fromCopy + 14);
    *&self->_has |= 8u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(fromCopy + 3);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NMMessage *)self addArgument:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v5 + 4);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NMMessage *)self addCompressedArgument:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  if (*(v5 + 6))
  {
    [(NMMessage *)self setSenderUUID:?];
  }

  v16 = *(v5 + 60);
  if ((v16 & 4) == 0)
  {
    if ((*(v5 + 60) & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:
    self->_sentTimestamp = *(v5 + 2);
    *&self->_has |= 2u;
    if ((*(v5 + 60) & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  self->_priority = *(v5 + 10);
  *&self->_has |= 4u;
  v16 = *(v5 + 60);
  if ((v16 & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (v16)
  {
LABEL_22:
    self->_enqueuedTimeInterval = *(v5 + 1);
    *&self->_has |= 1u;
  }

LABEL_23:
}

- (int64_t)IDSMessagePriority
{
  if (![(NMMessage *)self hasPriority])
  {
    return 200;
  }

  priority = [(NMMessage *)self priority];
  v4 = 200;
  if (priority == 300)
  {
    v4 = 300;
  }

  if (priority == 100)
  {
    return 100;
  }

  else
  {
    return v4;
  }
}

- (id)argumentForTag:(int)tag
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  arguments = [(NMMessage *)self arguments];
  v5 = [arguments countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(arguments);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 tag] == tag)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [arguments countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)decompressArguments
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  compressedArguments = [(NMMessage *)self compressedArguments];
  v4 = [compressedArguments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(compressedArguments);
        }

        _nm_uncompressedArgument = [*(*(&v11 + 1) + 8 * v7) _nm_uncompressedArgument];
        if (!_nm_uncompressedArgument)
        {

          return 0;
        }

        v9 = _nm_uncompressedArgument;
        [(NMMessage *)self addArgument:_nm_uncompressedArgument];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [compressedArguments countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [(NMMessage *)self clearCompressedArguments];
  return 1;
}

@end