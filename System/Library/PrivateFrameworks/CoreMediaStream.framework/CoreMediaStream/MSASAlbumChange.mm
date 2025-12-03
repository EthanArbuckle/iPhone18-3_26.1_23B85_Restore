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
  gUID = [(MSASAlbumChange *)self GUID];
  name = [(MSASAlbumChange *)self name];
  ownerFullName = [(MSASAlbumChange *)self ownerFullName];
  ownerEmail = [(MSASAlbumChange *)self ownerEmail];
  ownerPersonID = [(MSASAlbumChange *)self ownerPersonID];
  v10 = [MEMORY[0x277CCACA8] MSStringWithBool:{-[MSASAlbumChange wasDeleted](self, "wasDeleted")}];
  invitation = [(MSASAlbumChange *)self invitation];
  v12 = [v3 stringWithFormat:@"%@: GUID : %@, name: %@, owner: %@ (%@ %@) was deleted: %@, share: %@", v4, gUID, name, ownerFullName, ownerEmail, ownerPersonID, v10, invitation];

  return v12;
}

@end