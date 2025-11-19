@interface EGInput
- (EGInput)initWithName:(id)a3;
- (NSString)description;
- (void)dealloc;
- (void)handleData:(id)a3;
- (void)registerSource:(id)a3;
- (void)setInputHandler:(id)a3;
@end

@implementation EGInput

- (EGInput)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = EGInput;
  v4 = [(EGInput *)&v6 init];
  if (v4)
  {
    v4->_name = [a3 copy];
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

- (void)handleData:(id)a3
{
  Weak = objc_loadWeak(&self->_inputHandler);

  [Weak receiveData:a3 fromInput:self];
}

- (void)registerSource:(id)a3
{
  if (!a3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register a nil source! Forbidden", self, v5, v6];
    goto LABEL_6;
  }

  source = self->_source;
  if (source)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register %@ when it was already connected via %@! Forbidden", self, a3, source];
LABEL_6:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  self->_source = a3;
}

- (void)setInputHandler:(id)a3
{
  if (objc_loadWeak(&self->_inputHandler))
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ tried to install inputHandler %@ when it already had inputHandler %@! Forbidden", self, a3, objc_loadWeak(&self->_inputHandler)), 0}];
    objc_exception_throw(v5);
  }

  objc_storeWeak(&self->_inputHandler, a3);
}

@end