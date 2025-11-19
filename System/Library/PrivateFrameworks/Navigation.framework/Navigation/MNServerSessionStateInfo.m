@interface MNServerSessionStateInfo
- (MNServerSessionStateInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addDisplayedBannerID:(id)a3 withEventInfo:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithETAUResponse:(id)a3;
- (void)updateWithRoute:(id)a3;
- (void)updateWithSessionState:(id)a3;
@end

@implementation MNServerSessionStateInfo

- (id)description
{
  v3 = objc_opt_new();
  sessionState = self->_sessionState;
  if (sessionState)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Session state: %d bytes", -[NSData length](sessionState, "length")];
    [v3 addObject:v5];
  }

  else
  {
    [v3 addObject:@"Session state: (null)"];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Route: %@", self->_uniqueRouteID];
  [v3 addObject:v6];

  if (self->_directionsResponseID)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_directionsResponseID encoding:4];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v7 uppercaseString];
    v10 = [v8 stringWithFormat:@"DirectionsResponse: %@", v9];
    [v3 addObject:v10];
  }

  if (self->_etauResponseID)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_etauResponseID encoding:4];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v11 uppercaseString];
    v14 = [v12 stringWithFormat:@"ETAUResponse: %@", v13];
    [v3 addObject:v14];
  }

  v15 = [v3 componentsJoinedByString:{@", "}];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  sessionState = self->_sessionState;
  v5 = a3;
  [v5 encodeObject:sessionState forKey:@"_sessionState"];
  [v5 encodeObject:self->_uniqueRouteID forKey:@"_uniqueRouteID"];
  [v5 encodeObject:self->_directionsResponseID forKey:@"_directionsResponseID"];
  [v5 encodeObject:self->_etauResponseID forKey:@"_etauResponseID"];
  [v5 encodeObject:self->_displayedTrafficBanners forKey:@"_displayedTrafficBanners"];
}

- (MNServerSessionStateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MNServerSessionStateInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sessionState"];
    sessionState = v5->_sessionState;
    v5->_sessionState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueRouteID"];
    uniqueRouteID = v5->_uniqueRouteID;
    v5->_uniqueRouteID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_directionsResponseID"];
    directionsResponseID = v5->_directionsResponseID;
    v5->_directionsResponseID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_etauResponseID"];
    etauResponseID = v5->_etauResponseID;
    v5->_etauResponseID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayedTrafficBanners"];
    displayedTrafficBanners = v5->_displayedTrafficBanners;
    v5->_displayedTrafficBanners = v14;

    v16 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSData *)self->_sessionState copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSUUID *)self->_uniqueRouteID copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSData *)self->_directionsResponseID copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSData *)self->_etauResponseID copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSMutableDictionary *)self->_displayedTrafficBanners copy];
  v14 = v4[5];
  v4[5] = v13;

  return v4;
}

- (void)updateWithSessionState:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_uniqueRouteID)
  {
    objc_storeStrong(&self->_sessionState, a3);
    etauResponseID = self->_etauResponseID;
    self->_etauResponseID = 0;

    directionsResponseID = self->_directionsResponseID;
    self->_directionsResponseID = 0;

    p_super = MNGetMNServerSessionStateInfoLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_1D311E000, p_super, OS_LOG_TYPE_DEFAULT, "Updating session state from unknown source: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _uniqueRouteID != nil", &v13, 2u);
    }

    v10 = MNGetMNServerSessionStateInfoLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Updating server session state requires an existing route. The next directions or ETAU request will likely fail.", &v13, 2u);
    }

    sessionState = self->_sessionState;
    self->_sessionState = 0;

    v12 = self->_directionsResponseID;
    self->_directionsResponseID = 0;

    p_super = &self->_etauResponseID->super;
    self->_etauResponseID = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addDisplayedBannerID:(id)a3 withEventInfo:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12)
  {
    displayedTrafficBanners = self->_displayedTrafficBanners;
    v8 = v12;
    if (displayedTrafficBanners)
    {
      if (v6)
      {
LABEL_4:
        [(NSMutableDictionary *)displayedTrafficBanners setValue:v6 forKey:v8];
        goto LABEL_7;
      }
    }

    else
    {
      v9 = objc_opt_new();
      v10 = self->_displayedTrafficBanners;
      self->_displayedTrafficBanners = v9;

      v8 = v12;
      displayedTrafficBanners = self->_displayedTrafficBanners;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v11 = [MEMORY[0x1E695DEF0] data];
    [(NSMutableDictionary *)displayedTrafficBanners setValue:v11 forKey:v12];
  }

LABEL_7:
}

- (void)updateWithETAUResponse:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_uniqueRouteID)
  {
    if (!v4)
    {
      p_super = MNGetMNServerSessionStateInfoLog();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      LOWORD(v21) = 0;
      v12 = "Trying to update server session state with a nil ETAU response. Ignoring, but the next directions or ETAU request may fail.";
      v13 = p_super;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 2;
      goto LABEL_6;
    }

    if ([v4 hasSessionState])
    {
      v6 = [v5 sessionState];
      sessionState = self->_sessionState;
      self->_sessionState = v6;

      v8 = [v5 responseId];
      etauResponseID = self->_etauResponseID;
      self->_etauResponseID = v8;

      directionsResponseID = self->_directionsResponseID;
      self->_directionsResponseID = 0;

      p_super = MNGetMNServerSessionStateInfoLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = self;
        v12 = "Updating session state from ETAU response: %@";
        v13 = p_super;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 12;
LABEL_6:
        _os_log_impl(&dword_1D311E000, v13, v14, v12, &v21, v15);
      }
    }

    else
    {
      p_super = MNGetMNServerSessionStateInfoLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v20 = [v5 formattedText];
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&dword_1D311E000, p_super, OS_LOG_TYPE_ERROR, "ETAU response has no session state. This is probably a server error. Full ETAU response: %@", &v21, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v21) = 0;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _uniqueRouteID != nil", &v21, 2u);
    }

    v17 = MNGetMNServerSessionStateInfoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "Server session state can only be updated from an ETAU response if there is already an existing route. The next directions or ETAU request will likely fail.", &v21, 2u);
    }

    v18 = self->_sessionState;
    self->_sessionState = 0;

    v19 = self->_directionsResponseID;
    self->_directionsResponseID = 0;

    p_super = &self->_etauResponseID->super;
    self->_etauResponseID = 0;
  }

LABEL_7:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateWithRoute:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 directionsResponseID];

    if (v6)
    {
      v7 = [v5 routeInitializerData];
      v8 = [v7 directionsResponse];
      v9 = [v8 sessionState];
      sessionState = self->_sessionState;
      self->_sessionState = v9;

      v11 = [v5 directionsResponseID];
      v12 = 32;
      v13 = 24;
    }

    else
    {
      v14 = [v5 etauResponseID];

      if (!v14)
      {
        goto LABEL_7;
      }

      v15 = [v5 routeInitializerData];
      v16 = [v15 etaTrafficUpdateResponse];
      v17 = [v16 sessionState];
      v18 = self->_sessionState;
      self->_sessionState = v17;

      v11 = [v5 etauResponseID];
      v12 = 24;
      v13 = 32;
    }

    v19 = *(&self->super.isa + v13);
    *(&self->super.isa + v13) = v11;

    v20 = *(&self->super.isa + v12);
    *(&self->super.isa + v12) = 0;

LABEL_7:
    v21 = [v5 uniqueRouteID];
    uniqueRouteID = self->_uniqueRouteID;
    self->_uniqueRouteID = v21;

    p_super = MNGetMNServerSessionStateInfoLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = self;
      _os_log_impl(&dword_1D311E000, p_super, OS_LOG_TYPE_DEFAULT, "Updating session state with route: %@", &v29, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(v29) = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: route != nil", &v29, 2u);
  }

  v25 = MNGetMNServerSessionStateInfoLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "Server session state can't be updated with a nil route. The next directions or ETAU request will likely fail.", &v29, 2u);
  }

  v26 = self->_sessionState;
  self->_sessionState = 0;

  v27 = self->_uniqueRouteID;
  self->_uniqueRouteID = 0;

  directionsResponseID = self->_directionsResponseID;
  self->_directionsResponseID = 0;

  p_super = &self->_etauResponseID->super;
  self->_etauResponseID = 0;
LABEL_9:

  v24 = *MEMORY[0x1E69E9840];
}

@end