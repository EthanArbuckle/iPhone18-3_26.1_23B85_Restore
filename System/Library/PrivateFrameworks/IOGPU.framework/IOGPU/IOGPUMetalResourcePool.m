@interface IOGPUMetalResourcePool
- (BOOL)updateResourcePurgeability;
- (unint64_t)allocatedSize;
- (void)dealloc;
- (void)purge;
- (void)purgeWithLock;
- (void)setResourceArgs:(const IOGPUNewResourceArgs *)a3 resourceArgsSize:(unsigned int)a4;
@end

@implementation IOGPUMetalResourcePool

- (BOOL)updateResourcePurgeability
{
  os_unfair_lock_lock(&self->_priv.lock);
  if (self->_priv.nonvolatileQueue.tqh_first)
  {
    v3 = mach_absolute_time();
    v4 = **(self->_priv.nonvolatileQueue.tqh_last + 1);
    if (v4)
    {
      p_priv = &self->_priv;
      v6 = v3 - self->age_to_purge;
      do
      {
        if (v4->_priv.time_added >= v6)
        {
          break;
        }

        v7 = **(v4->_priv.entry.tqe_prev + 1);
        [(IOGPUMetalResource *)v4 setPurgeableState:3];
        tqe_next = v4->_priv.entry.tqe_next;
        tqe_prev = v4->_priv.entry.tqe_prev;
        if (tqe_next)
        {
          tqe_next->_priv.entry.tqe_prev = tqe_prev;
          v10 = v4->_priv.entry.tqe_next;
          tqe_prev = v4->_priv.entry.tqe_prev;
        }

        else
        {
          v10 = 0;
          self->_priv.nonvolatileQueue.tqh_last = tqe_prev;
        }

        *tqe_prev = v10;
        tqh_first = p_priv->volatileQueue.tqh_first;
        v4->_priv.entry.tqe_next = p_priv->volatileQueue.tqh_first;
        p_tqe_next = &v4->_priv.entry.tqe_next;
        if (tqh_first)
        {
          tqh_first->_priv.entry.tqe_prev = p_tqe_next;
        }

        else
        {
          self->_priv.volatileQueue.tqh_last = p_tqe_next;
        }

        p_priv->volatileQueue.tqh_first = v4;
        v4->_priv.entry.tqe_prev = &p_priv->volatileQueue.tqh_first;
        v4 = v7;
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_priv.lock);
    return self->_priv.nonvolatileQueue.tqh_first != 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_priv.lock);
    return 0;
  }
}

- (void)setResourceArgs:(const IOGPUNewResourceArgs *)a3 resourceArgsSize:(unsigned int)a4
{
  if (a4 <= 0x57)
  {
    [IOGPUMetalResourcePool setResourceArgs:resourceArgsSize:];
  }

  v7 = a4;
  os_unfair_lock_lock(&self->_priv.lock);
  [(IOGPUMetalResourcePool *)self purgeWithLock];
  free(self->_resourceArgs);
  self->_resourceArgsSize = a4;
  v8 = malloc_type_malloc(v7, 0x1000040931E79F6uLL);
  self->_resourceArgs = v8;
  memcpy(v8, a3, self->_resourceArgsSize);
  self->_resourceArgs->var0.var10 |= 0x4000u;
  ++self->generation;

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (void)dealloc
{
  [(IOGPUMetalResourcePool *)self purgeWithLock];
  if (self->_allocatedSize)
  {
    [IOGPUMetalResourcePool dealloc];
  }

  free(self->_resourceArgs);
  self->_device = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalResourcePool;
  [(IOGPUMetalResourcePool *)&v3 dealloc];
}

- (void)purgeWithLock
{
  tqh_first = self->_priv.volatileQueue.tqh_first;
  if (tqh_first)
  {
    do
    {
      tqe_next = tqh_first->_priv.entry.tqe_next;
      tqe_prev = tqh_first->_priv.entry.tqe_prev;
      if (tqe_next)
      {
        tqe_next->_priv.entry.tqe_prev = tqe_prev;
        v6 = tqh_first->_priv.entry.tqe_next;
        tqe_prev = tqh_first->_priv.entry.tqe_prev;
      }

      else
      {
        v6 = 0;
        self->_priv.volatileQueue.tqh_last = tqe_prev;
      }

      *tqe_prev = v6;
      --self->_priv.count;
      self->_allocatedSize -= [(IOGPUMetalResource *)tqh_first allocatedSize];

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  v7 = self->_priv.nonvolatileQueue.tqh_first;
  if (v7)
  {
    do
    {
      v9 = v7->_priv.entry.tqe_next;
      v8 = v7->_priv.entry.tqe_prev;
      if (v9)
      {
        v9->_priv.entry.tqe_prev = v8;
        v10 = v7->_priv.entry.tqe_next;
        v8 = v7->_priv.entry.tqe_prev;
      }

      else
      {
        v10 = 0;
        self->_priv.nonvolatileQueue.tqh_last = v8;
      }

      *v8 = v10;
      --self->_priv.count;
      self->_allocatedSize -= [(IOGPUMetalResource *)v7 allocatedSize];

      v7 = v9;
    }

    while (v9);
  }
}

- (void)purge
{
  os_unfair_lock_lock(&self->_priv.lock);
  [(IOGPUMetalResourcePool *)self purgeWithLock];

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (unint64_t)allocatedSize
{
  os_unfair_lock_lock(&self->_priv.lock);
  allocatedSize = self->_allocatedSize;
  os_unfair_lock_unlock(&self->_priv.lock);
  return allocatedSize;
}

@end