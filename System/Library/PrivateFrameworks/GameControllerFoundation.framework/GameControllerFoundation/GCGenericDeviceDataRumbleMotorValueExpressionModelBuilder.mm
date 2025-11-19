@interface GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder
- (GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v6 initializeWithModel:v4];
  v5 = [v4 motorName];

  [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)self setMotorName:v5];
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
  v4 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v9 build];
  v5 = [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)self motorName];
  if (!v5)
  {
    [(GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

- (GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18.receiver = self;
  v18.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v18 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_4;
  }

  v17 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"MotorName" ofClass:objc_opt_class() error:&v17];
  v9 = v17;
  if (!v8)
  {
    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v19[0] = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v20[0] = v14;
      v19[1] = *MEMORY[0x1E696A588];
      v15 = [v9 localizedFailureReason];
      v20[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      *a4 = [(NSError *)v13 gc_modelError:v16 userInfo:?];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDataRumbleMotorValueExpressionModel.m" lineNumber:89 description:@"'motorName' can not be nil"];
}

@end