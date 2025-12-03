@interface MAFloatVectorWrapper
+ (id)onesOfCount:(int64_t)count;
+ (id)repeatingFloat:(float)float count:(int64_t)count;
+ (id)zerosOfCount:(int64_t)count;
- (BOOL)isApproximatelyEqualTo:(id)to;
- (BOOL)isApproximatelyEqualTo:(id)to epsilon:(float)epsilon;
- (BOOL)isEqual:(id)equal;
- (_TtC17KnowledgeGraphKit20MAFloatVectorWrapper)init;
- (float)dotProductWithWrapper:(id)wrapper;
- (float)floatAtIndex:(int64_t)index;
- (float)mean;
- (float)standardDeviation;
- (float)sum;
- (float)sumOfSquares;
- (id)array;
- (id)data;
- (id)mutableCopyWithZone:(void *)zone;
- (id)naturalLogarithm;
- (id)naturalLogarithmIfPositive;
- (id)sliceFromStart:(int64_t)start toEnd:(int64_t)end;
- (id)vectorByAddingScalar:(float)scalar;
- (id)vectorByAddingVector:(id)vector;
- (id)vectorByDividingByScalar:(float)scalar;
- (id)vectorByElementwiseMultiplyingByWrapper:(id)wrapper;
- (id)vectorByElementwiseRaisingToExponent:(float)exponent;
- (id)vectorByMultiplyingByScalar:(float)scalar;
- (id)vectorBySubtractingScalar:(float)scalar;
- (id)vectorBySubtractingVector:(id)vector;
- (int64_t)count;
- (int64_t)hash;
@end

@implementation MAFloatVectorWrapper

- (_TtC17KnowledgeGraphKit20MAFloatVectorWrapper)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for MAFloatVectorWrapper();
  return [(MAFloatVectorWrapper *)&v3 init];
}

+ (id)zerosOfCount:(int64_t)count
{
  swift_getObjCClassMetadata();
  v4 = static MAFloatVectorWrapper.zeros(count:)(count);

  return v4;
}

+ (id)onesOfCount:(int64_t)count
{
  swift_getObjCClassMetadata();
  v4 = static MAFloatVectorWrapper.ones(count:)(count);

  return v4;
}

+ (id)repeatingFloat:(float)float count:(int64_t)count
{
  swift_getObjCClassMetadata();
  *v6.i32 = float;
  v7 = static MAFloatVectorWrapper.repeating(float:count:)(count, v6);

  return v7;
}

- (id)mutableCopyWithZone:(void *)zone
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v4 = objc_allocWithZone(type metadata accessor for MAMutableFloatVectorWrapper());
  *&v4[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for MAFloatVectorWrapper();

  return [(MAFloatVectorWrapper *)&v6 init];
}

- (float)floatAtIndex:(int64_t)index
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v6);
  if (index < 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > index)
  {
    v5 = *(v6 + 4 * index + 32);

    return v5;
  }

  __break(1u);
  return result;
}

- (id)vectorBySubtractingVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  v6 = MAFloatVectorWrapper.vectorBySubtractingVector(_:)(vectorCopy);

  return v6;
}

- (id)vectorByAddingVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  v6 = MAFloatVectorWrapper.vectorByAddingVector(_:)(vectorCopy);

  return v6;
}

- (id)vectorBySubtractingScalar:(float)scalar
{
  selfCopy = self;
  v4 = MAFloatVectorWrapper.vectorBySubtractingScalar(_:)();

  return v4;
}

- (id)vectorByAddingScalar:(float)scalar
{
  selfCopy = self;
  v4 = MAFloatVectorWrapper.vectorByAddingScalar(_:)();

  return v4;
}

- (id)vectorByMultiplyingByScalar:(float)scalar
{
  selfCopy = self;
  v4 = MAFloatVectorWrapper.vectorByMultiplyingByScalar(_:)();

  return v4;
}

- (id)vectorByDividingByScalar:(float)scalar
{
  selfCopy = self;
  v4 = MAFloatVectorWrapper.vectorByDividingByScalar(_:)();

  return v4;
}

- (id)vectorByElementwiseMultiplyingByWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  v6 = MAFloatVectorWrapper.vectorByElementwiseMultiplyingByWrapper(_:)(wrapperCopy);

  return v6;
}

- (id)vectorByElementwiseRaisingToExponent:(float)exponent
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v12);
  selfCopy = self;
  sub_25587F068(&v12, exponent);
  v6 = v12;
  v7 = type metadata accessor for MAFloatVectorWrapper();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(MAFloatVectorWrapper *)&v11 init];

  return v9;
}

- (float)dotProductWithWrapper:(id)wrapper
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v17);
  v7 = v17[0];
  (*((*v5 & *wrapper) + 0x70))(&v16, v6);
  v8 = v16;
  v9 = *(v7 + 16);
  if (v9 != *(v16 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  wrapperCopy = wrapper;
  selfCopy = self;
  vDSP_dotpr((v7 + 32), 1, (v8 + 32), 1, &__C, v9);
  v12 = __C;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)sliceFromStart:(int64_t)start toEnd:(int64_t)end
{
  selfCopy = self;
  v7 = MAFloatVectorWrapper.slice(from:to:)(start, end);

  return v7;
}

- (int64_t)count
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v4);
  v2 = *(v4 + 16);

  return v2;
}

- (float)sum
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB8788];

  return sub_25587CF40(self, a2, v3);
}

- (float)sumOfSquares
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB8798];

  return sub_25587CF40(self, a2, v3);
}

- (float)mean
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB8768];

  return sub_25587CF40(self, a2, v3);
}

- (float)standardDeviation
{
  v10[1] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v10);
  v3 = v10[0];
  __StandardDeviation = 0;
  v4 = *(v10[0] + 16);
  selfCopy = self;
  vDSP_normalize((v3 + 32), 1, 0, 1, &__StandardDeviation + 1, &__StandardDeviation, v4);
  v6 = *&__StandardDeviation;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)array
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v4);
  v2 = sub_2559654B0();

  return v2;
}

- (id)data
{
  selfCopy = self;
  v3 = MAFloatVectorWrapper.data()();
  v5 = v4;

  v6 = sub_2559651F0();
  sub_255880874(v3, v5);

  return v6;
}

- (id)naturalLogarithm
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v11);
  v3 = v11;
  selfCopy = self;
  sub_25587D6E8(v3, &v12);

  v5 = v12;
  v6 = type metadata accessor for MAFloatVectorWrapper();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = [(MAFloatVectorWrapper *)&v10 init];

  return v8;
}

- (id)naturalLogarithmIfPositive
{
  selfCopy = self;
  v3 = MAFloatVectorWrapper.naturalLogarithmIfPositive()();

  return v3;
}

- (BOOL)isApproximatelyEqualTo:(id)to
{
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v10);
  v6 = v10;
  (*((*v4 & *to) + 0x70))(&v9, v5);
  v7 = sub_25587F448(v9, v6, 0.00000011921, 0.00000011921);

  return v7 & 1;
}

- (BOOL)isApproximatelyEqualTo:(id)to epsilon:(float)epsilon
{
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v12);
  v8 = v12;
  (*((*v6 & *to) + 0x70))(&v11, v7);
  v9 = sub_25587F448(v11, v8, 0.0, epsilon);

  return v9 & 1;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2559658F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MAFloatVectorWrapper.isEqual(_:)(v8);

  sub_255880798(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v8);
  v3 = v8;
  sub_255965D50();
  sub_25587FA18(&v7, v3);
  selfCopy = self;

  v5 = sub_255965D90();

  return v5;
}

@end