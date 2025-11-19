@interface MAMutableFloatMatrixWrapper
- (_TtC17KnowledgeGraphKit27MAMutableFloatMatrixWrapper)init;
- (id)copyWithZone:(void *)a3;
- (void)addScalar:(float)a3;
- (void)appendRow:(id)a3;
- (void)setFloat:(float)a3 atRow:(int64_t)a4 column:(int64_t)a5;
- (void)subtract:(id)a3;
- (void)subtractScalar:(float)a3;
@end

@implementation MAMutableFloatMatrixWrapper

- (_TtC17KnowledgeGraphKit27MAMutableFloatMatrixWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MAFloatMatrixWrapper *)&v3 init];
}

- (id)copyWithZone:(void *)a3
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

- (void)setFloat:(float)a3 atRow:(int64_t)a4 column:(int64_t)a5
{
  v8 = self;
  MAMutableFloatMatrixWrapper.setFloat(_:at:column:)(a3, a4, a5);
}

- (void)subtract:(id)a3
{
  v4 = a3;
  v5 = self;
  MAMutableFloatMatrixWrapper.subtract(_:)(v4);
}

- (void)subtractScalar:(float)a3
{
  v3 = self + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v4 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  v5 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8];
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  *&v10 = v4;
  *(&v10 + 1) = v5;
  v6 = -a3;
  v7 = self;
  swift_bridgeObjectRetain_n();
  sub_25587FE30(v9, v6, v4, v5, &v9);

  v8 = *v3;
  *v3 = v9;
  *(v3 + 8) = v10;
}

- (void)addScalar:(float)a3
{
  v4 = self + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v5 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  v6 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8];
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v7 = self;
  swift_bridgeObjectRetain_n();
  sub_25587FE30(v9, a3, v5, v6, &v9);

  v8 = *v4;
  *v4 = v9;
  *(v4 + 8) = v10;
}

- (void)appendRow:(id)a3
{
  (*((*MEMORY[0x277D85000] & *a3) + 0x70))(&v12, self, a2);
  v5 = v12;
  v6 = self + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v11 = *&self->super._floatMatrix[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  v7 = a3;
  v8 = self;

  sub_25589D300(v5);

  v9 = *v6;
  *v6 = v10;
  *(v6 + 8) = v11;
}

@end