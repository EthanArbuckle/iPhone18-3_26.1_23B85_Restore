@interface MAFloatMatrixWrapper
+ (id)onesWithRows:(int64_t)a3 columns:(int64_t)a4;
+ (id)wrapperWithData:(id)a3 rows:(int64_t)a4 columns:(int64_t)a5;
+ (id)zerosWithRows:(int64_t)a3 columns:(int64_t)a4;
- (BOOL)isApproximatelyEqualTo:(id)a3;
- (BOOL)isApproximatelyEqualTo:(id)a3 epsilon:(float)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC17KnowledgeGraphKit20MAFloatMatrixWrapper)init;
- (_TtC17KnowledgeGraphKit20MAFloatMatrixWrapper)initWithFloats:(const float *)a3 rows:(int64_t)a4 columns:(int64_t)a5;
- (float)floatAtRow:(int64_t)a3 column:(int64_t)a4;
- (float)mean;
- (float)sum;
- (float)sumOfSquares;
- (id)array;
- (id)data;
- (id)matrixByAddingScalar:(float)a3;
- (id)matrixByAppendingColumnVector:(id)a3;
- (id)matrixByAppendingColumnsOfMatrix:(id)a3;
- (id)matrixBySubtractingMatrix:(id)a3;
- (id)matrixBySubtractingScalar:(float)a3;
- (id)mutableCopyWithZone:(void *)a3;
- (id)row:(int64_t)a3;
- (int64_t)columns;
- (int64_t)count;
- (int64_t)hash;
- (int64_t)rows;
@end

@implementation MAFloatMatrixWrapper

- (_TtC17KnowledgeGraphKit20MAFloatMatrixWrapper)init
{
  sub_2558B5F3C(MEMORY[0x277D84F90], &v7);
  v3 = v8;
  v4 = self + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  *v4 = v7;
  *(v4 + 8) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return [(MAFloatMatrixWrapper *)&v6 init];
}

- (_TtC17KnowledgeGraphKit20MAFloatMatrixWrapper)initWithFloats:(const float *)a3 rows:(int64_t)a4 columns:(int64_t)a5
{
  v5 = a4 * a5;
  if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
  {
    swift_getObjectType();
    v9 = sub_25589A550(a3, v5, a4, a5);
    swift_deallocPartialClassInstance();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return self;
}

+ (id)wrapperWithData:(id)a3 rows:(int64_t)a4 columns:(int64_t)a5
{
  v7 = a3;
  v8 = sub_255965200();
  v10 = v9;

  v11 = _s17KnowledgeGraphKit20MAFloatMatrixWrapperC8fromData4data4rows7columnsAC10Foundation0H0V_S2itFZ_0(v8, v10, a4, a5);
  sub_255880874(v8, v10);

  return v11;
}

+ (id)zerosWithRows:(int64_t)a3 columns:(int64_t)a4
{
  swift_getObjCClassMetadata();
  v6 = static MAFloatMatrixWrapper.zeros(rows:columns:)(a3, a4);

  return v6;
}

+ (id)onesWithRows:(int64_t)a3 columns:(int64_t)a4
{
  swift_getObjCClassMetadata();
  v6 = static MAFloatMatrixWrapper.ones(rows:columns:)(a3, a4);

  return v6;
}

- (id)mutableCopyWithZone:(void *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v4 = *&self->_floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  v5 = *&self->_floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8];
  v6 = objc_allocWithZone(type metadata accessor for MAMutableFloatMatrixWrapper());
  v7 = &v6[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v7 = v3;
  *(v7 + 1) = v4;
  *(v7 + 2) = v5;
  v9.receiver = v6;
  v9.super_class = type metadata accessor for MAFloatMatrixWrapper();

  return [(MAFloatMatrixWrapper *)&v9 init];
}

- (float)floatAtRow:(int64_t)a3 column:(int64_t)a4
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v11);
  if (v11[1] < a3 || v12 <= a4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a3 * v12;
  if ((a3 * v12) >> 64 != (a3 * v12) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < *(v11[0] + 16))
  {
    v10 = *(v11[0] + 4 * v9 + 32);

    return v10;
  }

LABEL_14:
  __break(1u);
  return result;
}

- (id)row:(int64_t)a3
{
  v4 = self;
  v5 = MAFloatMatrixWrapper.vector(_:)(a3);

  return v5;
}

- (int64_t)count
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v4);
  v2 = *(v4[0] + 16);

  return v2;
}

- (int64_t)rows
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v4);
  v2 = v4[1];

  return v2;
}

- (int64_t)columns
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v4);
  v2 = v4[2];

  return v2;
}

- (float)sum
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB8788];

  return sub_25589B604(self, a2, v3);
}

- (float)sumOfSquares
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB8798];

  return sub_25589B604(self, a2, v3);
}

- (float)mean
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB8768];

  return sub_25589B604(self, a2, v3);
}

- (id)array
{
  v2 = self;
  MAFloatMatrixWrapper.array()();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7D6720, &qword_25596F730);
  v3 = sub_2559654B0();

  return v3;
}

- (id)data
{
  v2 = self;
  v3 = MAFloatMatrixWrapper.data()();
  v5 = v4;

  v6 = sub_2559651F0();
  sub_255880874(v3, v5);

  return v6;
}

- (NSString)description
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v9);
  v3 = v9[0];
  v4 = v9[1];
  v5 = v9[2];
  v6 = self;
  sub_25589BCF8(v3, v4, v5);

  v7 = sub_2559653D0();

  return v7;
}

- (id)matrixBySubtractingMatrix:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MAFloatMatrixWrapper.matrixBySubtractingMatrix(_:)(v4);

  return v6;
}

- (id)matrixBySubtractingScalar:(float)a3
{
  v3 = self;
  v4 = MAFloatMatrixWrapper.matrixBySubtractingScalar(_:)();

  return v4;
}

- (id)matrixByAddingScalar:(float)a3
{
  v3 = self;
  v4 = MAFloatMatrixWrapper.matrixByAddingScalar(_:)();

  return v4;
}

- (id)matrixByAppendingColumnVector:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MAFloatMatrixWrapper.appendingColumn(_:)(v4);

  return v6;
}

- (id)matrixByAppendingColumnsOfMatrix:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MAFloatMatrixWrapper.appendingColumns(of:)(v4);

  return v6;
}

- (BOOL)isApproximatelyEqualTo:(id)a3
{
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v10);
  v6 = v10;
  (*((*v4 & *a3) + 0x70))(v9, v5);
  v7 = sub_25587F4FC(v9[0], 0.00000011921, 0.00000011921, v9[1], v9[2], v6);

  return v7 & 1;
}

- (BOOL)isApproximatelyEqualTo:(id)a3 epsilon:(float)a4
{
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(&v12);
  v8 = v12;
  (*((*v6 & *a3) + 0x70))(v11, v7);
  v9 = sub_25587F4FC(v11[0], 0.0, a4, v11[1], v11[2], v8);

  return v9 & 1;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2559658F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MAFloatMatrixWrapper.isEqual(_:)(v8);

  sub_255880798(v8);
  return v6;
}

- (int64_t)hash
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x70))(v10);
  v3 = v10[0];
  v4 = v10[1];
  v5 = v10[2];
  sub_255965D50();
  sub_25587FA18(&v9, v3);
  v6 = self;

  MEMORY[0x259C43B00](v4);
  MEMORY[0x259C43B00](v5);
  v7 = sub_255965D90();

  return v7;
}

@end