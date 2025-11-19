@interface MCMContainerConfiguration
- (BOOL)alwaysRequireSignatureScrutiny;
- (BOOL)associatedWithParent;
- (BOOL)autoRollsPathOnBuildUpdate;
- (BOOL)cleanTransientsEachBoot;
- (BOOL)containsUserGeneratedData;
- (BOOL)enforceBasedOnDynamicProtectionState;
- (BOOL)enforceBasedOnStrictSignatureScrutiny;
- (BOOL)handledByProxy;
- (BOOL)handledDirectly;
- (BOOL)hasDynamicProtection;
- (BOOL)honorGroupContainerEntitlementForAppStoreSigned;
- (BOOL)honorGroupContainerEntitlementForMatchingTeamIDPrefix;
- (BOOL)honorGroupContainerEntitlementForPlatformBinary;
- (BOOL)honorGroupContainerEntitlementForProfileValidatedEntitlements;
- (BOOL)honorGroupContainerEntitlementForTestFlight;
- (BOOL)honorGroupContainerEntitlementForiPadAppsOnMac;
- (BOOL)honorsWipeEntitlement;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainerConfig:(id)a3;
- (BOOL)migrateCodeSignInfoFromMetadataToDB;
- (BOOL)override_initNonBoolPropertiesWithPlist:(id)a3 error:(id *)a4;
- (BOOL)ownerIssuedSandboxExtension;
- (BOOL)personaAndUserSpecific;
- (BOOL)registerDynamicProtectionWithRestrictedEntitlement;
- (BOOL)securedByPlatformPolicy;
- (BOOL)singleOwner;
- (BOOL)supportedOnPlatform;
- (BOOL)trustAppMigrationEntitlement;
- (BOOL)usesGlobalBundleUserIdentity;
- (BOOL)usesGlobalSystemUserIdentity;
- (MCMContainerConfiguration)initWithPreprocessedPlist:(id)a3 name:(id)a4;
- (NSDictionary)sandboxAffordances;
- (NSSet)genericExtensionsAllowedForClients;
- (NSSet)identifierPrefixesExemptFromAutomaticProtection;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)name;
- (NSString)requiredEntitlement;
- (NSString)sandboxExtensionClass;
- (id)_clientIdentifiersSetFromPlistValue:(id)a3 error:(id *)a4;
- (id)_containerIdentifierSetFromPlistValue:(id)a3 error:(id *)a4;
- (id)_identifierPrefixesExemptFromAutomaticProtectionFromPlistValue:(id)a3 error:(id *)a4;
- (id)_requiredEntitlementFromPlistValue:(id)a3 error:(id *)a4;
- (id)_sandboxAffordancesFromPlistValue:(id)a3 error:(id *)a4;
- (id)_sandboxExtensionClassFromPlistValue:(id)a3;
- (id)debugDescriptionWithIndentString:(id)a3;
- (unint64_t)_containerClassFromPlistValue:(id)a3;
- (unint64_t)_normalizedContainerClassFromPlistValue:(id)a3 defaultContainerClass:(unint64_t)a4;
- (unint64_t)containerClass;
- (unint64_t)hash;
- (unint64_t)normalizedContainerClass;
- (unsigned)disposition;
@end

@implementation MCMContainerConfiguration

- (unsigned)disposition
{
  v5 = *MEMORY[0x1E69E9840];
  if ([(MCMContainerConfiguration *)self handledDirectly])
  {
    result = 1;
  }

  else if ([(MCMContainerConfiguration *)self handledByProxy])
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)handledDirectly
{
  result = self->_handledDirectly;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)supportedOnPlatform
{
  result = self->_supportedOnPlatform;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)personaAndUserSpecific
{
  result = self->_personaAndUserSpecific;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)containsUserGeneratedData
{
  result = self->_containsUserGeneratedData;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)singleOwner
{
  result = self->_singleOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)sandboxExtensionClass
{
  result = self->_sandboxExtensionClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)trustAppMigrationEntitlement
{
  result = self->_trustAppMigrationEntitlement;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)normalizedContainerClass
{
  result = self->_normalizedContainerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)usesGlobalBundleUserIdentity
{
  result = self->_usesGlobalBundleUserIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)usesGlobalSystemUserIdentity
{
  result = self->_usesGlobalSystemUserIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)identifierPrefixesExemptFromAutomaticProtection
{
  result = self->_identifierPrefixesExemptFromAutomaticProtection;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)genericExtensionsAllowedForClients
{
  result = self->_genericExtensionsAllowedForClients;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)requiredEntitlement
{
  result = self->_requiredEntitlement;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)sandboxAffordances
{
  result = self->_sandboxAffordances;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)name
{
  result = self->_name;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)associatedWithParent
{
  result = self->_associatedWithParent;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)securedByPlatformPolicy
{
  result = self->_securedByPlatformPolicy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)honorsWipeEntitlement
{
  result = self->_honorsWipeEntitlement;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)alwaysRequireSignatureScrutiny
{
  result = self->_alwaysRequireSignatureScrutiny;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)cleanTransientsEachBoot
{
  result = self->_cleanTransientsEachBoot;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)ownerIssuedSandboxExtension
{
  result = self->_ownerIssuedSandboxExtension;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)enforceBasedOnStrictSignatureScrutiny
{
  result = self->_enforceBasedOnStrictSignatureScrutiny;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)enforceBasedOnDynamicProtectionState
{
  result = self->_enforceBasedOnDynamicProtectionState;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasDynamicProtection
{
  result = self->_hasDynamicProtection;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)registerDynamicProtectionWithRestrictedEntitlement
{
  result = self->_registerDynamicProtectionWithRestrictedEntitlement;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)honorGroupContainerEntitlementForTestFlight
{
  result = self->_honorGroupContainerEntitlementForTestFlight;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)honorGroupContainerEntitlementForProfileValidatedEntitlements
{
  result = self->_honorGroupContainerEntitlementForProfileValidatedEntitlements;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)honorGroupContainerEntitlementForiPadAppsOnMac
{
  result = self->_honorGroupContainerEntitlementForiPadAppsOnMac;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)honorGroupContainerEntitlementForPlatformBinary
{
  result = self->_honorGroupContainerEntitlementForPlatformBinary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)honorGroupContainerEntitlementForAppStoreSigned
{
  result = self->_honorGroupContainerEntitlementForAppStoreSigned;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)honorGroupContainerEntitlementForMatchingTeamIDPrefix
{
  result = self->_honorGroupContainerEntitlementForMatchingTeamIDPrefix;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)migrateCodeSignInfoFromMetadataToDB
{
  result = self->_migrateCodeSignInfoFromMetadataToDB;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)handledByProxy
{
  result = self->_handledByProxy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)autoRollsPathOnBuildUpdate
{
  result = self->_autoRollsPathOnBuildUpdate;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)override_initNonBoolPropertiesWithPlist:(id)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"containerClass"];
  self->_containerClass = [(MCMContainerConfiguration *)self _containerClassFromPlistValue:v7];

  v8 = [v6 objectForKeyedSubscript:@"normalizedContainerClass"];
  self->_normalizedContainerClass = [(MCMContainerConfiguration *)self _normalizedContainerClassFromPlistValue:v8 defaultContainerClass:self->_containerClass];

  v9 = [v6 objectForKeyedSubscript:@"sandboxAffordances"];
  v35[0] = 0;
  v10 = [(MCMContainerConfiguration *)self _sandboxAffordancesFromPlistValue:v9 error:v35];
  v11 = v35[0];
  sandboxAffordances = self->_sandboxAffordances;
  self->_sandboxAffordances = v10;

  if (!self->_sandboxAffordances)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v13 = [v6 objectForKeyedSubscript:@"requiredEntitlement"];
  v34 = v11;
  v14 = [(MCMContainerConfiguration *)self _requiredEntitlementFromPlistValue:v13 error:&v34];
  v15 = v34;

  requiredEntitlement = self->_requiredEntitlement;
  self->_requiredEntitlement = v14;

  if (self->_requiredEntitlement || !v15)
  {
    v18 = [v6 objectForKeyedSubscript:@"genericExtensionsAllowedForClients"];
    v33 = v15;
    v19 = [(MCMContainerConfiguration *)self _clientIdentifiersSetFromPlistValue:v18 error:&v33];
    v11 = v33;

    genericExtensionsAllowedForClients = self->_genericExtensionsAllowedForClients;
    self->_genericExtensionsAllowedForClients = v19;

    if (self->_genericExtensionsAllowedForClients)
    {
      v21 = [v6 objectForKeyedSubscript:@"sandboxExtensionClass"];
      v22 = [(MCMContainerConfiguration *)self _sandboxExtensionClassFromPlistValue:v21];
      sandboxExtensionClass = self->_sandboxExtensionClass;
      self->_sandboxExtensionClass = v22;

      v24 = [v6 objectForKeyedSubscript:@"identifierPrefixesExemptFromAutomaticProtection"];
      v32 = v11;
      v25 = [(MCMContainerConfiguration *)self _identifierPrefixesExemptFromAutomaticProtectionFromPlistValue:v24 error:&v32];
      v26 = v32;

      identifierPrefixesExemptFromAutomaticProtection = self->_identifierPrefixesExemptFromAutomaticProtection;
      self->_identifierPrefixesExemptFromAutomaticProtection = v25;

      if (self->_identifierPrefixesExemptFromAutomaticProtection)
      {
        v28 = 1;
      }

      else
      {
        v28 = v26 == 0;
      }

      v17 = v28;
      v11 = v26;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = 0;
  v11 = v15;
LABEL_14:
  if (a4 && !v17)
  {
    v29 = v11;
    *a4 = v11;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)_identifierPrefixesExemptFromAutomaticProtectionFromPlistValue:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = v5;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              *buf = 138412546;
              v31 = v24;
              v32 = 2112;
              v33 = v8;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Identifier prefixes value is not in a valid format; expected = NSArray<NSString>, got = NSArray<%@>, value = %@", buf, 0x16u);
            }

            v15 = [[MCMError alloc] initWithErrorType:149 category:3];
            goto LABEL_21;
          }

          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = [v6 copy];
LABEL_13:
    v15 = 0;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138412546;
    v31 = v22;
    v32 = 2112;
    v33 = v7;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Identifier prefixes is not in a valid format; expected = NSArray, got = %@, value = %@", buf, 0x16u);
  }

  v15 = [[MCMError alloc] initWithErrorType:149 category:3];
LABEL_21:
  v14 = 0;
  if (a4)
  {
LABEL_22:
    if (!v14)
    {
      v18 = v15;
      *a4 = v15;
    }
  }

LABEL_24:

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)_normalizedContainerClassFromPlistValue:(id)a3 defaultContainerClass:(unint64_t)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = [v5 unsignedLongLongValue];
  }

  v6 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)_clientIdentifiersSetFromPlistValue:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = v5;
  if (!v7)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              *buf = 138412546;
              v31 = v24;
              v32 = 2112;
              v33 = v8;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Generic extension client value is not in a valid format; expected = NSArray<NSString>, got = NSArray<%@>, value = %@", buf, 0x16u);
            }

            v15 = [[MCMError alloc] initWithErrorType:149 category:3];
            goto LABEL_20;
          }

          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v14 = [v6 copy];
    v15 = 0;
    if (!a4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138412546;
    v31 = v22;
    v32 = 2112;
    v33 = v7;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Generic extension clients is not in a valid format; expected = NSArray, got = %@, value = %@", buf, 0x16u);
  }

  v15 = [[MCMError alloc] initWithErrorType:149 category:3];
LABEL_20:
  v14 = 0;
  if (a4)
  {
LABEL_21:
    if (!v14)
    {
      v18 = v15;
      *a4 = v15;
    }
  }

LABEL_23:

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_requiredEntitlementFromPlistValue:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v5 = 0;
    }

    else
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = 138412546;
        v14 = v12;
        v15 = 2112;
        v16 = v6;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Required entitlement is not in a valid format; expected = NSString, got = %@, value = %@", &v13, 0x16u);
      }

      v5 = [[MCMError alloc] initWithErrorType:149 category:3];
      v7 = 0;
      if (a4 && v5)
      {
        v5 = v5;
        v7 = 0;
        *a4 = v5;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_sandboxAffordancesFromPlistValue:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  if (!v5)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v25 = a4;
      v26 = v5;
      v11 = 0;
      v12 = *v35;
      while (2)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v34 + 1) + 8 * v13);
          v16 = [v8 objectForKeyedSubscript:{v15, v25, v26}];
          v28 = v14;
          v17 = [(MCMContainerConfiguration *)self _containerIdentifierSetFromPlistValue:v16 error:&v28];
          v11 = v28;

          if (!v17)
          {

            v6 = 0;
            goto LABEL_19;
          }

          [v6 setObject:v17 forKeyedSubscript:v15];

          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v34 objects:v33 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_19:
      a4 = v25;
      v5 = v26;
    }

    else
    {
      v11 = 0;
    }

    if (a4)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412546;
      v30 = v24;
      v31 = 2112;
      v32 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Team ID container ID map is not in a valid format; expected = NSDictionary, got = %@, value = %@", buf, 0x16u);
    }

    v11 = [[MCMError alloc] initWithErrorType:149 category:3];
    v6 = 0;
    if (a4)
    {
LABEL_22:
      if (!v6)
      {
        v19 = v11;
        *a4 = v11;
      }
    }
  }

LABEL_24:
  v20 = [v6 copy];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_containerIdentifierSetFromPlistValue:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138412546;
      v32 = v23;
      v33 = 2112;
      v34 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Team ID container ID map value is not in a valid format; expected = NSArray, got = %@, value = %@", buf, 0x16u);
    }

    v16 = [[MCMError alloc] initWithErrorType:149 category:3];
LABEL_18:
    v15 = 0;
    if (!a4)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!v15)
    {
      v19 = v16;
      *a4 = v16;
    }

    goto LABEL_21;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = container_log_handle_for_category();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138412546;
            v32 = v25;
            v33 = 2112;
            v34 = v8;
            _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Team ID container ID map value is not in a valid format; expected = NSArray<NSString>, got = NSArray<%@>, value = %@", buf, 0x16u);
          }

          v16 = [[MCMError alloc] initWithErrorType:149 category:3];
          goto LABEL_18;
        }

        v14 = [v13 lowercaseString];
        [v6 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v6 copy];
  v16 = 0;
  if (a4)
  {
    goto LABEL_19;
  }

LABEL_21:

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_sandboxExtensionClassFromPlistValue:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)_containerClassFromPlistValue:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if ([(MCMContainerConfiguration *)v4 conformsToProtocol:&unk_1F5A802D0])
  {
    v6 = [(MCMContainerConfiguration *)self isEqualToContainerConfig:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqualToContainerConfig:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMContainerConfiguration *)self containerClass];
  v6 = [v4 containerClass];

  result = v5 == v6;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)hash
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)debugDescriptionWithIndentString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMContainerConfiguration;
  v4 = a3;
  v5 = [(MCMPlistReadOnly *)&v10 descriptionOfBoolPropertiesWithIndentString:v4];
  v6 = [v5 stringByAppendingFormat:@"%@containerClass: %llu\n", v4, self->_containerClass];

  v7 = [v6 stringByAppendingFormat:@"%@name: %@\n", v4, self->_name];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)debugDescription
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMContainerConfiguration *)self debugDescriptionWithIndentString:&stru_1F5A5B2B8];
}

- (NSString)description
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MCMContainerConfiguration *)self containerClass];
  v5 = [(MCMContainerConfiguration *)self name];
  v6 = [v3 stringWithFormat:@"(%llu)%@", v4, v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMContainerConfiguration)initWithPreprocessedPlist:(id)a3 name:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MCMContainerConfiguration;
  v8 = [(MCMPlistReadOnly *)&v12 initWithPreprocessedPlist:a3 conformingToProtocol:&unk_1F5A802D0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a4);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end