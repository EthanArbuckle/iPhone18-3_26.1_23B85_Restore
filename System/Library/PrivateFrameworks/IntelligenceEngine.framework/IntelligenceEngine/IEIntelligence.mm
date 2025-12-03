@interface IEIntelligence
- (BOOL)hasActiveFallback;
- (BOOL)isActive;
- (BOOL)load:(id)load;
- (BOOL)load:(id)load withFlowId:(id)id;
- (BOOL)load:(id)load withId:(id)id;
- (BOOL)loadFromString:(id)string;
- (BOOL)setVariable:(id)variable withValue:(id)value;
- (BOOL)willHandleDirectInvocation:(id)invocation;
- (BOOL)willHandleEvent:(id)event;
- (IEIntelligence)init;
- (_BYTE)setExtensions:;
- (id)activeEvents;
- (id)activeLocalEvents;
- (id)find:(id)find withId:(id)id;
- (id)findInTemplateDir:(id)dir withId:(id)id;
- (id)getActiveEventsWithScope:(int)scope;
- (id)getChangedPersistentVariables;
- (id)getConditions;
- (id)getEvents;
- (id)getExitValue;
- (id)getInputGroup:(id)group;
- (id)getMetadata:(id)metadata;
- (id)getRemainingResponses;
- (id)getUndo;
- (id)getVariables;
- (id)goTo:(id)to;
- (id)processActivity:(id)activity;
- (id)processDirectInvocation:(id)invocation;
- (id)processEvent:(id)event;
- (id)processText:(id)text;
- (id)processText:(id)text withMode:(unint64_t)mode withFallback:(unint64_t)fallback;
- (id)setExtensions:;
- (id)startConversation;
- (uint64_t)setExtensions:;
- (void)dealloc;
- (void)setExtensions:;
- (void)setExtensions:(id)extensions;
@end

@implementation IEIntelligence

- (IEIntelligence)init
{
  if ((ModuleInitialization(void)::sModuleInitialized & 1) == 0)
  {
    ModuleInitialization(void)::sModuleInitialized = 1;
    siri::intelligence::Utils::SetRandomNumberGeneratorSeed(self);
  }

  v3.receiver = self;
  v3.super_class = IEIntelligence;
  if ([(IEIntelligence *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mIntelligence = self->mIntelligence;
  if (mIntelligence)
  {
    v4 = *(mIntelligence + 1);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x259C29D90](mIntelligence, 0x20C40A4A59CD2);
  }

  v5.receiver = self;
  v5.super_class = IEIntelligence;
  [(IEIntelligence *)&v5 dealloc];
}

- (BOOL)load:(id)load
{
  loadCopy = load;
  if ((atomic_load_explicit(&qword_280AF3E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3E80))
  {
    _MergedGlobals_1 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3E80);
  }

  v4 = os_signpost_id_generate(_MergedGlobals_1);
  v5 = _MergedGlobals_1;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "load(filename:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "load(filename:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __23__IEIntelligence_load___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'load(filename:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = _MergedGlobals_1;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "load(filename:)", "", buf, 2u);
  }
}

- (BOOL)load:(id)load withFlowId:(id)id
{
  loadCopy = load;
  idCopy = id;
  if ((atomic_load_explicit(&qword_280AF3E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3E90))
  {
    qword_280AF3E88 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3E90);
  }

  v7 = os_signpost_id_generate(qword_280AF3E88);
  v8 = qword_280AF3E88;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "load(templateDir:flowId:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "load(templateDir:flowId:)");
  siri::intelligence::Timer::Timer(&v12);
}

void __34__IEIntelligence_load_withFlowId___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'load(templateDir:flowId:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3E88;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "load(templateDir:flowId:)", "", buf, 2u);
  }
}

- (BOOL)load:(id)load withId:(id)id
{
  loadCopy = load;
  idCopy = id;
  if ((atomic_load_explicit(&qword_280AF3EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3EA0))
  {
    qword_280AF3E98 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3EA0);
  }

  v7 = os_signpost_id_generate(qword_280AF3E98);
  v8 = qword_280AF3E98;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "load(bundle:flowId:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "load(bundle:flowId:)");
  siri::intelligence::Timer::Timer(&v12);
}

void __30__IEIntelligence_load_withId___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'load(bundle:flowId:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3E98;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "load(bundle:flowId:)", "", buf, 2u);
  }
}

- (BOOL)loadFromString:(id)string
{
  stringCopy = string;
  if ((atomic_load_explicit(&qword_280AF3EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3EB0))
  {
    qword_280AF3EA8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3EB0);
  }

  v4 = os_signpost_id_generate(qword_280AF3EA8);
  v5 = qword_280AF3EA8;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "load(string:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "load(string:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __33__IEIntelligence_loadFromString___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'load(string:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3EA8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "load(string:)", "", buf, 2u);
  }
}

- (id)find:(id)find withId:(id)id
{
  findCopy = find;
  idCopy = id;
  if ((atomic_load_explicit(&qword_280AF3EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3EC0))
  {
    qword_280AF3EB8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3EC0);
  }

  v7 = os_signpost_id_generate(qword_280AF3EB8);
  v8 = qword_280AF3EB8;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "find(bundle:flowId:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "find(bundle:flowId:)");
  siri::intelligence::Timer::Timer(&v12);
}

void __30__IEIntelligence_find_withId___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'find(bundle:flowId:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3EB8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "find(bundle:flowId:)", "", buf, 2u);
  }
}

- (id)findInTemplateDir:(id)dir withId:(id)id
{
  dirCopy = dir;
  idCopy = id;
  if ((atomic_load_explicit(&qword_280AF3ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3ED0))
  {
    qword_280AF3EC8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3ED0);
  }

  v7 = os_signpost_id_generate(qword_280AF3EC8);
  v8 = qword_280AF3EC8;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "find(templateDir:flowId:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "find(templateDir:flowId:)");
  siri::intelligence::Timer::Timer(&v12);
}

void __43__IEIntelligence_findInTemplateDir_withId___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'find(templateDir:flowId:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3EC8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "find(templateDir:flowId:)", "", buf, 2u);
  }
}

- (id)startConversation
{
  if ((atomic_load_explicit(&qword_280AF3EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3EE0))
  {
    qword_280AF3ED8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3EE0);
  }

  v2 = os_signpost_id_generate(qword_280AF3ED8);
  v3 = qword_280AF3ED8;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "start()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "start()");
  siri::intelligence::Timer::Timer(&v7);
}

void __35__IEIntelligence_startConversation__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'start()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3ED8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "start()", "", buf, 2u);
  }
}

- (id)processEvent:(id)event
{
  eventCopy = event;
  if ((atomic_load_explicit(&qword_280AF3EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3EF0))
  {
    qword_280AF3EE8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3EF0);
  }

  v4 = os_signpost_id_generate(qword_280AF3EE8);
  v5 = qword_280AF3EE8;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "process(event:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "process(event:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __31__IEIntelligence_processEvent___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'process(event:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3EE8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "process(event:)", "", buf, 2u);
  }
}

- (id)processText:(id)text withMode:(unint64_t)mode withFallback:(unint64_t)fallback
{
  textCopy = text;
  if ((atomic_load_explicit(&qword_280AF3F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F00))
  {
    qword_280AF3EF8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F00);
  }

  v6 = os_signpost_id_generate(qword_280AF3EF8);
  v7 = qword_280AF3EF8;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "process(text:mode:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "process(text:mode:)");
  siri::intelligence::Timer::Timer(&v11);
}

void __52__IEIntelligence_processText_withMode_withFallback___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'process(text:mode:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3EF8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "process(text:mode:)", "", buf, 2u);
  }
}

- (id)processText:(id)text
{
  v3 = [(IEIntelligence *)self processText:text withMode:1 withFallback:0];

  return v3;
}

- (id)processActivity:(id)activity
{
  activityCopy = activity;
  if ((atomic_load_explicit(&qword_280AF3F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F10))
  {
    qword_280AF3F08 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F10);
  }

  v4 = os_signpost_id_generate(qword_280AF3F08);
  v5 = qword_280AF3F08;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "process(activityId:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "process(activityId:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __34__IEIntelligence_processActivity___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'process(activityId:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F08;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "process(activityId:)", "", buf, 2u);
  }
}

- (id)getRemainingResponses
{
  if ((atomic_load_explicit(&qword_280AF3F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F20))
  {
    qword_280AF3F18 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F20);
  }

  v2 = os_signpost_id_generate(qword_280AF3F18);
  v3 = qword_280AF3F18;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "remainingResponses()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "remainingResponses()");
  siri::intelligence::Timer::Timer(&v7);
}

void __39__IEIntelligence_getRemainingResponses__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'remainingResponses()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F18;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "remainingResponses()", "", buf, 2u);
  }
}

- (id)goTo:(id)to
{
  toCopy = to;
  if ((atomic_load_explicit(&qword_280AF3F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F30))
  {
    qword_280AF3F28 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F30);
  }

  v4 = os_signpost_id_generate(qword_280AF3F28);
  v5 = qword_280AF3F28;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "goTo(responseId:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "goTo(responseId:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __23__IEIntelligence_goTo___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'goTo(responseId:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F28;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "goTo(responseId:)", "", buf, 2u);
  }
}

- (BOOL)willHandleEvent:(id)event
{
  eventCopy = event;
  if ((atomic_load_explicit(&qword_280AF3F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F40))
  {
    qword_280AF3F38 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F40);
  }

  v4 = os_signpost_id_generate(qword_280AF3F38);
  v5 = qword_280AF3F38;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "willHandle(event:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "willHandle(event:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __34__IEIntelligence_willHandleEvent___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'willHandle(event:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F38;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "willHandle(event:)", "", buf, 2u);
  }
}

- (id)getEvents
{
  if ((atomic_load_explicit(&qword_280AF3F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F50))
  {
    qword_280AF3F48 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F50);
  }

  v2 = os_signpost_id_generate(qword_280AF3F48);
  v3 = qword_280AF3F48;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "events()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "events()");
  siri::intelligence::Timer::Timer(&v7);
}

void __27__IEIntelligence_getEvents__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'events()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F48;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "events()", "", buf, 2u);
  }
}

- (id)getActiveEventsWithScope:(int)scope
{
  v5 = objc_opt_new();
  if ([(IEIntelligence *)self isActive])
  {
    siri::intelligence::Intelligence::GetActiveIntents(self->mIntelligence, scope, &v13);
    v6 = v13;
    for (i = v14; v6 != i; v6 += 16)
    {
      v8 = *(v6 + 8);
      v11 = *v6;
      v12 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = IE_IntentToIEEvent(&v11);
      [v5 addObject:{v9, v11}];

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    v15 = &v13;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  return v5;
}

- (id)activeEvents
{
  if ((atomic_load_explicit(&qword_280AF3F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F60))
  {
    qword_280AF3F58 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F60);
  }

  v2 = os_signpost_id_generate(qword_280AF3F58);
  v3 = qword_280AF3F58;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "activeEvents()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "activeEvents()");
  siri::intelligence::Timer::Timer(&v7);
}

void __30__IEIntelligence_activeEvents__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'activeEvents()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F58;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "activeEvents()", "", buf, 2u);
  }
}

- (id)activeLocalEvents
{
  if ((atomic_load_explicit(&qword_280AF3F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F70))
  {
    qword_280AF3F68 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F70);
  }

  v2 = os_signpost_id_generate(qword_280AF3F68);
  v3 = qword_280AF3F68;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "activeLocalEvents()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "activeLocalEvents()");
  siri::intelligence::Timer::Timer(&v7);
}

void __35__IEIntelligence_activeLocalEvents__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'activeLocalEvents()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F68;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "activeLocalEvents()", "", buf, 2u);
  }
}

- (BOOL)hasActiveFallback
{
  if ((atomic_load_explicit(&qword_280AF3F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F80))
  {
    qword_280AF3F78 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F80);
  }

  v2 = os_signpost_id_generate(qword_280AF3F78);
  v3 = qword_280AF3F78;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "hasActiveFallback()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "hasActiveFallback()");
  siri::intelligence::Timer::Timer(&v7);
}

void __35__IEIntelligence_hasActiveFallback__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'hasActiveFallback()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F78;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "hasActiveFallback()", "", buf, 2u);
  }
}

- (BOOL)willHandleDirectInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ((atomic_load_explicit(&qword_280AF3F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3F90))
  {
    qword_280AF3F88 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3F90);
  }

  v4 = os_signpost_id_generate(qword_280AF3F88);
  v5 = qword_280AF3F88;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "willHandle(invocation:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "willHandle(invocation:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __45__IEIntelligence_willHandleDirectInvocation___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'willHandle(invocation:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F88;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "willHandle(invocation:)", "", buf, 2u);
  }
}

- (id)processDirectInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ((atomic_load_explicit(&qword_280AF3FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3FA0))
  {
    qword_280AF3F98 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3FA0);
  }

  v4 = os_signpost_id_generate(qword_280AF3F98);
  v5 = qword_280AF3F98;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "process(invocation:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "process(invocation:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __42__IEIntelligence_processDirectInvocation___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'process(invocation:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3F98;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "process(invocation:)", "", buf, 2u);
  }
}

- (id)getInputGroup:(id)group
{
  groupCopy = group;
  if ((atomic_load_explicit(&qword_280AF3FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3FB0))
  {
    qword_280AF3FA8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3FB0);
  }

  v4 = os_signpost_id_generate(qword_280AF3FA8);
  v5 = qword_280AF3FA8;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "inputGroup(id:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "inputGroup(id:)");
  siri::intelligence::Timer::Timer(&v9);
}

void __32__IEIntelligence_getInputGroup___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'inputGroup(id:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3FA8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "inputGroup(id:)", "", buf, 2u);
  }
}

- (BOOL)isActive
{
  if ((atomic_load_explicit(&qword_280AF3FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3FC0))
  {
    qword_280AF3FB8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3FC0);
  }

  v2 = os_signpost_id_generate(qword_280AF3FB8);
  v3 = qword_280AF3FB8;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "isActive()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "isActive()");
  siri::intelligence::Timer::Timer(&v7);
}

void __26__IEIntelligence_isActive__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'isActive()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3FB8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "isActive()", "", buf, 2u);
  }
}

- (id)getVariables
{
  if ((atomic_load_explicit(&qword_280AF3FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3FD0))
  {
    qword_280AF3FC8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3FD0);
  }

  v2 = os_signpost_id_generate(qword_280AF3FC8);
  v3 = qword_280AF3FC8;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "variables()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "variables()");
  siri::intelligence::Timer::Timer(&v7);
}

void __30__IEIntelligence_getVariables__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'variables()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3FC8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "variables()", "", buf, 2u);
  }
}

- (BOOL)setVariable:(id)variable withValue:(id)value
{
  variableCopy = variable;
  valueCopy = value;
  if ((atomic_load_explicit(&qword_280AF3FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3FE0))
  {
    qword_280AF3FD8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3FE0);
  }

  v7 = os_signpost_id_generate(qword_280AF3FD8);
  v8 = qword_280AF3FD8;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "setVariable(name:value:)", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "setVariable(name:value:)");
  siri::intelligence::Timer::Timer(&v12);
}

void __40__IEIntelligence_setVariable_withValue___block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'setVariable(name:value:)' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3FD8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "setVariable(name:value:)", "", buf, 2u);
  }
}

- (id)getChangedPersistentVariables
{
  if ((atomic_load_explicit(&qword_280AF3FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF3FF0))
  {
    qword_280AF3FE8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF3FF0);
  }

  v2 = os_signpost_id_generate(qword_280AF3FE8);
  v3 = qword_280AF3FE8;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "changedPersistentVariables()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "changedPersistentVariables()");
  siri::intelligence::Timer::Timer(&v7);
}

void __47__IEIntelligence_getChangedPersistentVariables__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'changedPersistentVariables()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3FE8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "changedPersistentVariables()", "", buf, 2u);
  }
}

- (id)getConditions
{
  if ((atomic_load_explicit(&qword_280AF4000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4000))
  {
    qword_280AF3FF8 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4000);
  }

  v2 = os_signpost_id_generate(qword_280AF3FF8);
  v3 = qword_280AF3FF8;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *__p = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "conditions()", "", __p, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "conditions()");
  siri::intelligence::Timer::Timer(&v7);
}

void __31__IEIntelligence_getConditions__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'conditions()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF3FF8;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "conditions()", "", buf, 2u);
  }
}

- (id)getExitValue
{
  v7[18] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF4010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4010))
  {
    qword_280AF4008 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    __cxa_guard_release(&qword_280AF4010);
  }

  v2 = os_signpost_id_generate(qword_280AF4008);
  v3 = qword_280AF4008;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "exitValue()", "", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "exitValue()");
  siri::intelligence::Timer::Timer(v7);
}

void __30__IEIntelligence_getExitValue__block_invoke(siri::intelligence::Utils *a1)
{
  siri::intelligence::Utils::GetSecsSinceStart(a1);
  siri::intelligence::Log::Info("< Exiting function 'exitValue()' (took %1.1f ms)", v3, (v2 - *(*(a1 + 5) + 24)) * 10000.0);
  v4 = qword_280AF4008;
  v5 = v4;
  v6 = *(a1 + 6);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C81000, v5, OS_SIGNPOST_INTERVAL_END, v6, "exitValue()", "", buf, 2u);
  }
}

- (id)getUndo
{
  mIntelligence = self->mIntelligence;
  if (mIntelligence)
  {
    v3 = *mIntelligence;
    v5 = *(v3 + 216);
    v4 = *(v3 + 224);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v6 = objc_opt_new();
      v7 = MEMORY[0x277CCACA8];
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *v5, *(v5 + 1));
      }

      else
      {
        v8 = *v5;
        v17.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&v17.__r_.__value_.__l.__data_ = v8;
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v17;
      }

      else
      {
        v9 = v17.__r_.__value_.__r.__words[0];
      }

      v10 = [v7 stringWithUTF8String:v9];
      [v6 setIdentifier:v10];

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      v12 = *(v5 + 3);
      v11 = *(v5 + 4);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v12;
      v16 = v11;
      v13 = IE_VariableToNSObject(&v15);
      [v6 setUserData:v13];

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setExtensions:(id)extensions
{
  v6 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  if (self->mIntelligence)
  {
    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)getMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = *self->mIntelligence;
  std::string::basic_string[abi:ne200100]<0>(__p, [metadataCopy UTF8String]);
  siri::intelligence::FlowGraph::GetMetaData((v5 + 8), __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v11;
  }

  else
  {
    v6 = v11.__r_.__value_.__r.__words[0];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

- (void)setExtensions:
{

  operator delete(self);
}

- (id)setExtensions:
{
  *a2 = &unk_286718F50;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (_BYTE)setExtensions:
{
  v7 = *a3;
  v6 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  v15 = v7;
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = IE_VariableToNSObject(&v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  directInvocationBuilder = [*(self + 8) directInvocationBuilder];
  v12 = [directInvocationBuilder handle:v9 withUserData:v10];

  if (v12)
  {
    uTF8String = [v12 UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return std::string::basic_string[abi:ne200100]<0>(a4, uTF8String);
}

- (uint64_t)setExtensions:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end