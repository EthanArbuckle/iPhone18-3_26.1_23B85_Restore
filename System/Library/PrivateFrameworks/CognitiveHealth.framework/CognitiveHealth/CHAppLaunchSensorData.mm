@interface CHAppLaunchSensorData
- (CHAppLaunchSensorData)initWithBundleId:(id)a3 embeddingVector:(id)a4 modelVersion:(id)a5 algorithmType:(id)a6 trainingDate:(id)a7;
- (CHAppLaunchSensorData)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHAppLaunchSensorData

- (id)description
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"MM-dd-yyyy HH:mm"];
  v4 = MEMORY[0x277CCACA8];
  v10 = *&self->_bundleId;
  modelVersion = self->_modelVersion;
  algorithmType = self->_algorithmType;
  v7 = [v3 stringFromDate:self->_trainingDate];
  v8 = [v4 stringWithFormat:@"<CHAppLaunchSensorData for bundleId: %@\nEmbeddingVector: %@\nModel version: %@ | algo: %@ | trainingDate: %@", v10, modelVersion, algorithmType, v7];

  return v8;
}

- (CHAppLaunchSensorData)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x277D42620];
  v7 = objc_opt_class();
  v8 = MEMORY[0x277D86220];
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"bundleId" withCoder:v5 expectNonNull:1 errorDomain:@"CHErrorDomain" errorCode:1 logHandle:MEMORY[0x277D86220]];
  if (!v9)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"CHAppLaunchSensorData.m" lineNumber:63 description:@"bundleId can't be nil."];
  }

  v10 = MEMORY[0x277D42620];
  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = objc_opt_class();
  v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  v15 = [v10 robustDecodeObjectOfClasses:v14 forKey:@"embeddingVector" withCoder:v5 expectNonNull:0 errorDomain:@"CHErrorDomain" errorCode:1 logHandle:v8];

  v16 = [MEMORY[0x277D42620] robustDecodeObjectOfClass:objc_opt_class() forKey:@"modelVersion" withCoder:v5 expectNonNull:0 errorDomain:@"CHErrorDomain" errorCode:1 logHandle:v8];
  v17 = [MEMORY[0x277D42620] robustDecodeObjectOfClass:objc_opt_class() forKey:@"algorithmType" withCoder:v5 expectNonNull:0 errorDomain:@"CHErrorDomain" errorCode:1 logHandle:v8];
  v18 = [MEMORY[0x277D42620] robustDecodeObjectOfClass:objc_opt_class() forKey:@"trainingDate" withCoder:v5 expectNonNull:0 errorDomain:@"CHErrorDomain" errorCode:1 logHandle:v8];
  v19 = [[CHAppLaunchSensorData alloc] initWithBundleId:v9 embeddingVector:v15 modelVersion:v16 algorithmType:v17 trainingDate:v18];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  bundleId = self->_bundleId;
  v5 = a3;
  [v5 encodeObject:bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_embeddingVector forKey:@"embeddingVector"];
  [v5 encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [v5 encodeObject:self->_algorithmType forKey:@"algorithmType"];
  [v5 encodeObject:self->_trainingDate forKey:@"trainingDate"];
}

- (CHAppLaunchSensorData)initWithBundleId:(id)a3 embeddingVector:(id)a4 modelVersion:(id)a5 algorithmType:(id)a6 trainingDate:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CHAppLaunchSensorData;
  v17 = [(CHAppLaunchSensorData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleId, a3);
    objc_storeStrong(&v18->_embeddingVector, a4);
    objc_storeStrong(&v18->_modelVersion, a5);
    objc_storeStrong(&v18->_algorithmType, a6);
    objc_storeStrong(&v18->_trainingDate, a7);
  }

  return v18;
}

@end