@interface ULTapToRadar
+ (int64_t)_classificationFromULTapToRadarClassification:(int64_t)classification;
+ (int64_t)_reproducibilityFromULTapToRadarReproducibility:(int64_t)reproducibility;
+ (void)createRadarWithComponentName:(id)name componentVersion:(id)version componentID:(id)d classification:(int64_t)classification reproducibility:(int64_t)reproducibility title:(id)title description:(id)description extensionIDs:(id)self0 processName:(id)self1 displayReason:(id)self2 isUserInitiated:(BOOL)self3 completionHandler:(id)self4;
@end

@implementation ULTapToRadar

+ (void)createRadarWithComponentName:(id)name componentVersion:(id)version componentID:(id)d classification:(int64_t)classification reproducibility:(int64_t)reproducibility title:(id)title description:(id)description extensionIDs:(id)self0 processName:(id)self1 displayReason:(id)self2 isUserInitiated:(BOOL)self3 completionHandler:(id)self4
{
  nameCopy = name;
  versionCopy = version;
  dCopy = d;
  titleCopy = title;
  descriptionCopy = description;
  dsCopy = ds;
  processNameCopy = processName;
  reasonCopy = reason;
  handlerCopy = handler;
  if (+[ULPlatform isInternalInstall]&& getTapToRadarServiceClass() && getRadarDraftClass() && getRadarComponentClass())
  {
    v24 = objc_alloc(getRadarComponentClass());
    v25 = dCopy;
    integerValue = [dCopy integerValue];
    v27 = versionCopy;
    v28 = [v24 initWithName:nameCopy version:versionCopy identifier:integerValue];
    getRadarDraftClass();
    v29 = objc_opt_new();
    [v29 setComponent:v28];
    [v29 setClassification:{objc_msgSend(self, "_classificationFromULTapToRadarClassification:", classification)}];
    [v29 setReproducibility:{objc_msgSend(self, "_reproducibilityFromULTapToRadarReproducibility:", reproducibility)}];
    [v29 setTitle:titleCopy];
    [v29 setProblemDescription:descriptionCopy];
    [v29 setDiagnosticExtensionIDs:dsCopy];
    [v29 setIsUserInitiated:initiated];
    shared = [(objc_class *)getTapToRadarServiceClass() shared];
    [shared createDraft:v29 forProcessNamed:processNameCopy withDisplayReason:reasonCopy completionHandler:handlerCopy];
  }

  else
  {
    v25 = dCopy;
    v27 = versionCopy;
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TTR not supported" code:-1 userInfo:{0, classification, self}];
    handlerCopy[2](handlerCopy, v28);
  }
}

+ (int64_t)_classificationFromULTapToRadarClassification:(int64_t)classification
{
  if ((classification - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return classification;
  }
}

+ (int64_t)_reproducibilityFromULTapToRadarReproducibility:(int64_t)reproducibility
{
  if ((reproducibility - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return reproducibility;
  }
}

@end