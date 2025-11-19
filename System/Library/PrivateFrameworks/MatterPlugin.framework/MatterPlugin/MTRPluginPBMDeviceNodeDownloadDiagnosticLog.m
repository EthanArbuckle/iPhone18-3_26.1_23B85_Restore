@interface MTRPluginPBMDeviceNodeDownloadDiagnosticLog
+ (id)deviceNodeDownloadDiagnosticLogMessageFromMessage:(id)a3;
+ (id)deviceNodeDownloadDiagnosticLogOfType:(int64_t)a3 timeout:(double)a4 nodeID:(id)a5;
+ (id)urlFromResponsePayload:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLogType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNodeDownloadDiagnosticLog

+ (id)deviceNodeDownloadDiagnosticLogMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v4 initWithData:v5];
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

+ (id)deviceNodeDownloadDiagnosticLogOfType:(int64_t)a3 timeout:(double)a4 nodeID:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(MTRPluginPBMDeviceNodeDownloadDiagnosticLog);
  v9 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:v7];

  [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v8 setNode:v9];
  [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v8 setLogType:a3];
  [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)v8 setTimeoutInterval:a4];

  return v8;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self hasHeader])
  {
    return 0;
  }

  v3 = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self header];
  if ([v3 isValid] && -[MTRPluginPBMDeviceNodeDownloadDiagnosticLog hasNode](self, "hasNode"))
  {
    v4 = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self node];
    if ([v4 isValid])
    {
      v5 = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self hasLogType];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)urlFromResponsePayload:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a3];
  v7 = [v6 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 object];

    if (v8)
    {
      v9 = NSTemporaryDirectory();
      v10 = [v9 stringByAppendingPathComponent:@"com.apple.homed"];

      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v37[0] = 0;
      v12 = [v11 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:v37];
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
      v20 = [MEMORY[0x277CCAA00] defaultManager];
      v35 = 0;
      if ([v20 fileExistsAtPath:v18 isDirectory:&v35])
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
        v22 = [v20 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:v19 error:&v34];
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
      [v20 setAttributes:v19 ofItemAtPath:v18 error:&v33];
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
        v26 = [MEMORY[0x277CCAD78] UUID];
        v27 = [v26 UUIDString];
        v28 = [v25 stringByAppendingString:v27];

        v29 = [MEMORY[0x277CCAA00] defaultManager];
        if ([v29 createFileAtPath:v28 contents:v8 attributes:0])
        {
          v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v28];
        }

        else if (a4)
        {
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
          {
            +[MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) urlFromResponsePayload:error:];
          }

          [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1011 userInfo:0];
          *a4 = v16 = 0;
        }

        else
        {
          v16 = 0;
        }
      }

      else if (a4)
      {
        v30 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          [MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) urlFromResponsePayload:a1 error:v30];
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1011 userInfo:0];
        *a4 = v16 = 0;
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

  if (a4)
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers) urlFromResponsePayload:a1 error:v15];
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1008 userInfo:0];
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_38:

  v31 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)setHasLogType:(BOOL)a3
{
  if (a3)
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
  v6 = [(MTRPluginPBMDeviceNodeDownloadDiagnosticLog *)self dictionaryRepresentation];
  v7 = [v4 stringWithFormat:@"%@ %@", v5, v6];

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  node = self->_node;
  if (node)
  {
    v7 = [(MTRPluginPBMDeviceNode *)node dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"node"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_logType];
    [v3 setObject:v9 forKey:@"logType"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeoutInterval];
    [v3 setObject:v10 forKey:@"timeoutInterval"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    logType = self->_logType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    timeoutInterval = self->_timeoutInterval;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v6;
  }

  if (self->_node)
  {
    [v6 setNode:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_logType;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_timeoutInterval;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_15;
    }
  }

  node = self->_node;
  if (node | *(v4 + 4))
  {
    if (![(MTRPluginPBMDeviceNode *)node isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_logType != *(v4 + 6))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_timeoutInterval != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = *(v4 + 2);
  v10 = v4;
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

  v4 = v10;
LABEL_7:
  node = self->_node;
  v8 = *(v4 + 4);
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

  v4 = v10;
LABEL_13:
  v9 = *(v4 + 40);
  if ((v9 & 2) != 0)
  {
    self->_logType = *(v4 + 6);
    *&self->_has |= 2u;
    v9 = *(v4 + 40);
  }

  if (v9)
  {
    self->_timeoutInterval = *(v4 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end