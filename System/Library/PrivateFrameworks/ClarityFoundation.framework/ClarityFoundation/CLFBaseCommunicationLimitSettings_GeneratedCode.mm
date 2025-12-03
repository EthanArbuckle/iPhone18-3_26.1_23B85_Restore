@interface CLFBaseCommunicationLimitSettings_GeneratedCode
+ (id)allPreferenceSelectorsAsStrings;
- (CLFBaseCommunicationLimitSettings_GeneratedCode)init;
- (NSString)incomingCommunicationLimit;
- (NSString)outgoingCommunicationLimit;
@end

@implementation CLFBaseCommunicationLimitSettings_GeneratedCode

- (NSString)incomingCommunicationLimit
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"IncomingCommunicationLimit" ofClass:v3 defaultValue:@"contacts"];
}

- (CLFBaseCommunicationLimitSettings_GeneratedCode)init
{
  v11.receiver = self;
  v11.super_class = CLFBaseCommunicationLimitSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v11 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_incomingCommunicationLimit);
    [preferenceKeysBySelectorName setObject:@"IncomingCommunicationLimit" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_needsMigrationFor117558856);
    [preferenceKeysBySelectorName2 setObject:@"NeedsMigrationFor117558856" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_outgoingCommunicationLimit);
    [preferenceKeysBySelectorName3 setObject:@"OutgoingCommunicationLimit" forKeyedSubscript:v9];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___CLFBaseCommunicationLimitSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v10, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_incomingCommunicationLimit);
  v11[0] = v3;
  v4 = NSStringFromSelector(sel_needsMigrationFor117558856);
  v11[1] = v4;
  v5 = NSStringFromSelector(sel_outgoingCommunicationLimit);
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v7 = [v2 arrayByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)outgoingCommunicationLimit
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"OutgoingCommunicationLimit" ofClass:v3 defaultValue:@"contacts"];
}

@end