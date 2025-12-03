@interface IEPatternizer
- (BOOL)generateCATs:(id)ts noOverwrite:(BOOL)overwrite deleteText:(BOOL)text userParamTypes:(id)types;
- (BOOL)generatePatterns:(id)patterns noOverwrite:(BOOL)overwrite deleteText:(BOOL)text userParamTypes:(id)types;
- (BOOL)updateCATMetadata:(id)metadata withMeta:(id)meta;
@end

@implementation IEPatternizer

- (BOOL)generatePatterns:(id)patterns noOverwrite:(BOOL)overwrite deleteText:(BOOL)text userParamTypes:(id)types
{
  patternsCopy = patterns;
  typesCopy = types;
  if ((atomic_load_explicit(&qword_280AF4428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4428))
  {
    _MergedGlobals_11 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4428);
  }

  v9 = os_signpost_id_generate(_MergedGlobals_11);
  v10 = _MergedGlobals_11;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "generatePatterns(flowFile:noOverwrite:deleteText:userParamTypes:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "generatePatterns(flowFile:noOverwrite:deleteText:userParamTypes:)");
  siri::intelligence::Timer::Timer(&v14);
}

void __72__IEPatternizer_generatePatterns_noOverwrite_deleteText_userParamTypes___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'generatePatterns(flowFile:noOverwrite:deleteText:userParamTypes:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = _MergedGlobals_11;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "generatePatterns(flowFile:noOverwrite:deleteText:userParamTypes:)", "", buf, 2u);
  }
}

- (BOOL)generateCATs:(id)ts noOverwrite:(BOOL)overwrite deleteText:(BOOL)text userParamTypes:(id)types
{
  tsCopy = ts;
  typesCopy = types;
  if ((atomic_load_explicit(&qword_280AF4438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4438))
  {
    qword_280AF4430 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4438);
  }

  v9 = os_signpost_id_generate(qword_280AF4430);
  v10 = qword_280AF4430;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "generateCATs(flowFile:noOverwrite:deleteText:userParamTypes:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "generateCATs(flowFile:noOverwrite:deleteText:userParamTypes:)");
  siri::intelligence::Timer::Timer(&v14);
}

void __68__IEPatternizer_generateCATs_noOverwrite_deleteText_userParamTypes___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'generateCATs(flowFile:noOverwrite:deleteText:userParamTypes:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF4430;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "generateCATs(flowFile:noOverwrite:deleteText:userParamTypes:)", "", buf, 2u);
  }
}

- (BOOL)updateCATMetadata:(id)metadata withMeta:(id)meta
{
  metadataCopy = metadata;
  metaCopy = meta;
  if ((atomic_load_explicit(&qword_280AF4448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4448))
  {
    qword_280AF4440 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4448);
  }

  v7 = os_signpost_id_generate(qword_280AF4440);
  v8 = qword_280AF4440;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "updateCATMetadata(flowFile:meta:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "updateCATMetadata(flowFile:meta:)");
  siri::intelligence::Timer::Timer(&v12);
}

void __44__IEPatternizer_updateCATMetadata_withMeta___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'updateCATMetadata(flowFile:meta:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF4440;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "updateCATMetadata(flowFile:meta:)", "", buf, 2u);
  }
}

@end