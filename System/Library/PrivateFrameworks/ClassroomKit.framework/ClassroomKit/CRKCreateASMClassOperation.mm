@interface CRKCreateASMClassOperation
- (BOOL)applyProperties:(id)properties toClass:(id)class error:(id *)error;
- (BOOL)location:(id)location hasMatchInLocations:(id)locations;
- (CRKCreateASMClassOperation)initWithProperties:(id)properties requirements:(id)requirements;
- (void)constructClassWithInstructor:(id)instructor;
- (void)fetchInstructor;
- (void)main;
- (void)validateDesiredLocationExistsForInstructor:(id)instructor;
- (void)validateParameters;
@end

@implementation CRKCreateASMClassOperation

- (CRKCreateASMClassOperation)initWithProperties:(id)properties requirements:(id)requirements
{
  propertiesCopy = properties;
  requirementsCopy = requirements;
  v12.receiver = self;
  v12.super_class = CRKCreateASMClassOperation;
  v8 = [(CRKCreateASMClassOperation *)&v12 init];
  if (v8)
  {
    v9 = [propertiesCopy copy];
    properties = v8->_properties;
    v8->_properties = v9;

    objc_storeStrong(&v8->_requirements, requirements);
  }

  return v8;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CRKCreateASMClassOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)validateParameters
{
  properties = [(CRKCreateASMClassOperation *)self properties];
  location = [properties location];

  if (location)
  {
    properties2 = [(CRKCreateASMClassOperation *)self properties];
    location2 = [properties2 location];
    identifier = [location2 identifier];

    if (identifier)
    {
      properties3 = [(CRKCreateASMClassOperation *)self properties];
      updateProperties = [properties3 updateProperties];
      name = [updateProperties name];

      if (name)
      {

        [(CRKCreateASMClassOperation *)self fetchInstructor];
        return;
      }

      v11 = &unk_2856725B8;
    }

    else
    {
      v11 = &unk_285672590;
    }
  }

  else
  {
    v11 = &unk_285672568;
  }

  v12 = CRKErrorWithCodeAndUserInfo(2, v11);
  [(CRKCreateASMClassOperation *)self endOperationWithError:v12];
}

- (void)fetchInstructor
{
  requirements = [(CRKCreateASMClassOperation *)self requirements];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CRKCreateASMClassOperation_fetchInstructor__block_invoke;
  v4[3] = &unk_278DC2128;
  v4[4] = self;
  [requirements currentUserWithCompletion:v4];
}

void __45__CRKCreateASMClassOperation_fetchInstructor__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CRKCreateASMClassOperation_fetchInstructor__block_invoke_2;
  block[3] = &unk_278DC1DF0;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__CRKCreateASMClassOperation_fetchInstructor__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 endOperationWithError:?];
  }

  else
  {
    v3 = [*(a1 + 48) person];
    v4 = *(a1 + 40);
    v6 = v3;
    if (v3)
    {
      [v4 validateDesiredLocationExistsForInstructor:v3];
    }

    else
    {
      v5 = CRKErrorWithCodeAndUserInfo(150, 0);
      [v4 endOperationWithError:v5];
    }
  }
}

- (void)validateDesiredLocationExistsForInstructor:(id)instructor
{
  instructorCopy = instructor;
  requirements = [(CRKCreateASMClassOperation *)self requirements];
  objectID = [instructorCopy objectID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__CRKCreateASMClassOperation_validateDesiredLocationExistsForInstructor___block_invoke;
  v8[3] = &unk_278DC32D8;
  v8[4] = self;
  v9 = instructorCopy;
  v7 = instructorCopy;
  [requirements locationsWithManagePermissionsForUserWithObjectID:objectID completion:v8];
}

void __73__CRKCreateASMClassOperation_validateDesiredLocationExistsForInstructor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__CRKCreateASMClassOperation_validateDesiredLocationExistsForInstructor___block_invoke_2;
  v11[3] = &unk_278DC12D0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __73__CRKCreateASMClassOperation_validateDesiredLocationExistsForInstructor___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 endOperationWithError:?];
  }

  else
  {
    v4 = [v2 properties];
    v8 = [v4 location];

    v5 = [*(a1 + 40) location:v8 hasMatchInLocations:*(a1 + 48)];
    v6 = *(a1 + 40);
    if (v5)
    {
      [*(a1 + 40) constructClassWithInstructor:*(a1 + 56)];
    }

    else
    {
      v7 = CRKErrorWithCodeAndUserInfo(151, 0);
      [v6 endOperationWithError:v7];
    }
  }
}

- (void)constructClassWithInstructor:(id)instructor
{
  instructorCopy = instructor;
  properties = [(CRKCreateASMClassOperation *)self properties];
  location = [properties location];
  identifier = [location identifier];

  properties2 = [(CRKCreateASMClassOperation *)self properties];
  updateProperties = [properties2 updateProperties];
  name = [updateProperties name];

  requirements = [(CRKCreateASMClassOperation *)self requirements];
  v12 = [requirements makeClassWithLocationID:identifier name:name];

  requirements2 = [(CRKCreateASMClassOperation *)self requirements];
  [requirements2 addPerson:instructorCopy toClass:v12];

  properties3 = [(CRKCreateASMClassOperation *)self properties];
  updateProperties2 = [properties3 updateProperties];
  v21 = 0;
  v16 = [(CRKCreateASMClassOperation *)self applyProperties:updateProperties2 toClass:v12 error:&v21];
  v17 = v21;

  if (v16)
  {
    requirements3 = [(CRKCreateASMClassOperation *)self requirements];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__CRKCreateASMClassOperation_constructClassWithInstructor___block_invoke;
    v19[3] = &unk_278DC2448;
    v19[4] = self;
    v20 = v12;
    [requirements3 saveClass:v20 completion:v19];
  }

  else
  {
    [(CRKCreateASMClassOperation *)self endOperationWithError:v17];
  }
}

void __59__CRKCreateASMClassOperation_constructClassWithInstructor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CRKCreateASMClassOperation_constructClassWithInstructor___block_invoke_2;
  block[3] = &unk_278DC1DF0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__CRKCreateASMClassOperation_constructClassWithInstructor___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 endOperationWithError:?];
  }

  else
  {
    v3 = [*(a1 + 48) objectID];
    [v1 endOperationWithResultObject:v3];
  }
}

- (BOOL)location:(id)location hasMatchInLocations:(id)locations
{
  v21 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  locationsCopy = locations;
  v7 = locationsCopy;
  if (locationCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = locationsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          objectID = [*(*(&v16 + 1) + 8 * i) objectID];
          identifier = [locationCopy identifier];
          v14 = [objectID isEqualToString:identifier];

          if (v14)
          {
            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)applyProperties:(id)properties toClass:(id)class error:(id *)error
{
  classCopy = class;
  propertiesCopy = properties;
  v10 = [CRKClassKitClassPropertyApplicator alloc];
  requirements = [(CRKCreateASMClassOperation *)self requirements];
  v12 = [(CRKClassKitClassPropertyApplicator *)v10 initWithRequirements:requirements];

  v13 = [(CRKClassKitClassPropertyApplicator *)v12 applyProperties:propertiesCopy toClass:classCopy error:error];

  return v13 != 0;
}

@end