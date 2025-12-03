@interface IEConverter
- (BOOL)convertFile:(id)file withFormat:(unint64_t)format;
@end

@implementation IEConverter

- (BOOL)convertFile:(id)file withFormat:(unint64_t)format
{
  fileCopy = file;
  if ((atomic_load_explicit(&qword_280AF4240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4240))
  {
    _MergedGlobals_6 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4240);
  }

  v5 = os_signpost_id_generate(_MergedGlobals_6);
  v6 = _MergedGlobals_6;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "convertFile(flowFile:format:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "convertFile(flowFile:format:)");
  siri::intelligence::Timer::Timer(&v10);
}

void __38__IEConverter_convertFile_withFormat___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'convertFile(flowFile:format:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = _MergedGlobals_6;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "convertFile(flowFile:format:)", "", buf, 2u);
  }
}

@end