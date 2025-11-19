@interface DAEvent
+ (id)allocInitWithXPCObject:(id)a3 error:(id *)a4;
- (DAEvent)initWithCoder:(id)a3;
- (DAEvent)initWithEventType:(int64_t)a3;
- (DAEvent)initWithEventType:(int64_t)a3 error:(id)a4;
- (DAEvent)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DAEvent

- (DAEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DAEvent;
  v5 = [(DAEvent *)&v10 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"evTy"])
    {
      v5->_eventType = [v7 decodeIntegerForKey:@"evTy"];
    }

    v8 = v5;
  }

  else
  {
    [DAEvent initWithCoder:];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  error = self->_error;
  v7 = v4;
  if (error)
  {
    [v4 encodeObject:error forKey:@"errr"];
    v4 = v7;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v7 encodeInteger:eventType forKey:@"evTy"];
    v4 = v7;
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  error = self->_error;
  xdict = v4;
  CUXPCEncodeNSError();
  eventType = self->_eventType;
  if (eventType)
  {
    xpc_dictionary_set_int64(xdict, "evTy", eventType);
  }
}

- (DAEvent)initWithEventType:(int64_t)a3
{
  v4 = [(DAEvent *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = a3;
    v6 = v4;
  }

  return v5;
}

- (DAEvent)initWithEventType:(int64_t)a3 error:(id)a4
{
  v7 = a4;
  v8 = [(DAEvent *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, a4);
    v9->_eventType = a3;
    v10 = v9;
  }

  return v9;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    v13 = DAEventTypeToString(eventType);
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  error = self->_error;
  if (error)
  {
    v8 = error;
    v14 = CUPrintNSError();
    CUAppendF();
    v9 = v4;

    v4 = v9;
  }

  v10 = &stru_285B4C350;
  if (v4)
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

+ (id)allocInitWithXPCObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = CUXPCDecodeSInt64RangedEx();
  if (v6 == 6)
  {
    JUMPOUT(0);
  }

  if (v6 != 5 && a4)
  {
    v7 = OUTLINED_FUNCTION_8();
    *a4 = DAErrorF(v7, v8, v9, v10, v11, v12, v13, v14, 0);
  }

  return 0;
}

- (DAEvent)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = OUTLINED_FUNCTION_4_0(self, a2, a3);
  v20.receiver = v4;
  v20.super_class = DAEvent;
  v7 = [(DAEvent *)&v20 init];
  if (!v7)
  {
    if (v5)
    {
      v19 = objc_opt_class();
      v11 = OUTLINED_FUNCTION_8();
      DAErrorF(v11, v12, v13, v14, v15, v16, v17, v18, v19);
      *v5 = v9 = 0;
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (!CUXPCDecodeNSError())
  {
    goto LABEL_10;
  }

  v21 = 0;
  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 != 6)
  {
    if (v8 != 5)
    {
      goto LABEL_6;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_7;
  }

  v7->_eventType = v21;
LABEL_6:
  v9 = v7;
LABEL_7:

  return v9;
}

- (void)initWithCoder:.cold.1()
{
  v10 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_8();
  v9 = DAErrorF(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  OUTLINED_FUNCTION_3_0(v9);
}

@end