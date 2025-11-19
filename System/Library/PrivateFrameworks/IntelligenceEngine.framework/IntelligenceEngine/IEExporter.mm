@interface IEExporter
- (BOOL)exportFile:(id)a3 withExportFile:(id)a4 withFormat:(unint64_t)a5 withOptions:(id)a6;
@end

@implementation IEExporter

- (BOOL)exportFile:(id)a3 withExportFile:(id)a4 withFormat:(unint64_t)a5 withOptions:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  if ((atomic_load_explicit(&qword_280AF4ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4ED8))
  {
    _MergedGlobals_24 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4ED8);
  }

  v11 = os_signpost_id_generate(_MergedGlobals_24);
  v12 = _MergedGlobals_24;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "exportFile(flowFile:exportFile:format:options:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "exportFile(flowFile:exportFile:format:options:)");
  siri::intelligence::Timer::Timer(&v16);
}

void __63__IEExporter_exportFile_withExportFile_withFormat_withOptions___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'exportFile(flowFile:exportFile:format:options:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = _MergedGlobals_24;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "exportFile(flowFile:exportFile:format:options:)", "", buf, 2u);
  }
}

@end