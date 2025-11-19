@interface CNCoreMutableDelegateInfo
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAltDSID:(id)a3;
- (void)setAppleID:(id)a3;
- (void)setDsid:(id)a3;
- (void)setNameComponents:(id)a3;
- (void)setPrincipalPath:(id)a3;
@end

@implementation CNCoreMutableDelegateInfo

- (void)setDsid:(id)a3
{
  v4 = [a3 copy];
  dsid = self->super._dsid;
  self->super._dsid = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAltDSID:(id)a3
{
  v4 = [a3 copy];
  altDSID = self->super._altDSID;
  self->super._altDSID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAppleID:(id)a3
{
  v4 = [a3 copy];
  appleID = self->super._appleID;
  self->super._appleID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPrincipalPath:(id)a3
{
  v4 = [a3 copy];
  principalPath = self->super._principalPath;
  self->super._principalPath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setNameComponents:(id)a3
{
  v4 = [a3 copy];
  nameComponents = self->super._nameComponents;
  self->super._nameComponents = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNCoreDelegateInfo alloc];
  dsid = self->super._dsid;
  altDSID = self->super._altDSID;
  appleID = self->super._appleID;
  principalPath = self->super._principalPath;
  nameComponents = self->super._nameComponents;
  isMe = self->super._isMe;

  return [(CNCoreDelegateInfo *)v4 initWithDSID:dsid altDSID:altDSID appleID:appleID principalPath:principalPath nameComponents:nameComponents isMe:isMe];
}

@end