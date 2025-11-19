@interface CLIntersiloInterfaceSelectorInfo
- (CLIntersiloInterfaceSelectorInfo)initWithSelector:(SEL)a3 andMethodSignature:(id)a4;
- (SEL)sel;
- (id)description;
@end

@implementation CLIntersiloInterfaceSelectorInfo

- (CLIntersiloInterfaceSelectorInfo)initWithSelector:(SEL)a3 andMethodSignature:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [v7 numberOfArguments];
  if (v8 < 32)
  {
    v66.receiver = self;
    v66.super_class = CLIntersiloInterfaceSelectorInfo;
    v9 = [(CLIntersiloInterfaceSelectorInfo *)&v66 init];
    v10 = v9;
    if (!v9)
    {
LABEL_36:

      v25 = *MEMORY[0x1E69E9840];
      return v10;
    }

    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    v9->_sel = v11;
    p_sel = &v9->_sel;
    objc_storeStrong(&v9->_sig, a4);
    if (*p_sel)
    {
      v13 = *p_sel;
    }

    else
    {
      v13 = 0;
    }

    v14 = NSStringFromSelector(v13);
    if ([(NSMethodSignature *)v10->_sig methodReturnLength])
    {
      if ([v14 hasPrefix:@"syncget"])
      {
        if (v8 < 3)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v50 = sub_1DF80C018();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        v51 = v14;
        v52 = [v14 UTF8String];
        *buf = 68289795;
        v68 = 0;
        v69 = 2082;
        v70 = &unk_1DF8255EF;
        v71 = 2081;
        v72 = v52;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        v76 = "0 == returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v50, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Methods returning non-void must begin 'syncget...', selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v53 = sub_1DF80C018();
      if (os_signpost_enabled(v53))
      {
        v54 = v14;
        v55 = [v14 UTF8String];
        *buf = 68289795;
        v68 = 0;
        v69 = 2082;
        v70 = &unk_1DF8255EF;
        v71 = 2081;
        v72 = v55;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        v76 = "0 == returnValueSize";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Methods returning non-void must begin 'syncget...'", "{msg%{public}.0s:Methods returning non-void must begin 'syncget...', selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v39 = sub_1DF80C018();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v56 = v14;
        v57 = [v14 UTF8String];
        *buf = 68289795;
        v68 = 0;
        v69 = 2082;
        v70 = &unk_1DF8255EF;
        v71 = 2081;
        v72 = v57;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        v76 = "0 == returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Methods returning non-void must begin 'syncget...', selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

LABEL_79:

      result = abort_report_np();
      goto LABEL_80;
    }

    if ([v14 hasPrefix:@"syncget"])
    {
      v58 = sub_1DF80C018();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        v59 = v14;
        v60 = [v14 UTF8String];
        *buf = 68289795;
        v68 = 0;
        v69 = 2082;
        v70 = &unk_1DF8255EF;
        v71 = 2081;
        v72 = v60;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        v76 = "0 != returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v58, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Methods beginning 'syncget...' must return non-void, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v61 = sub_1DF80C018();
      if (os_signpost_enabled(v61))
      {
        v62 = v14;
        v63 = [v14 UTF8String];
        *buf = 68289795;
        v68 = 0;
        v69 = 2082;
        v70 = &unk_1DF8255EF;
        v71 = 2081;
        v72 = v63;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        v76 = "0 != returnValueSize";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Methods beginning 'syncget...' must return non-void", "{msg%{public}.0s:Methods beginning 'syncget...' must return non-void, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v39 = sub_1DF80C018();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v64 = v14;
        v65 = [v14 UTF8String];
        *buf = 68289795;
        v68 = 0;
        v69 = 2082;
        v70 = &unk_1DF8255EF;
        v71 = 2081;
        v72 = v65;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        v76 = "0 != returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Methods beginning 'syncget...' must return non-void, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      goto LABEL_79;
    }

    if (v8 < 3)
    {
LABEL_35:
      v24 = v10;

      goto LABEL_36;
    }

    if ([v14 hasSuffixInsensitive:@"doAsync:"])
    {
      goto LABEL_24;
    }

    v15 = [v14 rangeOfString:@"withReply:" options:1];
    v16 = [(NSMethodSignature *)v10->_sig getArgumentTypeAtIndex:(v8 - 1)];
    if (*v16 == 64 && v16[1] == 63 && !v16[2])
    {
      v10->_lastArgBlockIndex = v8 - 1;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10->_lastArgBlockIndex = -v10->_lastArgBlockIndex;
    }

    else
    {
      v18 = [v14 length];
      if (v15 != v18 - [@"withReply:" length])
      {
        v33 = sub_1DF80C018();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v34 = v14;
          v35 = [v14 UTF8String];
          *buf = 68289795;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2081;
          v72 = v35;
          v73 = 2082;
          v74 = "assert";
          v75 = 2081;
          v76 = "subStringRange.location == (selStr.length - subString.length)";
          _os_log_impl(&dword_1DF7FE000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:withReply: can only be used at the end of a method name, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v36 = sub_1DF80C018();
        if (os_signpost_enabled(v36))
        {
          v37 = v14;
          v38 = [v14 UTF8String];
          *buf = 68289795;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2081;
          v72 = v38;
          v73 = 2082;
          v74 = "assert";
          v75 = 2081;
          v76 = "subStringRange.location == (selStr.length - subString.length)";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "withReply: can only be used at the end of a method name", "{msg%{public}.0s:withReply: can only be used at the end of a method name, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v39 = sub_1DF80C018();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = v14;
          v41 = [v14 UTF8String];
          *buf = 68289795;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2081;
          v72 = v41;
          v73 = 2082;
          v74 = "assert";
          v75 = 2081;
          v76 = "subStringRange.location == (selStr.length - subString.length)";
          _os_log_impl(&dword_1DF7FE000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:withReply: can only be used at the end of a method name, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        goto LABEL_79;
      }

      if ((v17 & 1) == 0)
      {
        v42 = sub_1DF80C018();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v43 = v14;
          v44 = [v14 UTF8String];
          *buf = 68289795;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2081;
          v72 = v44;
          v73 = 2082;
          v74 = "assert";
          v75 = 2081;
          v76 = "isLastArgBlockType";
          _os_log_impl(&dword_1DF7FE000, v42, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:withReply: argument name should only take block type argument, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v45 = sub_1DF80C018();
        if (os_signpost_enabled(v45))
        {
          v46 = v14;
          v47 = [v14 UTF8String];
          *buf = 68289795;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2081;
          v72 = v47;
          v73 = 2082;
          v74 = "assert";
          v75 = 2081;
          v76 = "isLastArgBlockType";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v45, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "withReply: argument name should only take block type argument", "{msg%{public}.0s:withReply: argument name should only take block type argument, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v39 = sub_1DF80C018();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v48 = v14;
          v49 = [v14 UTF8String];
          *buf = 68289795;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2081;
          v72 = v49;
          v73 = 2082;
          v74 = "assert";
          v75 = 2081;
          v76 = "isLastArgBlockType";
          _os_log_impl(&dword_1DF7FE000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:withReply: argument name should only take block type argument, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        goto LABEL_79;
      }
    }

LABEL_24:
    v19 = v8 & 0x7FFFFFFF;
    v20 = 2;
    while (1)
    {
      v21 = [(NSMethodSignature *)v10->_sig getArgumentTypeAtIndex:v20];
      v22 = *v21;
      if (v22 == 82)
      {
        v23 = *(v21 + 1);
        if (v23 == 64)
        {
          if (v21[2])
          {
            goto LABEL_34;
          }
        }

        else if (64 != v23)
        {
          goto LABEL_34;
        }
      }

      else if (82 != v22)
      {
        goto LABEL_34;
      }

      if (v10->_returnAddressIndex)
      {
        v27 = sub_1DF80C018();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2082;
          v72 = "assert";
          v73 = 2081;
          v74 = "0 == _returnAddressIndex";
          _os_log_impl(&dword_1DF7FE000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v28 = sub_1DF80C018();
        if (os_signpost_enabled(v28))
        {
          *buf = 68289539;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2082;
          v72 = "assert";
          v73 = 2081;
          v74 = "0 == _returnAddressIndex";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v29 = sub_1DF80C018();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v68 = 0;
          v69 = 2082;
          v70 = &unk_1DF8255EF;
          v71 = 2082;
          v72 = "assert";
          v73 = 2081;
          v74 = "0 == _returnAddressIndex";
          _os_log_impl(&dword_1DF7FE000, v29, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        result = abort_report_np();
        goto LABEL_80;
      }

      v10->_returnAddressIndex = v20;
LABEL_34:
      if (v19 == ++v20)
      {
        goto LABEL_35;
      }
    }
  }

  v30 = sub_1DF80C018();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v68 = 0;
    v69 = 2082;
    v70 = &unk_1DF8255EF;
    v71 = 2082;
    v72 = "assert";
    v73 = 2081;
    v74 = "32 > numArguments";
    _os_log_impl(&dword_1DF7FE000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Too many arguments to selector in IntersiloInterface, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v31 = sub_1DF80C018();
  if (os_signpost_enabled(v31))
  {
    *buf = 68289539;
    v68 = 0;
    v69 = 2082;
    v70 = &unk_1DF8255EF;
    v71 = 2082;
    v72 = "assert";
    v73 = 2081;
    v74 = "32 > numArguments";
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Too many arguments to selector in IntersiloInterface", "{msg%{public}.0s:Too many arguments to selector in IntersiloInterface, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v32 = sub_1DF80C018();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v68 = 0;
    v69 = 2082;
    v70 = &unk_1DF8255EF;
    v71 = 2082;
    v72 = "assert";
    v73 = 2081;
    v74 = "32 > numArguments";
    _os_log_impl(&dword_1DF7FE000, v32, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Too many arguments to selector in IntersiloInterface, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  result = abort_report_np();
LABEL_80:
  __break(1u);
  return result;
}

- (id)description
{
  v2 = [(CLIntersiloInterfaceSelectorInfo *)self sel];

  return NSStringFromSelector(v2);
}

- (SEL)sel
{
  if (self->_sel)
  {
    return self->_sel;
  }

  else
  {
    return 0;
  }
}

@end