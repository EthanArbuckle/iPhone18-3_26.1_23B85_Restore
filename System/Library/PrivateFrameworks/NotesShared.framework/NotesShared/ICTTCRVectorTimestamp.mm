@interface ICTTCRVectorTimestamp
- (ICTTCRVectorTimestamp)init;
- (id)allUUIDs;
- (id)clockElementForUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sortedUUIDs;
- (unint64_t)clockForUUID:(id)d;
- (unint64_t)subclockForUUID:(id)d;
- (void)setClock:(unint64_t)clock forUUID:(id)d;
- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
@end

@implementation ICTTCRVectorTimestamp

- (ICTTCRVectorTimestamp)init
{
  v5.receiver = self;
  v5.super_class = ICTTCRVectorTimestamp;
  v2 = [(ICTTVectorTimestamp *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICCRVectorTimestamp);
    [(ICTTCRVectorTimestamp *)v2 setCrTimestamp:v3];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICTTCRVectorTimestamp allocWithZone:?]];
  [(ICTTVectorTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (id)clockElementForUUID:(id)d
{
  dCopy = d;
  crTimestamp = [(ICTTCRVectorTimestamp *)self crTimestamp];
  v6 = [crTimestamp clockElementForUUID:dCopy];

  if (v6)
  {
    v7 = objc_alloc_init(ICTTVectorTimestampElement);
    -[ICTTVectorTimestampElement setClock:](v7, "setClock:", [v6 clock]);
    -[ICTTVectorTimestampElement setSubclock:](v7, "setSubclock:", [v6 subclock]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)clockForUUID:(id)d
{
  v3 = [(ICTTCRVectorTimestamp *)self clockElementForUUID:d];
  clock = [v3 clock];

  return clock;
}

- (unint64_t)subclockForUUID:(id)d
{
  v3 = [(ICTTCRVectorTimestamp *)self clockElementForUUID:d];
  subclock = [v3 subclock];

  return subclock;
}

- (void)setClock:(unint64_t)clock forUUID:(id)d
{
  dCopy = d;
  crTimestamp = [(ICTTCRVectorTimestamp *)self crTimestamp];
  [crTimestamp setClock:clock forUUID:dCopy];
}

- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  dCopy = d;
  crTimestamp = [(ICTTCRVectorTimestamp *)self crTimestamp];
  [crTimestamp setClock:clock subclock:subclock forUUID:dCopy];
}

- (id)allUUIDs
{
  crTimestamp = [(ICTTCRVectorTimestamp *)self crTimestamp];
  allUUIDs = [crTimestamp allUUIDs];

  return allUUIDs;
}

- (id)sortedUUIDs
{
  crTimestamp = [(ICTTCRVectorTimestamp *)self crTimestamp];
  sortedUUIDs = [crTimestamp sortedUUIDs];

  return sortedUUIDs;
}

@end