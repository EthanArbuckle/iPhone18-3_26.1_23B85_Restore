@interface CKVisualGroupIdentity
- (id)initGroupWithName:(id)name photo:(id)photo visualContacts:(id)contacts groupParticipantCount:(int64_t)count;
- (int64_t)numberOfContacts;
- (void)updateContacts:(id)contacts;
- (void)updateVisualContacts:(id)contacts groupParticipantCount:(int64_t)count;
@end

@implementation CKVisualGroupIdentity

- (id)initGroupWithName:(id)name photo:(id)photo visualContacts:(id)contacts groupParticipantCount:(int64_t)count
{
  v11.receiver = self;
  v11.super_class = CKVisualGroupIdentity;
  v7 = [(CKVisualGroupIdentity *)&v11 initGroupWithName:name photo:photo contacts:contacts];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v7;
}

- (int64_t)numberOfContacts
{
  v3.receiver = self;
  v3.super_class = CKVisualGroupIdentity;
  return [(CKVisualGroupIdentity *)&v3 numberOfContacts];
}

- (void)updateContacts:(id)contacts
{
  contactsCopy = contacts;
  if (self->_groupParticipantCount)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [CKVisualGroupIdentity updateContacts:v5];
    }
  }

  v6.receiver = self;
  v6.super_class = CKVisualGroupIdentity;
  [(CKVisualGroupIdentity *)&v6 updateContacts:contactsCopy];
}

- (void)updateVisualContacts:(id)contacts groupParticipantCount:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = CKVisualGroupIdentity;
  [(CKVisualGroupIdentity *)&v8 updateContacts:contacts];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  groupParticipantCount = self->_groupParticipantCount;
  self->_groupParticipantCount = v6;
}

@end