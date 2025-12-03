@interface IENLGenerator
- (BOOL)fromCATI:(id)i withOutputFile:(id)file;
- (BOOL)fromCATI:(id)i withOutputFile:(id)file withCATIManifest:(id)manifest withEnsemble:(id)ensemble;
@end

@implementation IENLGenerator

- (BOOL)fromCATI:(id)i withOutputFile:(id)file
{
  iCopy = i;
  fileCopy = file;
  if ((atomic_load_explicit(&qword_280AF4200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4200))
  {
    _MergedGlobals_4 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4200);
  }

  v7 = os_signpost_id_generate(_MergedGlobals_4);
  v8 = _MergedGlobals_4;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fromCATI(flowFile:outputFile:ensemble:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "fromCATI(flowFile:outputFile:ensemble:)");
  siri::intelligence::Timer::Timer(&v12);
}

void __41__IENLGenerator_fromCATI_withOutputFile___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'fromCATI(flowFile:outputFile:ensemble:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = _MergedGlobals_4;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fromCATI(flowFile:outputFile:ensemble:)", "", buf, 2u);
  }
}

- (BOOL)fromCATI:(id)i withOutputFile:(id)file withCATIManifest:(id)manifest withEnsemble:(id)ensemble
{
  iCopy = i;
  fileCopy = file;
  manifestCopy = manifest;
  ensembleCopy = ensemble;
  if ((atomic_load_explicit(&qword_280AF4210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4210))
  {
    qword_280AF4208 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4210);
  }

  v13 = os_signpost_id_generate(qword_280AF4208);
  v14 = qword_280AF4208;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "fromCATI(flowFile:outputFile:manifestFile:ensemble:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "fromCATI(flowFile:outputFile:manifestFile:ensemble:)");
  siri::intelligence::Timer::Timer(&v18);
}

void __71__IENLGenerator_fromCATI_withOutputFile_withCATIManifest_withEnsemble___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'fromCATI(flowFile:outputFile:manifestFile:ensemble:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF4208;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fromCATI(flowFile:outputFile:manifestFile:ensemble:)", "", buf, 2u);
  }
}

@end