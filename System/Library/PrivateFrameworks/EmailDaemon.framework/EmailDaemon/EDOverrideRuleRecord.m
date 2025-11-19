@interface EDOverrideRuleRecord
+ (id)recordWithCategory:(id)a3 date:(id)a4 message:(id)a5;
- (EDOverrideRuleRecord)initWithCategory:(id)a3 date:(id)a4 message:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EDOverrideRuleRecord

- (EDOverrideRuleRecord)initWithCategory:(id)a3 date:(id)a4 message:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EDOverrideRuleRecord.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"message != nil"}];
  }

  v17.receiver = self;
  v17.super_class = EDOverrideRuleRecord;
  v13 = [(EDOverrideRuleRecord *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_category, a3);
    objc_storeStrong(&v14->_date, a4);
    objc_storeStrong(&v14->_message, a5);
  }

  return v14;
}

+ (id)recordWithCategory:(id)a3 date:(id)a4 message:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithCategory:v8 date:v9 message:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EDOverrideRuleRecord *)self category];
  v6 = [(EDOverrideRuleRecord *)self date];
  v7 = [(EDOverrideRuleRecord *)self message];
  v8 = [v4 initWithCategory:v5 date:v6 message:v7];

  return v8;
}

@end