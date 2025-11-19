@interface IEUpdater
- (BOOL)isUpdateAvailable:(id)a3;
- (BOOL)updateToLatest:(id)a3;
- (id)getFileVersion:(id)a3;
- (id)getHighestVersionWithinRelease:(id)a3;
@end

@implementation IEUpdater

- (id)getFileVersion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v3 UTF8String]);
    siri::intelligence::Updater::GetFileVersion(__p);
  }

  return &stru_28671CC40;
}

- (BOOL)updateToLatest:(id)a3
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_280AF4F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4F48))
  {
    _MergedGlobals_27 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4F48);
  }

  v4 = os_signpost_id_generate(_MergedGlobals_27);
  v5 = _MergedGlobals_27;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "updateToLatest(flowFile:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "updateToLatest(flowFile:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __28__IEUpdater_updateToLatest___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'updateToLatest(flowFile:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = _MergedGlobals_27;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "updateToLatest(flowFile:)", "", buf, 2u);
  }
}

- (BOOL)isUpdateAvailable:(id)a3
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_280AF4F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4F58))
  {
    qword_280AF4F50 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4F58);
  }

  v4 = os_signpost_id_generate(qword_280AF4F50);
  v5 = qword_280AF4F50;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "isUpdateAvailable(version:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "isUpdateAvailable(version:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __31__IEUpdater_isUpdateAvailable___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'isUpdateAvailable(version:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF4F50;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "isUpdateAvailable(version:)", "", buf, 2u);
  }
}

- (id)getHighestVersionWithinRelease:(id)a3
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_280AF4F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4F68))
  {
    qword_280AF4F60 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4F68);
  }

  v4 = os_signpost_id_generate(qword_280AF4F60);
  v5 = qword_280AF4F60;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "highestVersionWithinRelease(version:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "highestVersionWithinRelease(version:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __44__IEUpdater_getHighestVersionWithinRelease___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'highestVersionWithinRelease(version:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF4F60;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "highestVersionWithinRelease(version:)", "", buf, 2u);
  }
}

@end