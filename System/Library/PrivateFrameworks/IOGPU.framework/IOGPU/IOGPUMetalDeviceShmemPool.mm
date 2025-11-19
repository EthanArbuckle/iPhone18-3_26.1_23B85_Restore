@interface IOGPUMetalDeviceShmemPool
- (unint64_t)allocatedSize;
- (void)dealloc;
- (void)prune;
- (void)purge;
- (void)setShmemSize:(unsigned int)a3;
@end

@implementation IOGPUMetalDeviceShmemPool

- (void)dealloc
{
  tqh_first = self->_priv.queue.tqh_first;
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
        self->_priv.queue.tqh_last = tqe_prev;
      }

      *tqe_prev = v6;
      --self->_priv.count;
      self->_allocatedSize -= tqh_first->_shmemSize;

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  self->_priv.device = 0;
  if (self->_allocatedSize)
  {
    [IOGPUMetalDeviceShmemPool dealloc];
  }

  v7.receiver = self;
  v7.super_class = IOGPUMetalDeviceShmemPool;
  [(IOGPUMetalDeviceShmemPool *)&v7 dealloc];
}

- (void)purge
{
  os_unfair_lock_lock(&self->_priv.lock);
  tqh_first = self->_priv.queue.tqh_first;
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
        self->_priv.queue.tqh_last = tqe_prev;
      }

      *tqe_prev = v6;
      --self->_priv.count;
      self->_allocatedSize -= tqh_first->_shmemSize;

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (void)setShmemSize:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_priv.lock);
  if (self->_priv.shmemSize < a3)
  {
    self->_priv.shmemSize = a3;
    tqh_first = self->_priv.queue.tqh_first;
    if (tqh_first)
    {
      do
      {
        tqe_next = tqh_first->_priv.entry.tqe_next;
        if (tqh_first->_shmemSize < self->_priv.shmemSize)
        {
          tqe_prev = tqh_first->_priv.entry.tqe_prev;
          if (tqe_next)
          {
            tqe_next->_priv.entry.tqe_prev = tqe_prev;
            v8 = tqh_first->_priv.entry.tqe_next;
            tqe_prev = tqh_first->_priv.entry.tqe_prev;
          }

          else
          {
            v8 = 0;
            self->_priv.queue.tqh_last = tqe_prev;
          }

          *tqe_prev = v8;
          --self->_priv.count;
          self->_allocatedSize -= tqh_first->_shmemSize;
          tqh_first->_priv.entry.tqe_next = 0;
          tqh_first->_priv.entry.tqe_prev = 0;
        }

        tqh_first = tqe_next;
      }

      while (tqe_next);
    }
  }

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (void)prune
{
  os_unfair_lock_lock(&self->_priv.lock);
  v3 = self->_priv.device->_numCommandBuffers + 2;
  while (self->_priv.count > v3)
  {
    v4 = **(self->_priv.queue.tqh_last + 1);
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6)
    {
      *(v6 + 24) = v5;
      v7 = *(v4 + 16);
      v5 = *(v4 + 24);
    }

    else
    {
      v7 = 0;
      self->_priv.queue.tqh_last = v5;
    }

    *v5 = v7;
    --self->_priv.count;
    self->_allocatedSize -= *(v4 + 132);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

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