@interface GDContact
- (GDContact)initWithHandle:(id)a3 contactType:(int64_t)a4 displayName:(id)a5 participantStatus:(int64_t)a6;
@end

@implementation GDContact

- (GDContact)initWithHandle:(id)a3 contactType:(int64_t)a4 displayName:(id)a5 participantStatus:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = GDContact;
  v13 = [(GDContact *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_handle, a3);
    objc_storeStrong(&v14->_displayName, a5);
    v14->_contactType = a4;
    v14->_participantStatus = a6;
  }

  return v14;
}

@end