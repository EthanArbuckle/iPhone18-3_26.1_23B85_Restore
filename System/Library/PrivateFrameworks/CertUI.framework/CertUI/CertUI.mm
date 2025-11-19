uint64_t start()
{
  v0 = objc_alloc_init(NSAutoreleasePool);
  CertUILoggingInitialize();
  v1 = objc_alloc_init(CertUIRelay);
  [+[NSRunLoop currentRunLoop](NSRunLoop run];

  [v0 drain];
  return 0;
}

void sub_100001174(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000123C;
  v4[3] = &unk_1000082E8;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 showPromptWithCompletion:v4];
}

void sub_10000123C(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) _relayCenter];
  v4 = [*(a1 + 40) replyContext];
  [v3 sendDelayedReply:v4 dictionary:v9];

  [*(a1 + 32) _registerReply];
  *(*(a1 + 32) + 16) = 0;
  if ([*(a1 + 48) count] >= 2)
  {
    v5 = 1;
    do
    {
      v6 = [*(a1 + 48) objectAtIndex:v5];
      v7 = [*(a1 + 32) _relayCenter];
      v8 = [v6 replyContext];
      [v7 sendDelayedReply:v8 dictionary:v9];

      [*(a1 + 32) _registerReply];
      ++v5;
    }

    while ([*(a1 + 48) count] > v5);
  }

  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 56)];
  if ([*(*(a1 + 32) + 8) count])
  {
    [*(a1 + 32) _showNextPrompt];
  }
}

void sub_1000022E0(const __CFDictionary *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  error = 0;
  v7 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, a1);
  if (!qword_10000C5D8)
  {
    qword_10000C5D8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  }

  v8 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v8 = a2;
  v8[1] = a3;
  CFDictionaryAddValue(qword_10000C5D8, v7, v8);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v7, sub_10000245C, 0);
  Current = CFRunLoopGetCurrent();
  v11 = CFRunLoopCopyCurrentMode(Current);
  CFRunLoopAddSource(Current, RunLoopSource, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  if (RunLoopSource)
  {
    CFRelease(RunLoopSource);
  }
}

void sub_10000245C(void *key, uint64_t a2)
{
  if (qword_10000C5D8)
  {
    Value = CFDictionaryGetValue(qword_10000C5D8, key);
    if (Value)
    {
      v5 = *Value;
      v6 = Value[1];
      free(Value);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    CFDictionaryRemoveValue(qword_10000C5D8, key);
    if (!CFDictionaryGetCount(qword_10000C5D8))
    {
      CFRelease(qword_10000C5D8);
      qword_10000C5D8 = 0;
    }

    if (v5 && v6)
    {
      [v5 performSelector:v6 withObject:key withObject:a2];
    }
  }

  else
  {
    v5 = 0;
  }

  if (key)
  {

    CFRelease(key);
  }
}