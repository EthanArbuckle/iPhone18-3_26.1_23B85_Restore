@interface DYDisplayLinkInterposer
- (DYDisplayLinkInterposer)initWithTarget:(id)target selector:(SEL)selector;
- (void)dealloc;
- (void)forwardDisplayLinkCallback:(id)callback;
@end

@implementation DYDisplayLinkInterposer

- (DYDisplayLinkInterposer)initWithTarget:(id)target selector:(SEL)selector
{
  v11.receiver = self;
  v11.super_class = DYDisplayLinkInterposer;
  v6 = [(DYDisplayLinkInterposer *)&v11 init];
  if (v6)
  {
    v6->_target = target;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v6->_sel = selectorCopy;
    GPUTools::DYLockUtils::Lock(&sDisplayLinkIdleTimeLock, v7);
    if (!spDisplayLinkIdleTime)
    {
      operator new();
    }

    GPUTools::DYLockUtils::Unlock(&sDisplayLinkIdleTimeLock, v9);
  }

  return v6;
}

- (void)forwardDisplayLinkCallback:(id)callback
{
  if (self->_endTimestamp)
  {
    GPUTools::DYLockUtils::Lock(&sDisplayLinkIdleTimeLock, a2);
    v5 = mach_absolute_time() - self->_endTimestamp;
    if (g_DYTimebaseInfo != dword_27F0982A4)
    {
      v5 = __udivti3();
    }

    v6 = spDisplayLinkIdleTime;
    v12[0] = pthread_self();
    v12[2] = v12;
    v7 = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,unsigned long long>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,unsigned long long>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t *&&>,std::tuple<>>(v6, v12);
    v7[3] += v5;
    GPUTools::DYLockUtils::Unlock(&sDisplayLinkIdleTimeLock, v8);
  }

  sel = self->_sel;
  target = self->_target;
  if (sel)
  {
    v11 = self->_sel;
    [target sel];
  }

  else
  {
    [target 0];
  }

  self->_endTimestamp = mach_absolute_time();
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYDisplayLinkInterposer;
  [(DYDisplayLinkInterposer *)&v3 dealloc];
}

@end