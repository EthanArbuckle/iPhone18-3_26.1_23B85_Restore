@interface GTCommandBufferIssue
- (GTCommandBufferIssue)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCommandBufferIssue

- (GTCommandBufferIssue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GTCommandBufferIssue;
  v5 = [(GTCommandBufferIssue *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalLogMessage"];
    metalLogMessage = v5->_metalLogMessage;
    v5->_metalLogMessage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandBufferCommitCallstackData"];
    commandBufferCommitCallstackData = v5->_commandBufferCommitCallstackData;
    v5->_commandBufferCommitCallstackData = v8;

    v5->_commandBufferCommitCallstackFramesNum = [coderCopy decodeInt32ForKey:@"commandBufferCommitCallstackFramesNum"];
    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"faultingEncoders"];
    faultingEncoders = v5->_faultingEncoders;
    v5->_faultingEncoders = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  metalLogMessage = self->_metalLogMessage;
  coderCopy = coder;
  [coderCopy encodeObject:metalLogMessage forKey:@"metalLogMessage"];
  [coderCopy encodeObject:self->_commandBufferCommitCallstackData forKey:@"commandBufferCommitCallstackData"];
  [coderCopy encodeInt32:self->_commandBufferCommitCallstackFramesNum forKey:@"commandBufferCommitCallstackFramesNum"];
  [coderCopy encodeObject:self->_faultingEncoders forKey:@"faultingEncoders"];
}

@end