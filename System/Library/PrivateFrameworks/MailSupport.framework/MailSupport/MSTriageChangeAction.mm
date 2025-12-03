@interface MSTriageChangeAction
- (MSTriageChangeAction)initWithChangeAction:(int64_t)action flagState:(BOOL)state flagColors:(id)colors readLaterDate:(id)date;
- (NSString)ef_publicDescription;
@end

@implementation MSTriageChangeAction

- (MSTriageChangeAction)initWithChangeAction:(int64_t)action flagState:(BOOL)state flagColors:(id)colors readLaterDate:(id)date
{
  colorsCopy = colors;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = MSTriageChangeAction;
  v12 = [(MSTriageChangeAction *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = action;
    v12->_flagState = state;
    v14 = [colorsCopy copy];
    flagColors = v13->_flagColors;
    v13->_flagColors = v14;

    objc_storeStrong(&v13->_readLaterDate, date);
  }

  return v13;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  action = [(MSTriageChangeAction *)self action];
  flagState = [(MSTriageChangeAction *)self flagState];
  flagColors = [(MSTriageChangeAction *)self flagColors];
  readLaterDate = [(MSTriageChangeAction *)self readLaterDate];
  v8 = [v3 stringWithFormat:@"Action: %ld, flagState: %d, flagColors: %@, readLaterDate: %@", action, flagState, flagColors, readLaterDate];

  return v8;
}

@end