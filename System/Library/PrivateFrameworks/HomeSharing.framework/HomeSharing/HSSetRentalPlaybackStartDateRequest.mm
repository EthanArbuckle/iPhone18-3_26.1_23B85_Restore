@interface HSSetRentalPlaybackStartDateRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD;
- (HSSetRentalPlaybackStartDateRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD;
@end

@implementation HSSetRentalPlaybackStartDateRequest

- (HSSetRentalPlaybackStartDateRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD
{
  v5 = *&d;
  v14.receiver = self;
  v14.super_class = HSSetRentalPlaybackStartDateRequest;
  v6 = [(HSRequest *)&v14 initWithAction:@"set-rental-playback-start-date"];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%u'", v5];
    [(HSRequest *)v6 setValue:v7 forArgument:@"database-spec"];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%llu'", iD];
    [(HSRequest *)v6 setValue:v8 forArgument:@"item-spec"];

    v9 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v12 = [v9 stringWithFormat:@"%llu", v11];
    [(HSRequest *)v6 setValue:v12 forArgument:@"rental-playback-start-date"];
  }

  return v6;
}

+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD
{
  v4 = [[self alloc] initWithDatabaseID:*&d itemID:iD];

  return v4;
}

@end