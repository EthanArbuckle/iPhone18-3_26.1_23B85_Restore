@interface CKVisualGroupIdentity
- (id)initGroupWithName:(id)a3 photo:(id)a4 visualContacts:(id)a5 groupParticipantCount:(int64_t)a6;
- (int64_t)numberOfContacts;
- (void)updateContacts:(id)a3;
- (void)updateVisualContacts:(id)a3 groupParticipantCount:(int64_t)a4;
@end

@implementation CKVisualGroupIdentity

- (id)initGroupWithName:(id)a3 photo:(id)a4 visualContacts:(id)a5 groupParticipantCount:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = CKVisualGroupIdentity;
  v7 = [(CKVisualGroupIdentity *)&v11 initGroupWithName:a3 photo:a4 contacts:a5];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
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

- (void)updateContacts:(id)a3
{
  v4 = a3;
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
  [(CKVisualGroupIdentity *)&v6 updateContacts:v4];
}

- (void)updateVisualContacts:(id)a3 groupParticipantCount:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = CKVisualGroupIdentity;
  [(CKVisualGroupIdentity *)&v8 updateContacts:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  groupParticipantCount = self->_groupParticipantCount;
  self->_groupParticipantCount = v6;
}

@end