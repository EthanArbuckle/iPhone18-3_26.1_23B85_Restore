@interface SYStateProvider
- (SYStateProvider)init;
- (SYStateProvider)initWithName:(id)name type:(unsigned int)type typeName:(id)typeName;
- (id)_encodedState;
- (void)dealloc;
- (void)setEncoder:(id)encoder;
- (void)updateState:(id)state;
@end

@implementation SYStateProvider

- (SYStateProvider)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[SYStateProvider init] is unavailable. Please use +stateProviderWithName:type: instead."];

  return 0;
}

- (SYStateProvider)initWithName:(id)name type:(unsigned int)type typeName:(id)typeName
{
  nameCopy = name;
  typeNameCopy = typeName;
  v23.receiver = self;
  v23.super_class = SYStateProvider;
  v10 = [(SYStateProvider *)&v23 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    v12 = [typeNameCopy copy];
    v10->_type = type;
    v10->_lock._os_unfair_lock_opaque = 0;
    [(SYStateProvider *)v10 setEncoder:0];
    objc_initWeak(&location, v10);
    v13 = dispatch_get_global_queue(0, 0);
    objc_copyWeak(&v20, &location);
    typeCopy = type;
    v18 = typeNameCopy;
    v19 = v11;
    v14 = v11;
    v15 = v12;
    v10->_handle = os_state_add_handler();

    v16 = v10;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

_BYTE *__46__SYStateProvider_initWithName_type_typeName___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _encodedState];
  }

  else
  {
    v5 = 0;
  }

  v6 = malloc_type_malloc([v5 length] + 200, 0x1000040BEF03554uLL);
  v7 = v6;
  *v6 = *(a1 + 64);
  if (*(a1 + 32))
  {
    __strlcpy_chk();
    [*(a1 + 40) UTF8String];
    __strlcpy_chk();
  }

  else
  {
    v6[8] = 0;
    v6[72] = 0;
  }

  [*(a1 + 48) UTF8String];
  __strlcpy_chk();
  *(v7 + 1) = [v5 length];
  [v5 getBytes:v7 + 200 length:{objc_msgSend(v5, "length")}];

  objc_autoreleasePoolPop(v2);
  return v7;
}

- (void)dealloc
{
  handle = self->_handle;
  os_state_remove_handler();
  v4.receiver = self;
  v4.super_class = SYStateProvider;
  [(SYStateProvider *)&v4 dealloc];
}

- (void)updateState:(id)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  self->_state = stateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setEncoder:(id)encoder
{
  if (encoder)
  {
    v4 = [encoder copy];
    encoder = self->_encoder;
    self->_encoder = v4;

    MEMORY[0x1EEE66BB8](v4, encoder);
  }

  else
  {
    type = self->_type;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__SYStateProvider_setEncoder___block_invoke;
    v9[3] = &__block_descriptor_36_e16___NSData_16__0_8l;
    v10 = type;
    v7 = MEMORY[0x1E12E11B0](v9, a2);
    v8 = self->_encoder;
    self->_encoder = v7;
  }
}

id __30__SYStateProvider_setEncoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  switch(v5)
  {
    case 3:
      v14 = v3;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v14;
      }

      else
      {
        v6 = 0;
      }

      break;
    case 2:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 data];
      }

      else
      {
        [@"<object is not a protobuf object>" dataUsingEncoding:4];
      }
      v6 = ;
      break;
    case 1:
      v16 = 0;
      v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v16];
      if (!v6)
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = v16;
        v9 = [v7 alloc];
        v10 = [v8 localizedDescription];
        v11 = [v8 domain];
        v12 = [v8 code];

        v13 = [v9 initWithFormat:@"<object does not support property list serialization : %@ (%@ / %ld)>", v10, v11, v12];
        v6 = [v13 dataUsingEncoding:4];
      }

      break;
    default:
      v6 = 0;
      break;
  }

  return v6;
}

- (id)_encodedState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = (*(self->_encoder + 2))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end