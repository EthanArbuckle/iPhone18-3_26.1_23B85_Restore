__CFString *SanitizedStr(TString *a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (!CFStringGetLength(a1->fString.fRef) || !IsRedactionEnabled())
  {
    goto LABEL_6;
  }

  {
    operator"" _t("/", 1, &v9);
    operator"" _t("Volumes", 7, &v10);
    operator"" _t("Data", 4, &v11);
    operator"" _t("Users", 5, &v12);
    operator"" _t("Applications", 12, &v13);
    operator"" _t("Utilities", 9, &v14);
    operator"" _t("System", 6, &v15);
    operator"" _t("Network", 7, &v16);
    operator"" _t("Desktop", 7, &v17);
    operator"" _t("Documents", 9, &v18);
    operator"" _t("Downloads", 9, &v19);
    operator"" _t("Library", 7, &v20);
    operator"" _t("Movies", 6, &v21);
    operator"" _t("Music", 5, &v22);
    operator"" _t("Pictures", 8, &v23);
    operator"" _t("Public", 6, &v24);
    operator"" _t("Drop Box", 8, &v25);
    operator"" _t("Finder", 6, &v26);
    operator"" _t("Finder.app", 10, &v27);
    operator"" _t("Containers", 10, &v28);
    operator"" _t("Shared", 6, &v29);
    operator"" _t("Mobile Documents", 16, &v30);
    operator"" _t(".DS_Store", 9, &v31);
    operator"" _t(".localized", 10, &v32);
    operator"" _t(".Trash", 6, &v33);
    operator"" _t(".Trashes", 8, &v34);
    operator"" _t(".nofollow", 9, &v35);
    operator"" _t("private", 7, &v36);
    operator"" _t("var", 3, &v37);
    operator"" _t("Icon?", 5, &v38);
    operator"" _t(".VolumeIcon.icns", 16, &v39);
    operator"" _t("AppGroup", 8, &v40);
    operator"" _t("File Provider Storage", 21, &v41);
    operator"" _t("CloudStorage", 12, &v42);
    operator"" _t("mobile", 6, v43);
    std::unordered_set<TString>::unordered_set(IsCommonName(TString const&)::sCommonNames, &v9, 35);
    for (i = 272; i != -8; i -= 8)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((&v9 + i));
    }
  }

  {
    operator"" _t("com~apple~", 10, &v9);
    operator"" _t("iCloud~com~apple~", 17, &v10);
    operator"" _t("FruitBasket-", 12, &v11);
    IsCommonName(TString const&)::sPartialCommonNames = 0;
    unk_1ECFF4660 = 0;
    qword_1ECFF4668 = 0;
    std::vector<TString>::__init_with_size[abi:ne200100]<TString const*,TString const*>(&IsCommonName(TString const&)::sPartialCommonNames, &v9, &v12, 3uLL);
    for (j = 16; j != -8; j -= 8)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((&v9 + j));
    }
  }

  if (!std::__hash_table<TString,std::hash<TString>,std::equal_to<TString>,std::allocator<TString>>::find<TString>(IsCommonName(TString const&)::sCommonNames, a1))
  {
    v5 = IsCommonName(TString const&)::sPartialCommonNames;
    v6 = unk_1ECFF4660;
    while (v5 != v6)
    {
      if (TString::BeginsWith(a1, v5))
      {
        goto LABEL_6;
      }

      ++v5;
    }

    RedactedStr(a1, &v9);
    v2 = v9;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9);
  }

  else
  {
LABEL_6:
    v2 = a1->fString.fRef;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1E5688DD0(_Unwind_Exception *a1)
{
  v3 = -24;
  do
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1--);
    v3 += 8;
  }

  while (v3);
  _Unwind_Resume(a1);
}

__FSEventStream *CreateFSEventStreamForPath(TString *a1, void (__cdecl *a2)(ConstFSEventStreamRef, void *, size_t, void *, const FSEventStreamEventFlags *, const FSEventStreamEventId *), const __CFArray *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  pathsToWatch = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  CFArraySetValueAtIndex(pathsToWatch, 0, a1);
  v7 = FSEventStreamCreate(v6, a2, 0, pathsToWatch, 0xFFFFFFFFFFFFFFFFLL, 0.5, 2u);
  *buf = CFStringCreateWithBytesNoCopy(v6, "/", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  cf1 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf1, *buf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = &stru_1F5F42870;
  }

  v9 = CFEqual(cf1, v8);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
  if (!v9)
  {
    v10 = LogObj(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      cf1 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&cf1, a1);
      v11 = SanitizedPath(&cf1);
      *buf = 138543618;
      *&buf[4] = v11;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_DEFAULT, "Creating FSEvent Stream for %{public}@ = %p", buf, 0x16u);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
    }
  }

  if (a3)
  {
    FSEventStreamSetExclusionPaths(v7, a3);
  }

  FSEventStreamSetDispatchQueue(v7, gSystemNotificationGCDQueue);
  FSEventStreamStart(v7);
  TAutoRef<__CFArray *,TRetainReleasePolicy<__CFArray *>>::~TAutoRef(&pathsToWatch);
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1E5689084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  TAutoRef<__CFArray *,TRetainReleasePolicy<__CFArray *>>::~TAutoRef(&a10);
  _Unwind_Resume(a1);
}

const void **Description@<X0>(const void **result@<X0>, TString *a2@<X8>)
{
  switch(result)
  {
    case 1:
      v16 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "computer", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v16;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v16);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 2:
      v11 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "virtual folder", 14, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v11;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v11);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 3:
      v13 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "virtual alias", 13, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v13;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v13);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 4:
      v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "virtual document", 16, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v6;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v6);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 5:
      v18 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "query alias", 11, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v18;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v18);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 6:
      v20 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "query hits container", 20, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v20;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v20);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 7:
      v14 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "query hit", 9, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v14;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v14);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 8:
    case 9:
    case 10:
    case 13:
    case 14:
    case 15:
      __break(1u);
      return result;
    case 11:
      v7 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "desktop", 7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v7;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v7);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 12:
      v24 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "trash", 5, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v24;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v24);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 16:
      v12 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "unresolved alias", 16, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v12;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v12);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 17:
      v25 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Devices", 7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v25;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v25);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 18:
      v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Places", 6, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v5;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v5);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 19:
      v15 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Sidebar Top", 11, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v15;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v15);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 20:
      v27 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Saved Searches", 14, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v27;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v27);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 21:
      v9 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Published folders", 17, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v9;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v9);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 22:
      v29 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Tags", 4, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v29;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v29);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 23:
      v17 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "All Tags", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v17;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v17);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 24:
      v22 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "All Cloud Libraries", 19, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v22;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v22);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 25:
      v28 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "All Data Separated Cloud Libraries", 34, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v28;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v28);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 26:
      v19 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Cloud Library", 13, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v19;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v19);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 27:
      v21 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "File Provider Domains Container", 31, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v21;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v21);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 28:
      v26 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "File Provider Domain", 20, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v26;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v26);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 29:
      v30 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "File Provider v2 Item", 21, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v30;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v30);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 30:
      v10 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "iTunes devices container", 24, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v10;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v10);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 31:
      v8 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "iTunes device", 13, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v8;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v8);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 32:
      v33 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Network nearby", 14, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v33;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v33);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 33:
      v4 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Network sidebar", 15, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v4;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v4);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 34:
      v31 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "AirDrop", 7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v31;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v31);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 35:
      v32 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Recent Documents", 16, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v32;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v32);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    case 36:
      v23 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "iCloudDrive", 11, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v23;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v23);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
    default:
      v3 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "non virtual", 11, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v34 = v3;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v3);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34);
  }
}

void sub_1E5689C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<TString>(uint64_t a1, TString **a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 9:
      if (v2 == 9)
      {
        return 4294959246;
      }

      goto LABEL_51;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_51;
      }

      v9 = *a1;
      if (v9 != a2)
      {
        TString::SetStringRefAsImmutable(v9, *a2);
      }

      return 0;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_51;
      }

      v3 = *a1;
      v4 = RetainCF<__CFString const*>(a2);
      if (v4)
      {
        v5 = CFAutorelease(v4);
        v6 = static_cf_cast<__CFString const*,void const*>(v5);
      }

      else
      {
        v6 = 0;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v3, v6);
      return 0;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_51;
      }

      v7 = *a1;

      return TPropertyValue::SetAs<TString>(v7, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_51;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_51:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

void sub_1E568A0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  os_unfair_lock_unlock(v12 + 27);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

const void **TNode::Path@<X0>(TNode *this@<X0>, CFTypeRef *a2@<X8>)
{
  TNode::GetPath(this, cf);
  *a2 = cf[0];
  cf[0] = 0;
  CFRetain(&stru_1F5F42870);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  cf[0] = &stru_1F5F42870;
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(cf);
}

const void **TNode::GetPath@<X0>(TNode *this@<X0>, uint64_t a2@<X8>)
{
  v6.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  FullPOSIXPathDetails = TNode::GetFullPOSIXPathDetails(this, &v6);
  fstd::optional_err<TString,int>::optional_err(a2, &v6, &FullPOSIXPathDetails);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
}

void sub_1E568A1AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t fstd::optional_err<TString,int>::optional_err(uint64_t a1, TString **a2, _DWORD *a3)
{
  *a1 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *a2);
  *(a1 + 8) = *a3;
  return a1;
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[30]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E568A328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ConcatenateWithSeparator<std::vector<TString>>(uint64_t *a1@<X0>, const TString *a2@<X1>, TString *a3@<X8>)
{
  memset(v5, 0, sizeof(v5));
  std::vector<TString>::__init_with_size[abi:ne200100]<TString*,TString*>(v5, *a1, a1[1], (a1[1] - *a1) >> 3);
  ConcatenateWithSeparatorAs<TString,std::vector<TString>,TString>(v5, a2, a3);
  v6 = v5;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1E568A3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void FormatDetails(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  memset(&v20, 0, sizeof(v20));
  v19 = *a1;
  *(&v18.__r_.__value_.__s + 23) = 3;
  LODWORD(v18.__r_.__value_.__l.__data_) = 8223525;
  v3 = *(&v19 + 1);
  v4 = v19;
  if (*(&v19 + 1))
  {
    while (2)
    {
      v5 = &v4[v3];
      v6 = v4;
LABEL_3:
      v7 = 0;
      while (*v6 != v18.__r_.__value_.__s.__data_[v7])
      {
        if (++v7 == 3)
        {
          if (++v6 != v5)
          {
            goto LABEL_3;
          }

          goto LABEL_25;
        }
      }

      if (v6 != v5)
      {
        v8 = v6 - v4;
        if (v6 - v4 != -1)
        {
          std::string::append(&v20, v4, v6 - v4);
          if (*(&v19 + 1) < v8)
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          *&v19 = v19 + v8;
          *(&v19 + 1) -= v8;
          ParseFormat(&v19, &v18);
          size = v18.__r_.__value_.__l.__size_;
          if (!v18.__r_.__value_.__l.__size_)
          {
            operator new();
          }

          if (LODWORD(v18.__r_.__value_.__r.__words[2]) != 7)
          {
            operator new();
          }

          DeEscapeFormatFragment(&v18, __p);
          if ((v17 & 0x80u) == 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          if ((v17 & 0x80u) == 0)
          {
            v11 = v17;
          }

          else
          {
            v11 = __p[1];
          }

          std::string::append(&v20, v10, v11);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(&v19 + 1) < size)
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          v4 = (v19 + size);
          *(&v18.__r_.__value_.__s + 23) = 3;
          LODWORD(v18.__r_.__value_.__l.__data_) = 8223525;
          v3 = *(&v19 + 1) - size;
          *&v19 = v4;
          *(&v19 + 1) = v3;
          if (v3)
          {
            continue;
          }
        }
      }

      break;
    }

LABEL_25:
    v2 = a2;
  }

  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&v18.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&v18, v4, v3);
  }

  v18.__r_.__value_.__s.__data_[v3] = 0;
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v20;
  }

  else
  {
    v12 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v20.__r_.__value_.__l.__size_;
  }

  v14 = std::string::insert(&v18, 0, v12, v13);
  *v2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_1E568A9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  v5 = (a1 + 112);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  v6 = (a1 + 120);
  *(a1 + 128) = -1;
  if (v4 && [v4 count] && (v7 = *(a2 + 128), v7 < objc_msgSend(*a1, "count")))
  {
    v8 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 112) = v8;
    *(a1 + 104) = **(a1 + 24);
    *v6 = 0;
    *(a1 + 128) = 0;
    v9 = *(a2 + 128);
    if (v9 >= v8)
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (v11 >= *v5 - 1)
          {
            *v5 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
            v11 = -1;
            *v6 = -1;
          }

          if (*(a1 + 104) != **(a1 + 24))
          {
            objc_enumerationMutation(*a1);
            v11 = *v6;
          }

          v13 = *(a1 + 128) + 1;
          *(a1 + 120) = ++v11;
          *(a1 + 128) = v13;
          ++v12;
        }

        while (*(a2 + 128) > v12);
      }
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v9;
    }
  }

  else
  {
    *v6 = *(a2 + 120);
  }

  return a1;
}

uint64_t algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(v6, a1);
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(v5, a2);
  v3 = std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>>(v6, v5);

  return v3;
}

uint64_t std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(&obj, a1);
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(v7, a2);
  v3 = 0;
  while (obj != v7[0] || v13 != v7[16])
  {
    v4 = v12;
    if (v12 >= v11 - 1)
    {
      v5 = [obj countByEnumeratingWithState:v9 objects:v10 count:4];
      v4 = -1;
      v11 = v5;
      v12 = -1;
    }

    if (v10[4] != *v9[2])
    {
      objc_enumerationMutation(obj);
      v4 = v12;
    }

    v12 = v4 + 1;
    ++v13;
    ++v3;
  }

  return v3;
}

void type_traits_extras::CopyAsHelper<std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>::MakeWithCapacity(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  v4 = 0;
  std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::reserve(&v3, a1);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1E568AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t IDContainerIteratorAdaptor<NSMutableArray<FPProviderDomain *>>::NSForwardIterator<NSMutableArray<FPProviderDomain *>>::NSForwardIterator(uint64_t a1, void *a2)
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

uint64_t **std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const,std::pair<FINode * {__weak},unsigned long>> const&>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
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
    std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__construct_node_hash<std::pair<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const,std::pair<FINode * {__weak},unsigned long>> const&>();
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

  if ((IsEqual(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E568B170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E568B210(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>,std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>,0ul,1ul,2ul>(uint64_t a1, uint64_t a2)
{
  std::__optional_storage_base<FPItem * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<FPItem * {__strong},false>>(a1, a2);
  std::__optional_storage_base<FPItem * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<FPItem * {__strong},false>>(a1 + 16, (a2 + 16));
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(&obj, a1);
  IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(v7, a2);
  v3 = 0;
  while (obj != v7[0] || v13 != v7[16])
  {
    v4 = v12;
    if (v12 >= v11 - 1)
    {
      v5 = [obj countByEnumeratingWithState:v9 objects:v10 count:4];
      v4 = -1;
      v11 = v5;
      v12 = -1;
    }

    if (v10[4] != *v9[2])
    {
      objc_enumerationMutation(obj);
      v4 = v12;
    }

    v12 = v4 + 1;
    ++v13;
    ++v3;
  }

  return v3;
}

void std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }
}

void std::function<void ()(__CFURL const*,FPItem *,NSError *)>::operator()(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &v9, &v8, &v7);
}

uint64_t std::__function::__value_func<void ()(__CFURL const*,FPItem *,NSError *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void **std::pair<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 32) == 1)
  {
  }

  if (*(a1 + 16) == 1)
  {
  }

  return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(a1);
}

BOOL GetPropertyRecord(unsigned int a1, uint64_t a2)
{
  {
    operator new();
  }

  v8 = a1;
  v9 = 0u;
  v10 = 0u;
  v4 = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::find<Property>(GetPropertyRecord(Property,TPropertyRecord &)::records, &v8);
  if (v4)
  {
    v5 = *(v4 + 1);
    v6 = *(v4 + 2);
    *(a2 + 32) = v4[6];
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return v4 != 0;
}

void sub_1E568B674(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x10A0C40532A5896);
  _Unwind_Resume(a1);
}

TNodeRequest **TRef<OpaqueNodeRequest *,TRetainReleasePolicy<OpaqueNodeRequest *>>::~TRef(TNodeRequest **a1)
{
  v2 = *a1;
  if (v2)
  {
    NodeDisposeRequest(v2);
  }

  return a1;
}

void ColonsToSlashes(const TString *a1@<X0>, TString *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!CFStringGetLength(a1->fString.fRef))
  {
    goto LABEL_13;
  }

  v4 = RetainCF<__CFString const*>(&a1->fString.fRef);
  if (v4)
  {
    v5 = CFAutorelease(v4);
    v4 = static_cf_cast<__CFString const*,void const*>(v5);
  }

  if (!CFStringGetCString(v4, buffer, 1024, 0x8000100u))
  {
    goto LABEL_13;
  }

  v6 = 0;
  for (i = buffer; *i == 58; ++i)
  {
    *i = 47;
    v6 = 1;
LABEL_10:
    ;
  }

  if (*i)
  {
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
LABEL_13:
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, a1->fString.fRef);
    goto LABEL_14;
  }

  v8 = CFStringCreateWithCString(0, buffer, 0x8000100u);
  v10 = v8;
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, v8);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10);
LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E568B818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t TNode::GetFullPOSIXPathDetails(uint64_t a1, TString *a2)
{
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock((v6 + 108));
  v7 = *(v6 + 16);
  v12 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  os_unfair_lock_unlock((v6 + 108));
  v8 = v7;
  v9 = [v8 path];
  if (a2->fString.fRef != v9)
  {
    TString::SetStringRefAsImmutable(a2, v9);
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v12);
  Length = CFStringGetLength(a2->fString.fRef);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (Length)
  {
    return 0;
  }

  else
  {
    return 4294967253;
  }
}

void sub_1E568B938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::Validate(TNode *this, const TNode *a2)
{
  v3 = TNode::WeakValidate(this, a2);
  if (v3)
  {
    return 4294959238;
  }

  v5 = TNode::InfoLock(v3);
  os_unfair_lock_lock(v5);
  v6 = *(this + 2);
  v4 = 4294959238;
  if (v6)
  {
    os_unfair_lock_lock((v6 + 108));
    v7 = *(v6 + 123);
    os_unfair_lock_unlock((v6 + 108));
    v4 = (v7 >> 31) & 0xFFFFE086;
  }

  os_unfair_lock_unlock(v5);
  return v4;
}

{
  if (TNode::WeakValidate(this, a2))
  {
    return 4294959238;
  }

  return TNode::Validate(this, v3);
}

uint64_t TNode::WeakValidate(TNode *this, const TNode *a2)
{
  if (this)
  {
    return 0;
  }

  else
  {
    return 4294959238;
  }
}

void Description(uint64_t a1@<X0>, TString *a2@<X8>)
{
  v2 = a1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if ((v3 & ~v4) == 0)
      {
        break;
      }

      v4 = v4 & ~v3;
      v3 *= 2;
    }

    while (v4);
    v5 = v4 << 32;
  }

  else
  {
    v5 = 0;
    v3 = 1;
  }

  end_iter = bitmask_enum_iterator<NodeRequestOptions>::make_end_iter(a1);
  v8 = v7;
  v9 = v5 | v2;
LABEL_8:
  if ((v9 ^ end_iter) >> 32)
  {
    v10 = 0;
  }

  else
  {
    v10 = v3 == v8;
  }

  v11 = !v10;
  v12 = v3 & HIDWORD(v9);
  while ((v9 != end_iter) | v11 & 1)
  {
    if (v12 >= 0x8000)
    {
      if (v12 >= 0x800000)
      {
        if (v12 > 0x7FFFFFF)
        {
          if (v12 > 0x1FFFFFFF)
          {
            if (v12 == 0x20000000)
            {
              v13 = v21;
              v14 = "kNodeRequestQueryIsLocked";
              if (v21 < v22)
              {
                goto LABEL_127;
              }

LABEL_137:
              v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[26]>(&v20, v14);
              goto LABEL_129;
            }

            if (v12 == 0x40000000)
            {
              v13 = v21;
              v14 = "kNodeRequestReturnCached";
              if (v21 < v22)
              {
                goto LABEL_127;
              }

LABEL_123:
              v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[25]>(&v20, v14);
LABEL_129:
              v21 = v15;
            }
          }

          else
          {
            if (v12 == 0x8000000)
            {
              v13 = v21;
              v14 = "kNodeRequestAllowIO";
              if (v21 < v22)
              {
                goto LABEL_127;
              }

              goto LABEL_119;
            }

            if (v12 == 0x10000000)
            {
              v13 = v21;
              v14 = "kNodeRequestImmediate";
              if (v21 < v22)
              {
                goto LABEL_127;
              }

              goto LABEL_116;
            }
          }
        }

        else if (v12 > 0x1FFFFFF)
        {
          if (v12 == 0x2000000)
          {
            v13 = v21;
            v14 = "kNodeRequestUnused2";
            if (v21 < v22)
            {
              goto LABEL_127;
            }

LABEL_119:
            v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[20]>(&v20, v14);
            goto LABEL_129;
          }

          if (v12 == 0x4000000)
          {
            v13 = v21;
            v14 = "kNodeRequestScavengeProperties";
            if (v21 < v22)
            {
              goto LABEL_127;
            }

            goto LABEL_138;
          }
        }

        else
        {
          if (v12 == 0x800000)
          {
            v13 = v21;
            if (v21 >= v22)
            {
              v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[21]>(&v20, "kNodeRequestOpenSync");
              goto LABEL_129;
            }

            TString::TString(v21, "kNodeRequestOpenSync");
            goto LABEL_128;
          }

          if (v12 == 0x1000000)
          {
            v13 = v21;
            if (v21 >= v22)
            {
              v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[30]>(&v20, "kNodeRequestForceChildrenSync");
              goto LABEL_129;
            }

            TString::TString(v21, "kNodeRequestForceChildrenSync");
            goto LABEL_128;
          }
        }
      }

      else if (v12 >= 0x80000)
      {
        if (v12 >= 0x200000)
        {
          if (v12 == 0x200000)
          {
            v13 = v21;
            v14 = "kNodeRequestProgressSync";
            if (v21 >= v22)
            {
              goto LABEL_123;
            }

LABEL_127:
            TString::TString(v21, v14);
LABEL_128:
            v15 = v13 + 1;
            goto LABEL_129;
          }

          if (v12 == 0x400000)
          {
            v13 = v21;
            v14 = "kNodeRequestDeferredOpenSync";
            if (v21 < v22)
            {
              goto LABEL_127;
            }

            goto LABEL_104;
          }
        }

        else
        {
          if (v12 == 0x80000)
          {
            v13 = v21;
            if (v21 >= v22)
            {
              v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[19]>(&v20, "kNodeSynchSelfOnly");
              goto LABEL_129;
            }

            TString::TString(v21, "kNodeSynchSelfOnly");
            goto LABEL_128;
          }

          if (v12 == 0x100000)
          {
            v13 = v21;
            v14 = "kNodeRequestIncludeICloudInSidebar";
            if (v21 < v22)
            {
              goto LABEL_127;
            }

            goto LABEL_135;
          }
        }
      }

      else if (v12 >= 0x20000)
      {
        if (v12 == 0x20000)
        {
          v13 = v21;
          v14 = "kNodeRequestSuppressResolveInTrash";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

LABEL_135:
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[35]>(&v20, v14);
          goto LABEL_129;
        }

        if (v12 == 0x40000)
        {
          v13 = v21;
          v14 = "kNodeRequestForceSync";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

          goto LABEL_116;
        }
      }

      else
      {
        if (v12 == 0x8000)
        {
          v13 = v21;
          v14 = "kNodeRequestForceExtendedProperty";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

          goto LABEL_132;
        }

        if (v12 == 0x10000)
        {
          v13 = v21;
          v14 = "kNodeRequestDoNotForceChildren";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

LABEL_138:
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[31]>(&v20, v14);
          goto LABEL_129;
        }
      }
    }

    else if (v12 > 127)
    {
      if (v12 > 2047)
      {
        if (v12 >= 0x2000)
        {
          if (v12 == 0x2000)
          {
            v13 = v21;
            v14 = "kNodeRequestSyncNodeIfNotObserved";
            if (v21 < v22)
            {
              goto LABEL_127;
            }

LABEL_132:
            v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[34]>(&v20, v14);
            goto LABEL_129;
          }

          if (v12 == 0x4000)
          {
            v13 = v21;
            v14 = "kNodeRequestIconIgnoreBusyState";
            if (v21 < v22)
            {
              goto LABEL_127;
            }

            goto LABEL_139;
          }
        }

        else
        {
          if (v12 == 2048)
          {
            v13 = v21;
            v14 = "kNodeRequestIconUnbadged";
            if (v21 >= v22)
            {
              goto LABEL_123;
            }

            goto LABEL_127;
          }

          if (v12 == 4096)
          {
            v13 = v21;
            v14 = "kNodeRequestUnused1";
            if (v21 < v22)
            {
              goto LABEL_127;
            }

            goto LABEL_119;
          }
        }
      }

      else if (v12 > 511)
      {
        if (v12 == 512)
        {
          v13 = v21;
          v14 = "kNodeRequestMountSync";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

LABEL_116:
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[22]>(&v20, v14);
          goto LABEL_129;
        }

        if (v12 == 1024)
        {
          v13 = v21;
          v14 = "kNodeRequestFromScripting";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

          goto LABEL_137;
        }
      }

      else
      {
        if (v12 == 128)
        {
          v13 = v21;
          v14 = "kNodeRequestCachedValueOnly";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

LABEL_134:
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[28]>(&v20, v14);
          goto LABEL_129;
        }

        if (v12 == 256)
        {
          v13 = v21;
          v14 = "kNodeSynchChildrenOnly";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

          goto LABEL_133;
        }
      }
    }

    else if (v12 > 7)
    {
      if (v12 > 31)
      {
        if (v12 == 32)
        {
          v13 = v21;
          v14 = "kNodeRequestIconsize256OrSmaller";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

LABEL_136:
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[33]>(&v20, v14);
          goto LABEL_129;
        }

        if (v12 == 64)
        {
          v13 = v21;
          v14 = "kNodeRequestIconsize512OrSmaller";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

          goto LABEL_136;
        }
      }

      else
      {
        if (v12 == 8)
        {
          v13 = v21;
          v14 = "kNodeRequestAliasFollowChain";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

LABEL_104:
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[29]>(&v20, v14);
          goto LABEL_129;
        }

        if (v12 == 16)
        {
          v13 = v21;
          v14 = "kNodeRequestIconsize48OrSmaller";
          if (v21 < v22)
          {
            goto LABEL_127;
          }

LABEL_139:
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[32]>(&v20, v14);
          goto LABEL_129;
        }
      }
    }

    else if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = v21;
        if (v21 >= v22)
        {
          v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[24]>(&v20, "kNodeRequestNoNetworkIO");
          goto LABEL_129;
        }

        TString::TString(v21, "kNodeRequestNoNetworkIO");
        goto LABEL_128;
      }

      if (v12 == 4)
      {
        v13 = v21;
        v14 = "kNodeRequestVisibleItemsOnly";
        if (v21 < v22)
        {
          goto LABEL_127;
        }

        goto LABEL_104;
      }
    }

    else
    {
      if (v12 == 0x80000000)
      {
        v13 = v21;
        v14 = "kNodeRequestForceAsync";
        if (v21 < v22)
        {
          goto LABEL_127;
        }

LABEL_133:
        v15 = std::vector<TString>::__emplace_back_slow_path<char const(&)[23]>(&v20, v14);
        goto LABEL_129;
      }

      if (v12 == 1)
      {
        v13 = v21;
        v14 = "kNodeRequestCanAuthenticate";
        if (v21 < v22)
        {
          goto LABEL_127;
        }

        goto LABEL_134;
      }
    }

    if (HIDWORD(v9))
    {
      v16 = HIDWORD(v9) & ~v3;
      v9 = v9 | (v16 << 32);
      for (v3 *= 2; v16; v3 *= 2)
      {
        if ((v3 & ~v16) == 0)
        {
          break;
        }

        v16 &= ~v3;
        v9 = v9 | (v16 << 32);
      }

      goto LABEL_8;
    }
  }

  memset(v19, 0, sizeof(v19));
  std::vector<TString>::__init_with_size[abi:ne200100]<TString*,TString*>(v19, v20, v21, (v21 - v20) >> 3);
  v17 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], " | ", 3, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v23 = v17;
  v24.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v24, v17);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23);
  ConcatenateWithSeparator<std::vector<TString>>(v19, &v24, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v24.fString.fRef);
  v24.fString.fRef = v19;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24.fString.fRef = &v20;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&v24);
}

void sub_1E568C27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a14;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t bitmask_enum_iterator<NodeRequestOptions>::make_end_iter(uint64_t result)
{
  v1 = 1;
  if (result)
  {
    v2 = result;
    while ((v1 & ~v2) != 0)
    {
      v2 &= ~v1;
      v1 *= 2;
      if (!v2)
      {
        return result;
      }
    }

    do
    {
      v2 &= ~v1;
      v1 *= 2;
    }

    while (v2);
  }

  return result;
}

CFTypeRef *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(int a1, const void **a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      result = std::construct_at[abi:ne200100]<TString,TString,TString*>(a4++, v7++);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v6++);
    }
  }

  return result;
}

uint64_t std::__split_buffer<TString>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[22]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E568C568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__init_with_size[abi:ne200100]<TString*,TString*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TString>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E568C5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

TString *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TString>,TString*,TString*,TString*>(uint64_t a1, TString **a2, TString **a3, TString *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      a4->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a4++, *v6++);
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1E568C680(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *ConcatenateWithSeparatorAs<TString,std::vector<TString>,TString>@<X0>(const TString **a1@<X0>, const TString *a2@<X1>, TString *a3@<X8>)
{
  a3->fString.fRef = &stru_1F5F42870;
  result = CFRetain(&stru_1F5F42870);
  v7 = *a1;
  v8 = a1[1];
  while (v7 != v8)
  {
    if (CFStringGetLength(a3->fString.fRef))
    {
      if (CFStringGetLength(v7->fString.fRef))
      {
        TString::Append(a3, a2);
      }
    }

    result = TString::Append(a3, v7++);
  }

  return result;
}

ISignpostInterval *AutoSignpostInterval_General_OpenSync::AutoSignpostInterval_General_OpenSync<char [34],NSString * {__strong},TString>(ISignpostInterval *a1, void *a2, __CFString *a3, void **a4, TString **a5)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v10 = LogObj(5);
  TString::TString(v15, "OpenSync");
  ISignpostInterval::ISignpostInterval(a1, v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15[0].fString.fRef);

  *(a1 + 14) = ISignpostInterval::MakeSignpostID(a1, a2);
  std::mutex::lock(a1);
  v15[0].fString.fRef = a3;
  v15[1].fString.fRef = strlen(a3);
  FormatDetails<NSString * {__strong},TString>(v15, a4, a5, &__p);
  v11 = *(a1 + 14);
  v15[0].fString.fRef = &unk_1F5F40788;
  v15[1].fString.fRef = a1;
  v15[2].fString.fRef = &__p;
  v15[3].fString.fRef = v15;
  ISignpostInterval::BeginPriv(a1, v11, v15);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(a1);
  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E568C894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15);
  ISignpostInterval::~ISignpostInterval(v15);
  _Unwind_Resume(a1);
}

void FormatDetails<NSString * {__strong},TString>(__int128 *a1@<X0>, void **a2@<X1>, TString **a3@<X2>, std::string *a4@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v12 = *a1;
  do
  {
    v7 = FormatOneDetails<NSString * {__strong}>(&v12, &__p, a2);
    if (v7)
    {
      *(&a4->__r_.__value_.__s + 23) = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v7 == 0x700000000);
  FormatDetails<TString>(&v12, a3, &v11);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::insert(&v11, 0, p_p, size);
  *a4 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E568C9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t FormatOneDetails<NSString * {__strong}>(const std::string::value_type **a1, std::string *this, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_93;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_90;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            HexDescriptionPrinterGlue<NSString * {__strong},void>::dump(&__dst, a3, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            goto LABEL_69;
          }

LABEL_94:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_47;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

LABEL_69:
        std::string::append(this, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_90:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_93:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v25 = __dst.__r_.__value_.__r.__words[0];
LABEL_89:
        operator delete(v25);
        goto LABEL_90;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_94;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        v33.__r_.__value_.__r.__words[0] = v23;
        v33.__r_.__value_.__l.__size_ = v22;
        FormatDetails<NSString * {__strong}>(&v33, &__dst);
        v24 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v24) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &v33);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v33;
        }

        else
        {
          v26 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v33.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v26, v27);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_47:
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          goto LABEL_69;
        }

        DeEscapeFormatFragment(&v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }
  }

  return v12 | v9;
}

void sub_1E568CF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void ParseFormat(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 80;
  v5 = &off_1E877F660;
  do
  {
    v6 = *v5;
    if (std::string_view::starts_with[abi:ne200100](a1, *v5, v5[1]))
    {
      *(a2 + 1) = *(v5 + 1);
      *(a2 + 8) = v5[1];
      *a2 = v6;
      *(a2 + 16) = 0;
      return;
    }

    v5 += 2;
    v4 -= 16;
  }

  while (v4);
  if (std::string_view::starts_with[abi:ne200100](a1, "%x", 2uLL) || std::string_view::starts_with[abi:ne200100](a1, "%p", 2uLL))
  {
    *a2 = *a1;
    *(a2 + 8) = 2;
    v7 = 4;
LABEL_9:
    *(a2 + 16) = v7;
    return;
  }

  if (std::string_view::starts_with[abi:ne200100](a1, "%d", 2uLL))
  {
    *a2 = *a1;
    *(a2 + 8) = 2;
    *(a2 + 16) = 2;
    return;
  }

  if (std::string_view::starts_with[abi:ne200100](a1, "%f", 2uLL))
  {
    *a2 = *a1;
    *(a2 + 8) = 2;
    v7 = 1;
    goto LABEL_9;
  }

  if (std::string_view::starts_with[abi:ne200100](a1, "%-@", 3uLL))
  {
    *a2 = *a1;
    *(a2 + 8) = 3;
LABEL_19:
    v7 = 5;
    goto LABEL_9;
  }

  if (std::string_view::starts_with[abi:ne200100](a1, "%{public}-@", 0xBuLL))
  {
    *a2 = "%{public}-@";
    *(a2 + 8) = 11;
    goto LABEL_19;
  }

  if (std::string_view::starts_with[abi:ne200100](a1, "%%", 2uLL) || std::string_view::starts_with[abi:ne200100](a1, "{{", 2uLL) || std::string_view::starts_with[abi:ne200100](a1, "}}", 2uLL))
  {
    *a2 = *a1;
    *(a2 + 8) = 2;
    v7 = 7;
    goto LABEL_9;
  }

  memset(&v66.__prefix_, 0, 17);
  memset(&v66.__suffix_, 0, 17);
  v66.__ready_ = 0;
  v66.__position_start_ = 0;
  memset(&v66, 0, 41);
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::extendedFormatPattern, "([{][^{}]*[}])(.|\\n)*", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::extendedFormatPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (!v66.__suffix_.matched)
    {
      v8 = *a1;
      begin = v66.__matches_.__begin_;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
      if (v10 <= 1)
      {
        v11 = &v66;
      }

      else
      {
        v11 = v66.__matches_.__begin_;
      }

      if (v11[40] == 1)
      {
        if (v10 <= 1)
        {
          begin = &v66;
        }

        std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, begin[3], begin[4], begin[4] - begin[3]);
        v12 = SHIBYTE(v65);
        if (SHIBYTE(v65) < 0)
        {
          v13 = __p;
          v14 = v64;
          *a2 = v8;
          *(a2 + 8) = v14;
          v15 = 8;
LABEL_141:
          *(a2 + 16) = v15;
LABEL_142:
          operator delete(v13);
          goto LABEL_156;
        }
      }

      else
      {
        v12 = 0;
      }

      *a2 = v8;
      *(a2 + 8) = v12;
      v28 = 8;
      goto LABEL_155;
    }

    v66.__matches_.__end_ = v66.__matches_.__begin_;
  }

  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::hexFormatPattern, "(%([{](public|private)[}])?[+\\- #0]?[0-9]*(hh|h|ll|l|j|z|t)?[xXp])(.|\\n)*", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::hexFormatPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (v66.__suffix_.matched)
    {
      v66.__matches_.__end_ = v66.__matches_.__begin_;
      goto LABEL_32;
    }

    v16 = *a1;
    v17 = v66.__matches_.__begin_;
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
    if (v18 <= 1)
    {
      v19 = &v66;
    }

    else
    {
      v19 = v66.__matches_.__begin_;
    }

    if (v19[40] == 1)
    {
      if (v18 <= 1)
      {
        v17 = &v66;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, v17[3], v17[4], v17[4] - v17[3]);
      v20 = SHIBYTE(v65);
      if (SHIBYTE(v65) < 0)
      {
        v13 = __p;
        v21 = v64;
        *a2 = v16;
        *(a2 + 8) = v21;
        v15 = 4;
        goto LABEL_141;
      }
    }

    else
    {
      v20 = 0;
    }

    *a2 = v16;
    *(a2 + 8) = v20;
    v28 = 4;
    goto LABEL_155;
  }

LABEL_32:
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::floatFormatPattern, "(%([{](public|private)[}])?[+\\- #0]?(([0-9]+)|[\\\\*])?(\\.(([0-9]+)|[\\*]))?(hh|h|ll|l|j|z|t|L)?[fFeEgGaA])(.|\\n)*", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::floatFormatPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (v66.__suffix_.matched)
    {
      v66.__matches_.__end_ = v66.__matches_.__begin_;
      goto LABEL_36;
    }

    v22 = *a1;
    v23 = v66.__matches_.__begin_;
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
    if (v24 <= 1)
    {
      v25 = &v66;
    }

    else
    {
      v25 = v66.__matches_.__begin_;
    }

    if (v25[40] == 1)
    {
      if (v24 <= 1)
      {
        v23 = &v66;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, v23[3], v23[4], v23[4] - v23[3]);
      v26 = SHIBYTE(v65);
      if (SHIBYTE(v65) < 0)
      {
        v13 = __p;
        v27 = v64;
        *a2 = v22;
        *(a2 + 8) = v27;
        v15 = 1;
        goto LABEL_141;
      }
    }

    else
    {
      v26 = 0;
    }

    *a2 = v22;
    *(a2 + 8) = v26;
    v28 = 1;
    goto LABEL_155;
  }

LABEL_36:
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::integralFormatPattern, "(%([{](public|private)[}])?[+\\- #0]?(([0-9]+)|[\\\\*])?(\\.(([0-9]+)|[\\*]))?(hh|h|ll|l|j|z|t|L)?[diu])(.|\\n)*", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::integralFormatPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (v66.__suffix_.matched)
    {
      v66.__matches_.__end_ = v66.__matches_.__begin_;
      goto LABEL_40;
    }

    v29 = *a1;
    v30 = v66.__matches_.__begin_;
    v31 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
    if (v31 <= 1)
    {
      v32 = &v66;
    }

    else
    {
      v32 = v66.__matches_.__begin_;
    }

    if (v32[40] == 1)
    {
      if (v31 <= 1)
      {
        v30 = &v66;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, v30[3], v30[4], v30[4] - v30[3]);
      v33 = SHIBYTE(v65);
      if (SHIBYTE(v65) < 0)
      {
        v13 = __p;
        v34 = v64;
        *a2 = v29;
        *(a2 + 8) = v34;
        v15 = 2;
        goto LABEL_141;
      }
    }

    else
    {
      v33 = 0;
    }

    *a2 = v29;
    *(a2 + 8) = v33;
    v28 = 2;
    goto LABEL_155;
  }

LABEL_40:
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::altIntegralFormatPattern, "(%([{](public|private)[}])?[+\\- #0]?(([0-9]+)|[\\\\*])?(\\.(([0-9]+)|[\\*]))?(hh|h|ll|l|j|z|t|L)?[oc])(.|\\n)*", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::altIntegralFormatPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (v66.__suffix_.matched)
    {
      v66.__matches_.__end_ = v66.__matches_.__begin_;
      goto LABEL_44;
    }

    v35 = *a1;
    v36 = v66.__matches_.__begin_;
    v37 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
    if (v37 <= 1)
    {
      v38 = &v66;
    }

    else
    {
      v38 = v66.__matches_.__begin_;
    }

    if (v38[40] == 1)
    {
      if (v37 <= 1)
      {
        v36 = &v66;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, v36[3], v36[4], v36[4] - v36[3]);
      v39 = SHIBYTE(v65);
      if (SHIBYTE(v65) < 0)
      {
        v13 = __p;
        v40 = v64;
        *a2 = v35;
        *(a2 + 8) = v40;
        v15 = 3;
        goto LABEL_141;
      }
    }

    else
    {
      v39 = 0;
    }

    *a2 = v35;
    *(a2 + 8) = v39;
    v28 = 3;
    goto LABEL_155;
  }

LABEL_44:
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::restrictedStringPattern, "%[0-9]*\\.[0-9]+s", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::restrictedStringPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (v66.__suffix_.matched)
    {
      v66.__matches_.__end_ = v66.__matches_.__begin_;
    }

    else
    {
      p_matched = &v66.__matches_.__begin_->matched;
      if (v66.__matches_.__end_ == v66.__matches_.__begin_)
      {
        p_matched = &v66.__unmatched_.matched;
      }

      if (*p_matched)
      {
        if (v66.__matches_.__end_ == v66.__matches_.__begin_)
        {
          p_unmatched = &v66.__unmatched_;
        }

        else
        {
          p_unmatched = v66.__matches_.__begin_;
        }

        p_second = &v66.__matches_.__begin_->second;
        if (v66.__matches_.__end_ == v66.__matches_.__begin_)
        {
          p_second = &v66.__unmatched_.second;
        }

        std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, p_unmatched->first, *p_second, *p_second - p_unmatched->first);
        if (v65 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }
      }

      else
      {
        __p = 0;
        v64 = 0;
        p_p = &__p;
        v65 = 0;
      }

      printf("ASSERT: Invalid format specifier '%s'\n", p_p);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p);
      }
    }
  }

  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::longDescriptionPattern, "(%([{](public|private)[}])?l@)(.|\\n)*", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::longDescriptionPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (v66.__suffix_.matched)
    {
      v66.__matches_.__end_ = v66.__matches_.__begin_;
      goto LABEL_116;
    }

    v45 = *a1;
    v46 = v66.__matches_.__begin_;
    v47 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
    if (v47 <= 1)
    {
      v48 = &v66;
    }

    else
    {
      v48 = v66.__matches_.__begin_;
    }

    if (v48[40] == 1)
    {
      if (v47 <= 1)
      {
        v46 = &v66;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, v46[3], v46[4], v46[4] - v46[3]);
      v49 = SHIBYTE(v65);
      if (SHIBYTE(v65) < 0)
      {
        v13 = __p;
        v50 = v64;
        *a2 = v45;
        *(a2 + 8) = v50;
        v15 = 6;
        goto LABEL_141;
      }
    }

    else
    {
      v49 = 0;
    }

    *a2 = v45;
    *(a2 + 8) = v49;
    v28 = 6;
    goto LABEL_155;
  }

LABEL_116:
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::shortDescriptionPattern, "(%([{](public|private)[}])?[-]@)(.|\\n)*", 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::shortDescriptionPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    if (v66.__suffix_.matched)
    {
      v66.__matches_.__end_ = v66.__matches_.__begin_;
      goto LABEL_120;
    }

    v51 = *a1;
    v52 = v66.__matches_.__begin_;
    v53 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
    if (v53 <= 1)
    {
      v54 = &v66;
    }

    else
    {
      v54 = v66.__matches_.__begin_;
    }

    if (v54[40] == 1)
    {
      if (v53 <= 1)
      {
        v52 = &v66;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, v52[3], v52[4], v52[4] - v52[3]);
      v55 = SHIBYTE(v65);
      if (SHIBYTE(v65) < 0)
      {
        v13 = __p;
        v56 = v64;
        *a2 = v51;
        *(a2 + 8) = v56;
        v15 = 5;
        goto LABEL_141;
      }
    }

    else
    {
      v55 = 0;
    }

    *a2 = v51;
    *(a2 + 8) = v55;
    v28 = 5;
LABEL_155:
    *(a2 + 16) = v28;
    goto LABEL_156;
  }

LABEL_120:
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&ParseFormat(std::string_view const&)::formatPattern, "(%([{](public|private)[}])?[+\\- #0]?(([0-9]+)|[\\\\*])?(\\.(([0-9]+)|[\\*]))?(hh|h|ll|l|j|z|t|L)?[diuoxXfFeEgGaAcspn@])(.|\\n)*", 0);
  }

  if (!std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&ParseFormat(std::string_view const&)::formatPattern, *a1, (*a1 + a1[1]), &v66, 4160))
  {
    goto LABEL_124;
  }

  if (!v66.__suffix_.matched)
  {
    v57 = *a1;
    v58 = v66.__matches_.__begin_;
    v59 = 0xAAAAAAAAAAAAAAABLL * ((v66.__matches_.__end_ - v66.__matches_.__begin_) >> 3);
    if (v59 <= 1)
    {
      v60 = &v66;
    }

    else
    {
      v60 = v66.__matches_.__begin_;
    }

    if (v60[40] == 1)
    {
      if (v59 <= 1)
      {
        v58 = &v66;
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, v58[3], v58[4], v58[4] - v58[3]);
      v61 = SHIBYTE(v65);
      if (SHIBYTE(v65) < 0)
      {
        v13 = __p;
        v62 = v64;
        *a2 = v57;
        *(a2 + 8) = v62;
        *(a2 + 16) = 0;
        goto LABEL_142;
      }
    }

    else
    {
      v61 = 0;
    }

    *a2 = v57;
    *(a2 + 8) = v61;
    goto LABEL_160;
  }

  v66.__matches_.__end_ = v66.__matches_.__begin_;
LABEL_124:
  *a2 = 0;
  *(a2 + 8) = 0;
LABEL_160:
  *(a2 + 16) = 0;
LABEL_156:
  if (v66.__matches_.__begin_)
  {
    v66.__matches_.__end_ = v66.__matches_.__begin_;
    operator delete(v66.__matches_.__begin_);
  }
}

void sub_1E568DAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *Description<NSString * {__strong}>@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 description];
    v5 = [v4 UTF8String];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "<nil>";
    }
  }

  else
  {
    v6 = "0x0";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v6);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void RedactForPrivacy(void **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (IsRedactionEnabled())
  {
    v6 = a1[1];
    if (v6 >= 9)
    {
      v7 = *a1;
      v8 = &v7[v6];
      v9 = v7;
      do
      {
        v10 = memchr(v9, 37, v6 - 8);
        if (!v10)
        {
          break;
        }

        if (*v10 == 0x63696C6275707B25 && v10[8] == 125)
        {
          if (v10 == v7)
          {
            goto LABEL_15;
          }

          break;
        }

        v9 = v10 + 1;
        v6 = v8 - v9;
      }

      while (v8 - v9 >= 9);
    }

    std::string::basic_string[abi:ne200100]<0>(a3, "<private>");
  }

  else
  {
LABEL_15:
    if (*(a2 + 23) < 0)
    {
      v12 = *a2;
      v13 = *(a2 + 8);

      std::string::__init_copy_ctor_external(a3, v12, v13);
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void FormatDetails<TString>(__int128 *a1@<X0>, TString **a2@<X1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v10 = *a1;
  do
  {
    v5 = FormatOneDetails<TString>(&v10, &__p, a2);
    if (v5)
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v5 == 0x700000000);
  FormatDetails(&v10, &v9);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::insert(&v9, 0, p_p, size);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E568DF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t FormatOneDetails<TString>(const std::string::value_type **a1, std::string *this, TString **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_98;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v38);
      v17 = v39;
      if (!v39)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v40 <= 4)
      {
        if ((v40 - 1) < 3)
        {
          goto LABEL_95;
        }

        if (v40 == 4)
        {
          if (v39 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v39 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v39;
            memmove(&__dst, v38, v39);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            std::string::basic_string[abi:ne200100]<0>(&__p, "??? (hex)");
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

LABEL_74:
            std::string::append(this, p_p, size);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              v27 = __dst.__r_.__value_.__r.__words[0];
LABEL_94:
              operator delete(v27);
            }

LABEL_95:
            v30 = a1[1];
            v31 = &v30[-v39];
            if (v30 >= v39)
            {
              v9 = 0;
              *a1 += v39;
              a1[1] = v31;
              v12 = v40 << 32;
              return v12 | v9;
            }

LABEL_98:
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

LABEL_99:
          std::string::__throw_length_error[abi:ne200100]();
        }

LABEL_47:
        v35.__r_.__value_.__r.__words[0] = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v35, *a3);
        TString::Str(&v35, &__dst);
        RedactForPrivacy(&v38, &__dst, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &__p;
        }

        else
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v22, v23);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.__r_.__value_.__l.__data_);
        goto LABEL_95;
      }

      if (v40 <= 6)
      {
        if (v40 == 5)
        {
          ShortDescription<TString>(a3, &__dst);
          RedactForPrivacy(&v38, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          ShortDescription<TString>(a3, &__dst);
          RedactForPrivacy(&v38, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

        goto LABEL_74;
      }

      if (v40 == 8)
      {
        if (v39 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_99;
        }

        if (v39 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v39;
        memmove(&__dst, v38, v39);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v25 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = __p.__r_.__value_.__l.__size_;
          v25 = __p.__r_.__value_.__r.__words[0];
        }

        v35.__r_.__value_.__r.__words[0] = v25;
        v35.__r_.__value_.__l.__size_ = v24;
        FormatDetails<TString>(&__dst, &v35, a3);
        v26 = v39;
        if (v39 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v39 >= 0x17)
        {
          operator new();
        }

        v34 = v39;
        if (v39)
        {
          memmove(&v33, v38, v39);
        }

        *(&v33 + v26) = 0;
        ExtendedFormatAdaptor(&v33, &__dst, &v35);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v35;
        }

        else
        {
          v28 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = v35.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v28, v29);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v40 != 7)
        {
          goto LABEL_47;
        }

        DeEscapeFormatFragment(&v38, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      v27 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_94;
    }
  }

  return v12 | v9;
}

void sub_1E568E4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void TString::Str(TString *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = this->fString.fRef;
  v3 = [(__CFString *)v6 UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void AutoSignpostInterval_General_OpenSync::AutoSignpostInterval_General_OpenSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}::operator()(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *a1;
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = a1[1];
    if (*(v8 + 23) < 0)
    {
      v9 = ": ";
      v8 = *v8;
      if (!*(a1[1] + 8))
      {
        v9 = "";
      }
    }

    else if (*(v8 + 23))
    {
      v9 = ": ";
    }

    else
    {
      v9 = "";
    }

    v11 = 136446466;
    v12 = v9;
    v13 = 2082;
    v14 = v8;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "OpenSync", "Begin%{public}s%{public}s", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

AutoSignpostInterval_General_OpenSync *std::unique_ptr<AutoSignpostInterval_General_OpenSync>::reset[abi:ne200100](AutoSignpostInterval_General_OpenSync **a1, AutoSignpostInterval_General_OpenSync *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

void TNode::SendNotification(const TNode *a1, int a2, id *a3, int a4, int a5)
{
  v15.fData.__impl_.__index = 0;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v15);
  v15.fData.__impl_.__index = 4;
  v15.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = a5;
  v13.fFINode = 0;
  v14 = 0;
  v12 = 0;
  TNodeEvent::CreateNodeEvent(a2, a3, a4, &v15, &v13, &v12, &v16);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v12);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  TPropertyValue::~TPropertyValue(&v15);
  v10 = TNodeEventPtr::operator->(&v16);
  TNodePtr::TNodePtr(&v13, a1);
  TNodeEvent::NotifyNode(v11, v10, &v13, 1);
  v15.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = v11;
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&v15);

  TNodeEventPtr::~TNodeEventPtr(&v16);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_1F5F3CFC0[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void TNodeEvent::CreateNodeEvent(int a1@<W0>, id *a2@<X1>, int a3@<W2>, TPropertyValue *a4@<X3>, uint64_t *a5@<X4>, TDSNotifier **a6@<X5>, void *a7@<X8>)
{
  v14 = [FINodeEvent alloc];
  TNodeEvent::TNodeEvent(&v15, a1, a2, a3, a4, a5, a6);
  *a7 = [(FINodeEvent *)v14 init:&v15];
  TNodeEvent::~TNodeEvent(&v15);
}

uint64_t TNodeEvent::TNodeEvent(uint64_t a1, int a2, id *a3, int a4, TPropertyValue *a5, uint64_t *a6, TDSNotifier **a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v12 = (a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  objc_storeStrong((a1 + 8), *a3);
  *(a1 + 16) = a4;
  TPropertyValue::operator=((a1 + 24), a5);
  v14 = *a6;
  v13 = a6[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 56);
  *(a1 + 48) = v14;
  *(a1 + 56) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=(v12, *a7);
  return a1;
}

void sub_1E568EB50(_Unwind_Exception *a1)
{
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v3);
  buffer = v1[2].fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer;
  if (buffer)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](buffer);
  }

  TPropertyValue::~TPropertyValue(v1 + 1);

  _Unwind_Resume(a1);
}

void TPropertyValue::CopyFrom(TPropertyValue *this, const TPropertyValue *a2)
{
  if (this != a2)
  {
    TPropertyValue::Release(this);
    index = a2->fData.__impl_.__index;
    if (index <= 0x17)
    {
      if (index == 9)
      {
        if (a2->fData.__impl_.__index != 9)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        if (this->fData.__impl_.__index == 9)
        {
          this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = 0;
          this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer = 0;
        }

        else
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this);
          this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = 0;
          this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer = 0;
          this->fData.__impl_.__index = 9;
        }

        TPropertyValue::CopyBlob(this, a2);
      }

      else
      {

        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1> const&>(this, a2);
      }
    }
  }
}

TPropertyValue *TPropertyValue::operator=(TPropertyValue *this, TPropertyValue *a2)
{
  if (this != a2)
  {
    TPropertyValue::CopyFrom(this, a2);
  }

  return this;
}

void TPropertyValue::Release(TPropertyValue *this)
{
  index = this->fData.__impl_.__index;
  if (index > 0xDu)
  {
    if (this->fData.__impl_.__index > 0x10u)
    {
      switch(index)
      {
        case 0x11u:
          if (index != 17)
          {
            goto LABEL_36;
          }

          break;
        case 0x12u:
          if (index != 18)
          {
            goto LABEL_36;
          }

          break;
        case 0x13u:
          if (index != 19)
          {
            goto LABEL_36;
          }

          value = this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
          if (this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value)
          {
            TReferenceCounted::RemovePtrReference(value);
          }

          goto LABEL_30;
        default:
          goto LABEL_32;
      }
    }

    else
    {
      if (index != 14)
      {
        if (index == 15)
        {
          if (index != 15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (index != 16)
          {
            goto LABEL_32;
          }

          if (index != 16)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_28;
      }

      if (index != 14)
      {
LABEL_36:
        std::__throw_bad_variant_access[abi:ne200100]();
      }
    }

    goto LABEL_28;
  }

  if (this->fData.__impl_.__index > 0xAu)
  {
    if (index == 11)
    {
      v6 = TString::KEmptyString(this);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<11ul,TString,TString const&>(this, this, v6);
      goto LABEL_31;
    }

    if (index != 12)
    {
      if (index != 13)
      {
        goto LABEL_32;
      }

      if (index == 13)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }

    if (index != 12)
    {
      goto LABEL_36;
    }

LABEL_28:
    v5 = this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
    if (this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value)
    {
      CFRelease(v5);
    }

LABEL_30:
    this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = 0;
    goto LABEL_31;
  }

  if (index != 9)
  {
    if (index != 10)
    {
      goto LABEL_32;
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},decltype(nullptr)>(this, this);
LABEL_31:
    index = this->fData.__impl_.__index;
LABEL_32:
    if (!index)
    {
      return;
    }

    goto LABEL_33;
  }

  if (index != 9)
  {
    goto LABEL_36;
  }

  buffer = this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer;
  if (buffer && (MEMORY[0x1E692CD10](buffer, 0x1000C8077774924), this->fData.__impl_.__index != 9))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this);
    this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = 0;
    this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer = 0;
    this->fData.__impl_.__index = 9;
  }

  else
  {
    this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = 0;
    this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer = 0;
  }

LABEL_33:
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this);
  this->fData.__impl_.__index = 0;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1V_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEERKS23_EEEDcS1V_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 4)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 4;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(result + 16) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1F5F3D930[v4])(v6);
    }
  }

  return result;
}

TDSNotifier **TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=(TDSNotifier **a1, TDSNotifier *this)
{
  if (this)
  {
    TDSNotifier::AddPtrReference(this);
  }

  if (*a1)
  {
    TDSNotifier::RemovePtrReference(*a1);
  }

  *a1 = this;
  return a1;
}

void TNodeEvent::~TNodeEvent(TNodeEvent *this)
{
  fFINode = this->fFINode;
  this->fFINode = 0;

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&this->fNotifier.fRef);
  cntrl = this->fTask.__cntrl_;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  TPropertyValue::~TPropertyValue(&this->fPropertyValue);
}

TDSNotifier **TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(TDSNotifier **a1)
{
  v2 = *a1;
  if (v2)
  {
    TDSNotifier::RemovePtrReference(v2);
  }

  return a1;
}

uint64_t TNodeEventPtr::operator->(void *a1)
{
  if (*a1)
  {
    return *a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TNodeEvent::NotifyNode(TDSNotifier ***__return_ptr a1@<X8>, TNodeEvent *this@<X0>, const TNodePtr *a3@<X1>, int a4@<W2>)
{
  v7 = TNodeFromFINode(a3->fFINode);
  TNode::Notifiers(v7, a1);
  if (TNode::IsContextOpen(v8))
  {
    v9 = *a1;
    v10 = a1[1];
    while (v9 != v10)
    {
      v11 = *v9;
      v12 = v11;
      if (v11)
      {
        TDSNotifier::AddPtrReference(v11);
      }

      TNodeEvent::NotifyCommon(&this->fEventKind, &v12, a4);
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v12);
      ++v9;
    }

    TNodeEvent::ForwardEventToParent(this);
  }
}

void sub_1E568F06C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL TNode::IsContextOpen(TNode *this)
{
  ContextMutex();
  std::recursive_mutex::lock(&ContextMutex(void)::contextMutex);
  v1 = sContextOpenCount > 0;
  std::recursive_mutex::unlock(&ContextMutex(void)::contextMutex);
  return v1;
}

void TNode::Notifiers(TNode *this@<X0>, void *a2@<X8>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v5 = *(this + 9);
  if (v5)
  {
    TNotifierList::Notifiers(v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  os_unfair_lock_unlock(v4);
}

void TNodeEvent::ForwardEventToParent(TNodeEvent *this)
{
  if (TNode::IsContextOpen(this))
  {
    fEventKind = this->fEventKind;
    v3 = [this->fFINode nodeRef];
    v5 = TNode::NodeFromNodeRef(v3, v4);
    TNodePtr::TNodePtr(&v39, v5);
    v6 = TNodeFromFINode(*&v39.fEventKind);
    v7 = TNode::ParentLock(v6);
    os_unfair_lock_lock(v7);
    TNodePtr::TNodePtr(&v38, *(v6 + 48));
    os_unfair_lock_unlock(v7);
    if (fEventKind == 2)
    {
      v8 = 6;
    }

    else
    {
      v8 = 4 * (fEventKind == 1);
    }

    v9 = TNodeFromFINode(v38.fFINode);
    TNode::GetSuperRootNode(v36, v9);
    v10 = TNodeFromFINode(v36[0]);

    if (v9 == v10)
    {
      goto LABEL_11;
    }

    v11 = TNodeFromFINode(*&v39.fEventKind);
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    os_unfair_lock_lock((v14 + 108));
    v15 = *(v14 + 123);
    os_unfair_lock_unlock((v14 + 108));
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if ((v15 & 0x100) != 0)
    {
      v17 = TNodeFromFINode(*&v39.fEventKind);
      v18 = TNode::InfoLock(v17);
      os_unfair_lock_lock(v18);
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v18);
        v21 = *(v20 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        os_unfair_lock_unlock(v18);
        v21 = *(v20 + 120);
      }

      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = fEventKind == 2;
      }

      v16 = v22;
    }

    else
    {
LABEL_11:
      v16 = 0;
    }

    v23 = TNodeFromFINode(v38.fFINode);
    v25 = fEventKind - 1 < 2 && v23 != 0;
    if ((v25 | v16))
    {
      TNodeEvent::Notify(v8, &v39, this->fProperty);
      fProperty = this->fProperty;
      v36[0] = 0;
      v36[1] = 0;
      v35.fFINode = 0;
      TNodeEvent::CreateNodeEvent(v8, &v39, fProperty, &this->fPropertyValue, v36, &v35, &v37);
      v27 = TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v35);
      v28 = v37;
      if (v25)
      {
        if (v37)
        {
          v29 = (v37 + 8);
        }

        else
        {
          v29 = 0;
        }

        TNodeEvent::NotifyNode(v34, v29, &v38, 1);
        v36[0] = v34;
        std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](v36);
        v30 = TNodeFromFINode(*&v39.fEventKind);
        TNode::SecondParent(v30, &v35);
        if (TNodeFromFINode(v35.fFINode))
        {
          TNodeEvent::NotifyNode(v33, v29, &v35, 1);
          v36[0] = v33;
          std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](v36);
        }
      }

      if (v16)
      {
        TNode::GetSuperRootNode(&v35, v27);
        if (v28)
        {
          v31 = (v28 + 8);
        }

        else
        {
          v31 = 0;
        }

        TNodeEvent::NotifyNode(v32, v31, &v35, 1);
        v36[0] = v32;
        std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](v36);
      }
    }
  }
}

uint64_t TNode::NodeFromNodeRef(TNode *this, OpaqueNodeRef *a2)
{
  v2 = [FINode nodeFromNodeRef:this];
  v3 = objc_cast<FIDSNode,FINode * {__strong}>(v2);

  v4 = [v3 asTNode];
  return v4;
}

BOOL TFSInfo::IsFPv2(TFSInfo *this, int a2)
{
  v2 = *(this + 120);
  if (!a2 || v2 != 28)
  {
    return v2 == 29;
  }

  os_unfair_lock_lock(this + 26);
  v4 = *(this + 10);
  if (v4)
  {
    os_unfair_lock_lock(v4 + 18);
    v5 = v4[76];
    os_unfair_lock_unlock(v4 + 18);
    if (v5 == 1)
    {
      v4 = *(v4 + 3);
    }

    else
    {
      v4 = 0;
    }
  }

  os_unfair_lock_unlock(this + 26);
  v6 = [v4 isFPv2];

  return v6;
}

void ISignpostInterval::EndPriv(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a2;
  v6 = os_signpost_enabled(*(a1 + 64));
  if (a2)
  {
    if (v6)
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>((a1 + 72), &v7);
      std::function<void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(a3, *(a1 + 64));
    }
  }
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Open", "End", v6, 2u);
  }
}

void std::__function::__func<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Open Extended", "End", v6, 2u);
  }
}

id Copy<NSMutableArray<FILocalAppContainerNode *>>(void *a1)
{
  v1 = [a1 copy];
  v2 = static_objc_cast<NSString,objc_object * {__strong}>(v1);

  return v2;
}

id static_objc_cast<NSString,objc_object * {__strong}>(id a1)
{
  if (a1)
  {
    v2 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = 0;
    }

    else
    {
      a1 = v2;
    }

    v1 = vars8;
  }

  return a1;
}

void *UserTagsMap(void)
{
  if ((atomic_load_explicit(&qword_1ECFF4410, memory_order_acquire) & 1) == 0)
  {
    UserTagsMap();
  }

  return &unk_1ECFF4418;
}

void UserTagsMap()
{
  if (__cxa_guard_acquire(&qword_1ECFF4410))
  {
    unk_1ECFF4428 = 0u;
    unk_1ECFF4418 = 0u;
    dword_1ECFF4438 = 1065353216;

    __cxa_guard_release(&qword_1ECFF4410);
  }
}

void std::__hash_table<std::__hash_value_type<TString,short>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,short>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,short>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,short>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<TString,short>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,short>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,short>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,short>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(void *a1, TString *this)
{
  v4 = FowlerNollVoHash::hash(this, this);
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
    std::__hash_table<std::__hash_value_type<TString,short>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,short>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,short>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,short>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>();
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

  if (!CFEqual(v11[2], this->fString.fRef))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E568FD54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E568FDFC(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

id TGlobalNodes::AllProvidersNode@<X0>(void *a1@<X8>)
{
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = TGlobalNodes::gGlobalNodes;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12TGlobalNodes16AllProvidersNodeEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = TGlobalNodes::gGlobalNodes;
  if (TGlobalNodes::AllProvidersNode(void)::onceToken != -1)
  {
    dispatch_once(&TGlobalNodes::AllProvidersNode(void)::onceToken, block);
  }

  result = *(v3 + 96);
  *a1 = result;
  return result;
}

const void **TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::operator=<__CFData const*,TRetainReleasePolicy<__CFData const*>>(const void **a1, const void **a2)
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

void TFSVolumeInfo::TFSVolumeInfo(TFSVolumeInfo *this)
{
  *this = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 10) = &stru_1F5F42870;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  CFRetain(&stru_1F5F42870);
  *(this + 11) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 12) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 192) = 0;
  *(this + 23) = 0;
  *(this + 28) = 850045863;
  *(this + 216) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 44) = 0;
  *(this + 296) = 0;
  *(this + 304) = 0;
  *(this + 78) = 0;
  *(this + 47) = 0;
  *(this + 384) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 273) = 0u;
  *(this + 184) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 20) = 0u;
  *(this + 49) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 400) = 0;
  *(this + 408) = 0;
}

void sub_1E56900C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v18 = *(v10 + 360);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(v10 + 344);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(v10 + 328);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(v10 + 304) == 1)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v16);
  }

  std::mutex::~mutex(v15);
  if (*(v10 + 216) == 1)
  {
    std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v14);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v13);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v12);
  v21 = *(v10 + 64);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(v11);
  if (*(v10 + 32) == 1 && *(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void TFSVolumeInfo::InitializeVirtualVolume(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 64);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(a1 + 48) = a2;
  if (a2 <= 0x22)
  {
    if (((1 << a2) & 0xB000000) != 0)
    {
      TFSVolumeInfo::SetRootDirectoryForSidebarInfo();
    }

    if (((1 << a2) & 0x700000000) != 0)
    {
      if (TFSInfo::CreateSFBrowser(a2))
      {
        SFBrowserGetRootNode();
        std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FSInfoVirtualType &,__SFNode *&,0>();
      }

      abort();
    }
  }

  TFSVolumeInfo::SetRootDirectoryForSidebarInfo();
}

void sub_1E569028C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void TFSInfo::SetIfVirtualAlias(TFSInfo *this)
{
  v2 = *(this + 120);
  v3 = v2 > 7;
  v4 = (1 << v2) & 0xA8;
  if (!v3 && v4 != 0)
  {
    os_unfair_lock_lock(this + 27);
    *(this + 123) |= 0x800u;

    os_unfair_lock_unlock(this + 27);
  }
}

void *std::__shared_ptr_emplace<TVolumeSyncThread>::__shared_ptr_emplace[abi:ne200100]<TFSVolumeInfo *,char const*&,std::allocator<TVolumeSyncThread>,0>(void *a1, const TFSVolumeInfo **a2, const char **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F41898;
  TVolumeSyncThread::TVolumeSyncThread((a1 + 3), *a2, *a3);
  return a1;
}

const void **TFSInfo::Path@<X0>(TFSInfo *this@<X0>, CFTypeRef *a2@<X8>)
{
  TFSInfo::GetPath(this, cf);
  *a2 = cf[0];
  cf[0] = 0;
  CFRetain(&stru_1F5F42870);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  cf[0] = &stru_1F5F42870;
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(cf);
}

uint64_t fstd::optional_err<TString,int>::optional_err(uint64_t a1, CFTypeRef *a2, _DWORD *a3)
{
  *a1 = *a2;
  *a2 = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  *(a1 + 8) = *a3;
  return a1;
}

void ___ZN13TFSVolumeInfo20GetDedicatedGCDQueueE17FSInfoVirtualType_block_invoke()
{
  v0 = dispatch_queue_create("NetworkNearbyQueue", 0);
  v1 = TFSVolumeInfo::gNetworkNearbyQueue;
  TFSVolumeInfo::gNetworkNearbyQueue = v0;

  v2 = dispatch_queue_create("AirDropQueue", 0);
  v3 = TFSVolumeInfo::gAirDropQueue;
  TFSVolumeInfo::gAirDropQueue = v2;

  v4 = dispatch_queue_create("TagsSharedListQueue", 0);
  v5 = TFSVolumeInfo::gTagsSharedListQueue;
  TFSVolumeInfo::gTagsSharedListQueue = v4;

  v6 = dispatch_queue_create("Cloud Containers", 0);
  v7 = TFSVolumeInfo::gAllCloudLibsQueue;
  TFSVolumeInfo::gAllCloudLibsQueue = v6;

  v8 = dispatch_queue_create("FPitems", 0);
  v9 = TFSVolumeInfo::gFPItemQueue;
  TFSVolumeInfo::gFPItemQueue = v8;
}

void *std::__shared_ptr_emplace<TFolderSizingThread>::__shared_ptr_emplace[abi:ne200100]<TFSVolumeInfo *,std::allocator<TFolderSizingThread>,0>(void *a1, const TFSVolumeInfo **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F418E8;
  TFolderSizingThread::TFolderSizingThread((a1 + 3), *a2);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E692CC50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1E56906B0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      +[FINode fiNodeFromItem:inFPv2Domain:completion:]::$_0::~$_0(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__shared_ptr_emplace<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>::__shared_ptr_emplace[abi:ne200100]<std::function<void ()(__CFURL const*,FPItem *,NSError *)> const&,std::allocator<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40DE8;
  std::__function::__value_func<void ()(__CFURL const*,FPItem *,NSError *)>::__value_func[abi:ne200100]((a1 + 3), a2);
  return a1;
}

void std::__optional_storage_base<FPItem * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<FPItem * {__strong},false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
    }
  }

  else if (*(a1 + 8))
  {

    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 1;
  }
}

void std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3>,void ()(__CFURL const*,FPItem *,NSError *)>::operator()(uint64_t a1, FINode **a2, id *a3, void **a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *a4;
  v7 = *a3;
  v8 = v6;
  v17.fFINode = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v15[0] = &v17;
  v9 = std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::piecewise_construct_t const&,std::tuple<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>&&>,std::tuple<>>((a1 + 8), &v17.fFINode);
  WeakRetained = objc_loadWeakRetained(v9 + 3);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v17.fFINode);
  if (WeakRetained)
  {
    v11 = [(FINode *)WeakRetained fpItem];
    if (v11 == v7)
    {
    }

    else
    {
      v12 = *(a1 + 48);

      if (v12)
      {
        v13 = TNodeFromFINode(WeakRetained);
        TNodePtr::TNodePtr(&v17, v13);
        v18 = v7;
        memset(v15, 0, sizeof(v15));
        std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(v15, &v17, &v19, 1uLL);
        TNode::AttachFPItemsMetadata(v15, *(a1 + 49), *(a1 + 50));
        v16 = v15;
        std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v16);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E5690A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, id a14, id a15)
{
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1E5690BAC(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

const void *RetainCF<__CFString const*>(const void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = CFRetain(result);

    return static_cf_cast<__CFString const*,void const*>(v2);
  }

  return result;
}

uint64_t TNode::HandleSyncStarted(uint64_t a1, uint64_t a2, BOOL *a3)
{
  *a3 = 0;
  StRegistrationLock::StRegistrationLock(v13);
  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  os_unfair_lock_lock((v9 + 108));
  v10 = *(v9 + 123);
  os_unfair_lock_unlock((v9 + 108));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v11 = 0;
  if ((a2 & 0x1800000) != 0 && (v10 & 0x20) != 0)
  {
    v11 = (atomic_fetch_or((a1 + 88), 8u) & 8) == 0;
  }

  *a3 = v11;
  StRegistrationLock::~StRegistrationLock(v13);
  if (*a3)
  {
    FINodeFromTNode(a1);
    v13[1].fFINode = [objc_claimAutoreleasedReturnValue() shortDescription];
    Description(a2, v13);
    operator new();
  }

  if ((a2 & 0x800000) == 0)
  {
    TNodePtr::TNodePtr(v13, a1);
  }

  if (*a3)
  {
    return a2 | 0x4800000;
  }

  else
  {
    return a2 & 0xFF7FFFFF;
  }
}

void TPropertyRecordSet::TPropertyRecordSet(TPropertyRecordSet *this)
{
  v5 = *MEMORY[0x1E69E9840];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 9) = 1065353216;
  memcpy(v4, aManp, sizeof(v4));
  std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__rehash<true>(this, 0x51uLL);
  for (i = 0; i != 3240; i += 40)
  {
    std::__hash_table<TPropertyRecord,std::hash<TPropertyRecord>,std::equal_to<TPropertyRecord>,std::allocator<TPropertyRecord>>::__emplace_unique_key_args<TPropertyRecord,TPropertyRecord const&>(this, &v4[i]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t *std::__hash_table<TPropertyRecord,std::hash<TPropertyRecord>,std::equal_to<TPropertyRecord>,std::allocator<TPropertyRecord>>::__emplace_unique_key_args<TPropertyRecord,TPropertyRecord const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void TFSInfo::GetDisplayNameWhileLocked(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  if (CFStringGetLength(*(this + 4)))
  {
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *(this + 4));
  }

  else if (CFStringGetLength(*(this + 3)))
  {
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *(this + 3));
  }

  else
  {
    v4 = TString::KEmptyString(0);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *v4);
  }
}

void std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void TNodeEventPtr::~TNodeEventPtr(id *this)
{
  v2 = *this;
  *this = 0;
}

void TNode::HandleSyncCompleted(uint64_t a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  IsDatalessNow = TFSInfo::IsDatalessNow(v6, v7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (IsDatalessNow)
  {
    goto LABEL_59;
  }

  StRegistrationLock::StRegistrationLock(&v41);
  if ((a2 & 0xC00000) == 0)
  {
    goto LABEL_12;
  }

  v10 = TNode::InfoLock(v9);
  os_unfair_lock_lock(v10);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v10);
  os_unfair_lock_lock((v12 + 108));
  v13 = *(v12 + 123);
  os_unfair_lock_unlock((v12 + 108));
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if ((v13 & 0x20) != 0)
  {
    v14 = TNode::IsPopulated(a1) ^ 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  if (TNode::VirtualType(a1) == 27)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    NotifierList = TNode::GetNotifierList(a1);
    v18 = *(NotifierList + 24);
    v17 = *(NotifierList + 32);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_lock(v18);
    v19 = *(v18 + 8);
    os_unfair_lock_unlock(v18);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v14 = [v19 populated];
    if (v14)
    {
      v20 = LogObj(4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        Description(0x1B, &v40);
        v21 = v40;
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(&dword_1E5674000, v20, OS_LOG_TYPE_INFO, "Deferred All Providers Node open sync is now complete: %{public}@", buf, 0xCu);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40);
      }
    }

    else
    {
      if ((atomic_fetch_or((a1 + 88), 0x20u) & 0x20) != 0)
      {
LABEL_29:

        goto LABEL_30;
      }

      v20 = LogObj(4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        Description(0x1B, &v40);
        v22 = v40;
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&dword_1E5674000, v20, OS_LOG_TYPE_INFO, "Deferring All Providers Node open sync: %{public}@", buf, 0xCu);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40);
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  v23 = TNode::VirtualType(a1);
  if (!v14)
  {
LABEL_58:
    StRegistrationLock::~StRegistrationLock(&v41);
LABEL_59:
    TNodePtr::TNodePtr(buf, a1);

    goto LABEL_60;
  }

  v24 = v23;
  v25 = ICloudDriveFPFSEnabled();
  if ((v24 & 0xFE) == 0x18)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 == 1)
  {
    v27 = TChildrenList::GetCollectionStatusObserver(*(a1 + 56));
    if (![v27 isPopulated])
    {
      if ((atomic_fetch_or((a1 + 88), 0x20u) & 0x20) == 0)
      {
        v36 = LogObj(4);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          Description(v24, &v40);
          v37 = as_ns<TString>(&v40);
          *buf = 138543362;
          *&buf[4] = v37;
          _os_log_impl(&dword_1E5674000, v36, OS_LOG_TYPE_INFO, "Deferring App Library Collection open sync: %{public}@", buf, 0xCu);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40);
        }

        goto LABEL_56;
      }

LABEL_57:

      goto LABEL_58;
    }

    v28 = LogObj(4);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      Description(v24, &v40);
      v29 = as_ns<TString>(&v40);
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_1E5674000, v28, OS_LOG_TYPE_INFO, "Deferred App Library Collection open sync is now complete: %{public}@", buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40);
    }
  }

  if (!TNode::IsFPv2(a1, 1))
  {
    goto LABEL_48;
  }

  v27 = TChildrenList::GetCollectionStatusObserver(*(a1 + 56));
  if (![v27 isPopulated])
  {
    if ((atomic_fetch_or((a1 + 88), 0x20u) & 0x20) == 0)
    {
      v36 = LogObj(4);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        TNode::Name(a1, &v40);
        v38 = SanitizedStr(&v40);
        *buf = 138543362;
        *&buf[4] = v38;
        _os_log_impl(&dword_1E5674000, v36, OS_LOG_TYPE_INFO, "Deferring FPv2 open sync: %{public}@", buf, 0xCu);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40);
      }

LABEL_56:

      goto LABEL_57;
    }

    goto LABEL_57;
  }

  v30 = LogObj(4);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (v31)
  {
    v32 = TNode::InfoLock(v31);
    os_unfair_lock_lock(v32);
    v34 = *(a1 + 16);
    v33 = *(a1 + 24);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v32);
    TFSInfo::Name(v34, &v40);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    v35 = SanitizedStr(&v40);
    *buf = 138543362;
    *&buf[4] = v35;
    _os_log_impl(&dword_1E5674000, v30, OS_LOG_TYPE_INFO, "Deferred FPv2 open sync is now complete: %{public}@", buf, 0xCu);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40);
  }

LABEL_48:
  if ((atomic_fetch_or((a1 + 88), 0x10u) & 0x10) != 0)
  {
    goto LABEL_58;
  }

  atomic_fetch_and((a1 + 88), 0xFFDFu);
  StRegistrationLock::~StRegistrationLock(&v41);
  std::unique_ptr<AutoSignpostInterval_General_OpenSync>::reset[abi:ne200100]((a1 + 80), 0);
  TNodePtr::TNodePtr(buf, a1);
  TNode::SendNotification(a1, 8, buf, 0, 0);

LABEL_60:
  v39 = *MEMORY[0x1E69E9840];
}

void sub_1E569189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, int a10, __int16 a11, char a12, char a13)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);

  StRegistrationLock::~StRegistrationLock(&a13);
  _Unwind_Resume(a1);
}

uint64_t TNode::IsPopulated(TNode *this)
{
  v1 = atomic_load(this + 44);
  if ((v1 & 0x10) == 0)
  {
    return 0;
  }

  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock((v6 + 108));
  v7 = *(v6 + 123);
  os_unfair_lock_unlock((v6 + 108));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return (v7 >> 5) & 1;
}

uint64_t ICloudDriveFPFSEnabled(void)
{
  {
    ICloudDriveFPFSEnabled(void)::enabled = UseFileProviderFramework();
  }

  return ICloudDriveFPFSEnabled(void)::enabled;
}

BOOL TNode::IsFPv2(TNode *this, int a2)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  IsFPv2 = TFSInfo::IsFPv2(v6, a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return IsFPv2;
}

void sub_1E5691B44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__function::__func<AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_END, v7, "OpenSync", "End", v8, 2u);
  }
}

void StSignpostMacroHelper::~StSignpostMacroHelper(StSignpostMacroHelper *this)
{
  std::mutex::lock(this);
  std::function<void ()(StSignpostMacroHelper *,unsigned long long)>::operator()(this + 120, this, *(this + 14));
  std::mutex::unlock(this);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 19);
  std::__function::__value_func<void ()(StSignpostMacroHelper *,unsigned long long)>::~__value_func[abi:ne200100](this + 120);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(this + 72);

  std::mutex::~mutex(this);
}

uint64_t std::function<void ()(StSignpostMacroHelper *,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t std::__function::__func<NodeContextOpen::$_1,std::allocator<NodeContextOpen::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::operator()(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v6 = *a3;
  v7[0] = &unk_1F5F3FEA0;
  v7[1] = &v6;
  v7[3] = v7;
  ISignpostInterval::EndPriv(v3, v6, v7);
  result = std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5691EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(StSignpostMacroHelper *,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_1,std::allocator<_NodeContextOpenExtended::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::operator()(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v6 = *a3;
  v7[0] = &unk_1F5F3FD20;
  v7[1] = &v6;
  v7[3] = v7;
  ISignpostInterval::EndPriv(v3, v6, v7);
  result = std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5691FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **TFSVolumeInfo::GetVolumeInfoFor@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::operator=<__CFData const*,TRetainReleasePolicy<__CFData const*>>(&v5, &v7);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v7);
  v6 = a1;
  TFSVolumeInfo::GetVolumeInfoForNoSync(&v5, a2);
  result = TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v5);
  if (!*a2)
  {
    TFSVolumeInfo::AddVirtualVolume();
  }

  return result;
}

void sub_1E569207C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12TGlobalNodes16AllProvidersNodeEv_block_invoke(uint64_t a1)
{
  TFSVolumeInfo::GetVolumeInfoFor(28, &v12);
  v2 = *(a1 + 32);
  v3 = v12;
  v12 = 0uLL;
  v4 = *(v2 + 112);
  *(v2 + 104) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }
  }

  TFSVolumeInfo::GetVolumeInfoFor(27, &v12);
  TNodePtr::TNodePtr(&v10, 0);
  v5 = *(v12 + 64);
  v8 = *(v12 + 56);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = 0;
  TNode::CreateNode(&obj, &v10, &v8, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  objc_storeStrong((*(a1 + 32) + 96), obj);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
  }
}

void sub_1E5692190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceI13TFSVolumeInfoNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F41938;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 24) = 0u;
  v2 = a1 + 24;
  *(a1 + 248) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  TFSVolumeInfo::TFSVolumeInfo(v2);
  return a1;
}

void sub_1E56922E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::GetProperty(uint64_t a1, uint64_t a2, TPropertyReference *a3, TOperationErrorRecord **a4, uint64_t a5)
{
  if (*a4)
  {
    v10 = a5 | 0x82;
  }

  else
  {
    v10 = a5;
  }

  Property = TNode::GetProperty(a1, a2, a3, v10);
  v12 = Property;
  v13 = 0;
  if (a2 > 1819240306)
  {
    if (a2 != 1885895027)
    {
      v14 = 1819240307;
LABEL_9:
      if (a2 != v14)
      {
        goto LABEL_13;
      }
    }
  }

  else if (a2 != 1667330145)
  {
    v14 = 1718776688;
    goto LABEL_9;
  }

  Property = TNode::IsDeferredForSymlink(a1, TFSInfo::IsPackage, 0);
  if (Property)
  {
    atomic_fetch_or((a1 + 88), 0x80u);
  }

  v13 = 1;
LABEL_13:
  if (v12 == -8053)
  {
    v20 = TNode::InfoLock(Property);
    os_unfair_lock_lock(v20);
    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v20);
      v23 = *(v22 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
      os_unfair_lock_unlock(v20);
      if (!*(v22 + 120))
      {
        goto LABEL_34;
      }
    }

    return 4294959243;
  }

  if (v12 != -8074)
  {
    if (v12 != -8086)
    {
      return v12;
    }

    if (a2 == 1668506984)
    {
LABEL_19:
      v15 = TNode::InfoLock(Property);
      os_unfair_lock_lock(v15);
      v17 = *(a1 + 16);
      v16 = *(a1 + 24);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v15);
      os_unfair_lock_lock((v17 + 108));
      v18 = *(v17 + 123);
      os_unfair_lock_unlock((v17 + 108));
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((v18 & 0x20000000) == 0)
      {
        v31.fData.__impl_.__index = 0;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
        v31.fData.__impl_.__index = 21;
        v31.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 0x80000;
        TNode::RequestInternalTask(a1, 1000, &v31, 0);
        TPropertyValue::~TPropertyValue(&v31);
      }

      return 0;
    }

    if (a2 == 1684955501)
    {
      if (*a4)
      {
        goto LABEL_19;
      }

      return 0;
    }

    if ((a5 & 0x80) != 0)
    {
      if (TPropertyReference::IsValid(a3))
      {
        return 0;
      }

      goto LABEL_45;
    }

    goto LABEL_35;
  }

LABEL_34:
  if ((a5 & 0x80) != 0)
  {
LABEL_45:
    TPropertyReference::Clear(a3);
    return v12;
  }

LABEL_35:
  if (*a4)
  {
    if (v13)
    {
      v24 = TNode::InfoLock(Property);
      os_unfair_lock_lock(v24);
      v26 = *(a1 + 16);
      v25 = *(a1 + 24);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v24);
      os_unfair_lock_lock((v26 + 108));
      v27 = *(v26 + 123);
      os_unfair_lock_unlock((v26 + 108));
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if ((v27 & 0x20) != 0)
      {
        v31.fData.__impl_.__index = 0;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
        v31.fData.__impl_.__index = 21;
        v31.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = a5;
        v29 = *a4;
        v30 = v29;
        if (v29)
        {
          TOperationErrorRecord::AddPtrReference(v29);
        }

        TNode::RequestTask(a1, 102, a2, &v31, &v30);
      }
    }

    v31.fData.__impl_.__index = 0;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
    v31.fData.__impl_.__index = 21;
    v31.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = a5;
    v28 = *a4;
    v30 = v28;
    if (v28)
    {
      TOperationErrorRecord::AddPtrReference(v28);
    }

    TNode::RequestTask(a1, 1, a2, &v31, &v30);
  }

  TNode::UpdatePropertySynchronous(a1);
  TPropertyReference::Clear(a3);
  return TNode::GetProperty(a1, a2, a3, a5);
}

void TNode::GetVolumeInfo(TNode *this@<X0>, void *a2@<X8>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v5 = *(this + 1);
  *a2 = *this;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
}

uint64_t TFSInfo::GetDisplayName(TFSInfo *a1, uint64_t a2)
{
  TFSInfo::DisplayName(a1, &v5);
  v3 = TPropertyReference::SetAs<TString>(a2, &v5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  return v3;
}

void sub_1E56927DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TFSInfo::DisplayName(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  os_unfair_lock_lock(this + 26);
  TFSInfo::GetDisplayNameWhileLocked(this, a2);

  os_unfair_lock_unlock(this + 26);
}

const void *TString::MutableRef(TString *this, const __CFString *a2)
{
  IsMutable = TString::IsMutable(this->fString.fRef, a2);
  fRef = this->fString.fRef;
  if ((IsMutable & 0x100) == 0 || (IsMutable & 1) == 0)
  {
    fRef = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, this->fString.fRef);
    if (this->fString.fRef)
    {
      CFRelease(this->fString.fRef);
    }

    this->fString.fRef = fRef;
  }

  return static_cf_cast<__CFString const*,void const*>(fRef);
}

id objc_cast<FIDSNode,FINode * {__strong}>(void *a1)
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

uint64_t std::unordered_map<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const,std::pair<FINode * {__weak},unsigned long>> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::pair<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const,std::pair<FINode * {__weak},unsigned long>>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  objc_copyWeak((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t std::__function::__value_func<void ()(__CFURL const*,FPItem *,NSError *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void TNode::FPItemsFromURLsWithTimeout(__CFArray const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(__CFURL const*,FPItem *,NSError *)> const&)::$_0::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = TString::operator NSString *(*(a1 + 32));
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(v24, v4);
  IDContainerIteratorAdaptor<NSArray>::IDContainerIteratorAdaptor(v23, -1, v4);
  v7 = algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray>>(v24, v23);

  type_traits_extras::CopyAsHelper<std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>::MakeWithCapacity(v7, &v21);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(&obj, v4);
  IDContainerIteratorAdaptor<NSArray>::IDContainerIteratorAdaptor(v25, -1, v4);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (obj != v25[0] || v31 != v25[16])
  {
    v8 = *(v27[1] + 8 * v30);
    v9 = v8;
    v34[0] = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v34[2] = v34;
    v10 = std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::piecewise_construct_t const&,std::tuple<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>&&>,std::tuple<>>(v6, v34);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v34);
    v11 = v10[7];
    if (v11)
    {
      if (*(v10 + 32) == 1)
      {
        v12 = v10[3];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (*(v10 + 48) == 1)
      {
        v14 = v10[5];
      }

      else
      {
        v14 = 0;
      }

      std::function<void ()(__CFURL const*,FPItem *,NSError *)>::operator()(v11, v9, v13, v14);
    }

    if (*(v10 + 32) == 1)
    {
      v15 = v10[3];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    if (*(v10 + 48) == 1)
    {
      v17 = v10[5];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v32 = v16;
    v33 = v18;

    std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::push_back[abi:ne200100](&v21, &v32);
    v19 = v30;
    if (v30 >= v29 - 1)
    {
      v20 = [obj countByEnumeratingWithState:v27 objects:v28 count:4];
      v19 = -1;
      v29 = v20;
      v30 = -1;
    }

    if (v28[4] != *v27[2])
    {
      objc_enumerationMutation(obj);
      v19 = v30;
    }

    ++v31;
    v30 = v19 + 1;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
  }

  *a2 = v21;
  *(a2 + 16) = v22;
  v22 = 0;
  v21 = 0uLL;
  obj = &v21;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&obj);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5692DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  *(v68 - 128) = &a11;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100]((v68 - 128));
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  _Unwind_Resume(a1);
}

uint64_t IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  v5 = (a1 + 112);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  v6 = (a1 + 120);
  *(a1 + 128) = -1;
  if (v4 && [v4 count] && (v7 = *(a2 + 128), v7 < objc_msgSend(*a1, "count")))
  {
    v8 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 112) = v8;
    *(a1 + 104) = **(a1 + 24);
    *v6 = 0;
    *(a1 + 128) = 0;
    v9 = *(a2 + 128);
    if (v9 >= v8)
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (v11 >= *v5 - 1)
          {
            *v5 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
            v11 = -1;
            *v6 = -1;
          }

          if (*(a1 + 104) != **(a1 + 24))
          {
            objc_enumerationMutation(*a1);
            v11 = *v6;
          }

          v13 = *(a1 + 128) + 1;
          *(a1 + 120) = ++v11;
          *(a1 + 128) = v13;
          ++v12;
        }

        while (*(a2 + 128) > v12);
      }
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v9;
    }
  }

  else
  {
    *v6 = *(a2 + 120);
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*,std::pair<TNodePtr,TNodePtr>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 2;
    }

    while (v4 != a3);
  }
}

uint64_t std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::__emplace_back_slow_path<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *v3 = v4;
    result = (v3 + 1);
  }

  a1[1] = result;
  return result;
}

void AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync(AutoSignpostInterval_General_OpenSync *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  v4[0] = *(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(this + 9, v4))
  {
    v2 = *(this + 14);
    v4[0] = &unk_1F5F40658;
    v4[1] = this;
    v4[3] = v4;
    ISignpostInterval::EndPriv(this, v2, v4);
    std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v4);
  }

  std::mutex::unlock(this);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(this + 72);

  std::mutex::~mutex(this);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E5693178(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(a1, result);
    return 1;
  }

  return result;
}

void TFSInfo::SetUserTagsMap(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v1 = LogObj(5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = [v16 count];
    _os_log_impl(&dword_1E5674000, v1, OS_LOG_TYPE_INFO, "Updating user tags with %d tags.", buf, 8u);
  }

  v2 = UserTagsMap();
  v14 = v3;
  std::mutex::lock(v3);
  std::__hash_table<std::__hash_value_type<TString,short>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,short>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,short>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,short>>>::clear(v2);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v16 allKeys];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v17.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v17, v7);

        v8 = [v16 objectForKeyedSubscript:{v7, v14}];
        v9 = static_objc_cast<NSString,objc_object * {__strong}>(v8);
        v10 = [v9 shortValue];

        *buf = &v17;
        v11 = std::__hash_table<std::__hash_value_type<TString,short>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,short>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,short>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,short>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(v2, &v17);
        if (v10 >= 7)
        {
          v12 = 7;
        }

        else
        {
          v12 = v10;
        }

        *(v11 + 12) = v12 & ~(v12 >> 31);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  std::mutex::unlock(v14);
  v13 = *MEMORY[0x1E69E9840];
}

void *std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FSInfoVirtualType &,std::allocator<TFSInfo>,0>(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 3), *a2);
  return a1;
}

id TFSVolumeInfo::GetDedicatedGCDQueue(int a1)
{
  if (TFSVolumeInfo::GetDedicatedGCDQueue(FSInfoVirtualType)::once != -1)
  {
    TFSVolumeInfo::GetDedicatedGCDQueue();
  }

  if ((a1 - 22) >= 0xD || ((0x1CEFu >> (a1 - 22)) & 1) == 0)
  {
    abort();
  }

  v2 = *off_1E877F4A8[(a1 - 22)];

  return v2;
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1E569375C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

id FIDSNodeSubclassForVirtualType(unsigned int a1)
{
  if (a1 <= 0x24 && ((0x1FFFFF18FFuLL >> a1) & 1) != 0)
  {
    isa = off_1E877F538[a1]->isa;
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void TChildrenList::TChildrenList(TChildrenList *this, const TNode *a2)
{
  v3 = MEMORY[0x1E692CB40](this);
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = a2;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0;
}

uint64_t TFSInfo::IsApplication(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 2) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

void TNodeEvent::CreateEventQueue(void *a1)
{
  a1;
  EventQueueSpinLock();
  os_unfair_lock_lock(&_MergedGlobals);
  ++sEventQueueSerial;
  std::allocate_shared[abi:ne200100]<TBlockingEventQueue,std::allocator<TBlockingEventQueue>,void({block_pointer} {__strong}&)(OpaqueEventQueue *),unsigned long long &,0>();
}

void sub_1E5693B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  os_unfair_lock_unlock(&_MergedGlobals);

  _Unwind_Resume(a1);
}

void EventQueueSpinLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF43F0, memory_order_acquire) & 1) == 0)
  {
    EventQueueSpinLock();
  }
}

void EventQueueSpinLock()
{
  if (__cxa_guard_acquire(&qword_1ECFF43F0))
  {
    _MergedGlobals = 0;

    __cxa_guard_release(&qword_1ECFF43F0);
  }
}

void TBlockingEventQueue::TBlockingEventQueue(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1018212795;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  operator new();
}

void sub_1E5693D44(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::deque<TNodeEventPtr>::~deque[abi:ne200100](v1);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TBlockingEventQueue>::__shared_ptr_emplace[abi:ne200100]<void({block_pointer} {__strong}&)(OpaqueEventQueue *),unsigned long long &,std::allocator<TBlockingEventQueue>,0>(void *a1, void **a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D7A0;
  v3 = *a3;
  TBlockingEventQueue::TBlockingEventQueue((a1 + 3), *a2);
}

uint64_t EventQueues(void)
{
  {
    operator new();
  }

  return EventQueues(void)::map;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void NodeNewChangeHandlerOnQueue(uint64_t a1, void *a2, void *a3)
{
  memset(v3, 0, sizeof(v3));
  TClientChangeNotifier::Make(v3, a1, a3, a2, &v4);
  AddToNodeChangeNotifierRegistry();
}

void sub_1E5694124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void TClientChangeNotifier::Make(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v9 = a3;
  v10 = a4;
  TDSNotifier::GetRegistrationLock(v10);
  std::recursive_mutex::lock(&TDSNotifier::GetRegistrationLock(void)::gRegistrationLock);
  if (!*a1)
  {
    *a1 = ++TClientChangeNotifier::Make(NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::sListenerSerialID;
LABEL_13:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    operator new();
  }

  v11 = TClientChangeNotifier::GetClientNotifierList(void)::gClientNotifierList;
  v12 = qword_1ECFF40A8;
  while (1)
  {
    if (v11 == v12)
    {
      goto LABEL_13;
    }

    *a5 = 0;
    a5[1] = 0;
    v13 = v11[1];
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      a5[1] = v14;
      if (v14)
      {
        break;
      }
    }

LABEL_11:
    v11 += 2;
  }

  v15 = *v11;
  *a5 = *v11;
  if (!v15 || v15[2] != *a1 || v15[5] != a2 || v15[6] != v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    goto LABEL_11;
  }

  StRegistrationLock::~StRegistrationLock(&v16);
}

void sub_1E5694474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  StRegistrationLock::~StRegistrationLock(&a13);

  _Unwind_Resume(a1);
}

uint64_t TClientChangeNotifier::TClientChangeNotifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  *a1 = 0;
  *(a1 + 8) = 0;
  v14 = *(a3 + 16);
  *(a1 + 16) = *a3;
  *(a1 + 32) = v14;
  *(a1 + 40) = a4;
  v15 = v12;
  *(a1 + 48) = v15;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  if (v13)
  {
    *(a1 + 88) = &unk_1F5F41618;
    *(a1 + 96) = MEMORY[0x1E692D6D0](v13);
    *(a1 + 112) = a1 + 88;
    v19[0] = &unk_1F5F41728;
  }

  else
  {
    v19[0] = &unk_1F5F416A8;
    v19[1] = a5;
  }

  v19[3] = v19;
  std::__function::__value_func<void ()(OpaqueEventQueue *)>::swap[abi:ne200100](v19, (a1 + 56));
  std::__function::__value_func<void ()(OpaqueEventQueue *)>::~__value_func[abi:ne200100](v19);
  v16 = *(a1 + 24);
  if (v16 && *(a1 + 16))
  {
    v16();
  }

  v17 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E5694644(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(FINodeEvent *)>::~__value_func[abi:ne200100](v4);
  std::__function::__value_func<void ()(OpaqueEventQueue *)>::~__value_func[abi:ne200100](v1 + 56);

  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__value_func<void ()(OpaqueEventQueue *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E56948DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(OpaqueEventQueue *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **std::__split_buffer<std::weak_ptr<TClientChangeNotifier>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<TClientChangeNotifier>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::weak_ptr<TClientChangeNotifier>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *NodeChangeNotifierRegistry(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    NodeChangeNotifierRegistry();
  }

  return &unk_1ECFF4468;
}

void AddToNodeChangeNotifierRegistry()
{
  NodeChangeNotifierRegistry();
  std::mutex::lock(v0);
  std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__emplace_multi<OpaqueEventNotifier *&,std::shared_ptr<TClientChangeNotifier> const&>();
}

void sub_1E5694B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void NodeChangeNotifierRegistry()
{
  if (__cxa_guard_acquire(&_MergedGlobals_2))
  {
    unk_1ECFF4478 = 0u;
    unk_1ECFF4468 = 0u;
    dword_1ECFF4488 = 1065353216;

    __cxa_guard_release(&_MergedGlobals_2);
  }
}

void std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void NodeObservedOptionsCountRegistry::StartedObserving(void *a1, uint64_t a2)
{
  v15 = a1;
  std::mutex::lock(&NodeObservedOptionsCountRegistry::gRegistryLock);
  if (!NodeObservedOptionsCountRegistry::gRegistry)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    operator new();
  }

  v16 = &v15;
  v3 = std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::__emplace_unique_key_args<FINode * {__strong},std::piecewise_construct_t const&,std::tuple<FINode * const {__strong}&>,std::tuple<>>(NodeObservedOptionsCountRegistry::gRegistry, &v15);
  if (a2)
  {
    v4 = 1;
    v5 = a2;
    do
    {
      if ((v4 & ~v5) == 0)
      {
        break;
      }

      v5 = v5 & ~v4;
      v4 *= 2;
    }

    while (v5);
    v6 = v5 << 32;
  }

  else
  {
    v6 = 0;
    v4 = 1;
  }

  end_iter = bitmask_enum_iterator<NodeRequestOptions>::make_end_iter(a2);
  v9 = v8;
  v10 = v6 | a2;
LABEL_10:
  if ((v10 ^ end_iter) >> 32)
  {
    v11 = 0;
  }

  else
  {
    v11 = v4 == v9;
  }

  v12 = !v11;
  while ((v10 != end_iter) | v12 & 1)
  {
    LODWORD(v19) = v4 & HIDWORD(v10);
    v16 = &v19;
    v13 = std::__hash_table<std::__hash_value_type<NodeNotificationOptions,unsigned long>,std::__unordered_map_hasher<NodeNotificationOptions,std::__hash_value_type<NodeNotificationOptions,unsigned long>,std::hash<NodeNotificationOptions>,std::equal_to<NodeNotificationOptions>,true>,std::__unordered_map_equal<NodeNotificationOptions,std::__hash_value_type<NodeNotificationOptions,unsigned long>,std::equal_to<NodeNotificationOptions>,std::hash<NodeNotificationOptions>,true>,std::allocator<std::__hash_value_type<NodeNotificationOptions,unsigned long>>>::__emplace_unique_key_args<NodeNotificationOptions,std::piecewise_construct_t const&,std::tuple<NodeNotificationOptions const&>,std::tuple<>>(v3 + 3, &v19);
    ++v13[3];
    if (HIDWORD(v10))
    {
      v14 = HIDWORD(v10) & ~v4;
      v10 = v10 | (v14 << 32);
      for (v4 *= 2; v14; v4 *= 2)
      {
        if ((v4 & ~v14) == 0)
        {
          break;
        }

        v14 &= ~v4;
        v10 = v10 | (v14 << 32);
      }

      goto LABEL_10;
    }
  }

  std::mutex::unlock(&NodeObservedOptionsCountRegistry::gRegistryLock);
}

void sub_1E56953E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::mutex::unlock(&NodeObservedOptionsCountRegistry::gRegistryLock);

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::__emplace_unique_key_args<FINode * {__strong},std::piecewise_construct_t const&,std::tuple<FINode * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
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
    operator new();
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

  if ((std::equal_to<FINode * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::unique_ptr<NodeObservedOptionsCountRegistry>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::__unordered_map_hasher<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,true>,std::__unordered_map_equal<FINode * {__strong},std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>,std::equal_to<FINode * {__strong}>,std::hash<FINode * {__strong}>,true>,std::allocator<std::__hash_value_type<FINode * {__strong},std::unordered_map<NodeNotificationOptions,unsigned long>>>>::~__hash_table(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

void TNode::RequestSynchronize(TGlobalNodes *a1, int a2)
{
  TGlobalNodes::RootNode(&v5.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value, a1);
  v4 = TNodeFromFINode(v5.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value);

  if (v4 != a1)
  {
    v5.fData.__impl_.__index = 0;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v5);
    v5.fData.__impl_.__index = 21;
    v5.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = a2;
    TNode::RequestInternalTask();
  }
}

void ___ZN9TNodeTask19PostNodeTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I17TVolumeSyncThreadEE_block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZZN9TNodeTask19PostNodeTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I17TVolumeSyncThreadEEENK3__0clEv_block_invoke;
  v6[3] = &__block_descriptor_73_ea8_32c13_ZTS8TNodePtr40c47_ZTSRKNSt3__110shared_ptrI17TVolumeSyncThreadEE56c38_ZTSRKNSt3__110shared_ptrI9TNodeTaskEE_e5_v8__0l;
  v12 = *(a1 + 72);
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ExceptionSafeBlock(v6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E5695884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void ExceptionSafeBlock(void *a1)
{
  v2 = a1;
  v1 = objc_autoreleasePoolPush();
  v2[2]();
  objc_autoreleasePoolPop(v1);
}

TNodeTask *TNode::HandleNodeRequest(id **a1)
{
  v2 = *a1;
  if (v2 && *(v2 + 13) != 1003)
  {
    TNodeTask::SetRequestStatus(v2, 1002);
    v4 = **a1;
    v3 = 0;
    v10.fFINode = v4;
    v6 = *(*a1 + 4);
    if (v6 > 34)
    {
      switch(v6)
      {
        case 1000:
          TNode::HandleSync(a1, &v10.fFINode);
          goto LABEL_40;
        case 1001:
        case 1024:
          NodeRequest = TNode::HandleVolumeAdded(a1);
          goto LABEL_42;
        case 1002:
        case 1004:
        case 1005:
        case 1006:
        case 1013:
        case 1014:
        case 1015:
        case 1016:
        case 1017:
        case 1018:
        case 1020:
        case 1022:
        case 1025:
        case 1026:
        case 1027:
          goto LABEL_43;
        case 1003:
          TNode::HandleRegisterForNotification(a1, &v10.fFINode);
          goto LABEL_40;
        case 1007:
          TNode::HandleMarkAsUsed(v4, &v10.fFINode);
          goto LABEL_40;
        case 1008:
          NodeRequest = TNode::HandleSubscribeWithKQueue(v4, &v10.fFINode);
          goto LABEL_42;
        case 1009:
          NodeRequest = TNode::HandleUnsubscribeWithKQueue(v4, &v10.fFINode);
          goto LABEL_42;
        case 1010:
          NodeRequest = TNode::HandleVolumeDeleted(v4, &v10.fFINode);
          goto LABEL_42;
        case 1011:
          TNodeFromFINode(v4);
          goto LABEL_40;
        case 1012:
          TNodeEvent::Notify(0, 1, v5);
          goto LABEL_40;
        case 1019:
          v8 = TNodeFromFINode(v4);
          TNode::DoExternalUnRegistration(v8);
          goto LABEL_40;
        case 1021:
          TNode::HandleRegisterInternalNotificationTask(v4, &v10.fFINode);
          goto LABEL_40;
        case 1023:
          TNode::HandleSyncComputerName(v4);
          goto LABEL_40;
        case 1028:
          TNode::HandleFPProviderError(v4, &v10.fFINode);
LABEL_40:
          v3 = 0;
          goto LABEL_43;
        default:
          if (v6 == 35)
          {
            NodeRequest = TNode::HandleAddServerToSidebarRequest(a1, &v10.fFINode);
          }

          else
          {
            if (v6 != 36)
            {
              goto LABEL_43;
            }

            NodeRequest = TNode::HandleRemoveServerFromSidebarRequest(a1, &v10.fFINode);
          }

          break;
      }

      goto LABEL_42;
    }

    if (v6 > 10)
    {
      if (v6 > 32)
      {
        if (v6 == 33)
        {
          NodeRequest = TNode::HandleOpenServerRequest(a1, &v10.fFINode);
        }

        else
        {
          NodeRequest = TNode::HandleDisconnectShareRequest(a1, &v10.fFINode);
        }

        goto LABEL_42;
      }

      if (v6 == 11)
      {
        NodeRequest = TNode::HandleFetchNodeRequest(a1);
        goto LABEL_42;
      }

      if (v6 == 32)
      {
        NodeRequest = TNode::HandleOpenScreenShareRequest(a1, &v10.fFINode);
        goto LABEL_42;
      }
    }

    else if (v6 > 7)
    {
      if (v6 == 8)
      {
        NodeRequest = TNode::HandleFetchBookmarkData(a1, &v10);
        goto LABEL_42;
      }

      if (v6 == 10)
      {
        NodeRequest = TNode::HandleResolveAlias(a1, &v10.fFINode);
        goto LABEL_42;
      }
    }

    else
    {
      if (v6 == 1)
      {
        NodeRequest = TNode::HandleFetchProperty(a1, &v10.fFINode);
        goto LABEL_42;
      }

      if (v6 == 2)
      {
        NodeRequest = TNode::HandleStoreProperty(a1, &v10.fFINode);
LABEL_42:
        v3 = NodeRequest;
      }
    }

LABEL_43:

    v2 = *a1;
    return TNodeTask::SetRequestStatus(v2, v3);
  }

  v3 = -128;
  return TNodeTask::SetRequestStatus(v2, v3);
}

TNodeTask *___ZZN9TNodeTask19PostNodeTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I17TVolumeSyncThreadEEENK3__0clEv_block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = TNodeFromFINode(*(a1 + 32));
    TNode::ClearSyncRequested(v2);
  }

  result = TVolumeSyncThread::SynchingCanceled(*(a1 + 40));
  if ((result & 1) == 0)
  {

    return TNode::HandleNodeRequest((a1 + 56));
  }

  return result;
}

TNodeTask *TNodeTask::SetRequestStatus(TNodeTask *this, int a2)
{
  if (*(this + 13) >= 1)
  {
    *(this + 13) = a2;
  }

  return this;
}

TDSNotifier **TNodeTask::GetNotifier@<X0>(TNodeTask *this@<X0>, TDSNotifier **a2@<X8>)
{
  *a2 = 0;
  result = TPropertyValue::DataType(this + 1);
  if (result == 1919247971)
  {
    result = TPropertyValue::ReferenceCountedType(this + 1);
    if (result == 1852798054)
    {
      TPropertyValue::As<TDSNotifier *>(this + 6, v5);
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>(a2, v5);
      return TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v5);
    }
  }

  return result;
}

__CFString *ShortDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = 1;
    v3 = a1;
    do
    {
      if ((v2 & ~v3) == 0)
      {
        break;
      }

      v3 &= ~v2;
      v2 *= 2;
    }

    while (v3);
    end_iter = bitmask_enum_iterator<NodeRequestOptions>::make_end_iter(a1);
    v5 = end_iter;
    v7 = v6;
    v8 = HIDWORD(end_iter);
    v9 = &stru_1F5F42870;
    theString = &stru_1F5F42870;
    v10 = CFRetain(&stru_1F5F42870);
    if (v5 != v1 || v8 != v3 || v2 != v7)
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = *MEMORY[0x1E695E498];
      while (1)
      {
        v13 = v3 & v2;
        if ((v3 & v2) > 7)
        {
          break;
        }

        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v15 = CFStringCreateWithBytesNoCopy(v11, "Child", 5, 0x8000100u, 0, v12);
          }

          else
          {
            v15 = CFStringCreateWithBytesNoCopy(v11, "ChildDeep", 9, 0x8000100u, 0, v12);
          }

LABEL_20:
          v21 = &stru_1F5F42870;
          v22 = v15;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v21, v15);
          goto LABEL_25;
        }

        if (!v13)
        {
          v14 = TString::KEmptyString(v10);
          v21 = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v21, *v14);
          goto LABEL_26;
        }

        v16 = CFStringCreateWithBytesNoCopy(v11, "Self", 4, 0x8000100u, 0, v12);
        v21 = &stru_1F5F42870;
        v22 = v16;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v21, v16);
LABEL_25:
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22);
LABEL_26:
        if (CFStringGetLength(theString) && CFStringGetLength(v21))
        {
          TString::Append(&theString, " | ");
        }

        TString::Append(&theString, &v21);
        v10 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21);
        if (v3)
        {
          do
          {
            v3 &= ~v2;
            v2 *= 2;
          }

          while (v3 && (v2 & ~v3) != 0);
        }

        if (v5 == v1 && v3 == v8 && v2 == v7)
        {
          v9 = theString;
          goto LABEL_38;
        }
      }

      if (v13 > 31)
      {
        if (v13 == 32)
        {
          v15 = CFStringCreateWithBytesNoCopy(v11, "PrefetchChildrenProperties", 26, 0x8000100u, 0, v12);
        }

        else
        {
          v15 = CFStringCreateWithBytesNoCopy(v11, "SelfSpotlight", 13, 0x8000100u, 0, v12);
        }
      }

      else if (v13 == 8)
      {
        v15 = CFStringCreateWithBytesNoCopy(v11, "ChildSpotlight", 14, 0x8000100u, 0, v12);
      }

      else
      {
        v15 = CFStringCreateWithBytesNoCopy(v11, "UbiquityStatus", 14, 0x8000100u, 0, v12);
      }

      goto LABEL_20;
    }

LABEL_38:
    v18 = v9;
    v17 = v9;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  }

  else
  {
    v17 = @"Invalid";
  }

  return v17;
}

void sub_1E5696108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::HandleRegisterForNotification(TNodeTask **a1, FINode **a2)
{
  TNodeTask::GetClientChangeNotifier(*a1, &v13);
  if ((TNodeTask::GetNotificationOptions(*a1) & 2) != 0)
  {
    v4 = *(*a1 + 12);
    v12 = 0;
    StRegistrationLock::StRegistrationLock(&v11);
    v5 = TNodeFromFINode(*a2);
    TNode::FindRegistration(v5, &v13, a2, &v10);
    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>(&v12, &v10);
    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v10);
    StRegistrationLock::~StRegistrationLock(&v11);
    if (v12)
    {
      v6 = TNodeFromFINode(*a2);
      v7 = atomic_exchange((TNode::GetNotifierList(v6) + 20), 0);
      v8 = TNodeFromFINode(*a2);
      TNode::DoExternalRegistration(v8, &v12, v7 & 1);
      if (v4 & 0x40000) != 0 || (v7)
      {
        v9 = TNodeFromFINode(*a2);
        TNode::HandlePopulate(v9, 0, 0);
      }
    }

    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1E5696270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, TDSNotifier *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a12);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

TString *TString::Append(TString *this, const __CFString *a2)
{
  v4 = TString::MutableRef(this, a2);
  CFStringAppendCString(v4, a2, 0x8000100u);
  return this;
}

{
  chars = a2;
  v3 = TString::MutableRef(this, a2);
  CFStringAppendCharacters(v3, &chars, 1);
  return this;
}

TDSNotifier **TNodeTask::GetClientChangeNotifier@<X0>(TNodeTask *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  TNodeTask::GetNotifier(this, &v6);
  if (v6)
  {
    v4 = *v6;
    v3 = *(v6 + 1);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *a2 = v4;
    a2[1] = v3;
  }

  return TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v6);
}

const void **TFSInfo::GetVolumeID@<X0>(TFSInfo *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 2);
  v8 = v4;
  if (v4)
  {
    CFRetain(v4);
    os_unfair_lock_unlock(this + 27);
    VolumeIdentifier = TCFURLInfo::GetVolumeIdentifier(v4, v5);
    *a2 = VolumeIdentifier;
    if (VolumeIdentifier)
    {
      CFRetain(VolumeIdentifier);
    }

    return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v8);
  }

  else
  {
    os_unfair_lock_unlock(this + 27);
    result = TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v8);
    *a2 = 0;
  }

  return result;
}

uint64_t TPropertyValue::DataType(TPropertyValue *this)
{
  if (LOBYTE(this->fData.__impl_.__index) - 1 > 0x16)
  {
    return 1853189228;
  }

  else
  {
    return dword_1E5793770[(LOBYTE(this->fData.__impl_.__index) - 1)];
  }
}

TDSNotifier **TPropertyValue::As<TDSNotifier *>@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && a1[4] == 19)
  {
    v3 = *(*a1 + 8);
    if (v3)
    {
      TDSNotifier::AddPtrReference(*(*a1 + 8));
    }

    *a2 = v3;
    v5 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    v5 = 0;
    *(a2 + 8) = -8050;
  }

  return TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v5);
}

TDSNotifier **TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>(TDSNotifier **a1, TDSNotifier **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      TDSNotifier::RemovePtrReference(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

TPropertyValue *TPropertyValue::ReferenceCountedType(TPropertyValue *this)
{
  if (this)
  {
    if (this->fData.__impl_.__index == 19)
    {
      return *this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t TNodeTask::GetNotificationOptions(TNodeTask *this)
{
  if (TPropertyValue::DataType(this + 1) != 1919247971 || TPropertyValue::ReferenceCountedType(this + 1) != 1852798054)
  {
    return 0;
  }

  TPropertyValue::As<TDSNotifier *>(this + 6, v4);
  v2 = *(v4[0] + 8);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v4);
  return v2;
}

uint64_t NodeRegisterChangeNotification(TNode *a1, OpaqueNodeRef *a2, uint64_t a3)
{
  v3 = 4294959224;
  if (a1)
  {
    if (a2)
    {
      v7 = TNode::NodeFromNodeRef(a1, a2);
      v3 = TNode::WeakValidate(v7, v8);
      if (!v3)
      {
        [(TNode *)a1 registeringChangeNotification:a3];
        ClientNotifierFromNodeNotifier(a2, &v10);
        if (v10)
        {
          v3 = TNode::RegisterChangeNotification(v7, &v10, a3);
        }

        else
        {
          v3 = 4294959224;
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }
  }

  return v3;
}

void sub_1E56966B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E5696718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = FINodeIterator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ClientNotifierFromNodeNotifier(OpaqueEventNotifier *a1@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a1;
  if (a1)
  {
    v3 = NodeChangeNotifierRegistry();
    v5 = v4;
    std::mutex::lock(v4);
    v6 = std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::find<OpaqueEventNotifier *>(v3, &v10);
    if (v6)
    {
      v7 = v6[4];
      *a2 = v6[3];
      a2[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v8 = LogObj(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v12 = v10;
        _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_ERROR, "Requested client notifier for node notifier not being tracked: %{public}p", buf, 0xCu);
      }

      *a2 = 0;
      a2[1] = 0;
    }

    std::mutex::unlock(v5);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void TNode::FindRegistration(TNode *a1@<X0>, uint64_t a2@<X1>, FINode **a3@<X2>, TDSNotifier **a4@<X8>)
{
  if (*(*a2 + 40))
  {
    TNode::Notifiers(a1, &v16);
    v7 = v16;
    v8 = v17;
    while (1)
    {
      if (v7 == v8)
      {
        v18 = &v16;
        goto LABEL_13;
      }

      v9 = **v7;
      if (*(v9 + 16) == *(*a2 + 16) && *(v9 + 40) == *(*a2 + 40))
      {
        v10 = *(*v7 + 3);
        v11 = TNodeFromFINode(v10);
        v12 = TNodeFromFINode(*a3);

        if (v11 == v12)
        {
          break;
        }
      }

      ++v7;
    }

    v15 = *v7;
    *a4 = *v7;
    if (v15)
    {
      TDSNotifier::AddPtrReference(v15);
    }

LABEL_17:
    v18 = &v16;
    std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    return;
  }

  TNode::Notifiers(a1, &v16);
  v13 = v16;
  if (v16 != v17)
  {
    while (1)
    {
      v14 = *v13;
      if (*(**v13 + 16) == *(*a2 + 16))
      {
        break;
      }

      if (++v13 == v17)
      {
        goto LABEL_12;
      }
    }

    *a4 = v14;
    TDSNotifier::AddPtrReference(v14);
    goto LABEL_17;
  }

LABEL_12:
  v18 = &v16;
LABEL_13:
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  *a4 = 0;
}

void sub_1E56969D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void TNotifierList::Notifiers(TNotifierList *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 16);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__init_with_size[abi:ne200100]<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>*,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>*>(a2, *(this + 5), *(this + 6), (*(this + 6) - *(this + 5)) >> 3);

  os_unfair_lock_unlock(this + 16);
}

void std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t TNode::RegisterChangeNotification(TNode *a1, TDSNotifier *a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 0xE) != 0)
  {
    v6 = TNode::InfoLock(a1);
    os_unfair_lock_lock(v6);
    v8 = *(a1 + 2);
    v7 = *(a1 + 3);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v6);
    os_unfair_lock_lock((v8 + 108));
    v9 = *(v8 + 123);
    os_unfair_lock_unlock((v8 + 108));
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    v11 = TNode::InfoLock(v10);
    os_unfair_lock_lock(v11);
    v13 = *(a1 + 2);
    v12 = *(a1 + 3);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v11);
    IsAlias = TFSInfo::IsAlias(v13);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (IsAlias)
    {
LABEL_12:
      v3 = v3 & 0xFFFFFFF1;
    }
  }

  TNodePtr::TNodePtr(&v17, a1);
  TNodePtr::TNodePtr(&v16, a1);
  TDSNotifier::Register(a2, &v17.fFINode, &v16.fFINode, v3);

  return 0;
}

void sub_1E5696BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__init_with_size[abi:ne200100]<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>*,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E5696C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::find<OpaqueEventNotifier *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::vector<TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void TDSNotifier::Register(TDSNotifier *a1, FINode **a2, FINode **a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  TDSNotifier::GetRegistrationLock(a1);
  std::recursive_mutex::lock(&TDSNotifier::GetRegistrationLock(void)::gRegistrationLock);
  v8 = TNodeFromFINode(*a2);
  TNode::FindRegistration(v8, a1, a3, &v61);
  if (!v61)
  {
    operator new();
  }

  if (a4)
  {
    v9 = TNodeFromFINode(*a2);
    v10 = TNode::ParentLock(v9);
    os_unfair_lock_lock(v10);
    TNodePtr::TNodePtr(&buf, *(v9 + 48));
    os_unfair_lock_unlock(v10);
    if (TNodeFromFINode(buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value))
    {
      v11 = TNodeFromFINode(buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value);
      TChildrenList::IncrementRegisteredChildrenCount(*(v11 + 56));
    }
  }

  if ((a4 & 0x40) != 0 && (v12 = TNodeFromFINode(*a2), !atomic_fetch_add((TNode::GetNotifierList(v12) + 16), 1u)))
  {
    v23 = TNodeFromFINode(*a2);
    memset(&buf, 0, sizeof(buf));
    TNode::RequestInternalTask(v23, 1004, &buf, 0);
    TPropertyValue::~TPropertyValue(&buf);
    if ((a4 & 2) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_30;
  }

  v13 = TNodeFromFINode(*a2);
  v14 = TNode::InfoLock(v13);
  os_unfair_lock_lock(v14);
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v14);
  os_unfair_lock_lock((v16 + 108));
  v17 = *(v16 + 123);
  os_unfair_lock_unlock((v16 + 108));
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if ((v17 & 0x20) != 0 || (v18 = TNodeFromFINode(*a2), TNode::AliasIsContainer(v18)))
  {
    v19 = atomic_load(v61 + 11);
    atomic_fetch_add(v61 + 11, 1u);
    v20 = TNodeFromFINode(*a2);
    NotifierList = TNode::GetNotifierList(v20);
    add = atomic_fetch_add(NotifierList, 1u);
    if ((add & 0x80000000) != 0)
    {
      v24 = LogObj(5);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = add + 1;
        _os_log_impl(&dword_1E5674000, v24, OS_LOG_TYPE_ERROR, "Incorrect childRegistrations when incrementing: %d", &buf, 8u);
      }
    }

    else if (!add)
    {
      atomic_store(1u, (NotifierList + 20));
    }

    if (!v19)
    {
      v25 = TNodeFromFINode(*a2);
      if ((TNode::AliasIsContainer(v25) & 1) == 0)
      {
        v26 = TNodeFromFINode(*a2);
        if ((TNode::IsPopulated(v26) & 1) == 0)
        {
          v27 = TNodeFromFINode(*a2);
          if (TNode::IsInitialPopulating(v27))
          {
            TNodeFromFINode(*a2);
            TNodeEvent::Notify(9, a2, 0);
            TNodeEvent::CreateNodeEvent(9, a2, 0, &buf);
            v28 = TNodeEventPtr::operator->(&buf);
            TNodeEvent::Notify(v28, &v61, 1);
            TNodeEventPtr::~TNodeEventPtr(&buf);
          }
        }

        *(v61 + 8) = a4;
        TReferenceCounted::Make<TDSNotifier *>();
      }
    }
  }

LABEL_30:
  if ((a4 & 4) != 0)
  {
    v29 = TNodeFromFINode(*a2);
    v30 = TNode::InfoLock(v29);
    os_unfair_lock_lock(v30);
    v32 = *(v29 + 16);
    v31 = *(v29 + 24);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v30);
    os_unfair_lock_lock((v32 + 108));
    v33 = *(v32 + 123);
    os_unfair_lock_unlock((v32 + 108));
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if ((v33 & 0x20) != 0 || (v34 = TNodeFromFINode(*a2), TNode::AliasIsContainer(v34)))
    {
      ++*(v61 + 12);
      v35 = TNodeFromFINode(*a2);
      v36 = atomic_fetch_add((TNode::GetNotifierList(v35) + 4), 1u);
      if ((v36 & 0x80000000) != 0)
      {
        v40 = LogObj(5);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v36 + 1;
          _os_log_impl(&dword_1E5674000, v40, OS_LOG_TYPE_ERROR, "Incorrect deepChildRegistrations when incrementing: %d", &buf, 8u);
        }
      }

      else if (!v36)
      {
        v37 = TNodeFromFINode(*a2);
        Path = TNode::GetPath(&buf, v37, 1, 1);
        v39 = TString::KEmptyString(Path);
        v59.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v59, *v39);
        fstd::optional_err<TString,int>::value_or<TString>(&buf, &v59.fString.fRef, &v60);
        TSystemNotificationTask::StartObservingDirectory(&v60, 1);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v60.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v59.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&buf);
      }
    }
  }

  if ((a4 & 8) != 0)
  {
    v41 = TNodeFromFINode(*a2);
    v42 = TNode::InfoLock(v41);
    os_unfair_lock_lock(v42);
    v44 = *(v41 + 16);
    v43 = *(v41 + 24);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v42);
    os_unfair_lock_lock((v44 + 108));
    v45 = *(v44 + 123);
    os_unfair_lock_unlock((v44 + 108));
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if ((v45 & 0x20) != 0 || (v46 = TNodeFromFINode(*a2), TNode::AliasIsContainer(v46)))
    {
      v47 = TNodeFromFINode(*a2);
      v48 = atomic_load((TNode::GetNotifierList(v47) + 8));
      v49 = TNodeFromFINode(*a2);
      v50 = atomic_fetch_add((TNode::GetNotifierList(v49) + 8), 1u);
      if ((v50 & 0x80000000) != 0)
      {
        v51 = LogObj(5);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v50 + 1;
          _os_log_impl(&dword_1E5674000, v51, OS_LOG_TYPE_ERROR, "Incorrect spotlightRegistrations when incrementing: %d", &buf, 8u);
        }
      }

      ++*(v61 + 13);
      if (!v48)
      {
        v52 = TNodeFromFINode(*a2);
        TNodeEvent::Notify(v52, 1, v53);
      }
    }
  }

  if ((a4 & 0x10) != 0)
  {
    ++*(v61 + 14);
    v54 = TNodeFromFINode(*a2);
    v55 = atomic_fetch_add((TNode::GetNotifierList(v54) + 12), 1u);
    if ((v55 & 0x80000000) != 0)
    {
      v57 = LogObj(4);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v55 + 1;
        _os_log_impl(&dword_1E5674000, v57, OS_LOG_TYPE_ERROR, "Incorrect ubiquityRegistrations when incrementing: %d", &buf, 8u);
      }
    }

    else if (!v55)
    {
      v56 = TNodeFromFINode(*a2);
      TNode::SetShouldSyncUbiquityAttributes(v56, 1);
    }
  }

  atomic_fetch_add(v61 + 10, TDSNotifier::CountForOptions(a4));
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v61);
  StRegistrationLock::~StRegistrationLock(&v62);
  v58 = *MEMORY[0x1E69E9840];
}

void sub_1E5697508(_Unwind_Exception *a1, char a2, int a3, __int16 a4, char a5, char a6, int a7, int a8, __int16 a9, char a10, char a11, TPropertyValue *a12, TDSNotifier *a13, int a14, __int16 a15, char a16, char a17)
{
  TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>::~TRef(&a12);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a13);
  StRegistrationLock::~StRegistrationLock(&a17);
  _Unwind_Resume(a1);
}

uint64_t TNode::AliasIsContainer(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x40) != 0)
  {
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(this + 2);
    v8 = *(this + 3);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    os_unfair_lock_lock((v9 + 108));
    v10 = *(v9 + 127);
    os_unfair_lock_unlock((v9 + 108));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v10)
    {
      v11 = FINodeFromTNode(this);
      v12 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZNK5TNode16AliasIsContainerEv_block_invoke;
      block[3] = &unk_1E877ED90;
      v20 = v11;
      v13 = v11;
      dispatch_async(v12, block);
    }
  }

  v14 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v14);
  v16 = *(this + 2);
  v15 = *(this + 3);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v14);
  os_unfair_lock_lock((v16 + 108));
  v17 = *(v16 + 123);
  os_unfair_lock_unlock((v16 + 108));
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return (v17 >> 17) & 1;
}

TDSNotifier **std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>*,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>*,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>*>(uint64_t a1, TDSNotifier **a2, TDSNotifier **a3, TDSNotifier **a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = *v6;
      *a4 = *v6;
      if (v8)
      {
        TDSNotifier::AddPtrReference(v8);
      }

      ++v6;
      ++a4;
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1E56977F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::GetNotifierList(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 9);
  if (!v3)
  {
    operator new();
  }

  os_unfair_lock_unlock(v2);
  return v3;
}

void sub_1E569790C(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v2, 0x1020C40F61775ADLL);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t TNode::DoExternalRegistration(uint64_t a1, TDSNotifier **a2, int a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v61 = v4;
  if (!v4)
  {
    v19 = 0;
    goto LABEL_39;
  }

  TDSNotifier::AddPtrReference(v4);
  NotifierList = TNode::GetNotifierList(a1);
  v8 = *(NotifierList + 24);
  v7 = *(NotifierList + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = TNode::VirtualType(a1);
  v10 = v9;
  v11 = TNode::InfoLock(v9);
  os_unfair_lock_lock(v11);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v11);
    v14 = *(v13 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_11:
    os_unfair_lock_lock(v8);
    v20 = *(v8 + 4);
    os_unfair_lock_unlock(v8);
    if ((v20 & 1) == 0 && TNode::FSNotificationsSupported(a1))
    {
      TNode::SubscribeForFSNotification(a1);
      os_unfair_lock_lock(v8);
      *(v8 + 4) = 1;
      os_unfair_lock_unlock(v8);
    }

    if (a3)
    {
      *&buf = v61[3];
      TProgressMap::AddSubscriberForExternalProgress(&buf, v21);
    }

    goto LABEL_36;
  }

  os_unfair_lock_unlock(v11);
  if (!*(v13 + 120))
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v10 == 27)
  {
    if (a3)
    {
      v16 = objc_opt_new();
      TNodePtr::TNodePtr(&buf, a1);
      TNodePtr::operator=(v16 + 1, &buf);

      v17 = v16;
      os_unfair_lock_lock(v8);
      v18 = *(v8 + 8);
      *(v8 + 8) = v17;

      os_unfair_lock_unlock(v8);
      [v17 startObserving];
    }

    goto LABEL_36;
  }

  v22 = TNode::InfoLock(v15);
  os_unfair_lock_lock(v22);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v22);
  IsFPv2 = TFSInfo::IsFPv2(v24, 1);
  v26 = IsFPv2;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v26)
  {
    if (a3)
    {
      v27 = TNode::InfoLock(IsFPv2);
      os_unfair_lock_lock(v27);
      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v27);
      v30 = TFSInfo::GetFPItem(v29);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v31 = TNode::FPItemsCollection(a1, v30);

      v32 = *(a1 + 56);
      TNodePtr::TNodePtr(&v58, a1);
      TNode::GetVolumeInfo(a1, &buf);
      v33 = TFSVolumeInfo::GetSynchingGCDQueue(buf);
      TChildrenList::StartCollectionStatusObserver(v32, v31, &v58, v33, 0);

      if (*(&buf + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
      }
    }

    goto LABEL_36;
  }

  if ((v10 & 0xFE) != 0x18)
  {
    v60 = 0;
    IsNetworkNode = TNode::IsNetworkNode(a1, 0x6E74776B);
    if (IsNetworkNode || (IsNetworkNode = TNode::IsNetworkNode(a1, 0x6E747362)) || (IsNetworkNode = TNode::IsNetworkNode(a1, 0x6D74726D)))
    {
      v43 = TNode::InfoLock(IsNetworkNode);
      os_unfair_lock_lock(v43);
      v45 = *(a1 + 16);
      v44 = *(a1 + 24);
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v43);
      v46 = TFSInfo::CopySFBrowserRef(v45);
      v60 = v46;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (v46)
      {
        RootNode = SFBrowserGetRootNode();
        os_unfair_lock_lock(v8);
        v48 = *(v8 + 5);
        os_unfair_lock_unlock(v8);
        if ((v48 & 1) == 0)
        {
          LOBYTE(v58.fFINode) = 0;
          atomic_fetch_and((a1 + 88), 0xFFF7u);
          atomic_fetch_and((a1 + 88), 0xFFEFu);
          TNode::HandleSyncStarted(a1, 276824064, &v58);
          v57 = 0;
          v49 = TFSInfo::BrowserOpenNode(v60, RootNode, 0, 0, &v57);
          if (LOBYTE(v58.fFINode) == 1)
          {
            atomic_fetch_or((a1 + 88), 0x20u);
            if (v57)
            {
              v50 = dispatch_time(0, 3000000000);
              v51 = dispatch_get_global_queue(0, 0);
              v55[0] = MEMORY[0x1E69E9820];
              v55[1] = 3321888768;
              v55[2] = ___ZN5TNode22DoExternalRegistrationERK4TRefIP11TDSNotifier20TRetainReleasePolicyIS2_EEb_block_invoke;
              v55[3] = &__block_descriptor_40_ea8_32c94_ZTSKZN5TNode22DoExternalRegistrationERK4TRefIP11TDSNotifier20TRetainReleasePolicyIS2_EEbE3__0_e5_v8__0l;
              TNodePtr::TNodePtr(&buf, a1);
              v56 = buf;
              dispatch_after(v50, v51, v55);
            }

            else if ((atomic_fetch_and((a1 + 88), 0xFFDFu) & 0x20) != 0)
            {
              TNode::HandleSync(a1, 20971520);
            }
          }

          if (v49)
          {
            v19 = 4294959241;
LABEL_72:
            TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(&v60);
            goto LABEL_37;
          }

          os_unfair_lock_lock(v8);
          *(v8 + 5) = 1;
          os_unfair_lock_unlock(v8);
          v54 = TNode::VirtualType(a1);
          TNodePtr::TNodePtr(&buf, a1);
          TNode::AddNWNode(v54, RootNode, &buf);
        }
      }
    }

    else
    {
      TNode::GetFSInfo(a1, &buf);
      TNode::GetFSInfo(a1, &v58);
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (*(&buf + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
      }
    }

    v19 = 0;
    goto LABEL_72;
  }

  if (!ICloudDriveFPFSEnabled())
  {
LABEL_36:
    v19 = 0;
    goto LABEL_37;
  }

  v34 = iCloudDriveDomainIDForDataSeparated(v10 == 25);
  v35 = v34;
  if (!v34)
  {
    if (v10 == 25)
    {
      v37 = LogObj(3);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      LOWORD(buf) = 0;
      v52 = "No domain id found for enterprise iCloud libraries collection";
    }

    else
    {
      v37 = LogObj(4);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      LOWORD(buf) = 0;
      v52 = "No domain id found for iCloud libraries collection";
    }

    _os_log_impl(&dword_1E5674000, v37, OS_LOG_TYPE_ERROR, v52, &buf, 2u);
    goto LABEL_76;
  }

  v36 = TCachedAppLibraryCollections::Singleton(v34);
  TString::TString(&buf, v35);
  v37 = TCachedAppLibraryCollections::CachedCollection(v36, &buf, 1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&buf);
  if (v37)
  {
    v38 = *(a1 + 56);
    TNodePtr::TNodePtr(&v58, a1);
    TNode::GetVolumeInfo(a1, &buf);
    v39 = TFSVolumeInfo::GetSynchingGCDQueue(buf);
    TChildrenList::StartCollectionStatusObserver(v38, v37, &v58, v39, 0);

    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    v19 = 0;
    goto LABEL_77;
  }

  if (v10 == 25)
  {
    v53 = LogObj(3);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v35;
      _os_log_impl(&dword_1E5674000, v53, OS_LOG_TYPE_ERROR, "No app libraries collection found skipping start observing accountID='%@'", &buf, 0xCu);
    }
  }

  else
  {
    v53 = LogObj(4);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v35;
      _os_log_impl(&dword_1E5674000, v53, OS_LOG_TYPE_ERROR, "No app libraries collection found skipping start observing accountID='%@'", &buf, 0xCu);
    }
  }

LABEL_76:
  v19 = 4294959240;
LABEL_77:

LABEL_37:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_39:
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v61);
  v40 = *MEMORY[0x1E69E9840];
  return v19;
}