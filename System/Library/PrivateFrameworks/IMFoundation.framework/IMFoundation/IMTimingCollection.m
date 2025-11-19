@interface IMTimingCollection
- (BOOL)hasKey:(id)a3;
- (IMTimingCollection)init;
- (double)totalTimeForKey:(id)a3;
- (id)description;
- (void)removeTimingForKey:(id)a3;
- (void)startTimingForKey:(id)a3;
- (void)stopTimingForKey:(id)a3;
@end

@implementation IMTimingCollection

- (IMTimingCollection)init
{
  v7.receiver = self;
  v7.super_class = IMTimingCollection;
  v2 = [(IMTimingCollection *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    timings = v3->_timings;
    v3->_timings = v4;
  }

  return v3;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_msgSend_description(self->_timings, v3, v4);
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)startTimingForKey:(id)a3
{
  v11 = a3;
  v4 = IMTimeOfDay();
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_msgSend_objectForKey_(self->_timings, v5, v11);
  if (!v8)
  {
    *&v9 = v4;
    v8 = objc_msgSend_createTimingInstanceWithStartTime_(_IMTimingInstance, v6, v7, v9);
    objc_msgSend_setObject_forKey_(self->_timings, v10, v8, v11);
  }

  objc_msgSend_startUsingTime_(v8, v6, v7, v4);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)stopTimingForKey:(id)a3
{
  v4 = a3;
  v5 = IMTimeOfDay();
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_msgSend_objectForKey_(self->_timings, v6, v4);

  objc_msgSend_stopUsingTime_(v7, v8, v9, v5);

  os_unfair_lock_unlock(&self->_lock);
}

- (double)totalTimeForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_objectForKey_(self->_timings, v5, v4);

  objc_msgSend_totalTime(v6, v7, v8);
  v10 = v9;
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)removeTimingForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_removeObjectForKey_(self->_timings, v5, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_objectForKey_(self->_timings, v5, v4);

  os_unfair_lock_unlock(&self->_lock);
  return v6 != 0;
}

@end