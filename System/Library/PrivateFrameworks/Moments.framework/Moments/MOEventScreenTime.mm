@interface MOEventScreenTime
- (MOEventScreenTime)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventScreenTime

- (void)encodeWithCoder:(id)a3
{
  appCategoryUsages = self->_appCategoryUsages;
  v5 = a3;
  [v5 encodeObject:appCategoryUsages forKey:@"categoryUsages"];
  [v5 encodeObject:self->_longestActivity forKey:@"longestActivity"];
}

- (MOEventScreenTime)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MOEventScreenTime;
  v5 = [(MOEventScreenTime *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"categoryUsages"];
    appCategoryUsages = v5->_appCategoryUsages;
    v5->_appCategoryUsages = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longestActivity"];
    longestActivity = v5->_longestActivity;
    v5->_longestActivity = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventScreenTime);
  v5 = [(MOEventScreenTime *)self appCategoryUsages];
  [(MOEventScreenTime *)v4 setAppCategoryUsages:v5];

  v6 = [(MOEventScreenTime *)self longestActivity];
  [(MOEventScreenTime *)v4 setLongestActivity:v6];

  return v4;
}

@end