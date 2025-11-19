@interface FSContainerStatus
+ (FSContainerStatus)active;
+ (FSContainerStatus)ready;
+ (id)activeWithStatus:(id)a3;
+ (id)blockedWithStatus:(id)a3;
+ (id)notReadyWithStatus:(id)a3;
+ (id)readyWithStatus:(id)a3;
- (FSContainerStatus)initWithState:(int64_t)a3 status:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FSContainerStatus

- (FSContainerStatus)initWithState:(int64_t)a3 status:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = FSContainerStatus;
  v7 = [(FSContainerStatus *)&v11 self];

  if (v7)
  {
    v7->_state = a3;
    if (v6)
    {
      v8 = [v6 copy];
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
  v2 = [[a1 alloc] initWithState:3 status:0];

  return v2;
}

+ (id)activeWithStatus:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithState:3 status:v4];

  return v5;
}

+ (id)blockedWithStatus:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithState:1 status:v4];

  return v5;
}

+ (id)notReadyWithStatus:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithState:0 status:v4];

  return v5;
}

+ (FSContainerStatus)ready
{
  v2 = [[a1 alloc] initWithState:2 status:0];

  return v2;
}

+ (id)readyWithStatus:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithState:2 status:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  state = self->_state;
  status = self->_status;

  return [v4 initWithState:state status:status];
}

@end