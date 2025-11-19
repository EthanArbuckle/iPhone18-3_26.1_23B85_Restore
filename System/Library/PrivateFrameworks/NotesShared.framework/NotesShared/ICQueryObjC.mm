@interface ICQueryObjC
+ (id)objc_queryForCallNotesAllowsRecentlyDeleted:(BOOL)a3;
+ (id)objc_queryForMathNotesAllowsRecentlyDeleted:(BOOL)a3;
+ (id)objc_queryForNonDeletedNotes;
+ (id)objc_queryForNotesMatchingFilterSelection:(id)a3;
+ (id)objc_queryForNotesMatchingTagSelection:(id)a3;
+ (id)objc_queryForPinnedNotes:(BOOL)a3 allowsRecentlyDeleted:(BOOL)a4;
+ (id)objc_queryForRecentlyDeletedMathNotes;
+ (id)objc_queryForSharedNotes:(BOOL)a3 allowsRecentlyDeleted:(BOOL)a4;
+ (id)objc_queryForSystemPaperNotesAllowsRecentlyDeleted:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (ICQueryObjC)init;
- (NSPredicate)predicate;
- (NSString)debugDescription;
- (NSString)entityName;
- (id)filterSelectionWithManagedObjectContext:(id)a3 account:(id)a4;
- (id)removingTagIdentifier:(id)a3;
- (id)replacingTagIdentifier:(id)a3 withNewTagIdentifier:(id)a4;
- (id)tagSelectionWithManagedObjectContext:(id)a3;
@end

@implementation ICQueryObjC

+ (id)objc_queryForMathNotesAllowsRecentlyDeleted:(BOOL)a3
{
  v3 = _s11NotesShared7ICQueryC016makeQueryForMathA021allowsRecentlyDeletedACSb_tFZ_0(a3);

  return v3;
}

- (NSPredicate)predicate
{
  swift_beginAccess();
  v2 = ICQueryType.predicate.getter();

  return v2;
}

+ (id)objc_queryForCallNotesAllowsRecentlyDeleted:(BOOL)a3
{
  v3 = _s11NotesShared7ICQueryC016makeQueryForCallA021allowsRecentlyDeletedACSb_tFZ_0(a3);

  return v3;
}

- (id)filterSelectionWithManagedObjectContext:(id)a3 account:(id)a4
{
  swift_beginAccess();

  v7 = a3;
  v8 = a4;
  v9 = self;
  ICQueryType.filterSelection(managedObjectContext:accountObjectID:)(v10, v7, v8);
  v12 = v11;

  return v12;
}

- (id)tagSelectionWithManagedObjectContext:(id)a3
{
  swift_beginAccess();

  v5 = a3;
  v6 = self;
  v12.value.super.isa = a3;
  ICQueryType.tagSelection(managedObjectContext:)(v7, v12);
  v9 = v8;

  return v9;
}

- (NSString)entityName
{
  v2 = sub_2150A4A90();

  return v2;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_214FF39E4();

  v3 = sub_2150A4A90();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_214FF3B2C(v8);

  sub_214F302D4(v8, &qword_27CA42178);
  return v6 & 1;
}

- (ICQueryObjC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)objc_queryForNotesMatchingFilterSelection:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ICQuery.makeQueryForNotesMatching(_:)(v4);

  return v5;
}

+ (id)objc_queryForNotesMatchingTagSelection:(id)a3
{
  v3 = a3;
  v4 = _s11NotesShared7ICQueryC012makeQueryForA8MatchingyACSo14ICTagSelectionCFZ_0(v3);

  return v4;
}

+ (id)objc_queryForSystemPaperNotesAllowsRecentlyDeleted:(BOOL)a3
{
  v3 = _s11NotesShared7ICQueryC023makeQueryForSystemPaperA021allowsRecentlyDeletedACSb_tFZ_0(a3);

  return v3;
}

+ (id)objc_queryForRecentlyDeletedMathNotes
{
  v2 = _s11NotesShared7ICQueryC031makeQueryForRecentlyDeletedMathA0ACyFZ_0();

  return v2;
}

+ (id)objc_queryForNonDeletedNotes
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = v2 | 0x5000000000000000;
  v4 = type metadata accessor for ICQuery();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___ICQueryObjC_type] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (id)objc_queryForPinnedNotes:(BOOL)a3 allowsRecentlyDeleted:(BOOL)a4
{
  v4 = _s11NotesShared7ICQueryC018makeQueryForPinnedA0_21allowsRecentlyDeletedACSb_SbtFZ_0(a3, a4);

  return v4;
}

+ (id)objc_queryForSharedNotes:(BOOL)a3 allowsRecentlyDeleted:(BOOL)a4
{
  ForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0 = _s11NotesShared7ICQueryC012makeQueryForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0(a3, a4);

  return ForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0;
}

- (id)replacingTagIdentifier:(id)a3 withNewTagIdentifier:(id)a4
{
  v5 = sub_2150A4AD0();
  v7 = v6;
  v8 = sub_2150A4AD0();
  v10 = v9;
  v11 = self;
  v12 = ICQuery.replacing(tagIdentifier:withNewTagIdentifier:)(v5, v7, v8, v10);

  return v12;
}

- (id)removingTagIdentifier:(id)a3
{
  v4 = sub_2150A4AD0();
  v6 = v5;
  v7 = self;
  v8 = ICQuery.removing(tagIdentifier:)(v4, v6);

  return v8;
}

@end