@interface CRKPersonaAdoptingClassKitFacade
- (CRKPersonaAdoptingClassKitFacade)initWithClassKitFacade:(id)facade personaBlockPerformer:(id)performer;
- (id)currentPersonaUniqueString;
- (void)currentUserWithCompletion:(id)completion;
- (void)deregisterDataObserver:(id)observer;
- (void)enrolledClassesWithCompletion:(id)completion;
- (void)executeQuery:(id)query;
- (void)instructedClassesWithCompletion:(id)completion;
- (void)instructorsInClassWithObjectID:(id)d completion:(id)completion;
- (void)locationsWithManagePermissionsForUserWithObjectID:(id)d completion:(id)completion;
- (void)locationsWithObjectIDs:(id)ds completion:(id)completion;
- (void)performBlockWithClassKitPersona:(id)persona;
- (void)registerDataObserver:(id)observer;
- (void)removeClass:(id)class completion:(id)completion;
- (void)saveClass:(id)class completion:(id)completion;
- (void)studentsInClassWithObjectID:(id)d completion:(id)completion;
- (void)syncServerConfigWithCompletion:(id)completion;
@end

@implementation CRKPersonaAdoptingClassKitFacade

- (CRKPersonaAdoptingClassKitFacade)initWithClassKitFacade:(id)facade personaBlockPerformer:(id)performer
{
  facadeCopy = facade;
  performerCopy = performer;
  v12.receiver = self;
  v12.super_class = CRKPersonaAdoptingClassKitFacade;
  v8 = [(CRKClassKitFacadeDecoratorBase *)&v12 initWithClassKitFacade:facadeCopy];
  if (v8)
  {
    v9 = [[CRKClassKitPersonaAdopter alloc] initWithClassKitFacade:facadeCopy personaBlockPerformer:performerCopy];
    personaAdopter = v8->_personaAdopter;
    v8->_personaAdopter = v9;
  }

  return v8;
}

- (void)performBlockWithClassKitPersona:(id)persona
{
  personaCopy = persona;
  personaAdopter = [(CRKPersonaAdoptingClassKitFacade *)self personaAdopter];
  [personaAdopter performBlockWithClassKitPersona:personaCopy];
}

- (id)currentPersonaUniqueString
{
  personaAdopter = [(CRKPersonaAdoptingClassKitFacade *)self personaAdopter];
  currentPersonaUniqueString = [personaAdopter currentPersonaUniqueString];

  return currentPersonaUniqueString;
}

- (void)registerDataObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CRKPersonaAdoptingClassKitFacade_registerDataObserver___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __57__CRKPersonaAdoptingClassKitFacade_registerDataObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 registerDataObserver:*(a1 + 40)];
}

- (void)deregisterDataObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CRKPersonaAdoptingClassKitFacade_deregisterDataObserver___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __59__CRKPersonaAdoptingClassKitFacade_deregisterDataObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 deregisterDataObserver:*(a1 + 40)];
}

- (void)syncServerConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CRKPersonaAdoptingClassKitFacade_syncServerConfigWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __67__CRKPersonaAdoptingClassKitFacade_syncServerConfigWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 syncServerConfigWithCompletion:*(a1 + 40)];
}

- (void)currentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade currentUserWithCompletion:completionCopy];
}

- (void)enrolledClassesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CRKPersonaAdoptingClassKitFacade_enrolledClassesWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __66__CRKPersonaAdoptingClassKitFacade_enrolledClassesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 enrolledClassesWithCompletion:*(a1 + 40)];
}

- (void)instructedClassesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CRKPersonaAdoptingClassKitFacade_instructedClassesWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __68__CRKPersonaAdoptingClassKitFacade_instructedClassesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 instructedClassesWithCompletion:*(a1 + 40)];
}

- (void)instructorsInClassWithObjectID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__CRKPersonaAdoptingClassKitFacade_instructorsInClassWithObjectID_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __78__CRKPersonaAdoptingClassKitFacade_instructorsInClassWithObjectID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 instructorsInClassWithObjectID:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)studentsInClassWithObjectID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__CRKPersonaAdoptingClassKitFacade_studentsInClassWithObjectID_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __75__CRKPersonaAdoptingClassKitFacade_studentsInClassWithObjectID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 studentsInClassWithObjectID:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)saveClass:(id)class completion:(id)completion
{
  classCopy = class;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__CRKPersonaAdoptingClassKitFacade_saveClass_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = classCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = classCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __57__CRKPersonaAdoptingClassKitFacade_saveClass_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 saveClass:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__CRKPersonaAdoptingClassKitFacade_locationsWithManagePermissionsForUserWithObjectID_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __97__CRKPersonaAdoptingClassKitFacade_locationsWithManagePermissionsForUserWithObjectID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 locationsWithManagePermissionsForUserWithObjectID:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)locationsWithObjectIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__CRKPersonaAdoptingClassKitFacade_locationsWithObjectIDs_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = dsCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dsCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __70__CRKPersonaAdoptingClassKitFacade_locationsWithObjectIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 locationsWithObjectIDs:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)removeClass:(id)class completion:(id)completion
{
  classCopy = class;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CRKPersonaAdoptingClassKitFacade_removeClass_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = classCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = classCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __59__CRKPersonaAdoptingClassKitFacade_removeClass_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 removeClass:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)executeQuery:(id)query
{
  queryCopy = query;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CRKPersonaAdoptingClassKitFacade_executeQuery___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = queryCopy;
  v5 = queryCopy;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __49__CRKPersonaAdoptingClassKitFacade_executeQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 executeQuery:*(a1 + 40)];
}

@end