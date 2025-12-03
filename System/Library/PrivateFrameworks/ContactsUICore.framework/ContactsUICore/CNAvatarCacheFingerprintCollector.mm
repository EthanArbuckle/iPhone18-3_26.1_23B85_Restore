@interface CNAvatarCacheFingerprintCollector
- (CNAvatarCacheFingerprintCollector)init;
- (NSArray)fingerprintsOfAffectedContacts;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation CNAvatarCacheFingerprintCollector

- (CNAvatarCacheFingerprintCollector)init
{
  v7.receiver = self;
  v7.super_class = CNAvatarCacheFingerprintCollector;
  v2 = [(CNAvatarCacheFingerprintCollector *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    fingerprints = v2->_fingerprints;
    v2->_fingerprints = v3;

    v5 = v2;
  }

  return v2;
}

- (NSArray)fingerprintsOfAffectedContacts
{
  array = [(NSMutableOrderedSet *)self->_fingerprints array];
  v3 = [array copy];

  return v3;
}

- (void)visitUpdateContactEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  contact = [eventCopy contact];
  isUnified = [contact isUnified];

  if (isUnified)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    contact2 = [eventCopy contact];
    linkedContacts = [contact2 linkedContacts];

    v9 = [linkedContacts countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(linkedContacts);
          }

          v13 = [CNUILikenessFingerprint fingerprintForContact:*(*(&v16 + 1) + 8 * v12)];
          [(NSMutableOrderedSet *)self->_fingerprints addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [linkedContacts countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  contact3 = [eventCopy contact];
  v15 = [CNUILikenessFingerprint fingerprintForContact:contact3];

  [(NSMutableOrderedSet *)self->_fingerprints addObject:v15];
}

- (void)visitDeleteContactEvent:(id)event
{
  contactIdentifier = [event contactIdentifier];
  v5 = [CNUILikenessFingerprint fingerprintForContactIdentifier:contactIdentifier];

  [(NSMutableOrderedSet *)self->_fingerprints addObject:v5];
}

@end