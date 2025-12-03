@interface _UIFocusDebuggerStringOutput
+ (id)outputWithString:(id)string;
- (NSString)description;
- (_UIFocusDebuggerStringOutput)initWithString:(id)string;
@end

@implementation _UIFocusDebuggerStringOutput

+ (id)outputWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (_UIFocusDebuggerStringOutput)initWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusDebugger.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"outputString"}];
  }

  v11.receiver = self;
  v11.super_class = _UIFocusDebuggerStringOutput;
  v6 = [(_UIFocusDebuggerStringOutput *)&v11 init];
  if (v6)
  {
    v7 = [stringCopy copy];
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