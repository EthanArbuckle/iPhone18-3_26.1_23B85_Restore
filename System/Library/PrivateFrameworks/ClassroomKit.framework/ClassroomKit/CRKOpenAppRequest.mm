@interface CRKOpenAppRequest
- (CRKOpenAppRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKOpenAppRequest

- (CRKOpenAppRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CRKOpenAppRequest;
  v5 = [(CATTaskRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"activityData"];
    activityData = v5->_activityData;
    v5->_activityData = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockInApp"];
    v5->_lockInApp = [v15 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CRKOpenAppRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CRKOpenAppRequest *)self bundleIdentifier:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleIdentifier"];

  activityType = [(CRKOpenAppRequest *)self activityType];
  [coderCopy encodeObject:activityType forKey:@"activityType"];

  activityData = [(CRKOpenAppRequest *)self activityData];
  [coderCopy encodeObject:activityData forKey:@"activityData"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKOpenAppRequest lockInApp](self, "lockInApp")}];
  [coderCopy encodeObject:v8 forKey:@"lockInApp"];
}

@end