@interface BSServiceInitiatingConnection
- (id)_initWithEndpoint:(uint64_t)a3 options:;
- (id)remoteTargetWithLaunchingAssertionAttributes:(id)a3;
@end

@implementation BSServiceInitiatingConnection

- (id)_initWithEndpoint:(uint64_t)a3 options:
{
  v3 = a1;
  if (a1)
  {
    v6 = objc_opt_new();
    v7 = objc_autoreleasePoolPush();
    if (a3)
    {
      os_unfair_lock_lock((v6 + 8));
      *(v6 + 168) = 1;
      (*(a3 + 16))(a3, v6);
      *(v6 + 168) = 0;
      os_unfair_lock_unlock((v6 + 8));
    }

    if (!*(v6 + 48))
    {
      empty = xpc_dictionary_create_empty();
      v9 = *(v6 + 48);
      *(v6 + 48) = empty;
    }

    objc_autoreleasePoolPop(v7);
    v10 = [a2 service];
    if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v12;
    if (v10 && v12)
    {
      v14 = *(v6 + 40);
      if (!v14)
      {
        v15 = +[BSServiceInitiatingConnectionMultiplexer defaultMultiplexer];
        v16 = *(v6 + 40);
        *(v6 + 40) = v15;

        v14 = *(v6 + 40);
      }

      v17 = [(BSServiceInitiatingConnectionMultiplexer *)v14 newConnectionWithEndpoint:v13];
      v18 = *(v6 + 16);
      *(v6 + 16) = v17;

      v19 = v10;
    }

    else
    {
      v20 = v12;
      if (!v12)
      {
        v20 = +[BSXPCServiceConnectionEndpoint nullEndpoint];
      }

      v21 = [BSXPCServiceConnection connectionWithEndpoint:v20];
      v22 = *(v6 + 16);
      *(v6 + 16) = v21;

      if (!v13)
      {
      }

      if (v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = @"com.apple.BoardServices.invalid-service";
      }
    }

    objc_storeStrong((v6 + 24), v19);
    v23 = [a2 instance];
    v24 = *(v6 + 32);
    *(v6 + 32) = v23;

    v3 = [(BSServiceConnection *)v3 _initWithConfiguration:v6];
  }

  return v3;
}

- (id)remoteTargetWithLaunchingAssertionAttributes:(id)a3
{
  if (self)
  {
    self = [(BSXPCServiceConnection *)self->super._connection remoteTargetWithAssertionAttributes:a3 enforcingLaunchConstraints:1];
    v3 = vars8;
  }

  return self;
}

@end