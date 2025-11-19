@interface FCCFitnessPlusPlanPostNotificationRequest
- (FCCFitnessPlusPlanPostNotificationRequest)initWithTransportData:(id)a3;
- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)a3 force:(BOOL)a4;
- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)a3 force:(BOOL)a4 showTomorrowPlan:(BOOL)a5;
- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)a3 showTomorrowPlan:(BOOL)a4;
- (id)transportData;
@end

@implementation FCCFitnessPlusPlanPostNotificationRequest

- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)a3 force:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FCCFitnessPlusPlanPostNotificationRequest;
  v8 = [(FCCFitnessPlusPlanPostNotificationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_type, a3);
    v9->_force = a4;
  }

  return v9;
}

- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)a3 showTomorrowPlan:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FCCFitnessPlusPlanPostNotificationRequest;
  v8 = [(FCCFitnessPlusPlanPostNotificationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_type, a3);
    v9->_showTomorrowPlan = a4;
  }

  return v9;
}

- (FCCFitnessPlusPlanPostNotificationRequest)initWithType:(id)a3 force:(BOOL)a4 showTomorrowPlan:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = FCCFitnessPlusPlanPostNotificationRequest;
  v10 = [(FCCFitnessPlusPlanPostNotificationRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_type, a3);
    v11->_force = a4;
    v11->_showTomorrowPlan = a5;
  }

  return v11;
}

- (FCCFitnessPlusPlanPostNotificationRequest)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCFitnessPlusPlanPostNotificationRequestProtobuf alloc] initWithData:v4];

  v6 = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 type];
  if ([(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 hasForce])
  {
    v7 = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 force];
  }

  else
  {
    v7 = 0;
  }

  if ([(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 hasShowTomorrowPlan])
  {
    v8 = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v5 showTomorrowPlan];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FCCFitnessPlusPlanPostNotificationRequest *)self initWithType:v6 force:v7 showTomorrowPlan:v8];

  return v9;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCFitnessPlusPlanPostNotificationRequestProtobuf);
  [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 setType:self->_type];
  [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 setForce:self->_force];
  [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 setShowTomorrowPlan:self->_showTomorrowPlan];
  v4 = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)v3 data];

  return v4;
}

@end