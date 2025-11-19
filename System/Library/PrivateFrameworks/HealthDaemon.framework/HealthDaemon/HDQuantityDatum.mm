@interface HDQuantityDatum
+ (HDQuantityDatum)quantityDatumWithHKQuantityDatum:(id)a3 metadata:(id)a4;
+ (id)quantityDataForDifferencesInData:(id)a3 baseDatum:(id)a4 unit:(id)a5 differenceHandler:(id)a6 intervalHandler:(id)a7;
- (BOOL)isEqual:(id)a3;
- (HDQuantityDatum)initWithCoder:(id)a3;
- (HDQuantityDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 quantity:(id)a5 metadata:(id)a6 resumeContextProvider:(id)a7;
- (HDQuantityDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 resumeContext:(id)a5 quantity:(id)a6;
- (id)datumForChangeSince:(id)a3 newIdentifier:(id)a4 newResumeContext:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDQuantityDatum

+ (id)quantityDataForDifferencesInData:(id)a3 baseDatum:(id)a4 unit:(id)a5 differenceHandler:(id)a6 intervalHandler:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v33 = a5;
  v13 = a6;
  v14 = a7;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  v15 = 0;
  if (v35)
  {
    v16 = *v38;
    v31 = *v38;
    v32 = v13;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        v18 = v12;
        if (*v38 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v12 = v19;
        if (v18)
        {
          v21 = v13[2](v13, v18, v12);
          if (fabs(v21) >= 2.22044605e-16)
          {
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v22 = [HDQuantityDatum alloc];
            v23 = [MEMORY[0x277CCAD78] UUID];
            v14[2](v14, v18, v12);
            v25 = v24 = v14;
            [MEMORY[0x277CCD7E8] quantityWithUnit:v33 doubleValue:v21];
            v27 = v26 = v15;
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __101__HDQuantityDatum_quantityDataForDifferencesInData_baseDatum_unit_differenceHandler_intervalHandler___block_invoke;
            v36[3] = &unk_278620030;
            v36[4] = v12;
            v28 = [(HDQuantityDatum *)v22 initWithIdentifier:v23 dateInterval:v25 quantity:v27 metadata:0 resumeContextProvider:v36];

            v15 = v26;
            v14 = v24;

            [v26 addObject:v28];
            v16 = v31;
            v13 = v32;
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v35);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

id __101__HDQuantityDatum_quantityDataForDifferencesInData_baseDatum_unit_differenceHandler_intervalHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v9];
  v4 = v9;
  if (!v3)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v4;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "Failed to archive %{public}@ when generating resume context for persisted data: %{public}@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HDQuantityDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 resumeContext:(id)a5 quantity:(id)a6
{
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HDQuantityDatum_initWithIdentifier_dateInterval_resumeContext_quantity___block_invoke;
  v14[3] = &unk_278620030;
  v15 = v10;
  v11 = v10;
  v12 = [(HDQuantityDatum *)self initWithIdentifier:a3 dateInterval:a4 quantity:a6 metadata:0 resumeContextProvider:v14];

  return v12;
}

- (HDQuantityDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 quantity:(id)a5 metadata:(id)a6 resumeContextProvider:(id)a7
{
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HDQuantityDatum;
  v14 = [(HDDataCollectorSensorDatum *)&v20 initWithIdentifier:a3 dateInterval:a4 resumeContextProvider:a7];
  if (v14)
  {
    v15 = [v12 copy];
    quantity = v14->_quantity;
    v14->_quantity = v15;

    v17 = [v13 copy];
    metadata = v14->_metadata;
    v14->_metadata = v17;
  }

  return v14;
}

- (id)datumForChangeSince:(id)a3 newIdentifier:(id)a4 newResumeContext:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v26 = self;
    goto LABEL_11;
  }

  v11 = [(HDQuantityDatum *)self quantity];
  v12 = [v8 quantity];
  v13 = [v12 _unit];
  v14 = [v11 isCompatibleWithUnit:v13];

  if ((v14 & 1) == 0)
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v45 = v27;
      v46 = [(HDQuantityDatum *)self quantity];
      v47 = [v46 _unit];
      v48 = [v8 quantity];
      v49 = [v48 _unit];
      v50 = 138478083;
      v51 = v47;
      v52 = 2113;
      v53 = v49;
      _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "Couldn't subtract units of type %{private}@ from units of type %{private}@", &v50, 0x16u);
    }

    goto LABEL_9;
  }

  v15 = [v8 dateInterval];
  v16 = [v15 endDate];
  v17 = [(HDDataCollectorSensorDatum *)self dateInterval];
  v18 = [v17 endDate];
  v19 = [v16 hk_isAfterDate:v18];

  if (v19)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = [v8 dateInterval];
      v23 = [v22 endDate];
      v24 = [(HDDataCollectorSensorDatum *)self dateInterval];
      v25 = [v24 endDate];
      v50 = 138478083;
      v51 = v23;
      v52 = 2113;
      v53 = v25;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Minuend date %{private}@ must occur at the same time or before subtrahend date %{private}@", &v50, 0x16u);
    }

LABEL_9:
    v26 = 0;
    goto LABEL_11;
  }

  v28 = [(HDQuantityDatum *)self quantity];
  v29 = [v28 _unit];

  v30 = [v8 quantity];
  [v30 doubleValueForUnit:v29];
  v32 = v31;

  v33 = [(HDQuantityDatum *)self quantity];
  [v33 doubleValueForUnit:v29];
  v35 = v34;

  v36 = [MEMORY[0x277CCD7E8] quantityWithUnit:v29 doubleValue:v35 - v32];
  v37 = objc_alloc(MEMORY[0x277CCA970]);
  v38 = [v8 dateInterval];
  v39 = [v38 endDate];
  v40 = [(HDDataCollectorSensorDatum *)self dateInterval];
  v41 = [v40 endDate];
  v42 = [v37 initWithStartDate:v39 endDate:v41];

  v26 = [[HDQuantityDatum alloc] initWithIdentifier:v9 dateInterval:v42 resumeContext:v10 quantity:v36];
LABEL_11:

  v43 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (HDQuantityDatum)quantityDatumWithHKQuantityDatum:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [HDQuantityDatum alloc];
  v8 = [v5 UUID];
  v9 = [v5 dateInterval];
  v10 = [v5 quantity];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HDQuantityDatum_quantityDatumWithHKQuantityDatum_metadata___block_invoke;
  v14[3] = &unk_278620030;
  v15 = v5;
  v11 = v5;
  v12 = [(HDQuantityDatum *)v7 initWithIdentifier:v8 dateInterval:v9 quantity:v10 metadata:v6 resumeContextProvider:v14];

  return v12;
}

- (HDQuantityDatum)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDQuantityDatum;
  v5 = [(HDDataCollectorSensorDatum *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hdqd_qt"];
    quantity = v5->_quantity;
    v5->_quantity = v6;

    v8 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"hdqd_md"];
    metadata = v5->_metadata;
    v5->_metadata = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDQuantityDatum;
  v4 = a3;
  [(HDDataCollectorSensorDatum *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_quantity forKey:{@"hdqd_qt", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_metadata forKey:@"hdqd_md"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = HDQuantityDatum;
  if (![(HDDataCollectorSensorDatum *)&v11 isEqual:v4])
  {
    goto LABEL_9;
  }

  quantity = self->_quantity;
  v6 = v4[5];
  if (quantity != v6 && (!v6 || ![(HKQuantity *)quantity isEqual:?]))
  {
    goto LABEL_9;
  }

  metadata = self->_metadata;
  v8 = v4[6];
  if (metadata == v8)
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (v8)
  {
    v9 = [(NSDictionary *)metadata isEqual:?];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDDataCollectorSensorDatum *)self datumIdentifier];
  v5 = [(HDDataCollectorSensorDatum *)self dateInterval];
  v6 = [v3 stringWithFormat:@"<%@: %@, quantity: %@>", v4, v5, self->_quantity];

  return v6;
}

@end