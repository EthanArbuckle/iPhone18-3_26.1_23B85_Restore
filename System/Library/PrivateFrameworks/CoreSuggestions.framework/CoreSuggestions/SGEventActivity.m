@interface SGEventActivity
+ (id)describeType:(unsigned __int8)a3;
- (SGEventActivity)initWithDictionary:(id)a3;
- (SGEventActivity)initWithTeamIdentifier:(id)a3 type:(unsigned __int8)a4 userActivity:(id)a5 validStartDate:(double)a6 validEndDate:(double)a7;
- (id)jsonObject;
@end

@implementation SGEventActivity

- (id)jsonObject
{
  v23[5] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v3 = dispatch_semaphore_create(0);
  userActivity = self->_userActivity;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __29__SGEventActivity_jsonObject__block_invoke;
  v13[3] = &unk_1E7EFAC90;
  v15 = &v16;
  v5 = v3;
  v14 = v5;
  [(NSUserActivity *)userActivity _createUserActivityStringsWithOptions:0 completionHandler:v13];
  if ([MEMORY[0x1E69C5D10] waitForSemaphore:v5 timeoutSeconds:1.0] == 1)
  {
    v6 = 0;
  }

  else
  {
    v23[0] = self->_teamIdentifier;
    v22[0] = @"SGEventActivityTeamIdentifierKey";
    v22[1] = @"SGEventActivityTypeKey";
    v7 = [objc_opt_class() describeType:self->_type];
    v8 = v17[5];
    v23[1] = v7;
    v23[2] = v8;
    v22[2] = @"SGEventActivityUserActivityStringKey";
    v22[3] = @"SGEventActivityStartDateKey";
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_validStartDate];
    v23[3] = v9;
    v22[4] = @"SGEventActivityEndDateKey";
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_validEndDate];
    v23[4] = v10;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
  }

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

void __29__SGEventActivity_jsonObject__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (SGEventActivity)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SGEventActivity;
  v5 = [(SGEventActivity *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"SGEventActivityTeamIdentifierKey"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v6;

    v8 = objc_opt_class();
    v9 = [v4 objectForKeyedSubscript:@"SGEventActivityTypeKey"];
    v5->_type = [v8 typeForString:v9];

    v10 = objc_alloc(MEMORY[0x1E69636A8]);
    v11 = [v4 objectForKeyedSubscript:@"SGEventActivityUserActivityStringKey"];
    v12 = [v10 _initWithUserActivityStrings:v11 secondaryString:0 optionalData:0];
    userActivity = v5->_userActivity;
    v5->_userActivity = v12;

    v14 = [v4 objectForKeyedSubscript:@"SGEventActivityStartDateKey"];
    [v14 doubleValue];
    v5->_validStartDate = v15;

    v16 = [v4 objectForKeyedSubscript:@"SGEventActivityEndDateKey"];
    [v16 doubleValue];
    v5->_validEndDate = v17;
  }

  return v5;
}

- (SGEventActivity)initWithTeamIdentifier:(id)a3 type:(unsigned __int8)a4 userActivity:(id)a5 validStartDate:(double)a6 validEndDate:(double)a7
{
  v13 = a3;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = SGEventActivity;
  v15 = [(SGEventActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_teamIdentifier, a3);
    v16->_type = a4;
    objc_storeStrong(&v16->_userActivity, a5);
    v16->_validStartDate = a6;
    v16->_validEndDate = a7;
  }

  return v16;
}

+ (id)describeType:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    return @"CheckIn";
  }

  else
  {
    return @"Unknown";
  }
}

@end