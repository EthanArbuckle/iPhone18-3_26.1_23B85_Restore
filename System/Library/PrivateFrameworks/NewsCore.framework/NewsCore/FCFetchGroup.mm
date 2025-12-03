@interface FCFetchGroup
- (id)initWithKeys:(void *)keys context:(char)context shouldFilter:(void *)filter qualityOfService:(void *)service relativePriority:(void *)priority completionQueue:(void *)queue completion:;
- (int64_t)comparePriority:(id)priority;
- (void)fireCompletion;
@end

@implementation FCFetchGroup

- (id)initWithKeys:(void *)keys context:(char)context shouldFilter:(void *)filter qualityOfService:(void *)service relativePriority:(void *)priority completionQueue:(void *)queue completion:
{
  v15 = a2;
  keysCopy = keys;
  priorityCopy = priority;
  queueCopy = queue;
  if (self)
  {
    v27.receiver = self;
    v27.super_class = FCFetchGroup;
    self = objc_msgSendSuper2(&v27, sel_init);
    if (self)
    {
      v19 = [v15 copy];
      v20 = self[2];
      self[2] = v19;

      objc_storeStrong(self + 3, keys);
      *(self + 8) = context;
      v21 = 1;
      self[4] = filter;
      self[5] = service;
      if (filter != 25 && filter != 33)
      {
        v21 = service == 1;
      }

      *(self + 9) = v21;
      objc_storeStrong(self + 7, priority);
      v22 = _Block_copy(queueCopy);
      v23 = self[8];
      self[8] = v22;

      date = [MEMORY[0x1E695DF00] date];
      v25 = self[9];
      self[9] = date;
    }
  }

  return self;
}

- (void)fireCompletion
{
  if (self)
  {
    completionQueue = [self completionQueue];
    if (completionQueue)
    {
      v3 = completionQueue;
      completion = [self completion];

      if (completion)
      {
        queue = [self completionQueue];
        completion2 = [self completion];
        dispatch_async(queue, completion2);
      }
    }
  }
}

- (int64_t)comparePriority:(id)priority
{
  priorityCopy = priority;
  v5 = priorityCopy;
  if (self)
  {
    relativePriority = self->_relativePriority;
    if (priorityCopy)
    {
      v7 = priorityCopy[5];
      if (relativePriority == v7)
      {
        if (self->_isUserFacing)
        {
          if ((*(priorityCopy + 9) & 1) == 0)
          {
LABEL_6:
            v8 = -1;
            goto LABEL_19;
          }

LABEL_18:
          requestDate = [(FCFetchGroup *)self requestDate];
          requestDate2 = [v5 requestDate];
          v8 = [requestDate compare:requestDate2];

          goto LABEL_19;
        }

LABEL_10:
        if (*(priorityCopy + 9))
        {
          v8 = 1;
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (!relativePriority)
      {
        if (self->_isUserFacing)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      v7 = 0;
    }
  }

  else
  {
    if (!priorityCopy)
    {
      goto LABEL_18;
    }

    v7 = priorityCopy[5];
    if (!v7)
    {
      goto LABEL_10;
    }

    relativePriority = 0;
  }

  v9 = v7 < relativePriority;
  v10 = v7 > relativePriority;
  if (v9)
  {
    v8 = -1;
  }

  else
  {
    v8 = v10;
  }

LABEL_19:

  return v8;
}

@end