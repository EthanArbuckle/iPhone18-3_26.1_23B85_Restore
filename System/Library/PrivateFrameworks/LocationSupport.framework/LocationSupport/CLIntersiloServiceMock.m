@interface CLIntersiloServiceMock
- (id)getPayloadForKey:(id)a3;
- (id)getPayloadForSelector:(SEL)a3;
- (id)syncgetPayloadForSelector:(SEL)a3;
- (void)beginService;
- (void)removePayloadForKey:(id)a3;
- (void)removePayloadForSelector:(SEL)a3;
- (void)setPayload:(id)a3 forKey:(id)a4;
- (void)setPayload:(id)a3 forSelector:(SEL)a4;
@end

@implementation CLIntersiloServiceMock

- (void)beginService
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(CLIntersiloServiceMock *)self setKeyedPayloads:v3];
}

- (void)setPayload:(id)a3 forKey:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v6 = a4;
  v7 = [(CLIntersiloServiceMock *)self keyedPayloads];

  if (!v7)
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

  v8 = [(CLIntersiloServiceMock *)self keyedPayloads];
  v9 = [v8 objectForKey:v6];

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

  v10 = [(CLIntersiloServiceMock *)self keyedPayloads];
  [v10 setObject:v17 forKey:v6];

  [v17 setInUse:1];
  v11 = *MEMORY[0x1E69E9840];
}

- (id)getPayloadForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CLIntersiloServiceMock *)self keyedPayloads];
  v6 = [v5 objectForKey:v4];

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

- (void)removePayloadForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v4 = [(CLIntersiloServiceMock *)self keyedPayloads];
  v5 = [v4 objectForKey:v11];

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

  v6 = [(CLIntersiloServiceMock *)self keyedPayloads];
  [v6 removeObjectForKey:v11];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setPayload:(id)a3 forSelector:(SEL)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(a4);
  [(CLIntersiloServiceMock *)self setPayload:v6 forKey:v7];
}

- (id)syncgetPayloadForSelector:(SEL)a3
{
  v4 = NSStringFromSelector(a3);
  v5 = [(CLIntersiloServiceMock *)self getPayloadForKey:v4];

  return v5;
}

- (id)getPayloadForSelector:(SEL)a3
{
  v4 = NSStringFromSelector(a3);
  v5 = [(CLIntersiloServiceMock *)self getPayloadForKey:v4];

  return v5;
}

- (void)removePayloadForSelector:(SEL)a3
{
  v4 = NSStringFromSelector(a3);
  [(CLIntersiloServiceMock *)self removePayloadForKey:v4];
}

@end