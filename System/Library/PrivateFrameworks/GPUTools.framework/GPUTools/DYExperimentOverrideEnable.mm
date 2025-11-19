@interface DYExperimentOverrideEnable
- (DYExperimentOverrideEnable)initWithCoder:(id)a3;
- (DYExperimentOverrideEnable)initWithName:(id)a3 captureArchivePath:(id)a4 overrides:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYExperimentOverrideEnable

- (DYExperimentOverrideEnable)initWithName:(id)a3 captureArchivePath:(id)a4 overrides:(id)a5
{
  v9.receiver = self;
  v9.super_class = DYExperimentOverrideEnable;
  v7 = [(DYExperiment *)&v9 initWithName:a3 results:0];
  if (v7)
  {
    v7->_overrideTypeStrings = a5;
    v7->_properties = objc_opt_new();
    v7->super._captureArchivePath = a4;
  }

  return v7;
}

- (DYExperimentOverrideEnable)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = DYExperimentOverrideEnable;
  v4 = [(DYExperiment *)&v15 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_overrideTypeStrings = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"overrideTypeStrings"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v4->_properties = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, objc_opt_class(), 0), @"properties"}];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v4->_perFunctionProfilingData = [a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, v12, v13, objc_opt_class(), 0), @"perFunctionProfilingData"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DYExperimentOverrideEnable;
  [(DYExperiment *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_overrideTypeStrings forKey:@"overrideTypeStrings"];
  [a3 encodeObject:self->_properties forKey:@"properties"];
  [a3 encodeObject:self->_perFunctionProfilingData forKey:@"perFunctionProfilingData"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = DYExperimentOverrideEnable;
  v4 = [(DYExperiment *)&v6 copyWithZone:a3];
  v4[14] = [(NSMutableDictionary *)self->_properties mutableCopy];
  v4[15] = [(NSSet *)self->_overrideTypeStrings copy];
  v4[16] = [(NSArray *)self->_perFunctionProfilingData copy];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYExperimentOverrideEnable;
  [(DYExperiment *)&v3 dealloc];
}

@end