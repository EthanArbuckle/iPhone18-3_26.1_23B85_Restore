@interface HDInsertValuesToQuantitySampleSeriesOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertValuesToQuantitySampleSeriesOperation)initWithCoder:(id)a3;
- (HDInsertValuesToQuantitySampleSeriesOperation)initWithSeries:(id)a3 values:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDInsertValuesToQuantitySampleSeriesOperation

- (HDInsertValuesToQuantitySampleSeriesOperation)initWithSeries:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDInsertValuesToQuantitySampleSeriesOperation;
  v8 = [(HDInsertValuesToQuantitySampleSeriesOperation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    series = v8->_series;
    v8->_series = v9;

    v11 = [v7 copy];
    values = v8->_values;
    v8->_values = v11;
  }

  return v8;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self->_series;
  if (!v11)
  {
    v11 = [(HDDataEntity *)HDQuantitySampleSeriesEntity objectWithUUID:self->_legacySeriesIdentifier encodingOptions:MEMORY[0x277CBEC10] profile:v9 error:a5];
  }

  if (!self->_didAwakeFromJournal)
  {
    v26 = a2;
    v15 = [v10 protectedDatabase];
    v16 = [(HKQuantitySample *)v11 UUID];
    v17 = HDDataEntityPredicateForDataUUID();
    v27 = 0;
    v18 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v15 predicate:v17 error:&v27];
    v19 = v27;

    if (v18)
    {
      v14 = [v18 insertValues:self->_values transaction:v10 error:a5];
LABEL_15:

      goto LABEL_16;
    }

    if (v19)
    {
      v19 = v19;
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = objc_opt_class();
      v22 = [(HKQuantitySample *)v11 UUID];
      v23 = [v20 hk_errorForInvalidArgument:@"@" class:v21 selector:v26 format:{@"Unable to find quantity series '%@' when inserting journaled series values.", v22}];

      v19 = v23;
      if (!v19)
      {
LABEL_14:
        v14 = 0;
        goto LABEL_15;
      }
    }

    if (a5)
    {
      v24 = v19;
      *a5 = v19;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_14;
  }

  v12 = [v9 dataManager];
  v13 = [v12 quantitySeriesManager];
  v14 = [v13 insertValues:self->_values series:v11 error:a5];

LABEL_16:
  return v14;
}

- (HDInsertValuesToQuantitySampleSeriesOperation)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HDInsertValuesToQuantitySampleSeriesOperation;
  v5 = [(HDInsertValuesToQuantitySampleSeriesOperation *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"series"];
    series = v5->_series;
    v5->_series = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    legacySeriesIdentifier = v5->_legacySeriesIdentifier;
    v5->_legacySeriesIdentifier = v8;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"values"];
    values = v5->_values;
    v5->_values = v13;

    v5->_didAwakeFromJournal = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  legacySeriesIdentifier = self->_legacySeriesIdentifier;
  v5 = a3;
  [v5 encodeObject:legacySeriesIdentifier forKey:@"sid"];
  [v5 encodeObject:self->_series forKey:@"series"];
  [v5 encodeObject:self->_values forKey:@"values"];
}

@end