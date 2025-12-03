@interface BBBulletinServiceConnection
+ (id)sharedBulletinServiceWithDelegate:(id)delegate;
@end

@implementation BBBulletinServiceConnection

+ (id)sharedBulletinServiceWithDelegate:(id)delegate
{
  if (sharedBulletinServiceWithDelegate__onceToken[0] != -1)
  {
    +[BBBulletinServiceConnection sharedBulletinServiceWithDelegate:];
  }

  v4 = sharedBulletinServiceWithDelegate__service;

  return v4;
}

uint64_t __65__BBBulletinServiceConnection_sharedBulletinServiceWithDelegate___block_invoke()
{
  sharedBulletinServiceWithDelegate__service = [[BBBulletinService alloc] initNoop];

  return MEMORY[0x1EEE66BB8]();
}

@end