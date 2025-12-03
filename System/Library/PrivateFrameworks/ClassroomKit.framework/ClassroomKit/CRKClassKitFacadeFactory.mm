@interface CRKClassKitFacadeFactory
+ (BOOL)currentPlatformRequiresPersonaAdoption;
+ (BOOL)dataSeparationEnabled;
+ (id)makeBaseClassKitFacadeWithPersonaAdoption:(BOOL)adoption;
+ (id)makeInstructorClassKitFacadeWithPersonaAdoption:(BOOL)adoption;
+ (id)makeStudentClassKitFacade;
@end

@implementation CRKClassKitFacadeFactory

+ (id)makeStudentClassKitFacade
{
  v3 = [self makeBaseClassKitFacadeWithPersonaAdoption:1];
  v4 = [CRKDynamicDataObserverClassKitFacade dynamicDataObserverFacadeWithClassKitFacade:v3 expectedUserRole:1];

  if (([self dataSeparationEnabled] & 1) == 0)
  {
    v5 = [[CRKDataSeparationBlockingClassKitFacade alloc] initWithClassKitFacade:v4];

    v4 = v5;
  }

  return v4;
}

+ (id)makeInstructorClassKitFacadeWithPersonaAdoption:(BOOL)adoption
{
  v4 = [self makeBaseClassKitFacadeWithPersonaAdoption:adoption];
  v5 = [CRKDynamicDataObserverClassKitFacade dynamicDataObserverFacadeWithClassKitFacade:v4 expectedUserRole:2];

  dataSeparationEnabled = [self dataSeparationEnabled];
  v7 = off_278DC0348;
  if (!dataSeparationEnabled)
  {
    v7 = off_278DBFF30;
  }

  v8 = [objc_alloc(*v7) initWithClassKitFacade:v5];

  return v8;
}

+ (id)makeBaseClassKitFacadeWithPersonaAdoption:(BOOL)adoption
{
  adoptionCopy = adoption;
  v5 = objc_opt_new();
  if (adoptionCopy && [self currentPlatformRequiresPersonaAdoption])
  {
    v6 = [CRKPersonaAdoptingClassKitFacade alloc];
    v7 = objc_opt_new();
    v8 = [(CRKPersonaAdoptingClassKitFacade *)v6 initWithClassKitFacade:v5 personaBlockPerformer:v7];

    v5 = v8;
  }

  return v5;
}

+ (BOOL)currentPlatformRequiresPersonaAdoption
{
  if (CRKIsiOS())
  {
    v2 = +[CRKSystemInfo sharedSystemInfo];
    v3 = [v2 isEphemeralMultiUser] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)dataSeparationEnabled
{
  v2 = objc_opt_new();
  makeFeatureFlags = [v2 makeFeatureFlags];
  isDataSeparationEnabled = [makeFeatureFlags isDataSeparationEnabled];

  return isDataSeparationEnabled;
}

@end