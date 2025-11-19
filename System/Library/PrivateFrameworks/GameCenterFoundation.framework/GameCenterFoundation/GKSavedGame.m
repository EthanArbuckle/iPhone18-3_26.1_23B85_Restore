@interface GKSavedGame
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)loadDataWithCompletionHandler:(void *)handler;
@end

@implementation GKSavedGame

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setName:self->_name];
    [v5 setDeviceName:self->_deviceName];
    [v5 setModificationDate:self->_modificationDate];
    [v5 setFileURL:self->_fileURL];
  }

  return v5;
}

- (void)loadDataWithCompletionHandler:(void *)handler
{
  v4 = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__GKSavedGame_loadDataWithCompletionHandler___block_invoke;
  v6[3] = &unk_2785DE540;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __45__GKSavedGame_loadDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = +[GKSavedGameManager sharedManager];
  [v2 loadDataForSavedGame:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = GKSavedGame;
  v3 = [(GKSavedGame *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", name = %@, deviceName = %@, modificationDate = %@", self->_name, self->_deviceName, self->_modificationDate];

  return v4;
}

@end