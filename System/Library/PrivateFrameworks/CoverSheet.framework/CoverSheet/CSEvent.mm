@interface CSEvent
+ (id)eventWithType:(int64_t)type;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation CSEvent

+ (id)eventWithType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  [v4 setType:type];
  [v4 setConsumable:(type - 27) < 7];
  [v4 setStateless:(type > 0x29) | ((0xC000000000uLL >> type) & 1)];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSEvent *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSEvent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end