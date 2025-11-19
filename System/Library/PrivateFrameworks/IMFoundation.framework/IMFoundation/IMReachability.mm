@interface IMReachability
+ (id)reachabilityWithHostName:(id)a3;
+ (id)reachabilityWithLocalAddress:(id)a3 remoteAddress:(id)a4;
+ (id)reachabilityWithRemoteAddress:(id)a3;
- (IMReachability)initWithLocalSocketAddress:(id)a3 remoteSocketAddress:(id)a4 delegate:(id)a5;
- (IMReachability)initWithRemoteHost:(id)a3 delegate:(id)a4;
- (IMReachabilityDelegate)delegate;
- (id)_initWithReachabilityRef:(__SCNetworkReachability *)a3 description:(id)a4 delegate:(id)a5;
- (unint64_t)flags;
- (void)_forceGetFlagsIfNecessary;
- (void)_handleCallbackForSCNetworkReachability:(__SCNetworkReachability *)a3;
- (void)dealloc;
@end

@implementation IMReachability

+ (id)reachabilityWithHostName:(id)a3
{
  v3 = a3;
  v4 = [IMReachability alloc];
  v6 = objc_msgSend_initWithRemoteHost_delegate_(v4, v5, v3, 0);

  return v6;
}

+ (id)reachabilityWithRemoteAddress:(id)a3
{
  v3 = a3;
  v4 = [IMReachability alloc];
  v6 = objc_msgSend_initWithLocalSocketAddress_remoteSocketAddress_delegate_(v4, v5, 0, v3, 0);

  return v6;
}

+ (id)reachabilityWithLocalAddress:(id)a3 remoteAddress:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [IMReachability alloc];
  v9 = objc_msgSend_initWithLocalSocketAddress_remoteSocketAddress_delegate_(v7, v8, v6, v5, 0);

  return v9;
}

- (id)_initWithReachabilityRef:(__SCNetworkReachability *)a3 description:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v26.receiver = self;
    v26.super_class = IMReachability;
    self = [(IMReachability *)&v26 init];
    if (self)
    {
      if (v9)
      {
        context.version = 0;
        context.info = objc_msgSend_weakRefWithObject_(MEMORY[0x1E6995700], v10, self);
        context.retain = j__CFRetain;
        context.release = j__CFRelease;
        context.copyDescription = 0;
        if (SCNetworkReachabilitySetCallback(a3, sub_1959B330C, &context))
        {
          v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"com.apple.IMReachability.%p", self);
          v14 = v13;
          v17 = objc_msgSend_UTF8String(v14, v15, v16);
          v18 = dispatch_queue_create(v17, v11);
          queue = self->_queue;
          self->_queue = v18;
        }

        if (!SCNetworkReachabilitySetDispatchQueue(a3, self->_queue))
        {
          SCNetworkReachabilitySetCallback(a3, 0, 0);
          a3 = 0;
          goto LABEL_9;
        }
      }

      self->_reachabilityRef = CFRetain(a3);
      objc_storeWeak(&self->_delegate, v9);
      v20 = im_primary_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959B33C0;
      block[3] = &unk_1E7438668;
      v23 = self;
      v24 = a3;
      dispatch_async(v20, block);
    }

    self = self;
    a3 = self;
  }

LABEL_9:

  return a3;
}

- (IMReachability)initWithRemoteHost:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_UTF8String(v9, v10, v11);
  v13 = SCNetworkReachabilityCreateWithName(0, v12);
  v15 = objc_msgSend__initWithReachabilityRef_description_delegate_(self, v14, v13, v9, v8);

  v16 = v15;
  if (v13)
  {
    CFRelease(v13);
  }

  return v16;
}

- (IMReachability)initWithLocalSocketAddress:(id)a3 remoteSocketAddress:(id)a4 delegate:(id)a5
{
  v32[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = IMStringForSocketAddress(v8);
    if (v9)
    {
LABEL_3:
      v12 = IMStringForSocketAddress(v9);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  if (!v11)
  {
    v11 = @"*";
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"*";
  }

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = objc_msgSend_initWithFormat_(v14, v15, @"%@ -> %@", v11, v13);
  v32[0] = 528;
  v32[1] = 0;
  v17 = v8;
  v20 = objc_msgSend_bytes(v17, v18, v19);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v32;
  }

  if (v9)
  {
    v22 = v9;
    v25 = objc_msgSend_bytes(v22, v23, v24);
    v26 = SCNetworkReachabilityCreateWithAddressPair(0, v21, v25);
  }

  else
  {
    v26 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], v21);
  }

  v28 = v26;
  v29 = objc_msgSend__initWithReachabilityRef_description_delegate_(self, v27, v26, v16, v10);
  if (v28)
  {
    CFRelease(v28);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)dealloc
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    SCNetworkReachabilitySetDispatchQueue(reachabilityRef, 0);
    v4 = self->_reachabilityRef;
    if (v4)
    {
      CFRelease(v4);
      self->_reachabilityRef = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = IMReachability;
  [(IMReachability *)&v5 dealloc];
}

- (void)_handleCallbackForSCNetworkReachability:(__SCNetworkReachability *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  *flags = 0xAAAAAAAAAAAAAAAALL;
  if (SCNetworkReachabilityGetFlags(a3, flags))
  {
    v5 = self->_flags;
    if (v5 == *flags)
    {
      v6 = OSLogHandleForIDSCategory("IMReachability");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_flags;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        *buf = 138412802;
        v18 = self;
        v19 = 1024;
        *v20 = v7;
        *&v20[4] = 2112;
        *&v20[6] = WeakRetained;
        _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "%@: reachability flags did not change %08x  (Delegate: %@)", buf, 0x1Cu);
      }
    }

    else
    {
      self->_flags = *flags;
      v10 = OSLogHandleForIDSCategory("IMReachability");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_flags;
        v12 = objc_loadWeakRetained(&self->_delegate);
        *buf = 138413058;
        v18 = self;
        v19 = 1024;
        *v20 = v5;
        *&v20[4] = 1024;
        *&v20[6] = v11;
        *&v20[10] = 2112;
        *&v20[12] = v12;
        _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "%@: reachabilityDidChange %08x -> %08x  (Delegate: %@)", buf, 0x22u);
      }

      v13 = objc_loadWeakRetained(&self->_delegate);
      objc_msgSend_reachabilityDidChange_(v13, v14, self);
    }
  }

  else
  {
    v9 = OSLogHandleForIDSCategory("IMReachability");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2048;
      *v20 = a3;
      _os_log_impl(&dword_195988000, v9, OS_LOG_TYPE_DEFAULT, "%@: Failed to get flags for reachability: %p", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_forceGetFlagsIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_gettingFlags && !self->_flags && self->_reachabilityRef)
  {
    self->_gettingFlags = 1;
    v3 = OSLogHandleForIDSCategory("IMReachability");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "%@: Forcing reachability query", &v6, 0xCu);
    }

    objc_msgSend__handleCallbackForSCNetworkReachability_(self, v4, self->_reachabilityRef);
    self->_gettingFlags = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (unint64_t)flags
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    objc_msgSend__forceGetFlagsIfNecessary(self, v4, v5);
  }

  return self->_flags;
}

- (IMReachabilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end