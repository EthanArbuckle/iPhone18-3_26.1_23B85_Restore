@interface DYExperimentOverrideEnable
- (DYExperimentOverrideEnable)initWithCoder:(id)coder;
- (DYExperimentOverrideEnable)initWithName:(id)name captureArchivePath:(id)path overrides:(id)overrides;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYExperimentOverrideEnable

- (DYExperimentOverrideEnable)initWithName:(id)name captureArchivePath:(id)path overrides:(id)overrides
{
  v9.receiver = self;
  v9.super_class = DYExperimentOverrideEnable;
  v7 = [(DYExperiment *)&v9 initWithName:name results:0];
  if (v7)
  {
    v7->_overrideTypeStrings = overrides;
    v7->_properties = objc_opt_new();
    v7->super._captureArchivePath = path;
  }

  return v7;
}

- (DYExperimentOverrideEnable)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = DYExperimentOverrideEnable;
  v4 = [(DYExperiment *)&v15 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_overrideTypeStrings = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"overrideTypeStrings"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v4->_properties = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, objc_opt_class(), 0), @"properties"}];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v4->_perFunctionProfilingData = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, v12, v13, objc_opt_class(), 0), @"perFunctionProfilingData"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DYExperimentOverrideEnable;
  [(DYExperiment *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_overrideTypeStrings forKey:@"overrideTypeStrings"];
  [coder encodeObject:self->_properties forKey:@"properties"];
  [coder encodeObject:self->_perFunctionProfilingData forKey:@"perFunctionProfilingData"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = DYExperimentOverrideEnable;
  v4 = [(DYExperiment *)&v6 copyWithZone:zone];
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