@interface GTCommandBufferIssue
- (GTCommandBufferIssue)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCommandBufferIssue

- (GTCommandBufferIssue)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GTCommandBufferIssue;
  v5 = [(GTCommandBufferIssue *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalLogMessage"];
    metalLogMessage = v5->_metalLogMessage;
    v5->_metalLogMessage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandBufferCommitCallstackData"];
    commandBufferCommitCallstackData = v5->_commandBufferCommitCallstackData;
    v5->_commandBufferCommitCallstackData = v8;

    v5->_commandBufferCommitCallstackFramesNum = [v4 decodeInt32ForKey:@"commandBufferCommitCallstackFramesNum"];
    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"faultingEncoders"];
    faultingEncoders = v5->_faultingEncoders;
    v5->_faultingEncoders = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  metalLogMessage = self->_metalLogMessage;
  v5 = a3;
  [v5 encodeObject:metalLogMessage forKey:@"metalLogMessage"];
  [v5 encodeObject:self->_commandBufferCommitCallstackData forKey:@"commandBufferCommitCallstackData"];
  [v5 encodeInt32:self->_commandBufferCommitCallstackFramesNum forKey:@"commandBufferCommitCallstackFramesNum"];
  [v5 encodeObject:self->_faultingEncoders forKey:@"faultingEncoders"];
}

@end