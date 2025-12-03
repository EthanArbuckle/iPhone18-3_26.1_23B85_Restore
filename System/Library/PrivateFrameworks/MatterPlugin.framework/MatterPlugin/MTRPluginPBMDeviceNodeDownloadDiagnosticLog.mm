@interface MTRPluginPBMDeviceNodeDownloadDiagnosticLog
+ (id)deviceNodeDownloadDiagnosticLogMessageFromMessage:(id)message;
+ (id)deviceNodeDownloadDiagnosticLogOfType:(int64_t)type timeout:(double)timeout nodeID:(id)d;
+ (id)urlFromResponsePayload:(id)payload error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLogType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDeviceNodeDownloadDiagnosticLog

+ (id)deviceNodeDownloadDiagnosticLogMessageFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v4 initWithData:messageData];
  if ([(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceNodeDownloadDiagnosticLogOfType:(int64_t)type timeout:(double)timeout nodeID:(id)d
{
  dCopy = d;
  v8 = objc_alloc_init(MTRPluginPBMDeviceNodeDownloadDiagnosticLog);
  v9 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:dCopy];

  [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v8 setNode:v9];
  [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v8 setLogType:type];
  [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v8 setTimeoutInterval:timeout];

  return v8;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self hasHeader])
  {
    return 0;
  }

  header = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self header];
  if ([header isValid] && -[MTRPluginPBMDeviceNodeDownloadDiagnosticLog hasNode](self, "hasNode"))
  {
    node = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self node];
    if ([node isValid])
    {
      hasLogType = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self hasLogType];
    }

    else
    {
      hasLogType = 0;
    }
  }

  else
  {
    hasLogType = 0;
  }

  return hasLogType;
}

+ (id)urlFromResponsePayload:(id)payload error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:payload];
  object = [v6 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [v6 object];

    if (object2)
    {
      v9 = NSTemporaryDirectory();
      v10 = [v9 stringByAppendingPathComponent:@"com.apple.homed"];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v37[0] = 0;
      v12 = [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:v37];
      v13 = v37[0];

      if (v12)
      {
        v14 = v10;
      }

      else
      {
        v17 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) *)v17 urlFromResponsePayload:v10 error:v13];
        }

        v14 = 0;
      }

      v18 = [v14 stringByAppendingString:@"/Matter/DiagnosticLog/"];
      v36 = *MEMORY[0x277CCA180];
      v37[0] = &unk_28697C6C0;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v35 = 0;
      if ([defaultManager2 fileExistsAtPath:v18 isDirectory:&v35])
      {
        v21 = 0;
        if ((v35 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v34 = 0;
        v22 = [defaultManager2 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:v19 error:&v34];
        v21 = v34;
        v35 = v22;
        if (!v22)
        {
LABEL_16:
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
          {
            +[MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) urlFromResponsePayload:error:];
          }

          goto LABEL_20;
        }
      }

      v33 = v21;
      [defaultManager2 setAttributes:v19 ofItemAtPath:v18 error:&v33];
      v23 = v33;

      v21 = v23;
LABEL_20:
      v24 = v35;

      if (v24 == 1)
      {
        v25 = v18;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v28 = [v25 stringByAppendingString:uUIDString];

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        if ([defaultManager3 createFileAtPath:v28 contents:object2 attributes:0])
        {
          v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v28];
        }

        else if (error)
        {
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
          {
            +[MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) urlFromResponsePayload:error:];
          }

          [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1011 userInfo:0];
          *error = v16 = 0;
        }

        else
        {
          v16 = 0;
        }
      }

      else if (error)
      {
        v30 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) urlFromResponsePayload:self error:v30];
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1011 userInfo:0];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_38;
    }
  }

  else
  {
  }

  if (error)
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) urlFromResponsePayload:self error:v15];
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1008 userInfo:0];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_38:

  v31 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)setHasLogType:(BOOL)type
{
  if (type)
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
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MTRPluginPBMDeviceNodeDownloadDiagnosticLog;
  v5 = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)&v9 description];
  dictionaryRepresentation = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self dictionaryRepresentation];
  v7 = [v4 stringWithFormat:@"%@ %@", v5, dictionaryRepresentation];

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  node = self->_node;
  if (node)
  {
    dictionaryRepresentation2 = [(MTRPluginPBMDeviceNode *)node dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"node"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_logType];
    [dictionary setObject:v9 forKey:@"logType"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeoutInterval];
    [dictionary setObject:v10 forKey:@"timeoutInterval"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    logType = self->_logType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    timeoutInterval = self->_timeoutInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v6;
  }

  if (self->_node)
  {
    [v6 setNode:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_logType;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timeoutInterval;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_logType;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_timeoutInterval;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_15;
    }
  }

  node = self->_node;
  if (node | *(equalCopy + 4))
  {
    if (![(MTRPluginPBMDeviceNode *)node isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_logType != *(equalCopy + 6))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timeoutInterval != *(equalCopy + 1))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginPBMHeader *)self->_header hash];
  v4 = [(MTRPluginPBMDeviceNode *)self->_node hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_logType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    return v4 ^ v3 ^ v7 ^ v11;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timeoutInterval = self->_timeoutInterval;
  if (timeoutInterval < 0.0)
  {
    timeoutInterval = -timeoutInterval;
  }

  *v5.i64 = floor(timeoutInterval + 0.5);
  v9 = (timeoutInterval - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 2);
  v10 = fromCopy;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self setHeader:?];
  }

  fromCopy = v10;
LABEL_7:
  node = self->_node;
  v8 = *(fromCopy + 4);
  if (node)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMDeviceNode *)node mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self setNode:?];
  }

  fromCopy = v10;
LABEL_13:
  v9 = *(fromCopy + 40);
  if ((v9 & 2) != 0)
  {
    self->_logType = *(fromCopy + 6);
    *&self->_has |= 2u;
    v9 = *(fromCopy + 40);
  }

  if (v9)
  {
    self->_timeoutInterval = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end