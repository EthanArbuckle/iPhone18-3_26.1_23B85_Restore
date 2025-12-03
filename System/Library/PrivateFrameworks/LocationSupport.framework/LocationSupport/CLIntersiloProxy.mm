@interface CLIntersiloProxy
+ (id)proxyForRecipientObject:(id)object inSilo:(id)silo recipientName:(id)name;
- (BOOL)respondsToSelector:(SEL)selector;
- (CLIntersiloProxy)init;
- (CLIntersiloProxy)initWithDelegateObject:(id)object delegateSilo:(id)silo;
- (CLIntersiloProxyDelegateProtocol)delegate;
- (CLSilo)delegateSilo;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)peer;
- (void)forwardInvocation:(id)invocation;
- (void)registerDelegate:(id)delegate inSilo:(id)silo;
@end

@implementation CLIntersiloProxy

- (CLSilo)delegateSilo
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateSilo);

  return WeakRetained;
}

- (CLIntersiloProxyDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLIntersiloProxy)init
{
  null = [MEMORY[0x1E695DFB0] null];
  objc_storeWeak(&self->_delegate, null);

  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  peer = [(CLIntersiloProxy *)self peer];
  delegateSilo = [peer delegateSilo];
  identifier = [delegateSilo identifier];
  v9 = [v3 stringWithFormat:@"<%@: peer silo:%@>", v5, identifier];

  return v9;
}

+ (id)proxyForRecipientObject:(id)object inSilo:(id)silo recipientName:(id)name
{
  v33 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  siloCopy = silo;
  nameCopy = name;
  v11 = objc_alloc([self initiatorRepresentingClass]);
  v12 = objc_alloc([self recipientRepresentingClass]);
  v13 = v11;
  v14 = [v13 initWithDelegateObject:objectCopy delegateSilo:siloCopy uninitializedPeer:v12];
  if (v14 != v13)
  {
    v19 = sub_1DF81C298();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = &unk_1DF8255EF;
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "postInit == initiatorProxy";
      _os_log_impl(&dword_1DF7FE000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v20 = sub_1DF81C298();
    if (os_signpost_enabled(v20))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = &unk_1DF8255EF;
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "postInit == initiatorProxy";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo proxy init changed self", "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = sub_1DF81C298();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = &unk_1DF8255EF;
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "postInit == initiatorProxy";
      _os_log_impl(&dword_1DF7FE000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_20:
    __break(1u);
  }

  v15 = v12;
  v16 = [v15 initWithUninitializedPeer:v13];

  if (v16 != v15)
  {
    v22 = sub_1DF81C298();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = &unk_1DF8255EF;
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "postInit == recipientProxy";
      _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v23 = sub_1DF81C298();
    if (os_signpost_enabled(v23))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = &unk_1DF8255EF;
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "postInit == recipientProxy";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo proxy init changed self", "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v24 = sub_1DF81C298();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = &unk_1DF8255EF;
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "postInit == recipientProxy";
      _os_log_impl(&dword_1DF7FE000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_20;
  }

  [v13 setDelegateEntityName:{objc_msgSend(nameCopy, "UTF8String")}];

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

- (CLIntersiloProxy)initWithDelegateObject:(id)object delegateSilo:(id)silo
{
  siloCopy = silo;
  objc_storeWeak(&self->_delegate, object);
  objc_storeWeak(&self->_delegateSilo, siloCopy);

  return self;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v4 = +[CLIntersiloInterface sharedInterface];
  LOBYTE(selector) = [v4 hasInfoForSelector:selector];

  return selector;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = +[CLIntersiloInterface sharedInterface];
  v5 = [v4 getInfoForSelector:selector];
  v6 = [v5 sig];

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  v73 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  selector = [invocationCopy selector];
  v6 = +[CLIntersiloInterface sharedInterface];
  v57 = [v6 getInfoForSelector:selector];

  peer = [(CLIntersiloProxy *)self peer];
  v56 = peer;
  if ([invocationCopy argumentsRetained])
  {
    v44 = sub_1DF81C298();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v67 = 2082;
      v68 = &unk_1DF8255EF;
      v69 = 2082;
      v70 = "assert";
      v71 = 2081;
      v72 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v44, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v45 = sub_1DF81C298();
    if (os_signpost_enabled(v45))
    {
      *buf = 68289539;
      v67 = 2082;
      v68 = &unk_1DF8255EF;
      v69 = 2082;
      v70 = "assert";
      v71 = 2081;
      v72 = "![inv argumentsRetained]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v45, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Didn't expect the arguments to be retained before now", "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v46 = sub_1DF81C298();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v67 = 2082;
      v68 = &unk_1DF8255EF;
      v69 = 2082;
      v70 = "assert";
      v71 = 2081;
      v72 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v46, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_74:
    __break(1u);
  }

  v65 = 0;
  if ([v57 lastArgBlockIndex])
  {
    lastArgBlockIndex = [v57 lastArgBlockIndex];
    if (lastArgBlockIndex >= 0)
    {
      v9 = lastArgBlockIndex;
    }

    else
    {
      v9 = -lastArgBlockIndex;
    }

    v64 = 0;
    [invocationCopy getArgument:&v64 atIndex:v9];
    cf = [v64 copy];
    v10 = *_Block_signature(cf);
    if ((v10 == 118) != [v57 lastArgBlockIndex] < 1)
    {
      if (v10 == 118)
      {
LABEL_19:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v19 = WeakRetained == 0;

        if (v19)
        {
          v50 = sub_1DF81C298();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "_delegate";
            _os_log_impl(&dword_1DF7FE000, v50, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Delegate is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v51 = sub_1DF81C298();
          if (os_signpost_enabled(v51))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "_delegate";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v51, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Delegate is necessary for reply delivery", "{msg%{public}.0s:Delegate is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v35 = sub_1DF81C298();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "_delegate";
            _os_log_impl(&dword_1DF7FE000, v35, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Delegate is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }
        }

        else
        {
          v20 = objc_loadWeakRetained(&self->_delegateSilo);
          v21 = v20 == 0;

          if (!v21)
          {
            objc_loadWeakRetained(&self->_delegate);
            objc_loadWeakRetained(&self->_delegateSilo);
            [peer delegateSilo];
            objc_claimAutoreleasedReturnValue();
            operator new();
          }

          v52 = sub_1DF81C298();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "_delegateSilo";
            _os_log_impl(&dword_1DF7FE000, v52, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Silo is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v53 = sub_1DF81C298();
          if (os_signpost_enabled(v53))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "_delegateSilo";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Silo is necessary for reply delivery", "{msg%{public}.0s:Silo is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v35 = sub_1DF81C298();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "_delegateSilo";
            _os_log_impl(&dword_1DF7FE000, v35, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Silo is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }
        }

LABEL_73:

        abort_report_np();
        goto LABEL_74;
      }
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
      }

      v11 = qword_1ED5FAD48;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = [v57 description];
        *buf = 68289282;
        v67 = 2082;
        v68 = &unk_1DF8255EF;
        v69 = 2114;
        v70 = v12;
        _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:withReply: and void-returning block must be used in conjunction for correct reply handling, selector:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
      }

      v13 = qword_1ED5FAD48;
      if (os_signpost_enabled(v13))
      {
        v14 = [v57 description];
        *buf = 68289282;
        v67 = 2082;
        v68 = &unk_1DF8255EF;
        v69 = 2114;
        v70 = v14;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "withReply: and void-returning block must be used in conjunction for correct reply handling", "{msg%{public}.0s:withReply: and void-returning block must be used in conjunction for correct reply handling, selector:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v15 = objc_loadWeakRetained(&self->_delegate);
      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegateSilo);
        v17 = v16 != 0;

        if (v17 && v10 == 118)
        {
          goto LABEL_19;
        }
      }
    }
  }

  returnAddressIndex = [v57 returnAddressIndex];
  if (returnAddressIndex)
  {
    v64 = 0;
    v23 = returnAddressIndex;
    [invocationCopy getArgument:&v64 atIndex:returnAddressIndex];
    v24 = objc_loadWeakRetained(&self->_delegate);
    v25 = v24;
    if (!v24 || (v26 = v64, v64 == CLISP_ME_TOKEN))
    {
    }

    else
    {
      v27 = objc_loadWeakRetained(&self->_delegate);
      v28 = v26 == v27;

      if (!v28)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v30 = objc_loadWeakRetained(&self->_delegate);
        v31 = null == v30;

        v32 = sub_1DF81C298();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
        if (v31)
        {
          if (v33)
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "(id)[NSNull null] != _delegate";
            _os_log_impl(&dword_1DF7FE000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:A delegate must be set before sending messages with byref return address parameters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v54 = sub_1DF81C298();
          if (os_signpost_enabled(v54))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "(id)[NSNull null] != _delegate";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "A delegate must be set before sending messages with byref return address parameters", "{msg%{public}.0s:A delegate must be set before sending messages with byref return address parameters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v35 = sub_1DF81C298();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "(id)[NSNull null] != _delegate";
            _os_log_impl(&dword_1DF7FE000, v35, OS_LOG_TYPE_INFO, "{msg%{public}.0s:A delegate must be set before sending messages with byref return address parameters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }
        }

        else
        {
          if (v33)
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "__objc_no";
            _os_log_impl(&dword_1DF7FE000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The object passed to byref return address parameters MUST BE the registered delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v34 = sub_1DF81C298();
          if (os_signpost_enabled(v34))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "__objc_no";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The object passed to byref return address parameters MUST BE the registered delegate", "{msg%{public}.0s:The object passed to byref return address parameters MUST BE the registered delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v35 = sub_1DF81C298();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v67 = 2082;
            v68 = &unk_1DF8255EF;
            v69 = 2082;
            v70 = "assert";
            v71 = 2081;
            v72 = "__objc_no";
            _os_log_impl(&dword_1DF7FE000, v35, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The object passed to byref return address parameters MUST BE the registered delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }
        }

        goto LABEL_73;
      }
    }

    peer = v56;
    v64 = v56;
    [invocationCopy setArgument:&v64 atIndex:v23];
  }

  if ([invocationCopy argumentsRetained])
  {
    v47 = sub_1DF81C298();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v67 = 2082;
      v68 = &unk_1DF8255EF;
      v69 = 2082;
      v70 = "assert";
      v71 = 2081;
      v72 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v47, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v48 = sub_1DF81C298();
    if (os_signpost_enabled(v48))
    {
      *buf = 68289539;
      v67 = 2082;
      v68 = &unk_1DF8255EF;
      v69 = 2082;
      v70 = "assert";
      v71 = 2081;
      v72 = "![inv argumentsRetained]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Didn't expect the arguments to be retained before now", "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = sub_1DF81C298();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v67 = 2082;
      v68 = &unk_1DF8255EF;
      v69 = 2082;
      v70 = "assert";
      v71 = 2081;
      v72 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_74;
  }

  [invocationCopy retainArguments];
  if (v65)
  {

    v65 = 0;
    peer = v56;
  }

  delegateSilo = [peer delegateSilo];
  if (delegateSilo)
  {
    delegate = [v56 delegate];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1DF81D8D4;
    aBlock[3] = &unk_1E86C85C0;
    v38 = delegate;
    v59 = v38;
    selfCopy = self;
    v61 = invocationCopy;
    v39 = v57;
    v62 = v39;
    v63 = v56;
    v40 = _Block_copy(aBlock);
    v41 = [v39 sig];
    v42 = [v41 methodReturnLength] == 0;

    if (v42)
    {
      [delegateSilo async:v40];
    }

    else
    {
      [objc_opt_class() performSyncOnSilo:delegateSilo invoker:v40];
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)registerDelegate:(id)delegate inSilo:(id)silo
{
  v24 = *MEMORY[0x1E69E9840];
  obj = delegate;
  siloCopy = silo;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  null = [MEMORY[0x1E695DFB0] null];
  v9 = null;
  if (WeakRetained != null)
  {

LABEL_7:
    v12 = sub_1DF81C298();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1DF8255EF;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "_delegate == (id)[NSNull null] && !_delegateSilo";
      _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Once registered, delegate may not be changed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v13 = sub_1DF81C298();
    if (os_signpost_enabled(v13))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1DF8255EF;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "_delegate == (id)[NSNull null] && !_delegateSilo";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Once registered, delegate may not be changed", "{msg%{public}.0s:Once registered, delegate may not be changed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = sub_1DF81C298();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1DF8255EF;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "_delegate == (id)[NSNull null] && !_delegateSilo";
      _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Once registered, delegate may not be changed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v10 = objc_loadWeakRetained(&self->_delegateSilo);

  if (v10)
  {
    goto LABEL_7;
  }

  objc_storeWeak(&self->_delegate, obj);
  objc_storeWeak(&self->_delegateSilo, siloCopy);

  v11 = *MEMORY[0x1E69E9840];
}

- (id)peer
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
      v12 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:-peer should never be invoked at this level..., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
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
      v12 = "__objc_no";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "-peer should never be invoked at this level...", "{msg%{public}.0s:-peer should never be invoked at this level..., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
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
      v12 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:-peer should never be invoked at this level..., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
  }
}

@end