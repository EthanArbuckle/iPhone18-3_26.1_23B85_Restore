@interface CSComplicationDescriptor
- (BOOL)isEqual:(id)equal;
- (CSComplicationDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics blockedForScreenTimeExpiration:(BOOL)expiration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptorBlockedForScreenTimeExpiration:(BOOL)expiration;
@end

@implementation CSComplicationDescriptor

- (CSComplicationDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics blockedForScreenTimeExpiration:(BOOL)expiration
{
  identifierCopy = identifier;
  widgetCopy = widget;
  metricsCopy = metrics;
  v17.receiver = self;
  v17.super_class = CSComplicationDescriptor;
  v14 = [(CSComplicationDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uniqueIdentifier, identifier);
    objc_storeStrong(&v15->_widget, widget);
    objc_storeStrong(&v15->_metrics, metrics);
    v15->_blockedForScreenTimeExpiration = expiration;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_uniqueIdentifier withName:@"uniqueIdentifier" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_widget withName:@"widget" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (id)descriptorBlockedForScreenTimeExpiration:(BOOL)expiration
{
  v3 = [[CSComplicationDescriptor alloc] initWithUniqueIdentifier:self->_uniqueIdentifier widget:self->_widget metrics:self->_metrics blockedForScreenTimeExpiration:expiration];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:self ofExpectedClass:objc_opt_class()];
  uniqueIdentifier = self->_uniqueIdentifier;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __36__CSComplicationDescriptor_isEqual___block_invoke;
  v28[3] = &unk_27838D538;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendString:uniqueIdentifier counterpart:v28];
  widget = self->_widget;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __36__CSComplicationDescriptor_isEqual___block_invoke_2;
  v26[3] = &unk_27838D560;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendObject:widget counterpart:v26];
  metrics = self->_metrics;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __36__CSComplicationDescriptor_isEqual___block_invoke_3;
  v24[3] = &unk_27838D588;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendObject:metrics counterpart:v24];
  blockedForScreenTimeExpiration = self->_blockedForScreenTimeExpiration;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __36__CSComplicationDescriptor_isEqual___block_invoke_4;
  v22 = &unk_27838D5B0;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendBool:blockedForScreenTimeExpiration counterpart:&v19];
  LOBYTE(blockedForScreenTimeExpiration) = [v5 isEqual];

  return blockedForScreenTimeExpiration;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  uniqueIdentifier = self->_uniqueIdentifier;
  widget = self->_widget;
  metrics = self->_metrics;
  blockedForScreenTimeExpiration = self->_blockedForScreenTimeExpiration;

  return [v4 initWithUniqueIdentifier:uniqueIdentifier widget:widget metrics:metrics blockedForScreenTimeExpiration:blockedForScreenTimeExpiration];
}

@end