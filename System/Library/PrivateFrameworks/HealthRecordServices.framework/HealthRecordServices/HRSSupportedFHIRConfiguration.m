@interface HRSSupportedFHIRConfiguration
+ (id)emetConfiguration;
+ (void)emetConfiguration;
- (BOOL)addSupportedFHIRRelease:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSupportedFHIRRelease:(id)a3;
- (BOOL)isSupportedFHIRResourceType:(id)a3 FHIRRelease:(id)a4;
- (BOOL)isSupportedFHIRResourceType:(id)a3 FHIRVersionString:(id)a4;
- (BOOL)isSupportedFHIRVersionString:(id)a3;
- (HRSSupportedFHIRConfiguration)init;
- (HRSSupportedFHIRConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation HRSSupportedFHIRConfiguration

- (HRSSupportedFHIRConfiguration)init
{
  v6.receiver = self;
  v6.super_class = HRSSupportedFHIRConfiguration;
  v2 = [(HRSSupportedFHIRConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    releasesTable = v2->_releasesTable;
    v2->_releasesTable = v3;
  }

  return v2;
}

- (BOOL)isSupportedFHIRVersionString:(id)a3
{
  v9 = 0;
  v4 = [MEMORY[0x277CCD3D0] versionFromVersionString:a3 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 FHIRRelease];
    v7 = [(HRSSupportedFHIRConfiguration *)self isSupportedFHIRRelease:v6];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HRSSupportedFHIRConfiguration isSupportedFHIRVersionString:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)isSupportedFHIRRelease:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_releasesTable objectForKeyedSubscript:v4];
  if (!v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
    {
      [HRSSupportedFHIRConfiguration isSupportedFHIRRelease:];
    }
  }

  return v5 != 0;
}

- (BOOL)isSupportedFHIRResourceType:(id)a3 FHIRVersionString:(id)a4
{
  v6 = a3;
  v12 = 0;
  v7 = [MEMORY[0x277CCD3D0] versionFromVersionString:a4 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 FHIRRelease];
    v10 = [(HRSSupportedFHIRConfiguration *)self isSupportedFHIRResourceType:v6 FHIRRelease:v9];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HRSSupportedFHIRConfiguration isSupportedFHIRResourceType:FHIRVersionString:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)isSupportedFHIRResourceType:(id)a3 FHIRRelease:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_releasesTable objectForKeyedSubscript:v7];
  v9 = v8;
  if (!v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
    {
      [HRSSupportedFHIRConfiguration isSupportedFHIRRelease:];
    }

    goto LABEL_8;
  }

  v10 = [v8 resourceTypes];
  v11 = [v10 containsObject:v6];

  if ((v11 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
    {
      v16 = v13;
      v18 = 138543874;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v6;
      v17 = v19;
      _os_log_debug_impl(&dword_2519FE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ FHIR release %{public}@ is supported but resource type %{public}@ is not", &v18, 0x20u);
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = 1;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)addSupportedFHIRRelease:(id)a3 error:(id *)a4
{
  v6 = a3;
  releasesTable = self->_releasesTable;
  v8 = [v6 FHIRRelease];
  v9 = [(NSMutableDictionary *)releasesTable objectForKeyedSubscript:v8];

  if (v9)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"%@ already has FHIR release %@ configured, cannot add a second configuration", self, v6}];
  }

  else
  {
    v10 = self->_releasesTable;
    v11 = [v6 FHIRRelease];
    [(NSMutableDictionary *)v10 setObject:v6 forKeyedSubscript:v11];
  }

  return v9 == 0;
}

+ (id)emetConfiguration
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"AllergyIntolerance", @"Condition", @"DiagnosticReport", @"Immunization", @"MedicationDispense", @"MedicationOrder", @"MedicationStatement", @"Observation", @"Patient", @"Procedure", 0}];
  v4 = [HRSSupportedFHIRRelease alloc];
  v5 = [(HRSSupportedFHIRRelease *)v4 initWithFHIRRelease:*MEMORY[0x277CCBDC8] resourceTypes:v3];
  v9 = 0;
  v6 = [v2 addSupportedFHIRRelease:v5 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      +[HRSSupportedFHIRConfiguration emetConfiguration];
    }
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      releasesTable = self->_releasesTable;
      v6 = [(HRSSupportedFHIRConfiguration *)v4 releasesTable];
      v7 = [(NSMutableDictionary *)releasesTable isEqualToDictionary:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [(NSMutableDictionary *)self->_releasesTable allValues];
  v4 = [v3 hk_map:&__block_literal_global_11];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:@"<%@ %p supported releases: %@>", v7, self, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableDictionary *)self->_releasesTable copy];
  [v4 setReleasesTable:v5];

  return v4;
}

- (HRSSupportedFHIRConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ReleasesTable"];
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = HRSSupportedFHIRConfiguration;
    v10 = [(HRSSupportedFHIRConfiguration *)&v15 init];
    if (v10)
    {
      v11 = [v9 mutableCopy];
      releasesTable = v10->_releasesTable;
      v10->_releasesTable = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v13 = 0;
  }

  return v13;
}

- (void)isSupportedFHIRVersionString:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4();
  v5 = [v0 localizedDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isSupportedFHIRRelease:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4();
  v4 = v3;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)isSupportedFHIRResourceType:FHIRVersionString:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4();
  v5 = [v0 localizedDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)emetConfiguration
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  v4 = v0;
  _os_log_error_impl(&dword_2519FE000, v1, OS_LOG_TYPE_ERROR, "%{public}@ failed to add DSTU-2 release to Emet configuration: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end