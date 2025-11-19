@interface EGInputGroup
- (EGInputGroup)initWithName:(id)a3;
- (NSString)description;
- (void)addInputsIntoArray:(id)a3;
- (void)dealloc;
- (void)installInput:(id)a3;
- (void)receiveData:(id)a3 fromInput:(id)a4;
@end

@implementation EGInputGroup

- (EGInputGroup)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = EGInputGroup;
  v4 = [(EGInputGroup *)&v6 init];
  if (v4)
  {
    v4->_name = [a3 copy];
    v4->_inputs = objc_opt_new();
    v4->_inputDataGroup = objc_opt_new();
    v4->_receiveLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGInputGroup;
  [(EGInputGroup *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p> %@", objc_opt_class(), self, -[EGInputGroup name](self, "name")];
  if (objc_loadWeak(&self->_inputGroupHandler))
  {
    objc_loadWeak(&self->_inputGroupHandler);
    v4 = objc_opt_class();
    Weak = objc_loadWeak(&self->_inputGroupHandler);
    [v3 appendFormat:@" (parent: <%@ %p> %@)", v4, Weak, objc_msgSend(objc_loadWeak(&self->_inputGroupHandler), "name")];
  }

  return v3;
}

- (void)installInput:(id)a3
{
  [a3 setInputHandler:self];
  inputs = self->_inputs;
  v6 = [a3 name];

  [(NSMutableDictionary *)inputs setObject:a3 forKeyedSubscript:v6];
}

- (void)addInputsIntoArray:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_inputs allValues];

  [a3 addObjectsFromArray:v4];
}

- (void)receiveData:(id)a3 fromInput:(id)a4
{
  os_unfair_lock_lock(&self->_receiveLock);
  v7 = [a4 name];
  if (![(NSMutableDictionary *)self->_inputDataGroup objectForKeyedSubscript:v7])
  {
    [(NSMutableDictionary *)self->_inputDataGroup setObject:a3 forKeyedSubscript:v7];
    v8 = [(NSMutableDictionary *)self->_inputs count];
    if (v8 == [(NSMutableDictionary *)self->_inputDataGroup count])
    {
      [objc_loadWeak(&self->_inputGroupHandler) receiveData:self->_inputDataGroup fromInputGroup:self];

      self->_inputDataGroup = objc_opt_new();
    }
  }

  os_unfair_lock_unlock(&self->_receiveLock);
}

@end