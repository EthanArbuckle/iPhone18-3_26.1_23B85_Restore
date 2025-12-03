@interface PKNotifyRegistration
- (BOOL)hasSubregistrations;
- (PKNotifyRegistration)initWithName:(id)name;
- (id)subregisterWithHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)removeInvalidatedSubregistration:(id)subregistration;
@end

@implementation PKNotifyRegistration

- (void)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_token != -1)
    {
      v3 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138543362;
        v17 = name;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKNotifyCoalescer: unregistered for notification %{public}@.", buf, 0xCu);
      }

      notify_cancel(self->_token);
      self->_token = -1;
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_subregistrations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) _invalidateFromParent:{1, v11}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    subregistrations = self->_subregistrations;
    self->_subregistrations = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasSubregistrations
{
  os_unfair_lock_lock(&self->_lock);
  subregistrations = self->_subregistrations;
  if (subregistrations)
  {
    v4 = [(NSMutableArray *)subregistrations count]!= 0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)dealloc
{
  [(PKNotifyRegistration *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKNotifyRegistration;
  [(PKNotifyRegistration *)&v3 dealloc];
}

- (PKNotifyRegistration)initWithName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = PKNotifyRegistration;
  v5 = [(PKNotifyRegistration *)&v23 init];
  if (v5)
  {
    v6 = v5;
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v9 = dispatch_queue_create("com.apple.passkitcore.pknotifycoalescer", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = [nameCopy copy];
    name = v6->_name;
    v6->_name = v11;

    v6->_token = -1;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subregistrations = v6->_subregistrations;
    v6->_subregistrations = v13;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__PKNotifyRegistration_initWithName___block_invoke;
    aBlock[3] = &unk_1E79D0110;
    v15 = v6;
    v22 = v15;
    v16 = _Block_copy(aBlock);
    v17 = notify_register_dispatch([nameCopy UTF8String], &v6->_token, v6->_queue, v16);
    p_super = PKLogFacilityTypeGetObject(0);
    v19 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138543618;
        v25 = nameCopy;
        v26 = 1024;
        v27 = v17;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "PKNotifyCoalescer: failed to register for notification %{public}@ with status %u.", buf, 0x12u);
      }

      [(PKNotifyRegistration *)v15 invalidate];
      p_super = &v15->super;
      v15 = 0;
    }

    else if (v19)
    {
      *buf = 138543362;
      v25 = nameCopy;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "PKNotifyCoalescer: registered for notification %{public}@.", buf, 0xCu);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __37__PKNotifyRegistration_initWithName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) copy];
  }

  else
  {
    v2 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invokeHandler];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)subregisterWithHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated || !self->_subregistrations)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[PKNotifySubregistration alloc] initWithParent:self handler:handlerCopy];
    [(NSMutableArray *)self->_subregistrations addObject:v5];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)removeInvalidatedSubregistration:(id)subregistration
{
  subregistrationCopy = subregistration;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_subregistrations removeObjectIdenticalTo:subregistrationCopy];

  subregistrations = self->_subregistrations;
  if (subregistrations)
  {
    v6 = [(NSMutableArray *)subregistrations count];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  selfCopy = self;
  os_unfair_lock_lock(&_MergedGlobals_214);
  if (![(PKNotifyRegistration *)selfCopy hasSubregistrations])
  {
    v7 = qword_1ED6D19C8;
    name = [(PKNotifyRegistration *)selfCopy name];
    [v7 setObject:0 forKeyedSubscript:name];

    [(PKNotifyRegistration *)selfCopy invalidate];
  }

  os_unfair_lock_unlock(&_MergedGlobals_214);
}

@end