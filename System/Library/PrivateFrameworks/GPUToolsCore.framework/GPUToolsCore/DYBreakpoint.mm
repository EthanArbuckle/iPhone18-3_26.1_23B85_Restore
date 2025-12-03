@interface DYBreakpoint
- (DYBreakpoint)init;
- (DYBreakpoint)initWithCoder:(id)coder;
- (id)description;
- (void)_commonInit:(int)init backtrace:(id)backtrace error:(int)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setFenum:(unsigned int)fenum;
- (void)setPredicateString:(id)string;
@end

@implementation DYBreakpoint

- (void)_commonInit:(int)init backtrace:(id)backtrace error:(int)error
{
  self->_fenum = -1;
  self->_type = init;
  if (init == 1)
  {
    v5 = 84;
    goto LABEL_5;
  }

  if (init == 2)
  {
    v5 = 85;
LABEL_5:
    *(&self->super.isa + v5) = 1;
  }

  self->_glError = error;
  self->_backtrace = backtrace;
}

- (DYBreakpoint)init
{
  v3.receiver = self;
  v3.super_class = DYBreakpoint;
  result = [(DYBreakpoint *)&v3 init];
  if (result)
  {
    result->_fenum = -1;
  }

  return result;
}

- (DYBreakpoint)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = DYBreakpoint;
  v4 = [(DYBreakpoint *)&v10 init];
  if (v4)
  {
    -[DYBreakpoint setFenum:](v4, "setFenum:", [coder decodeInt32ForKey:@"fenum"]);
    v4->_predicate = [coder decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    v4->_breakBefore = [coder decodeBoolForKey:@"breakBefore"];
    v4->_breakAfter = [coder decodeBoolForKey:@"breakAfter"];
    v4->_noExec = [coder decodeBoolForKey:@"noExec"];
    v4->_type = [coder decodeInt32ForKey:@"type"];
    v4->_glError = [coder decodeInt32ForKey:@"glError"];
    v4->_threadName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"threadName"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_backtrace = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"backtrace"}];
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"fbuf"];
    v4->_fbufData = v7;
    if ([(NSMutableData *)v7 length])
    {
      GPUTools::FB::Decoder::Decoder(v9, [coder decodeInt32ForKey:@"fbuf version"], objc_msgSend(coder, "decodeBoolForKey:", @"little endian") ^ 1);
      operator new();
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_fenum forKey:@"fenum"];
  [coder encodeObject:self->_predicate forKey:@"predicate"];
  [coder encodeBool:self->_breakBefore forKey:@"breakBefore"];
  [coder encodeBool:self->_breakAfter forKey:@"breakAfter"];
  [coder encodeBool:self->_noExec forKey:@"noExec"];
  [coder encodeInt32:self->_type forKey:@"type"];
  [coder encodeInt32:self->_glError forKey:@"glError"];
  [coder encodeObject:self->_threadName forKey:@"threadName"];
  [coder encodeObject:self->_backtrace forKey:@"backtrace"];
  fbufData = self->_fbufData;
  if (fbufData)
  {
    [coder encodeObject:fbufData forKey:@"fbuf"];
    [coder encodeInt32:4 forKey:@"fbuf version"];

    [coder encodeBool:1 forKey:@"little endian"];
  }
}

- (void)dealloc
{
  function = self->_function;
  if (function)
  {
    GPUTools::FD::Function::~Function(function);
    MEMORY[0x253030980]();
  }

  v4.receiver = self;
  v4.super_class = DYBreakpoint;
  [(DYBreakpoint *)&v4 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = DYBreakpoint;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ fenum=%d name=%@", -[DYBreakpoint description](&v3, sel_description), self->_fenum, self->_name];
}

- (void)setFenum:(unsigned int)fenum
{
  self->_fenum = fenum;

  self->_name = dy_fenum_to_function_name_nsstring(self->_fenum, 0, 0);
}

- (void)setPredicateString:(id)string
{
  predicateString = self->_predicateString;
  if (predicateString != string)
  {
    self->_predicateString = [string copy];

    [(DYBreakpoint *)self willChangeValueForKey:@"predicate"];
    predicate = self->_predicate;
    self->_predicate = [MEMORY[0x277CCAC30] predicateWithFormat:self->_predicateString];

    [(DYBreakpoint *)self didChangeValueForKey:@"predicate"];
  }
}

@end