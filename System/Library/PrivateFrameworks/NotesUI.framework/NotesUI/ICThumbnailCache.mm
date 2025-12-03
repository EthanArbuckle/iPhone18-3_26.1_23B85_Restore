@interface ICThumbnailCache
+ (ICThumbnailCache)shared;
- (ICThumbnailCache)init;
- (id)creationDateFor:(id)for;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)invalidateForObjectIdentifiers:(id)identifiers;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation ICThumbnailCache

+ (ICThumbnailCache)shared
{
  if (qword_1EDE33398 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE333A0;

  return v3;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  sub_1D418C3D4(subscriptCopy);
  v7 = v6;

  return v7;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  selfCopy = self;
  ThumbnailCache.subscript.setter(object, subscriptCopy);
}

- (id)creationDateFor:(id)for
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  forCopy = for;
  selfCopy = self;
  ThumbnailCache.creationDate(for:)(forCopy, v7);

  v10 = sub_1D4417434();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1D44173A4();
    (*(v11 + 8))(v7, v10);
    v13 = v14;
  }

  return v13;
}

- (void)invalidateForObjectIdentifiers:(id)identifiers
{
  v4 = sub_1D441A064();
  selfCopy = self;
  sub_1D437C4D0(v4);
}

- (ICThumbnailCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end