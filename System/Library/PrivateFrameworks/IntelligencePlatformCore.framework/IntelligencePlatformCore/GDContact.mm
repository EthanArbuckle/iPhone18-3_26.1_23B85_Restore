@interface GDContact
- (GDContact)initWithHandle:(id)handle contactType:(int64_t)type displayName:(id)name participantStatus:(int64_t)status;
@end

@implementation GDContact

- (GDContact)initWithHandle:(id)handle contactType:(int64_t)type displayName:(id)name participantStatus:(int64_t)status
{
  handleCopy = handle;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = GDContact;
  v13 = [(GDContact *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_handle, handle);
    objc_storeStrong(&v14->_displayName, name);
    v14->_contactType = type;
    v14->_participantStatus = status;
  }

  return v14;
}

@end