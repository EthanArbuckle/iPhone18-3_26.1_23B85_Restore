@interface FSContainerStatus
+ (FSContainerStatus)active;
+ (FSContainerStatus)ready;
+ (id)activeWithStatus:(id)status;
+ (id)blockedWithStatus:(id)status;
+ (id)notReadyWithStatus:(id)status;
+ (id)readyWithStatus:(id)status;
- (FSContainerStatus)initWithState:(int64_t)state status:(id)status;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FSContainerStatus

- (FSContainerStatus)initWithState:(int64_t)state status:(id)status
{
  statusCopy = status;
  v11.receiver = self;
  v11.super_class = FSContainerStatus;
  v7 = [(FSContainerStatus *)&v11 self];

  if (v7)
  {
    v7->_state = state;
    if (statusCopy)
    {
      v8 = [statusCopy copy];
    }

    else
    {
      v8 = 0;
    }

    status = v7->_status;
    v7->_status = v8;
  }

  return v7;
}

+ (FSContainerStatus)active
{
  v2 = [[self alloc] initWithState:3 status:0];

  return v2;
}

+ (id)activeWithStatus:(id)status
{
  statusCopy = status;
  v5 = [[self alloc] initWithState:3 status:statusCopy];

  return v5;
}

+ (id)blockedWithStatus:(id)status
{
  statusCopy = status;
  v5 = [[self alloc] initWithState:1 status:statusCopy];

  return v5;
}

+ (id)notReadyWithStatus:(id)status
{
  statusCopy = status;
  v5 = [[self alloc] initWithState:0 status:statusCopy];

  return v5;
}

+ (FSContainerStatus)ready
{
  v2 = [[self alloc] initWithState:2 status:0];

  return v2;
}

+ (id)readyWithStatus:(id)status
{
  statusCopy = status;
  v5 = [[self alloc] initWithState:2 status:statusCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  state = self->_state;
  status = self->_status;

  return [v4 initWithState:state status:status];
}

@end