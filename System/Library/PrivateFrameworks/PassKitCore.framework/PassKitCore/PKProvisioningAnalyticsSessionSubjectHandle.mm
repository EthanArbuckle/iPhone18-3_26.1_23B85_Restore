@interface PKProvisioningAnalyticsSessionSubjectHandle
- (id)_initWithSubject:(id)subject archivedParent:(id)parent;
- (void)_startReportingIfNecessary;
- (void)stop;
@end

@implementation PKProvisioningAnalyticsSessionSubjectHandle

- (id)_initWithSubject:(id)subject archivedParent:(id)parent
{
  subjectCopy = subject;
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = PKProvisioningAnalyticsSessionSubjectHandle;
  v9 = [(PKProvisioningAnalyticsSessionSubjectHandle *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_subject, subject);
    objc_storeStrong(p_isa + 2, parent);
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