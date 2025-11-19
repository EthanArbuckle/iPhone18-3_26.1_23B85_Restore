@interface SUUIMediaPlayerItemStatus
- (SUUIMediaPlayerItemStatus)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SUUIMediaPlayerItemStatus

- (SUUIMediaPlayerItemStatus)init
{
  v3.receiver = self;
  v3.super_class = SUUIMediaPlayerItemStatus;
  return [(SUUIMediaPlayerItemStatus *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_currentTime;
  *(v5 + 40) = self->_duration;
  v6 = [(NSString *)self->_itemIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 56) = self->_itemType;
  *(v5 + 64) = self->_playState;
  v8 = [(NSString *)self->_storeID copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_storeAlbumID copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIMediaPlayerItemStatus;
  v4 = [(SUUIMediaPlayerItemStatus *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [duration: %f  currentTime: %f state:%li storeId:%@ storeAlbumId:%@ itemIdentifier:%@]", v4, *&self->_duration, *&self->_currentTime, self->_playState, self->_storeID, self->_storeAlbumID, self->_itemIdentifier];

  return v5;
}

@end