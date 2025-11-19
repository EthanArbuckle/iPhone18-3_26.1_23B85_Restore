@interface _UIFocusDebuggerStringOutput
+ (id)outputWithString:(id)a3;
- (NSString)description;
- (_UIFocusDebuggerStringOutput)initWithString:(id)a3;
@end

@implementation _UIFocusDebuggerStringOutput

+ (id)outputWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

- (_UIFocusDebuggerStringOutput)initWithString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIFocusDebugger.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"outputString"}];
  }

  v11.receiver = self;
  v11.super_class = _UIFocusDebuggerStringOutput;
  v6 = [(_UIFocusDebuggerStringOutput *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    outputString = v6->_outputString;
    v6->_outputString = v7;
  }

  return v6;
}

- (NSString)description
{
  if (self->_outputString)
  {
    return self->_outputString;
  }

  else
  {
    return &stru_285EB2008;
  }
}

@end