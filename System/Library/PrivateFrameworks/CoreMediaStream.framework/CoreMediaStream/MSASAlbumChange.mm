@interface MSASAlbumChange
- (NSString)ownerFullName;
- (id)description;
@end

@implementation MSASAlbumChange

- (NSString)ownerFullName
{
  ownerFullName = self->_ownerFullName;
  if (ownerFullName)
  {
    v3 = ownerFullName;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", self->_ownerFirstName, self->_ownerLastName];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = MSASAlbumChange;
  v4 = [(MSASAlbumChange *)&v14 description];
  v5 = [(MSASAlbumChange *)self GUID];
  v6 = [(MSASAlbumChange *)self name];
  v7 = [(MSASAlbumChange *)self ownerFullName];
  v8 = [(MSASAlbumChange *)self ownerEmail];
  v9 = [(MSASAlbumChange *)self ownerPersonID];
  v10 = [MEMORY[0x277CCACA8] MSStringWithBool:{-[MSASAlbumChange wasDeleted](self, "wasDeleted")}];
  v11 = [(MSASAlbumChange *)self invitation];
  v12 = [v3 stringWithFormat:@"%@: GUID : %@, name: %@, owner: %@ (%@ %@) was deleted: %@, share: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end