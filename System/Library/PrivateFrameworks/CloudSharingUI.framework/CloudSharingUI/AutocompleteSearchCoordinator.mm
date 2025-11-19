@interface AutocompleteSearchCoordinator
- (_TtC14CloudSharingUI29AutocompleteSearchCoordinator)init;
- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4;
- (void)searchController:(id)a3 didTapTableAccessoryForRecipient:(id)a4;
- (void)searchController:(id)a3 textViewDidChangeSize:(CGSize)a4;
@end

@implementation AutocompleteSearchCoordinator

- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = [objc_allocWithZone(MEMORY[0x277CFBCA0]) initWithContact:0 address:a4 kind:0];

  return v4;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_243B32A2C();
}

- (void)searchController:(id)a3 didTapTableAccessoryForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_243B31CB0(v6, v7);
}

- (void)searchController:(id)a3 textViewDidChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  sub_243B32AFC(width, height);
}

- (_TtC14CloudSharingUI29AutocompleteSearchCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end