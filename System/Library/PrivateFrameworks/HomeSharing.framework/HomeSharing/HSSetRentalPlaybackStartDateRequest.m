@interface HSSetRentalPlaybackStartDateRequest
+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4;
- (HSSetRentalPlaybackStartDateRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4;
@end

@implementation HSSetRentalPlaybackStartDateRequest

- (HSSetRentalPlaybackStartDateRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4
{
  v5 = *&a3;
  v14.receiver = self;
  v14.super_class = HSSetRentalPlaybackStartDateRequest;
  v6 = [(HSRequest *)&v14 initWithAction:@"set-rental-playback-start-date"];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%u'", v5];
    [(HSRequest *)v6 setValue:v7 forArgument:@"database-spec"];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%llu'", a4];
    [(HSRequest *)v6 setValue:v8 forArgument:@"item-spec"];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CBEAA8] date];
    [v10 timeIntervalSince1970];
    v12 = [v9 stringWithFormat:@"%llu", v11];
    [(HSRequest *)v6 setValue:v12 forArgument:@"rental-playback-start-date"];
  }

  return v6;
}

+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithDatabaseID:*&a3 itemID:a4];

  return v4;
}

@end