@interface CNAvatarCacheFingerprintCollector
- (CNAvatarCacheFingerprintCollector)init;
- (NSArray)fingerprintsOfAffectedContacts;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
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
  v2 = [(NSMutableOrderedSet *)self->_fingerprints array];
  v3 = [v2 copy];

  return v3;
}

- (void)visitUpdateContactEvent:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contact];
  v6 = [v5 isUnified];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v4 contact];
    v8 = [v7 linkedContacts];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [CNUILikenessFingerprint fingerprintForContact:*(*(&v16 + 1) + 8 * v12)];
          [(NSMutableOrderedSet *)self->_fingerprints addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = [v4 contact];
  v15 = [CNUILikenessFingerprint fingerprintForContact:v14];

  [(NSMutableOrderedSet *)self->_fingerprints addObject:v15];
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = [a3 contactIdentifier];
  v5 = [CNUILikenessFingerprint fingerprintForContactIdentifier:v4];

  [(NSMutableOrderedSet *)self->_fingerprints addObject:v5];
}

@end