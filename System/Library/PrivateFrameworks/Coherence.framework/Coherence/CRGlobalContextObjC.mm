@interface CRGlobalContextObjC
+ (id)newObjCReplicaFor:(id)for;
+ (id)objCRenames;
+ (id)renameObjCSequence:(id)sequence after:(int64_t)after in:(id)in;
+ (int64_t)renameGeneration;
+ (void)releaseObjCSequence:(id)sequence;
+ (void)retainObjCSequence:(id)sequence;
+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica;
+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica copyingFrom:(id)from;
- (_TtC9Coherence19CRGlobalContextObjC)init;
@end

@implementation CRGlobalContextObjC

+ (id)newObjCReplicaFor:(id)for
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v8 = sub_1ADDED2C8(v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

+ (id)objCRenames
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v3 = v12;
  v4 = v13;
  v5 = type metadata accessor for ObjCRenames();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames];
  *v7 = v11;
  v7[8] = v3;
  *(v7 + 2) = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

+ (void)releaseObjCSequence:(id)sequence
{
  sequenceCopy = sequence;
  sub_1ADE42A7C(sequenceCopy, sub_1ADF8DC64);
}

+ (int64_t)renameGeneration
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  return v4;
}

+ (id)renameObjCSequence:(id)sequence after:(int64_t)after in:(id)in
{
  sequenceCopy = sequence;
  inCopy = in;
  v9 = sub_1ADE419F0(sequenceCopy, after);

  return v9;
}

+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica
{
  initialCopy = initial;
  currentCopy = current;
  replicaCopy = replica;
  sub_1ADE41BE4(initialCopy, currentCopy, replicaCopy);
}

+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica copyingFrom:(id)from
{
  initialCopy = initial;
  currentCopy = current;
  replicaCopy = replica;
  fromCopy = from;
  sub_1ADE422E4(initialCopy, currentCopy, replicaCopy, fromCopy);
}

+ (void)retainObjCSequence:(id)sequence
{
  sequenceCopy = sequence;
  sub_1ADE42A7C(sequenceCopy, sub_1ADF8D99C);
}

- (_TtC9Coherence19CRGlobalContextObjC)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CRGlobalContextObjC *)&v3 init];
}

@end