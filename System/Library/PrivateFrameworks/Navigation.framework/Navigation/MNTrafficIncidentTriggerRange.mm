@interface MNTrafficIncidentTriggerRange
- (MNTrafficIncidentTriggerRange)initWithCoder:(id)coder;
- (MNTrafficIncidentTriggerRange)initWithTriggerPointShow:(id)show hide:(id)hide displayTime:(double)time;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNTrafficIncidentTriggerRange

- (void)encodeWithCoder:(id)coder
{
  showTriggerPoint = self->_showTriggerPoint;
  coderCopy = coder;
  [coderCopy encodeObject:showTriggerPoint forKey:@"_showTriggerPoint"];
  [coderCopy encodeObject:self->_hideTriggerPoint forKey:@"_hideTriggerPoint"];
  [coderCopy encodeDouble:@"_displayTime" forKey:self->_displayTime];
}

- (MNTrafficIncidentTriggerRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MNTrafficIncidentTriggerRange;
  v5 = [(MNTrafficIncidentTriggerRange *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_showTriggerPoint"];
    showTriggerPoint = v5->_showTriggerPoint;
    v5->_showTriggerPoint = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hideTriggerPoint"];
    hideTriggerPoint = v5->_hideTriggerPoint;
    v5->_hideTriggerPoint = v8;

    [coderCopy decodeDoubleForKey:@"_displayTime"];
    v5->_displayTime = v10;
    v11 = v5;
  }

  return v5;
}

- (MNTrafficIncidentTriggerRange)initWithTriggerPointShow:(id)show hide:(id)hide displayTime:(double)time
{
  showCopy = show;
  hideCopy = hide;
  v16.receiver = self;
  v16.super_class = MNTrafficIncidentTriggerRange;
  v11 = [(MNTrafficIncidentTriggerRange *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_showTriggerPoint, show);
    objc_storeStrong(&v12->_hideTriggerPoint, hide);
    timeCopy = 1.79769313e308;
    if (time > 0.0)
    {
      timeCopy = time;
    }

    v12->_displayTime = timeCopy;
    v14 = v12;
  }

  return v12;
}

@end