@interface _DASContinuedProcessingWrapper
- (_DASContinuedProcessingWrapper)initWithCoder:(id)a3;
- (_DASContinuedProcessingWrapper)initWithTitle:(id)a3 subtitle:(id)a4 iconBundleIdentifier:(id)a5 linkToBundleIdentifier:(id)a6 resources:(int64_t)a7;
- (_DASContinuedProcessingWrapper)initWithTitle:(id)a3 subtitle:(id)a4 iconBundleIdentifier:(id)a5 linkToBundleIdentifier:(id)a6 resources:(int64_t)a7 submissionStrategy:(int64_t)a8 isForegroundAppProxy:(BOOL)a9;
- (_DASContinuedProcessingWrapper)initWithTitle:(id)a3 subtitle:(id)a4 resources:(int64_t)a5 submissionStrategy:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASContinuedProcessingWrapper

- (_DASContinuedProcessingWrapper)initWithTitle:(id)a3 subtitle:(id)a4 resources:(int64_t)a5 submissionStrategy:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = _DASContinuedProcessingWrapper;
  v13 = [(_DASContinuedProcessingWrapper *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_title, a3);
    objc_storeStrong(&v14->_subtitle, a4);
    iconBundleIdentifier = v14->_iconBundleIdentifier;
    v14->_iconBundleIdentifier = 0;

    v14->_resources = a5;
    v14->_submissionStrategy = a6;
  }

  return v14;
}

- (_DASContinuedProcessingWrapper)initWithTitle:(id)a3 subtitle:(id)a4 iconBundleIdentifier:(id)a5 linkToBundleIdentifier:(id)a6 resources:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = _DASContinuedProcessingWrapper;
  v17 = [(_DASContinuedProcessingWrapper *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_subtitle, a4);
    objc_storeStrong(&v18->_iconBundleIdentifier, a5);
    objc_storeStrong(&v18->_linkToBundleIdentifier, a6);
    v18->_resources = a7;
    v18->_submissionStrategy = 1;
  }

  return v18;
}

- (_DASContinuedProcessingWrapper)initWithTitle:(id)a3 subtitle:(id)a4 iconBundleIdentifier:(id)a5 linkToBundleIdentifier:(id)a6 resources:(int64_t)a7 submissionStrategy:(int64_t)a8 isForegroundAppProxy:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v22 = a5;
  v18 = a6;
  v23.receiver = self;
  v23.super_class = _DASContinuedProcessingWrapper;
  v19 = [(_DASContinuedProcessingWrapper *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v20->_subtitle, a4);
    objc_storeStrong(&v20->_iconBundleIdentifier, a5);
    objc_storeStrong(&v20->_linkToBundleIdentifier, a6);
    v20->_resources = a7;
    v20->_submissionStrategy = a8;
    v20->_isForegroundAppProxy = a9;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = [(NSString *)self->_subtitle copyWithZone:a3];
  v8 = [(NSString *)self->_iconBundleIdentifier copyWithZone:a3];
  v9 = [(NSString *)self->_linkToBundleIdentifier copyWithZone:a3];
  LOBYTE(v12) = self->_isForegroundAppProxy;
  v10 = [v5 initWithTitle:v6 subtitle:v7 iconBundleIdentifier:v8 linkToBundleIdentifier:v9 resources:self->_resources submissionStrategy:self->_submissionStrategy isForegroundAppProxy:v12];

  return v10;
}

- (_DASContinuedProcessingWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconBundleIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkToBundleIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resources"];
  v10 = [v9 integerValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submissionStrategy"];
  v12 = [v11 integerValue];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isForegroundAppProxy"];

  v14 = [v13 BOOLValue];
  v15 = 0;
  if (v5 && v6)
  {
    LOBYTE(v17) = v14;
    v15 = [objc_alloc(objc_opt_class()) initWithTitle:v5 subtitle:v6 iconBundleIdentifier:v7 linkToBundleIdentifier:v8 resources:v10 submissionStrategy:v12 isForegroundAppProxy:v17];
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_iconBundleIdentifier forKey:@"iconBundleIdentifier"];
  [v5 encodeObject:self->_linkToBundleIdentifier forKey:@"linkToBundleIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resources];
  [v5 encodeObject:v6 forKey:@"resources"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_submissionStrategy];
  [v5 encodeObject:v7 forKey:@"submissionStrategy"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForegroundAppProxy];
  [v5 encodeObject:v8 forKey:@"isForegroundAppProxy"];
}

@end