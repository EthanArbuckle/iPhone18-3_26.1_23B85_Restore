@interface FINodeObserver
+ (id)observerForFINode:(id)a3 withObserver:(id)a4;
+ (id)observerForProxy:(id)a3 subjectNode:(id)a4;
+ (id)propertyName:(unsigned int)a3;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation FINodeObserver

+ (id)observerForFINode:(id)a3 withObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  {
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3321888768;
      v17[2] = __49__FINodeObserver_observerForFINode_withObserver___block_invoke;
      v17[3] = &__block_descriptor_33_ea8_32c62_ZTSKZ49__FINodeObserver_observerForFINode_withObserver__E3__1_e27_v16__0__OpaqueEventQueue__8l;
      +[FINodeObserver observerForFINode:withObserver:]::sNodeEventQueue = NodeNewEventQueueWithTickleBlock(v17);
    }
  }

  objc_initWeak(&location, v6);
  objc_initWeak(&from, v7);
  objc_storeStrong(objc_alloc_init(FINodeObserver) + 1, a3);
  v8 = +[FINodeObserver observerForFINode:withObserver:]::sNodeEventQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __49__FINodeObserver_observerForFINode_withObserver___block_invoke_27;
  v12[3] = &__block_descriptor_48_ea8_32c62_ZTSKZ49__FINodeObserver_observerForFINode_withObserver__E3__2_e21_v16__0__FINodeEvent_8l;
  objc_copyWeak(&to, &from);
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v13, &to);
  objc_copyWeak(&v14, &v11);
  NodeNewChangeHandlerOnQueue(v8, v12, MEMORY[0x1E69E96A0]);
}

void __49__FINodeObserver_observerForFINode_withObserver___block_invoke_27(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_cast<FIDSNode,FINode * {__strong}>(WeakRetained);

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (v4 && v5)
  {
    [v4 dispatchEvent:v7 forObserver:v5];
  }
}

+ (id)observerForProxy:(id)a3 subjectNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  {
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3321888768;
      v13[2] = __47__FINodeObserver_observerForProxy_subjectNode___block_invoke;
      v13[3] = &__block_descriptor_33_ea8_32c60_ZTSKZ47__FINodeObserver_observerForProxy_subjectNode__E3__3_e27_v16__0__OpaqueEventQueue__8l;
      +[FINodeObserver observerForProxy:subjectNode:]::sNodeEventQueue = NodeNewEventQueueWithTickleBlock(v13);
    }
  }

  objc_initWeak(&location, v5);
  objc_storeStrong(objc_alloc_init(FINodeObserver) + 1, a4);
  v7 = +[FINodeObserver observerForProxy:subjectNode:]::sNodeEventQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = __47__FINodeObserver_observerForProxy_subjectNode___block_invoke_33;
  v10[3] = &__block_descriptor_40_ea8_32c60_ZTSKZ47__FINodeObserver_observerForProxy_subjectNode__E3__4_e21_v16__0__FINodeEvent_8l;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v11, &v9);
  NodeNewChangeHandlerOnQueue(v7, v10, MEMORY[0x1E69E96A0]);
}

void __47__FINodeObserver_observerForProxy_subjectNode___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispatchNodeEvent:v3];
}

+ (id)propertyName:(unsigned int)a3
{
  PropertyToString(a3, &v5);
  v3 = v5;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5);

  return v3;
}

- (void)dealloc
{
  NodeDisposeNotifier(self->_notifier);
  v3.receiver = self;
  v3.super_class = FINodeObserver;
  [(FINodeObserver *)&v3 dealloc];
}

- (id)debugDescription
{
  v14.receiver = self;
  v14.super_class = FINodeObserver;
  v3 = [(FINodeObserver *)&v14 debugDescription];
  v15.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v15, v3);

  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], " ", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v18.fString.fRef = v5;
  v13.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v13, v5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  fRef = v15.fString.fRef;
  v16.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  MutableCopy = CFStringCreateMutableCopy(v4, 0, fRef);
  CFRelease(&stru_1F5F42870);
  v16.fString.fRef = MutableCopy;
  TString::Append(&v16, &v13);
  v8 = [(FINode *)self->_observedNode debugDescription];
  v18.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v18, v8);

  v9 = v16.fString.fRef;
  v17 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v10 = CFStringCreateMutableCopy(v4, 0, v9);
  CFRelease(&stru_1F5F42870);
  v17 = v10;
  TString::Append(&v17, &v18);
  v11 = v17;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);

  return v11;
}

@end