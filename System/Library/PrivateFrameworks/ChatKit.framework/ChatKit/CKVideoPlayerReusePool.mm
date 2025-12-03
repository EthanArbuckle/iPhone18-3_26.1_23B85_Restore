@interface CKVideoPlayerReusePool
+ (CKVideoPlayerReusePool)sharedPool;
- (CKVideoPlayerReusePool)init;
- (NSArray)pool;
- (id)dequeueAvailablePlayerAt:(int64_t)at;
- (id)dequeueAvailableVideoPlayer;
- (id)existingVideoPlayerForTransferGUID:(id)d;
- (void)dealloc;
- (void)lowMemoryWarningReceivedWithNotification:(id)notification;
- (void)removeUnneededVideoPlayers;
- (void)returnPlayerToPool:(id)pool;
- (void)setPool:(id)pool;
@end

@implementation CKVideoPlayerReusePool

- (NSArray)pool
{
  swift_beginAccess();
  sub_1909D9AE8();
  sub_190D52690();
  v2 = sub_190D57160();

  return v2;
}

- (void)setPool:(id)pool
{
  sub_1909D9AE8();
  v4 = sub_190D57180();
  v5 = OBJC_IVAR___CKVideoPlayerReusePool_pool;
  swift_beginAccess();
  *(self + v5) = v4;
}

+ (CKVideoPlayerReusePool)sharedPool
{
  if (qword_1EAD51AE8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD59368;

  return v3;
}

- (CKVideoPlayerReusePool)init
{
  *(self + OBJC_IVAR___CKVideoPlayerReusePool_pool) = MEMORY[0x1E69E7CC0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoPlayerReusePool();
  v2 = [(CKVideoPlayerReusePool *)&v7 init];
  v3 = objc_opt_self();
  v4 = v2;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter addObserver:v4 selector:sel_lowMemoryWarningReceivedWithNotification_ name:*MEMORY[0x1E69DDAD8] object:0];

  return v4;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for VideoPlayerReusePool();
  [(CKVideoPlayerReusePool *)&v6 dealloc];
}

- (id)dequeueAvailableVideoPlayer
{
  selfCopy = self;
  v3 = sub_1909D8FB4();
  if (v4)
  {
    v5 = [objc_allocWithZone(CKReusableVideoPlayer) init];
  }

  else
  {
    v5 = [(CKVideoPlayerReusePool *)selfCopy dequeueAvailablePlayerAt:v3];
  }

  v6 = v5;

  return v6;
}

- (id)existingVideoPlayerForTransferGUID:(id)d
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1909D9184(v4, v6);

  return v8;
}

- (void)returnPlayerToPool:(id)pool
{
  poolCopy = pool;
  selfCopy = self;
  sub_1909D93A4(poolCopy);
}

- (id)dequeueAvailablePlayerAt:(int64_t)at
{
  swift_beginAccess();
  selfCopy = self;
  v6 = sub_190A0DBB8(at);
  swift_endAccess();

  return v6;
}

- (void)removeUnneededVideoPlayers
{
  selfCopy = self;
  sub_1909D9668();
}

- (void)lowMemoryWarningReceivedWithNotification:(id)notification
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  [(CKVideoPlayerReusePool *)self removeUnneededVideoPlayers];
  (*(v5 + 8))(v7, v4);
}

@end