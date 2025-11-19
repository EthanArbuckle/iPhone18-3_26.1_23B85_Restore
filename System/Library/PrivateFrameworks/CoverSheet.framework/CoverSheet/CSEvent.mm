@interface CSEvent
+ (id)eventWithType:(int64_t)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation CSEvent

+ (id)eventWithType:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setType:a3];
  [v4 setConsumable:(a3 - 27) < 7];
  [v4 setStateless:(a3 > 0x29) | ((0xC000000000uLL >> a3) & 1)];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(CSEvent *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromCoverSheetEventType(self->_type);
  v5 = [v3 appendObject:v4 withName:@"type"];

  v6 = [v3 appendObject:self->_value withName:@"value" skipIfNil:1];
  v7 = [v3 appendBool:-[CSEvent isConsumable](self withName:{"isConsumable"), @"consumable"}];
  v8 = [v3 appendBool:-[CSEvent isStateless](self withName:{"isStateless"), @"stateless"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSEvent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end