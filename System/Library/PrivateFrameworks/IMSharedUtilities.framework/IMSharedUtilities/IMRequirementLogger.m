@interface IMRequirementLogger
+ (id)sharedInstance;
- (IMRequirementFailed_t)requirementDidFail:(const char *)a3;
- (IMRequirementLogger)init;
- (const)categoryOverride;
- (id)description;
- (void)dealloc;
- (void)setCategoryOverride:(const char *)a3;
- (void)updateSettingsFromUserDefaults;
@end

@implementation IMRequirementLogger

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8662F2C;
  block[3] = &unk_1E7826200;
  block[4] = a1;
  if (qword_1ED8C9930 != -1)
  {
    dispatch_once(&qword_1ED8C9930, block);
  }

  v2 = qword_1EB30AE90;

  return v2;
}

- (IMRequirementLogger)init
{
  v5.receiver = self;
  v5.super_class = IMRequirementLogger;
  v2 = [(IMRequirementLogger *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_loggingLevel = 2;
    [(IMRequirementLogger *)v2 updateSettingsFromUserDefaults];
  }

  return v3;
}

- (void)updateSettingsFromUserDefaults
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  -[IMRequirementLogger setThrowFailures:](self, "setThrowFailures:", [v3 BOOLForKey:@"throw-requirement-failures"]);

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v4 valueForKey:@"requirements-logging-level"];

  v5 = v6;
  if (v6)
  {
    [(IMRequirementLogger *)self setLoggingLevel:IMLoggingLevelFromString(v6)];
    v5 = v6;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMRequirementLogger;
  v4 = [(IMRequirementLogger *)&v8 description];
  if ([(IMRequirementLogger *)self throwFailures])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [v3 stringWithFormat:@"%@: throwFailures: %@, category override: %s", v4, v5, -[IMRequirementLogger categoryOverride](self, "categoryOverride")];

  return v6;
}

- (const)categoryOverride
{
  v2 = self;
  objc_sync_enter(v2);
  categoryOverride = v2->_categoryOverride;
  objc_sync_exit(v2);

  return categoryOverride;
}

- (void)setCategoryOverride:(const char *)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  categoryOverride = obj->_categoryOverride;
  if (categoryOverride)
  {
    free(categoryOverride);
    v4 = obj;
    obj->_categoryOverride = 0;
  }

  if (a3)
  {
    v6 = strnlen(a3, 0x100uLL);
    v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    v8 = strncpy(v7, a3, 0x100uLL);
    v4 = obj;
    obj->_categoryOverride = v8;
  }

  objc_sync_exit(v4);
}

- (void)dealloc
{
  categoryOverride = self->_categoryOverride;
  if (categoryOverride)
  {
    free(categoryOverride);
    self->_categoryOverride = 0;
  }

  v4.receiver = self;
  v4.super_class = IMRequirementLogger;
  [(IMRequirementLogger *)&v4 dealloc];
}

- (IMRequirementFailed_t)requirementDidFail:(const char *)a3
{
  v5 = [(IMRequirementLogger *)self categoryOverride];
  if (v5)
  {
    a3 = v5;
  }

  v6 = [(IMRequirementLogger *)self throwFailures];
  v7 = [(IMRequirementLogger *)self loggingLevel];
  v8 = 256;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = v8 | (v7 << 16) | 1;
  v10 = a3;
  result.var1 = v9;
  result.var2 = BYTE1(v9);
  result.var3 = BYTE2(v9);
  result.var0 = v10;
  return result;
}

@end