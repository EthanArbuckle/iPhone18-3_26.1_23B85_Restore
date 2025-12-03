@interface MAMutableFloatVectorWrapper
- (_TtC17KnowledgeGraphKit27MAMutableFloatVectorWrapper)init;
- (id)copyWithZone:(void *)zone;
- (void)addScalar:(float)scalar;
- (void)addVector:(id)vector;
- (void)appendArray:(id)array;
- (void)appendDoubles:(const double *)doubles count:(int64_t)count;
- (void)appendFloat:(float)float;
- (void)appendFloats:(const float *)floats count:(int64_t)count;
- (void)appendVector:(id)vector;
- (void)divideByScalar:(float)scalar;
- (void)elementwiseMultiplyByWrapper:(id)wrapper;
- (void)setFloat:(float)float atIndex:(int64_t)index;
- (void)subtractScalar:(float)scalar;
- (void)subtractVector:(id)vector;
@end

@implementation MAMutableFloatVectorWrapper

- (_TtC17KnowledgeGraphKit27MAMutableFloatVectorWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MAFloatVectorWrapper *)&v3 init];
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v4 = type metadata accessor for MAFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = v4;

  return [(MAFloatVectorWrapper *)&v7 init];
}

- (void)appendFloat:(float)float
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  selfCopy = self;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2558913D4(0, *(v6 + 2) + 1, 1, v6);
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2558913D4((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  *&v6[4 * v9 + 32] = float;
  v10 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v6;
}

- (void)appendFloats:(const float *)floats count:(int64_t)count
{
  v7 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  selfCopy = self;

  sub_25587DD74(floats, count);
  v9 = *(&self->super.super.isa + v7);
  *(&self->super.super.isa + v7) = v10;
}

- (void)appendDoubles:(const double *)doubles count:(int64_t)count
{
  selfCopy = self;
  MAMutableFloatVectorWrapper.append(doubles:count:)(doubles, count);
}

- (void)appendVector:(id)vector
{
  (*((*MEMORY[0x277D85000] & *vector) + 0x70))(&v9, self, a2);
  v4 = v9;
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  selfCopy = self;

  sub_25587DF30(v4);
  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)appendArray:(id)array
{
  v4 = sub_2559654C0();
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  selfCopy = self;

  sub_25587DF30(v4);
  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)setFloat:(float)float atIndex:(int64_t)index
{
  v7 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  selfCopy = self;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((index & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = sub_2558803F4(v8);
  if (index < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v8 + 2) <= index)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v8[4 * index + 32] = float;
  v10 = *(&self->super.super.isa + v7);
  *(&self->super.super.isa + v7) = v8;
}

- (void)subtractVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  MAMutableFloatVectorWrapper.subtract(_:)(vectorCopy);
}

- (void)addVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  MAMutableFloatVectorWrapper.add(_:)(vectorCopy);
}

- (void)subtractScalar:(float)scalar
{
  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = -scalar;
  selfCopy = self;
  swift_bridgeObjectRetain_n();
  sub_25587FD64(v8, &v8, v5);

  v7 = *(&self->super.super.isa + v4);
  *(&self->super.super.isa + v4) = v8;
}

- (void)addScalar:(float)scalar
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  selfCopy = self;
  swift_bridgeObjectRetain_n();
  sub_25587FD64(v8, &v8, scalar);

  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)divideByScalar:(float)scalar
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  selfCopy = self;
  swift_bridgeObjectRetain_n();
  sub_25587FF4C(v8, &v8, scalar);

  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)elementwiseMultiplyByWrapper:(id)wrapper
{
  (*((*MEMORY[0x277D85000] & *wrapper) + 0x70))(&v11, self, a2);
  v5 = v11;
  v6 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  wrapperCopy = wrapper;
  selfCopy = self;
  swift_bridgeObjectRetain_n();
  sub_25587FCB4(v10, v5, &v10, MEMORY[0x277CB87D0]);

  v9 = *(&self->super.super.isa + v6);
  *(&self->super.super.isa + v6) = v10;
}

@end