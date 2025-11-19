@interface SUUIItemState
- (BOOL)activeStateIsPreview;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SUUIItemState

- (BOOL)activeStateIsPreview
{
  if (([(SUUIItemState *)self state]& 3) != 0)
  {
    v3 = [(SUUIItemState *)self downloadContentFlags];
  }

  else if (([(SUUIItemState *)self state]& 0x40) != 0)
  {
    v3 = [(SUUIItemState *)self libraryContentFlags];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIItemState;
  v4 = [(SUUIItemState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: ID: [%@ / %@], State: %ld, Download: [%@, %.2f, %ld], Library: [%ld, %ld]", v4, self->_itemIdentifier, self->_variantIdentifier, self->_state, self->_downloadPhase, self->_downloadProgress, self->_downloadContentFlags, self->_mediaCategory, self->_libraryContentFlags];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_downloadContentFlags;
  v6 = [(NSString *)self->_downloadPhase copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_downloadProgress;
  v8 = [(NSNumber *)self->_itemIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(SUUIStoreIdentifier *)self->_storeIdentifier copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 56) = self->_libraryContentFlags;
  *(v5 + 64) = self->_mediaCategory;
  *(v5 + 72) = self->_state;
  v12 = [(NSString *)self->_variantIdentifier copyWithZone:a3];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSArray *)self->_downloadIdentifiers copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  return v5;
}

@end