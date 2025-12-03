@interface DMFReportingRequirements
- (DMFReportingRequirements)init;
- (DMFReportingRequirements)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFReportingRequirements

- (DMFReportingRequirements)init
{
  v3.receiver = self;
  v3.super_class = DMFReportingRequirements;
  result = [(DMFReportingRequirements *)&v3 init];
  if (result)
  {
    result->_updateCoalescenceInterval = -1.0;
  }

  return result;
}

- (id)description
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"reachableHostName";
  v7[1] = @"updateCoalescenceInterval";
  v7[2] = @"requireActiveConnection";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (DMFReportingRequirements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFReportingRequirements;
  v5 = [(DMFReportingRequirements *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"reachableHostName"];
    reachableHostName = v5->_reachableHostName;
    v5->_reachableHostName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateCoalescenceInterval"];
    [v9 doubleValue];
    v5->_updateCoalescenceInterval = v10;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requireActiveConnection"];
    v5->_requireActiveConnection = [v11 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  reachableHostName = [(DMFReportingRequirements *)self reachableHostName];
  [coderCopy encodeObject:reachableHostName forKey:@"reachableHostName"];

  v6 = MEMORY[0x1E696AD98];
  [(DMFReportingRequirements *)self updateCoalescenceInterval];
  v7 = [v6 numberWithDouble:?];
  [coderCopy encodeObject:v7 forKey:@"updateCoalescenceInterval"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFReportingRequirements requireActiveConnection](self, "requireActiveConnection")}];
  [coderCopy encodeObject:v8 forKey:@"requireActiveConnection"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  reachableHostName = [(DMFReportingRequirements *)self reachableHostName];
  [v4 setReachableHostName:reachableHostName];

  [(DMFReportingRequirements *)self updateCoalescenceInterval];
  [v4 setUpdateCoalescenceInterval:?];
  [v4 setRequireActiveConnection:{-[DMFReportingRequirements requireActiveConnection](self, "requireActiveConnection")}];
  return v4;
}

@end