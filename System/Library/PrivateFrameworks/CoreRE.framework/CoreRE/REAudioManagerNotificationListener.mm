@interface REAudioManagerNotificationListener
- (AVAudioSession)audioSessionToFollow;
- (REAudioManagerNotificationListener)initWithOwner:(void *)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)servicesLost:(id)a3;
- (void)servicesReset:(id)a3;
- (void)sessionInterrupted:(id)a3;
- (void)stop;
@end

@implementation REAudioManagerNotificationListener

- (REAudioManagerNotificationListener)initWithOwner:(void *)a3
{
  v18.receiver = self;
  v18.super_class = REAudioManagerNotificationListener;
  v4 = [(REAudioManagerNotificationListener *)&v18 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = a3;
    objc_initWeak(&location, v4);
    v6 = dispatch_get_global_queue(33, 0);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __52__REAudioManagerNotificationListener_initWithOwner___block_invoke;
    v15 = &unk_1E871BCD0;
    objc_copyWeak(&v16, &location);
    dispatch_async(v6, &v12);

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel_servicesLost_ name:*MEMORY[0x1E698D5B0] object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v5 selector:sel_servicesReset_ name:*MEMORY[0x1E698D5C0] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel_sessionInterrupted_ name:*MEMORY[0x1E698D6D0] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v5 selector:sel_sessionInterrupted_ name:*MEMORY[0x1E698D558] object:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __52__REAudioManagerNotificationListener_initWithOwner___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E698D710] sharedInstance];
    os_unfair_lock_lock(v5 + 6);
    v4 = *&v5[4]._os_unfair_lock_opaque;
    *&v5[4]._os_unfair_lock_opaque = v3;

    os_unfair_lock_unlock(v5 + 6);
    objc_autoreleasePoolPop(v2);
    WeakRetained = v5;
  }
}

- (AVAudioSession)audioSessionToFollow
{
  os_unfair_lock_lock(self + 6);
  v3 = *(self + 2);
  os_unfair_lock_unlock(self + 6);

  return v3;
}

- (void)stop
{
  *(self + 1) = 0;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)dealloc
{
  std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::clear(self + 32);
  [(REAudioManagerNotificationListener *)self stop];
  v3.receiver = self;
  v3.super_class = REAudioManagerNotificationListener;
  [(REAudioManagerNotificationListener *)&v3 dealloc];
}

- (void)servicesLost:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(self + 1);
  if (v5)
  {
    os_unfair_lock_lock(self + 6);
    v6 = *(self + 2);
    os_unfair_lock_unlock(self + 6);
    v7 = [v4 object];

    v9 = re::audioLogObjects(v8);
    v10 = *v9;
    if (v7 == v6)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "AudioManager media services lost notification", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      v13 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__REAudioManagerNotificationListener_servicesLost___block_invoke;
      block[3] = &unk_1E871BCF8;
      objc_copyWeak(v16, &buf);
      v16[1] = v5;
      v15 = v4;
      dispatch_async(v13, block);

      objc_destroyWeak(v16);
      objc_destroyWeak(&buf);
    }

    else
    {
      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 object];
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = [v12 opaqueSessionID];
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] Ignoring media services lost notification for audio session 0x%x", &buf, 8u);
      }
    }
  }
}

void __51__REAudioManagerNotificationListener_servicesLost___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 1))
    {
      REAudioServicesNotificationCallbackRegistry::getCallbacksForType(WeakRetained + 32, 2, v19);
      v4 = *v19;
      v5 = v20;
      while (v4 != v5)
      {
        v6 = _Block_copy(*v4);
        v6[2]();

        ++v4;
      }

      v7 = objc_autoreleasePoolPush();
      v8 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "AudioManager media services lost notification: Fetching new session...", buf, 2u);
      }

      v9 = [MEMORY[0x1E698D710] sharedInstance];
      v10 = *re::audioLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "AudioManager media services lost notification: Fetching new session complete: %@", buf, 0xCu);
      }

      os_unfair_lock_lock(v3 + 6);
      v11 = *&v3[4]._os_unfair_lock_opaque;
      *&v3[4]._os_unfair_lock_opaque = v9;

      os_unfair_lock_unlock(v3 + 6);
      objc_autoreleasePoolPop(v7);
      v12 = (*(**(a1 + 48) + 64))(*(a1 + 48));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__REAudioManagerNotificationListener_servicesLost___block_invoke_10;
      block[3] = &unk_1E871BCF8;
      objc_copyWeak(v18, (a1 + 40));
      v13 = *(a1 + 32);
      v14 = *(a1 + 48);
      v17 = v13;
      v18[1] = v14;
      dispatch_async(v12, block);

      objc_destroyWeak(v18);
      *buf = v19;
      std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    else
    {
      v15 = *re::audioLogObjects(WeakRetained);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "AudioManager media services lost notification: handler has gone away, doing nothing.", v19, 2u);
      }
    }
  }
}

void __51__REAudioManagerNotificationListener_servicesLost___block_invoke_10(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[1])
    {
      (*(**(a1 + 48) + 120))(*(a1 + 48), 2);
    }

    else
    {
      v4 = *re::audioLogObjects(WeakRetained);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] Media services interrupted, but engine was shutdown. %@", &v6, 0xCu);
      }
    }
  }
}

- (void)servicesReset:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(self + 1);
  if (v5)
  {
    os_unfair_lock_lock(self + 6);
    v6 = *(self + 2);
    os_unfair_lock_unlock(self + 6);
    v7 = [v4 object];

    v9 = re::audioLogObjects(v8);
    v10 = *v9;
    if (v7 == v6)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] AudioManager media services reset notification.", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      v13 = dispatch_get_global_queue(33, 0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__REAudioManagerNotificationListener_servicesReset___block_invoke;
      v14[3] = &unk_1E871BD48;
      objc_copyWeak(v16, &buf);
      v16[1] = v5;
      v14[4] = self;
      v15 = v4;
      dispatch_async(v13, v14);

      objc_destroyWeak(v16);
      objc_destroyWeak(&buf);
    }

    else
    {
      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 object];
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = [v12 opaqueSessionID];
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] Ignoring media services reset notification for audio session 0x%x", &buf, 8u);
      }
    }
  }
}

void __52__REAudioManagerNotificationListener_servicesReset___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(WeakRetained + 1))
  {
    REAudioServicesNotificationCallbackRegistry::getCallbacksForType(WeakRetained + 32, 3, v20);
    v4 = *v20;
    v5 = v21;
    while (v4 != v5)
    {
      v6 = _Block_copy(*v4);
      v6[2]();

      ++v4;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = *re::audioLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "AudioManager media services reset notification: Fetching new session...", buf, 2u);
    }

    v9 = [MEMORY[0x1E698D710] sharedInstance];
    v10 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "AudioManager media services reset notification: Fetching new session complete: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(v3 + 6);
    v11 = *&v3[4]._os_unfair_lock_opaque;
    *&v3[4]._os_unfair_lock_opaque = v9;

    os_unfair_lock_unlock(v3 + 6);
    objc_autoreleasePoolPop(v7);
    v12 = (*(**(a1 + 56) + 64))(*(a1 + 56));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__REAudioManagerNotificationListener_servicesReset___block_invoke_11;
    block[3] = &unk_1E871BD20;
    v13 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v13;
    v15 = *(a1 + 56);
    v18 = v14;
    v19 = v15;
    dispatch_async(v12, block);

    *buf = v20;
    std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v16 = *re::audioLogObjects(WeakRetained);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "AudioManager media services lost notification: handler has gone away, doing nothing.", v20, 2u);
    }
  }
}

void __52__REAudioManagerNotificationListener_servicesReset___block_invoke_11(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    v2 = *(**(a1 + 48) + 120);

    v2();
  }

  else
  {
    v3 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] Media services recovered, but engine was shutdown. %@", &v5, 0xCu);
    }
  }
}

- (void)sessionInterrupted:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(self + 6);
  v5 = *(self + 2);
  os_unfair_lock_unlock(self + 6);
  v6 = [v4 name];
  if ([v6 isEqualToString:*MEMORY[0x1E698D558]])
  {
    v7 = [v4 object];

    if (v7 != v5)
    {
      v9 = *re::audioLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 object];
        *buf = 138412546;
        v18 = v4;
        v19 = 1024;
        v20 = [v10 opaqueSessionID];
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring interruption notification %@ for audio session 0x%x", buf, 0x12u);
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = *re::audioLogObjects(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Session interrupted %@", buf, 0xCu);
  }

  v12 = *(self + 1);
  if (v12)
  {
    objc_initWeak(buf, self);
    v13 = dispatch_get_global_queue(33, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__REAudioManagerNotificationListener_sessionInterrupted___block_invoke;
    v14[3] = &unk_1E871BD48;
    objc_copyWeak(v16, buf);
    v16[1] = v12;
    v14[4] = self;
    v15 = v4;
    dispatch_async(v13, v14);

    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }

LABEL_11:
}

void __57__REAudioManagerNotificationListener_sessionInterrupted___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(WeakRetained + 1))
  {
    REAudioServicesNotificationCallbackRegistry::getCallbacksForType(WeakRetained + 32, 0, v20);
    v4 = *v20;
    v5 = v21;
    while (v4 != v5)
    {
      v6 = _Block_copy(*v4);
      v6[2]();

      ++v4;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = *re::audioLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "AudioManager media services interrupt notification: Fetching new session...", buf, 2u);
    }

    v9 = [MEMORY[0x1E698D710] sharedInstance];
    v10 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "AudioManager media services interrupt notification: Fetching new session complete: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(v3 + 6);
    v11 = *&v3[4]._os_unfair_lock_opaque;
    *&v3[4]._os_unfair_lock_opaque = v9;

    os_unfair_lock_unlock(v3 + 6);
    objc_autoreleasePoolPop(v7);
    v12 = (*(**(a1 + 56) + 64))(*(a1 + 56));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__REAudioManagerNotificationListener_sessionInterrupted___block_invoke_12;
    block[3] = &unk_1E871BD20;
    v13 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v13;
    v15 = *(a1 + 56);
    v18 = v14;
    v19 = v15;
    dispatch_async(v12, block);

    *buf = v20;
    std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v16 = *re::audioLogObjects(WeakRetained);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "AudioManager media services interrupted notification: handler has gone away, doing nothing.", v20, 2u);
    }
  }
}

void __57__REAudioManagerNotificationListener_sessionInterrupted___block_invoke_12(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    v2 = [*(a1 + 40) name];
    v3 = [v2 isEqualToString:*MEMORY[0x1E698D558]];

    if (!v3 || ([*(a1 + 40) userInfo], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "valueForKey:", *MEMORY[0x1E698D588]), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "intValue"), v6, v5, objc_msgSend(*(a1 + 40), "userInfo"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "valueForKey:", *MEMORY[0x1E698D560]), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "intValue"), v9, v8, !v7) && (v10 & 1) != 0)
    {
      v11 = *re::audioLogObjects(v4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Resetting session and engine", &v14, 2u);
      }

      (*(**(a1 + 48) + 120))(*(a1 + 48), 0);
    }
  }

  else
  {
    v12 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Session interrupted, but engine was shutdown. %@", &v14, 0xCu);
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  return self;
}

@end