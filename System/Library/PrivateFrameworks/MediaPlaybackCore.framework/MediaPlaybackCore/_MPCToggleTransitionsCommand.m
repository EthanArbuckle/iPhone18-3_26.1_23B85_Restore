@interface _MPCToggleTransitionsCommand
- (id)toggleTransitions;
@end

@implementation _MPCToggleTransitionsCommand

- (id)toggleTransitions
{
  v2 = [(_MPCPlayerCommand *)self response];
  v3 = [MPCPlayerCommandRequest alloc];
  v4 = [v2 controller];
  v5 = [v2 request];
  v6 = [v5 label];
  v7 = [(MPCPlayerCommandRequest *)v3 initWithMediaRemoteCommand:149 options:0 controller:v4 label:v6];

  return v7;
}

@end