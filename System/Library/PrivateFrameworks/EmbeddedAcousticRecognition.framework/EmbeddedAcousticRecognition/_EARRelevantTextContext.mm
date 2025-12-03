@interface _EARRelevantTextContext
- (BOOL)getUndoEventAndReset;
- (_EARRelevantTextContext)init;
- (void)_unlockedInitContext;
- (void)_unlockedSetLeftContext:(id)context preItnLeftContext:(id)leftContext;
- (void)_unlockedSetRightContext:(id)context preItnRightContext:(id)rightContext;
- (void)appendToLeftContext:(id)context preItnLeftContext:(id)leftContext;
- (void)getLeftAndRightContextWithCompletion:(id)completion;
- (void)notifyUndoEventFromClient;
- (void)reset;
- (void)setLeftContext:(id)context preItnLeftContext:(id)leftContext;
- (void)setLeftContext:(id)context rightContext:(id)rightContext preItnLeftContext:(id)leftContext preItnRightContext:(id)itnRightContext;
- (void)setRightContext:(id)context preItnRightContext:(id)rightContext;
@end

@implementation _EARRelevantTextContext

- (void)_unlockedInitContext
{
  string = [MEMORY[0x1E696AEC0] string];
  leftContext = self->_leftContext;
  self->_leftContext = string;

  string2 = [MEMORY[0x1E696AEC0] string];
  rightContext = self->_rightContext;
  self->_rightContext = string2;

  v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  preItnLeftContext = self->_preItnLeftContext;
  self->_preItnLeftContext = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  preItnRightContext = self->_preItnRightContext;
  self->_preItnRightContext = v9;
}

- (_EARRelevantTextContext)init
{
  v5.receiver = self;
  v5.super_class = _EARRelevantTextContext;
  v2 = [(_EARRelevantTextContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_EARRelevantTextContext *)v2 _unlockedInitContext];
    v3->_contextUpdateLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)_unlockedSetLeftContext:(id)context preItnLeftContext:(id)leftContext
{
  contextCopy = context;
  leftContextCopy = leftContext;
  if (contextCopy)
  {
    [contextCopy ear_toString];
  }

  quasar::keepLastNCodePoints();
}

- (void)_unlockedSetRightContext:(id)context preItnRightContext:(id)rightContext
{
  contextCopy = context;
  rightContextCopy = rightContext;
  if (contextCopy)
  {
    [contextCopy ear_toString];
  }

  quasar::keepFirstNCodePoints();
}

- (void)setLeftContext:(id)context preItnLeftContext:(id)leftContext
{
  contextCopy = context;
  leftContextCopy = leftContext;
  os_unfair_lock_lock(&self->_contextUpdateLock);
  [(_EARRelevantTextContext *)self _unlockedSetLeftContext:contextCopy preItnLeftContext:leftContextCopy];
  os_unfair_lock_unlock(&self->_contextUpdateLock);
  [(_EARRelevantTextContext *)self setLeftContextWasAppended:0];
}

- (void)setRightContext:(id)context preItnRightContext:(id)rightContext
{
  contextCopy = context;
  rightContextCopy = rightContext;
  os_unfair_lock_lock(&self->_contextUpdateLock);
  [(_EARRelevantTextContext *)self _unlockedSetRightContext:contextCopy preItnRightContext:rightContextCopy];
  os_unfair_lock_unlock(&self->_contextUpdateLock);
}

- (void)setLeftContext:(id)context rightContext:(id)rightContext preItnLeftContext:(id)leftContext preItnRightContext:(id)itnRightContext
{
  contextCopy = context;
  rightContextCopy = rightContext;
  leftContextCopy = leftContext;
  itnRightContextCopy = itnRightContext;
  os_unfair_lock_lock(&self->_contextUpdateLock);
  [(_EARRelevantTextContext *)self _unlockedSetLeftContext:contextCopy preItnLeftContext:leftContextCopy];
  [(_EARRelevantTextContext *)self _unlockedSetRightContext:rightContextCopy preItnRightContext:itnRightContextCopy];
  os_unfair_lock_unlock(&self->_contextUpdateLock);
  [(_EARRelevantTextContext *)self setLeftContextWasAppended:0];
}

- (void)appendToLeftContext:(id)context preItnLeftContext:(id)leftContext
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  leftContextCopy = leftContext;
  os_unfair_lock_lock(&self->_contextUpdateLock);
  v8 = MEMORY[0x1E696AEC0];
  leftContext = self->_leftContext;
  if (leftContext)
  {
    [(NSString *)leftContext ear_toString];
  }

  else
  {
    memset(v17, 0, 24);
  }

  if (contextCopy)
  {
    [contextCopy ear_toString];
  }

  else
  {
    memset(&v17[3], 0, 24);
  }

  memset(&v14, 0, sizeof(v14));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v14, v17, &v18, 2uLL);
  quasar::joinAndAutoSpace(&v14, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v11 = [v8 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v17[i + 5]) < 0)
    {
      operator delete(v17[i + 3]);
    }
  }

  v13 = [(NSArray *)self->_preItnLeftContext arrayByAddingObjectsFromArray:leftContextCopy];
  [(_EARRelevantTextContext *)self _unlockedSetLeftContext:v11 preItnLeftContext:v13];

  os_unfair_lock_unlock(&self->_contextUpdateLock);
  [(_EARRelevantTextContext *)self setLeftContextWasAppended:1];
}

- (void)notifyUndoEventFromClient
{
  os_unfair_lock_lock(&self->_contextUpdateLock);
  self->_undoEvent = 1;

  os_unfair_lock_unlock(&self->_contextUpdateLock);
}

- (void)getLeftAndRightContextWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_contextUpdateLock);
  v4 = [(NSString *)self->_leftContext copy];
  v5 = [(NSString *)self->_rightContext copy];
  v6 = [(NSArray *)self->_preItnLeftContext copy];
  v7 = [(NSArray *)self->_preItnRightContext copy];
  os_unfair_lock_unlock(&self->_contextUpdateLock);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v4, v5, v6, v7);
  }
}

- (BOOL)getUndoEventAndReset
{
  os_unfair_lock_lock(&self->_contextUpdateLock);
  undoEvent = self->_undoEvent;
  self->_undoEvent = 0;
  os_unfair_lock_unlock(&self->_contextUpdateLock);
  return undoEvent;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_contextUpdateLock);
  [(_EARRelevantTextContext *)self _unlockedInitContext];
  self->_undoEvent = 0;
  os_unfair_lock_unlock(&self->_contextUpdateLock);
  *&self->_disambiguationActive = 0;
  [(_EARRelevantTextContext *)self setUtteranceStartedWithSelectedText:0];
  [(_EARRelevantTextContext *)self setLeftContextWasAppended:0];

  [(_EARRelevantTextContext *)self setLeftContextEndsWithAppendedAutoPunctuation:0];
}

@end