@interface _OSLogDeserializedEventProxy
- ($8814E4F230000EB768D7E307C62B5F7C)lossCount;
- (const)processImageUUIDBytes;
- (const)senderImageUUIDBytes;
- (id)_frameForDict:(id)a3;
- (id)backtrace;
- (id)bootUUID;
- (id)category;
- (id)composedMessage;
- (id)date;
- (id)decomposedMessage;
- (id)formatString;
- (id)metricData;
- (id)metricDimensions;
- (id)metricLabel;
- (id)metricMetadata;
- (id)process;
- (id)processImagePath;
- (id)processImageUUID;
- (id)sender;
- (id)senderImagePath;
- (id)senderImageUUID;
- (id)signpostName;
- (id)subsystem;
- (id)timeZone;
- (int)processIdentifier;
- (timeval)lossEndUnixDate;
- (timeval)lossStartUnixDate;
- (timeval)unixDate;
- (timezone)lossEndUnixTimeZone;
- (timezone)lossStartUnixTimeZone;
- (timezone)unixTimeZone;
- (unint64_t)activityIdentifier;
- (unint64_t)continuousNanosecondsSinceBoot;
- (unint64_t)creatorActivityIdentifier;
- (unint64_t)creatorProcessUniqueIdentifier;
- (unint64_t)logType;
- (unint64_t)lossEndMachContinuousTimestamp;
- (unint64_t)lossStartMachContinuousTimestamp;
- (unint64_t)machContinuousTimestamp;
- (unint64_t)parentActivityIdentifier;
- (unint64_t)senderImageOffset;
- (unint64_t)signpostIdentifier;
- (unint64_t)signpostScope;
- (unint64_t)signpostType;
- (unint64_t)size;
- (unint64_t)threadIdentifier;
- (unint64_t)timeToLive;
- (unint64_t)traceIdentifier;
- (unint64_t)transitionActivityIdentifier;
- (unint64_t)type;
- (void)_populate_timeval:(timeval *)a3 withDict:(id)a4;
- (void)_populate_timezone:(timezone *)a3 withDict:(id)a4;
- (void)_resetNeedsLookup;
- (void)setCurEventDictionary:(id)a3;
@end

@implementation _OSLogDeserializedEventProxy

- (id)decomposedMessage
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 1536 || [(_OSLogDeserializedEventProxy *)self type]== 1024 || [(_OSLogDeserializedEventProxy *)self type]== 768)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"dm"];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = objc_opt_class();
        [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1150 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
      }

      v6 = [OSLogDeserializedEventDecomposedMessage alloc];
      v7 = [(_OSLogDeserializedEventProxy *)self metadata];
      v8 = [(OSLogDeserializedEventDecomposedMessage *)v6 initWithDict:v5 metadata:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)backtrace
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"bt"];

  v6 = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      v21 = objc_opt_class();
      [v20 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1123 description:{@"Unexpected class: %@. Expected: %@", v21, objc_opt_class()}];
    }

    v23 = a2;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = [MEMORY[0x277CCA890] currentHandler];
            v22 = objc_opt_class();
            [v14 handleFailureInMethod:v23 object:self file:@"EventSerializer.m" lineNumber:1125 description:{@"Unexpected class: %@. Expected: %@", v22, objc_opt_class()}];
          }

          v13 = [(_OSLogDeserializedEventProxy *)self _frameForDict:v12];
          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v15 = [(_OSLogDeserializedEventProxy *)self senderImageUUIDBytes];
    if (v15)
    {
      v16 = [[OSLogEventBacktraceFrame alloc] initWithUUIDBytes:v15 andOffset:[(_OSLogDeserializedEventProxy *)self senderImageOffset]];
      [v6 addObject:v16];
    }
  }

  if ([v6 count])
  {
    v17 = [[OSLogEventBacktrace alloc] initWithFrames:v6];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_frameForDict:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"iu"];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = objc_opt_class();
      [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1108 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
    }
  }

  v7 = [v5 objectForKeyedSubscript:@"io"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = objc_opt_class();
      [v12 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1112 description:{@"Unexpected class: %@. Expected: %@", v13, objc_opt_class()}];

      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1114 description:@"Malformed frame dictionary"];

LABEL_7:
  v8 = -[OSLogEventBacktraceFrame initWithUUIDBytes:andOffset:]([OSLogEventBacktraceFrame alloc], "initWithUUIDBytes:andOffset:", [v6 bytes], objc_msgSend(v7, "unsignedLongLongValue"));

  return v8;
}

- ($8814E4F230000EB768D7E307C62B5F7C)lossCount
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 1792)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"lc"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1096 description:@"Unexpected type for loss count dict"];
    }

    v6 = [v5 objectForKeyedSubscript:@"c"];
    v7 = [v5 objectForKeyedSubscript:@"s"];
    v8 = [v6 unsignedLongLongValue];
    v9 = [v7 BOOLValue];

    if (v9)
    {
      v10 = 0x100000000;
    }

    else
    {
      v10 = 0;
    }

    return (v10 & 0xFFFFFFFF00000000 | v8);
  }

  else
  {
    return 0;
  }
}

- (timezone)lossEndUnixTimeZone
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1792)
  {
    return 0;
  }

  if (!self->_lossEndUnixTimeZoneNeedsLookup)
  {
    return &self->_lossEndUnixTimeZone;
  }

  self->_lossEndUnixTimeZoneNeedsLookup = 0;
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"leutz"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1089 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    p_lossEndUnixTimeZone = &self->_lossEndUnixTimeZone;
    [(_OSLogDeserializedEventProxy *)self _populate_timezone:&self->_lossEndUnixTimeZone withDict:v5];
  }

  else
  {
    p_lossEndUnixTimeZone = 0;
  }

  return p_lossEndUnixTimeZone;
}

- (timeval)lossEndUnixDate
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1792)
  {
    return 0;
  }

  if (!self->_lossEndUnixDateNeedsLookup)
  {
    return &self->_lossEndUnixDate;
  }

  self->_lossEndUnixDateNeedsLookup = 0;
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"leud"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1089 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    p_lossEndUnixDate = &self->_lossEndUnixDate;
    [(_OSLogDeserializedEventProxy *)self _populate_timeval:&self->_lossEndUnixDate withDict:v5];
  }

  else
  {
    p_lossEndUnixDate = 0;
  }

  return p_lossEndUnixDate;
}

- (timezone)lossStartUnixTimeZone
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1792)
  {
    return 0;
  }

  if (!self->_lossStartUnixTimeZoneNeedsLookup)
  {
    return &self->_lossStartUnixTimeZone;
  }

  self->_lossStartUnixTimeZoneNeedsLookup = 0;
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"lsutz"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1088 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    p_lossStartUnixTimeZone = &self->_lossStartUnixTimeZone;
    [(_OSLogDeserializedEventProxy *)self _populate_timezone:&self->_lossStartUnixTimeZone withDict:v5];
  }

  else
  {
    p_lossStartUnixTimeZone = 0;
  }

  return p_lossStartUnixTimeZone;
}

- (timeval)lossStartUnixDate
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1792)
  {
    return 0;
  }

  if (!self->_lossStartUnixDateNeedsLookup)
  {
    return &self->_lossStartUnixDate;
  }

  self->_lossStartUnixDateNeedsLookup = 0;
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"lsud"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1088 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    p_lossStartUnixDate = &self->_lossStartUnixDate;
    [(_OSLogDeserializedEventProxy *)self _populate_timeval:&self->_lossStartUnixDate withDict:v5];
  }

  else
  {
    p_lossStartUnixDate = 0;
  }

  return p_lossStartUnixDate;
}

- (id)timeZone
{
  v4 = [(_OSLogDeserializedEventProxy *)self unixTimeZone];
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1078 description:@"Could not get Unix timezone"];
  }

  v5 = MEMORY[0x277CBEBB0];
  v6 = -60 * v4->tz_minuteswest + 3600 * v4->tz_dsttime;

  return [v5 timeZoneForSecondsFromGMT:v6];
}

- (id)date
{
  v4 = [(_OSLogDeserializedEventProxy *)self unixDate];
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1070 description:@"Could not get Unix date"];
  }

  v5 = v4->tv_usec / 1000000.0 + v4->tv_sec;
  v6 = MEMORY[0x277CBEAA8];

  return [v6 dateWithTimeIntervalSince1970:v5];
}

- (timezone)unixTimeZone
{
  if (!self->_unixTimeZoneNeedsLookup)
  {
    return &self->_unixTimeZone;
  }

  self->_unixTimeZoneNeedsLookup = 0;
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"utz"];

  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1061 description:@"Could not fetch nonnull property"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = objc_opt_class();
    [v9 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1061 description:{@"Unexpected class: %@. Expected: %@", v10, objc_opt_class()}];
  }

  p_unixTimeZone = &self->_unixTimeZone;
  [(_OSLogDeserializedEventProxy *)self _populate_timezone:&self->_unixTimeZone withDict:v5];

  return p_unixTimeZone;
}

- (timeval)unixDate
{
  if (!self->_unixDateNeedsLookup)
  {
    return &self->_unixDate;
  }

  self->_unixDateNeedsLookup = 0;
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"ud"];

  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1061 description:@"Could not fetch nonnull property"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = objc_opt_class();
    [v9 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1061 description:{@"Unexpected class: %@. Expected: %@", v10, objc_opt_class()}];
  }

  p_unixDate = &self->_unixDate;
  [(_OSLogDeserializedEventProxy *)self _populate_timeval:&self->_unixDate withDict:v5];

  return p_unixDate;
}

- (void)_populate_timezone:(timezone *)a3 withDict:(id)a4
{
  v7 = a4;
  v10 = [v7 objectForKeyedSubscript:@"mw"];
  v8 = [v7 objectForKeyedSubscript:@"dt"];

  if (!v10 || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1055 description:@"Malformed timeval dict"];
  }

  a3->tz_minuteswest = [v10 intValue];
  a3->tz_dsttime = [v8 intValue];
}

- (void)_populate_timeval:(timeval *)a3 withDict:(id)a4
{
  v7 = a4;
  v10 = [v7 objectForKeyedSubscript:@"sec"];
  v8 = [v7 objectForKeyedSubscript:@"usec"];

  if (!v10 || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1043 description:@"Malformed timeval dict"];
  }

  a3->tv_sec = [v10 longValue];
  a3->tv_usec = [v8 intValue];
}

- (id)bootUUID
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"b"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      v10 = objc_opt_class();
      [v9 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1011 description:{@"Unexpected class: %@. Expected: %@", v10, objc_opt_class()}];
    }
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v5, "bytes")}];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1014 description:@"Encountered nil bootUUID"];
  }

  return v6;
}

- (const)senderImageUUIDBytes
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"siu"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1006 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 bytes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)senderImageUUID
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"siu"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1006 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v5, "bytes")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (const)processImageUUIDBytes
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"piu"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1005 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 bytes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)processImageUUID
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"piu"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1005 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v5, "bytes")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)metricData
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 2048)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"mtd"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = objc_opt_class();
      [v6 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1000 description:{@"Unexpected class: %@. Expected: %@", v7, objc_opt_class()}];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)metricMetadata
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 2048)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"mtm"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = objc_opt_class();
      [v6 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:990 description:{@"Unexpected class: %@. Expected: %@", v7, objc_opt_class()}];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)metricDimensions
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 2048)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"mtdi"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = objc_opt_class();
      [v6 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:980 description:{@"Unexpected class: %@. Expected: %@", v7, objc_opt_class()}];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)metricLabel
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 2048)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"mtl"];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = objc_opt_class();
        [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:973 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
      }

      v6 = [(_OSLogDeserializedEventProxy *)self metadata];
      v7 = [v6 stringForIndex:v5];

      if (v7)
      {
        goto LABEL_8;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:973 description:{@"Could not look up string for: %s", "metricLabel"}];
    }

    v7 = 0;
LABEL_8:

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)signpostName
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 1536)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"sn"];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = objc_opt_class();
        [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:970 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
      }

      v6 = [(_OSLogDeserializedEventProxy *)self metadata];
      v7 = [v6 stringForIndex:v5];

      if (v7)
      {
        goto LABEL_8;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:970 description:{@"Could not look up string for: %s", "signpostName"}];
    }

    v7 = 0;
LABEL_8:

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)formatString
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 1536 || [(_OSLogDeserializedEventProxy *)self type]== 1024 || [(_OSLogDeserializedEventProxy *)self type]== 768)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"f"];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = objc_opt_class();
        [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:968 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
      }

      v6 = [(_OSLogDeserializedEventProxy *)self metadata];
      v7 = [v6 stringForIndex:v5];

      if (v7)
      {
        goto LABEL_10;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:968 description:{@"Could not look up string for: %s", "formatString"}];
    }

    v7 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)category
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 1536 || [(_OSLogDeserializedEventProxy *)self type]== 1024 || [(_OSLogDeserializedEventProxy *)self type]== 2048)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"cat"];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = objc_opt_class();
        [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:967 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
      }

      v6 = [(_OSLogDeserializedEventProxy *)self metadata];
      v7 = [v6 stringForIndex:v5];

      if (v7)
      {
        goto LABEL_10;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:967 description:{@"Could not look up string for: %s", "category"}];
    }

    v7 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)subsystem
{
  if ([(_OSLogDeserializedEventProxy *)self type]== 1536 || [(_OSLogDeserializedEventProxy *)self type]== 1024 || [(_OSLogDeserializedEventProxy *)self type]== 2048)
  {
    v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
    v5 = [v4 objectForKeyedSubscript:@"sub"];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = objc_opt_class();
        [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:966 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
      }

      v6 = [(_OSLogDeserializedEventProxy *)self metadata];
      v7 = [v6 stringForIndex:v5];

      if (v7)
      {
        goto LABEL_10;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:966 description:{@"Could not look up string for: %s", "subsystem"}];
    }

    v7 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)sender
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"send"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:963 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(_OSLogDeserializedEventProxy *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:963 description:{@"Could not look up string for: %s", "sender"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)senderImagePath
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"sip"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:962 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(_OSLogDeserializedEventProxy *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:962 description:{@"Could not look up string for: %s", "senderImagePath"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)process
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"p"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:961 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(_OSLogDeserializedEventProxy *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:961 description:{@"Could not look up string for: %s", "process"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)processImagePath
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"pip"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:960 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(_OSLogDeserializedEventProxy *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:960 description:{@"Could not look up string for: %s", "processImagePath"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)composedMessage
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"cm"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:959 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(_OSLogDeserializedEventProxy *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:959 description:{@"Could not look up string for: %s", "composedMessage"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (int)processIdentifier
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"pid"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:956 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 longLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)lossEndMachContinuousTimestamp
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1792)
  {
    return 0;
  }

  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"lemct"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:953 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)lossStartMachContinuousTimestamp
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1792)
  {
    return 0;
  }

  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"lsmct"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:952 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)creatorProcessUniqueIdentifier
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 513)
  {
    return 0;
  }

  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"cpui"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:949 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)creatorActivityIdentifier
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 513)
  {
    return 0;
  }

  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"cai"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:948 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)signpostScope
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1536)
  {
    return 0;
  }

  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"ss"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:945 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)signpostType
{
  if ([(_OSLogDeserializedEventProxy *)self type]!= 1536)
  {
    return 0;
  }

  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"st"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:944 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)signpostIdentifier
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"si"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:941 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)senderImageOffset
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"sio"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:940 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)machContinuousTimestamp
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"mct"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:939 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)continuousNanosecondsSinceBoot
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"ns"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:938 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)transitionActivityIdentifier
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"tai"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:937 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)parentActivityIdentifier
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"paid"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:936 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)activityIdentifier
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"aid"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:935 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)threadIdentifier
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"tid"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:934 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)traceIdentifier
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"ti"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:933 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)timeToLive
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"ttl"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:932 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)size
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"s"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:931 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)logType
{
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"lt"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:930 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)type
{
  if (![(_OSLogDeserializedEventProxy *)self needsTypeLookup])
  {
    return self->_type;
  }

  self->_needsTypeLookup = 0;
  v4 = [(_OSLogDeserializedEventProxy *)self curEventDictionary];
  v5 = [v4 objectForKeyedSubscript:@"t"];

  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:925 description:@"Could not get type for proxy"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = objc_opt_class();
    [v9 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:926 description:{@"Unexpected class: %@. Expected: %@", v10, objc_opt_class()}];
  }

  v6 = [v5 unsignedLongLongValue];
  self->_type = v6;

  return v6;
}

- (void)setCurEventDictionary:(id)a3
{
  objc_storeStrong(&self->_curEventDictionary, a3);

  [(_OSLogDeserializedEventProxy *)self _resetNeedsLookup];
}

- (void)_resetNeedsLookup
{
  self->_needsTypeLookup = 1;
  self->_unixDateNeedsLookup = 1;
  self->_unixTimeZoneNeedsLookup = 1;
  self->_lossStartUnixDateNeedsLookup = 1;
  self->_lossStartUnixTimeZoneNeedsLookup = 1;
  self->_lossEndUnixDateNeedsLookup = 1;
  self->_lossEndUnixTimeZoneNeedsLookup = 1;
}

@end