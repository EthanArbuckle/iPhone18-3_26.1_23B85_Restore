id sub_100001800(void *a1)
{
  v1 = a1;
  v2 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.desktopservices.ArchiveService"];
  v3 = DSArchiveServiceXPCInterface();
  [v2 setRemoteObjectInterface:v3];

  v4 = DSArchiveServiceStreamingXPCInterface();
  [v2 setExportedInterface:v4];

  [v2 setExportedObject:v1];
  [v2 setInterruptionHandler:&stru_10002CE50];

  return v2;
}

void sub_1000018B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000018E4(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void sub_100002228(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void sub_1000022A0(id a1, RBSAssertion *a2, NSError *a3)
{
  v3 = a3;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Archive Service archive assertion invalidated with error: %@", &v5, 0xCu);
  }
}

void sub_100002368(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
}

void sub_100002C94(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void sub_100002D0C(id a1, RBSAssertion *a2, NSError *a3)
{
  v3 = a3;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Archive Service unarchive assertion invalidated with error: %@", &v5, 0xCu);
  }
}

void sub_100002DD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"com.apple.desktopservices.ArchiveService"])
  {
    v8 = [v6 code];

    if (v8 == -1000)
    {
      v9 = [v6 userInfo];
      v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

      TCFURLInfo::LocalizedStringWithFileName(@"ArchiveEnterPassword", *(a1 + 32), &v13);
      [v10 setObject:v13 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
      sub_100004348(&v13);
      v11 = [v6 domain];
      v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v11, [v6 code], v10);

      v6 = v12;
    }
  }

  else
  {
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) invalidate];
  [*(a1 + 48) invalidate];
}

void sub_100002F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);

  _Unwind_Resume(a1);
}

void sub_100003570(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void sub_1000035EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  v10 = [v11 url];
  (*(v9 + 16))(v9, v10, v7, v8);

  [*(a1 + 32) invalidate];
}

void sub_100003ECC(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void sub_100003F44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"com.apple.desktopservices.ArchiveService"])
  {
    v8 = [v6 code];

    if (v8 == -1000)
    {
      v9 = [v6 userInfo];
      v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

      TCFURLInfo::LocalizedStringWithFileName(@"ArchiveEnterPassword", *(a1 + 32), &v14);
      [v10 setObject:v14 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
      sub_100004348(&v14);
      v11 = [v6 domain];
      v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v11, [v6 code], v10);

      v6 = v12;
    }
  }

  else
  {
  }

  v13 = [v5 url];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];
}

void sub_1000040BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);

  _Unwind_Resume(a1);
}

void sub_10000424C(id a1)
{
  v1 = LogObj(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Archive Service connection interrupted", v2, 2u);
  }
}

Class sub_1000042B8()
{
  if (qword_100031738 || (qword_100031738 = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 2)) != 0)
  {
    Class = objc_getClass("FPSandboxingURLWrapper");
    qword_100031730 = Class;
    off_1000314B8 = sub_10000433C;
  }

  else
  {
    Class = qword_100031730;
  }

  return Class;
}

const void **sub_100004348(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

id DSArchiveServiceXPCInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DSArchiveServiceProtocolInternal];
  v10[0] = objc_opt_class();
  v10[1] = off_1000315E0();
  v1 = [NSArray arrayWithObjects:v10 count:2];
  v2 = [NSSet setWithArray:v1];
  [v0 setClasses:v2 forSelector:"archiveItemsWithURLWrappers:toURLWrapper:options:compressionFormat:passphrase:completionHandler:" argumentIndex:0 ofReply:0];

  v9[0] = objc_opt_class();
  v9[1] = off_1000315E0();
  v3 = [NSArray arrayWithObjects:v9 count:2];
  v4 = [NSSet setWithArray:v3];
  [v0 setClasses:v4 forSelector:"archiveItemsWithURLWrappers:passphrase:addToKeychain:compressionFormat:destinationFolderURLWrapper:usePlaceholder:completionHandler:" argumentIndex:0 ofReply:0];

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSSet setWithArray:v5];
  [v0 setClasses:v6 forSelector:"itemDescriptorsForItemWithURLWrapper:passphrases:completionHandler:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_100004574(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id DSArchiveServiceStreamingXPCInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DSArchiveServiceStreamingInternal];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  [v0 setClasses:v2 forSelector:"receiveArchivedItemsDescriptors:placeholderName:placeholderTypeIdentifier:" argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1000046E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

Class sub_100004714()
{
  if (qword_100031748 || (qword_100031748 = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 2)) != 0)
  {
    Class = objc_getClass("FPSandboxingURLWrapper");
    qword_100031740 = Class;
    off_1000315E0 = sub_100004798;
  }

  else
  {
    Class = qword_100031740;
  }

  return Class;
}

uint64_t IsEqual(CFTypeRef cf1, CFTypeRef cf2)
{
  if (cf1 == cf2)
  {
    return 1;
  }

  v3 = 0;
  if (cf1 && cf2)
  {
    if (CFEqual(cf1, cf2))
    {
      return 1;
    }

    v6 = sub_100004B08(cf1);
    v7 = sub_100004B08(cf2);
    v3 = 0;
    if (v6)
    {
      v8 = v7;
      if (v7)
      {
        if ((atomic_load_explicit(&qword_100031758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031758))
        {
          v19 = sub_100004BCC(&kCFURLFileResourceIdentifierKey);
          v22[0] = v19;
          v20 = sub_100004BCC(&_kCFURLFileIDKey);
          v22[1] = v20;
          v21 = [NSArray arrayWithObjects:v22 count:2];
          sub_100004B64(v21, &qword_100031750);

          __cxa_guard_release(&qword_100031758);
        }

        v9 = CFURLCopyResourcePropertiesForKeys(v6, qword_100031750, 0);
        v10 = CFURLCopyResourcePropertiesForKeys(v8, qword_100031750, 0);
        if ([(__CFDictionary *)v9 count]== 2 && [(__CFDictionary *)v10 count]== 2)
        {
          v11 = sub_100004BCC(&kCFURLFileResourceIdentifierKey);
          v12 = [(__CFDictionary *)v9 objectForKeyedSubscript:v11];

          v13 = sub_100004BCC(&kCFURLFileResourceIdentifierKey);
          v14 = [(__CFDictionary *)v10 objectForKeyedSubscript:v13];

          if (IsEqual(v12, v14))
          {
            v15 = sub_100004BCC(&_kCFURLFileIDKey);
            v16 = [(__CFDictionary *)v9 objectForKeyedSubscript:v15];

            v17 = sub_100004BCC(&_kCFURLFileIDKey);
            v18 = [(__CFDictionary *)v10 objectForKeyedSubscript:v17];

            v3 = IsEqual(v16, v18);
          }

          else
          {
            v3 = 0;
          }
        }

        else
        {
          v3 = 0;
        }
      }
    }
  }

  return v3;
}

const void *sub_100004B08(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFURLGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100004B64(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v3 = sub_100004BD8(v4);
  *a2 = v3;
  if (v3)
  {
    CFRetain(v3);
  }
}

const void *sub_100004BD8(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

const void **sub_100004C14(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100004C48()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

const void *sub_100004C7C(const void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = CFRetain(result);

    return sub_100004BD8(v2);
  }

  return result;
}

void sub_100004CB0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

const void **sub_100004D1C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_100004DAC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10002CEB0;
  TCFURLInfo::TCFURLInfo((a1 + 3));
  return a1;
}

void sub_100004E28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10002CEB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_100004E7C(const void **a1)
{
  TFileDescriptor::~TFileDescriptor((a1 + 7));
  sub_100004348(a1 + 6);
  sub_100004348(a1 + 5);
  sub_100004348(a1 + 4);

  return sub_100004ED4(a1 + 3);
}

const void **sub_100004ED4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_100004F08()
{
  if ((atomic_load_explicit(&qword_1000315F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000315F0))
  {
    qword_1000315E8 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    __cxa_guard_release(&qword_1000315F0);
  }

  return &qword_1000315E8;
}

const void **sub_100004F88(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

CFTypeRef *sub_100004FD4(CFTypeRef *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = cf;
  return a1;
}

const void **FileSuffix@<X0>(id *a1@<X0>, TString **a2@<X8>)
{
  v3 = [*a1 pathExtension];
  theString = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(&theString, v3);

  if (CFStringGetLength(theString))
  {
    v4 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, ".", 1, 0x8000100u, 0, kCFAllocatorNull);
    v10 = v4;
    v8 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v8, v4);
    sub_100004348(&v10);
    v5 = v8;
    *a2 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v5);
    CFRelease(&stru_10002D580);
    *a2 = MutableCopy;
    TString::Append(a2, &theString);
    sub_100004348(&v8);
  }

  else
  {
    *a2 = theString;
    theString = 0;
    CFRetain(&stru_10002D580);
    if (theString)
    {
      CFRelease(theString);
    }

    theString = &stru_10002D580;
  }

  return sub_100004348(&theString);
}

void sub_10000517C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  sub_100004348(v2);
  sub_100004348(va);
  sub_100004348(va1);
  _Unwind_Resume(a1);
}

void sub_1000051F8(UInt8 *bytes@<X0>, CFIndex numBytes@<X1>, CFTypeRef *a3@<X8>)
{
  if (numBytes)
  {
    v4 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, numBytes, 0x8000100u, 0, kCFAllocatorNull);
    v6 = v4;
    *a3 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(a3, v4);
    sub_100004348(&v6);
  }

  else
  {
    v5 = sub_100004F08();
    *a3 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(a3, *v5);
  }
}

const void **FileSuffixChain@<X0>(id *a1@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  FileSuffix(a1, &v17);
  while (1)
  {
    theString = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&theString, v17);
    TString::TString(&cf, ".");
    v4 = TString::BeginsWith(&theString, &cf);
    sub_100004348(&cf);
    if (v4)
    {
      TString::SubStringFrom(&v17, 1, &cf);
      sub_100004F88(&theString, &cf);
      CFRetain(&stru_10002D580);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_10002D580;
      sub_100004348(&cf);
    }

    if (!CFStringGetLength(theString))
    {
      break;
    }

    v5 = [UTType typeWithFilenameExtension:theString conformingToType:UTTypeItem];
    v6 = v5;
    if (!v5)
    {
      break;
    }

    if ([v5 isDeclared])
    {

      sub_100004348(&theString);
    }

    else
    {
      v7 = [LSClaimBinding alloc];
      v8 = [v6 identifier];
      v9 = [v7 initWithTypeIdentifier:v8 error:0];

      v10 = [v9 bundleRecord];
      v11 = [v10 executableURL];

      sub_100004348(&theString);
      if (!v11)
      {
        return sub_100004348(&v17);
      }
    }

    Length = CFStringGetLength(*a1);
    v13 = CFStringGetLength(v17);
    TString::SetLength(a1, Length - v13);
    v14 = v17;
    theString = &stru_10002D580;
    CFRetain(&stru_10002D580);
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v14);
    CFRelease(&stru_10002D580);
    theString = MutableCopy;
    TString::Append(&theString, a2);
    if (&theString != a2)
    {
      sub_100004F88(a2, &theString);
      CFRetain(&stru_10002D580);
      if (theString)
      {
        CFRelease(theString);
      }

      theString = &stru_10002D580;
    }

    sub_100004348(&theString);
    FileSuffix(a1, &theString);
    sub_100004F88(&v17, &theString);
    CFRetain(&stru_10002D580);
    if (theString)
    {
      CFRelease(theString);
    }

    theString = &stru_10002D580;
    sub_100004348(&theString);
  }

  sub_100004348(&theString);
  return sub_100004348(&v17);
}

const void **RedactedStr@<X0>(CFStringRef *a1@<X0>, CFTypeRef *a2@<X8>)
{
  if (CFStringGetLength(*a1))
  {
    Length = CFStringGetLength(*a1);
    v49 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v49, *a1);
    FileSuffixChain(&v49, &v50);
    sub_100004348(&v49);
    v5 = Length - CFStringGetLength(v50);
    if (v5 <= 2 && CFStringGetLength(v50))
    {
      while (1)
      {
        v6 = v5 + 1;
        if (v5 + 1 >= Length)
        {
          break;
        }

        v7 = v5 < -1 || CFStringGetLength(*a1) <= v6 ? 0 : CFStringGetCharacterAtIndex(*a1, v5 + 1);
        v8 = v5 + 1;
        if (v5++ >= 2)
        {
          v5 = v8;
          if (v7 == 46)
          {
            break;
          }
        }
      }

      TString::SubStringFrom(a1, v6, &v51);
      sub_100004F88(&v50, &v51);
      CFRetain(&stru_10002D580);
      if (v51)
      {
        CFRelease(v51);
      }

      v51 = &stru_10002D580;
      sub_100004348(&v51);
      v5 = v6;
    }

    LODWORD(v38.__r_.__value_.__l.__data_) = 0;
    v10 = *a1;
    v51 = _NSConcreteStackBlock;
    v52 = 3321888768;
    v53 = sub_1000067C4;
    v54 = &unk_10002CEF0;
    v55 = &v38;
    [(__CFString *)v10 enumerateSubstringsInRange:0 options:Length usingBlock:2, &v51];
    data_low = SLODWORD(v38.__r_.__value_.__l.__data_);
    if (data_low - CFStringGetLength(v50) < 3)
    {
      v33 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, "<private>", 9, 0x8000100u, 0, kCFAllocatorNull);
      v51 = v33;
      *a2 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(a2, v33);
      v30 = &v51;
    }

    else
    {
      v48.location = 0;
      v48.length = 0;
      v48.location = [(__CFString *)*a1 rangeOfComposedCharacterSequenceAtIndex:0];
      v48.length = v12;
      v47.location = 0;
      v47.length = 0;
      v47.location = [(__CFString *)*a1 rangeOfComposedCharacterSequenceAtIndex:v5 - 1];
      v47.length = v13;
      TString::SubString(a1, &v48, &v46);
      TString::SubString(a1, &v47, &v45);
      LODWORD(v38.__r_.__value_.__l.__data_) = 0;
      v14 = *a1;
      v51 = _NSConcreteStackBlock;
      v52 = 3321888768;
      v53 = sub_1000067C4;
      v54 = &unk_10002CEF0;
      v55 = &v38;
      [(__CFString *)v14 enumerateSubstringsInRange:v48.length + v48.location options:v47.location - (v48.length + v48.location) usingBlock:2, &v51];
      data = v38.__r_.__value_.__l.__data_;
      HIBYTE(v53) = 1;
      LOWORD(v51) = 123;
      v40 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      if (SHIBYTE(v53) >= 0)
      {
        v16 = &v51;
      }

      else
      {
        v16 = v51;
      }

      if (SHIBYTE(v53) >= 0)
      {
        v17 = HIBYTE(v53);
      }

      else
      {
        v17 = v52;
      }

      TString::SetFromUTF8(&v40, v16, v17);
      v18 = v46;
      v41 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v18);
      CFRelease(&stru_10002D580);
      v41 = MutableCopy;
      TString::Append(&v41, &v40);
      std::to_string(&v38, data);
      v39 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v38;
      }

      else
      {
        v20 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      TString::SetFromUTF8(&v39, v20, size);
      v22 = v41;
      v42 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      v23 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v22);
      CFRelease(&stru_10002D580);
      v42 = v23;
      TString::Append(&v42, &v39);
      v36 = 1;
      LOWORD(__p) = 125;
      v37 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetFromUTF8(&v37, &__p, 1);
      v24 = v42;
      v43 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      v25 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v24);
      CFRelease(&stru_10002D580);
      v43 = v25;
      TString::Append(&v43, &v37);
      v26 = v43;
      v44 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      v27 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v26);
      CFRelease(&stru_10002D580);
      v44 = v27;
      TString::Append(&v44, &v45);
      v28 = v44;
      *a2 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      v29 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v28);
      CFRelease(&stru_10002D580);
      *a2 = v29;
      TString::Append(a2, &v50);
      sub_100004348(&v44);
      sub_100004348(&v43);
      sub_100004348(&v37);
      if (v36 < 0)
      {
        operator delete(__p);
      }

      sub_100004348(&v42);
      sub_100004348(&v39);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      sub_100004348(&v41);
      sub_100004348(&v40);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v51);
      }

      sub_100004348(&v45);
      v30 = &v46;
    }

    sub_100004348(v30);
    v32 = &v50;
  }

  else
  {
    v31 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, "<empty>", 7, 0x8000100u, 0, kCFAllocatorNull);
    v51 = v31;
    *a2 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(a2, v31);
    v32 = &v51;
  }

  return sub_100004348(v32);
}

__CFString *SanitizedStr(CFStringRef *a1)
{
  if (!CFStringGetLength(*a1) || !IsRedactionEnabled())
  {
    goto LABEL_6;
  }

  if ((atomic_load_explicit(&qword_100031788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031788))
  {
    sub_1000051F8("/", 1, &v8);
    sub_1000051F8("Volumes", 7, &v9);
    sub_1000051F8("Data", 4, &v10);
    sub_1000051F8("Users", 5, &v11);
    sub_1000051F8("Applications", 12, &v12);
    sub_1000051F8("Utilities", 9, &v13);
    sub_1000051F8("System", 6, &v14);
    sub_1000051F8("Network", 7, &v15);
    sub_1000051F8("Desktop", 7, &v16);
    sub_1000051F8("Documents", 9, &v17);
    sub_1000051F8("Downloads", 9, &v18);
    sub_1000051F8("Library", 7, &v19);
    sub_1000051F8("Movies", 6, &v20);
    sub_1000051F8("Music", 5, &v21);
    sub_1000051F8("Pictures", 8, &v22);
    sub_1000051F8("Public", 6, &v23);
    sub_1000051F8("Drop Box", 8, &v24);
    sub_1000051F8("Finder", 6, &v25);
    sub_1000051F8("Finder.app", 10, &v26);
    sub_1000051F8("Containers", 10, &v27);
    sub_1000051F8("Shared", 6, &v28);
    sub_1000051F8("Mobile Documents", 16, &v29);
    sub_1000051F8(".DS_Store", 9, &v30);
    sub_1000051F8(".localized", 10, &v31);
    sub_1000051F8(".Trash", 6, &v32);
    sub_1000051F8(".Trashes", 8, &v33);
    sub_1000051F8(".nofollow", 9, &v34);
    sub_1000051F8("private", 7, &v35);
    sub_1000051F8("var", 3, &v36);
    sub_1000051F8("Icon?", 5, &v37);
    sub_1000051F8(".VolumeIcon.icns", 16, &v38);
    sub_1000051F8("AppGroup", 8, &v39);
    sub_1000051F8("File Provider Storage", 21, &v40);
    sub_1000051F8("CloudStorage", 12, &v41);
    sub_1000051F8("mobile", 6, &v42);
    sub_100006878(qword_100031760, &v8, 35);
    for (i = 272; i != -8; i -= 8)
    {
      sub_100004348((&v8 + i));
    }

    __cxa_guard_release(&qword_100031788);
  }

  if ((atomic_load_explicit(&qword_1000317A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000317A8))
  {
    sub_1000051F8("com~apple~", 10, &v8);
    sub_1000051F8("iCloud~com~apple~", 17, &v9);
    sub_1000051F8("FruitBasket-", 12, &v10);
    qword_100031790 = 0;
    *algn_100031798 = 0;
    qword_1000317A0 = 0;
    sub_100006F9C(&qword_100031790, &v8, &v11, 3uLL);
    for (j = 16; j != -8; j -= 8)
    {
      sub_100004348((&v8 + j));
    }

    __cxa_guard_release(&qword_1000317A8);
  }

  if (!sub_1000071C8(qword_100031760, a1))
  {
    v4 = qword_100031790;
    v5 = *algn_100031798;
    while (v4 != v5)
    {
      if (TString::BeginsWith(a1, v4))
      {
        goto LABEL_6;
      }

      ++v4;
    }

    RedactedStr(a1, &v8);
    v2 = v8;
    sub_100004348(&v8);
  }

  else
  {
LABEL_6:
    v2 = *a1;
  }

  return v2;
}

void sub_100006314(_Unwind_Exception *a1)
{
  v3 = -24;
  do
  {
    sub_100004348(v1--);
    v3 += 8;
  }

  while (v3);
  __cxa_guard_abort(&qword_1000317A8);
  _Unwind_Resume(a1);
}

id SanitizedPath(id *a1)
{
  if (CFStringGetLength(*a1) && IsRedactionEnabled())
  {
    v2 = [*a1 pathComponents];
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
    sub_1000072C4(&obj, v2);
    sub_100007388(v11, -1, v2);
    v4 = v3;
    while (obj != v11[0] || v17 != v11[16])
    {
      v5 = *(v13[1] + 8 * v16);
      v18 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(&v18, v5);

      v6 = SanitizedStr(&v18);
      sub_100004348(&v18);

      [v4 addObject:v6];
      v7 = v16;
      if (v16 >= v15 - 1)
      {
        v8 = [obj countByEnumeratingWithState:v13 objects:v14 count:4];
        v7 = -1;
        v15 = v8;
        v16 = -1;
      }

      if (v14[4] != *v13[2])
      {
        objc_enumerationMutation(obj);
        v7 = v16;
      }

      v16 = v7 + 1;
      ++v17;
    }

    v9 = [NSString pathWithComponents:v4];
  }

  else
  {
    v9 = *a1;
  }

  return v9;
}

id SanitizedURL(NSURL *a1)
{
  v1 = a1;
  v2 = [(NSURL *)v1 path];
  v7 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(&v7, v2);

  v3 = SanitizedPath(&v7);
  sub_100004348(&v7);

  if (IsRedactionEnabled() && [(NSURL *)v1 isFileURL]&& ![(NSURL *)v1 isFileReferenceURL])
  {
    v6 = [(NSURL *)v1 scheme];
    v4 = [NSString stringWithFormat:@"%@://<private> (%@)", v6, v3];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%@ (%@)", v1, v3];
  }

  return v4;
}

void sub_1000067E8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100006844(exception, a1);
}

std::logic_error *sub_100006844(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100006878(uint64_t a1, id *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_1000068F0(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_1000068F0(void *a1, id *a2)
{
  v4 = sub_100006C14(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100006B4C();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!CFEqual(v11[2], *a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100006B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006BC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100006BC8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100004348(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100006C14(id *a1)
{
  v1 = 0xCBF29CE484222325;
  v2 = TString::c_str(a1);
  for (i = strlen(v2); i; --i)
  {
    v4 = *v2++;
    v1 = 0x100000001B3 * (v1 ^ v4);
  }

  return v1;
}

CFTypeRef *sub_100006C70(CFTypeRef *a1, __CFString **a2)
{
  *a1 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(a1, *a2);
  return a1;
}

void sub_100006CC8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100006DB8(a1, prime);
    }
  }
}

void sub_100006DB8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100004C48();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_100006F1C(uint64_t a1)
{
  sub_100006F58(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100006F58(uint64_t a1, const void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100004348(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100006F9C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100007024(result, a4);
  }

  return result;
}

void sub_100007004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100007144(&a9);
  _Unwind_Resume(a1);
}

void sub_100007024(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100007078(a1, a2);
  }

  sub_100007060();
}

void sub_100007078(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100004C48();
}

CFTypeRef *sub_1000070C0(uint64_t a1, __CFString **a2, __CFString **a3, CFTypeRef *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100006C70(a4++, v6++);
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100007120(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = sub_100004348(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007144(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100004348(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **sub_1000071C8(void *a1, id *a2)
{
  v4 = sub_100006C14(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (CFEqual(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_1000072C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 128) = -1;
  if (v3 && [v3 count])
  {
    *(a1 + 112) = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 104) = **(a1 + 24);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 128) = 0;
  }

  return a1;
}

uint64_t sub_100007388(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 128) = [v4 count];

  return a1;
}

void FIProviderDomainFetcher::FIProviderDomainFetcher(FIProviderDomainFetcher *this)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 8) = dispatch_queue_create("DomainFetcher", v2);

  *(this + 9) = objc_alloc_init(NSMutableOrderedSet);
  *(this + 80) = 0;
  *(this + 11) = dispatch_semaphore_create(0);
}

void FIProviderDomainFetcher::Start(FIProviderDomainFetcher *this)
{
  dispatch_assert_queue_V2(*(this + 8));
  std::mutex::lock(this);
  v2 = [*(this + 9) firstObject];
  std::mutex::unlock(this);
  if (v2)
  {
    *&v3 = 138543618;
    v14 = v3;
    do
    {
      v4 = LogObj(4);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v2 domainID];
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking up domain for id '%@'", buf, 0xCu);
      }

      v6 = FPProviderDomainClass();
      v7 = [v2 domainID];
      v8 = [v2 cachePolicy];
      v15 = 0;
      v9 = [(objc_class *)v6 providerDomainWithID:v7 cachePolicy:v8 error:&v15];
      v10 = v15;

      if (!v9)
      {
        v11 = LogObj(4);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [v2 domainID];
          *buf = v14;
          v17 = v12;
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to find domain for %{public}@ with error: %{public}@", buf, 0x16u);
        }
      }

      std::mutex::lock(this);
      [v2 setAsyncFetchedDomain:v9];
      [v2 setAsyncError:v10];
      [*(this + 9) removeObject:v2];
      [v2 setAsyncResultAvailable:1];
      dispatch_semaphore_signal(*(this + 11));
      if (v9)
      {
        *(this + 80) = 1;
      }

      v13 = [*(this + 9) firstObject];

      std::mutex::unlock(this);
      v2 = v13;
    }

    while (v13);
  }
}

uint64_t FIProviderDomainFetcher::Queue(id *this, FIProviderDomain *a2)
{
  v3 = a2;
  v4 = [this[9] count];
  [this[9] addObject:v3];
  if (!v4)
  {
    v5 = this[8];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10000784C;
    block[3] = &unk_10002CF20;
    block[4] = this;
    dispatch_async(v5, block);
  }

  return 0;
}

id FIProviderDomainFetcher::FindQueuedDomain(FIProviderDomainFetcher *this, NSString *a2)
{
  v3 = a2;
  v4 = *(this + 9);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_10000795C;
  v9[3] = &unk_10002CF50;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(this + 9) objectAtIndexedSubscript:v6];
  }

  return v7;
}

id sub_10000795C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 domainID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

id sub_1000079C8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

FIProviderDomain *FIProviderDomainFetcher::FetchDomainForID(uint64_t a1, void *a2, uint64_t a3, void *a4, void **a5)
{
  v9 = a2;
  v10 = a4;
  if ((UseFileProviderFramework() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_16;
  }

  std::mutex::lock(a1);
  if (*(a1 + 80) == 1)
  {
    std::mutex::unlock(a1);
LABEL_4:
    v11 = [(objc_class *)FPProviderDomainClass() providerDomainWithID:v9 cachePolicy:a3 error:a5];
    if (a5 && *a5)
    {
      v12 = LogObj(4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v9;
        v34 = &stru_10002D580;
        CFRetain(&stru_10002D580);
        TString::SetStringRefAsImmutable(&v34, v13);

        v14 = SanitizedStr(&v34);
        v15 = *a5;
        *buf = 138412546;
        v36 = v14;
        v37 = 2114;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error fetching domainID '%@': %{public}@", buf, 0x16u);
        sub_100004348(&v34);
      }
    }

    if (v11)
    {
      v16 = [[FIProviderDomain alloc] initWithDomain:v11];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_16;
  }

  v16 = FIProviderDomainFetcher::FindQueuedDomain(a1, v9);
  if (v16)
  {
    std::mutex::unlock(a1);
    goto LABEL_16;
  }

  v18 = [FIProviderDomain alloc];
  v19 = [v10 URLByStandardizingPath];
  v20 = [(FIProviderDomain *)v18 initWithDomainID:v9 cachePolicy:a3 rootURL:v19 domain:0];

  v21 = FIProviderDomainFetcher::Queue(a1, v20);
  std::mutex::unlock(a1);
  if (!v20)
  {
    goto LABEL_4;
  }

  v22 = LogObj(4);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Waiting for first domain result", buf, 2u);
  }

  v23 = *(a1 + 88);
  v24 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v23, v24))
  {
    v25 = LogObj(4);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v9;
      v34 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(&v34, v26);

      v27 = SanitizedStr(&v34);
      *buf = 138543362;
      v36 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Domain fetch for providerDomainID timed out: %{public}@", buf, 0xCu);
      sub_100004348(&v34);
    }
  }

  else
  {
    v25 = LogObj(4);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v9;
      v34 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(&v34, v28);

      v29 = SanitizedStr(&v34);
      *buf = 138543362;
      v36 = v29;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Domain fetch for providerDomainID finished before timeout: %{public}@", buf, 0xCu);
      sub_100004348(&v34);
    }
  }

  if (![(FIProviderDomain *)v20 asyncResultAvailable])
  {
LABEL_35:
    v16 = v20;
    goto LABEL_16;
  }

  v30 = [(FIProviderDomain *)v20 asyncFetchedDomain];
  if (!v30)
  {
    v32 = LogObj(4);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [(FIProviderDomain *)v20 asyncError];
      *buf = 138543618;
      v36 = v9;
      v37 = 2114;
      v38 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Waited and received no domain for %{public}@ error: %{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v31 = LogObj(4);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Waited and received result for domain: %{public}@", buf, 0xCu);
  }

  v16 = [[FIProviderDomain alloc] initWithDomain:v30];
LABEL_16:

  return v16;
}

FIProviderDomain *FIProviderDomainFetcher::FetchDomainForURL(std::mutex *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  std::mutex::lock(a1);
  v10 = a1[1].__m_.__opaque[8];
  std::mutex::unlock(a1);
  if (v10)
  {
    v11 = [(objc_class *)FPProviderDomainClass() providerDomainForURL:v9 error:a5];
    if (v11)
    {
      v12 = [[FIProviderDomain alloc] initWithDomain:v11];
LABEL_9:
      v14 = v12;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v9 fp_fpfsProviderDomainID:a3];
    if (v11)
    {
      if (a3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      v12 = FIProviderDomainFetcher::FetchDomainForID(a1, v11, a4, v13, 0);
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

uint64_t FIProviderDomainFetcher::Singleton(FIProviderDomainFetcher *this)
{
  if ((atomic_load_explicit(&qword_1000317B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000317B8))
  {
    operator new();
  }

  return qword_1000317B0;
}

id sub_100008560(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10000870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100004348(&a9);
  sub_100004348(&a10);

  _Unwind_Resume(a1);
}

void sub_100008834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

void sub_100008AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

void sub_100008B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

void sub_100008C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

void sub_100008CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

const void **sub_100009484(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000094D0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100009504(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100009538(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100009594(exception, a1);
}

std::logic_error *sub_100009594(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void TString::TString(TString *this, const char *a2)
{
  *this = &stru_10002D580;
  CFRetain(&stru_10002D580);
  sub_100004FD4(this, &stru_10002D580);
  if (a2)
  {
    v4 = strlen(a2);
    TString::SetFromUTF8(this, a2, v4);
  }
}

const void **TString::SetFromUTF8(CFTypeRef *this, const UInt8 *a2, CFIndex a3)
{
  if (a3)
  {
    v4 = CFStringCreateWithBytes(kCFAllocatorDefault, a2, a3, 0x8000100u, 0);
    v7 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &stru_10002D580;
    }

    sub_100004FD4(this, v5);
    return sub_100004348(&v7);
  }

  else
  {

    return sub_100004FD4(this, &stru_10002D580);
  }
}

void sub_1000096E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

const void *TString::MutableRef(TString **this, const __CFString *a2)
{
  IsMutable = TString::IsMutable(*this, a2);
  MutableCopy = *this;
  if ((IsMutable & 0x100) == 0 || (IsMutable & 1) == 0)
  {
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, *this);
    if (*this)
    {
      CFRelease(*this);
    }

    *this = MutableCopy;
  }

  return sub_100004BD8(MutableCopy);
}

void TString::SetFromUniChars(CFTypeRef *this, const unsigned __int16 *a2, CFIndex a3)
{
  v4 = CFStringCreateWithCharacters(kCFAllocatorDefault, a2, a3);
  if (*this)
  {
    CFRelease(*this);
  }

  *this = v4;
}

void TString::SubString(CFStringRef *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFTypeRef *a4@<X8>)
{
  v6 = a2 & ~(a2 >> 63);
  v7 = a3 + v6 - 1;
  Length = CFStringGetLength(*this);
  if (Length - 1 < v7)
  {
    v7 = Length - 1;
  }

  if (v7 >= v6 && (CFStringGetCharacterAtIndex(*this, v6) & 0xFC00) == 0xDC00)
  {
    ++v6;
  }

  if (v7 >= v6)
  {
    v7 -= (CFStringGetCharacterAtIndex(*this, v7) & 0xFC00) == 55296;
  }

  if (v6 || v7 != CFStringGetLength(*this) - 1)
  {
    if (v7 >= v6)
    {
      v12.length = v7 - v6 + 1;
      v12.location = v6;
      v10 = CFStringCreateWithSubstring(kCFAllocatorDefault, *this, v12);
      v11 = v10;
      *a4 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(a4, v10);
      sub_100009484(&v11);
    }

    else
    {
      v9 = sub_100004F08();
      *a4 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(a4, *v9);
    }
  }

  else
  {
    *a4 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(a4, *this);
  }
}

void TString::SubStringFrom(CFStringRef *this@<X0>, uint64_t a2@<X1>, CFTypeRef *a3@<X8>)
{
  if (a2 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v6 = CFStringGetLength(*this) - v5;

  TString::SubString(this, v5, v6, a3);
}

void TString::SetLength(CFStringRef *this, CFIndex a2)
{
  if (a2)
  {
    v3 = a2;
    Length = CFStringGetLength(*this);
    if (Length <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = Length;
    }

    sub_100009EAC(buffer, v5);
    v6 = *this;
    v7 = CFStringGetLength(*this);
    if (v7 >= v3)
    {
      v8.length = v3;
    }

    else
    {
      v8.length = v7;
    }

    v8.location = 0;
    CFStringGetCharacters(v6, v8, buffer[0]);
    if (v3 >= 1 && (buffer[0][v3 - 1] & 0xFC00) == 0xD800)
    {
      --v3;
    }

    TString::SetFromUniChars(this, buffer[0], v3);
    if (buffer[0])
    {
      buffer[1] = buffer[0];
      operator delete(buffer[0]);
    }
  }

  else
  {

    sub_100004FD4(this, &stru_10002D580);
  }
}

void sub_100009A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL TString::BeginsWith(CFStringRef *this, CFStringRef *a2)
{
  Length = CFStringGetLength(*a2);
  if (CFStringGetLength(*this) < Length)
  {
    return 0;
  }

  if (Length)
  {
    return CFStringHasPrefix(*this, *a2) != 0;
  }

  return 1;
}

BOOL TString::EndsWith(CFStringRef *this, CFStringRef *a2)
{
  Length = CFStringGetLength(*this);
  v5 = CFStringGetLength(*a2);
  v6 = Length < v5;
  v7 = Length - v5;
  if (v6)
  {
    return 0;
  }

  v9 = v5;
  v10 = sub_100004C7C(this);
  if (v10)
  {
    v11 = CFAutorelease(v10);
    v12 = sub_100004BD8(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100004C7C(a2);
  if (v13)
  {
    v14 = CFAutorelease(v13);
    v15 = sub_100004BD8(v14);
  }

  else
  {
    v15 = 0;
  }

  v16.location = v7;
  v16.length = v9;
  return CFStringCompareWithOptions(v12, v15, v16, 0) == kCFCompareEqualTo;
}

TString **TString::Append(TString **this, CFStringRef *a2)
{
  if (CFStringGetLength(*this) || (IsMutable = TString::IsMutable(*this, v4), (IsMutable & 0x100) != 0) && (IsMutable & 1) != 0)
  {
    v6 = TString::MutableRef(this, v4);
    CFStringAppend(v6, *a2);
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, *a2);
    if (*this)
    {
      CFRelease(*this);
    }

    *this = MutableCopy;
  }

  return this;
}

uint64_t TString::IsMutable(TString *this, const __CFString *a2)
{
  if (!this)
  {
    v4 = 0;
    v5 = 1;
    return v4 | (v5 << 8);
  }

  ClassName = object_getClassName(this);
  if (!strcmp(ClassName, "__NSCFString"))
  {
    v4 = __CFStringIsMutable() != 0;
    goto LABEL_9;
  }

  if (!strcmp(ClassName, "__NSCFConstantString") || !strcmp(ClassName, "NSTaggedPointerString"))
  {
    v4 = 0;
LABEL_9:
    v5 = 1;
    return v4 | (v5 << 8);
  }

  v3 = strcmp(ClassName, "_NSBPlistMappedString");
  v4 = 0;
  v5 = v3 == 0;
  return v4 | (v5 << 8);
}

void TString::Str(id *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *this;
  v3 = [v6 UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000094B8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v3, v4);
  }

  a2[v5] = 0;
}

id TString::c_str(id *this)
{
  v1 = *this;

  return [v1 UTF8String];
}

void TString::SetStringRefAsImmutable(CFTypeRef *this, __CFString *a2)
{
  v2 = this;
  if (!a2)
  {
    v5 = &stru_10002D580;
    goto LABEL_6;
  }

  IsMutable = TString::IsMutable(a2, a2);
  if ((IsMutable & 0x100) != 0 && (IsMutable & 1) == 0)
  {
    this = v2;
    v5 = a2;
LABEL_6:

    sub_100004FD4(this, v5);
    return;
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
  if (*v2)
  {
    CFRelease(*v2);
  }

  *v2 = Copy;
}

void *sub_100009EAC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100009F24(result, a2);
  }

  return result;
}

void sub_100009F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100009F24(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_100009F5C(a1, a2);
  }

  sub_100007060();
}

void sub_100009F5C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100004C48();
}

void sub_10000A2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000A354(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A36C(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if ([*(*(*(a1 + 40) + 8) + 40) count] > a3)
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a3];
    v8 = [v12 isEqualToString:v7];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = [*(a1 + 32) subarrayWithRange:{0, a3}];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  *a4 = 1;
LABEL_5:
}

void sub_10000A588(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetuidToUse(TCFURLInfo *this)
{
  if (TCFURLInfo::gDSHelperRunning == 1)
  {
    return TCFURLInfo::guidToUse;
  }

  else
  {
    return getuid();
  }
}

uint64_t TCFURLInfo::GetgidToUse(TCFURLInfo *this)
{
  if (TCFURLInfo::gDSHelperRunning == 1)
  {
    return TCFURLInfo::ggidToUse;
  }

  else
  {
    return getgid();
  }
}

void TCFURLInfo::TCFURLInfo(TCFURLInfo *this)
{
  *this = 0;
  *(this + 1) = &stru_10002D580;
  CFRetain(&stru_10002D580);
  *(this + 2) = &stru_10002D580;
  CFRetain(&stru_10002D580);
  *(this + 3) = &stru_10002D580;
  CFRetain(&stru_10002D580);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 12) = 0;
  v2 = *(this + 54);
  *(this + 26) &= 0x100u;
  *(this + 54) = v2 & 0xE0;
}

void sub_10000A6C8(_Unwind_Exception *a1)
{
  sub_100004348(v3);
  sub_100004348(v2);
  sub_100004ED4(v1);
  _Unwind_Resume(a1);
}

void TCFURLInfo::Path(TCFURLInfo **this@<X0>, TString *a2@<X8>)
{
  v3 = *this;
  if (v3)
  {

    TCFURLInfo::FileSystemRepresentation(v3, 1, a2);
  }

  else
  {
    v4 = sub_100004F08();
    *a2 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(a2, *v4);
  }
}

CFIndex TCFURLInfo::FetchProperties(const void **this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 4294959236;
  }

  error = 0;
  if (a2)
  {
    CopyItemRequestedPropertyKeys = TCFURLInfo::GetCopyItemRequestedPropertyKeys(this);
    v34 = CFURLCopyResourcePropertiesForKeys(v2, CopyItemRequestedPropertyKeys, &error);
    if (error)
    {
      CFRelease(error);
      error = 0;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = TCFURLInfo::GetCopyItemRequestedPropertyKeys(v6);
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v8)
      {
        v9 = *v31;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            v28 = 0;
            propertyValueTypeRefPtr = 0;
            CFURLCopyResourcePropertyForKey(*this, v11, &propertyValueTypeRefPtr, &v28);
            sub_100004C14(&v28);
            sub_1000094D0(&propertyValueTypeRefPtr);
          }

          v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    v34 = 0;
  }

  propertyValueTypeRefPtr = 0;
  v13 = *this;
  if (_CFURLGetResourcePropertyFlags())
  {
    v16 = propertyValueTypeRefPtr;
    v17 = propertyValueTypeRefPtr & 0xFFFE;
    v18 = propertyValueTypeRefPtr >> 1;
    v19 = *(this + 26);
    v20 = *(this + 54) & 0xFE | propertyValueTypeRefPtr & 1;
    *(this + 54) = v20;
    v21 = v19 & 0xFFFFFFFC | (v17 >> 1) & 2 | (v17 >> 1) & 1;
    *(this + 26) = v21;
    if (v18)
    {
      if (TCFURLInfo::GetBooleanProperty(*this, kCFURLIsPackageKey, v15))
      {
        v22 = 4;
      }

      else
      {
        v22 = 0;
      }

      LOWORD(v21) = *(this + 26) & 0xFFFB | v22;
      *(this + 26) = v21;
      v16 = propertyValueTypeRefPtr;
      v20 = *(this + 54);
    }

    *(this + 54) = v20 & 0xFD | (v16 >> 4) & 2;
    v23 = ((v16 >> 2) & 0x20 | (((v16 & 8) != 0) << 7) | (v16 >> 10 << 15) | (v16 >> 2) & 0x10 | v21 & 0x7F4F) ^ 0x20;
    *(this + 26) = v23;
    *(this + 12) = 1;
    if (a2)
    {
      *(this + 26) = (v16 >> 2) & 0x40 | v16 & 0x7000 | (v16 >> 6) & 8 | v23 & 0x8FB7;
      *(this + 12) = 2;
    }

    v28 = 0;
    if (CFURLCopyResourcePropertyForKey(*this, kCFURLNameKey, &v28, &error))
    {
      v24 = v28;
      cf = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(&cf, v24);
      if (this + 1 != &cf)
      {
        sub_100004F88(this + 1, &cf);
        CFRetain(&stru_10002D580);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = &stru_10002D580;
      }

      sub_100004348(&cf);
    }

    sub_100009484(&v28);
  }

  v25 = atomic_load(byte_100031600);
  if (v25)
  {
    *(this + 54) = *(this + 54) & 0xFB | (TCFURLInfo::GetNumericalProperty(*this, _kCFURLFileFlagsKey, v15) >> 28) & 4;
  }

  v12 = TCFURLInfo::TranslateCFError(error, v14);
  sub_10000E82C(&v34);
  sub_100004C14(&error);
  return v12;
}

void sub_10000AAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v16 = va_arg(va1, const void *);

  sub_10000E82C(va);
  sub_100004C14(va1);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetCopyItemRequestedPropertyKeys(TCFURLInfo *this)
{
  if ((atomic_load_explicit(&qword_1000317C8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1000317C8);
    if (v2)
    {
      qword_1000317C0 = sub_10000B1E4(v2);
      __cxa_guard_release(&qword_1000317C8);
    }
  }

  return qword_1000317C0;
}

CFIndex TCFURLInfo::TranslateCFError(TCFURLInfo *this, __CFError *a2)
{
  if (this)
  {
    v2 = this;
    Domain = CFErrorGetDomain(v2);
    v23 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v23, Domain);
    FileProviderErrorDomain(buf);
    LODWORD(Domain) = CFEqual(v23, *buf);
    sub_100004348(buf);
    if (Domain)
    {
      v5 = TCFURLInfo::TranslateFileProviderError(v2, v4);
    }

    else
    {
      v7 = CFErrorCopyUserInfo(v2);
      *buf = v7;
      if (v7)
      {
        Value = CFDictionaryGetValue(v7, kCFErrorUnderlyingErrorKey);
        v9 = sub_100004BD8(Value);
        if (v9)
        {
          v6 = TCFURLInfo::OSStatusFromCFErrorShallow(v9, v10);
          sub_10000E82C(buf);
LABEL_10:
          if (sub_10000C934(&v23, NSCocoaErrorDomain) && [(TCFURLInfo *)v2 code]== 260)
          {
            v12 = [(TCFURLInfo *)v2 userInfo];
            v13 = [v12 objectForKeyedSubscript:NSURLErrorKey];

            v16 = 0;
            if (v13)
            {
              v14 = [v13 lastPathComponent];
              TCFURLInfo::GetPropertyStoreName(v14);
              v15 = sub_10000C934(&qword_100031820, v14);

              if (!v15)
              {
                v16 = 1;
              }
            }

            if ((atomic_load_explicit(&qword_1000317F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000317F8))
            {
              sub_10000CA20();
              __cxa_guard_release(&qword_1000317F8);
            }

            if (!v16)
            {
              v20 = v13;
LABEL_27:

              sub_100004348(&v23);
              return v6;
            }

            v17 = v13;
            v18 = qword_1000317E0;
            v19 = *algn_1000317E8;
            v20 = v17;
            while (1)
            {
              if (v18 == v19)
              {

                goto LABEL_27;
              }

              if (IsEqual(v20, *v18))
              {
                break;
              }

              ++v18;
            }
          }

          v20 = LogObj(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [NSNumber numberWithInt:v6];
            *buf = 138543618;
            *&buf[4] = v21;
            v25 = 2112;
            v26 = v2;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "TCFURLInfo::TranslateCFError -- status: %{public}@, CFError = %@", buf, 0x16u);
          }

          goto LABEL_27;
        }
      }

      sub_10000E82C(buf);
      v5 = TCFURLInfo::OSStatusFromCFErrorShallow(v2, v11);
    }

    v6 = v5;
    goto LABEL_10;
  }

  return 0;
}

void sub_10000AEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_1000317F8);

  sub_100004348(va);
  _Unwind_Resume(a1);
}

const void **TCFURLInfo::ForceNameFetch(const void **this)
{
  v2 = *this;
  if (v2)
  {
    PathComponent = CFURLCopyLastPathComponent(v2);
    v7 = PathComponent;
    if (PathComponent)
    {
      v4 = PathComponent;
      cf = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(&cf, v4);
      if (this + 1 != &cf)
      {
        sub_100004F88(this + 1, &cf);
        CFRetain(&stru_10002D580);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = &stru_10002D580;
      }

      sub_100004348(&cf);
    }
  }

  else
  {
    v7 = 0;
  }

  return sub_100009484(&v7);
}

void sub_10000B034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100004348(&a9);
  sub_100009484(&a10);
  _Unwind_Resume(a1);
}

CFIndex TCFURLInfo::Initialize(CFTypeRef *this, const __CFURL *a2, int a3, int a4)
{
  TString::SetStringRefAsImmutable(this + 1, 0);
  TString::SetFromUTF8(this + 1, "", 0);
  TString::SetStringRefAsImmutable(this + 2, 0);
  TString::SetFromUTF8(this + 2, "", 0);
  TString::SetStringRefAsImmutable(this + 3, 0);
  TString::SetFromUTF8(this + 3, "", 0);
  *(this + 26) &= ~0x100u;
  sub_100004FD4(this, a2);
  if (!*this || !a3)
  {
    return 0;
  }

  return TCFURLInfo::FetchProperties(this, a4);
}

CFIndex TCFURLInfo::Initialize(CFTypeRef *this, const char *__s)
{
  if (!__s)
  {
    return 4294959224;
  }

  v4 = strlen(__s);
  v5 = CFURLCreateFromFileSystemRepresentation(0, __s, v4, 0);
  v8 = v5;
  if (v5)
  {
    v6 = TCFURLInfo::Initialize(this, v5, 1, 1);
  }

  else
  {
    v6 = 4294959238;
  }

  sub_100004D1C(&v8);
  return v6;
}

void sub_10000B1D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004D1C(va);
  _Unwind_Resume(a1);
}

__CFArray *sub_10000B1E4(TCFURLInfo *a1)
{
  BasicInfoPropertyKeys = TCFURLInfo::GetBasicInfoPropertyKeys(a1);
  MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, BasicInfoPropertyKeys);
  CFArrayAppendValue(MutableCopy, kCFURLFileSecurityKey);
  return MutableCopy;
}

uint64_t TCFURLInfo::GetBasicInfoPropertyKeys(TCFURLInfo *this)
{
  if ((atomic_load_explicit(&qword_1000317D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000317D8))
  {
    v35 = sub_100004BCC(&kCFURLNameKey);
    v36[0] = v35;
    v34 = sub_100004BCC(&_kCFURLVolumeRefNumKey);
    v36[1] = v34;
    v33 = sub_100004BCC(&_kCFURLFileIDKey);
    v36[2] = v33;
    v32 = sub_100004BCC(&_kCFURLFileSizeOfResourceForkKey);
    v36[3] = v32;
    v31 = sub_100004BCC(&_kCFURLFileAllocatedSizeOfResourceForkKey);
    v36[4] = v31;
    v30 = sub_100004BCC(&_kCFURLFinderInfoKey);
    v36[5] = v30;
    v29 = sub_100004BCC(&_kCFURLIsCompressedKey);
    v36[6] = v29;
    v28 = sub_100004BCC(&kCFURLFileSizeKey);
    v36[7] = v28;
    v27 = sub_100004BCC(&kCFURLFileAllocatedSizeKey);
    v36[8] = v27;
    v26 = sub_100004BCC(&kCFURLCreationDateKey);
    v36[9] = v26;
    v25 = sub_100004BCC(&kCFURLContentModificationDateKey);
    v36[10] = v25;
    v24 = sub_100004BCC(&kCFURLAddedToDirectoryDateKey);
    v36[11] = v24;
    v23 = sub_100004BCC(&kCFURLAttributeModificationDateKey);
    v36[12] = v23;
    v22 = sub_100004BCC(&kCFURLLabelNumberKey);
    v36[13] = v22;
    v21 = sub_100004BCC(&kCFURLLinkCountKey);
    v36[14] = v21;
    v20 = sub_100004BCC(&kCFURLHasHiddenExtensionKey);
    v36[15] = v20;
    v19 = sub_100004BCC(&kCFURLIsVolumeKey);
    v36[16] = v19;
    v18 = sub_100004BCC(&kCFURLIsHiddenKey);
    v36[17] = v18;
    v17 = sub_100004BCC(&kCFURLIsUserImmutableKey);
    v36[18] = v17;
    v16 = sub_100004BCC(&kCFURLIsSystemImmutableKey);
    v36[19] = v16;
    v15 = sub_100004BCC(&_kCFURLIsUserAppendKey);
    v36[20] = v15;
    v14 = sub_100004BCC(&_kCFURLIsSystemAppendKey);
    v36[21] = v14;
    v13 = sub_100004BCC(&_kCFURLIsRestrictedKey);
    v36[22] = v13;
    v12 = sub_100004BCC(&_kCFURLIsSystemNoUnlinkKey);
    v36[23] = v12;
    v11 = sub_100004BCC(&kCFURLIsSymbolicLinkKey);
    v36[24] = v11;
    v2 = sub_100004BCC(&kCFURLIsDirectoryKey);
    v36[25] = v2;
    v3 = sub_100004BCC(&kCFURLIsRegularFileKey);
    v36[26] = v3;
    v4 = sub_100004BCC(&kCFURLIsAliasFileKey);
    v36[27] = v4;
    v5 = sub_100004BCC(&kCFURLIsApplicationKey);
    v36[28] = v5;
    v6 = sub_100004BCC(&kCFURLIsReadableKey);
    v36[29] = v6;
    v7 = sub_100004BCC(&kCFURLIsWritableKey);
    v36[30] = v7;
    v8 = sub_100004BCC(&kCFURLIsExecutableKey);
    v36[31] = v8;
    v9 = sub_100004BCC(&_kCFURLFileFlagsKey);
    v36[32] = v9;
    v10 = sub_100004BCC(&_kCFURLVolumeIsQuarantinedKey);
    v36[33] = v10;
    v36[34] = NSURLFileProtectionKey;
    v36[35] = NSURLMayShareFileContentKey;
    v36[36] = NSURLFileContentIdentifierKey;
    v36[37] = NSURLIsSparseKey;
    v36[38] = NSURLMayHaveExtendedAttributesKey;
    qword_1000317D0 = [NSArray arrayWithObjects:v36 count:39];

    __cxa_guard_release(&qword_1000317D8);
  }

  return qword_1000317D0;
}

void TCFURLInfo::Name(TCFURLInfo *this@<X0>, CFTypeRef *a2@<X8>)
{
  if (!CFStringGetLength(*(this + 1)) && !*(this + 12))
  {
    TCFURLInfo::ForceNameFetch(this);
  }

  *a2 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(a2, *(this + 1));
}

const void **TCFURLInfo::StringProperty@<X0>(TCFURLInfo *this@<X0>, const __CFString *a2@<X1>, CFTypeRef *a3@<X8>)
{
  propertyValueTypeRefPtr = 0;
  if (this)
  {
    CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, 0);
    v5 = propertyValueTypeRefPtr;
  }

  else
  {
    v5 = 0;
  }

  *a3 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(a3, v5);
  return sub_100009484(&propertyValueTypeRefPtr);
}

void sub_10000BAB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(v2);
  sub_100009484(va);
  _Unwind_Resume(a1);
}

TCFURLInfo *TCFURLInfo::TranslatePOSIXError(TCFURLInfo *this, const char *a2, const char *a3)
{
  v4 = this;
  if (this > -2)
  {
    if (this == -1)
    {
      this = *__error();
    }

    return TCFURLInfo::TranslateRawPOSIXError(this, a2, a3);
  }

  else
  {
    if (a2)
    {
      v5 = LogObj(5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        TString::TString(&v8, a2);
        v6 = SanitizedPath(&v8);
        *buf = 67109378;
        v10 = v4;
        v11 = 2114;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MacOS error %d for %{public}@", buf, 0x12u);
        sub_100004348(&v8);
      }
    }

    return v4;
  }
}

void sub_10000BC44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);

  _Unwind_Resume(a1);
}

const __CFURL *TCFURLInfo::GetNumericalProperty(const __CFURL *this, const __CFString *a2, const __CFString *a3)
{
  valuePtr = 0;
  if (this)
  {
    error = 0;
    propertyValueTypeRefPtr = 0;
    if (CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, &error))
    {
      if (propertyValueTypeRefPtr)
      {
        CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberSInt64Type, &valuePtr);
      }

      goto LABEL_14;
    }

    Domain = CFErrorGetDomain(error);
    cf1 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&cf1, Domain);
    if (kCFErrorDomainCocoa)
    {
      v5 = kCFErrorDomainCocoa;
    }

    else
    {
      v5 = &stru_10002D580;
    }

    if (CFEqual(cf1, v5))
    {
      Code = CFErrorGetCode(error);
      sub_100004348(&cf1);
      if (Code == 260)
      {
LABEL_14:
        sub_100004C14(&error);
        sub_10000E860(&propertyValueTypeRefPtr);
        return valuePtr;
      }
    }

    else
    {
      sub_100004348(&cf1);
    }

    if (CFEqual(a2, _kCFURLVolumeRefNumKey))
    {
      valuePtr = 0;
    }

    goto LABEL_14;
  }

  return this;
}

void sub_10000BD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  sub_100004348(&a9);
  sub_100004C14(&a10);
  sub_10000E860(&a11);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetBooleanProperty(TCFURLInfo *this, const __CFString *a2, const __CFString *a3)
{
  if (!this)
  {
    return 0;
  }

  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, 0) && propertyValueTypeRefPtr)
  {
    v3 = IsEqual(propertyValueTypeRefPtr, kCFBooleanTrue);
  }

  else
  {
    v3 = 0;
  }

  sub_10000E8C8(&propertyValueTypeRefPtr);
  return v3;
}

void sub_10000BE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000E8C8(va);
  _Unwind_Resume(a1);
}

void TCFURLInfo::FileSystemRepresentation(TCFURLInfo *this@<X0>, const __CFURL *a2@<X1>, TString *a3@<X8>)
{
  v3 = a2;
  if (_CFURLIsFileURL())
  {
    if (CFURLGetFileSystemRepresentation(this, v3, buffer, 1024))
    {
      TString::TString(a3, buffer);
    }

    else
    {
      v7 = sub_100004F08();
      *a3 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(a3, *v7);
    }
  }

  else
  {
    v6 = sub_100004F08();
    *a3 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(a3, *v6);
  }
}

uint64_t TCFURLInfo::GetVolumeInfoRecord(CFURLRef *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = CFURLCreateFilePathURL(0, *a1, 0);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  VolumeInfoRecord = TCFURLInfo::GetVolumeInfoRecord(v3, a2);
  sub_100004D1C(&v6);
  return VolumeInfoRecord;
}

void sub_10000BF90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004D1C(va);
  _Unwind_Resume(a1);
}

CFIndex TCFURLInfo::SetResourceProperties(id *this, const __CFDictionary *a2)
{
  v3 = *this;
  if (!v3)
  {
    return 4294959238;
  }

  error = 0;
  if (!CFURLSetResourcePropertiesForKeys(v3, a2, &error))
  {
    v5 = LogObj(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *this;
      v7 = SanitizedURL(v6);
      if (*(this + 12) <= 0)
      {
        TCFURLInfo::FetchProperties(this, 1);
      }

      v8 = (*(this + 26) >> 4) & 1;
      *buf = 138544130;
      v17 = v7;
      v18 = 2114;
      v19 = a2;
      v20 = 1024;
      v21 = v8;
      v22 = 2114;
      v23 = error;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CFURLSetResourcePropertiesForKeys failed %{public}@, %{public}@, locked=%d error: %{public}@", buf, 0x26u);
    }

    v10 = TCFURLInfo::TranslateCFError(error, v9);
    if (v10 != -5000)
    {
      goto LABEL_12;
    }

    v11 = LogObj(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(__CFDictionary *)a2 allKeys];
      v13 = [v12 description];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring SetResourcePropertiesForKeys error due to permissions error when setting keys %{public}@", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_12:
  sub_100004C14(&error);
  return v10;
}

void sub_10000C18C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_100004C14(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetVolumeInfoRecord(void *a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1)
  {
    v3 = a1;
    memset(&propertyValueTypeRefPtr, 0, 36);
    v28 = 0;
    error = 5;
    v27 = 0x20000;
    if (getattrlist([v3 fileSystemRepresentation], &error, &propertyValueTypeRefPtr, 0x24uLL, 0))
    {
      v4 = __error();
      v6 = TCFURLInfo::TranslatePOSIXError(*v4, 0, v5);

      if (v6)
      {
        v7 = *a2 & 0xFFF9FFFF;
LABEL_15:
        *a2 = v7;
LABEL_16:
        *a2 = v7 & 0xFFFFF6FF;
        v25 = 0;
        error = 0;
        if (!_CFURLGetVolumePropertyFlags())
        {
          v8 = TCFURLInfo::TranslateCFError(error, v17);
LABEL_31:
          sub_100004C14(&error);
          return v8;
        }

        *a2 = ((v25 >> 29) & 0x80 | *a2 & 0xFFFF9905 | (v25 >> 37) & 0x4000 | (v25 >> 34) & 0x200 | (v25 >> 35) & 8 | (v25 >> 57) & 0x10 | (v25 >> 44) & 0x20 | (v25 >> 37) & 0x400 | (v25 >> 43) & 0x2000 | (2 * (v25 & 1)) | (v25 >> 52) & 0x40) ^ 0x2000;
        *&propertyValueTypeRefPtr.f_bsize = 0;
        if (CFURLCopyResourcePropertyForKey(v3, kCFURLVolumeTypeNameKey, &propertyValueTypeRefPtr, 0))
        {
          v18 = *&propertyValueTypeRefPtr.f_bsize;
          if (*&propertyValueTypeRefPtr.f_bsize)
          {
            obj = &stru_10002D580;
            CFRetain(&stru_10002D580);
            TString::SetStringRefAsImmutable(&obj, v18);
            objc_storeStrong((a2 + 24), obj);
            sub_100004348(&obj);
          }
        }

        sub_100004348(&propertyValueTypeRefPtr);
        *&propertyValueTypeRefPtr.f_bsize = 0;
        if (!CFURLCopyResourcePropertyForKey(v3, kCFURLVolumeAvailableCapacityKey, &propertyValueTypeRefPtr, &error) || (v20 = *&propertyValueTypeRefPtr.f_bsize) == 0)
        {
          v8 = TCFURLInfo::TranslateCFError(error, v19);
          goto LABEL_30;
        }

        *(a2 + 8) = 4096;
        obj = 0;
        CFNumberGetValue(v20, kCFNumberSInt64Type, &obj);
        v21 = obj;
        v22 = *(a2 + 8);
        if (!__CFADD__(obj, v22))
        {
          if (!v22)
          {
LABEL_28:
            v8 = 0;
            *(a2 + 16) = v22;
LABEL_30:
            sub_10000E860(&propertyValueTypeRefPtr);
            goto LABEL_31;
          }

          v21 = obj + v22 - 1;
        }

        v22 *= v21 / v22;
        goto LABEL_28;
      }

      f_blocks = 0;
    }

    else
    {
      f_blocks = propertyValueTypeRefPtr.f_blocks;
    }

    v7 = *a2 & 0xFFFDFFFF | (((f_blocks >> 6) & 1) << 17);
    *a2 = v7;
    if ((f_blocks & 2) == 0)
    {
      goto LABEL_16;
    }

    v10 = v3;
    v11 = v10;
    v12 = [v10 fileSystemRepresentation];
    memset(&propertyValueTypeRefPtr, 0, 44);
    v28 = 0;
    error = 5;
    v27 = 0x40000000;
    if (getattrlist(v12, &error, &propertyValueTypeRefPtr, 0x2CuLL, 0x21u))
    {
      v13 = __error();
      v15 = TCFURLInfo::TranslatePOSIXError(*v13, 0, v14);

      if (v15)
      {
        v7 = *a2 & 0xFFFBFFFF;
        goto LABEL_15;
      }

      f_bavail = 0;
    }

    else
    {
      f_bavail = propertyValueTypeRefPtr.f_bavail;
    }

    v7 = *a2 & 0xFFFBFFFF | (((f_bavail >> 28) & 1) << 18);
    goto LABEL_15;
  }

  return 4294959238;
}

void sub_10000C5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100004C14(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::TranslateFileProviderError(TCFURLInfo *this, __CFError *a2)
{
  Code = CFErrorGetCode(this);
  if ((Code + 1004) > 4)
  {
    return 4294959279;
  }

  else
  {
    return *(&unk_100023218 + Code + 1004);
  }
}

CFIndex TCFURLInfo::OSStatusFromCFErrorShallow(TCFURLInfo *this, __CFError *a2)
{
  Domain = CFErrorGetDomain(this);
  cf1 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(&cf1, Domain);
  v15 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(&v15, kCFErrorDomainPOSIX);
  LODWORD(Domain) = CFEqual(cf1, v15);
  sub_100004348(&v15);
  if (Domain)
  {
    Code = CFErrorGetCode(this);
    v6 = TCFURLInfo::TranslatePOSIXError(Code, 0, v5);
  }

  else
  {
    v15 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v15, kCFErrorDomainOSStatus);
    v8 = CFEqual(cf1, v15);
    sub_100004348(&v15);
    if (v8)
    {
      v7 = CFErrorGetCode(this);
      goto LABEL_6;
    }

    FileProviderErrorDomain(&v15);
    if (CFEqual(cf1, v15))
    {
      sub_100004348(&v15);
    }

    else
    {
      cf2 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(&cf2, NSURLErrorDomain);
      v11 = CFEqual(cf1, cf2);
      sub_100004348(&cf2);
      sub_100004348(&v15);
      if (!v11)
      {
        v15 = &stru_10002D580;
        CFRetain(&stru_10002D580);
        TString::SetStringRefAsImmutable(&v15, kCFErrorDomainCocoa);
        v12 = CFEqual(cf1, v15);
        sub_100004348(&v15);
        if (v12)
        {
          v13 = CFErrorGetCode(this);
          if (v13 > 639)
          {
            if (v13 > 4352)
            {
              if (v13 == 4353 || v13 == 4355)
              {
                v7 = 4294959289;
                goto LABEL_6;
              }
            }

            else
            {
              if (v13 == 640)
              {
                v7 = 4294967262;
                goto LABEL_6;
              }

              if (v13 == 3072)
              {
                v7 = 4294967168;
                goto LABEL_6;
              }
            }
          }

          else
          {
            v7 = 4294967253;
            if (v13 > 259)
            {
              if (v13 == 260)
              {
                goto LABEL_6;
              }

              if (v13 == 516)
              {
                v7 = 4294967248;
                goto LABEL_6;
              }
            }

            else
            {
              if (v13 == 4)
              {
                goto LABEL_6;
              }

              if (v13 == 257)
              {
                v7 = 4294967242;
                goto LABEL_6;
              }
            }
          }
        }

        v7 = 4294967260;
        goto LABEL_6;
      }
    }

    v6 = TCFURLInfo::TranslateFileProviderError(this, v10);
  }

  v7 = v6;
LABEL_6:
  sub_100004348(&cf1);
  return v7;
}

void sub_10000C8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100004348(va);
  sub_100004348(va1);
  _Unwind_Resume(a1);
}

id sub_10000C934(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (v3)
  {
    v5 = [v4 isEqualToString:v3];
  }

  else
  {
    v5 = [v4 isEqualToString:&stru_10002D580];
  }

  v6 = v5;

  return v6;
}

CFTypeRef *TCFURLInfo::GetPropertyStoreName(TCFURLInfo *this)
{
  if ((atomic_load_explicit(&qword_100031828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031828))
  {
    sub_1000051F8(".DS_Store", 9, &qword_100031820);
    __cxa_guard_release(&qword_100031828);
  }

  return &qword_100031820;
}

void sub_10000CA20()
{
  qword_1000317E0 = 0;
  *algn_1000317E8 = 0;
  qword_1000317F0 = 0;
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Applications"];
  v4 = [NSURL fileURLWithPath:v1 isDirectory:1];

  sub_10000E4B8(&qword_1000317E0, &v4);
  v3 = [NSURL fileURLWithPath:@"/Developer" isDirectory:1];
  sub_10000E4B8(&qword_1000317E0, &v3);
  v2 = [v3 URLByAppendingPathComponent:@"Applications"];
  sub_10000E4B8(&qword_1000317E0, &v2);
}

TCFURLInfo *TCFURLInfo::TranslateRawPOSIXError(TCFURLInfo *this, const char *a2, const char *a3)
{
  v3 = this;
  if (this < -1)
  {
    return v3;
  }

  if (this > 62)
  {
    if (this <= 68)
    {
      if (this == 63)
      {
        v5 = 4294965886;
        goto LABEL_30;
      }

      if (this == 66)
      {
LABEL_12:
        v5 = 4294967249;
        goto LABEL_30;
      }
    }

    else
    {
      switch(this)
      {
        case 'E':
          v5 = 4294965871;
          goto LABEL_30;
        case 'P':
          v5 = 4294962273;
          goto LABEL_30;
        case 'Y':
          v5 = 4294967168;
LABEL_30:
          v6 = LogObj(2);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v7 = "'null'";
            v9[0] = 67109634;
            if (a2)
            {
              v7 = a2;
            }

            v9[1] = v3;
            v10 = 1024;
            v11 = v5;
            v12 = 2080;
            v13 = v7;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "TCFURLInfo::TranslateRawPOSIXError %d -> %d, path: %s", v9, 0x18u);
          }

          return v5;
      }
    }

LABEL_29:
    v5 = (this + 100000);
    goto LABEL_30;
  }

  v5 = 4294967260;
  switch(this)
  {
    case -1:
    case 5:
      goto LABEL_30;
    case 0:
      return v3;
    case 1:
    case 13:
      v5 = 4294962296;
      goto LABEL_30;
    case 2:
      v5 = 4294967253;
      goto LABEL_30;
    case 9:
      v5 = 4294967245;
      goto LABEL_30;
    case 11:
      v5 = 4294959283;
      goto LABEL_30;
    case 12:
    case 23:
      v5 = 4294967255;
      goto LABEL_30;
    case 16:
      goto LABEL_12;
    case 17:
      v5 = 4294967248;
      goto LABEL_30;
    case 18:
      v5 = 100018;
      goto LABEL_30;
    case 20:
    case 21:
      v5 = 4294965889;
      goto LABEL_30;
    case 22:
      v5 = 4294967246;
      goto LABEL_30;
    case 24:
      v5 = 4294967254;
      goto LABEL_30;
    case 27:
      v5 = 4294965987;
      goto LABEL_30;
    case 28:
      v5 = 4294967262;
      goto LABEL_30;
    case 30:
      v5 = 4294967235;
      goto LABEL_30;
    case 45:
      v5 = 4294965870;
      goto LABEL_30;
    default:
      goto LABEL_29;
  }

  return v3;
}

CFBundleRef DesktopServicesCFBundle(void)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.desktopservices");
  v5 = BundleWithIdentifier;
  if (BundleWithIdentifier)
  {
    v1 = BundleWithIdentifier;
    CFRetain(BundleWithIdentifier);
  }

  else
  {
    v2 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/DesktopServicesPriv.framework" isDirectory:1];
    v4 = CFBundleCreate(0, v2);
    sub_10000CF0C(&v5, &v4);
    sub_10000E930(&v4);

    v1 = v5;
  }

  v5 = 0;
  sub_10000E930(&v5);
  return v1;
}

void sub_10000CEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10000E930(va);
  _Unwind_Resume(a1);
}

const void **sub_10000CF0C(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

const void **TCFURLInfo::LocalizedCopyErrorMessage@<X0>(TCFURLInfo *this@<X0>, const void **a2@<X1>, CFTypeRef *a3@<X8>)
{
  if (this > -1310)
  {
    if (this > -44)
    {
      if (this <= -36)
      {
        if (this != -43)
        {
          if (this != -37)
          {
            if (this == -36)
            {
              v7 = 0;
              v8 = 1;
              v9 = @"IOError";
              goto LABEL_44;
            }

            goto LABEL_43;
          }

LABEL_38:
          v7 = 0;
          v8 = 1;
          v9 = @"BadName";
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      if (this == -35)
      {
        goto LABEL_30;
      }

      if (this != -34)
      {
        if (this == 100006)
        {
          v8 = 0;
          v7 = 0;
          v9 = @"DeviceDisappeared";
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_37:
      v8 = 0;
      v7 = 0;
      v9 = @"DiskFull";
      goto LABEL_44;
    }

    if (this <= -62)
    {
      if (this == -1309)
      {
        v8 = 0;
        v7 = 0;
        v9 = @"FileTooBig";
        goto LABEL_44;
      }

      if (this != -120)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (this == -61)
    {
      v8 = 0;
      v7 = 0;
      v9 = @"WritePermission";
      goto LABEL_44;
    }

    if (this == -48)
    {
      v7 = 0;
      v8 = 1;
      v9 = @"DuplicateFileName";
      goto LABEL_44;
    }

    if (this != -47)
    {
      goto LABEL_43;
    }

LABEL_18:
    v8 = 0;
    v7 = 0;
    v9 = @"FileBusy";
    goto LABEL_44;
  }

  if (this > -5009)
  {
    if (this <= -1430)
    {
      if (this != -5008)
      {
        if (this == -5000)
        {
          v8 = 0;
          v7 = 0;
          v9 = @"AccessDenied";
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      goto LABEL_37;
    }

    switch(this)
    {
      case 0xFFFFFA6B:
        goto LABEL_37;
      case 0xFFFFFA7E:
        goto LABEL_38;
      case 0xFFFFFA87:
LABEL_30:
        v8 = 0;
        v7 = 1;
        v9 = @"FileNotFound";
        goto LABEL_44;
    }
  }

  else if (this <= -8088)
  {
    if (this == -8095)
    {
      v8 = 0;
      v7 = 0;
      v9 = @"ReservationError";
      goto LABEL_44;
    }

    if (this == -8089)
    {
      v7 = 0;
      v8 = 1;
      v9 = @"CaseSensitivity";
      goto LABEL_44;
    }
  }

  else
  {
    switch(this)
    {
      case 0xFFFFE069:
        goto LABEL_18;
      case 0xFFFFEC66:
        goto LABEL_30;
      case 0xFFFFEC6E:
        goto LABEL_18;
    }
  }

LABEL_43:
  v8 = 0;
  v7 = 1;
  v9 = @"UnknownError";
LABEL_44:
  v10 = DesktopServicesCFBundle();
  v11 = CFBundleCopyLocalizedString(v10, v9, v9, 0);
  v18 = v11;
  if (v8)
  {
    v12 = sub_100004C7C(a2);
    if (v12)
    {
      v13 = CFAutorelease(v12);
      v12 = sub_100004BD8(v13);
    }

    v14 = CFStringCreateWithFormat(0, 0, v11, v12);
    goto LABEL_50;
  }

  if (v7)
  {
    v14 = CFStringCreateWithFormat(0, 0, v11, this);
LABEL_50:
    v17 = v14;
    sub_100004F88(&v18, &v17);
    sub_100004348(&v17);
  }

  v15 = v18;
  *a3 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(a3, v15);
  return sub_100004348(&v18);
}

void sub_10000D250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

const void **TCFURLInfo::LocalizedStringWithFileName@<X0>(const __CFString *this@<X0>, __CFString *a2@<X1>, CFTypeRef *a3@<X8>)
{
  TCFURLInfo::StringProperty(a2, kCFURLLocalizedNameKey, &cf);
  v6 = DesktopServicesCFBundle();
  v7 = CFBundleCopyLocalizedString(v6, this, this, 0);
  v14 = v7;
  v8 = cf;
  if (cf)
  {
    v9 = CFRetain(cf);
    v8 = sub_100004BD8(v9);
    if (v8)
    {
      v10 = CFAutorelease(v8);
      v8 = sub_100004BD8(v10);
    }
  }

  v11 = CFStringCreateWithFormat(0, 0, v7, v8);
  v13 = v11;
  *a3 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(a3, v11);
  sub_100004348(&v13);
  sub_100004348(&v14);
  return sub_100004348(&cf);
}

void sub_10000D34C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_100004348(v2);
  sub_100004348(va);
  sub_100004348(va1);
  sub_100004348(va2);
  _Unwind_Resume(a1);
}

const void **TCFURLInfo::LocalizedStringWithKey@<X0>(const __CFString *this@<X0>, CFTypeRef *a2@<X8>)
{
  v5 = DesktopServicesCFBundle();
  v6 = CFBundleCopyLocalizedString(v5, this, this, 0);
  v8 = v6;
  *a2 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(a2, v6);
  return sub_100004348(&v8);
}

void sub_10000D3FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(v2);
  sub_100004348(va);
  _Unwind_Resume(a1);
}

uint64_t TFileDescriptor::Close(TFileDescriptor *this)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    return 4294967242;
  }

  result = close(v2);
  if (result)
  {
    result = TCFURLInfo::TranslatePOSIXError(result, 0, v4);
  }

  if (result)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  *(this + 2) = v5;
  return result;
}

uint64_t TFileDescriptor::Open(uint64_t a1, char *a2, int a3, int a4, CFFileSecurityRef fileSec, int a6, int a7, int a8)
{
  if (a2 && *(a1 + 8) <= 0)
  {
    fileSeca = 0;
    mode = 0;
    switch(a3)
    {
      case 1:
        v16 = 0;
        v15 = 0;
        break;
      case 3:
        v15 = 0;
        v16 = 1;
        break;
      case 2:
        mode = 420;
        if (a8)
        {
          if (!fileSec)
          {
            v15 = 0;
            fileSeca = 0;
            goto LABEL_21;
          }

          Copy = CFFileSecurityCreateCopy(0, fileSec);
          fileSeca = Copy;
          if (Copy)
          {
            if (CFFileSecurityClearProperties(Copy, 2uLL))
            {
              CFFileSecurityGetMode(fileSeca, &mode);
              mode |= 0x80u;
              if (CFFileSecuritySetMode(fileSeca, mode))
              {
                v9 = 0;
              }

              else
              {
                v9 = 4294967246;
              }
            }

            else
            {
              v9 = 4294967246;
            }

            v17 = _CFFileSecurityGetFilesec();
            if (v9)
            {
              goto LABEL_43;
            }

            v15 = v17;
            goto LABEL_21;
          }
        }

        v15 = 0;
LABEL_21:
        v16 = 2561;
        break;
      default:
        abort();
    }

    if (a7)
    {
      v18 = v16 | 0x24;
    }

    else
    {
      v18 = v16;
    }

    *(a1 + 8) = -1;
    if (a4 == 2)
    {
      v19 = 256;
    }

    else
    {
      v19 = (a4 == 1) << 29;
    }

    if (v15 && (v20 = openx_np(a2, v18 | v19, v15), *(a1 + 8) = v20, v20 != -1) || (v20 = open(a2, v18 | v19, mode), *(a1 + 8) = v20, v20 != -1))
    {
      if (v20 <= 2)
      {
        v21 = fcntl(v20, 0, 3);
        if (v21 != -1)
        {
          close(*(a1 + 8));
          *(a1 + 8) = v21;
        }
      }

      goto LABEL_34;
    }

    v23 = *__error();
    if (!v23 || (v9 = 4294967242, v23 != 1) && v23 != 35 && (v9 = TCFURLInfo::TranslatePOSIXError(v23, 0, v24), !v9))
    {
LABEL_34:
      if (a6)
      {
        fcntl(*(a1 + 8), 48, 1);
        fcntl(*(a1 + 8), 76, 1);
      }

      v9 = 0;
LABEL_37:
      sub_10000E894(&fileSeca);
      return v9;
    }

LABEL_43:
    v25 = *(a1 + 8);
    if (v25 >= 1)
    {
      close(v25);
    }

    *(a1 + 8) = 0;
    goto LABEL_37;
  }

  return 4294967242;
}

void sub_10000D6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000E894(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::CreateFile(TCFURLInfo **a1, id *a2, uint64_t a3, __CFFileSecurity *a4, __CFFileSecurity *a5)
{
  TCFURLInfo::FileSystemRepresentation(*a1, 1, &theString);
  if (CFStringGetLength(theString))
  {
    Copy = CFFileSecurityCreateCopy(0, a4);
    v13 = Copy;
    if (Copy)
    {
      CFFileSecurityClearProperties(Copy, 2uLL);
    }

    v12 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    File = TCFURLInfo::CreateFile(&theString, a2, v13, a5, &v12, v9);
    if (!File)
    {
      sub_100004D50();
    }

    sub_100004348(&v12);
    sub_10000E894(&v13);
  }

  else
  {
    File = 4294959236;
  }

  sub_100004348(&theString);
  return File;
}

void sub_10000D7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_100004348(va);
  sub_10000E894(va1);
  sub_100004348(va2);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::CreateFile(id *this, id *a2, const TString *a3, __CFFileSecurity *a4, CFTypeRef *a5, TString *a6)
{
  v7 = a4;
  TString::SetStringRefAsImmutable(a5, 0);
  if (!a3)
  {
    return 4294959224;
  }

  TString::Str(this, &v25);
  v24 = 1;
  LOWORD(__p) = 47;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v25;
  }

  else
  {
    v12 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v26[0] = v12;
  v26[1] = size;
  v13 = sub_10000E778(v26, &__p, 1uLL);
  v14 = v13;
  if ((v24 & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_12:
    v24 = 1;
    LOWORD(__p) = 47;
    std::string::append(&v25, &__p, 1uLL);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  operator delete(__p);
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_14:
  TString::Str(a2, &__p);
  if (v24 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v24 >= 0)
  {
    v17 = v24;
  }

  else
  {
    v17 = v23;
  }

  std::string::append(&v25, p_p, v17);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0 && v25.__r_.__value_.__l.__size_ > 0x400)
  {
    v15 = 4294959236;
LABEL_37:
    operator delete(v25.__r_.__value_.__l.__data_);
    return v15;
  }

  TString::SetStringRefAsImmutable(a5, 0);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v25;
  }

  else
  {
    v18 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v25.__r_.__value_.__l.__size_;
  }

  TString::SetFromUTF8(a5, v18, v19);
  __p = 0;
  LODWORD(v23) = 0;
  BYTE4(v23) = 0;
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v25;
  }

  else
  {
    v20 = v25.__r_.__value_.__r.__words[0];
  }

  v15 = TFileDescriptor::Open(&__p, v20, 2, 2, a3, 0, 0, v7);
  if (!v15)
  {
    v15 = TFileDescriptor::Close(&__p);
  }

  TFileDescriptor::~TFileDescriptor(&__p);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

  return v15;
}

void sub_10000DA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TCFURLInfo::CreateDirectory(TCFURLInfo **a1, id *a2, uint64_t a3, __CFFileSecurity *a4, __CFFileSecurity *a5)
{
  TCFURLInfo::Path(a1, &theString);
  if (CFStringGetLength(theString))
  {
    Copy = CFFileSecurityCreateCopy(0, a4);
    v13 = Copy;
    if (Copy)
    {
      CFFileSecurityClearProperties(Copy, 2uLL);
    }

    v12 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    Directory = TCFURLInfo::CreateDirectory(&theString, a2, v13, a5, &v12, v9);
    if (!Directory)
    {
      sub_100004D50();
    }

    sub_100004348(&v12);
    sub_10000E894(&v13);
  }

  else
  {
    Directory = 4294959236;
  }

  sub_100004348(&theString);
  return Directory;
}

void sub_10000DB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_100004348(va);
  sub_10000E894(va1);
  sub_100004348(va2);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::CreateDirectory(id *this, id *a2, const TString *a3, __CFFileSecurity *a4, CFTypeRef *a5, TString *a6)
{
  v7 = a4;
  TString::SetStringRefAsImmutable(a5, 0);
  if (!a3)
  {
    return 4294959224;
  }

  TString::Str(this, &v26);
  v24 = 1;
  LOWORD(__p[0]) = 47;
  v25 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetFromUTF8(&v25, __p, 1);
  v11 = TString::EndsWith(this, &v25);
  sub_100004348(&v25);
  if ((v24 & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_7:
    v24 = 1;
    LOWORD(__p[0]) = 47;
    std::string::append(&v26, __p, 1uLL);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_9;
  }

  operator delete(__p[0]);
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_9:
  TString::Str(a2, __p);
  if (v24 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v24 >= 0)
  {
    v14 = v24;
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(&v26, v13, v14);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0 && v26.__r_.__value_.__l.__size_ > 0x3FF)
  {
    v12 = 4294959236;
LABEL_37:
    operator delete(v26.__r_.__value_.__l.__data_);
    return v12;
  }

  TString::SetStringRefAsImmutable(a5, 0);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v26;
  }

  else
  {
    v15 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  TString::SetFromUTF8(a5, v15, size);
  Filesec = _CFFileSecurityGetFilesec();
  if (Filesec && v7)
  {
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v26;
    }

    else
    {
      v18 = v26.__r_.__value_.__r.__words[0];
    }

    v19 = mkdirx_np(v18, Filesec);
  }

  else
  {
    LOWORD(__p[0]) = 0;
    CFFileSecurityGetMode(a3, __p);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    v19 = mkdir(v21, __p[0]);
  }

  v12 = TCFURLInfo::TranslatePOSIXError(v19, 0, v20);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

  return v12;
}

void sub_10000DDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TCFURLInfo::CreateLockDirectory(uint64_t a1, TCFURLInfo **a2, __CFString **a3)
{
  if (a3)
  {
    v4 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v4, *a3);
  }

  else
  {
    TCFURLInfo::Name(*a2, &v4);
  }

  sub_100004D50();
}

void sub_10000E030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004CB0(a4);
  }

  sub_100004348(va);
  _Unwind_Resume(a1);
}

void TCFURLInfo::CreateLockFile(uint64_t a1, TCFURLInfo **a2, __CFString **a3)
{
  if (a3)
  {
    v4 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v4, *a3);
  }

  else
  {
    TCFURLInfo::Name(*a2, &v4);
  }

  sub_100004D50();
}

void sub_10000E268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_10000E8FC(&a15);
  if (a17)
  {
    sub_100004CB0(a17);
  }

  sub_100004348((v17 - 56));
  _Unwind_Resume(a1);
}

void TFileDescriptor::~TFileDescriptor(TFileDescriptor *this)
{
  if (*(this + 2) >= 1)
  {
    TFileDescriptor::Close(this);
  }
}

BOOL PrefsBool(const __CFString *a1, _BOOL8 a2)
{
  v3 = CFPreferencesCopyAppValue(a1, @"com.apple.desktopservices");
  theString1 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 == CFStringGetTypeID())
    {
      if (CFStringCompare(theString1, @"true", 1uLL) == kCFCompareEqualTo || CFStringCompare(theString1, @"1", 1uLL) == kCFCompareEqualTo)
      {
        a2 = 1;
        goto LABEL_14;
      }

      v5 = CFStringCompare(theString1, @"YES", 1uLL) == kCFCompareEqualTo;
    }

    else
    {
      v6 = CFGetTypeID(theString1);
      if (v6 == CFBooleanGetTypeID())
      {
        a2 = CFEqual(theString1, kCFBooleanTrue) != 0;
        goto LABEL_14;
      }

      v7 = CFGetTypeID(theString1);
      if (v7 != CFNumberGetTypeID())
      {
        goto LABEL_14;
      }

      v5 = CFEqual(theString1, &off_10002DE90) == 0;
    }

    a2 = v5;
  }

LABEL_14:
  sub_100009504(&theString1);
  return a2;
}

void sub_10000E410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100009504(va);
  _Unwind_Resume(a1);
}

Class sub_10000E428()
{
  if (qword_100031830 || (qword_100031830 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2)) != 0)
  {
    Class = objc_getClass("BRContainer");
    qword_100031838 = Class;
    off_1000315F8 = sub_10000E4AC;
  }

  else
  {
    Class = qword_100031838;
  }

  return Class;
}

id sub_10000E4B8(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_100007060();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_10000E65C(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_10000E5AC(a1, v13);
    v7 = a1[1];
    result = sub_10000E6A4(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_10000E598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000E6A4(va);
  _Unwind_Resume(a1);
}

void sub_10000E5AC(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_10000E65C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100004C48();
}

uint64_t sub_10000E6A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000E6F8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10000E7BC(void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    sub_100009538("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

const void **sub_10000E82C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000E860(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000E894(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000E8C8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000E8FC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000E930(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void **sub_10000E964(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    acl_free(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_10000E99C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ICloudDriveFPFSEnabled(void)
{
  if ((atomic_load_explicit(&qword_100031848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031848))
  {
    byte_100031840 = UseFileProviderFramework();
    __cxa_guard_release(&qword_100031848);
  }

  return byte_100031840;
}

uint64_t *LocalStorageDomainID(void)
{
  if ((atomic_load_explicit(&qword_100031858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031858))
  {
    sub_1000051F8("com.apple.FileProvider.LocalStorage", 35, &qword_100031850);
    __cxa_guard_release(&qword_100031858);
  }

  return &qword_100031850;
}

BOOL IsExternalDeviceDomainID(CFStringRef *this)
{
  if ((atomic_load_explicit(&qword_100031868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031868))
  {
    sub_1000051F8("com.apple.filesystems.UserFS.FileProvider", 41, &qword_100031860);
    __cxa_guard_release(&qword_100031868);
  }

  if ((atomic_load_explicit(&qword_100031878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031878))
  {
    sub_1000051F8("com.apple.SMBClientProvider.FileProvider", 40, &qword_100031870);
    __cxa_guard_release(&qword_100031878);
  }

  if (TString::BeginsWith(this, &qword_100031860))
  {
    return 1;
  }

  return TString::BeginsWith(this, &qword_100031870);
}

BOOL IsDataSeparatedDomainID(CFStringRef *this)
{
  if ((atomic_load_explicit(&qword_100031888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031888))
  {
    sub_1000051F8("com.apple.CloudDocs.iCloudDriveFileProviderManaged/", 51, &qword_100031880);
    __cxa_guard_release(&qword_100031888);
  }

  return TString::BeginsWith(this, &qword_100031880);
}

BOOL IsMainICloudDriveDomainID(CFStringRef *this)
{
  if ((atomic_load_explicit(&qword_100031898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100031898))
  {
    sub_1000051F8("com.apple.CloudDocs.iCloudDriveFileProvider/", 44, &qword_100031890);
    __cxa_guard_release(&qword_100031898);
  }

  return TString::BeginsWith(this, &qword_100031890);
}

BOOL IsICloudDriveDomainID(CFStringRef *a1)
{
  if (!ICloudDriveFPFSEnabled())
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_1000318A8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1000318A8))
    {
      sub_1000051F8("com.apple.CloudDocs.iCloudDriveFileProvider", 43, &qword_1000318A0);
      __cxa_guard_release(&qword_1000318A8);
    }
  }

  return TString::BeginsWith(a1, &qword_1000318A0);
}

void FileProviderErrorDomain(CFTypeRef *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1000318B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000318B8))
  {
    v2 = qword_1000318C8;
    if (!qword_1000318C8)
    {
      v2 = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 2);
      qword_1000318C8 = v2;
    }

    v3 = dlsym(v2, "NSFileProviderErrorDomain");
    qword_1000318B0 = sub_10000EF48(v3, @"com.apple.FileProvider");
    __cxa_guard_release(&qword_1000318B8);
  }

  v4 = qword_1000318B0;
  *a1 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(a1, v4);
}

id sub_10000EF48(id *a1, id a2)
{
  if (a1)
  {
    a2 = *a1;
  }

  return a2;
}

Class sub_10000EF58()
{
  if (qword_1000318C8 || (qword_1000318C8 = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 2)) != 0)
  {
    Class = objc_getClass("FPProviderDomain");
    qword_1000318C0 = Class;
    off_100031608 = sub_10000EFDC;
  }

  else
  {
    Class = qword_1000318C0;
  }

  return Class;
}

os_log_t LogObj(int a1)
{
  if ((a1 - 1) > 8)
  {
    v2 = "ArchiveService";
  }

  else
  {
    v2 = off_10002CFE8[a1 - 1];
  }

  v3 = os_log_create("com.apple.DesktopServices", v2);

  return v3;
}

int main(int argc, const char **argv, const char **envp)
{
  unsetenv("TMPDIR");
  _set_user_dir_suffix();
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_10000F978(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || (v5 = *(a1 + 32), v6 = *(a1 + 40), v14 = 0, v7 = [v5 openArchiveFile:v6 error:&v14], v3 = v14, v7 == -1))
  {
    v4 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 48) URL];
    v10 = [*(a1 + 56) mutableCopy];
    v13 = v3;
    v4 = [v8 archivedItemDescriptorsForFD:v7 url:v9 passphrases:v10 progress:0 formats:1 destinationFolderURL:0 error:&v13];
    v11 = v13;

    v3 = v11;
  }

  if (*(a1 + 72) == 1)
  {
    v12 = [*(a1 + 48) URL];
    [v12 stopAccessingSecurityScopedResource];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10000FF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, const void *a16, uint64_t a17, const void *a18, const void *a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27)
{
  sub_100004348(&a16);
  sub_100004348(&a18);
  sub_10001BE18(&a19);

  if (a25)
  {
    sub_100004CB0(a25);
  }

  if (a27)
  {
    sub_100004CB0(a27);
  }

  if (*(v32 - 120) == 1)
  {
    sub_100004348((v32 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000103E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_100004348(va);
  _Unwind_Resume(a1);
}

void sub_100010B84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  v8 = [a2 url];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 URLByAppendingPathComponent:v11];

    v9 = v10;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100010EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a30, 8);

  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100010F2C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v49 = a2;
  v9 = a3;
  v10 = a4;
  v48 = v10;
  if (*(a1 + 88) == 1)
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) url];
    v13 = v9;
    v14 = *(a1 + 80);
    v54 = 0;
    v15 = [v11 _createArchivePlaceholderForItems:v49 inFolder:v12 compressionFormat:v14 error:&v54];
    v16 = v54;
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      (*(*(a1 + 56) + 16))();
      v35 = 0;
      goto LABEL_24;
    }

    v10 = v48;
  }

  v19 = sub_10001149C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000114E0;
  block[3] = &unk_10002D088;
  v20 = v10;
  v21 = v9;
  v22 = v20;
  v23 = *(a1 + 64);
  v51 = v20;
  v53 = v23;
  v13 = v21;
  v24 = v21;
  v52 = v24;
  dispatch_async(v19, block);

  v25 = [v24 URLByAppendingPathComponent:@"archive-XXXXXX"];
  v26 = v25;
  v27 = strdup([v25 fileSystemRepresentation]);
  if (!v27)
  {
    v41 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:v25 debugDescription:@"Couldn't create temporary folder name"];
    v42 = v41;
    if (a5)
    {
      v43 = v41;
      *a5 = v42;
    }

    v44 = LogObj(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v42;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Couldn't create temporary folder name: %@", buf, 0xCu);
    }

    v35 = 0;
    goto LABEL_23;
  }

  v28 = v27;
  v29 = mkstemp(v27);
  v30 = +[NSFileManager defaultManager];
  v31 = [v30 stringWithFileSystemRepresentation:v28 length:strlen(v28)];
  v32 = [NSURL fileURLWithPath:v31];
  v33 = *(*(a1 + 72) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;

  if ((v29 & 0x80000000) != 0)
  {
    v45 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:*(*(*(a1 + 72) + 8) + 40) debugDescription:@"Couldn't create temporary folder"];
    v37 = v45;
    if (a5)
    {
      v46 = v45;
      *a5 = v37;
    }

    v39 = LogObj(0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 138412290;
    v56 = v37;
    v40 = "Couldn't create temporary folder: %@";
    goto LABEL_20;
  }

  fchmod(v29, 0x1A4u);
  v35 = [*(a1 + 32) _archiveFromItemURLs:v49 passphrase:*(a1 + 48) addToKeychain:*(a1 + 89) compressionFormat:*(a1 + 80) archiveURL:*(*(*(a1 + 72) + 8) + 40) fd:v29 progress:v22 error:a5];
  if (close(v29) == -1)
  {
    v36 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:*(*(*(a1 + 72) + 8) + 40) debugDescription:@"Couldn't close temporary folder fd"];
    v37 = v36;
    if (a5)
    {
      v38 = v36;
      *a5 = v37;
    }

    v39 = LogObj(0);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 138412290;
    v56 = v37;
    v40 = "Couldn't close temporary folder fd: %@";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v40, buf, 0xCu);
LABEL_21:

    v35 = 0;
  }

  free(v28);
LABEL_23:

  v16 = v51;
LABEL_24:

  return v35;
}

void sub_1000113E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  free(v20);

  _Unwind_Resume(a1);
}

id sub_10001149C()
{
  if (qword_1000318D8 != -1)
  {
    sub_10001C244();
  }

  v1 = qword_1000318D0;

  return v1;
}

id sub_1000114E0(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if (!*(v2 + 40))
  {
    v2 = a1;
  }

  [*(a1 + 32) setFileURL:*(v2 + 40)];
  v3 = *(a1 + 32);

  return [v3 publish];
}

void sub_100011534(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1[6] + 8) + 40);
  if (v6)
  {
    if (v7)
    {
      v8 = +[NSFileManager defaultManager];
      v9 = *(*(a1[6] + 8) + 40);
      v38 = 0;
      v10 = [v8 removeItemAtURL:v9 error:&v38];
      v11 = v38;

      if ((v10 & 1) == 0)
      {
        v12 = LogObj(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = SanitizedURL(*(*(a1[6] + 8) + 40));
          *buf = 138543618;
          v40 = v13;
          v41 = 2112;
          v42 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to remove archive temp destination folder %{public}@: %@", buf, 0x16u);
        }
      }
    }

    (*(a1[5] + 16))();
  }

  else if (v7)
  {
    v14 = +[NSFileManager defaultManager];
    v15 = *(*(a1[6] + 8) + 40);
    v16 = *(*(a1[7] + 8) + 40);
    v36 = 0;
    v37 = 0;
    v17 = [v14 replaceItemAtURL:v15 withItemAtURL:v16 backupItemName:0 options:1 resultingItemURL:&v37 error:&v36];
    v18 = v37;
    v19 = v36;

    if ((v17 & 1) == 0)
    {
      v20 = LogObj(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = SanitizedURL(*(*(a1[7] + 8) + 40));
        v22 = SanitizedURL(*(*(a1[6] + 8) + 40));
        *buf = 138543874;
        v40 = v21;
        v41 = 2114;
        v42 = v22;
        v43 = 2112;
        v44 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ into place at %{public}@  %@", buf, 0x20u);
      }
    }

    v23 = +[NSFileManager defaultManager];
    v35 = 0;
    v24 = [v23 removeItemAtURL:v5 error:&v35];
    v25 = v35;

    if ((v24 & 1) == 0)
    {
      v26 = LogObj(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = SanitizedURL(v5);
        *buf = 138543618;
        v40 = v27;
        v41 = 2112;
        v42 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to remove archive temp destination folder %{public}@: %@", buf, 0x16u);
      }
    }

    v30 = a1 + 4;
    v28 = a1[4];
    v29 = v30[1];
    v31 = [v18 lastPathComponent];
    (*(v29 + 16))(v29, v28, v31, 0);
  }

  else
  {
    v32 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v5 readonly:0];
    v33 = a1[5];
    v34 = [*(*(a1[7] + 8) + 40) lastPathComponent];
    (*(v33 + 16))(v33, v32, v34, 0);
  }
}

void sub_100011B18(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 url];
  (*(v5 + 16))(v5, v6, v7);
}

unint64_t sub_1000120EC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v72 = a3;
  v10 = a4;
  v11 = *(a1 + 32);
  v12 = [v9 firstObject];
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1 + 40);
  v16 = *(*(*(a1 + 72) + 8) + 40);
  v86 = 0;
  v17 = [v15 openArchiveFile:v16 error:&v86];
  v71 = v86;
  *(*(*(a1 + 80) + 8) + 24) = v17;
  if (*(*(*(a1 + 80) + 8) + 24) != -1)
  {
    v18 = *(a1 + 48);
    if (v18)
    {
      v70 = [v18 mutableCopy];
    }

    else
    {
      v70 = objc_opt_new();
    }

    if ((*(a1 + 128) & 1) == 0 && !v11)
    {
      goto LABEL_32;
    }

    context = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = *(*(*(a1 + 80) + 8) + 24);
    v23 = *(*(*(a1 + 72) + 8) + 40);
    v24 = *(a1 + 120);
    v85 = 0;
    v25 = [v21 archivedItemDescriptorsForFD:v22 url:v23 passphrases:v70 progress:v10 formats:v24 destinationFolderURL:v72 error:&v85];
    v26 = v85;
    if ([v25 count])
    {
      v84 = 0;
      v68 = v25;
      if (*(a1 + 128) == 1)
      {
        v27 = *(a1 + 40);
        v28 = *(*(*(a1 + 72) + 8) + 40);
        v29 = [*(a1 + 56) url];
        v30 = *(*(a1 + 96) + 8);
        v83 = v26;
        v31 = [v27 _createUnarchivePlaceholderForDescriptors:v68 describingArchive:v28 inFolder:v29 hasMultipleTopLevelItems:v30 + 24 placeholderIsFolder:&v84 error:&v83];
        v32 = v83;

        v33 = *(*(a1 + 88) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = v31;

        v35 = *(*(*(a1 + 88) + 8) + 40) != 0;
        v26 = v32;
        v25 = v68;
        if (!v11)
        {
          goto LABEL_30;
        }

LABEL_16:
        if (v35)
        {
          if (*(a1 + 128) == 1)
          {
            v36 = [*(*(*(a1 + 88) + 8) + 40) lastPathComponent];
            v67 = [UTTypeFolder identifier];
            if (*(*(*(a1 + 96) + 8) + 24))
            {
              v37 = v36;
            }

            else
            {
              v38 = UTTypeItem;
              v39 = *(*(*(a1 + 88) + 8) + 40);
              v82 = 0;
              v81 = 0;
              v37 = v36;
              v40 = [v39 getResourceValue:&v82 forKey:NSURLContentTypeKey error:&v81];
              v64 = v38;
              v65 = v82;

              v66 = v81;
              if (v40)
              {
                v41 = v65;
              }

              else
              {
                v42 = LogObj(0);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = SanitizedURL(*(*(*(a1 + 88) + 8) + 40));
                  *buf = 138543618;
                  v88 = v43;
                  v89 = 2112;
                  v90 = v66;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to type for placeholder %{public}@: %@", buf, 0x16u);
                }

                v44 = v64;
                if (v84)
                {
                  v44 = UTTypeFolder;
                }

                v41 = v44;
              }

              v45 = [(UTType *)v41 identifier];

              v67 = v45;
              v25 = v68;
            }
          }

          else
          {
            v37 = 0;
            v67 = 0;
          }

          v46 = *(a1 + 32);
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_1000128A4;
          v78[3] = &unk_10002D128;
          v47 = v25;
          v48 = *(a1 + 72);
          v79 = v47;
          v80 = v48;
          v49 = [v46 remoteObjectProxyWithErrorHandler:v78];
          [v49 receiveArchivedItemsDescriptors:v47 placeholderName:v37 placeholderTypeIdentifier:v67];

          v25 = v68;
        }

        goto LABEL_30;
      }

      v35 = 1;
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v35 = 0;
    }

LABEL_30:

    objc_autoreleasePoolPop(context);
    if (!v35)
    {
      if (a5)
      {
        v62 = v26;
        *a5 = v26;
      }

      v20 = v26 == 0;
      goto LABEL_41;
    }

LABEL_32:
    v50 = sub_10001149C();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000129B8;
    block[3] = &unk_10002D088;
    v51 = v10;
    v52 = *(a1 + 88);
    v75 = v51;
    v77 = v52;
    v53 = v72;
    v76 = v53;
    dispatch_async(v50, block);

    objc_storeStrong((*(*(a1 + 104) + 8) + 40), a4);
    v54 = *(a1 + 40);
    v55 = *(*(*(a1 + 80) + 8) + 24);
    v56 = *(*(*(a1 + 72) + 8) + 40);
    v73 = 0;
    v57 = [v54 _quarantineDataFromArchiveFD:v55 url:v56 error:&v73];
    v58 = v73;
    v59 = *(*(a1 + 112) + 8);
    v60 = *(v59 + 40);
    *(v59 + 40) = v57;

    if (*(*(*(a1 + 112) + 8) + 40))
    {
      v20 = [*(a1 + 40) _unarchiveFromArchiveFD:*(*(*(a1 + 80) + 8) + 24) url:*(*(*(a1 + 72) + 8) + 40) passphrases:v70 addToKeychain:*(a1 + 129) destinationURL:v53 formats:*(a1 + 120) progress:v51 readItemGroup:*(a1 + 64) error:a5];
    }

    else if (a5)
    {
      v61 = v58;
      v20 = 0;
      *a5 = v58;
    }

    else
    {
      v20 = 0;
    }

    v26 = v75;
LABEL_41:

    goto LABEL_42;
  }

  if (a5)
  {
    v19 = v71;
    v20 = 0;
    *a5 = v71;
  }

  else
  {
    v20 = 0;
  }

LABEL_42:

  return v20;
}

void sub_1000128A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogObj(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = SanitizedURL(*(*(*(a1 + 40) + 8) + 40));
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to send archived items info %{public}@ for itemURL %{public}@: %@", &v7, 0x20u);
  }
}

id sub_1000129B8(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if (!*(v2 + 40))
  {
    v2 = a1;
  }

  [*(a1 + 32) setFileURL:*(v2 + 40)];
  v3 = *(a1 + 32);

  return [v3 publish];
}

void sub_100012A0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"com.apple.desktopservices.ArchiveService"])
  {
    v8 = [v6 code];

    if (v8 == -1000)
    {
      v9 = sub_10001149C();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100013860;
      block[3] = &unk_10002D178;
      block[4] = *(a1 + 56);
      dispatch_async(v9, block);
    }
  }

  else
  {
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    if (v5)
    {
      v25 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v5];
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_54;
  }

  if (!v6)
  {
    v26 = +[NSFileManager defaultManager];
    v96 = 0;
    v27 = [v26 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:1 error:&v96];
    v28 = v96;

    if (v27 && [v27 count])
    {
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        v29 = +[NSFileManager defaultManager];
        v30 = *(*(*(a1 + 64) + 8) + 40);
        v93 = v28;
        v94 = 0;
        v31 = [v29 replaceItemAtURL:v30 withItemAtURL:v5 backupItemName:0 options:1 resultingItemURL:&v94 error:&v93];
        v32 = v94;
        v33 = v93;

        if (v31)
        {
          v34 = 0;
          goto LABEL_49;
        }

        v38 = LogObj(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v56 = SanitizedURL(v5);
          v57 = SanitizedURL(*(*(*(a1 + 64) + 8) + 40));
          buf.st_dev = 138543874;
          *&buf.st_mode = v56;
          WORD2(buf.st_ino) = 2114;
          *(&buf.st_ino + 6) = v57;
          HIWORD(buf.st_gid) = 2112;
          *&buf.st_rdev = v33;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ into place at %{public}@  %@", &buf, 0x20u);
        }
      }

      else
      {
        v38 = [v27 objectAtIndexedSubscript:0];
        v47 = v38;
        v48 = [v38 fileSystemRepresentation];
        acl = 0;
        if (lstat(v48, &buf) || (buf.st_mode & 0xF000) != 0x4000)
        {
          v79 = 0;
          v81 = 0;
        }

        else
        {
          v81 = (buf.st_mode & 0x80) == 0 && chmod(v48, buf.st_mode & 0xF7F | 0x80) == 0;
          v91 = 0;
          v90[1] = 0;
          v68 = [NSObject getResourceValue:v38 forKey:"getResourceValue:forKey:error:" error:&v91];
          v69 = v91;
          v80 = 0;
          if (v68)
          {
            v76 = [v69 BOOLValue];
          }

          else
          {
            v70 = LogObj(0);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *v105 = 138412290;
              *&v105[4] = v80;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed fetching NSURLVolumeIsLocalKey for source: %@", v105, 0xCu);
            }

            v76 = 1;
          }

          v71 = *(*(*(a1 + 64) + 8) + 40);
          v89 = 0;
          v90[0] = 0;
          v72 = [v71 getResourceValue:v90 forKey:NSURLVolumeIsLocalKey error:&v89];
          v77 = v90[0];

          v78 = v89;
          if (v72)
          {
            v73 = [v77 BOOLValue];
          }

          else
          {
            v74 = LogObj(0);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              *v105 = 138412290;
              *&v105[4] = v78;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Failed fetching NSURLVolumeIsLocalKey for target: %@", v105, 0xCu);
            }

            v73 = 1;
          }

          if ((v76 & v73) != 1)
          {
            goto LABEL_73;
          }

          file = acl_get_file(v48, ACL_TYPE_EXTENDED);
          if (acl)
          {
            acl_free(acl);
          }

          acl = file;
          if (file)
          {
            *v105 = acl_init(1);
            v79 = acl_set_file(v48, ACL_TYPE_EXTENDED, *v105) == 0;
            sub_10000E964(v105);
          }

          else
          {
LABEL_73:
            v79 = 0;
          }
        }

        v49 = +[NSFileManager defaultManager];
        v50 = *(*(*(a1 + 64) + 8) + 40);
        v87 = v28;
        v88 = 0;
        v51 = [v49 replaceItemAtURL:v50 withItemAtURL:v38 backupItemName:0 options:1 resultingItemURL:&v88 error:&v87];
        v32 = v88;
        v33 = v87;

        if (v51)
        {
          if (v81)
          {
            v52 = v32;
            v53 = [v32 fileSystemRepresentation];
            chmod(v53, buf.st_mode & 0xF7F);
          }

          if (v79)
          {
            v54 = v32;
            v55 = [v32 fileSystemRepresentation];
            acl_set_file(v55, ACL_TYPE_EXTENDED, acl);
          }
        }

        else
        {
          v58 = LogObj(0);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v59 = SanitizedURL(v5);
            v60 = SanitizedURL(*(*(*(a1 + 64) + 8) + 40));
            *v105 = 138543874;
            *&v105[4] = v59;
            v106 = 2114;
            v107 = v60;
            v108 = 2112;
            v109 = v33;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ into place at %{public}@  %@", v105, 0x20u);
          }
        }

        sub_10000E964(&acl);
      }
    }

    else
    {
      v35 = +[NSFileManager defaultManager];
      v36 = *(*(*(a1 + 64) + 8) + 40);
      v95 = 0;
      v37 = [v35 removeItemAtURL:v36 error:&v95];
      v38 = v95;

      if ((v37 & 1) == 0)
      {
        v39 = LogObj(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = SanitizedURL(*(*(*(a1 + 64) + 8) + 40));
          buf.st_dev = 138543618;
          *&buf.st_mode = v40;
          WORD2(buf.st_ino) = 2112;
          *(&buf.st_ino + 6) = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to remove placeholder %{public}@: %@", &buf, 0x16u);
        }
      }

      if (v27)
      {
        v41 = *(a1 + 80);
        v112[0] = *(*(v41 + 8) + 40);
        v111[0] = NSURLErrorKey;
        v111[1] = NSLocalizedDescriptionKey;
        TCFURLInfo::LocalizedStringWithFileName(@"ArchiveIsEmpty", *(*(v41 + 8) + 40), &buf);
        v42 = *&buf.st_dev;
        v112[1] = v42;
        v43 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:2];

        sub_100004348(&buf);
        v44 = [NSError errorWithDomain:@"com.apple.desktopservices.ArchiveService" code:-1001 userInfo:v43];

        v28 = v44;
      }

      v45 = LogObj(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = SanitizedURL(*(*(*(a1 + 80) + 8) + 40));
        buf.st_dev = 138543618;
        *&buf.st_mode = v46;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v28;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Nothing was unarchived from %{public}@: %@", &buf, 0x16u);
      }

      v32 = 0;
      v33 = v28;
    }

    v61 = +[NSFileManager defaultManager];
    v86 = 0;
    v62 = [v61 removeItemAtURL:v5 error:&v86];
    v34 = v86;

    if ((v62 & 1) == 0)
    {
      v63 = LogObj(0);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = SanitizedURL(v5);
        buf.st_dev = 138543618;
        *&buf.st_mode = v64;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v34;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to remove unarchive temp destination folder %{public}@: %@", &buf, 0x16u);
      }
    }

LABEL_49:
    if (!v33)
    {
      v25 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v32];
      if (v25)
      {
        v33 = 0;
        goto LABEL_53;
      }

      v103 = NSURLErrorKey;
      v104 = v32;
      v67 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v33 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:v67];
    }

    v25 = 0;
LABEL_53:
    v6 = v33;

LABEL_54:
    close(*(*(*(a1 + 72) + 8) + 24));
    v65 = v6;
    v17 = *(a1 + 32);
    v18 = *(*(a1 + 40) + 24);
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_1000138C8;
    v82[3] = &unk_10002D1A0;
    v19 = &v85;
    v66 = *(a1 + 48);
    v84 = v65;
    v85 = v66;
    v21 = &v83;
    v22 = &v84;
    v83 = v25;
    v13 = v25;
    v23 = v65;
    v24 = v82;
    goto LABEL_55;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = *(*(*(a1 + 64) + 8) + 40);
  v101 = 0;
  v12 = [v10 removeItemAtURL:v11 error:&v101];
  v13 = v101;

  if ((v12 & 1) == 0)
  {
    v14 = LogObj(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = SanitizedURL(*(*(*(a1 + 64) + 8) + 40));
      buf.st_dev = 138543618;
      *&buf.st_mode = v15;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to remove placeholder %{public}@: %@", &buf, 0x16u);
    }
  }

  close(*(*(*(a1 + 72) + 8) + 24));
  v16 = v6;
  v17 = *(a1 + 32);
  v18 = *(*(a1 + 40) + 24);
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_1000138B0;
  v97[3] = &unk_10002D1A0;
  v19 = &v100;
  v20 = *(a1 + 48);
  v99 = v16;
  v100 = v20;
  v21 = &v98;
  v22 = &v99;
  v98 = 0;
  v23 = v16;
  v24 = v97;
LABEL_55:
  dispatch_group_notify(v17, v18, v24);
}

void sub_100013664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  sub_10000E964(&a49);

  sub_10000E964(&a29);
  _Unwind_Resume(a1);
}

id sub_100013860(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) totalUnitCount];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 setCompletedUnitCount:v2];
}

void sub_100014980(uint64_t a1)
{
  [*(a1 + 32) setTotalUnitCount:-1];
  [*(a1 + 32) setKind:NSProgressKindFile];
  v2 = *(a1 + 48);
  if (!v2)
  {
    v3 = &NSProgressFileOperationKindArchiving;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = &NSProgressFileOperationKindUnarchiving;
LABEL_5:
    [*(a1 + 32) setFileOperationKind:*v3];
  }

  [*(a1 + 32) setCancellable:1];
  objc_initWeak(&location, *(a1 + 40));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014A98;
  v4[3] = &unk_10002D1F0;
  objc_copyWeak(&v5, &location);
  [*(a1 + 32) setCancellationHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100014A7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100014A98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

void sub_100014AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 88);
    v33 = 0;
    v10 = [v7 _temporaryURLAppropriateForURL:v8 calledFromLegacyAPI:v9 error:&v33];
    v6 = v33;
    if (!v10)
    {
      v11 = LogObj(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create temporary dir: %@", buf, 0xCu);
      }

      v22 = 0;
      goto LABEL_27;
    }

    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = *(a1 + 32);
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v13)
    {
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v29 + 1) + 8 * i) URL];
          [v11 addObject:v16];
        }

        v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v13);
    }

    v17 = *(a1 + 80);
    v18 = *(a1 + 64);
    v28[1] = v6;
    v19 = (*(v17 + 16))();
    v20 = v6;

    if ([*(a1 + 40) _isCancelled])
    {
      v21 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    }

    else
    {
      if (v19)
      {
        v22 = v10;
LABEL_26:
        [*(a1 + 64) unpublish];
        v6 = v20;
LABEL_27:

        [*(a1 + 40) _cleanupWithResult:v22 error:v6 securityScopedURLs:*(a1 + 48) completionHandler:*(a1 + 72)];
        goto LABEL_28;
      }

      v21 = v20;
    }

    v23 = +[NSFileManager defaultManager];
    v28[0] = 0;
    v24 = [v23 removeItemAtURL:v10 error:v28];
    v25 = v28[0];

    if ((v24 & 1) == 0)
    {
      v26 = LogObj(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = SanitizedURL(v10);
        *buf = 138543618;
        v36 = v27;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to remove unarchive destination folder %{public}@: %@", buf, 0x16u);
      }
    }

    v22 = 0;
    v20 = v21;
    goto LABEL_26;
  }

  v4 = LogObj(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v36 = v5;
    v37 = 2112;
    v38 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to perform coordinated read with intents %{public}@ with error: %@", buf, 0x16u);
  }

  [*(a1 + 40) _cleanupWithResult:0 error:v3 securityScopedURLs:*(a1 + 48) completionHandler:*(a1 + 72)];
  v6 = v3;
LABEL_28:
}

uint64_t sub_100017128(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = [NSString stringWithUTF8String:a3];
  v13 = [v11 stringByAppendingPathComponent:v12];

  if (a2 == 11)
  {
    if (!lstat([v13 fileSystemRepresentation], &v27))
    {
      v15 = v27.st_mode & 0xF000;
      if (v15 != 0x4000 && v15 != 0x8000 && v15 != 40960)
      {
        v14 = 1;
        goto LABEL_20;
      }
    }

LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  if (a2 != 31)
  {
    goto LABEL_19;
  }

  if (([v9 _isCancelled] & 1) == 0)
  {
    if (!lstat([v13 fileSystemRepresentation], &v27) && (v27.st_mode & 0xF000) == 0x8000)
    {
      v16 = [v10 totalUnitCount];
      if (a4)
      {
        v17 = v16;
        if ((v16 & 0x8000000000000000) == 0)
        {
          v18 = a4[1];
          v23 = *a4;
          v19 = *(a1 + 24) + v18;
          v20 = v19 - [v10 completedUnitCount];
          if (v20 > 9999999 || v17 * 0.1 <= v20)
          {
            v21 = sub_10001149C();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10001BEB0;
            block[3] = &unk_10002D440;
            v25 = v10;
            v26 = v19;
            dispatch_async(v21, block);
          }

          if (v18 == v23)
          {
            *(a1 + 24) += v23;
          }
        }
      }
    }

    goto LABEL_19;
  }

  v14 = 0xFFFFFFFFLL;
LABEL_20:

  objc_autoreleasePoolPop(v8);
  return v14;
}

id sub_1000173E4(uint64_t a1)
{
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

void sub_100017898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose((v37 - 160), 8);

  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017940(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [v7 path];
  v11 = [v8 _replacePathComponent:v9 withComponent:&stru_10002D580 inFilePath:v10];

  *(*(*(a1 + 72) + 8) + 24) = lstat([v7 fileSystemRepresentation], &v29);
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v12 = [NSError ds_errorWithPOSIXCode:*__error() itemURL:*(a1 + 48) debugDescription:@"Couldn't get info from the file"];
    v13 = v12;
    if (a4)
    {
      v14 = v12;
      *a4 = v13;
    }

    v15 = LogObj(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Couldn't get info from the file: %@", buf, 0xCu);
    }
  }

  else
  {
    v18 = *(a1 + 88);
    if (v18 != 3 || ([*(a1 + 32) _writeXattrEntryForURL:v7 compressionFormat:3 archive:*(a1 + 96) entry:*(a1 + 104) archiveURL:*(a1 + 56) commonParentPath:*(a1 + 40) stat:&v29 error:a4] & 1) != 0)
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 96);
      v21 = *(a1 + 104);
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100017C18;
      v26 = &unk_10002D2B8;
      v28 = *(a1 + 80);
      v27 = *(a1 + 64);
      v22 = [v19 _archiveItemURL:v7 itemArchivePath:v11 isDirectory:a3 archive:v20 entry:v21 stat:&v29 writeProgressHandler:&v23 error:a4];

      if (v22)
      {
        if (v18 == 3 || [*(a1 + 32) _writeXattrEntryForURL:v7 compressionFormat:*(a1 + 88) archive:*(a1 + 96) entry:*(a1 + 104) archiveURL:*(a1 + 56) commonParentPath:*(a1 + 40) stat:&v29 error:a4, v23, v24, v25, v26])
        {
          v16 = 1;
          goto LABEL_8;
        }
      }
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

void sub_100017C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001149C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017CD0;
  block[3] = &unk_10002D290;
  v9 = a2;
  v6 = *(a1 + 32);
  v5 = v6;
  v8 = v6;
  dispatch_async(v4, block);
}

id sub_100017CD0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) += *(a1 + 48);
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) totalUnitCount];
  v4 = *(*(a1 + 40) + 8);
  if (result * 0.1 <= v2 || *(v4 + 24) >= 10000000)
  {
    result = [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + *(v4 + 24)}];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

void sub_1000181B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10001822C(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    a4 = 1;
  }

  else
  {
    v13 = 0;
    v9 = [v7 getResourceValue:&v13 forKey:NSURLFileSizeKey error:a4];
    v10 = v13;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *(*(*(a1 + 32) + 8) + 24) += [v10 longLongValue];
      a4 = 1;
    }

    else if (a4)
    {
      if (!*a4)
      {
        v14 = NSURLErrorKey;
        v15 = v8;
        v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        *a4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v11];
      }

      a4 = 0;
    }
  }

  return a4;
}

AAByteStream *sub_1000188B8(AAByteStream *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    v3 = result[1];
    if (v2)
    {
      updated = AEAEncryptionOutputStreamCloseAndUpdateContext(v3, v2);
    }

    else
    {
      updated = AAByteStreamClose(v3);
    }

    v5 = updated;
    v6 = AAByteStreamClose(v1[2]);
    v7 = AAByteStreamClose(*v1);
    free(v1);
    return ((v7 | v6 | v5) >> 31);
  }

  return result;
}

void sub_100018930(AAByteStream_impl **a1)
{
  v1 = *a1;
  if (v1)
  {
    AAByteStreamCancel(v1);
  }
}

ssize_t sub_100018940(AAByteStream_impl **a1, const void *a2, size_t a3)
{
  v4 = a1[2];
  if (v4)
  {
    return AAByteStreamWrite(v4, a2, a3);
  }

  v4 = a1[1];
  if (v4)
  {
    return AAByteStreamWrite(v4, a2, a3);
  }

  v4 = *a1;
  if (*a1)
  {
    return AAByteStreamWrite(v4, a2, a3);
  }

  else
  {
    return -1;
  }
}

ssize_t sub_100019478(AAByteStream_impl **a1, void *a2, size_t a3)
{
  v4 = a1[2];
  if (v4)
  {
    return AAByteStreamRead(v4, a2, a3);
  }

  v4 = a1[1];
  if (v4)
  {
    return AAByteStreamRead(v4, a2, a3);
  }

  v4 = *a1;
  if (*a1)
  {
    return AAByteStreamRead(v4, a2, a3);
  }

  else
  {
    return -1;
  }
}

void sub_100019C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&a30);
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak(&a36);

  _Block_object_dispose((v40 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100019D34(void *a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1[4] + 8) + 40));
  v3 = dispatch_block_testcancel(WeakRetained);

  if (!v3)
  {
    while (1)
    {
      v4 = objc_loadWeakRetained((*(a1[5] + 8) + 40));
      v5 = [v4 _isCancelled];

      if (v5)
      {
        break;
      }

      [NSThread sleepForTimeInterval:0.1];
      v6 = objc_loadWeakRetained((*(a1[4] + 8) + 40));
      v7 = dispatch_block_testcancel(v6);

      if (v7)
      {
        return;
      }
    }

    v8 = *(*(a1[6] + 8) + 24);

    AAByteStreamCancel(v8);
  }
}

id sub_100019E28(uint64_t a1)
{
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

void sub_10001A7B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = archive_filter_bytes();
  v4 = sub_10001149C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C094;
  v6[3] = &unk_10002D440;
  v7 = v2;
  v8 = v3;
  v5 = v2;
  dispatch_async(v4, v6);
}

id sub_10001A888(uint64_t a1)
{
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

void sub_10001AE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v35 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_10001AF2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  if ([v16 hasPrefix:@"._"] & 1) != 0 || (objc_msgSend(v16, "containsString:", @"__MACOSX"))
  {
    goto LABEL_12;
  }

  v7 = objc_opt_new();
  [v7 setFilePath:v16];
  if (a3 != 68)
  {
    if (a3 == 70)
    {
      v8 = [NSNumber numberWithUnsignedLong:a4];
      [v7 setFileSize:v8];
    }

    goto LABEL_8;
  }

  v9 = [v16 pathExtension];
  v10 = [v9 isEqualToString:&stru_10002D580];

  if (!v10)
  {
LABEL_8:
    v12 = [v16 pathExtension];
    v11 = [UTType typeWithFilenameExtension:v12 conformingToType:UTTypeItem];

    v13 = [v11 identifier];
    [v7 setTypeIdentifier:v13];

    goto LABEL_9;
  }

  v11 = [UTTypeFolder identifier];
  [v7 setTypeIdentifier:v11];
LABEL_9:

  v14 = [v7 typeIdentifier];

  if (!v14)
  {
    v15 = [UTTypeItem identifier];
    [v7 setTypeIdentifier:v15];
  }

  [*(a1 + 32) addObject:v7];

LABEL_12:
}

uint64_t sub_10001B154(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void *a5)
{
  if (archive_entry_size_is_set())
  {
    v8 = archive_entry_size();
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) _sanitizedPathWithCString:a4 length:strlen(a4)];
  if ([v9 hasPrefix:@"._"] & 1) != 0 || (objc_msgSend(v9, "containsString:", @"__MACOSX"))
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_opt_new();
    v10 = [NSNumber numberWithLong:v8];
    v12 = archive_entry_filetype();
    if (archive_entry_size_is_set())
    {
      [v11 setFileSize:v10];
    }

    [v11 setFilePath:v9];
    if (v12 == 0x4000 && ([v9 pathExtension], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", &stru_10002D580), v13, v14))
    {
      v15 = [UTTypeFolder identifier];
      [v11 setTypeIdentifier:v15];
    }

    else
    {
      v16 = [v9 pathExtension];
      v15 = [UTType typeWithFilenameExtension:v16 conformingToType:UTTypeItem];

      v17 = [v15 identifier];
      [v11 setTypeIdentifier:v17];
    }

    v18 = [v11 typeIdentifier];

    if (!v18)
    {
      v19 = [UTTypeItem identifier];
      [v11 setTypeIdentifier:v19];
    }

    [*(a1 + 40) addObject:v11];
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v20 = 1;
    goto LABEL_24;
  }

  has_encrypted_entries = archive_read_has_encrypted_entries();
  v20 = 1;
  switch(has_encrypted_entries)
  {
    case -2:
LABEL_22:
      *(*(*(a1 + 56) + 8) + 24) = 1;
      break;
    case 0:
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = 0;
      break;
    case 1:
      *(*(*(a1 + 64) + 8) + 24) = 1;
      if ([*(a1 + 48) count])
      {
        goto LABEL_22;
      }

      if (a5)
      {
        [*(a1 + 32) _archiveDecryptionError];
        *a5 = v20 = 0;
      }

      else
      {
        v20 = 0;
      }

      break;
  }

LABEL_24:

  return v20;
}

uint64_t sub_10001B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (archive_read_data_block() == 1)
  {
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

  v9 = [*(a1 + 32) _errorForArchive:a2 itemURL:*(a1 + 40)];
  v10 = v9;
  result = 0;
  *a5 = v9;
  return result;
}

id sub_10001BBA0(uint64_t a1)
{
  v2 = [*(a1 + 40) integerValue];
  v3 = *(a1 + 32);

  return [v3 setTotalUnitCount:v2];
}

id sub_10001BBE0(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, void *a5)
{
  v10 = [*(a1 + 32) _sanitizedPathWithCString:__s length:strlen(__s)];
  if ([v10 length])
  {
    v11 = [*(a1 + 40) stringByAppendingPathComponent:v10];
    v12 = [*(a1 + 32) _unarchiveEntryAtPath:objc_msgSend(v11 entry:"fileSystemRepresentation") fromArchive:a3 archiveURL:a2 destinationURL:*(a1 + 48) progress:*(a1 + 56) error:{*(a1 + 64), a5}];
  }

  else
  {
    v13 = LogObj(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      TString::TString(&v16, __s);
      v14 = SanitizedPath(&v16);
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not create path from path name: %{public}@", buf, 0xCu);
      sub_100004348(&v16);
    }

    if (a5)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void sub_10001BD8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004348(va);

  _Unwind_Resume(a1);
}

const void **sub_10001BE18(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10001BE4C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("archive-service-queue-progress-reporting-queue", v3);
  v2 = qword_1000318D0;
  qword_1000318D0 = v1;
}

AAByteStream *sub_10001BEB8(AAByteStream *result)
{
  if (result)
  {
    v1 = result;
    v2 = AAByteStreamClose(*result);
    free(v1);
    return (v2 >> 31);
  }

  return result;
}

void sub_10001BEF8(AAByteStream_impl **a1)
{
  v1 = *a1;
  if (v1)
  {
    AAByteStreamCancel(v1);
  }
}

ssize_t sub_10001BF08(AAByteStream_impl **a1, void *a2, size_t a3, off_t a4)
{
  v4 = *a1;
  if (v4)
  {
    return AAByteStreamPRead(v4, a2, a3, a4);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10001BF1C(uint64_t a1, void *a2, size_t a3)
{
  v4 = *a1;
  if (!v4)
  {
    return -1;
  }

  v5 = AAByteStreamRead(v4, a2, a3);
  *(a1 + 8) += v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = sub_10001149C();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001C000;
    v11[3] = &unk_10002D440;
    v12 = v6;
    v13 = v7;
    v9 = v6;
    dispatch_async(v8, v11);
  }

  return v5;
}

unint64_t sub_10001C000(uint64_t a1)
{
  result = [*(a1 + 32) totalUnitCount];
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = *(a1 + 40);
    result = [*(a1 + 32) completedUnitCount];
    if ((v4 - result) > 9999999 || v3 * 0.1 <= (v4 - result))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      return [v5 setCompletedUnitCount:v6];
    }
  }

  return result;
}

unint64_t sub_10001C094(uint64_t a1)
{
  result = [*(a1 + 32) totalUnitCount];
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = *(a1 + 40);
    result = [*(a1 + 32) completedUnitCount];
    if ((v4 - result) > 9999999 || v3 * 0.1 <= (v4 - result))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      return [v5 setCompletedUnitCount:v6];
    }
  }

  return result;
}

BOOL IsRedactionEnabled(void)
{
  if ((atomic_load_explicit(&qword_1000318E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000318E8))
  {
    byte_1000318E0 = os_variant_has_internal_ui();
    __cxa_guard_release(&qword_1000318E8);
  }

  if (byte_1000318E0 != 1)
  {
    return 1;
  }

  if (TCFURLInfo::gDSHelperRunning)
  {
    return 0;
  }

  return PrefsBool(@"EnableRedactionOnInternal", 0);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}