@interface CHSEquivalentBundleIdentifierResolver
+ (id)defaultResolver;
- (CHSEquivalentBundleIdentifierResolver)init;
- (CHSEquivalentBundleIdentifierResolver)initWithCategoriesPrimitives:(id)a3;
- (id)equivalentBundleIdentifiersForBundleIdentifier:(id)a3;
@end

@implementation CHSEquivalentBundleIdentifierResolver

+ (id)defaultResolver
{
  type metadata accessor for ConcreteCategoriesPrimitives();
  v2 = [objc_allocWithZone(CHSEquivalentBundleIdentifierResolver) initWithCategoriesPrimitives_];

  return v2;
}

- (CHSEquivalentBundleIdentifierResolver)initWithCategoriesPrimitives:(id)a3
{
  swift_unknownObjectRetain();
  v5 = [(CHSEquivalentBundleIdentifierResolver *)self init];
  v6 = *(&v5->super.isa + OBJC_IVAR___CHSEquivalentBundleIdentifierResolver_categoriesPrimitives);
  *(&v5->super.isa + OBJC_IVAR___CHSEquivalentBundleIdentifierResolver_categoriesPrimitives) = a3;
  swift_unknownObjectRelease();
  return v5;
}

- (CHSEquivalentBundleIdentifierResolver)init
{
  type metadata accessor for ConcreteCategoriesPrimitives();
  *(&self->super.isa + OBJC_IVAR___CHSEquivalentBundleIdentifierResolver_categoriesPrimitives) = swift_allocObject();
  v4.receiver = self;
  v4.super_class = CHSEquivalentBundleIdentifierResolver;
  return [(CHSEquivalentBundleIdentifierResolver *)&v4 init];
}

- (id)equivalentBundleIdentifiersForBundleIdentifier:(id)a3
{
  v4 = sub_195FA08B8();
  v6 = v5;
  v7 = self;
  sub_195EC1C90(v4, v6);

  v8 = sub_195FA0BE8();

  return v8;
}

@end