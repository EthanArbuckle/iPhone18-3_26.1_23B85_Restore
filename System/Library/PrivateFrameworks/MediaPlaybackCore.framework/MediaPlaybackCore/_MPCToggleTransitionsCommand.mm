@interface _MPCToggleTransitionsCommand
- (id)toggleTransitions;
@end

@implementation _MPCToggleTransitionsCommand

- (id)toggleTransitions
{
  response = [(_MPCPlayerCommand *)self response];
  v3 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v7 = [(MPCPlayerCommandRequest *)v3 initWithMediaRemoteCommand:149 options:0 controller:controller label:label];

  return v7;
}

@end