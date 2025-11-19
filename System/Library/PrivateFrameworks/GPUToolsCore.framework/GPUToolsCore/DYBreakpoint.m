@interface DYBreakpoint
- (DYBreakpoint)init;
- (DYBreakpoint)initWithCoder:(id)a3;
- (id)description;
- (void)_commonInit:(int)a3 backtrace:(id)a4 error:(int)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setFenum:(unsigned int)a3;
- (void)setPredicateString:(id)a3;
@end

@implementation DYBreakpoint

- (void)_commonInit:(int)a3 backtrace:(id)a4 error:(int)a5
{
  self->_fenum = -1;
  self->_type = a3;
  if (a3 == 1)
  {
    v5 = 84;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v5 = 85;
LABEL_5:
    *(&self->super.isa + v5) = 1;
  }

  self->_glError = a5;
  self->_backtrace = a4;
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

- (DYBreakpoint)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DYBreakpoint;
  v4 = [(DYBreakpoint *)&v10 init];
  if (v4)
  {
    -[DYBreakpoint setFenum:](v4, "setFenum:", [a3 decodeInt32ForKey:@"fenum"]);
    v4->_predicate = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    v4->_breakBefore = [a3 decodeBoolForKey:@"breakBefore"];
    v4->_breakAfter = [a3 decodeBoolForKey:@"breakAfter"];
    v4->_noExec = [a3 decodeBoolForKey:@"noExec"];
    v4->_type = [a3 decodeInt32ForKey:@"type"];
    v4->_glError = [a3 decodeInt32ForKey:@"glError"];
    v4->_threadName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"threadName"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_backtrace = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"backtrace"}];
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fbuf"];
    v4->_fbufData = v7;
    if ([(NSMutableData *)v7 length])
    {
      GPUTools::FB::Decoder::Decoder(v9, [a3 decodeInt32ForKey:@"fbuf version"], objc_msgSend(a3, "decodeBoolForKey:", @"little endian") ^ 1);
      operator new();
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:self->_fenum forKey:@"fenum"];
  [a3 encodeObject:self->_predicate forKey:@"predicate"];
  [a3 encodeBool:self->_breakBefore forKey:@"breakBefore"];
  [a3 encodeBool:self->_breakAfter forKey:@"breakAfter"];
  [a3 encodeBool:self->_noExec forKey:@"noExec"];
  [a3 encodeInt32:self->_type forKey:@"type"];
  [a3 encodeInt32:self->_glError forKey:@"glError"];
  [a3 encodeObject:self->_threadName forKey:@"threadName"];
  [a3 encodeObject:self->_backtrace forKey:@"backtrace"];
  fbufData = self->_fbufData;
  if (fbufData)
  {
    [a3 encodeObject:fbufData forKey:@"fbuf"];
    [a3 encodeInt32:4 forKey:@"fbuf version"];

    [a3 encodeBool:1 forKey:@"little endian"];
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

- (void)setFenum:(unsigned int)a3
{
  self->_fenum = a3;

  self->_name = dy_fenum_to_function_name_nsstring(self->_fenum, 0, 0);
}

- (void)setPredicateString:(id)a3
{
  predicateString = self->_predicateString;
  if (predicateString != a3)
  {
    self->_predicateString = [a3 copy];

    [(DYBreakpoint *)self willChangeValueForKey:@"predicate"];
    predicate = self->_predicate;
    self->_predicate = [MEMORY[0x277CCAC30] predicateWithFormat:self->_predicateString];

    [(DYBreakpoint *)self didChangeValueForKey:@"predicate"];
  }
}

@end