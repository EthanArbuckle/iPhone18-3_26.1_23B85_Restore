@interface MNTrafficIncidentTriggerRange
- (MNTrafficIncidentTriggerRange)initWithCoder:(id)a3;
- (MNTrafficIncidentTriggerRange)initWithTriggerPointShow:(id)a3 hide:(id)a4 displayTime:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNTrafficIncidentTriggerRange

- (void)encodeWithCoder:(id)a3
{
  showTriggerPoint = self->_showTriggerPoint;
  v5 = a3;
  [v5 encodeObject:showTriggerPoint forKey:@"_showTriggerPoint"];
  [v5 encodeObject:self->_hideTriggerPoint forKey:@"_hideTriggerPoint"];
  [v5 encodeDouble:@"_displayTime" forKey:self->_displayTime];
}

- (MNTrafficIncidentTriggerRange)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MNTrafficIncidentTriggerRange;
  v5 = [(MNTrafficIncidentTriggerRange *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_showTriggerPoint"];
    showTriggerPoint = v5->_showTriggerPoint;
    v5->_showTriggerPoint = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hideTriggerPoint"];
    hideTriggerPoint = v5->_hideTriggerPoint;
    v5->_hideTriggerPoint = v8;

    [v4 decodeDoubleForKey:@"_displayTime"];
    v5->_displayTime = v10;
    v11 = v5;
  }

  return v5;
}

- (MNTrafficIncidentTriggerRange)initWithTriggerPointShow:(id)a3 hide:(id)a4 displayTime:(double)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MNTrafficIncidentTriggerRange;
  v11 = [(MNTrafficIncidentTriggerRange *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_showTriggerPoint, a3);
    objc_storeStrong(&v12->_hideTriggerPoint, a4);
    v13 = 1.79769313e308;
    if (a5 > 0.0)
    {
      v13 = a5;
    }

    v12->_displayTime = v13;
    v14 = v12;
  }

  return v12;
}

@end