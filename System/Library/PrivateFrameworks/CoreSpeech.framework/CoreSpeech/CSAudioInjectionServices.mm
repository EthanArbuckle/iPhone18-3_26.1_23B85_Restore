@interface CSAudioInjectionServices
+ (BOOL)audioInjectionEnabled;
+ (id)GetConnectionForDaemon:(int)a3;
+ (id)getAudioInjectionXPCConnectionForCoreSpeechD;
+ (void)pingpong:(id)a3 completion:(id)a4;
@end

@implementation CSAudioInjectionServices

+ (id)GetConnectionForDaemon:(int)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 getAudioInjectionXPCConnectionForCoreSpeechD];
  }

  return v5;
}

uint64_t __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices primaryInputDeviceUUIDWithhandlingDaemon:WithCompletion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_25(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices primaryInputDeviceUUIDWithhandlingDaemon:WithCompletion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_26(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices disconnectDeviceWithUUID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);

  v5 = *MEMORY[0x277D85DE8];
}

void __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_23(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices disconnectDeviceWithUUID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);

  v5 = *MEMORY[0x277D85DE8];
}

void __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_24(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices connectDeviceWithUUID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);

  v5 = *MEMORY[0x277D85DE8];
}

void __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_21(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices connectDeviceWithUUID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);

  v5 = *MEMORY[0x277D85DE8];
}

void __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_22(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:started:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke_20(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:started:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke_18(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withfadingTimeWindowLength:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke_17(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withfadingTimeWindowLength:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_14(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_15(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_12(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);

  v5 = *MEMORY[0x277D85DE8];
}

void __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_13(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices selectBuiltInInjectionDeviceWithUUID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);

  v5 = *MEMORY[0x277D85DE8];
}

void __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_9(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSAudioInjectionServices selectBuiltInInjectionDeviceWithUUID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);

  v5 = *MEMORY[0x277D85DE8];
}

void __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_10(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)pingpong:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  CSLogInitIfNeeded();
  v6 = [a1 getAudioInjectionXPCConnectionForCoreSpeechD];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__CSAudioInjectionServices_pingpong_completion___block_invoke;
  v17[3] = &unk_2784C6C90;
  v7 = v5;
  v18 = v7;
  [v6 setInterruptionHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__CSAudioInjectionServices_pingpong_completion___block_invoke_2;
  v15[3] = &unk_2784C6C90;
  v8 = v7;
  v16 = v8;
  [v6 setInvalidationHandler:v15];
  [v6 resume];
  v9 = [v6 remoteObjectProxy];
  if (!v9)
  {
    v11 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "+[CSAudioInjectionServices pingpong:completion:]";
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    else if (!v8)
    {
      goto LABEL_6;
    }

    (*(v8 + 2))(v8, 0);
    goto LABEL_6;
  }

  v10 = [v6 remoteObjectProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__CSAudioInjectionServices_pingpong_completion___block_invoke_4;
  v13[3] = &unk_2784C6CB8;
  v14 = v8;
  [v10 pingpong:@"TEST" completion:v13];

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __48__CSAudioInjectionServices_pingpong_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices pingpong:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __48__CSAudioInjectionServices_pingpong_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices pingpong:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __48__CSAudioInjectionServices_pingpong_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (BOOL)audioInjectionEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  CSLogInitIfNeeded();
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 programmableAudioInjectionEnabled];

  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[CSAudioInjectionServices audioInjectionEnabled]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched audio injection enabled : %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)getAudioInjectionXPCConnectionForCoreSpeechD
{
  v2 = objc_alloc(MEMORY[0x277CCAE80]);
  v3 = [v2 initWithMachServiceName:*MEMORY[0x277D01580] options:0];
  v4 = AudioInjectionXPCGetInterface();
  [v3 setRemoteObjectInterface:v4];

  return v3;
}

@end