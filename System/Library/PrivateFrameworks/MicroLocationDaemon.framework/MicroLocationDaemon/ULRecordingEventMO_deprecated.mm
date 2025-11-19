@interface ULRecordingEventMO_deprecated
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (void)convertToDO;
@end

@implementation ULRecordingEventMO_deprecated

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [[ULRecordingEventMO_deprecated alloc] initWithContext:a4];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v7 = [v6 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setRecordingUUID:v7];

  [(ULRecordingEventMO_deprecated *)v5 setRecordingTimestamp:*(a3 + 2)];
  if (*(a3 + 47) >= 0)
  {
    v8 = a3 + 24;
  }

  else
  {
    v8 = *(a3 + 3);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  [(ULRecordingEventMO_deprecated *)v5 setLoiType:v9];

  [(ULRecordingEventMO_deprecated *)v5 setReceivedTimestamp:*(a3 + 8)];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3 + 48];
  v11 = [v10 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setLoiId:v11];

  if (*(a3 + 240) == 1)
  {
    v20 = *(a3 + 14);
  }

  else
  {
    v20 = 0uLL;
  }

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v20];
  v13 = [v12 UUIDString];
  [(ULRecordingEventMO_deprecated *)v5 setTriggerUUID:v13];

  v14 = [(ULRecordingEventMO_deprecated *)v5 setEventType:*(a3 + 18)];
  v15 = *(a3 + 18);
  if (v15 == 13)
  {
    if ((*(a3 + 221) & 4) != 0)
    {
      v18 = *(a3 + 21);
      if (!v18)
      {
        v14 = CLMicroLocationProto::RecordingEvent::default_instance(v14);
        v18 = *(v14 + 11);
      }

      if ((*(v18 + 44) & 2) != 0)
      {
        v17 = *(a3 + 21);
        if (!v17)
        {
          v17 = *(CLMicroLocationProto::RecordingEvent::default_instance(v14) + 88);
        }

        goto LABEL_21;
      }
    }
  }

  else if (v15 == 1 && (*(a3 + 220) & 4) != 0)
  {
    v16 = *(a3 + 12);
    if (!v16)
    {
      v14 = CLMicroLocationProto::RecordingEvent::default_instance(v14);
      v16 = *(v14 + 2);
    }

    if ((*(v16 + 44) & 2) != 0)
    {
      v17 = *(a3 + 12);
      if (!v17)
      {
        v17 = *(CLMicroLocationProto::RecordingEvent::default_instance(v14) + 16);
      }

LABEL_21:
      [(ULRecordingEventMO_deprecated *)v5 setEventSubType:*(v17 + 12)];
    }
  }

  CLMicroLocationProto::RecordingEvent::ByteSize((a3 + 80));
  operator new[]();
}

- (void)convertToDO
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = [a1 recordingUUID];
  v5 = v4;
  if (v4)
  {
    [v4 boostUUID];
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  if (v49)
  {
    [a1 recordingTimestamp];
    v7 = v6;
    [a1 receivedTimestamp];
    v9 = v8;
    v10 = [a1 loiType];
    v11 = v10;
    if (v10)
    {
      [v10 stdString];
    }

    else
    {
      *v31 = 0u;
      v32 = 0u;
    }

    if (BYTE8(v32))
    {
      v13 = [a1 loiId];
      v14 = v13;
      if (v13)
      {
        [v13 boostUUID];
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

      v16 = [a1 eventType];
      v17 = [a1 triggerUUID];
      v18 = v17;
      if (v17)
      {
        [v17 boostUUID];
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

      v19 = [a1 event];
      v20 = v19;
      v21 = [v19 bytes];
      v22 = [a1 event];
      [v22 length];
      LOBYTE(v21) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v30, v21);

      if (v21)
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

        ULRecordingEventDO::ULRecordingEventDO(buf, v24, v25, &v29, v16, v30, &v33, v23, v7, v9, v44, v45);
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