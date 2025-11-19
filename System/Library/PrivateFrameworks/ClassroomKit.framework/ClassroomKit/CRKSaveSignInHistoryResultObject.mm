@interface CRKSaveSignInHistoryResultObject
- (CRKSaveSignInHistoryResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSaveSignInHistoryResultObject

- (CRKSaveSignInHistoryResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRKSaveSignInHistoryResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"history"];
    history = v5->_history;
    v5->_history = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKSaveSignInHistoryResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKSaveSignInHistoryResultObject *)self history:v6.receiver];
  [v4 encodeObject:v5 forKey:@"history"];
}

@end