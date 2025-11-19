@interface CKDetailsControllerLocationHelper
+ (id)mapURLFor:(id)a3 in:(id)a4;
+ (int64_t)cellTypeForRow:(int64_t)a3 conversation:(id)a4 isFMFEnabled:(BOOL)a5 shouldShowFMFView:(BOOL)a6;
+ (int64_t)numberOfCellsInLocationSectionWithConversation:(id)a3 isFMFEnabled:(BOOL)a4 isSharingLocation:(BOOL)a5 shouldShowFMFView:(BOOL)a6;
- (_TtC7ChatKit33CKDetailsControllerLocationHelper)init;
@end

@implementation CKDetailsControllerLocationHelper

+ (int64_t)numberOfCellsInLocationSectionWithConversation:(id)a3 isFMFEnabled:(BOOL)a4 isSharingLocation:(BOOL)a5 shouldShowFMFView:(BOOL)a6
{
  v9 = a3;
  v10 = _s7ChatKit33CKDetailsControllerLocationHelperC015numberOfCellsInE7Section12conversation12isFMFEnabled0m7SharingE017shouldShowFMFViewSiSo14CKConversationC_S3btFZ_0(v9, a4, a5, a6);

  return v10;
}

+ (int64_t)cellTypeForRow:(int64_t)a3 conversation:(id)a4 isFMFEnabled:(BOOL)a5 shouldShowFMFView:(BOOL)a6
{
  v9 = a4;
  v10 = _s7ChatKit33CKDetailsControllerLocationHelperC8cellType6forRow12conversation12isFMFEnabled17shouldShowFMFViewAA021CKLocationSectionCellH0OSi_So14CKConversationCS2btFZ_0(a3, v9, a5, a6);

  return v10;
}

+ (id)mapURLFor:(id)a3 in:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = a3;
  v10 = a4;
  static CKDetailsControllerLocationHelper.mapURL(for:in:)(v9, v10, v8);

  v11 = sub_190D515F0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_190D51570();
    (*(v12 + 8))(v8, v11);
    v14 = v15;
  }

  return v14;
}

- (_TtC7ChatKit33CKDetailsControllerLocationHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKDetailsControllerLocationHelper();
  return [(CKDetailsControllerLocationHelper *)&v3 init];
}

@end