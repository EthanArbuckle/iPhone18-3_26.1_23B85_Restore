@interface GKGameSession
+ (void)createSessionInContainer:(NSString *)containerName withTitle:(NSString *)title maxConnectedPlayers:(NSInteger)maxPlayers completionHandler:(void *)completionHandler;
+ (void)loadSessionWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler;
+ (void)loadSessionsInContainer:(NSString *)containerName completionHandler:(void *)completionHandler;
+ (void)removeSessionWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler;
- (GKGameSession)initWithCoder:(id)coder;
- (NSArray)playersWithConnectionState:(GKConnectionState)state;
- (void)clearBadgeForPlayers:(NSArray *)players completionHandler:(void *)completionHandler;
- (void)encodeWithCoder:(id)coder;
- (void)getShareURLWithCompletionHandler:(void *)completionHandler;
- (void)loadDataWithCompletionHandler:(void *)completionHandler;
- (void)saveData:(NSData *)data completionHandler:(void *)completionHandler;
- (void)sendData:(NSData *)data withTransportType:(GKTransportType)transport completionHandler:(void *)completionHandler;
- (void)sendMessageWithLocalizedFormatKey:(NSString *)key arguments:(NSArray *)arguments data:(NSData *)data toPlayers:(NSArray *)players badgePlayers:(BOOL)badgePlayers completionHandler:(void *)completionHandler;
- (void)setConnectionState:(GKConnectionState)state completionHandler:(void *)completionHandler;
@end

@implementation GKGameSession

+ (void)createSessionInContainer:(NSString *)containerName withTitle:(NSString *)title maxConnectedPlayers:(NSInteger)maxPlayers completionHandler:(void *)completionHandler
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = completionHandler;
  v8 = [v6 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v10 createSessionInContainer:v11 withTitle:v12 maxConnectedPlayers:v13 completionHandler:v14, v15, v16, v17];
  }

  v7[2](v7, 0, v8);
}

+ (void)loadSessionsInContainer:(NSString *)containerName completionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = completionHandler;
  v6 = [v4 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v8 createSessionInContainer:v9 withTitle:v10 maxConnectedPlayers:v11 completionHandler:v12, v13, v14, v15];
  }

  v5[2](v5, 0, v6);
}

+ (void)loadSessionWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = completionHandler;
  v6 = [v4 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v8 createSessionInContainer:v9 withTitle:v10 maxConnectedPlayers:v11 completionHandler:v12, v13, v14, v15];
  }

  v5[2](v5, 0, v6);
}

+ (void)removeSessionWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = completionHandler;
  v6 = [v4 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v8 createSessionInContainer:v9 withTitle:v10 maxConnectedPlayers:v11 completionHandler:v12, v13, v14, v15];
  }

  v5[2](v5, v6);
}

- (GKGameSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = GKGameSession;
  v5 = [(GKGameSession *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(GKGameSession *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(GKGameSession *)v5 setTitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owner"];
    [(GKGameSession *)v5 setOwner:v8];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"players"];
    [(GKGameSession *)v5 setPlayers:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
    [(GKGameSession *)v5 setLastModifiedDate:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedPlayer"];
    [(GKGameSession *)v5 setLastModifiedPlayer:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeTag"];
    [(GKGameSession *)v5 setServerChangeTag:v15];

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v16 setWithObjects:{v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"playerStates"];
    [(GKGameSession *)v5 setPlayerStates:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxNumberOfConnectedPlayers"];
    -[GKGameSession setMaxNumberOfConnectedPlayers:](v5, "setMaxNumberOfConnectedPlayers:", [v24 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(GKGameSession *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  title = [(GKGameSession *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  owner = [(GKGameSession *)self owner];
  [coderCopy encodeObject:owner forKey:@"owner"];

  players = [(GKGameSession *)self players];
  [coderCopy encodeObject:players forKey:@"players"];

  lastModifiedDate = [(GKGameSession *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];

  lastModifiedPlayer = [(GKGameSession *)self lastModifiedPlayer];
  [coderCopy encodeObject:lastModifiedPlayer forKey:@"lastModifiedPlayer"];

  serverChangeTag = [(GKGameSession *)self serverChangeTag];
  [coderCopy encodeObject:serverChangeTag forKey:@"serverChangeTag"];

  playerStates = [(GKGameSession *)self playerStates];
  [coderCopy encodeObject:playerStates forKey:@"playerStates"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKGameSession maxNumberOfConnectedPlayers](self, "maxNumberOfConnectedPlayers")}];
  [coderCopy encodeObject:v13 forKey:@"maxNumberOfConnectedPlayers"];
}

- (void)getShareURLWithCompletionHandler:(void *)completionHandler
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = completionHandler;
  v5 = [v3 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v7 createSessionInContainer:v8 withTitle:v9 maxConnectedPlayers:v10 completionHandler:v11, v12, v13, v14];
  }

  v4[2](v4, 0, v5);
}

- (void)loadDataWithCompletionHandler:(void *)completionHandler
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = completionHandler;
  v5 = [v3 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v7 createSessionInContainer:v8 withTitle:v9 maxConnectedPlayers:v10 completionHandler:v11, v12, v13, v14];
  }

  v4[2](v4, 0, v5);
}

- (void)saveData:(NSData *)data completionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = completionHandler;
  v6 = [v4 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v8 createSessionInContainer:v9 withTitle:v10 maxConnectedPlayers:v11 completionHandler:v12, v13, v14, v15];
  }

  v5[2](v5, 0, v6);
}

- (void)setConnectionState:(GKConnectionState)state completionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = completionHandler;
  v6 = [v4 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v8 createSessionInContainer:v9 withTitle:v10 maxConnectedPlayers:v11 completionHandler:v12, v13, v14, v15];
  }

  v5[2](v5, v6);
}

- (NSArray)playersWithConnectionState:(GKConnectionState)state
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v4 createSessionInContainer:v5 withTitle:v6 maxConnectedPlayers:v7 completionHandler:v8, v9, v10, v11];
  }

  return MEMORY[0x277CBEBF8];
}

- (void)sendData:(NSData *)data withTransportType:(GKTransportType)transport completionHandler:(void *)completionHandler
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = completionHandler;
  v7 = [v5 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v9 createSessionInContainer:v10 withTitle:v11 maxConnectedPlayers:v12 completionHandler:v13, v14, v15, v16];
  }

  v6[2](v6, v7);
}

- (void)sendMessageWithLocalizedFormatKey:(NSString *)key arguments:(NSArray *)arguments data:(NSData *)data toPlayers:(NSArray *)players badgePlayers:(BOOL)badgePlayers completionHandler:(void *)completionHandler
{
  v8 = MEMORY[0x277CCA9B8];
  v9 = completionHandler;
  v10 = [v8 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v12 createSessionInContainer:v13 withTitle:v14 maxConnectedPlayers:v15 completionHandler:v16, v17, v18, v19];
  }

  v9[2](v9, v10);
}

- (void)clearBadgeForPlayers:(NSArray *)players completionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = completionHandler;
  v6 = [v4 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [(GKGameSession *)v8 createSessionInContainer:v9 withTitle:v10 maxConnectedPlayers:v11 completionHandler:v12, v13, v14, v15];
  }

  v5[2](v5, v6);
}

+ (void)createSessionInContainer:(uint64_t)a3 withTitle:(uint64_t)a4 maxConnectedPlayers:(uint64_t)a5 completionHandler:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_227904000, a1, a3, "WARNING: %{public}@ is obsoleted and does nothing.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end