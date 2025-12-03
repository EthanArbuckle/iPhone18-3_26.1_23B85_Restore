@interface CSBenchmarkService
+ (BOOL)disableBenchmarkService;
+ (BOOL)enableBenchmarkService;
+ (id)createBenchamrkXPCConnection;
+ (void)benchmarkOnDeviceCompilationCleanup:(id)cleanup;
+ (void)pingpong:(id)pingpong completion:(id)completion;
+ (void)runAudioInjectionOnly:(id)only completion:(id)completion;
+ (void)runLstmPhsModelWithConfig:(id)config withUrl:(id)url withConfigRoot:(id)root completion:(id)completion;
+ (void)runNCModelWithConfig:(id)config completion:(id)completion;
+ (void)runNovDetectorWithConfig:(id)config configRoot:(id)root withUrl:(id)url completion:(id)completion;
+ (void)runODLDModelWithConfig:(id)config locale:(id)locale inputText:(id)text completion:(id)completion;
+ (void)runOSDAnalyzerWithConfig:(id)config withUrl:(id)url completion:(id)completion;
+ (void)runVTSecondPassModelWithConfig:(id)config locale:(id)locale withUrl:(id)url completion:(id)completion;
@end

@implementation CSBenchmarkService

+ (BOOL)disableBenchmarkService
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [mEMORY[0x277D01788] enableBenchmarkService:0];

  mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
  v5 = [mEMORY[0x277D01788]2 enableProgrammableAudioInjection:0];

  return v3 & v5;
}

+ (BOOL)enableBenchmarkService
{
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [mEMORY[0x277D01788] enableBenchmarkService:1];

  mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
  v5 = [mEMORY[0x277D01788]2 enableProgrammableAudioInjection:1];

  return v3 & v5;
}

+ (void)benchmarkOnDeviceCompilationCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  v4 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke;
  v13[3] = &unk_2784C6C90;
  v5 = cleanupCopy;
  v14 = v5;
  [v4 setInterruptionHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke_72;
  v11[3] = &unk_2784C6C90;
  v6 = v5;
  v12 = v6;
  [v4 setInvalidationHandler:v11];
  [v4 resume];
  v7 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_75];
  if (v7)
  {
    v8 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_78];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke_79;
    v9[3] = &unk_2784C6480;
    v10 = v6;
    [v8 benchmarkOnDeviceCompilationCleanup:v9];
  }
}

void __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService benchmarkOnDeviceCompilationCleanup:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke_72(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService benchmarkOnDeviceCompilationCleanup:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke_79(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[CSBenchmarkService benchmarkOnDeviceCompilationCleanup:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke_76(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService benchmarkOnDeviceCompilationCleanup:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __58__CSBenchmarkService_benchmarkOnDeviceCompilationCleanup___block_invoke_73(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService benchmarkOnDeviceCompilationCleanup:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runNCModelWithConfig:(id)config completion:(id)completion
{
  configCopy = config;
  completionCopy = completion;
  v7 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke;
  v16[3] = &unk_2784C6C90;
  v8 = completionCopy;
  v17 = v8;
  [v7 setInterruptionHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke_64;
  v14[3] = &unk_2784C6C90;
  v9 = v8;
  v15 = v9;
  [v7 setInvalidationHandler:v14];
  [v7 resume];
  v10 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_67];
  if (v10)
  {
    v11 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_70];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke_71;
    v12[3] = &unk_2784C6480;
    v13 = v9;
    [v11 runNCModelWithConfig:configCopy completion:v12];
  }
}

void __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runNCModelWithConfig:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke_64(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runNCModelWithConfig:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke_71(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[CSBenchmarkService runNCModelWithConfig:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runNCModelWithConfig:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __54__CSBenchmarkService_runNCModelWithConfig_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runNCModelWithConfig:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runAudioInjectionOnly:(id)only completion:(id)completion
{
  onlyCopy = only;
  completionCopy = completion;
  v7 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke;
  v16[3] = &unk_2784C6C90;
  v8 = completionCopy;
  v17 = v8;
  [v7 setInterruptionHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke_56;
  v14[3] = &unk_2784C6C90;
  v9 = v8;
  v15 = v9;
  [v7 setInvalidationHandler:v14];
  [v7 resume];
  v10 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  if (v10)
  {
    v11 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_62];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke_63;
    v12[3] = &unk_2784C34B8;
    v13 = v9;
    [v11 runAudioInjectionOnly:onlyCopy completion:v12];
  }
}

void __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runAudioInjectionOnly:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke_56(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runAudioInjectionOnly:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke_63(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[CSBenchmarkService runAudioInjectionOnly:completion:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke_60(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runAudioInjectionOnly:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__CSBenchmarkService_runAudioInjectionOnly_completion___block_invoke_57(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runAudioInjectionOnly:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runNovDetectorWithConfig:(id)config configRoot:(id)root withUrl:(id)url completion:(id)completion
{
  configCopy = config;
  rootCopy = root;
  urlCopy = url;
  completionCopy = completion;
  v13 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke;
  v22[3] = &unk_2784C6C90;
  v14 = completionCopy;
  v23 = v14;
  [v13 setInterruptionHandler:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke_48;
  v20[3] = &unk_2784C6C90;
  v15 = v14;
  v21 = v15;
  [v13 setInvalidationHandler:v20];
  [v13 resume];
  v16 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_51];
  if (v16)
  {
    v17 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_54_2363];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke_55;
    v18[3] = &unk_2784C34B8;
    v19 = v15;
    [v17 runNovDetectorWithConfig:configCopy configRoot:rootCopy withUrl:urlCopy completion:v18];
  }
}

void __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runNovDetectorWithConfig:configRoot:withUrl:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke_48(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runNovDetectorWithConfig:configRoot:withUrl:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke_55(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[CSBenchmarkService runNovDetectorWithConfig:configRoot:withUrl:completion:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke_52(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runNovDetectorWithConfig:configRoot:withUrl:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __77__CSBenchmarkService_runNovDetectorWithConfig_configRoot_withUrl_completion___block_invoke_49(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runNovDetectorWithConfig:configRoot:withUrl:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runODLDModelWithConfig:(id)config locale:(id)locale inputText:(id)text completion:(id)completion
{
  configCopy = config;
  localeCopy = locale;
  textCopy = text;
  completionCopy = completion;
  v13 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke;
  v22[3] = &unk_2784C6C90;
  v14 = completionCopy;
  v23 = v14;
  [v13 setInterruptionHandler:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke_40;
  v20[3] = &unk_2784C6C90;
  v15 = v14;
  v21 = v15;
  [v13 setInvalidationHandler:v20];
  [v13 resume];
  v16 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_43];
  if (v16)
  {
    v17 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_46];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke_47;
    v18[3] = &unk_2784C6480;
    v19 = v15;
    [v17 runODLDModelWithConfig:configCopy locale:localeCopy inputText:textCopy completion:v18];
  }
}

void __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runODLDModelWithConfig:locale:inputText:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke_40(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runODLDModelWithConfig:locale:inputText:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[CSBenchmarkService runODLDModelWithConfig:locale:inputText:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runODLDModelWithConfig:locale:inputText:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __73__CSBenchmarkService_runODLDModelWithConfig_locale_inputText_completion___block_invoke_41(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runODLDModelWithConfig:locale:inputText:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runOSDAnalyzerWithConfig:(id)config withUrl:(id)url completion:(id)completion
{
  configCopy = config;
  urlCopy = url;
  completionCopy = completion;
  v10 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke;
  v19[3] = &unk_2784C6C90;
  v11 = completionCopy;
  v20 = v11;
  [v10 setInterruptionHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke_32;
  v17[3] = &unk_2784C6C90;
  v12 = v11;
  v18 = v12;
  [v10 setInvalidationHandler:v17];
  [v10 resume];
  v13 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_35];
  if (v13)
  {
    v14 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_38];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke_39;
    v15[3] = &unk_2784C34B8;
    v16 = v12;
    [v14 runOSDAnalyzerWithConfig:configCopy withUrl:urlCopy completion:v15];
  }
}

void __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runOSDAnalyzerWithConfig:withUrl:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke_32(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runOSDAnalyzerWithConfig:withUrl:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke_39(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[CSBenchmarkService runOSDAnalyzerWithConfig:withUrl:completion:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke_36(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runOSDAnalyzerWithConfig:withUrl:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __66__CSBenchmarkService_runOSDAnalyzerWithConfig_withUrl_completion___block_invoke_33(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runOSDAnalyzerWithConfig:withUrl:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runVTSecondPassModelWithConfig:(id)config locale:(id)locale withUrl:(id)url completion:(id)completion
{
  configCopy = config;
  localeCopy = locale;
  urlCopy = url;
  completionCopy = completion;
  v13 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke;
  v22[3] = &unk_2784C6C90;
  v14 = completionCopy;
  v23 = v14;
  [v13 setInterruptionHandler:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke_24;
  v20[3] = &unk_2784C6C90;
  v15 = v14;
  v21 = v15;
  [v13 setInvalidationHandler:v20];
  [v13 resume];
  v16 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];
  if (v16)
  {
    v17 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke_31;
    v18[3] = &unk_2784C34B8;
    v19 = v15;
    [v17 runVTSecondPassModelWithConfig:configCopy locale:localeCopy withUrl:urlCopy completion:v18];
  }
}

void __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runVTSecondPassModelWithConfig:locale:withUrl:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke_24(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runVTSecondPassModelWithConfig:locale:withUrl:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke_31(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[CSBenchmarkService runVTSecondPassModelWithConfig:locale:withUrl:completion:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runVTSecondPassModelWithConfig:locale:withUrl:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __79__CSBenchmarkService_runVTSecondPassModelWithConfig_locale_withUrl_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runVTSecondPassModelWithConfig:locale:withUrl:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runLstmPhsModelWithConfig:(id)config withUrl:(id)url withConfigRoot:(id)root completion:(id)completion
{
  configCopy = config;
  urlCopy = url;
  rootCopy = root;
  completionCopy = completion;
  v13 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke;
  v22[3] = &unk_2784C6C90;
  v14 = completionCopy;
  v23 = v14;
  [v13 setInterruptionHandler:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke_16;
  v20[3] = &unk_2784C6C90;
  v15 = v14;
  v21 = v15;
  [v13 setInvalidationHandler:v20];
  [v13 resume];
  v16 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2367];
  if (v16)
  {
    v17 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_21];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke_22;
    v18[3] = &unk_2784C34B8;
    v19 = v15;
    [v17 runLstmPhsModelWithConfig:configCopy withUrl:urlCopy withConfigRoot:rootCopy completion:v18];
  }
}

void __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runLstmPhsModelWithConfig:withUrl:withConfigRoot:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2003 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke_16(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[CSBenchmarkService runLstmPhsModelWithConfig:withUrl:withConfigRoot:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2004 userInfo:0];
    (*(v3 + 16))(v3, v4, -1, 0.0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke_22(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[CSBenchmarkService runLstmPhsModelWithConfig:withUrl:withConfigRoot:completion:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Result: %@", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runLstmPhsModelWithConfig:withUrl:withConfigRoot:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"Error in making synchronous call of CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __82__CSBenchmarkService_runLstmPhsModelWithConfig_withUrl_withConfigRoot_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "+[CSBenchmarkService runLstmPhsModelWithConfig:withUrl:withConfigRoot:completion:]_block_invoke";
    v7 = 2112;
    v8 = @"First attempt with Error in connecting with CSBenchmarkService: ";
    v9 = 2112;
    v10 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %@: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)pingpong:(id)pingpong completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[CSBenchmarkService createBenchamrkXPCConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__CSBenchmarkService_pingpong_completion___block_invoke;
  v16[3] = &unk_2784C6C90;
  v6 = completionCopy;
  v17 = v6;
  [v5 setInterruptionHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__CSBenchmarkService_pingpong_completion___block_invoke_9;
  v14[3] = &unk_2784C6C90;
  v7 = v6;
  v15 = v7;
  [v5 setInvalidationHandler:v14];
  [v5 resume];
  remoteObjectProxy = [v5 remoteObjectProxy];
  if (!remoteObjectProxy)
  {
    v10 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "+[CSBenchmarkService pingpong:completion:]";
      _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    (*(v7 + 2))(v7, 0);
    goto LABEL_6;
  }

  remoteObjectProxy2 = [v5 remoteObjectProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__CSBenchmarkService_pingpong_completion___block_invoke_13;
  v12[3] = &unk_2784C6CB8;
  v13 = v7;
  [remoteObjectProxy2 pingpong:@"TEST" completion:v12];

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __42__CSBenchmarkService_pingpong_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSBenchmarkService pingpong:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Interrupted", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __42__CSBenchmarkService_pingpong_completion___block_invoke_9(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSBenchmarkService pingpong:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSBenchmarkService Invalidated", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __42__CSBenchmarkService_pingpong_completion___block_invoke_13(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)createBenchamrkXPCConnection
{
  CSLogInitIfNeeded();
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corespeech.benchmark.xpc" options:0];
  v3 = BenchmarkXPCGetInterface();
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

@end