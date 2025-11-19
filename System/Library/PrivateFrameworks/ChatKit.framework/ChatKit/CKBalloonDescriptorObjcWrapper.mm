@interface CKBalloonDescriptorObjcWrapper
+ (BOOL)needsBubbleMaterialForDescriptor:(CKBalloonDescriptor_t *)a3 traitCollection:(id)a4;
- (CKBalloonDescriptorObjcWrapper)init;
@end

@implementation CKBalloonDescriptorObjcWrapper

+ (BOOL)needsBubbleMaterialForDescriptor:(CKBalloonDescriptor_t *)a3 traitCollection:(id)a4
{
  var4 = a3->var4;
  var5 = a3->var5;
  var6 = a3->var6;
  var9 = a3->var9;
  var12 = a3->var12;
  var13 = a3->var13;
  var14 = a3->var14;
  var15 = a3->var15;
  var16 = a3->var16;
  v22 = *&a3->var0;
  v23 = var4;
  v24 = var5;
  v25 = var6;
  v14 = *&a3->var7.blue;
  v26 = *&a3->var7.red;
  v27 = v14;
  v15 = *&a3->var8.blue;
  v28 = *&a3->var8.red;
  v29 = v15;
  v30 = var9;
  v31 = *&a3->var10;
  v32 = var12;
  v33 = var13;
  v34 = var14;
  v35 = var15;
  v36 = var16;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - v17;
  v19 = a4;
  sub_190D16014(v19, v18);

  v20 = sub_190D56BB0();
  LOBYTE(v19) = (*(*(v20 - 8) + 48))(v18, 1, v20) != 1;
  sub_190249580(v18);
  return v19;
}

- (CKBalloonDescriptorObjcWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKBalloonDescriptorObjcWrapper();
  return [(CKBalloonDescriptorObjcWrapper *)&v3 init];
}

@end