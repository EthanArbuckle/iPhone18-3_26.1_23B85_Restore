@interface MAMutableFloatVectorWrapper
- (_TtC17KnowledgeGraphKit27MAMutableFloatVectorWrapper)init;
- (id)copyWithZone:(void *)a3;
- (void)addScalar:(float)a3;
- (void)addVector:(id)a3;
- (void)appendArray:(id)a3;
- (void)appendDoubles:(const double *)a3 count:(int64_t)a4;
- (void)appendFloat:(float)a3;
- (void)appendFloats:(const float *)a3 count:(int64_t)a4;
- (void)appendVector:(id)a3;
- (void)divideByScalar:(float)a3;
- (void)elementwiseMultiplyByWrapper:(id)a3;
- (void)setFloat:(float)a3 atIndex:(int64_t)a4;
- (void)subtractScalar:(float)a3;
- (void)subtractVector:(id)a3;
@end

@implementation MAMutableFloatVectorWrapper

- (_TtC17KnowledgeGraphKit27MAMutableFloatVectorWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MAFloatVectorWrapper *)&v3 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v4 = type metadata accessor for MAFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = v4;

  return [(MAFloatVectorWrapper *)&v7 init];
}

- (void)appendFloat:(float)a3
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v7 = self;

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
  *&v6[4 * v9 + 32] = a3;
  v10 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v6;
}

- (void)appendFloats:(const float *)a3 count:(int64_t)a4
{
  v7 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v8 = self;

  sub_25587DD74(a3, a4);
  v9 = *(&self->super.super.isa + v7);
  *(&self->super.super.isa + v7) = v10;
}

- (void)appendDoubles:(const double *)a3 count:(int64_t)a4
{
  v6 = self;
  MAMutableFloatVectorWrapper.append(doubles:count:)(a3, a4);
}

- (void)appendVector:(id)a3
{
  (*((*MEMORY[0x277D85000] & *a3) + 0x70))(&v9, self, a2);
  v4 = v9;
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v6 = self;

  sub_25587DF30(v4);
  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)appendArray:(id)a3
{
  v4 = sub_2559654C0();
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v6 = self;

  sub_25587DF30(v4);
  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)setFloat:(float)a3 atIndex:(int64_t)a4
{
  v7 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v9 = self;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = sub_2558803F4(v8);
  if (a4 < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v8 + 2) <= a4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v8[4 * a4 + 32] = a3;
  v10 = *(&self->super.super.isa + v7);
  *(&self->super.super.isa + v7) = v8;
}

- (void)subtractVector:(id)a3
{
  v4 = a3;
  v5 = self;
  MAMutableFloatVectorWrapper.subtract(_:)(v4);
}

- (void)addVector:(id)a3
{
  v4 = a3;
  v5 = self;
  MAMutableFloatVectorWrapper.add(_:)(v4);
}

- (void)subtractScalar:(float)a3
{
  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = -a3;
  v6 = self;
  swift_bridgeObjectRetain_n();
  sub_25587FD64(v8, &v8, v5);

  v7 = *(&self->super.super.isa + v4);
  *(&self->super.super.isa + v4) = v8;
}

- (void)addScalar:(float)a3
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v6 = self;
  swift_bridgeObjectRetain_n();
  sub_25587FD64(v8, &v8, a3);

  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)divideByScalar:(float)a3
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v6 = self;
  swift_bridgeObjectRetain_n();
  sub_25587FF4C(v8, &v8, a3);

  v7 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (void)elementwiseMultiplyByWrapper:(id)a3
{
  (*((*MEMORY[0x277D85000] & *a3) + 0x70))(&v11, self, a2);
  v5 = v11;
  v6 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v7 = a3;
  v8 = self;
  swift_bridgeObjectRetain_n();
  sub_25587FCB4(v10, v5, &v10, MEMORY[0x277CB87D0]);

  v9 = *(&self->super.super.isa + v6);
  *(&self->super.super.isa + v6) = v10;
}

@end