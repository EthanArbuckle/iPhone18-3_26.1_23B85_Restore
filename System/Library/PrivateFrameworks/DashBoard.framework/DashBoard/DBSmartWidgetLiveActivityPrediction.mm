@interface DBSmartWidgetLiveActivityPrediction
- (BOOL)updateWithPrediction:(id)prediction;
- (DBLiveActivityWidgetDelegate)delegate;
- (DBSmartWidgetLiveActivityPrediction)initWithActivityDescriptor:(id)descriptor delegate:(id)delegate;
- (id)debugScoreText;
- (id)managerConfigurationWithAction:(id)action;
- (id)predictedObjectDescription;
- (id)uniqueIdentifier;
@end

@implementation DBSmartWidgetLiveActivityPrediction

- (DBSmartWidgetLiveActivityPrediction)initWithActivityDescriptor:(id)descriptor delegate:(id)delegate
{
  descriptorCopy = descriptor;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = DBSmartWidgetLiveActivityPrediction;
  v9 = [(DBSmartWidgetPrediction *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityDescriptor, descriptor);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    delegate = [(DBSmartWidgetLiveActivityPrediction *)v10 delegate];
    v12 = [delegate liveActivityBundleIdentifierWithDescriptor:descriptorCopy];
    v13 = [v12 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v13;

    delegate2 = [(DBSmartWidgetLiveActivityPrediction *)v10 delegate];
    v16 = [delegate2 liveActivityIdentifierWithDescriptor:descriptorCopy];
    activityIdentifier = v10->_activityIdentifier;
    v10->_activityIdentifier = v16;
  }

  return v10;
}

- (id)uniqueIdentifier
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->_activityIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (id)managerConfigurationWithAction:(id)action
{
  actionCopy = action;
  delegate = [(DBSmartWidgetLiveActivityPrediction *)self delegate];
  activityDescriptor = [(DBSmartWidgetLiveActivityPrediction *)self activityDescriptor];
  v7 = [delegate liveActivityNameWithDescriptor:activityDescriptor];

  v8 = [DBSmartStackManagerConfiguration alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v10 = [v9 localizedStringForKey:@"SMARTSTACK_ACTIONSHEET_LIVE_ACTIVITIES" value:&stru_285A57218 table:@"CarPlayApp"];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v12 = [v11 localizedStringForKey:@"SMARTSTACK_ACTIONSHEET_CLEAR" value:&stru_285A57218 table:@"CarPlayApp"];
  v13 = [(DBSmartStackManagerConfiguration *)v8 initWithAlertTitle:v10 alertSubtitle:v7 actionTitle:v12 action:actionCopy];

  return v13;
}

- (id)predictedObjectDescription
{
  v3 = MEMORY[0x277CCACA8];
  if ([(DBSmartWidgetLiveActivityPrediction *)self alertingWidget])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  bundleIdentifier = [(DBSmartWidgetLiveActivityPrediction *)self bundleIdentifier];
  v6 = [v3 stringWithFormat:@"alertingWidget=%@ bundleIdentifier=%@", v4, bundleIdentifier];

  return v6;
}

- (BOOL)updateWithPrediction:(id)prediction
{
  predictionCopy = prediction;
  objc_opt_class();
  v5 = predictionCopy;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = DBSmartWidgetLiveActivityPrediction;
    [(DBSmartWidgetPrediction *)&v12 updateWithPrediction:v5];
    predictedObject = [v5 predictedObject];
    activityDescriptor = self->_activityDescriptor;
    self->_activityDescriptor = predictedObject;

    bundleIdentifier = [v5 bundleIdentifier];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = bundleIdentifier;

    [(DBSmartWidgetPrediction *)self predictionDidUpdate];
    v10 = 1;
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)debugScoreText
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = DBSmartWidgetLiveActivityPrediction;
  debugScoreText = [(DBSmartWidgetPrediction *)&v7 debugScoreText];
  v5 = [v3 stringWithFormat:@"%@\n%@", debugScoreText, self->_activityIdentifier];

  return v5;
}

- (DBLiveActivityWidgetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end