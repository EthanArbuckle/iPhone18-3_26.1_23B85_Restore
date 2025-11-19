@interface LNDateRelevantCondition
- (LNDateRelevantCondition)initWithStartDate:(id)a3 endDate:(id)a4;
@end

@implementation LNDateRelevantCondition

- (LNDateRelevantCondition)initWithStartDate:(id)a3 endDate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"LNRelevantContext.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];
  }

  v15.receiver = self;
  v15.super_class = LNDateRelevantCondition;
  v10 = [(LNRelevantCondition *)&v15 _init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 1, a3);
    objc_storeStrong(&v11->_endDate, a4);
    v12 = v11;
  }

  return v11;
}

@end