@interface AudioPlaylistStore
- (void)audioPlaylistDidChange:(id)change;
@end

@implementation AudioPlaylistStore

- (void)audioPlaylistDidChange:(id)change
{
  sub_2186C6148(0, &qword_280E8D790);

  v3 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE3494();
}

@end