@interface HDQuantityDatum
+ (HDQuantityDatum)quantityDatumWithHKQuantityDatum:(id)datum metadata:(id)metadata;
+ (id)quantityDataForDifferencesInData:(id)data baseDatum:(id)datum unit:(id)unit differenceHandler:(id)handler intervalHandler:(id)intervalHandler;
- (BOOL)isEqual:(id)equal;
- (HDQuantityDatum)initWithCoder:(id)coder;
- (HDQuantityDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval quantity:(id)quantity metadata:(id)metadata resumeContextProvider:(id)provider;
- (HDQuantityDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval resumeContext:(id)context quantity:(id)quantity;
- (id)datumForChangeSince:(id)since newIdentifier:(id)identifier newResumeContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDQuantityDatum

+ (id)quantityDataForDifferencesInData:(id)data baseDatum:(id)datum unit:(id)unit differenceHandler:(id)handler intervalHandler:(id)intervalHandler
{
  v42 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  datumCopy = datum;
  unitCopy = unit;
  handlerCopy = handler;
  intervalHandlerCopy = intervalHandler;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = dataCopy;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  v15 = 0;
  if (v35)
  {
    v16 = *v38;
    v31 = *v38;
    v32 = handlerCopy;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        v18 = datumCopy;
        if (*v38 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        datumCopy = v19;
        if (v18)
        {
          v21 = handlerCopy[2](handlerCopy, v18, datumCopy);
          if (fabs(v21) >= 2.22044605e-16)
          {
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v22 = [HDQuantityDatum alloc];
            uUID = [MEMORY[0x277CCAD78] UUID];
            intervalHandlerCopy[2](intervalHandlerCopy, v18, datumCopy);
            v25 = v24 = intervalHandlerCopy;
            [MEMORY[0x277CCD7E8] quantityWithUnit:unitCopy doubleValue:v21];
            v27 = v26 = v15;
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __101__HDQuantityDatum_quantityDataForDifferencesInData_baseDatum_unit_differenceHandler_intervalHandler___block_invoke;
            v36[3] = &unk_278620030;
            v36[4] = datumCopy;
            v28 = [(HDQuantityDatum *)v22 initWithIdentifier:uUID dateInterval:v25 quantity:v27 metadata:0 resumeContextProvider:v36];

            v15 = v26;
            intervalHandlerCopy = v24;

            [v26 addObject:v28];
            v16 = v31;
            handlerCopy = v32;
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

- (HDQuantityDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval resumeContext:(id)context quantity:(id)quantity
{
  contextCopy = context;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HDQuantityDatum_initWithIdentifier_dateInterval_resumeContext_quantity___block_invoke;
  v14[3] = &unk_278620030;
  v15 = contextCopy;
  v11 = contextCopy;
  v12 = [(HDQuantityDatum *)self initWithIdentifier:identifier dateInterval:interval quantity:quantity metadata:0 resumeContextProvider:v14];

  return v12;
}

- (HDQuantityDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval quantity:(id)quantity metadata:(id)metadata resumeContextProvider:(id)provider
{
  quantityCopy = quantity;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = HDQuantityDatum;
  v14 = [(HDDataCollectorSensorDatum *)&v20 initWithIdentifier:identifier dateInterval:interval resumeContextProvider:provider];
  if (v14)
  {
    v15 = [quantityCopy copy];
    quantity = v14->_quantity;
    v14->_quantity = v15;

    v17 = [metadataCopy copy];
    metadata = v14->_metadata;
    v14->_metadata = v17;
  }

  return v14;
}

- (id)datumForChangeSince:(id)since newIdentifier:(id)identifier newResumeContext:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  sinceCopy = since;
  identifierCopy = identifier;
  contextCopy = context;
  if (!sinceCopy)
  {
    selfCopy = self;
    goto LABEL_11;
  }

  quantity = [(HDQuantityDatum *)self quantity];
  quantity2 = [sinceCopy quantity];
  _unit = [quantity2 _unit];
  v14 = [quantity isCompatibleWithUnit:_unit];

  if ((v14 & 1) == 0)
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v45 = v27;
      quantity3 = [(HDQuantityDatum *)self quantity];
      _unit2 = [quantity3 _unit];
      quantity4 = [sinceCopy quantity];
      _unit3 = [quantity4 _unit];
      v50 = 138478083;
      v51 = _unit2;
      v52 = 2113;
      v53 = _unit3;
      _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "Couldn't subtract units of type %{private}@ from units of type %{private}@", &v50, 0x16u);
    }

    goto LABEL_9;
  }

  dateInterval = [sinceCopy dateInterval];
  endDate = [dateInterval endDate];
  dateInterval2 = [(HDDataCollectorSensorDatum *)self dateInterval];
  endDate2 = [dateInterval2 endDate];
  v19 = [endDate hk_isAfterDate:endDate2];

  if (v19)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      dateInterval3 = [sinceCopy dateInterval];
      endDate3 = [dateInterval3 endDate];
      dateInterval4 = [(HDDataCollectorSensorDatum *)self dateInterval];
      endDate4 = [dateInterval4 endDate];
      v50 = 138478083;
      v51 = endDate3;
      v52 = 2113;
      v53 = endDate4;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Minuend date %{private}@ must occur at the same time or before subtrahend date %{private}@", &v50, 0x16u);
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_11;
  }

  quantity5 = [(HDQuantityDatum *)self quantity];
  _unit4 = [quantity5 _unit];

  quantity6 = [sinceCopy quantity];
  [quantity6 doubleValueForUnit:_unit4];
  v32 = v31;

  quantity7 = [(HDQuantityDatum *)self quantity];
  [quantity7 doubleValueForUnit:_unit4];
  v35 = v34;

  v36 = [MEMORY[0x277CCD7E8] quantityWithUnit:_unit4 doubleValue:v35 - v32];
  v37 = objc_alloc(MEMORY[0x277CCA970]);
  dateInterval5 = [sinceCopy dateInterval];
  endDate5 = [dateInterval5 endDate];
  dateInterval6 = [(HDDataCollectorSensorDatum *)self dateInterval];
  endDate6 = [dateInterval6 endDate];
  v42 = [v37 initWithStartDate:endDate5 endDate:endDate6];

  selfCopy = [[HDQuantityDatum alloc] initWithIdentifier:identifierCopy dateInterval:v42 resumeContext:contextCopy quantity:v36];
LABEL_11:

  v43 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

+ (HDQuantityDatum)quantityDatumWithHKQuantityDatum:(id)datum metadata:(id)metadata
{
  datumCopy = datum;
  metadataCopy = metadata;
  v7 = [HDQuantityDatum alloc];
  uUID = [datumCopy UUID];
  dateInterval = [datumCopy dateInterval];
  quantity = [datumCopy quantity];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HDQuantityDatum_quantityDatumWithHKQuantityDatum_metadata___block_invoke;
  v14[3] = &unk_278620030;
  v15 = datumCopy;
  v11 = datumCopy;
  v12 = [(HDQuantityDatum *)v7 initWithIdentifier:uUID dateInterval:dateInterval quantity:quantity metadata:metadataCopy resumeContextProvider:v14];

  return v12;
}

- (HDQuantityDatum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HDQuantityDatum;
  v5 = [(HDDataCollectorSensorDatum *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hdqd_qt"];
    quantity = v5->_quantity;
    v5->_quantity = v6;

    hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v9 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"hdqd_md"];
    metadata = v5->_metadata;
    v5->_metadata = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDQuantityDatum;
  coderCopy = coder;
  [(HDDataCollectorSensorDatum *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_quantity forKey:{@"hdqd_qt", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_metadata forKey:@"hdqd_md"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = HDQuantityDatum;
  if (![(HDDataCollectorSensorDatum *)&v11 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  quantity = self->_quantity;
  v6 = equalCopy[5];
  if (quantity != v6 && (!v6 || ![(HKQuantity *)quantity isEqual:?]))
  {
    goto LABEL_9;
  }

  metadata = self->_metadata;
  v8 = equalCopy[6];
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
  datumIdentifier = [(HDDataCollectorSensorDatum *)self datumIdentifier];
  dateInterval = [(HDDataCollectorSensorDatum *)self dateInterval];
  v6 = [v3 stringWithFormat:@"<%@: %@, quantity: %@>", datumIdentifier, dateInterval, self->_quantity];

  return v6;
}

@end