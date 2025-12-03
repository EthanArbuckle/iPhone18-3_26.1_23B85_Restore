@interface FCCFitnessPlusPlanPostNotificationRequest
- (FCCFitnessPlusPlanPostNotificationRequest)initWithTransportData:(id)data;
- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)type force:(BOOL)force;
- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)type force:(BOOL)force showTomorrowPlan:(BOOL)plan;
- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)type showTomorrowPlan:(BOOL)plan;
- (id)transportData;
@end

@implementation FCCFitnessPlusPlanPostNotificationRequest

- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)type force:(BOOL)force
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = FCCFitnessPlusPlanPostNotificationRequest;
  v8 = [(FCCFitnessPlusPlanPostNotificationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_type, type);
    v9->_force = force;
  }

  return v9;
}

- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)type showTomorrowPlan:(BOOL)plan
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = FCCFitnessPlusPlanPostNotificationRequest;
  v8 = [(FCCFitnessPlusPlanPostNotificationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_type, type);
    v9->_showTomorrowPlan = plan;
  }

  return v9;
}

- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)type force:(BOOL)force showTomorrowPlan:(BOOL)plan
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = FCCFitnessPlusPlanPostNotificationRequest;
  v10 = [(FCCFitnessPlusPlanPostNotificationRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_type, type);
    v11->_force = force;
    v11->_showTomorrowPlan = plan;
  }

  return v11;
}

- (FCCFitnessPlusPlanPostNotificationRequest)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCFitnessPlusPlanPostNotificationRequestProtobuf alloc] initWithData:dataCopy];

  type = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 type];
  if ([(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 hasForce])
  {
    force = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 force];
  }

  else
  {
    force = 0;
  }

  if ([(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 hasShowTomorrowPlan])
  {
    showTomorrowPlan = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 showTomorrowPlan];
  }

  else
  {
    showTomorrowPlan = 0;
  }

  v9 = [(FCCFitnessPlusPlanPostNotificationRequest *)self initWithType:type force:force showTomorrowPlan:showTomorrowPlan];

  return v9;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCFitnessPlusPlanPostNotificationRequestProtobuf);
  [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 setType:self->_type];
  [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 setForce:self->_force];
  [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 setShowTomorrowPlan:self->_showTomorrowPlan];
  data = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 data];

  return data;
}

@end