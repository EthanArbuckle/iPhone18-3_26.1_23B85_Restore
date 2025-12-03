@interface GDVUGallery
- (BOOL)mutateAndReturnError:(id *)error handler:(id)handler;
- (BOOL)ready;
- (BOOL)updateAndReturnError:(id *)error progressHandler:(id)handler;
- (NSDictionary)observationsCountPerEntity;
- (NSSet)unassignedObservations;
- (id)clustersFor:(id)for;
- (id)keyObservationsFor:(int64_t)for limit:(int64_t)limit offset:(int64_t)offset;
- (int64_t)animalEntitiesCount;
- (int64_t)animalObservationsCount;
- (int64_t)animalprintRevision;
- (int64_t)entityCount;
- (int64_t)faceprintRevision;
- (int64_t)observationsCount;
- (int64_t)personEntitiesCount;
- (int64_t)personObservationsCount;
- (int64_t)primaryCount;
- (int64_t)secondaryCount;
- (int64_t)tagsCount;
- (int64_t)torsoprintRevision;
- (int64_t)version;
- (void)reportMetrics;
- (void)updateInferredDeviceOwner;
- (void)updateSocialGroupsWithSocialGroups:(id)groups;
@end

@implementation GDVUGallery

- (int64_t)version
{
  selfCopy = self;
  v3 = GDVUGallery.version.getter();

  return v3;
}

- (BOOL)ready
{
  selfCopy = self;
  v3 = GDVUGallery.ready.getter();

  return v3 & 1;
}

- (int64_t)faceprintRevision
{
  selfCopy = self;
  v3 = GDVUGallery.faceprintRevision.getter();

  return v3;
}

- (int64_t)torsoprintRevision
{
  selfCopy = self;
  v3 = GDVUGallery.torsoprintRevision.getter();

  return v3;
}

- (int64_t)animalprintRevision
{
  selfCopy = self;
  v3 = GDVUGallery.animalprintRevision.getter();

  return v3;
}

- (int64_t)observationsCount
{
  selfCopy = self;
  v3 = GDVUGallery.observationsCount.getter();

  return v3;
}

- (int64_t)primaryCount
{
  selfCopy = self;
  v3 = GDVUGallery.primaryCount.getter();

  return v3;
}

- (int64_t)secondaryCount
{
  selfCopy = self;
  v3 = GDVUGallery.secondaryCount.getter();

  return v3;
}

- (int64_t)personObservationsCount
{
  selfCopy = self;
  v3 = GDVUGallery.personObservationsCount.getter();

  return v3;
}

- (int64_t)animalObservationsCount
{
  selfCopy = self;
  v3 = GDVUGallery.animalObservationsCount.getter();

  return v3;
}

- (int64_t)tagsCount
{
  selfCopy = self;
  v3 = GDVUGallery.tagsCount.getter();

  return v3;
}

- (int64_t)entityCount
{
  selfCopy = self;
  v3 = GDVUGallery.entityCount.getter();

  return v3;
}

- (int64_t)personEntitiesCount
{
  selfCopy = self;
  v3 = GDVUGallery.personEntitiesCount.getter();

  return v3;
}

- (int64_t)animalEntitiesCount
{
  selfCopy = self;
  v3 = GDVUGallery.animalEntitiesCount.getter();

  return v3;
}

- (NSDictionary)observationsCountPerEntity
{
  selfCopy = self;
  GDVUGallery.observationsCountPerEntity.getter();

  sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  sub_1ABED255C();
  v3 = sub_1ABF23954();

  return v3;
}

- (NSSet)unassignedObservations
{
  selfCopy = self;
  GDVUGallery.unassignedObservations.getter();

  v3 = sub_1ABF24384();

  return v3;
}

- (BOOL)mutateAndReturnError:(id *)error handler:(id)handler
{
  v7 = _Block_copy(handler);
  selfCopy = self;
  GDVUGallery.mutate(handler:)();

  _Block_release(v7);
  return 1;
}

- (id)clustersFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  GDVUGallery.clusters(for:)();

  sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
  v6 = sub_1ABF23954();

  return v6;
}

- (void)updateSocialGroupsWithSocialGroups:(id)groups
{
  type metadata accessor for GDVUSocialGroup(self);
  v4 = sub_1ABF240D4();
  selfCopy = self;
  GDVUGallery.updateSocialGroups(with:)(v4);
}

- (BOOL)updateAndReturnError:(id *)error progressHandler:(id)handler
{
  v5 = _Block_copy(handler);
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_1ABED252C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  GDVUGallery.update(progressHandler:)(v8, v7);

  sub_1ABAC9398(v8);
  return 1;
}

- (void)updateInferredDeviceOwner
{
  selfCopy = self;
  GDVUGallery.updateInferredDeviceOwner()();
}

- (id)keyObservationsFor:(int64_t)for limit:(int64_t)limit offset:(int64_t)offset
{
  selfCopy = self;
  GDVUGallery.keyObservations(for:limit:offset:)(for);

  sub_1ABAD219C(&qword_1EB4D11B0, &qword_1ABF33338);
  v7 = sub_1ABF240C4();

  return v7;
}

- (void)reportMetrics
{
  selfCopy = self;
  GDVUGallery.reportMetrics()();
}

@end