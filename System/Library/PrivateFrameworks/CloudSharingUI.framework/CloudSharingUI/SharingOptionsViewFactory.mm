@interface SharingOptionsViewFactory
+ (id)createCollaborationShareOptionsView:(id)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 userDidChangeOption:(id)a5 contentSizeDidChange:(id)a6;
+ (id)createSharingOptionsView:(id)a3 userDidChangeOption:(id)a4;
- (_TtC14CloudSharingUI25SharingOptionsViewFactory)init;
@end

@implementation SharingOptionsViewFactory

+ (id)createCollaborationShareOptionsView:(id)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 userDidChangeOption:(id)a5 contentSizeDidChange:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a3;
  v13 = _s14CloudSharingUI0B18OptionsViewFactoryC024createCollaborationSharedE0_13layoutMargins19userDidChangeOption011contentSizemN0AA32HostingControllerAndModelUpdatesCSo016_SWCollaborationiD0CSg_So23NSDirectionalEdgeInsetsVySS_SSSbALtcySo6CGSizeVctFZ_0(a3, sub_243B69EE8, v10, sub_243B69EF0, v11);

  return v13;
}

+ (id)createSharingOptionsView:(id)a3 userDidChangeOption:(id)a4
{
  v4 = _Block_copy(a4);
  sub_243B69E94();
  v5 = sub_243B7089C();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = _s14CloudSharingUI0B18OptionsViewFactoryC06createbdE0_19userDidChangeOptionAA32HostingControllerAndModelUpdatesCSaySo016_SWCollaborationD5GroupCG_ySS_SSSbAJtctFZ_0(v5, sub_243B69EE0, v6);

  return v7;
}

- (_TtC14CloudSharingUI25SharingOptionsViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SharingOptionsViewFactory();
  return [(SharingOptionsViewFactory *)&v3 init];
}

@end