@interface _CNUIDefaultUserActionRecorderEventFactory
- (id)recentEventForAddress:(id)a3 kind:(id)a4 metadata:(id)a5;
@end

@implementation _CNUIDefaultUserActionRecorderEventFactory

- (id)recentEventForAddress:(id)a3 kind:(id)a4 metadata:(id)a5
{
  v7 = MEMORY[0x1E6998FC8];
  v8 = MEMORY[0x1E695DF00];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 date];
  v13 = [v7 recentEventForAddress:v11 displayName:0 kind:v10 date:v12 weight:0 metadata:v9 options:0];

  return v13;
}

@end