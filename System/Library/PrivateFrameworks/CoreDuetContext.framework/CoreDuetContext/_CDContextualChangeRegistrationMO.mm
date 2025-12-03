@interface _CDContextualChangeRegistrationMO
+ (id)materializedRegistrationFrom:(id)from;
+ (id)predicateForActiveRegistrationsInBootSession:(id)session;
+ (void)hydrateMO:(id)o fromRegistration:(id)registration;
@end

@implementation _CDContextualChangeRegistrationMO

+ (void)hydrateMO:(id)o fromRegistration:(id)registration
{
  oCopy = o;
  registrationCopy = registration;
  identifier = [registrationCopy identifier];
  [oCopy setIdentifier:identifier];

  v12 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:registrationCopy requiringSecureCoding:1 error:&v12];
  v10 = v12;
  if (v9)
  {
    [oCopy setProperties:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_CDContextualChangeRegistrationMO hydrateMO:self fromRegistration:v10];
  }

  date = [MEMORY[0x1E695DF00] date];
  [oCopy setCreationDate:date];

  [oCopy setIsMultiDeviceRegistration:{objc_msgSend(registrationCopy, "isMultiDeviceRegistration")}];
  [oCopy setIsActive:1];
}

+ (id)materializedRegistrationFrom:(id)from
{
  fromCopy = from;
  v4 = MEMORY[0x1E696ACD0];
  v5 = objc_opt_class();
  properties = [fromCopy properties];
  v10 = 0;
  v7 = [v4 unarchivedObjectOfClass:v5 fromData:properties error:&v10];
  v8 = v10;

  if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [_CDContextualChangeRegistrationMO materializedRegistrationFrom:fromCopy];
  }

  return v7;
}

+ (id)predicateForActiveRegistrationsInBootSession:(id)session
{
  v3 = MEMORY[0x1E695DF70];
  sessionCopy = session;
  v5 = [v3 arrayWithCapacity:2];
  v6 = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isActive = %@", MEMORY[0x1E695E118]];
  [v5 addObject:v7];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isMultiDeviceRegistration = %@", v6];
  [v8 addObject:v9];

  sessionCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate >= %@", sessionCopy];

  [v8 addObject:sessionCopy];
  v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v8];
  [v5 addObject:v11];

  v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v5];

  return v12;
}

+ (void)hydrateMO:(objc_class *)a1 fromRegistration:(uint64_t)a2 .cold.1(objc_class *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(a1);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Error setting mo.properties: %@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)materializedRegistrationFrom:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  v3 = 138412290;
  v4 = v1;
  _os_log_fault_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to materialize registration with identifier: %@", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end