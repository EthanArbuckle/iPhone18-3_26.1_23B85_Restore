@interface OSLogEventProxy
+ (id)_make;
- ($8814E4F230000EB768D7E307C62B5F7C)lossCount;
- (BOOL)_setLogEvent:(id *)event rangeUUIDIndex:(unint64_t)a4 machTimebase:(mach_timebase_info *)a5 traceFilename:(id)a6;
- (NSDictionary)metricData;
- (NSDictionary)metricDimensions;
- (NSDictionary)metricMetadata;
- (NSString)category;
- (NSString)composedMessage;
- (NSString)formatString;
- (NSString)metricLabel;
- (NSString)process;
- (NSString)processImagePath;
- (NSString)sender;
- (NSString)senderImagePath;
- (NSString)signpostName;
- (NSString)subsystem;
- (NSUUID)bootUUID;
- (NSUUID)processImageUUID;
- (NSUUID)senderImageUUID;
- (OSLogEventBacktrace)backtrace;
- (OSLogEventDecomposedMessage)decomposedMessage;
- (OSLogEventProxy)init;
- (OSLogEventProxy)retain;
- (const)senderImageUUIDBytes;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (timeval)lossEndUnixDate;
- (timeval)lossStartUnixDate;
- (timezone)lossEndUnixTimeZone;
- (timezone)lossStartUnixTimeZone;
- (unint64_t)creatorActivityIdentifier;
- (unint64_t)creatorProcessUniqueIdentifier;
- (unint64_t)logType;
- (unint64_t)lossEndMachContinuousTimestamp;
- (unint64_t)lossStartMachContinuousTimestamp;
- (unint64_t)senderImageOffset;
- (unint64_t)signpostIdentifier;
- (unint64_t)signpostScope;
- (unint64_t)signpostType;
- (unint64_t)timeToLive;
- (unint64_t)transitionActivityIdentifier;
- (void)_assertBalanced;
- (void)_fillFromMessageV1:(id)a3 withTimebase:(mach_timebase_info)a4;
- (void)_fillFromMessageV2:(id)a3 withTimebase:(mach_timebase_info)a4;
- (void)_fillFromOSLogMessage:(id)a3;
- (void)_setBuffer:(const void *)a3 size:(unint64_t)a4 privateBuffer:(const void *)a5 privateSize:(unint64_t)a6;
- (void)_setFallbackTimezone;
- (void)_unmake;
- (void)release;
@end

@implementation OSLogEventProxy

- (OSLogEventProxy)retain
{
  thread = self->_thread;
  if (!thread)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: _thread is not set on OSLogEventProxy";
    qword_27DA527A8 = 0;
    __break(1u);
LABEL_5:
    __LOGEVENTPROXY_RETAINED_OUTSIDE_OF_ITERATION__();
  }

  if (thread != *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)))
  {
    goto LABEL_5;
  }

  ++self->_retainCount;
  return self;
}

- (OSLogEventBacktrace)backtrace
{
  result = self->_backtrace;
  if (!result)
  {
    if ((self->_eint.type | 0x200) != 0x600 || !self->_eint.var0.log_message.has_context_data)
    {
      goto LABEL_15;
    }

    if (!self->_eint.var0.timesync.flags)
    {
      self->_eint.var0.timesync.flags = os_log_fmt_extract_pubdata(self->_eint.var0.log_message.buffer, LOWORD(self->_eint.var0.loss.start.tv_gmt.tv_sec), &self->_eint.var0.timesync.continuous_time, &self->_eint.var0.log_message.pubdata_sz);
    }

    pubdata = self->_eint.var0.log_message.pubdata;
    if (pubdata && (*pubdata & 1) != 0 && (v6 = self->_eint.var0.log_message.pubdata_sz - 2, v7 = pubdata + 1, (v5 = os_log_backtrace_create_from_buffer()) != 0))
    {
      self->_backtrace = [[OSLogEventBacktrace alloc] initWithBacktrace:v5, v6, v7];
      os_log_backtrace_destroy();
    }

    else
    {
LABEL_15:
      if ([(OSLogEventProxy *)self senderImageUUIDBytes:v6])
      {
        result = [[OSLogEventBacktrace alloc] initWithSingleFrame:[[OSLogEventBacktraceFrame alloc] initWithUUIDBytes:[(OSLogEventProxy *)self senderImageUUIDBytes] andOffset:[(OSLogEventProxy *)self senderImageOffset]]];
        self->_backtrace = result;
        return result;
      }
    }

    return self->_backtrace;
  }

  return result;
}

- (NSString)processImagePath
{
  if ((self->_efv & 3) == 1)
  {
    _resolve_uuid_slow(self);
  }

  return self->_processImagePath;
}

- (unint64_t)signpostScope
{
  if (self->_eint.type == 1536)
  {
    return self->_eint.var0.log_message.signpost_scope;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)signpostType
{
  if (self->_eint.type == 1536)
  {
    return self->_eint.var0.log_message.var0.signpost_type;
  }

  else
  {
    return 0;
  }
}

- (NSString)subsystem
{
  type = self->_eint.type;
  if ((type == 1024 || type == 2048 || type == 1536) && self->_eint.var0.log_message.subsystem)
  {
    return [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

- (void)release
{
  thread = self->_thread;
  if (!thread)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: _thread is not set on OSLogEventProxy";
    qword_27DA527A8 = 0;
    __break(1u);
LABEL_5:
    __LOGEVENTPROXY_RETAINED_OUTSIDE_OF_ITERATION__();
  }

  if (thread != *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)))
  {
    goto LABEL_5;
  }

  --self->_retainCount;
}

- (NSString)category
{
  type = self->_eint.type;
  if ((type == 1024 || type == 2048 || type == 1536) && self->_eint.var0.log_message.category)
  {
    return [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

- (NSString)process
{
  v2 = [(OSLogEventProxy *)self processImagePath];

  return [(NSString *)v2 lastPathComponent];
}

- (unint64_t)creatorProcessUniqueIdentifier
{
  if (self->_eint.type == 513)
  {
    return self->_eint.var0.activity_create.unique_pid;
  }

  else
  {
    return 0;
  }
}

- (NSString)signpostName
{
  if (self->_eint.type != 1536)
  {
    return 0;
  }

  if ((self->_efv & 3) == 1)
  {
    _resolve_uuid_slow(self);
  }

  if (self->_eint.var0.log_message.signpost_name)
  {
    v3 = MEMORY[0x277CCACA8];
LABEL_6:

    return [v3 stringWithUTF8String:?];
  }

  if (!self->_eint.common.message)
  {
    return 0;
  }

  v5 = strchr(self->_eint.common.message, 32);
  v3 = MEMORY[0x277CCACA8];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:self->_eint.common.message length:v5 - self->_eint.common.message encoding:4];

  return v6;
}

- (NSString)composedMessage
{
  result = 0;
  v23 = *MEMORY[0x277D85DE8];
  type = self->_eint.type;
  if (type > 1023)
  {
    if (type > 1535)
    {
      if (type != 2560)
      {
        if (type != 1792)
        {
          if (type != 1536)
          {
            goto LABEL_48;
          }

LABEL_19:
          result = self->_logMessage;
          if (!result)
          {
            v7 = *MEMORY[0x277D85DE8];

            return _compose_log_message(self);
          }

LABEL_48:
          v19 = *MEMORY[0x277D85DE8];
          return result;
        }

        count = self->_eint.var0.loss.count;
        v12 = &_CTF_NULLSTR;
        if (count == 63)
        {
          v12 = ">=";
        }

        creator_aid = self->_eint.var0.activity_create.creator_aid;
        snprintf(__str, 0x100uLL, "lost %s%u unreliable messages from %llu-%llu (Mach continuous exact start-approx. end)", v12, count, creator_aid, self->_eint.var0.timesync.wallclock_nsec);
        v14 = MEMORY[0x277CCACA8];
        v15 = __str;
LABEL_47:
        result = [v14 stringWithUTF8String:v15];
        goto LABEL_48;
      }

      result = _state_support_create_message(self->_event->var5.var0.var2.var0, &self->_eint.statedump.message_size);
      if (!result)
      {
        goto LABEL_48;
      }

      v10 = result;
      result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v10 length:strlen(v10) encoding:4 freeWhenDone:1];
      if (result)
      {
        goto LABEL_48;
      }

      free(v10);
LABEL_32:
      result = 0;
      goto LABEL_48;
    }

    if (type == 1024)
    {
      goto LABEL_19;
    }

    if (type != 1280)
    {
      goto LABEL_48;
    }

    hdr = self->_eint.var0.log_message.hdr;
    if ((hdr & 1) == 0)
    {
      if (self->_eint.var0.timesync.continuous_time)
      {
        v6 = "=== system wallclock time adjusted";
LABEL_46:
        v14 = MEMORY[0x277CCACA8];
        v15 = v6;
        goto LABEL_47;
      }

      memset(out, 0, 37);
      uuid_unparse_upper(&self->_eint.var0, out);
      v20 = out;
      v18 = "=== system boot: %s";
LABEL_45:
      v6 = __str;
      snprintf(__str, 0x80uLL, v18, v20);
      goto LABEL_46;
    }

    if ((hdr & 2) == 0)
    {
      ttl = self->_eint.var0.timesync.ttl;
      if (ttl <= 6)
      {
        if (ttl == 1)
        {
          v17 = "TTL less than 1 day";
          goto LABEL_43;
        }

        if (ttl == 3)
        {
          v17 = "TTL less than 3 days";
          goto LABEL_43;
        }
      }

      else
      {
        switch(ttl)
        {
          case 7u:
            v17 = "TTL less than 7 days";
            goto LABEL_43;
          case 0xEu:
            v17 = "TTL less than 14 days";
            goto LABEL_43;
          case 0x1Eu:
            v17 = "TTL more than 14 days";
LABEL_43:
            v20 = v17;
            v18 = "=== log class: %s begins";
            goto LABEL_45;
        }
      }

      v17 = "persist";
      goto LABEL_43;
    }

    v17 = "in-memory";
    goto LABEL_43;
  }

  if (type > 514)
  {
    if (type != 515)
    {
      if (type != 768)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }
  }

  else if (type != 513)
  {
    if (type == 514)
    {
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"Transition to 0x%llx", self->_eint.var0.activity_create.creator_aid & 0xFFFFFFFFFFFFFFLL];
    }

    goto LABEL_48;
  }

  if ((self->_efv & 3) == 1)
  {
    _resolve_uuid_slow(self);
  }

  if (!self->_eint.common.message)
  {
    goto LABEL_32;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = *MEMORY[0x277D85DE8];

  return [v8 stringWithUTF8String:?];
}

- (unint64_t)signpostIdentifier
{
  if (self->_eint.type == 1536)
  {
    return self->_eint.var0.log_message.var1.signpost_id;
  }

  else
  {
    return 0;
  }
}

- (OSLogEventDecomposedMessage)decomposedMessage
{
  result = 0;
  v4 = __ROR8__(self->_eint.type - 768, 8);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return result;
      }

      if ((self->_eint.common.opaque_flags & 2) != 0)
      {
        return 0;
      }
    }

    goto LABEL_11;
  }

  if (v4 == 3 || v4 == 5)
  {
LABEL_11:
    decomposedMessage = self->_decomposedMessage;
    if (!decomposedMessage)
    {
      decomposedMessage = [[OSLogEventDecomposedMessage alloc] initWithEventProxy:self];
      self->_decomposedMessage = decomposedMessage;
    }

    [(OSLogEventDecomposedMessage *)decomposedMessage _populateFields];
    return self->_decomposedMessage;
  }

  return result;
}

- (const)senderImageUUIDBytes
{
  if ((self->_efv & 3) == 1 && self->_eint.type != 2560 && (self->_eint.common.opaque_flags & 2) == 0 && (*(self->_event->var5.var0.var3 + 1) & 6 | 8) == 0xC)
  {
    _resolve_uuid_slow(self);
  }

  return self->_eint.common.image_uuid;
}

- (NSString)senderImagePath
{
  if ((self->_efv & 3) == 1)
  {
    _resolve_uuid_slow(self);
  }

  return self->_senderImagePath;
}

- (unint64_t)senderImageOffset
{
  if ((self->_efv & 3) == 1 && self->_eint.type != 2560 && (self->_eint.common.opaque_flags & 2) == 0 && (*(self->_event->var5.var0.var3 + 1) & 6 | 8) == 0xC)
  {
    _resolve_uuid_slow(self);
  }

  return self->_eint.common.offset;
}

- (NSUUID)processImageUUID
{
  if (!self->_eint.proc_imageuuid)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_eint.proc_imageuuid];

  return v2;
}

- (NSUUID)senderImageUUID
{
  if ((self->_efv & 3) == 1 && self->_eint.type != 2560 && (self->_eint.common.opaque_flags & 2) == 0 && (*(self->_event->var5.var0.var3 + 1) & 6 | 8) == 0xC)
  {
    _resolve_uuid_slow(self);
  }

  if (!self->_eint.common.image_uuid)
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_eint.common.image_uuid];

  return v3;
}

+ (id)_make
{
  result = NSAllocateObject(a1, 0, 0);
  *(result + 46) = *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(result + 47) = 0;
  *(result + 365) = 1;
  *(result + 224) = 0;
  *(result + 39) = 0;
  *(result + 248) = 0u;
  *(result + 232) = 0u;
  *(result + 216) = 0u;
  *(result + 200) = 0u;
  *(result + 184) = 0u;
  *(result + 168) = 0u;
  *(result + 152) = 0u;
  *(result + 136) = 0u;
  *(result + 120) = 0u;
  *(result + 104) = 0u;
  *(result + 88) = 0u;
  *(result + 72) = 0u;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *(result + 280) = 0u;
  *(result + 296) = 0u;
  *(result + 264) = 0u;
  return result;
}

- (void)_assertBalanced
{
  if (self->_retainCount)
  {
    __LOGEVENTPROXY_RETAINED_OUTSIDE_OF_ITERATION__();
  }
}

- (unint64_t)logType
{
  type = self->_eint.type;
  if (type != 1024 && type != 768)
  {
    return 0;
  }

  event = self->_event;
  if (!event || (self->_eint.common.opaque_flags & 2) != 0)
  {
    return BYTE1(self->_eint.common.trace_id);
  }

  else
  {
    return *(event->var5.var0.var3 + 1);
  }
}

- (NSUUID)bootUUID
{
  event = self->_event;
  if (!event)
  {
    return 0;
  }

  p_event = &self->_event;
  var0 = event->var0;
  if (var0 == 1 || var0 == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = 40;
    goto LABEL_8;
  }

  if (var0 != 3)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  p_event = &(*p_event)->var5;
  v6 = 144;
LABEL_8:
  v8 = [v5 initWithUUIDBytes:*p_event + v6];

  return v8;
}

- (NSString)sender
{
  v2 = [(OSLogEventProxy *)self senderImagePath];

  return [(NSString *)v2 lastPathComponent];
}

- ($8814E4F230000EB768D7E307C62B5F7C)lossCount
{
  if (self->_eint.type == 1792)
  {
    return (self->_eint.var0.loss.count | ((self->_eint.var0.loss.count == 63) << 32));
  }

  else
  {
    return 0;
  }
}

- (timezone)lossEndUnixTimeZone
{
  if (self->_eint.type == 1792)
  {
    return &self->_eint.var0.loss.end.tz;
  }

  else
  {
    return 0;
  }
}

- (timeval)lossEndUnixDate
{
  if (self->_eint.type == 1792)
  {
    return &self->_eint.var0.loss.end.tv_gmt;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)lossEndMachContinuousTimestamp
{
  if (self->_eint.type == 1792)
  {
    return self->_eint.var0.timesync.wallclock_nsec;
  }

  else
  {
    return 0;
  }
}

- (timezone)lossStartUnixTimeZone
{
  if (self->_eint.type == 1792)
  {
    return &self->_eint.var0.loss.start.tz;
  }

  else
  {
    return 0;
  }
}

- (timeval)lossStartUnixDate
{
  if (self->_eint.type == 1792)
  {
    return &self->_eint.var0.loss.start.tv_gmt;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)lossStartMachContinuousTimestamp
{
  if (self->_eint.type == 1792)
  {
    return self->_eint.var0.activity_create.creator_aid;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)creatorActivityIdentifier
{
  if (self->_eint.type == 513)
  {
    return self->_eint.var0.activity_create.creator_aid;
  }

  else
  {
    return 0;
  }
}

- (NSString)formatString
{
  type = self->_eint.type;
  if (type != 768)
  {
    if (type == 1024)
    {
      goto LABEL_7;
    }

    if (type != 1536)
    {
      return 0;
    }

    if ((self->_efv & 3) == 1)
    {
      _resolve_uuid_slow(self);
    }

    if (self->_eint.var0.log_message.signpost_name)
    {
LABEL_7:
      if ((self->_eint.common.opaque_flags & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      message = self->_eint.common.message;
      if (message)
      {
        strchr(message, 32);
        v4 = MEMORY[0x277CCACA8];
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_8:
  if ((self->_efv & 3) == 1)
  {
    _resolve_uuid_slow(self);
  }

  if (!self->_eint.common.message)
  {
    return 0;
  }

  v4 = MEMORY[0x277CCACA8];
LABEL_12:

  return [v4 stringWithUTF8String:?];
}

- (NSDictionary)metricData
{
  if (self->_eint.type != 2048)
  {
    return 0;
  }

  v39[1] = v7;
  v39[2] = v6;
  v39[3] = v5;
  v39[4] = v4;
  v39[13] = v2;
  v39[14] = v3;
  v38 = 0;
  v39[0] = 0;
  if ((_parse_metric_context_data(self, &v38, v39) & 1) == 0)
  {
    return objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v8 = v38;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = v9;
  v11 = (v8 + 16);
  v12 = *(v8 + 2);
  if (!*(v8 + 2))
  {
    v23 = *(v8 + 16);
    v24 = *(v8 + 1);
    if (*(v8 + 1))
    {
      if (v24 == 1)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:*(v8 + 16)];
      }

      else
      {
        if (v24 != 2)
        {
          v19 = &unk_2841B8EB0;
          goto LABEL_20;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v23];
    }

    v19 = v25;
LABEL_20:
    v20 = @"value";
LABEL_21:
    [v10 setObject:v19 forKeyedSubscript:v20];
    goto LABEL_22;
  }

  if (v12 == 1)
  {
    v22 = *(v8 + 32);
    v35 = *v11;
    v36 = v22;
    v37 = *(v8 + 48);
    _metric_serialize_basic(v9, v8, &v35);
  }

  else if (v12 == 2)
  {
    v13 = *(v8 + 32);
    v35 = *v11;
    v36 = v13;
    v37 = *(v8 + 48);
    _metric_serialize_basic(v9, v8, &v35);
    v14 = *(v8 + 24);
    v16 = *(v8 + 64);
    v15 = *(v8 + 72);
    v17 = *(v8 + 80);
    v18 = *(v8 + 96);
    if (v14 >= 2)
    {
      v18 = v18 / (v14 - 1);
    }

    [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", *(v8 + 88)), @"sma"}];
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v18), @"var"}];
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", sqrt(v18)), @"sd"}];
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v17), @"ema"}];
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v16), @"ff"}];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v20 = @"wgt";
    goto LABEL_21;
  }

LABEL_22:
  v26 = *(v8 + 5);
  if (*(v8 + 5))
  {
    v27 = *(v8 + 2);
    v28 = 40 * *(v8 + 2) + 8;
    if (v27 >= 3)
    {
      v28 = 0;
    }

    v29 = v11 + v28;
    if (v39[0] >= (v29 - v8 + 8 * v26))
    {
      if (v27 - 1 >= 2)
      {
        v30 = 0;
        if (!*(v8 + 2))
        {
          v31 = v29;
          do
          {
            v32 = *v31++;
            v30 += v32;
            --v26;
          }

          while (v26);
        }
      }

      else
      {
        v30 = *(v8 + 24);
      }

      v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (*(v8 + 5))
      {
        v34 = 0;
        do
        {
          [v33 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", *(v29 + 8 * v34++))}];
        }

        while (v34 < *(v8 + 5));
      }

      [v10 setObject:v33 forKeyedSubscript:@"bins"];

      if (v30 > 1)
      {
        [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", _metric_get_percentile(v8, v30, v29, 0.25)), @"q1"}];
        [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", _metric_get_percentile(v8, v30, v29, 0.5)), @"q2"}];
        [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", _metric_get_percentile(v8, v30, v29, 0.75)), @"q3"}];
        [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", _metric_get_percentile(v8, v30, v29, 0.95)), @"p95"}];
        [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", _metric_get_percentile(v8, v30, v29, 0.99)), @"p99"}];
      }
    }
  }

  return [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];
}

- (NSDictionary)metricMetadata
{
  if (self->_eint.type != 2048)
  {
    return 0;
  }

  v18[5] = v2;
  v18[6] = v3;
  result = self->_metricMetadata;
  if (!result)
  {
    v17 = 0;
    if (_parse_metric_context_data(self, &v17, v18))
    {
      v6 = v17;
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = v7;
      v9 = *v6;
      if (v9 > 2)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = off_2787ADC10[v9];
      }

      [v7 setObject:v10 forKeyedSubscript:@"type"];
      v11 = v6[1];
      if (v11 > 2)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_2787ADC28[v11];
      }

      [v8 setObject:v12 forKeyedSubscript:@"base_type"];
      v13 = v6[3];
      if (v13 > 2)
      {
        v14 = @"unknown";
      }

      else
      {
        v14 = off_2787ADC40[v13];
      }

      [v8 setObject:v14 forKeyedSubscript:@"unit"];
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithChar:", v6[4]), @"scale"}];
      if (v6[5])
      {
        [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:"), @"binCount"}];
        if (*(v6 + 2))
        {
          [v8 setObject:@"linear" forKeyedSubscript:@"binType"];
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v6 + 2)];
          v16 = @"binInterval";
        }

        else
        {
          v15 = @"log2";
          v16 = @"binType";
        }

        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      self->_metricMetadata = [v8 copy];

      return self->_metricMetadata;
    }

    else
    {
      result = objc_alloc_init(MEMORY[0x277CBEAC0]);
      self->_metricMetadata = result;
    }
  }

  return result;
}

- (NSDictionary)metricDimensions
{
  if (self->_eint.type != 2048)
  {
    return 0;
  }

  v22[11] = v2;
  v22[12] = v3;
  result = self->_metricDimensions;
  if (!result)
  {
    v21 = 0;
    v22[0] = 0;
    if (_parse_metric_context_data(self, &v21, v22))
    {
      v6 = v21;
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = 16;
      if (*(v6 + 2) < 3u)
      {
        v8 = 40 * *(v6 + 2) + 24;
      }

      v9 = v8 + 8 * *(v6 + 5);
      v10 = v22[0];
      if (v9 < v22[0])
      {
        v11 = 0;
        v12 = 1;
        while (1)
        {
          v13 = v9 + 2;
          if (v9 + 2 > v10 || (v14 = v21 + v9, v15 = *(v21 + v9), v9 = v13 + (v15 & 0xFFF), v9 > v10))
          {
LABEL_27:
            if (v11)
            {
              [v7 setObject:&stru_2841AD290 forKeyedSubscript:v11];
            }

            break;
          }

          if ((v15 >> 12) - 1 > 1)
          {
            if ((v12 & 1) == 0)
            {
              v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v21 + v13 length:v15 & 0xFFF encoding:4];
LABEL_23:
              if (v11)
              {
                [v7 setObject:v17 forKeyedSubscript:v11];
                v11 = 0;
                v10 = v22[0];
              }

              else
              {
                v11 = v17;
              }
            }
          }

          else if ((v15 & 0xF000) == 0x2000)
          {
            v16 = *(v14 + 6) << 31;
            if ((v12 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v16 = 0;
            if ((v12 & 1) == 0)
            {
LABEL_17:
              v18 = *(v14 + 2);
              v20 = 0;
              if (v18 >= 0)
              {
                v19 = v16 | v18 & 0x7FFFFFFF;
              }

              else
              {
                v19 = v16 | v18 & 0x7FFFFFFF | 0x8000000000000000;
              }

              _resolve_uuid_slow_single(self, v19, &v20);
              if (v20)
              {
                v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
              }

              else
              {
                v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"<compose failure: 0x%llx>", v19];
              }

              goto LABEL_23;
            }
          }

          v12 = 0;
          if (v9 >= v10)
          {
            goto LABEL_27;
          }
        }
      }

      self->_metricDimensions = [v7 copy];

      return self->_metricDimensions;
    }

    else
    {
      result = objc_alloc_init(MEMORY[0x277CBEAC0]);
      self->_metricDimensions = result;
    }
  }

  return result;
}

- (NSString)metricLabel
{
  if (self->_eint.type != 2048)
  {
    return 0;
  }

  v19[5] = v2;
  v19[6] = v3;
  result = self->_metricLabel;
  if (!result)
  {
    v18 = 0;
    v19[0] = 0;
    if (_parse_metric_context_data(self, &v18, v19))
    {
      v6 = 16;
      if (*(v18 + 2) < 3u)
      {
        v6 = 40 * *(v18 + 2) + 24;
      }

      v7 = v6 + 8 * *(v18 + 5);
      v8 = v7 | 2;
      if ((v7 | 2uLL) <= v19[0] && (v9 = (v18 + v7), v10 = *v9, v8 + (v10 & 0xFFF) <= v19[0]))
      {
        if ((v10 >> 12) - 1 > 1)
        {
          result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v18 + v8 length:v10 & 0xFFF encoding:4];
        }

        else
        {
          v11 = *(v9 + 1);
          if ((v10 & 0xF000) == 0x2000)
          {
            v12 = v9[3] << 31;
          }

          else
          {
            v12 = 0;
          }

          v17 = 0;
          v13 = v12 | v11 & 0x7FFFFFFF;
          if (v11 >= 0)
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 | 0x8000000000000000;
          }

          _resolve_uuid_slow_single(self, v14, &v17);
          v15 = v17;
          v16 = objc_alloc(MEMORY[0x277CCACA8]);
          if (v15)
          {
            result = [v16 initWithUTF8String:v17];
          }

          else
          {
            result = [v16 initWithFormat:@"<compose failure: 0x%llx>", v14];
          }
        }
      }

      else
      {
        result = @"<malformed>";
      }
    }

    else
    {
      result = @"<missing>";
    }

    self->_metricLabel = result;
  }

  return result;
}

- (unint64_t)transitionActivityIdentifier
{
  if (self->_eint.type == 514)
  {
    return self->_eint.var0.activity_create.creator_aid & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)timeToLive
{
  v2 = 0;
  v3 = __ROR8__(self->_eint.type - 768, 8);
  if (v3 <= 7)
  {
    if (((1 << v3) & 0x2B) != 0)
    {
      return self->_eint.var0.log_message.ttl;
    }

    else if (v3 == 7)
    {
      return self->_eint.statedump.ttl;
    }
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  event = self->_event;
  return [v3 stringWithFormat:@"<%@: %p, %p, %02x, %d, %s>", v5, self, event, self->_eint.type, self->_eint.pid, self->_eint.common.message];
}

- (void)_fillFromOSLogMessage:(id)a3
{
  if (_fillFromOSLogMessage__onceToken != -1)
  {
    dispatch_once(&_fillFromOSLogMessage__onceToken, &__block_literal_global_222);
  }

  processImagePath = self->_processImagePath;
  if (processImagePath)
  {

    self->_processImagePath = 0;
  }

  senderImagePath = self->_senderImagePath;
  if (senderImagePath)
  {

    self->_senderImagePath = 0;
  }

  backtrace = self->_backtrace;
  if (backtrace)
  {

    self->_backtrace = 0;
  }

  logMessage = self->_logMessage;
  if (logMessage)
  {

    self->_logMessage = 0;
  }

  decomposedMessage = self->_decomposedMessage;
  if (decomposedMessage)
  {
    [(OSLogEventDecomposedMessage *)decomposedMessage _unmake];
  }

  metricLabel = self->_metricLabel;
  if (metricLabel)
  {

    self->_metricLabel = 0;
  }

  metricDimensions = self->_metricDimensions;
  if (metricDimensions)
  {

    self->_metricDimensions = 0;
  }

  metricMetadata = self->_metricMetadata;
  if (metricMetadata)
  {

    self->_metricMetadata = 0;
  }

  *&self->_eint.type = 0u;
  *&self->_eint.statedump.ttl = 0;
  *(&self->_eint.var0.loss + 88) = 0u;
  *(&self->_eint.var0.loss + 104) = 0u;
  *&self->_eint.var0.loss.end.tz.tz_minuteswest = 0u;
  *(&self->_eint.var0.loss + 1) = 0u;
  *&self->_eint.var0.loss.start.tz.tz_minuteswest = 0u;
  self->_eint.var0.loss.end.tv_gmt = 0u;
  *&self->_eint.common.sz = 0u;
  self->_eint.var0.loss.start.tv_gmt = 0u;
  *&self->_eint.common.offset = 0u;
  *&self->_eint.common.opaque_flags = 0u;
  *&self->_eint.common.image_path = 0u;
  *&self->_eint.common.tv_gmt.tv_usec = 0u;
  *&self->_eint.common.thread = 0u;
  *&self->_eint.common.dsc_uuid = 0u;
  *&self->_eint.activity_id = 0u;
  *&self->_eint.common.trace_id = 0u;
  *&self->_eint.proc_id = 0u;
  *&self->_eint.proc_imageuuid = 0u;
  self->_event = 0;
  self->_efv = 0;
  version = _os_activity_stream_entry_get_version(a3);
  if (version == 2)
  {
    [(OSLogEventProxy *)self _fillFromMessageV2:a3 withTimebase:_fillFromOSLogMessage__timebase];
  }

  else
  {
    if (version != 1)
    {
      qword_27DA52778 = "BUG IN LIBTRACE: Nope. Invalid message version";
      qword_27DA527A8 = -1;
      __break(1u);
      return;
    }

    [(OSLogEventProxy *)self _fillFromMessageV1:a3 withTimebase:_fillFromOSLogMessage__timebase];
  }

  if (self->_eint.proc_imagepath)
  {
    self->_processImagePath = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  if (self->_eint.common.image_path)
  {
    self->_senderImagePath = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }
}

- (void)_fillFromMessageV2:(id)a3 withTimebase:(mach_timebase_info)a4
{
  value = xpc_dictionary_get_value(a3, "entryData");
  if (!value)
  {
    return;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(value);
  v9 = bytes_ptr + 59;
  self->_eint.proc_id = *(bytes_ptr + 1);
  v10 = bytes_ptr[4];
  v11 = *bytes_ptr;
  self->_eint.pid = bytes_ptr[1];
  self->_eint.uid = v10;
  v12 = bytes_ptr + *(bytes_ptr + 7) + 236;
  self->_eint.proc_imageuuid = bytes_ptr + *(bytes_ptr + 5) + 236;
  self->_eint.proc_imagepath = v12;
  *&self->_eint.activity_id = *(bytes_ptr + 9);
  self->_eint.type = v11;
  self->_eint.common.tz.tz_dsttime = bytes_ptr[28];
  self->_eint.common.tz.tz_minuteswest = bytes_ptr[27];
  self->_eint.common.tv_gmt.tv_sec = *(bytes_ptr + 23);
  self->_eint.common.tv_gmt.tv_usec = bytes_ptr[25];
  if (xpc_dictionary_get_BOOL(a3, "32bits"))
  {
    self->_eint.common.opaque_flags = 1;
  }

  v13 = *(bytes_ptr + 13);
  self->_eint.common.trace_id = v13;
  self->_eint.common.thread = *(bytes_ptr + 17);
  self->_eint.common.timestamp = *(bytes_ptr + 15);
  self->_eint.common.offset = *(bytes_ptr + 29);
  self->_eint.common.format_offset = *(bytes_ptr + 31);
  self->_eint.common.image_uuid = v9 + *(bytes_ptr + 19);
  self->_eint.common.image_path = v9 + *(bytes_ptr + 21);
  self->_eint.common.timebase = a4;
  v14 = *(bytes_ptr + 35);
  v15 = v9 + v14;
  if (!v14)
  {
    v15 = 0;
  }

  self->_eint.common.message = v15;
  if (!v14)
  {
    self->_eint.common.message = v9 + *(bytes_ptr + 7);
  }

  type = self->_eint.type;
  v17 = __ROR8__(type - 768, 8);
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      self->_eint.var0.log_message.var1.signpost_id = *(bytes_ptr + 51);
      self->_eint.var0.log_message.signpost_name = v9 + *(bytes_ptr + 53);
      self->_eint.var0.log_message.var0.signpost_type = BYTE1(v13) & 0x3F;
      self->_eint.var0.log_message.signpost_scope = BYTE1(v13) & 0xC0;
    }

    else if (v17 != 5)
    {
      return;
    }

    if (type == 2048)
    {
      self->_eint.var0.log_message.var0.signpost_type = BYTE1(v13);
      self->_eint.var0.log_message.var1.signpost_id = *(bytes_ptr + 51);
    }

    goto LABEL_19;
  }

  if (!v17)
  {
    self->_eint.var0.activity_create.unique_pid = *(bytes_ptr + 39);
    self->_eint.var0.activity_create.creator_aid = v9 + *(bytes_ptr + 37);
    return;
  }

  if (v17 == 1)
  {
LABEL_19:
    if ((self->_eint.common.opaque_flags & 2) == 0)
    {
      self->_eint.var0.activity_create.creator_aid = v9 + *(bytes_ptr + 37);
      self->_eint.var0.activity_create.unique_pid = *(bytes_ptr + 39);
      self->_eint.var0.loss.end.tv_gmt.tv_sec = v9 + *(bytes_ptr + 41);
      self->_eint.var0.log_message.privdata_sz = *(bytes_ptr + 43);
      self->_eint.var0.log_message.ttl = *(bytes_ptr + 200);
      v18 = *(bytes_ptr + 47);
      if (v18)
      {
        v19 = v9 + v18;
      }

      else
      {
        v19 = 0;
      }

      self->_eint.var0.log_message.category = v19;
      v20 = *(bytes_ptr + 45);
      if (v20)
      {
        v21 = v9 + v20;
      }

      else
      {
        v21 = 0;
      }

      self->_eint.var0.log_message.subsystem = v21;
      self->_eint.var0.log_message.persisted = *(bytes_ptr + 201);
      if ((v13 & 0x10000000) != 0)
      {
        self->_eint.var0.log_message.has_context_data = 1;
      }
    }
  }
}

- (void)_fillFromMessageV1:(id)a3 withTimebase:(mach_timebase_info)a4
{
  numer = a4.numer;
  denom = a4.denom;
  self->_eint.pid = xpc_dictionary_get_uint64(a3, "pid");
  self->_eint.proc_id = xpc_dictionary_get_uint64(a3, "procid");
  self->_eint.uid = xpc_dictionary_get_uint64(a3, "uid");
  self->_eint.proc_imageuuid = xpc_dictionary_get_uuid(a3, "procuuid");
  string = xpc_dictionary_get_string(a3, "procpath");
  self->_eint.proc_imagepath = string;
  if (!string)
  {
    proc_imageuuid = self->_eint.proc_imageuuid;
    if (proc_imageuuid)
    {
      uuidpath_lookup_fd(-3, proc_imageuuid, &self->_eint.proc_imagepath);
    }
  }

  self->_eint.activity_id = xpc_dictionary_get_uint64(a3, "aid");
  self->_eint.parent_id = xpc_dictionary_get_uint64(a3, "paid");
  self->_eint.type = xpc_dictionary_get_uint64(a3, "type");
  self->_eint.common.tz.tz_dsttime = xpc_dictionary_get_int64(a3, "timezoneDSTflag");
  self->_eint.common.tz.tz_minuteswest = xpc_dictionary_get_int64(a3, "timezoneMinutesWest");
  self->_eint.common.tv_gmt.tv_sec = xpc_dictionary_get_int64(a3, "timeGMTsec");
  self->_eint.common.tv_gmt.tv_usec = xpc_dictionary_get_int64(a3, "timeGMTusec");
  if (xpc_dictionary_get_BOOL(a3, "32bits"))
  {
    self->_eint.common.opaque_flags = 1;
  }

  uint64 = xpc_dictionary_get_uint64(a3, "traceid");
  v11 = uint64;
  self->_eint.common.trace_id = uint64;
  self->_eint.common.thread = xpc_dictionary_get_uint64(a3, "thread");
  self->_eint.common.timestamp = xpc_dictionary_get_uint64(a3, "timestamp");
  self->_eint.common.offset = xpc_dictionary_get_uint64(a3, "offset");
  self->_eint.common.format_offset = xpc_dictionary_get_uint64(a3, "formatoffset");
  self->_eint.common.image_uuid = xpc_dictionary_get_uuid(a3, "imageuuid");
  p_image_uuid = &self->_eint.common.image_uuid;
  self->_eint.common.image_path = xpc_dictionary_get_string(a3, "imagepath");
  self->_eint.common.timebase.numer = numer;
  self->_eint.common.timebase.denom = denom;
  v13 = xpc_dictionary_get_string(a3, "formatstring");
  self->_eint.common.message = v13;
  if (!v13 && (v14 = xpc_dictionary_get_string(a3, "name"), (self->_eint.common.message = v14) == 0) || !self->_eint.common.image_path)
  {
    v15 = *p_image_uuid;
    if (*p_image_uuid)
    {
      if ((BYTE2(v11) & 6 | 8) == 0xC)
      {
        uuidpath_sharedcache_resolve_fd(0xFFFFFFFFLL, v15, self->_eint.common.format_offset, self->_eint.common.offset, 0, &self->_eint.common.message, 0, &self->_eint.common.image_uuid, &self->_eint.common.image_path, 0, 0);
      }

      else
      {
        uuidpath_resolve(0, v15, self->_eint.common.format_offset, 0, &self->_eint.common.message, 0, &self->_eint.common.image_path, 0);
      }
    }
  }

  type = self->_eint.type;
  if (type > 1023)
  {
    if (type != 1024)
    {
      if (type != 1536)
      {
        return;
      }

      self->_eint.var0.log_message.var1.signpost_id = xpc_dictionary_get_uint64(a3, "signpostid");
      self->_eint.var0.log_message.signpost_name = xpc_dictionary_get_string(a3, "signpostname");
      self->_eint.var0.log_message.var0.signpost_type = BYTE1(v11) & 0x3F;
      self->_eint.var0.log_message.signpost_scope = BYTE1(v11) & 0xC0;
    }

    if ((self->_eint.common.opaque_flags & 2) == 0)
    {
      self->_eint.var0.activity_create.creator_aid = xpc_dictionary_get_data(a3, "buffer", &self->_eint.var0.activity_create.unique_pid);
      self->_eint.var0.loss.end.tv_gmt.tv_sec = xpc_dictionary_get_data(a3, "privdata", &self->_eint.var0.log_message.privdata_sz);
      self->_eint.var0.log_message.category = xpc_dictionary_get_string(a3, "category");
      self->_eint.var0.log_message.subsystem = xpc_dictionary_get_string(a3, "subsystem");
      self->_eint.var0.log_message.persisted = xpc_dictionary_get_BOOL(a3, "persisted");
      if (xpc_dictionary_get_uint64(a3, "timeToLive") > 0xFE)
      {
        v17 = -1;
      }

      else
      {
        v17 = xpc_dictionary_get_uint64(a3, "timeToLive");
      }

      self->_eint.var0.log_message.ttl = v17;
      if ((v11 & 0x10000000) != 0)
      {
        self->_eint.var0.log_message.has_context_data = 1;
      }
    }
  }

  else if (type == 515)
  {
    self->_eint.var0.useraction.persisted = xpc_dictionary_get_BOOL(a3, "persisted");
  }

  else if (type == 768)
  {
    xpc_dictionary_get_value(a3, "payload");
    self->_eint.var0.activity_create.creator_aid = xpc_dictionary_get_data(a3, "buffer", &self->_eint.var0.activity_create.unique_pid);
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v3 = NSStringFromSelector(a3);
  NSLog(&stru_2841AD1D0.isa, v3);
  return 0;
}

- (BOOL)_setLogEvent:(id *)event rangeUUIDIndex:(unint64_t)a4 machTimebase:(mach_timebase_info *)a5 traceFilename:(id)a6
{
  v124 = *MEMORY[0x277D85DE8];
  self->_uuidi = a4;
  processImagePath = self->_processImagePath;
  if (processImagePath)
  {

    self->_processImagePath = 0;
  }

  senderImagePath = self->_senderImagePath;
  if (senderImagePath)
  {

    self->_senderImagePath = 0;
  }

  backtrace = self->_backtrace;
  if (backtrace)
  {

    self->_backtrace = 0;
  }

  logMessage = self->_logMessage;
  if (logMessage)
  {

    self->_logMessage = 0;
  }

  decomposedMessage = self->_decomposedMessage;
  if (decomposedMessage)
  {
    [(OSLogEventDecomposedMessage *)decomposedMessage _unmake];
  }

  metricLabel = self->_metricLabel;
  if (metricLabel)
  {

    self->_metricLabel = 0;
  }

  metricDimensions = self->_metricDimensions;
  if (metricDimensions)
  {

    self->_metricDimensions = 0;
  }

  metricMetadata = self->_metricMetadata;
  if (metricMetadata)
  {

    self->_metricMetadata = 0;
  }

  *&self->_eint.type = 0u;
  *&self->_eint.statedump.ttl = 0;
  *(&self->_eint.var0.loss + 88) = 0u;
  *(&self->_eint.var0.loss + 104) = 0u;
  *&self->_eint.var0.loss.end.tz.tz_minuteswest = 0u;
  *(&self->_eint.var0.loss + 1) = 0u;
  *&self->_eint.var0.loss.start.tz.tz_minuteswest = 0u;
  self->_eint.var0.loss.end.tv_gmt = 0u;
  *&self->_eint.common.sz = 0u;
  self->_eint.var0.loss.start.tv_gmt = 0u;
  *&self->_eint.common.offset = 0u;
  *&self->_eint.common.opaque_flags = 0u;
  *&self->_eint.common.image_path = 0u;
  *&self->_eint.common.tv_gmt.tv_usec = 0u;
  *&self->_eint.common.thread = 0u;
  *&self->_eint.common.dsc_uuid = 0u;
  *&self->_eint.activity_id = 0u;
  *&self->_eint.common.trace_id = 0u;
  *&self->_eint.proc_id = 0u;
  *&self->_eint.proc_imageuuid = 0u;
  self->_event = event;
  self->_efv = 0;
  var0 = event->var0;
  if (event->var0 == 1)
  {
    self->_eint.var0.activity_create = *&event->var5.var0.var0;
    self->_eint.type = 1280;
    self->_eint.var0.timesync.continuous_time = event->var5.var1.var1.var1;
    self->_eint.var0.timesync.wallclock_nsec = event->var5.var1.var1.var2;
    self->_eint.common.timestamp = event->var5.var1.var1.var1;
    self->_eint.common.timebase = *a5;
    self->_eint.common.tz = event->var5.var0.var2.var2.iov_len;
    var2 = event->var5.var1.var1.var2;
    self->_eint.common.tv_gmt.tv_sec = var2 / 0x3B9ACA00;
    self->_eint.common.tv_gmt.tv_usec = var2 % 0x3B9ACA00 / 0x3E8;
LABEL_35:
    LOBYTE(metricMetadata) = 1;
    goto LABEL_148;
  }

  if (var0 == 2)
  {
    self->_eint.var0.activity_create = *&event->var5.var0.var0;
    self->_eint.type = 1280;
    self->_eint.var0.timesync.flags = 1;
    self->_eint.var0.timesync.ttl = event->var5.var2.var1;
    self->_eint.common.timebase = *a5;
    if (event->var5.var2.var2)
    {
      self->_eint.var0.timesync.flags = 3;
    }

    tsdb = self->_tsdb;
    if (tsdb)
    {
      v35 = _timesync_continuous_to_wall_time(tsdb, &self->_eint.var0.activity_create.creator_aid, event->var1, &self->_eint.common.tz);
      self->_eint.common.tv_gmt.tv_sec = v35 / 0x3B9ACA00;
      self->_eint.common.tv_gmt.tv_usec = v35 % 0x3B9ACA00 / 0x3E8;
    }

    goto LABEL_35;
  }

  if (var0 != 3)
  {
    goto LABEL_148;
  }

  v19 = event->var5.var0.var2.var0;
  var1 = event->var5.var0.var2.var1;
  var3 = event->var5.var0.var2.var3;
  v20 = event->var5.var0.var3;
  if (var3)
  {
    var4 = var3->var4;
    var5 = var3->var5;
    self->_eint.pid = var3->var2;
    self->_eint.uid = var5;
    self->_eint.proc_id = var3->var3;
    self->_eint.pidversion = var4;
    self->_eint.proc_imageuuid = var3->var6;
    if (var3->var1)
    {
      self->_eint.common.opaque_flags = 1;
    }
  }

  v24 = v19->var0.var0;
  if (v24 == 24580)
  {
    v37 = event->var5.var0.var2.var0;
    if (v37->var0.var0 == 24580 && !v37->var0.var1 && v37->var0.var2 >= 0x49)
    {
      self->_eint.type = 1024;
      self->_eint.common.opaque_flags = 2;
      self->_eint.activity_id = 0;
      var6 = v37->var1.var2.var6;
      v39 = event->var5.var0.var0;
      self->_eint.common.timestamp = var6;
      self->_eint.common.timebase = v39->var1.var3.var0;
      v40 = event->var5.var0.var0;
      v41 = self->_tsdb;
      if (v41)
      {
        v42 = _timesync_continuous_to_wall_time(v41, &v40->var1.var10[128], var6, &self->_eint.common.tz);
        v43 = v42 / 0x3B9ACA00;
        v44 = v42 % 0x3B9ACA00 / 0x3E8;
        event = self->_event;
        v45 = self->_efv | 1;
      }

      else
      {
        v43 = v40->var1.var0.var2;
        v44 = v40->var1.var0.var3;
        self->_eint.common.tz = self->_tz;
        v95 = v40->var1.var0.var8.var0;
        if (v95 != var6)
        {
          numer = v40->var1.var0.var0.numer;
          denom = v40->var1.var0.var0.denom;
          if (v95 >= var6)
          {
            v113 = (v95 - var6) * numer / denom;
            v43 -= v113 / 0x3B9ACA00;
            v44 -= v113 % 0x3B9ACA00 / 0x3E8;
            if (v44 < 0)
            {
              --v43;
              v44 += 1000000;
            }
          }

          else
          {
            v98 = (var6 - v95) * numer / denom;
            v43 += v98 / 0x3B9ACA00;
            v44 += v98 % 0x3B9ACA00 / 0x3E8;
            if (v44 > 999999)
            {
              ++v43;
              v44 -= 1000000;
            }
          }
        }

        v45 = 1;
      }

      self->_eint.common.tv_gmt.tv_sec = v43;
      *&self->_eint.common.tv_gmt.tv_usec = v44;
      self->_eint.common.dsc_uuid = v37->var1.var9.var9;
      self->_eint.common.image_uuid = &v37->var1.var8.var6[8];
      v114 = v37->var1.var8.var5;
      self->_eint.common.offset = v37->var1.var9.var7;
      self->_eint.common.thread = v114;
      self->_efv = v45;
      self->_eint.var0.log_message.ttl = v37->var1.var3.var2;
      v115 = _simple_support_validate_payload(event->var5.var0.var2.var0, &self->_eint.common.sz);
      self->_eint.common.trace_id = v37->var1.var3.var3[0] << 8;
      v116 = self->_event;
      v117 = v116->var5.var0.var2.var0;
      if (*v117 != 24580)
      {
        goto LABEL_143;
      }

      if (!*(v117 + 4) && *(v117 + 8) >= 0x49uLL && (v118 = _simple_support_validate_payload(v117, 0)) != 0 && *(v118 + 4))
      {
        self->_eint.var0.log_message.subsystem = (v118 + 12);
        v119 = &_CTF_NULLSTR;
        v120 = 256;
      }

      else
      {
LABEL_143:
        v119 = 0;
        v120 = 248;
      }

      *(&self->super.isa + v120) = v119;
      if (v115)
      {
        metricMetadata = v116->var5.var0.var2.var3;
        goto LABEL_146;
      }
    }

    goto LABEL_147;
  }

  if (v24 == 24579)
  {
    v25 = event->var5.var0.var2.var0;
    if (v25->var0.var0 == 24579 && !v25->var0.var1 && v25->var0.var2 >= 0x31)
    {
      self->_eint.type = 2560;
      v26 = v25->var1.var2.var6;
      self->_eint.activity_id = v25->var1.var8.var5;
      v27 = event->var5.var0.var0;
      self->_eint.common.timestamp = v26;
      self->_eint.common.timebase = v27->var1.var3.var0;
      v28 = event->var5.var0.var0;
      v29 = self->_tsdb;
      if (v29)
      {
        v30 = _timesync_continuous_to_wall_time(v29, &v28->var1.var10[128], v26, &self->_eint.common.tz);
        v31 = v30 / 0x3B9ACA00;
        v32 = v30 % 0x3B9ACA00 / 0x3E8;
        event = self->_event;
        v33 = self->_efv | 1;
      }

      else
      {
        v31 = v28->var1.var0.var2;
        v32 = v28->var1.var0.var3;
        self->_eint.common.tz = self->_tz;
        v91 = v28->var1.var0.var8.var0;
        if (v91 != v26)
        {
          v93 = v28->var1.var0.var0.numer;
          v92 = v28->var1.var0.var0.denom;
          if (v91 >= v26)
          {
            v109 = (v91 - v26) * v93 / v92;
            v31 -= v109 / 0x3B9ACA00;
            v32 -= v109 % 0x3B9ACA00 / 0x3E8;
            if (v32 < 0)
            {
              --v31;
              v32 += 1000000;
            }
          }

          else
          {
            v94 = (v26 - v91) * v93 / v92;
            v31 += v94 / 0x3B9ACA00;
            v32 += v94 % 0x3B9ACA00 / 0x3E8;
            if (v32 > 999999)
            {
              ++v31;
              v32 -= 1000000;
            }
          }
        }

        v33 = 1;
      }

      self->_eint.common.tv_gmt.tv_sec = v31;
      *&self->_eint.common.tv_gmt.tv_usec = v32;
      self->_eint.common.image_uuid = v25->var1.var8.var6;
      self->_efv = v33;
      self->_eint.statedump.ttl = v25->var1.var3.var2;
      v110 = event->var5.var0.var2.var0;
      v111 = v110->var0.var2;
      if (v111 - 48 >= 0xC8)
      {
        v112 = *&v110->var1.var10[52];
        if (v111 - 248 >= v112)
        {
          self->_eint.common.sz = v112;
          metricMetadata = event->var5.var0.var2.var3;
LABEL_146:
          LOBYTE(metricMetadata) = metricMetadata != 0;
          goto LABEL_148;
        }
      }
    }

    goto LABEL_147;
  }

  v46 = (*(v20 + 2) & 0xFFFFFFFFFFFFLL) + *(var1 + 1);
  v47 = event->var5.var0.var0;
  self->_eint.common.timestamp = v46;
  self->_eint.common.timebase = v47->var1.var3.var0;
  v48 = event->var5.var0.var0;
  v49 = self->_tsdb;
  if (v49)
  {
    v50 = _timesync_continuous_to_wall_time(v49, &v48->var1.var10[128], v46, &self->_eint.common.tz);
    v51 = v50 / 0x3B9ACA00;
    v52 = v50 % 0x3B9ACA00 / 0x3E8;
  }

  else
  {
    v51 = v48->var1.var0.var2;
    v52 = v48->var1.var0.var3;
    self->_eint.common.tz = self->_tz;
    v53 = v48->var1.var0.var8.var0;
    if (v53 != v46)
    {
      v55 = v48->var1.var0.var0.numer;
      v54 = v48->var1.var0.var0.denom;
      if (v53 >= v46)
      {
        v57 = (v53 - v46) * v55 / v54;
        v51 -= v57 / 0x3B9ACA00;
        v52 -= v57 % 0x3B9ACA00 / 0x3E8;
        if (v52 < 0)
        {
          --v51;
          v52 += 1000000;
        }
      }

      else
      {
        v56 = (v46 - v53) * v55 / v54;
        v51 += v56 / 0x3B9ACA00;
        v52 += v56 % 0x3B9ACA00 / 0x3E8;
        if (v52 > 999999)
        {
          ++v51;
          v52 -= 1000000;
        }
      }
    }
  }

  self->_eint.common.tv_gmt.tv_sec = v51;
  *&self->_eint.common.tv_gmt.tv_usec = v52;
  v58 = HIWORD(*(v20 + 2));
  self->_eint.common.sz = v58;
  self->_eint.common.trace_id = *v20;
  self->_eint.common.thread = *(v20 + 1);
  v59 = *v20;
  if (v59 <= 8 && ((1 << v59) & 0x158) != 0)
  {
    v60 = *v20 << 8;
  }

  else
  {
    v60 = bswap32(*v20) >> 16;
  }

  self->_eint.type = v60;
  if (!var3)
  {
    goto LABEL_147;
  }

  LOBYTE(metricMetadata) = 0;
  v61 = *v20;
  if (v61 > 5)
  {
    if (v61 != 6)
    {
      if (v61 != 7)
      {
        if (v61 != 8)
        {
          goto LABEL_148;
        }

        goto LABEL_61;
      }

      v89 = self->_event->var5.var0.var3;
      v90 = *MEMORY[0x277D85DE8];

      return _parse_loss(self, v89);
    }

LABEL_61:
    v62 = self->_event;
    v63 = v62->var5.var0.var3;
    v122 = 0;
    v64 = *(v63 + 1);
    if ((v64 & 1) == 0)
    {
      LODWORD(v65) = 0;
LABEL_66:
      if ((v64 & 0x10) != 0)
      {
        v65 = (v65 + 8);
        if (*(v63 + 11) < v65)
        {
          goto LABEL_147;
        }

        v122 = v65;
      }

      if ((v64 & 0x100) != 0)
      {
        if (v65 + 4 > *(v63 + 11))
        {
          goto LABEL_147;
        }

        v122 = v65 + 4;
        v67 = v63 + v65;
        v68 = *(v67 + 12);
        v69 = *(v67 + 13);
        if ((v69 + v68) <= 0x1000)
        {
          iov_len = v62->var5.var0.var2.var2.iov_len;
          if (4096 - iov_len <= v68)
          {
            self->_eint.var0.loss.end.tv_gmt.tv_sec = v62->var5.var1.var1.var2 + iov_len + v68 - 4096;
            self->_eint.var0.log_message.privdata_sz = v69;
            self->_eint.common.sz = v58 + v69;
          }
        }
      }

      if (_parse_location(self, v63, &v122))
      {
        LOWORD(v71) = v122;
        if ((*(v63 + 1) & 0x200) != 0)
        {
          LOWORD(v71) = v122 + 2;
          if (v122 + 2 > *(v63 + 11))
          {
            goto LABEL_147;
          }

          v72 = v62->var5.var0.var2.var3;
          v123 = *(v63 + v122 + 24);
          v73 = hashtable_lookup(v72->var9, &v123);
          if (v73)
          {
            self->_eint.var0.log_message.subsystem = *(v73 + 8);
            self->_eint.var0.log_message.category = *(v73 + 16);
          }
        }

        if ((*(v63 + 1) & 0x400) != 0)
        {
          if (*(v63 + 11) <= v71)
          {
            goto LABEL_147;
          }

          v74 = v71;
          LOWORD(v71) = v71 + 1;
          self->_eint.var0.log_message.ttl = *(v63 + v74 + 24);
        }

        v75 = *v63;
        if (v75 == 6)
        {
          v76 = v71;
          v71 = v71 + 8;
          if (v71 > *(v63 + 11))
          {
            goto LABEL_147;
          }

          v77 = v63 + 24;
          v78 = *(v63 + v76 + 24);
          self->_eint.var0.log_message.var0.signpost_type = *(v63 + 1) & 0x3F;
          self->_eint.var0.log_message.signpost_scope = *(v63 + 1) & 0xC0;
          self->_eint.var0.log_message.var1.signpost_id = v78;
          self->_eint.type = 1536;
          if (*(v63 + 1) < 0)
          {
            v79 = v76 + 12;
            v80 = *(v63 + 2);
            if ((v76 + 12) > HIWORD(v80))
            {
              goto LABEL_147;
            }

            v81 = *&v77[v71];
            if ((*(v63 + 1) & 0x20) != 0)
            {
              v103 = HIWORD(v80);
              v104 = v76 + 14;
              if (v76 + 14 > v103)
              {
                goto LABEL_147;
              }

              v82 = *&v77[v79] << 31;
              LOWORD(v79) = v104;
            }

            else
            {
              v82 = 0;
            }

            v105 = v82 | v81 & 0x7FFFFFFF;
            if (v81 < 0)
            {
              v105 |= 0x8000000000000000;
            }

            self->_eint.var0.log_message.signpost_name_offset = v105;
            LOWORD(v71) = v79;
          }

          v75 = *v63;
        }

        if (v75 == 8)
        {
          v106 = v71;
          v71 = v71 + 8;
          if (v71 > *(v63 + 11))
          {
            goto LABEL_147;
          }

          v107 = *(v63 + v106 + 24);
          self->_eint.var0.log_message.var0.signpost_type = *(v63 + 1);
          self->_eint.var0.log_message.var1.signpost_id = v107;
          self->_eint.type = 2048;
        }

        if ((*(v63 + 1) & 0x800) != 0)
        {
          v108 = v71;
          v71 = v71 + 4;
          if (v71 > *(v63 + 11))
          {
            goto LABEL_147;
          }

          self->_eint.var0.log_message.oversize_id = *(v63 + v108 + 24);
        }

        self->_eint.var0.activity_create.creator_aid = v63 + v71 + 24;
        self->_eint.var0.activity_create.unique_pid = *(v63 + 11) - v71;
        LOBYTE(metricMetadata) = 1;
        if ((*(v63 + 1) & 0x1000) != 0)
        {
          self->_eint.var0.log_message.has_context_data = 1;
        }

        goto LABEL_148;
      }

LABEL_147:
      LOBYTE(metricMetadata) = 0;
      goto LABEL_148;
    }

    metricMetadata = (*(v63 + 2) >> 51);
    if (metricMetadata)
    {
      LODWORD(v65) = 8;
      v122 = 8;
      v66 = *(v63 + 3);
      self->_eint.activity_id = v66;
      self->_eint.parent_id = _os_activity_map_find_parent(self->_aid_map, v66);
      v64 = *(v63 + 1);
      goto LABEL_66;
    }

LABEL_148:
    v121 = *MEMORY[0x277D85DE8];
    return metricMetadata & 1;
  }

  if (v61 == 2)
  {
    v83 = *(v20 + 1);
    switch(v83)
    {
      case 1:
        v101 = self->_event->var5.var0.var3;
        v102 = *MEMORY[0x277D85DE8];

        return _parse_activity_create(self, v101);
      case 3:
        v99 = self->_event->var5.var0.var3;
        v100 = *MEMORY[0x277D85DE8];

        return _parse_activity_useraction(self, v99);
      case 2:
        v84 = self->_event->var5.var0.var3;
        v85 = *MEMORY[0x277D85DE8];

        return _parse_activity_swap(self, v84);
    }

    goto LABEL_61;
  }

  if (v61 != 3)
  {
    if (v61 != 4)
    {
      goto LABEL_148;
    }

    goto LABEL_61;
  }

  v87 = self->_event->var5.var0.var3;
  v88 = *MEMORY[0x277D85DE8];

  return _parse_trace(self, v87);
}

- (void)_setBuffer:(const void *)a3 size:(unint64_t)a4 privateBuffer:(const void *)a5 privateSize:(unint64_t)a6
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_eint.var0.timesync.flags)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  self->_eint.var0.activity_create.creator_aid = a3;
  self->_eint.var0.activity_create.unique_pid = a4;
  self->_eint.var0.loss.end.tv_gmt.tv_sec = a5;
  self->_eint.var0.log_message.privdata_sz = a6;
  self->_eint.common.sz += a6 + a4;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setFallbackTimezone
{
  v6 = time(0);
  memset(&v5, 0, sizeof(v5));
  localtime_r(&v6, &v5);
  tm_isdst = v5.tm_isdst;
  self->_tz.tz_dsttime = v5.tm_isdst;
  v4 = ((v5.tm_gmtoff * 0x7777777777777777) >> 64) - v5.tm_gmtoff;
  self->_tz.tz_minuteswest = (v4 >> 5) + (v4 >> 63) + 60 * tm_isdst;
}

- (OSLogEventProxy)init
{
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: OSLogEventProxy should not be created";
  __break(1u);
  return self;
}

- (void)_unmake
{
  if (self->_retainCount)
  {
    __LOGEVENTPROXY_RETAINED_OUTSIDE_OF_ITERATION__();
  }

  processImagePath = self->_processImagePath;
  if (processImagePath)
  {

    self->_processImagePath = 0;
  }

  senderImagePath = self->_senderImagePath;
  if (senderImagePath)
  {

    self->_senderImagePath = 0;
  }

  backtrace = self->_backtrace;
  if (backtrace)
  {

    self->_backtrace = 0;
  }

  logMessage = self->_logMessage;
  if (logMessage)
  {

    self->_logMessage = 0;
  }

  decomposedMessage = self->_decomposedMessage;
  if (decomposedMessage)
  {

    self->_decomposedMessage = 0;
  }

  metricLabel = self->_metricLabel;
  if (metricLabel)
  {

    self->_metricLabel = 0;
  }

  metricDimensions = self->_metricDimensions;
  if (metricDimensions)
  {

    self->_metricDimensions = 0;
  }

  metricMetadata = self->_metricMetadata;
  if (metricMetadata)
  {

    self->_metricMetadata = 0;
  }

  _os_activity_map_destroy(self->_aid_map);

  NSDeallocateObject(self);
}

@end