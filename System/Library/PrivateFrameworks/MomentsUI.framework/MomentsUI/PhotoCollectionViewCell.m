@interface PhotoCollectionViewCell
- (_TtC9MomentsUI23PhotoCollectionViewCell)initWithCoder:(id)a3;
@end

@implementation PhotoCollectionViewCell

- (_TtC9MomentsUI23PhotoCollectionViewCell)initWithCoder:(id)a3
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v3 = static MutablePhotoViewModel.empty;
  v4 = objc_allocWithZone(type metadata accessor for PhotoView());
  v5 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v6 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v7 = v3;
  *&v4[v5] = [v6 init];
  v8 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v9 = static PhotoView.Constants.accessibilityString;
  v10 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v11 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v12 = v7;
  *&v4[v10] = [v11 init];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 2;
  v34.receiver = v4;
  v34.super_class = type metadata accessor for AssetView();
  v15 = [(CollectionViewAssetCell *)&v34 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v16 = *((*MEMORY[0x277D85000] & v15->super.super.super.super.super.super.isa) + 0xE8);
  v17 = v15;
  v16();
  AssetView.setFallBackView()();
  [(PhotoCollectionViewCell *)v17 setIsAccessibilityElement:1];
  v18 = [(PhotoCollectionViewCell *)v17 accessibilityTraits];
  if ((v8 & ~v18) != 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  v20 = OBJC_IVAR____TtC9MomentsUI23PhotoCollectionViewCell_photoView;
  [(PhotoCollectionViewCell *)v17 setAccessibilityTraits:v19 | v18];
  v21 = MEMORY[0x21CE91FC0](v9, *(&v9 + 1));
  [(PhotoCollectionViewCell *)v17 setAccessibilityLabel:v21];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21658CA50;
  v23 = type metadata accessor for UITraitUserInterfaceStyle();
  v24 = MEMORY[0x277D74BF0];
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  v25 = v17;
  MEMORY[0x21CE92C30](v22, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [(PhotoCollectionViewCell *)v25 handleTraitChange];
  [(PhotoCollectionViewCell *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(PhotoCollectionViewCell *)v25 setClipsToBounds:1];
  v26 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v27 = *(&v25->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView);
  v28 = v25;
  [v27 setContentMode_];
  [*(&v25->super.super.super.super.super.super.isa + v26) setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v29 = *&v28[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v30 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v31 = [objc_opt_self() systemImageNamed_];

  [v29 setImage_];
  *(&self->super.super.super.super.super.super.isa + v20) = v15;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end