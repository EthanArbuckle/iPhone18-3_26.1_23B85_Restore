@interface CalAlarmMetadata
+ (BOOL)isRecognizedParameter:(id)a3 forProperty:(id)a4 inComponent:(id)a5;
+ (BOOL)isRecognizedProperty:(id)a3 inComponent:(id)a4;
+ (BOOL)shouldSkipSavingUnrecognizedParametersForProperty:(id)a3 inComponent:(id)a4;
+ (id)metadataWithData:(id)a3;
- (CalAlarmMetadata)initWithCoder:(id)a3;
@end

@implementation CalAlarmMetadata

+ (BOOL)isRecognizedProperty:(id)a3 inComponent:(id)a4
{
  v4 = isRecognizedProperty_inComponent__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[CalAlarmMetadata isRecognizedProperty:inComponent:];
  }

  v6 = [isRecognizedProperty_inComponent__recognizedProperties containsObject:v5];

  return v6;
}

uint64_t __53__CalAlarmMetadata_isRecognizedProperty_inComponent___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = *MEMORY[0x1E69E3E98];
  v2 = [v0 initWithObjects:{*MEMORY[0x1E69E3E90], *MEMORY[0x1E69E3E98], *MEMORY[0x1E69E3FA8], *MEMORY[0x1E69E4010], *MEMORY[0x1E69E4020], *MEMORY[0x1E69E3D38], *MEMORY[0x1E69E3D58], *MEMORY[0x1E69E3DA8], *MEMORY[0x1E69E3DF0], *MEMORY[0x1E69E3E78], 0}];
  v3 = isRecognizedProperty_inComponent__recognizedProperties;
  isRecognizedProperty_inComponent__recognizedProperties = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (BOOL)isRecognizedParameter:(id)a3 forProperty:(id)a4 inComponent:(id)a5
{
  v6 = isRecognizedParameter_forProperty_inComponent__onceToken;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    +[CalAlarmMetadata isRecognizedParameter:forProperty:inComponent:];
  }

  v9 = [isRecognizedParameter_forProperty_inComponent__recognizedParametersByPropertyName objectForKeyedSubscript:v7];

  v10 = [v9 containsObject:v8];
  return v10;
}

void __66__CalAlarmMetadata_isRecognizedParameter_forProperty_inComponent___block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E3E88], *MEMORY[0x1E69E3E80], *MEMORY[0x1E69E3DB0], 0}];
  v5[0] = *MEMORY[0x1E69E4010];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E4030], 0}];
  v5[1] = *MEMORY[0x1E69E3DF0];
  v6[0] = v1;
  v6[1] = v0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = isRecognizedParameter_forProperty_inComponent__recognizedParametersByPropertyName;
  isRecognizedParameter_forProperty_inComponent__recognizedParametersByPropertyName = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldSkipSavingUnrecognizedParametersForProperty:(id)a3 inComponent:(id)a4
{
  v4 = shouldSkipSavingUnrecognizedParametersForProperty_inComponent__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[CalAlarmMetadata shouldSkipSavingUnrecognizedParametersForProperty:inComponent:];
  }

  v6 = [shouldSkipSavingUnrecognizedParametersForProperty_inComponent__propertiesToSkipSavingUnrecognizedParameters containsObject:v5];

  return v6;
}

uint64_t __82__CalAlarmMetadata_shouldSkipSavingUnrecognizedParametersForProperty_inComponent___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E69E3D38], 0}];
  v2 = shouldSkipSavingUnrecognizedParametersForProperty_inComponent__propertiesToSkipSavingUnrecognizedParameters;
  shouldSkipSavingUnrecognizedParametersForProperty_inComponent__propertiesToSkipSavingUnrecognizedParameters = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)metadataWithData:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___CalAlarmMetadata;
  v5 = objc_msgSendSuper2(&v11, sel_metadataWithData_, v4);
  if (!v5)
  {
    v10 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];
    v6 = v10;
    if (!v5)
    {
      v7 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "Error unarchiving alarm metadata: %@", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (CalAlarmMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  if (initWithCoder__onceToken != -1)
  {
    [CalAlarmMetadata initWithCoder:];
  }

  v5 = [v4 decodeObjectOfClasses:initWithCoder__attachmentClasses forKey:@"Attach"];
  v6 = [v4 decodeObjectOfClasses:initWithCoder__attendeeClasses forKey:@"Attendee"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Description"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Summary"];
  v9 = v8;
  if (v5 || v6 || v7 || v8)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69E3C40]);
    [v11 setAttach:v5];
    [v11 setAttendee:v6];
    [v11 setDescription:v7];
    [v11 setSummary:v9];
    v13.receiver = self;
    v13.super_class = CalAlarmMetadata;
    v10 = [(CalItemMetadata *)&v13 initWithICSComponent:v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CalAlarmMetadata;
    v10 = [(CalItemMetadata *)&v14 initWithCoder:v4];
  }

  return v10;
}

void __34__CalAlarmMetadata_initWithCoder___block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__attachmentClasses;
  initWithCoder__attachmentClasses = v2;

  v4 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v4 setWithArray:v5];
  v7 = initWithCoder__attendeeClasses;
  initWithCoder__attendeeClasses = v6;

  v8 = *MEMORY[0x1E69E9840];
}

@end