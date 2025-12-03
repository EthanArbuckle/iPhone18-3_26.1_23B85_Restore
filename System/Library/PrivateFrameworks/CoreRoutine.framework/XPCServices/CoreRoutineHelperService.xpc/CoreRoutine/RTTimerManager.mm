@interface RTTimerManager
- (id)timerWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler;
- (id)xpcTimerAlarmWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler;
@end

@implementation RTTimerManager

- (id)timerWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  identifierCopy = identifier;
  v10 = [[RTTimer alloc] initWithIdentifier:identifierCopy queue:queueCopy handler:handlerCopy];

  return v10;
}

- (id)xpcTimerAlarmWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  identifierCopy = identifier;
  v10 = [[RTXPCTimerAlarm alloc] initWithIdentifier:identifierCopy queue:queueCopy handler:handlerCopy];

  return v10;
}

@end