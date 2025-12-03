@interface MOEventScreenTime
- (MOEventScreenTime)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventScreenTime

- (void)encodeWithCoder:(id)coder
{
  appCategoryUsages = self->_appCategoryUsages;
  coderCopy = coder;
  [coderCopy encodeObject:appCategoryUsages forKey:@"categoryUsages"];
  [coderCopy encodeObject:self->_longestActivity forKey:@"longestActivity"];
}

- (MOEventScreenTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MOEventScreenTime;
  v5 = [(MOEventScreenTime *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"categoryUsages"];
    appCategoryUsages = v5->_appCategoryUsages;
    v5->_appCategoryUsages = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longestActivity"];
    longestActivity = v5->_longestActivity;
    v5->_longestActivity = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventScreenTime);
  appCategoryUsages = [(MOEventScreenTime *)self appCategoryUsages];
  [(MOEventScreenTime *)v4 setAppCategoryUsages:appCategoryUsages];

  longestActivity = [(MOEventScreenTime *)self longestActivity];
  [(MOEventScreenTime *)v4 setLongestActivity:longestActivity];

  return v4;
}

@end