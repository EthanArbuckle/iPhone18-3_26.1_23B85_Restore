@interface ULTapToRadar
+ (int64_t)_classificationFromULTapToRadarClassification:(int64_t)a3;
+ (int64_t)_reproducibilityFromULTapToRadarReproducibility:(int64_t)a3;
+ (void)createRadarWithComponentName:(id)a3 componentVersion:(id)a4 componentID:(id)a5 classification:(int64_t)a6 reproducibility:(int64_t)a7 title:(id)a8 description:(id)a9 extensionIDs:(id)a10 processName:(id)a11 displayReason:(id)a12 isUserInitiated:(BOOL)a13 completionHandler:(id)a14;
@end

@implementation ULTapToRadar

+ (void)createRadarWithComponentName:(id)a3 componentVersion:(id)a4 componentID:(id)a5 classification:(int64_t)a6 reproducibility:(int64_t)a7 title:(id)a8 description:(id)a9 extensionIDs:(id)a10 processName:(id)a11 displayReason:(id)a12 isUserInitiated:(BOOL)a13 completionHandler:(id)a14
{
  v35 = a3;
  v17 = a4;
  v18 = a5;
  v34 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a14;
  if (+[ULPlatform isInternalInstall]&& getTapToRadarServiceClass() && getRadarDraftClass() && getRadarComponentClass())
  {
    v24 = objc_alloc(getRadarComponentClass());
    v25 = v18;
    v26 = [v18 integerValue];
    v27 = v17;
    v28 = [v24 initWithName:v35 version:v17 identifier:v26];
    getRadarDraftClass();
    v29 = objc_opt_new();
    [v29 setComponent:v28];
    [v29 setClassification:{objc_msgSend(a1, "_classificationFromULTapToRadarClassification:", a6)}];
    [v29 setReproducibility:{objc_msgSend(a1, "_reproducibilityFromULTapToRadarReproducibility:", a7)}];
    [v29 setTitle:v34];
    [v29 setProblemDescription:v19];
    [v29 setDiagnosticExtensionIDs:v20];
    [v29 setIsUserInitiated:a13];
    v30 = [(objc_class *)getTapToRadarServiceClass() shared];
    [v30 createDraft:v29 forProcessNamed:v21 withDisplayReason:v22 completionHandler:v23];
  }

  else
  {
    v25 = v18;
    v27 = v17;
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TTR not supported" code:-1 userInfo:{0, a6, a1}];
    v23[2](v23, v28);
  }
}

+ (int64_t)_classificationFromULTapToRadarClassification:(int64_t)a3
{
  if ((a3 - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)_reproducibilityFromULTapToRadarReproducibility:(int64_t)a3
{
  if ((a3 - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end