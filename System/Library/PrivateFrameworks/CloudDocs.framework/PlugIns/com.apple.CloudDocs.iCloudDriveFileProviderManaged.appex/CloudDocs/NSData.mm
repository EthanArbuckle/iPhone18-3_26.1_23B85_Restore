@interface NSData
+ (id)br_changeTokenFromRank:(unint64_t)rank uuid:(unsigned __int8)uuid[16];
+ (id)br_pageTokenFromSortOrder:(unsigned __int8)order gatherBatch:(unint64_t)batch;
+ (id)br_pageTokenFromSortOrder:(unsigned __int8)order offset:(unint64_t)offset;
- (BOOL)br_pageTokenCompletedInitialEnumeration;
- (int64_t)br_changeTokenRankWithUUID:(unsigned __int8)d[16];
- (unint64_t)br_pageTokenOffset;
- (unsigned)br_pageTokenSortOrder;
@end

@implementation NSData

- (unsigned)br_pageTokenSortOrder
{
  if ([(NSData *)self isEqualToData:NSFileProviderInitialPageSortedByDate])
  {
    return 1;
  }

  if ([(NSData *)self isEqualToData:NSFileProviderInitialPageSortedByName])
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  [(NSData *)self getBytes:&v4 length:16];
  return v5;
}

- (unint64_t)br_pageTokenOffset
{
  if ([(NSData *)self isEqualToData:NSFileProviderInitialPageSortedByDate]|| [(NSData *)self isEqualToData:NSFileProviderInitialPageSortedByName])
  {
    return 0;
  }

  v4[0] = 0;
  v4[1] = 0;
  [(NSData *)self getBytes:v4 length:16];
  return v4[0];
}

- (BOOL)br_pageTokenCompletedInitialEnumeration
{
  if ([(NSData *)self isEqualToData:NSFileProviderInitialPageSortedByDate]|| [(NSData *)self isEqualToData:NSFileProviderInitialPageSortedByName])
  {
    v3 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    [(NSData *)self getBytes:&v5 length:16];
    v3 = BYTE1(v6);
  }

  return v3 & 1;
}

+ (id)br_pageTokenFromSortOrder:(unsigned __int8)order offset:(unint64_t)offset
{
  if (offset)
  {
    v7[0] = offset;
    v7[1] = order;
    v5 = [NSData dataWithBytes:v7 length:16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)br_pageTokenFromSortOrder:(unsigned __int8)order gatherBatch:(unint64_t)batch
{
  batchCopy = batch;
  orderCopy = order;
  BYTE1(orderCopy) = 1;
  v4 = [NSData dataWithBytes:&batchCopy length:16];

  return v4;
}

- (int64_t)br_changeTokenRankWithUUID:(unsigned __int8)d[16]
{
  v5 = 0;
  v6[0] = 0;
  v6[1] = 0;
  [(NSData *)self getBytes:&v5 length:24];
  if (uuid_compare(v6, d))
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

+ (id)br_changeTokenFromRank:(unint64_t)rank uuid:(unsigned __int8)uuid[16]
{
  v8[0] = 0;
  v8[1] = 0;
  uuid_copy(v8, uuid);
  rankCopy = rank;
  v5 = [NSData dataWithBytes:&rankCopy length:24];

  return v5;
}

@end