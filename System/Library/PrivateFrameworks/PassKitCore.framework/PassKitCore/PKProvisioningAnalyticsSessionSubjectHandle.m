@interface PKProvisioningAnalyticsSessionSubjectHandle
- (id)_initWithSubject:(id)a3 archivedParent:(id)a4;
- (void)_startReportingIfNecessary;
- (void)stop;
@end

@implementation PKProvisioningAnalyticsSessionSubjectHandle

- (id)_initWithSubject:(id)a3 archivedParent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKProvisioningAnalyticsSessionSubjectHandle;
  v9 = [(PKProvisioningAnalyticsSessionSubjectHandle *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_subject, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (void)_startReportingIfNecessary
{
  if (!self->_didBeginSubject)
  {
    if (self->_archivedParent)
    {
      self->_didBeginSubject = 1;
      [PKAnalyticsReporter beginSubjectReporting:self->_subject withArchivedParent:?];
    }

    v3 = [PKAnalyticsReporter reporterForSubject:self->_subject];

    if (!v3)
    {
      self->_didBeginSubject = 1;
      subject = self->_subject;

      [PKAnalyticsReporter beginSubjectReporting:subject];
    }
  }
}

- (void)stop
{
  if (self->_didBeginSubject)
  {
    self->_didBeginSubject = 0;
    [PKAnalyticsReporter endSubjectReporting:self->_subject];
  }
}

@end