@interface CRKClassKitFacadeFactory
+ (BOOL)currentPlatformRequiresPersonaAdoption;
+ (BOOL)dataSeparationEnabled;
+ (id)makeBaseClassKitFacadeWithPersonaAdoption:(BOOL)a3;
+ (id)makeInstructorClassKitFacadeWithPersonaAdoption:(BOOL)a3;
+ (id)makeStudentClassKitFacade;
@end

@implementation CRKClassKitFacadeFactory

+ (id)makeStudentClassKitFacade
{
  v3 = [a1 makeBaseClassKitFacadeWithPersonaAdoption:1];
  v4 = [CRKDynamicDataObserverClassKitFacade dynamicDataObserverFacadeWithClassKitFacade:v3 expectedUserRole:1];

  if (([a1 dataSeparationEnabled] & 1) == 0)
  {
    v5 = [[CRKDataSeparationBlockingClassKitFacade alloc] initWithClassKitFacade:v4];

    v4 = v5;
  }

  return v4;
}

+ (id)makeInstructorClassKitFacadeWithPersonaAdoption:(BOOL)a3
{
  v4 = [a1 makeBaseClassKitFacadeWithPersonaAdoption:a3];
  v5 = [CRKDynamicDataObserverClassKitFacade dynamicDataObserverFacadeWithClassKitFacade:v4 expectedUserRole:2];

  v6 = [a1 dataSeparationEnabled];
  v7 = off_278DC0348;
  if (!v6)
  {
    v7 = off_278DBFF30;
  }

  v8 = [objc_alloc(*v7) initWithClassKitFacade:v5];

  return v8;
}

+ (id)makeBaseClassKitFacadeWithPersonaAdoption:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  if (v3 && [a1 currentPlatformRequiresPersonaAdoption])
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
  v3 = [v2 makeFeatureFlags];
  v4 = [v3 isDataSeparationEnabled];

  return v4;
}

@end