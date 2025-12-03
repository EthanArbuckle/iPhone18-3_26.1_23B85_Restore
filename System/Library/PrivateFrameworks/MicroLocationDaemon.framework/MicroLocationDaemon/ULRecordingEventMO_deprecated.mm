@interface ULRecordingEventMO_deprecated
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (void)convertToDO;
@end

@implementation ULRecordingEventMO_deprecated

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [[ULRecordingEventMO_deprecated alloc] initWithContext:context];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v6 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setRecordingUUID:uUIDString];

  [(ULRecordingEventMO_deprecated *)v5 setRecordingTimestamp:*(o + 2)];
  if (*(o + 47) >= 0)
  {
    v8 = o + 24;
  }

  else
  {
    v8 = *(o + 3);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  [(ULRecordingEventMO_deprecated *)v5 setLoiType:v9];

  [(ULRecordingEventMO_deprecated *)v5 setReceivedTimestamp:*(o + 8)];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 48];
  uUIDString2 = [v10 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setLoiId:uUIDString2];

  if (*(o + 240) == 1)
  {
    v20 = *(o + 14);
  }

  else
  {
    v20 = 0uLL;
  }

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v20];
  uUIDString3 = [v12 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setTriggerUUID:uUIDString3];

  v14 = [(ULRecordingEventMO_deprecated *)v5 setEventType:*(o + 18)];
  v15 = *(o + 18);
  if (v15 == 13)
  {
    if ((*(o + 221) & 4) != 0)
    {
      v18 = *(o + 21);
      if (!v18)
      {
        v14 = CLMicroLocationProto::RecordingEvent::default_instance(v14);
        v18 = *(v14 + 11);
      }

      if ((*(v18 + 44) & 2) != 0)
      {
        v17 = *(o + 21);
        if (!v17)
        {
          v17 = *(CLMicroLocationProto::RecordingEvent::default_instance(v14) + 88);
        }

        goto LABEL_21;
      }
    }
  }

  else if (v15 == 1 && (*(o + 220) & 4) != 0)
  {
    v16 = *(o + 12);
    if (!v16)
    {
      v14 = CLMicroLocationProto::RecordingEvent::default_instance(v14);
      v16 = *(v14 + 2);
    }

    if ((*(v16 + 44) & 2) != 0)
    {
      v17 = *(o + 12);
      if (!v17)
      {
        v17 = *(CLMicroLocationProto::RecordingEvent::default_instance(v14) + 16);
      }

LABEL_21:
      [(ULRecordingEventMO_deprecated *)v5 setEventSubType:*(v17 + 12)];
    }
  }

  CLMicroLocationProto::RecordingEvent::ByteSize((o + 80));
  operator new[]();
}

- (void)convertToDO
{
  v50 = *MEMORY[0x277D85DE8];
  recordingUUID = [self recordingUUID];
  v5 = recordingUUID;
  if (recordingUUID)
  {
    [recordingUUID boostUUID];
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  if (v49)
  {
    [self recordingTimestamp];
    v7 = v6;
    [self receivedTimestamp];
    v9 = v8;
    loiType = [self loiType];
    v11 = loiType;
    if (loiType)
    {
      [loiType stdString];
    }

    else
    {
      *v31 = 0u;
      v32 = 0u;
    }

    if (BYTE8(v32))
    {
      loiId = [self loiId];
      v14 = loiId;
      if (loiId)
      {
        [loiId boostUUID];
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
      }

      if ((v46 & 1) == 0)
      {
        v44 = 0;
        v45 = 0;
        v46 = 1;
      }

      eventType = [self eventType];
      triggerUUID = [self triggerUUID];
      v18 = triggerUUID;
      if (triggerUUID)
      {
        [triggerUUID boostUUID];
      }

      else
      {
        v42 = 0uLL;
        v43 = 0;
      }

      if (v43 == 1 && v42 == 0)
      {
        v43 = 0;
      }

      event = [self event];
      v20 = event;
      bytes = [event bytes];
      event2 = [self event];
      [event2 length];
      LOBYTE(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v30, bytes);

      if (bytes)
      {
        if (v49 != 1 || (BYTE8(v32) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v24 = v47;
        v25 = v48;
        if (SBYTE7(v32) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, v31[0], v31[1]);
        }

        else
        {
          *&v29.__r_.__value_.__l.__data_ = *v31;
          v29.__r_.__value_.__r.__words[2] = v32;
        }

        v33 = v42;
        v34 = v43;
        if ((v46 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ULRecordingEventDO::ULRecordingEventDO(buf, v24, v25, &v29, eventType, v30, &v33, v23, v7, v9, v44, v45);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v27 = v38;
        *(a2 + 16) = v36;
        *a2 = *buf;
        *(a2 + 24) = __p;
        *(a2 + 40) = v27;
        __p = 0uLL;
        v38 = 0;
        *(a2 + 48) = v39[0];
        *(a2 + 60) = *(v39 + 12);
        CLMicroLocationProto::RecordingEvent::RecordingEvent((a2 + 80), v40);
        *(a2 + 224) = v40[9];
        *(a2 + 240) = v41;
        *(a2 + 248) = 1;
        CLMicroLocationProto::RecordingEvent::~RecordingEvent(v40);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          +[ULRecordingEventMO_deprecated createFromDO:inManagedObjectContext:];
        }

        v26 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize recordingEvent protobuf from byte stream", buf, 2u);
        }

        *a2 = 0;
        *(a2 + 248) = 0;
      }

      CLMicroLocationProto::RecordingEvent::~RecordingEvent(v30);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        +[ULRecordingEventMO_deprecated createFromDO:inManagedObjectContext:];
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "convertToDO: recordingEvent's loiType has no value", buf, 2u);
      }

      *a2 = 0;
      *(a2 + 248) = 0;
    }

    if (BYTE8(v32) == 1 && SBYTE7(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[ULRecordingEventMO_deprecated createFromDO:inManagedObjectContext:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "convertToDO: recordingEvent's recordingUUID has no value", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 248) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end