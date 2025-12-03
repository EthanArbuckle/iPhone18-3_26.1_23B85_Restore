@interface CPLNetworkState
- (BOOL)canUseNetwork;
- (BOOL)isCellular;
- (BOOL)isConstrained;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFunctionallyEqual:(id)equal;
- (CPLNetworkState)initWithNetworkPath:(id)path cellularRestricted:(BOOL)restricted inAirplaneMode:(BOOL)mode;
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

- (BOOL)isFunctionallyEqual:(id)equal
{
  equalCopy = equal;
  networkPath = self->_networkPath;
  networkPath = [equalCopy networkPath];

  LOBYTE(v7) = (networkPath | networkPath) == 0;
  if (networkPath)
  {
    v8 = networkPath == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    isCellular = [(CPLNetworkState *)self isCellular];
    if (isCellular == [equalCopy isCellular] && (!isCellular || (v10 = -[CPLNetworkState isCellularRestricted](self, "isCellularRestricted"), v10 == objc_msgSend(equalCopy, "isCellularRestricted"))) && (v11 = -[CPLNetworkState isConnected](self, "isConnected"), v11 == objc_msgSend(equalCopy, "isConnected")) && (v12 = -[CPLNetworkState isConstrained](self, "isConstrained"), v12 == objc_msgSend(equalCopy, "isConstrained")))
    {
      isInAirplaneMode = [(CPLNetworkState *)self isInAirplaneMode];
      v7 = isInAirplaneMode ^ [equalCopy isInAirplaneMode] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  networkPath = self->_networkPath;
  networkPath = [equalCopy networkPath];
  v7 = networkPath;
  LOBYTE(v8) = (networkPath | networkPath) == 0;
  if (networkPath)
  {
    v9 = networkPath == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isConnected = [(CPLNetworkState *)self isConnected];
    if (isConnected == [equalCopy isConnected] && (v11 = -[CPLNetworkState isCellular](self, "isCellular"), v11 == objc_msgSend(equalCopy, "isCellular")) && (v12 = -[CPLNetworkState isConstrained](self, "isConstrained"), v12 == objc_msgSend(equalCopy, "isConstrained")) && (v13 = -[CPLNetworkState isCellularRestricted](self, "isCellularRestricted"), v13 == objc_msgSend(equalCopy, "isCellularRestricted")))
    {
      isInAirplaneMode = [(CPLNetworkState *)self isInAirplaneMode];
      v8 = isInAirplaneMode ^ [equalCopy isInAirplaneMode] ^ 1;
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
  isConnected = [(CPLNetworkState *)self isConnected];
  if (isConnected)
  {
    if ([(CPLNetworkState *)self isConstrained]|| [(CPLNetworkState *)self isInAirplaneMode])
    {
      LOBYTE(isConnected) = 0;
    }

    else if ([(CPLNetworkState *)self isCellular])
    {
      LOBYTE(isConnected) = ![(CPLNetworkState *)self isCellularRestricted];
    }

    else
    {
      LOBYTE(isConnected) = 1;
    }
  }

  return isConnected;
}

- (CPLNetworkState)initWithNetworkPath:(id)path cellularRestricted:(BOOL)restricted inAirplaneMode:(BOOL)mode
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = CPLNetworkState;
  v10 = [(CPLNetworkState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_networkPath, path);
    v11->_cellularRestricted = restricted;
    v11->_inAirplaneMode = mode;
  }

  return v11;
}

@end