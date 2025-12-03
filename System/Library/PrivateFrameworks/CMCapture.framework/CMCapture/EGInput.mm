@interface EGInput
- (EGInput)initWithName:(id)name;
- (NSString)description;
- (void)dealloc;
- (void)handleData:(id)data;
- (void)registerSource:(id)source;
- (void)setInputHandler:(id)handler;
@end

@implementation EGInput

- (EGInput)initWithName:(id)name
{
  v6.receiver = self;
  v6.super_class = EGInput;
  v4 = [(EGInput *)&v6 init];
  if (v4)
  {
    v4->_name = [name copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGInput;
  [(EGInput *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p> %@", objc_opt_class(), self, -[EGInput name](self, "name")];
  if (objc_loadWeak(&self->_inputHandler))
  {
    objc_loadWeak(&self->_inputHandler);
    v4 = objc_opt_class();
    Weak = objc_loadWeak(&self->_inputHandler);
    [v3 appendFormat:@" (parent: <%@ %p> %@)", v4, Weak, objc_msgSend(objc_loadWeak(&self->_inputHandler), "name")];
  }

  return v3;
}

- (void)handleData:(id)data
{
  Weak = objc_loadWeak(&self->_inputHandler);

  [Weak receiveData:data fromInput:self];
}

- (void)registerSource:(id)source
{
  if (!source)
  {
    source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register a nil source! Forbidden", self, v5, v6];
    goto LABEL_6;
  }

  source = self->_source;
  if (source)
  {
    source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register %@ when it was already connected via %@! Forbidden", self, source, source];
LABEL_6:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:source userInfo:0]);
  }

  self->_source = source;
}

- (void)setInputHandler:(id)handler
{
  if (objc_loadWeak(&self->_inputHandler))
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ tried to install inputHandler %@ when it already had inputHandler %@! Forbidden", self, handler, objc_loadWeak(&self->_inputHandler)), 0}];
    objc_exception_throw(v5);
  }

  objc_storeWeak(&self->_inputHandler, handler);
}

@end