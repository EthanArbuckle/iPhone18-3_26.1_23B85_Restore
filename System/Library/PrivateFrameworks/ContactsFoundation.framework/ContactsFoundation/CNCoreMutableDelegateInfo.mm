@interface CNCoreMutableDelegateInfo
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAltDSID:(id)d;
- (void)setAppleID:(id)d;
- (void)setDsid:(id)dsid;
- (void)setNameComponents:(id)components;
- (void)setPrincipalPath:(id)path;
@end

@implementation CNCoreMutableDelegateInfo

- (void)setDsid:(id)dsid
{
  v4 = [dsid copy];
  dsid = self->super._dsid;
  self->super._dsid = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAltDSID:(id)d
{
  v4 = [d copy];
  altDSID = self->super._altDSID;
  self->super._altDSID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAppleID:(id)d
{
  v4 = [d copy];
  appleID = self->super._appleID;
  self->super._appleID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPrincipalPath:(id)path
{
  v4 = [path copy];
  principalPath = self->super._principalPath;
  self->super._principalPath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setNameComponents:(id)components
{
  v4 = [components copy];
  nameComponents = self->super._nameComponents;
  self->super._nameComponents = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
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