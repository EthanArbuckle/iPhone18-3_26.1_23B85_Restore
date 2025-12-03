@interface GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder
- (GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v6 initializeWithModel:modelCopy];
  motorName = [modelCopy motorName];

  [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)self setMotorName:motorName];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)self setMotorName:0];
}

- (id)build
{
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v9 build];
  motorName = [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)self motorName];
  if (!motorName)
  {
    [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)a2 build];
  }

  v6 = [motorName copy];
  v7 = build[1];
  build[1] = v6;

  return build;
}

- (GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v18 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_4;
  }

  v17 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"MotorName" ofClass:objc_opt_class() error:&v17];
  v9 = v17;
  if (!v8)
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v19[0] = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v20[0] = v14;
      v19[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v20[1] = localizedFailureReason;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      *error = [(NSError *)v13 gc_modelError:v16 userInfo:?];
    }

    goto LABEL_8;
  }

  [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)v7 setMotorName:v8];

  v10 = v7;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataRumbleMotorValueExpressionModel.m" lineNumber:89 description:@"'motorName' can not be nil"];
}

@end