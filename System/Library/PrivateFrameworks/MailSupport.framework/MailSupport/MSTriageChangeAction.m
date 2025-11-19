@interface MSTriageChangeAction
- (MSTriageChangeAction)initWithChangeAction:(int64_t)a3 flagState:(BOOL)a4 flagColors:(id)a5 readLaterDate:(id)a6;
- (NSString)ef_publicDescription;
@end

@implementation MSTriageChangeAction

- (MSTriageChangeAction)initWithChangeAction:(int64_t)a3 flagState:(BOOL)a4 flagColors:(id)a5 readLaterDate:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = MSTriageChangeAction;
  v12 = [(MSTriageChangeAction *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = a3;
    v12->_flagState = a4;
    v14 = [v10 copy];
    flagColors = v13->_flagColors;
    v13->_flagColors = v14;

    objc_storeStrong(&v13->_readLaterDate, a6);
  }

  return v13;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MSTriageChangeAction *)self action];
  v5 = [(MSTriageChangeAction *)self flagState];
  v6 = [(MSTriageChangeAction *)self flagColors];
  v7 = [(MSTriageChangeAction *)self readLaterDate];
  v8 = [v3 stringWithFormat:@"Action: %ld, flagState: %d, flagColors: %@, readLaterDate: %@", v4, v5, v6, v7];

  return v8;
}

@end