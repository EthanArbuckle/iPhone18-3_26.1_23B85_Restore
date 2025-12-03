@interface ECLocalMessageAction
- (NSString)description;
@end

@implementation ECLocalMessageAction

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ECLocalMessageAction;
  v4 = [(ECLocalMessageAction *)&v8 description];
  persistentID = [(ECLocalMessageAction *)self persistentID];
  v6 = [v3 stringWithFormat:@"%@ id = %@", v4, persistentID];

  return v6;
}

@end