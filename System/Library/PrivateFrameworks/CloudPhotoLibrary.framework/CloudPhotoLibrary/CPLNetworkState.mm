@interface CPLNetworkState
- (BOOL)canUseNetwork;
- (BOOL)isCellular;
- (BOOL)isConstrained;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFunctionallyEqual:(id)a3;
- (CPLNetworkState)initWithNetworkPath:(id)a3 cellularRestricted:(BOOL)a4 inAirplaneMode:(BOOL)a5;
- (NSDictionary)plistDescription;
- (id)description;
@end

@implementation CPLNetworkState

- (BOOL)isCellular
{
  if (self->_networkPath)
  {
    JUMPOUT(0x1E128E8D0);
  }

  return 1;
}

- (BOOL)isConstrained
{
  networkPath = self->_networkPath;
  if (networkPath)
  {
    JUMPOUT(0x1E128E860);
  }

  return networkPath;
}

- (BOOL)isFunctionallyEqual:(id)a3
{
  v4 = a3;
  networkPath = self->_networkPath;
  v6 = [v4 networkPath];

  LOBYTE(v7) = (networkPath | v6) == 0;
  if (networkPath)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [(CPLNetworkState *)self isCellular];
    if (v9 == [v4 isCellular] && (!v9 || (v10 = -[CPLNetworkState isCellularRestricted](self, "isCellularRestricted"), v10 == objc_msgSend(v4, "isCellularRestricted"))) && (v11 = -[CPLNetworkState isConnected](self, "isConnected"), v11 == objc_msgSend(v4, "isConnected")) && (v12 = -[CPLNetworkState isConstrained](self, "isConstrained"), v12 == objc_msgSend(v4, "isConstrained")))
    {
      v14 = [(CPLNetworkState *)self isInAirplaneMode];
      v7 = v14 ^ [v4 isInAirplaneMode] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  networkPath = self->_networkPath;
  v6 = [v4 networkPath];
  v7 = v6;
  LOBYTE(v8) = (networkPath | v6) == 0;
  if (networkPath)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [(CPLNetworkState *)self isConnected];
    if (v10 == [v4 isConnected] && (v11 = -[CPLNetworkState isCellular](self, "isCellular"), v11 == objc_msgSend(v4, "isCellular")) && (v12 = -[CPLNetworkState isConstrained](self, "isConstrained"), v12 == objc_msgSend(v4, "isConstrained")) && (v13 = -[CPLNetworkState isCellularRestricted](self, "isCellularRestricted"), v13 == objc_msgSend(v4, "isCellularRestricted")))
    {
      v15 = [(CPLNetworkState *)self isInAirplaneMode];
      v8 = v15 ^ [v4 isInAirplaneMode] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (NSDictionary)plistDescription
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (self->_networkPath)
  {
    if ([(CPLNetworkState *)self isConnected])
    {
      v11[0] = @"connected";
      v10[0] = @"state";
      v10[1] = @"path";
      if ([(CPLNetworkState *)self isCellular])
      {
        v3 = @"cellular";
      }

      else
      {
        v5 = MEMORY[0x1E128E870](self->_networkPath);
        v3 = @"normal";
        if (v5)
        {
          v3 = @"expensive";
        }
      }

      v11[1] = v3;
      v10[2] = @"saveData";
      if ([(CPLNetworkState *)self isConstrained])
      {
        v6 = &unk_1F57EF2C0;
      }

      else
      {
        v6 = &unk_1F57EF2D8;
      }

      v11[2] = v6;
      v10[3] = @"airplane";
      if ([(CPLNetworkState *)self isInAirplaneMode])
      {
        v7 = &unk_1F57EF2C0;
      }

      else
      {
        v7 = &unk_1F57EF2D8;
      }

      v11[3] = v7;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
    }

    else
    {
      v4 = &unk_1F57EF8D8;
    }
  }

  else
  {
    v4 = &unk_1F57EF900;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  if (!self->_networkPath)
  {
    v5 = @"unknown network state";
    goto LABEL_22;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(CPLNetworkState *)self isInAirplaneMode])
  {
    [v3 addObject:@"airplane mode"];
  }

  if ([(CPLNetworkState *)self isConnected])
  {
    if ([(CPLNetworkState *)self isCellular])
    {
      [v3 addObject:@"cellular"];
      if ([(CPLNetworkState *)self isCellularRestricted])
      {
        v4 = @"restricted";
LABEL_13:
        [v3 addObject:v4];
      }
    }

    else if (MEMORY[0x1E128E870](self->_networkPath))
    {
      v4 = @"expensive";
      goto LABEL_13;
    }

    if ([(CPLNetworkState *)self isConstrained])
    {
      [v3 addObject:@"save data"];
    }

    if (![v3 count])
    {
      v5 = @"connected to network";
      goto LABEL_21;
    }

    v6 = @"connected to network (%@)";
    goto LABEL_18;
  }

  if (![v3 count])
  {
    v5 = @"not connected to network";
    goto LABEL_21;
  }

  v6 = @"not connected to network (%@)";
LABEL_18:
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v3 componentsJoinedByString:{@", "}];
  v5 = [v7 initWithFormat:v6, v8];

LABEL_21:
LABEL_22:

  return v5;
}

- (BOOL)canUseNetwork
{
  v3 = [(CPLNetworkState *)self isConnected];
  if (v3)
  {
    if ([(CPLNetworkState *)self isConstrained]|| [(CPLNetworkState *)self isInAirplaneMode])
    {
      LOBYTE(v3) = 0;
    }

    else if ([(CPLNetworkState *)self isCellular])
    {
      LOBYTE(v3) = ![(CPLNetworkState *)self isCellularRestricted];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (CPLNetworkState)initWithNetworkPath:(id)a3 cellularRestricted:(BOOL)a4 inAirplaneMode:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CPLNetworkState;
  v10 = [(CPLNetworkState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_networkPath, a3);
    v11->_cellularRestricted = a4;
    v11->_inAirplaneMode = a5;
  }

  return v11;
}

@end