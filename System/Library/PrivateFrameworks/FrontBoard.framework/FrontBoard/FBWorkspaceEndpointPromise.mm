@interface FBWorkspaceEndpointPromise
- (id)_initWithDomain:(void *)domain identifier:(void *)identifier endpoint:;
- (id)description;
- (id)endpoint;
- (id)initWithEndpoint:(id *)result;
- (os_unfair_lock_s)isResolvedNullEndpoint;
- (void)_domainIdentifier;
@end

@implementation FBWorkspaceEndpointPromise

- (id)endpoint
{
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v2 = *(self + 8);
    if (!v2)
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      v4 = WeakRetained;
      if (WeakRetained)
      {
        _listenerEndpoint = [(FBWorkspaceDomain *)WeakRetained _listenerEndpoint];
        v6 = _listenerEndpoint;
        if (_listenerEndpoint)
        {
          v7 = _listenerEndpoint;
        }

        else
        {
          v7 = +[FBWorkspaceDomain nullEndpoint];
        }

        v9 = *(self + 8);
        *(self + 8) = v7;
      }

      else
      {
        v8 = +[FBWorkspaceDomain nullEndpoint];
        v6 = *(self + 8);
        *(self + 8) = v8;
      }

      v2 = *(self + 8);
    }

    v10 = v2;
    os_unfair_lock_unlock((self + 32));
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_domainIdentifier
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"never nil if created by FBWorkspaceDomain"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  domainIdentifier = self->_domainIdentifier;
  if (domainIdentifier)
  {
    v4 = domainIdentifier;
    if (!self->_lock_endpoint)
    {
      WeakRetained = objc_loadWeakRetained(&self->_lock_domain);
      if (!WeakRetained)
      {
        v6 = +[FBWorkspaceDomain nullEndpoint];
        lock_endpoint = self->_lock_endpoint;
        self->_lock_endpoint = v6;
      }
    }
  }

  else
  {
    v4 = &stru_1F1BFE5F0;
  }

  v8 = self->_lock_endpoint;
  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBWorkspaceEndpointPromise:%@>", v4];
    goto LABEL_11;
  }

  isNullEndpoint = [(BSServiceConnectionEndpoint *)v8 isNullEndpoint];
  v10 = MEMORY[0x1E696AEC0];
  if (isNullEndpoint)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBWorkspaceEndpointPromise:%@ (null)>", v4];
    v11 = LABEL_11:;
    goto LABEL_13;
  }

  v12 = [(BSServiceConnectionEndpoint *)v8 description];
  v11 = [v10 stringWithFormat:@"<FBWorkspaceEndpointPromise:%@ (%@)>", v4, v12];

LABEL_13:

  return v11;
}

- (id)_initWithDomain:(void *)domain identifier:(void *)identifier endpoint:
{
  v7 = a2;
  domainCopy = domain;
  identifierCopy = identifier;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = FBWorkspaceEndpointPromise;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    self = v10;
    if (v10)
    {
      *(v10 + 8) = 0;
      objc_storeWeak(v10 + 2, v7);
      v11 = [domainCopy copy];
      v12 = self[3];
      self[3] = v11;

      objc_storeStrong(self + 1, identifier);
    }
  }

  return self;
}

- (id)initWithEndpoint:(id *)result
{
  if (result)
  {
    return [(FBWorkspaceEndpointPromise *)result _initWithDomain:0 identifier:a2 endpoint:?];
  }

  return result;
}

- (os_unfair_lock_s)isResolvedNullEndpoint
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 8);
    v2 = *&v1[2]._os_unfair_lock_opaque;
    if (!v2)
    {
      WeakRetained = objc_loadWeakRetained(&v1[4]);
      if (!WeakRetained)
      {
        v4 = +[FBWorkspaceDomain nullEndpoint];
        v5 = *&v1[2]._os_unfair_lock_opaque;
        *&v1[2]._os_unfair_lock_opaque = v4;
      }

      v2 = *&v1[2]._os_unfair_lock_opaque;
    }

    v6 = v2;
    os_unfair_lock_unlock(v1 + 8);
    isNullEndpoint = [v6 isNullEndpoint];

    return isNullEndpoint;
  }

  return result;
}

@end