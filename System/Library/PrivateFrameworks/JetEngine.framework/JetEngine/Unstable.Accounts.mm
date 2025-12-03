@interface Unstable.Accounts
- (void)accountCookiesDidChange:(id)change;
- (void)accountStoreDidChange:(id)change;
@end

@implementation Unstable.Accounts

- (void)accountCookiesDidChange:(id)change
{
  v4 = sub_1AB45F284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F254();
  v8 = *self->_activeiTunesAccount;

  os_unfair_lock_lock((v8 + 24));

  *(v8 + 16) = [*self->backingStore ams_activeiTunesAccount];
  os_unfair_lock_unlock((v8 + 24));
  (*(v5 + 8))(v7, v4);
}

- (void)accountStoreDidChange:(id)change
{
  v3 = sub_1AB45F284();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F254();

  sub_1AB2C9478();

  (*(v4 + 8))(v6, v3);
}

@end