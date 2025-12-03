@interface GKLocalPlayer(Photos)
- (void)deleteMonogramsWithHandler:()Photos;
- (void)deletePhotoWithCompletionHandler:()Photos;
- (void)setPhoto:()Photos avatarType:withCompletionHandler:;
- (void)setPhotoFromCNContactImage:()Photos pendingContact:withCompletionHandler:;
@end

@implementation GKLocalPlayer(Photos)

- (void)deletePhotoWithCompletionHandler:()Photos
{
  v4 = a3;
  internal = [self internal];
  [internal setPhotos:0];

  [self clearInMemoryCachedAvatars];
  daemonProxy = [self daemonProxy];
  profileServicePrivate = [daemonProxy profileServicePrivate];
  [profileServicePrivate deletePhotoWithHandler:v4];
}

- (void)setPhoto:()Photos avatarType:withCompletionHandler:
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_get_global_queue(2, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__GKLocalPlayer_Photos__setPhoto_avatarType_withCompletionHandler___block_invoke;
  v13[3] = &unk_27966A408;
  v14 = v8;
  selfCopy = self;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)setPhotoFromCNContactImage:()Photos pendingContact:withCompletionHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D0C020];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer+Photos.m", 112, "-[GKLocalPlayer(Photos) setPhotoFromCNContactImage:pendingContact:withCompletionHandler:]"];
  v13 = [v11 dispatchGroupWithName:v12];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke;
  v20[3] = &unk_27966A458;
  v14 = v9;
  v21 = v14;
  v15 = v8;
  v22 = v15;
  selfCopy = self;
  v16 = v13;
  v24 = v16;
  [v16 perform:v20];
  if (v10)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke_4;
    v17[3] = &unk_27966A480;
    v19 = v10;
    v18 = v16;
    [v18 notifyOnMainQueueWithBlock:v17];
  }
}

- (void)deleteMonogramsWithHandler:()Photos
{
  v4 = a3;
  internal = [self internal];
  playerID = [internal playerID];

  if (playerID)
  {
    v7 = MEMORY[0x277D0C020];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer+Photos.m", 172, "-[GKLocalPlayer(Photos) deleteMonogramsWithHandler:]"];
    v9 = [v7 dispatchGroupWithName:v8];

    internal2 = [self internal];
    playerID2 = [internal2 playerID];
    v12 = GKAvatarSubdirectoryNameForPlayerID();

    for (i = 0; i != 4; ++i)
    {
      v14 = [objc_opt_class() sizeForPhotoSize:qword_24E367660[i]];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke;
      v19[3] = &unk_27966A4D0;
      v21 = v14;
      v15 = v12;
      v20 = v15;
      [v9 perform:v19];
    }

    if ([self avatarType] == 1)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_3;
      v18[3] = &unk_27966A148;
      v18[4] = self;
      [v9 perform:v18];
    }

    if (v4)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_19;
      v16[3] = &unk_27966A4A8;
      v17 = v4;
      [v9 notifyOnMainQueueWithBlock:v16];
    }
  }
}

@end