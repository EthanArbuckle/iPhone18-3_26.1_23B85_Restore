@interface CRKOpenAppRequest
- (CRKOpenAppRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKOpenAppRequest

- (CRKOpenAppRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CRKOpenAppRequest;
  v5 = [(CATTaskRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"activityData"];
    activityData = v5->_activityData;
    v5->_activityData = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockInApp"];
    v5->_lockInApp = [v15 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRKOpenAppRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(CRKOpenAppRequest *)self bundleIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(CRKOpenAppRequest *)self activityType];
  [v4 encodeObject:v6 forKey:@"activityType"];

  v7 = [(CRKOpenAppRequest *)self activityData];
  [v4 encodeObject:v7 forKey:@"activityData"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKOpenAppRequest lockInApp](self, "lockInApp")}];
  [v4 encodeObject:v8 forKey:@"lockInApp"];
}

@end