@interface IEValidator
- (id)validate:(id)validate;
- (id)validate:(id)validate srcFilename:(id)filename;
@end

@implementation IEValidator

- (id)validate:(id)validate
{
  v3 = [(IEValidator *)self validate:validate srcFilename:&stru_28671CC40];

  return v3;
}

- (id)validate:(id)validate srcFilename:(id)filename
{
  validate;
  filenameCopy = filename;
  if ((atomic_load_explicit(&qword_280AF4848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4848))
  {
    _MergedGlobals_19 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4848);
  }

  v6 = os_signpost_id_generate(_MergedGlobals_19);
  v7 = _MergedGlobals_19;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "validate(filename:srcFilename:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "validate(filename:srcFilename:)");
  siri::intelligence::Timer::Timer(&v11);
}

void __36__IEValidator_validate_srcFilename___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'validate(filename:srcFilename:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = _MergedGlobals_19;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "validate(filename:srcFilename:)", "", buf, 2u);
  }
}

@end