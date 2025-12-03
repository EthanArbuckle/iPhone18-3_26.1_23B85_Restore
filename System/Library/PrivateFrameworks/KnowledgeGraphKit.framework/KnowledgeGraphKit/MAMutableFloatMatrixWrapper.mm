@interface MAMutableFloatMatrixWrapper
- (_TtC17KnowledgeGraphKit27MAMutableFloatMatrixWrapper)init;
- (id)copyWithZone:(void *)zone;
- (void)addScalar:(float)scalar;
- (void)appendRow:(id)row;
- (void)setFloat:(float)float atRow:(int64_t)row column:(int64_t)column;
- (void)subtract:(id)subtract;
- (void)subtractScalar:(float)scalar;
@end

@implementation MAMutableFloatMatrixWrapper

- (_TtC17KnowledgeGraphKit27MAMutableFloatMatrixWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MAFloatMatrixWrapper *)&v3 init];
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v4 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  v5 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8];
  v6 = type metadata accessor for MAFloatMatrixWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  return [(MAFloatMatrixWrapper *)&v10 init];
}

- (void)setFloat:(float)float atRow:(int64_t)row column:(int64_t)column
{
  selfCopy = self;
  MAMutableFloatMatrixWrapper.setFloat(_:at:column:)(float, row, column);
}

- (void)subtract:(id)subtract
{
  subtractCopy = subtract;
  selfCopy = self;
  MAMutableFloatMatrixWrapper.subtract(_:)(subtractCopy);
}

- (void)subtractScalar:(float)scalar
{
  v3 = self + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v4 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  v5 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8];
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  *&v10 = v4;
  *(&v10 + 1) = v5;
  v6 = -scalar;
  selfCopy = self;
  swift_bridgeObjectRetain_n();
  sub_25587FE30(v9, v6, v4, v5, &v9);

  v8 = *v3;
  *v3 = v9;
  *(v3 + 8) = v10;
}

- (void)addScalar:(float)scalar
{
  v4 = self + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v5 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  v6 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8];
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  *&v10 = v5;
  *(&v10 + 1) = v6;
  selfCopy = self;
  swift_bridgeObjectRetain_n();
  sub_25587FE30(v9, scalar, v5, v6, &v9);

  v8 = *v4;
  *v4 = v9;
  *(v4 + 8) = v10;
}

- (void)appendRow:(id)row
{
  (*((*MEMORY[0x277D85000] & *row) + 0x70))(&v12, self, a2);
  v5 = v12;
  v6 = self + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v11 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  rowCopy = row;
  selfCopy = self;

  sub_25589D300(v5);

  v9 = *v6;
  *v6 = v10;
  *(v6 + 8) = v11;
}

@end