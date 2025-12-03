@interface CLIntersiloService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
+ (void)performSyncOnSilo:(id)silo invoker:(id)invoker;
- (CLIntersiloService)init;
- (CLIntersiloService)initWithInboundProtocol:(id)protocol outboundProtocol:(id)outboundProtocol;
- (NSString)debugDescription;
- (void)setSilo:(id)silo;
- (void)setVendor:(id)vendor;
@end

@implementation CLIntersiloService

+ (id)getSilo
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }
}

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  blockedCopy = blocked;
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }

  v6 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
  {
    v7 = v6;
    v16 = 68289282;
    *v17 = 2082;
    *&v17[2] = &unk_1DF8255EF;
    *&v17[10] = 2114;
    *&v17[12] = objc_opt_class();
    v8 = *&v17[12];
    _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:-becameFatallyBlocked:index: was not overriden, class:%{public, location:escape_only}@}", &v16, 0x1Cu);

    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
    }
  }

  v9 = qword_1ED5FAD48;
  if (os_signpost_enabled(qword_1ED5FAD48))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v16 = 68289282;
    *v17 = 2082;
    *&v17[2] = &unk_1DF8255EF;
    *&v17[10] = 2114;
    *&v17[12] = v11;
    v12 = v11;
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "-becameFatallyBlocked:index: was not overriden", "{msg%{public}.0s:-becameFatallyBlocked:index: was not overriden, class:%{public, location:escape_only}@}", &v16, 0x1Cu);
  }

  v13 = index + 1;
  if (v13 < [blockedCopy count])
  {
    v14 = [blockedCopy objectAtIndexedSubscript:v13];
    [v14 becameFatallyBlocked:blockedCopy index:v13];
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)performSyncOnSilo:(id)silo invoker:(id)invoker
{
  v18 = *MEMORY[0x1E69E9840];
  siloCopy = silo;
  invokerCopy = invoker;
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
      }
    }

    v8 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
      }
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }
}

- (CLIntersiloService)init
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }
}

- (CLIntersiloService)initWithInboundProtocol:(id)protocol outboundProtocol:(id)outboundProtocol
{
  v18[2] = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  outboundProtocolCopy = outboundProtocol;
  v16.receiver = self;
  v16.super_class = CLIntersiloService;
  v8 = [(CLIntersiloService *)&v16 init];
  v9 = v8;
  if (v8)
  {
    if (protocolCopy && outboundProtocolCopy)
    {
      v10 = +[CLIntersiloInterface sharedInterface];
      v18[0] = &unk_1F5ACAE18;
      v18[1] = &unk_1F5ACA788;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
      [v10 extendSelectorInfoWithProtocol:protocolCopy bases:v11];

      v12 = +[CLIntersiloInterface sharedInterface];
      v17 = &unk_1F5ACA788;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      [v12 extendSelectorInfoWithProtocol:outboundProtocolCopy bases:v13];
    }

    else
    {
      v12 = v8;
      v9 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setSilo:(id)silo
{
  v17 = *MEMORY[0x1E69E9840];
  siloCopy = silo;
  if (self->_silo)
  {
    v6 = sub_1DF814218();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "!_silo";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The silo associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_1DF814218();
    if (os_signpost_enabled(v7))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "!_silo";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The silo associated with a CLIntersiloService may not be changed once set", "{msg%{public}.0s:The silo associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_1DF814218();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "!_silo";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The silo associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  self->_silo = siloCopy;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setVendor:(id)vendor
{
  v17 = *MEMORY[0x1E69E9840];
  vendorCopy = vendor;
  if (self->_vendor)
  {
    v6 = sub_1DF814218();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "!_vendor";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The vendor associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_1DF814218();
    if (os_signpost_enabled(v7))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "!_vendor";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The vendor associated with a CLIntersiloService may not be changed once set", "{msg%{public}.0s:The vendor associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_1DF814218();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "!_vendor";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The vendor associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  self->_vendor = vendorCopy;
  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CLIntersiloService;
  v4 = [(CLIntersiloService *)&v9 debugDescription];
  universe = [(CLIntersiloService *)self universe];
  silo = [universe silo];
  v7 = [v3 stringWithFormat:@"%@\nSilo: %@", v4, silo];

  return v7;
}

@end