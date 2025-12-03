@interface CLIntersiloServiceMock
- (id)getPayloadForKey:(id)key;
- (id)getPayloadForSelector:(SEL)selector;
- (id)syncgetPayloadForSelector:(SEL)selector;
- (void)beginService;
- (void)removePayloadForKey:(id)key;
- (void)removePayloadForSelector:(SEL)selector;
- (void)setPayload:(id)payload forKey:(id)key;
- (void)setPayload:(id)payload forSelector:(SEL)selector;
@end

@implementation CLIntersiloServiceMock

- (void)beginService
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(CLIntersiloServiceMock *)self setKeyedPayloads:v3];
}

- (void)setPayload:(id)payload forKey:(id)key
{
  v26 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  keyCopy = key;
  keyedPayloads = [(CLIntersiloServiceMock *)self keyedPayloads];

  if (!keyedPayloads)
  {
    v12 = sub_1DF814218();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "self.keyedPayloads";
      _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Overrider didn't call up to super for beginService?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v13 = sub_1DF814218();
    if (os_signpost_enabled(v13))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "self.keyedPayloads";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Overrider didn't call up to super for beginService?", "{msg%{public}.0s:Overrider didn't call up to super for beginService?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = sub_1DF814218();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "self.keyedPayloads";
      _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overrider didn't call up to super for beginService?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_19:

    abort_report_np();
  }

  keyedPayloads2 = [(CLIntersiloServiceMock *)self keyedPayloads];
  v9 = [keyedPayloads2 objectForKey:keyCopy];

  if (v9)
  {
    v15 = sub_1DF814218();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "![self.keyedPayloads objectForKey:key]";
      _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Only one payload per key at at time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v16 = sub_1DF814218();
    if (os_signpost_enabled(v16))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "![self.keyedPayloads objectForKey:key]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Only one payload per key at at time", "{msg%{public}.0s:Only one payload per key at at time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = sub_1DF814218();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "![self.keyedPayloads objectForKey:key]";
      _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Only one payload per key at at time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_19;
  }

  keyedPayloads3 = [(CLIntersiloServiceMock *)self keyedPayloads];
  [keyedPayloads3 setObject:payloadCopy forKey:keyCopy];

  [payloadCopy setInUse:1];
  v11 = *MEMORY[0x1E69E9840];
}

- (id)getPayloadForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyedPayloads = [(CLIntersiloServiceMock *)self keyedPayloads];
  v6 = [keyedPayloads objectForKey:keyCopy];

  if (!v6)
  {
    v9 = sub_1DF814218();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "payload";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:A payload must be ready for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v10 = sub_1DF814218();
    if (os_signpost_enabled(v10))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "payload";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "A payload must be ready for this key", "{msg%{public}.0s:A payload must be ready for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v11 = sub_1DF814218();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "payload";
      _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:A payload must be ready for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)removePayloadForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyedPayloads = [(CLIntersiloServiceMock *)self keyedPayloads];
  v5 = [keyedPayloads objectForKey:keyCopy];

  if (!v5)
  {
    v8 = sub_1DF814218();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "payload";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:A payload must be around to remove for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v9 = sub_1DF814218();
    if (os_signpost_enabled(v9))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "payload";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "A payload must be around to remove for this key", "{msg%{public}.0s:A payload must be around to remove for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v10 = sub_1DF814218();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "payload";
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:A payload must be around to remove for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  keyedPayloads2 = [(CLIntersiloServiceMock *)self keyedPayloads];
  [keyedPayloads2 removeObjectForKey:keyCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setPayload:(id)payload forSelector:(SEL)selector
{
  payloadCopy = payload;
  v7 = NSStringFromSelector(selector);
  [(CLIntersiloServiceMock *)self setPayload:payloadCopy forKey:v7];
}

- (id)syncgetPayloadForSelector:(SEL)selector
{
  v4 = NSStringFromSelector(selector);
  v5 = [(CLIntersiloServiceMock *)self getPayloadForKey:v4];

  return v5;
}

- (id)getPayloadForSelector:(SEL)selector
{
  v4 = NSStringFromSelector(selector);
  v5 = [(CLIntersiloServiceMock *)self getPayloadForKey:v4];

  return v5;
}

- (void)removePayloadForSelector:(SEL)selector
{
  v4 = NSStringFromSelector(selector);
  [(CLIntersiloServiceMock *)self removePayloadForKey:v4];
}

@end