@interface CRKPersonaAdoptingClassKitFacade
- (CRKPersonaAdoptingClassKitFacade)initWithClassKitFacade:(id)a3 personaBlockPerformer:(id)a4;
- (id)currentPersonaUniqueString;
- (void)currentUserWithCompletion:(id)a3;
- (void)deregisterDataObserver:(id)a3;
- (void)enrolledClassesWithCompletion:(id)a3;
- (void)executeQuery:(id)a3;
- (void)instructedClassesWithCompletion:(id)a3;
- (void)instructorsInClassWithObjectID:(id)a3 completion:(id)a4;
- (void)locationsWithManagePermissionsForUserWithObjectID:(id)a3 completion:(id)a4;
- (void)locationsWithObjectIDs:(id)a3 completion:(id)a4;
- (void)performBlockWithClassKitPersona:(id)a3;
- (void)registerDataObserver:(id)a3;
- (void)removeClass:(id)a3 completion:(id)a4;
- (void)saveClass:(id)a3 completion:(id)a4;
- (void)studentsInClassWithObjectID:(id)a3 completion:(id)a4;
- (void)syncServerConfigWithCompletion:(id)a3;
@end

@implementation CRKPersonaAdoptingClassKitFacade

- (CRKPersonaAdoptingClassKitFacade)initWithClassKitFacade:(id)a3 personaBlockPerformer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRKPersonaAdoptingClassKitFacade;
  v8 = [(CRKClassKitFacadeDecoratorBase *)&v12 initWithClassKitFacade:v6];
  if (v8)
  {
    v9 = [[CRKClassKitPersonaAdopter alloc] initWithClassKitFacade:v6 personaBlockPerformer:v7];
    personaAdopter = v8->_personaAdopter;
    v8->_personaAdopter = v9;
  }

  return v8;
}

- (void)performBlockWithClassKitPersona:(id)a3
{
  v4 = a3;
  v5 = [(CRKPersonaAdoptingClassKitFacade *)self personaAdopter];
  [v5 performBlockWithClassKitPersona:v4];
}

- (id)currentPersonaUniqueString
{
  v2 = [(CRKPersonaAdoptingClassKitFacade *)self personaAdopter];
  v3 = [v2 currentPersonaUniqueString];

  return v3;
}

- (void)registerDataObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CRKPersonaAdoptingClassKitFacade_registerDataObserver___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __57__CRKPersonaAdoptingClassKitFacade_registerDataObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 registerDataObserver:*(a1 + 40)];
}

- (void)deregisterDataObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CRKPersonaAdoptingClassKitFacade_deregisterDataObserver___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __59__CRKPersonaAdoptingClassKitFacade_deregisterDataObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 deregisterDataObserver:*(a1 + 40)];
}

- (void)syncServerConfigWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CRKPersonaAdoptingClassKitFacade_syncServerConfigWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __67__CRKPersonaAdoptingClassKitFacade_syncServerConfigWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 syncServerConfigWithCompletion:*(a1 + 40)];
}

- (void)currentUserWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v5 currentUserWithCompletion:v4];
}

- (void)enrolledClassesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CRKPersonaAdoptingClassKitFacade_enrolledClassesWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __66__CRKPersonaAdoptingClassKitFacade_enrolledClassesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 enrolledClassesWithCompletion:*(a1 + 40)];
}

- (void)instructedClassesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CRKPersonaAdoptingClassKitFacade_instructedClassesWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __68__CRKPersonaAdoptingClassKitFacade_instructedClassesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 instructedClassesWithCompletion:*(a1 + 40)];
}

- (void)instructorsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__CRKPersonaAdoptingClassKitFacade_instructorsInClassWithObjectID_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __78__CRKPersonaAdoptingClassKitFacade_instructorsInClassWithObjectID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 instructorsInClassWithObjectID:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)studentsInClassWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__CRKPersonaAdoptingClassKitFacade_studentsInClassWithObjectID_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __75__CRKPersonaAdoptingClassKitFacade_studentsInClassWithObjectID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 studentsInClassWithObjectID:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)saveClass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__CRKPersonaAdoptingClassKitFacade_saveClass_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __57__CRKPersonaAdoptingClassKitFacade_saveClass_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 saveClass:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)locationsWithManagePermissionsForUserWithObjectID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__CRKPersonaAdoptingClassKitFacade_locationsWithManagePermissionsForUserWithObjectID_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __97__CRKPersonaAdoptingClassKitFacade_locationsWithManagePermissionsForUserWithObjectID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 locationsWithManagePermissionsForUserWithObjectID:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)locationsWithObjectIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__CRKPersonaAdoptingClassKitFacade_locationsWithObjectIDs_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __70__CRKPersonaAdoptingClassKitFacade_locationsWithObjectIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 locationsWithObjectIDs:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)removeClass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CRKPersonaAdoptingClassKitFacade_removeClass_completion___block_invoke;
  v10[3] = &unk_278DC17E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v10];
}

void __59__CRKPersonaAdoptingClassKitFacade_removeClass_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 removeClass:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)executeQuery:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CRKPersonaAdoptingClassKitFacade_executeQuery___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKPersonaAdoptingClassKitFacade *)self performBlockWithClassKitPersona:v6];
}

void __49__CRKPersonaAdoptingClassKitFacade_executeQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingClassKitFacade];
  [v2 executeQuery:*(a1 + 40)];
}

@end